local fns = {}
local ue
local tW
local uD
local vk
local uk
local u1
local t1
local StarterPlayer
local vq
local uq
local u7
local t7
local uP
local uw
local ud
local uV
local uC
local uj
local State
local uI
local vp
local u6
local t6
local uO
local uc
local tU
local uB
local vi
local ui
local CoreGui
local t_
local vo
local u5
local t5
local tN
local uu
local vb
local ub
local tT
local uA
local folder
local tZ
local vn
local un
local t4
local vt
local ut
local ua
local uS
local tS
local LocalPlayer
local ug
local uY
local uF
local vm
local um
local u3
local t3
local uL
local us
local u9
local t9
local tR
local vf
local uf
local uX
local tX
local vl
local u2
local t2
local vr
local ur
local u8
local t8
local tQ
local ux
local ve
function fns.fn36()
    if coroutine.status(uC) ~= "dead" then
        pcall(task.cancel, uC)
    end
    tQ()
end
function fns.fn37(di, dj)
    local xP = os.clock() + dj
    while true do
        if not tS() then
            return false
        end
        if di() then
            break
        end
        if os.clock() >= xP then
            return false
        end
        task.wait(0.1)
    end
    return true
end
function fns.fn56(b0)
    local w9 = 0
    local xa = {}
    if type(b0) == "table" then
        for k, v in pairs(b0) do
            local xb_1 = nil
            if type(v) == "string" then
                xb_1 = v
            else
                local xc_1 = v == true and type(k) == "string"
                if xc_1 then
                    xb_1 = k
                end
            end
            if xb_1 and xb_1 ~= "" and xa[xb_1] == nil then
                xa[xb_1] = true
                w9 += 1
            end
        end
    else
        local xb_2 = b0 ~= ""
        local xc_3 = type(b0) == "string" and xb_2
        if xc_3 then
            xa[b0] = true
            w9 = 1
        end
    end
    return xa, w9
end
function fns.fn108(eG)
    local yh = tR[eG]
    if yh == nil then
        return false
    elseif os.clock() >= yh then
        tR[eG] = nil
        return false
    else
        return true
    end
end
function fns.fn124()
    return require(vr:WaitForChild("Business", 20):WaitForChild("OnClientGameEvent", 20))
end
function fns.fn151(cm)
    local co, cp = ut(cm)
    State.Seeds = co
    State.SeedCount = cp
end
function fns.fn152(e2)
    local zone = e2.onlyData.zone
    if type(zone) ~= "table" then
        return nil
    end
    local tpPart = zone.tpPart
    local yw_1 = typeof(tpPart) == "Instance" and tpPart:IsA("BasePart")
    if yw_1 then
        return tpPart.CFrame + Vector3.new(0, 5, 0)
    end
    return nil
end
function fns.fn157()
    local wu_1
    local wt = not uD or not tX(uD.GetData)
    local wt_1
    if wt then
        return nil
    end
    wt_1, wu_1 = pcall(uD.GetData)
    local wv = wt_1 and type(wu_1) == "table" and type(wu_1.onlyData) == "table" and type(wu_1.serverData) == "table" and type(wu_1.playData) == "table"
    if wv then
        return wu_1
    end
    return nil
end
function fns.fn162(ch)
    local cj, ck = ut(ch)
    State.Rarities = cj
    State.RarityCount = ck
end
function fns.fn175(gg)
    local zz = t1(gg)
    local incubationChunk = gg.serverData.incubationChunk
    local zB = not zz or type(incubationChunk) ~= "table"
    if zB then
        return nil
    end
    local zB_1 = vl:GetServerTimeNow()
    for k, v in pairs(zz) do
        if typeof(v) == "CFrame" then
            local zz_1 = ur(gg, incubationChunk[k])
            if zz_1 and zz_1.typeId == ui then
                local zC_1 = tonumber(zz_1.eggTime) or 0
                if zC_1 > 0 and zB_1 >= zC_1 then
                    return k
                end
            end
        end
    end
    return nil
end
function fns.fn183(ce)
    State.AutoSteal = ce == true
    if not State.AutoSteal then
        tZ("Idle")
    end
end
local function fn187(iM, iN, iO)
    local iQ = vb()
    local highlight = Instance.new("Highlight")
    highlight.FillColor = iO
    highlight.OutlineColor = iO
    highlight.FillTransparency = 0.6
    highlight.OutlineTransparency = 0
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.Adornee = iN
    highlight.Parent = iQ
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "SeedTag"
    billboardGui.AlwaysOnTop = true
    billboardGui.Size = UDim2.fromOffset(220, 40)
    billboardGui.StudsOffsetWorldSpace = Vector3.new(0, 4, 0)
    billboardGui.MaxDistance = math.huge
    billboardGui.Adornee = iN
    billboardGui.Parent = iQ
    local textLabel = Instance.new("TextLabel")
    textLabel.BackgroundTransparency = 1
    textLabel.Size = UDim2.fromScale(1, 1)
    textLabel.Font = Enum.Font.BuilderSansBold
    textLabel.TextSize = 15
    textLabel.TextColor3 = iO
    textLabel.TextStrokeTransparency = 0.35
    textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
    textLabel.Text = ""
    textLabel.Parent = billboardGui
    local iU = { highlight = highlight, billboard = billboardGui, label = textLabel, anchor = iN }
    uS[iM] = iU
    return iU
end
local function fn193()
    local StarterPlayerScripts = t6(StarterPlayer):WaitForChild("StarterPlayerScripts", 20)
    return require(StarterPlayerScripts:WaitForChild("Business", 20):WaitForChild("C_Data", 20))
end
local function worker2()
    while tS() do
        pcall(tU)
        task.wait(0.5)
    end
end
local function worker()
    local AG_1
    while tS() do
        local AF = tW() and vo()
        local AF_1
        if AF then
            AF_1, AG_1 = pcall(vt)
            local AI = AF_1 and type(AG_1) == "number"
            local AG_2 = AI and AG_1 or 1
            task.wait(AG_2)
        else
            task.wait(0.25)
        end
    end
end
local function fn245(jp)
    State.SeedEsp = jp == true
    if not State.SeedEsp then
        tQ()
    end
end
local function fn265()
    local attr = LocalPlayer:GetAttribute(uu)
    if type(attr) ~= "number" then
        return false
    end
    return vl:GetServerTimeNow() < attr
end
local function fn280()
    return table.clone(uq)
end
local function fn343()
    local Character = LocalPlayer.Character
    if not Character then
        return nil
    end
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    if Humanoid and Humanoid.Health <= 0 then
        return nil
    end
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    local xD_1 = HumanoidRootPart and HumanoidRootPart:IsA("BasePart")
    if xD_1 then
        return HumanoidRootPart
    end
    return nil
end
local function fn360()
    if os.clock() - vq < uI then
        return false
    end
    vq = os.clock()
    tZ("Equipping your best plants")
    return vn("Business", t7)
end
local function fn380()
    local attr = LocalPlayer:GetAttribute(ux)
    local xB = type(attr) == "number" and attr > 0
    if xB then
        return attr
    end
    return nil
end
local function fn387(aw)
    State.Status = aw
end
local function fn407()
    return require(vr:WaitForChild("Data", 20):WaitForChild("PlayConfig", 20))
end
local function fn444()
    return CoreGui
end
local function fn458()
    local wa = tostring(State.Status)
    local wb = State.Stolen or 0
    local wc = State.Planted or 0
    local wd = State.Claimed or 0
    return string.format("%s  |  stolen %d  |  planted %d  |  claimed %d", wa, wb, wc, wd)
end
local function fn468()
    return not ud.Unloaded
end
local function fn486()
    return State.AutoSteal or State.AutoPlant or State.AutoClaim or State.AutoMerge or State.AutoBuyWeapons or State.AutoEquipBest or State.AutoBuyGear
end
local function fn491(cr)
    local ct, cu = ut(cr)
    State.PlantRarities = ct
    State.PlantRarityCount = cu
end
local function fn495(dK, dL)
    local hand = dK.serverData.hand
    if type(hand) ~= "table" then
        return nil
    end
    return ur(dK, hand[dL])
end
local function fn508(eo)
    return vp(eo, State.Seeds, State.SeedCount, State.Rarities, State.RarityCount)
end
local function fn512(aA)
    local wg_1
    local wf_1
    wf_1, wg_1 = pcall(aA)
    local wh = wf_1 and type(wg_1) == "table"
    if wh then
        return wg_1
    end
    return nil
end
local function fn525()
    return table.clone(uf)
end
local function fn535()
    local AS_1
    local AR_1
    AR_1, AS_1 = pcall(function()
        local AO = tX(gethui) and gethui()
        return AO or CoreGui
    end)
    local AT = AR_1 and typeof(AS_1) == "Instance"
    return AT and AS_1 or CoreGui
end
local function fn537(cB)
    local cD, cE = ut(cB)
    State.Gear = cD
    State.GearCount = cE
end
local function fn542(Y)
    return type(Y) == "function"
end
local function fn544()
    local Aw = u3()
    if not Aw then
        tZ("Waiting for game data")
        return 1
    elseif not tT() then
        tZ("Waiting for the character")
        return 1
    elseif t8() then
        u1(Aw)
        return 0.2
    else
        local Ax = State.AutoBuyWeapons and uk(Aw)
        if Ax then
            return 0.1
        end
        local Ax_1 = State.AutoEquipBest and vk(Aw)
        if Ax_1 then
            return 0.1
        end
        local Ax_2 = State.AutoBuyGear and u6(Aw)
        if Ax_2 then
            return 0.1
        end
        local Ax_3 = State.AutoClaim and tN(Aw)
        if Ax_3 then
            return 0.1
        end
        local Ax_4 = State.AutoPlant and uY(Aw)
        if Ax_4 then
            return 0.1
        end
        local Ax_5 = State.AutoMerge and t5(Aw)
        if Ax_5 then
            return 0.1
        elseif State.AutoSteal then
            if vi(Aw) then
                return 0.2
            end
            return 0.6
        else
            local Aw_1 = tW() and "Watching your plot"
            local Ax_6 = Aw_1 or "Idle"
            tZ(Ax_6)
            return 0.4
        end
    end
end
local function fn561(dE, dF)
    local xW = type(dF) ~= "number" or dF <= 0
    if xW then
        return nil
    end
    local allCard = dE.playData.allCard
    if type(allCard) ~= "table" then
        return nil
    end
    local xX = allCard[dF]
    local xW_2 = type(xX) == "table" and xX
    return xW_2 or nil
end
local function fn572(ee, ef, eg, eh, ei)
    if type(ee) ~= "table" then
        return false
    end
    if eg == 0 and ei == 0 then
        return true
    end
    if eg > 0 and ef[ee.name] then
        return true
    elseif ei > 0 then
        local yb_2 = tonumber(ee.rarity) or 0
        local yc_1 = uw[yb_2]
        if yc_1 and eh[yc_1] then
            return true
        end
        return false
    else
        return false
    end
end
local function fn594(db)
    if not u8(db) then
        return false
    end
    task.wait(vf)
    local xN = tS() and tT() ~= nil
    return xN
end
local function fn617(ew)
    local ye = type(ew) ~= "table" or not uX or type(uX.allRollEgg) ~= "table"
    if ye then
        return nil
    end
    local ye_1 = uX.allRollEgg[ew.cfgId]
    local yf = type(ye_1) == "table" and ye_1
    return yf or nil
end
local function fn642(gW, gX)
    local allWeapon = gW.serverData.allWeapon
    local z0 = type(allWeapon) == "table" and allWeapon[gX] == true
    return z0
end
local function fn668()
    if not (u2 and u2.Parent) then
        local Gp_State = vl:FindFirstChild("Gp_State", true)
        local xp = Gp_State and Gp_State:IsA("ValueBase")
        u2 = xp and Gp_State or nil
    end
    if not u2 then
        return true
    end
    return u2.Value == 1
end
local function fn672()
    for k in pairs(uS) do
        ub(k)
    end
    if folder then
        pcall(function()
            folder:Destroy()
        end)
        folder = nil
    end
end
local function fn730(fk)
    local incubationChunk_CFrame = fk.onlyData.incubationChunk_CFrame
    local yK = type(incubationChunk_CFrame) == "table" and incubationChunk_CFrame
    local yJ_1 = yK
    local yO = if yJ_1 then 1 else 0
    local yM = 3830 * yO + 2349 * (1 - yO)
    local yN = 2072 * yO + 3114 * (1 - yO)
    if not ((yM * 2267 + yN * 2809 + yM * yN) % 16777213 == 5661405) then
        yJ_1 = nil
    end
    return yJ_1
end
local function fn736(aW)
    local wj = u7 ~= nil and tX(u7[aW])
    return wj
end
local function fn758()
    return table.clone(uj)
end
local function fn813()
    return require(vr:WaitForChild("Business", 20):WaitForChild("UseItemRuntime", 20))
end
local function fn880()
    local zY = if os.clock() - uc < uL then 1 else 0
    if zY == 1 then
        return false
    end
    uc = os.clock()
    tZ("Merging plants")
    return vn("QuickFuse", ue)
end
local function fn921(d5)
    if type(d5) ~= "table" then
        return nil
    end
    local eggCfgData = d5.eggCfgData
    local x9 = type(eggCfgData) == "table" and type(eggCfgData.cfg) == "table"
    if x9 then
        return eggCfgData.cfg
    end
    local x8_1 = type(d5.data) == "table" and d5.data.cfgId
    local x9_1 = x8_1 or nil
    local x9_2 = x9_1 ~= nil and uX and type(uX.allRollEgg) == "table"
    if x9_2 then
        local x9_3 = uX.allRollEgg[x9_1]
        if type(x9_3) == "table" then
            return x9_3
        end
        return nil
    end
    return nil
end
local function fn942()
    local wo = uD ~= nil and tX(uD.GetData) and uX ~= nil and type(uX.allRollEgg) == "table"
    return wo
end
local function fn964(fF)
    local y9
    local y8 = 1
    local y6 = t9
    while true do
        if not (y8 <= y6) then
            local hand = fF.serverData.hand
            if type(hand) ~= "table" then
                return nil, nil
            end
            local y2_1 = t9 + 1
            local zd = y2_1
            local zb = uB
            while true do
                if not (zd <= zb) then
                    return nil, nil
                end
                y2_1 = hand[zd]
                local y3 = type(y2_1) == "number" and y2_1 > 0
                if y3 then
                    local y3_1 = ur(fF, y2_1)
                    local y4 = y3_1 and y3_1.typeId == ui and un(t4(y3_1))
                    if y4 then
                        break
                    end
                    zd += 1
                    continue
                end
                zd += 1
            end
            return nil, y2_1
        end
        y9 = y8
        local y1_2 = t_(fF, y9)
        local y2_2 = y1_2 and y1_2.typeId == ui and un(t4(y1_2))
        if y2_2 then
            break
        end
        y8 += 1
    end
    return y9, nil
end
local function fn966(es)
    return vp(es, State.PlantSeeds, State.PlantSeedCount, State.PlantRarities, State.PlantRarityCount)
end
local function fn968(cw)
    local cy, cz = ut(cw)
    State.PlantSeeds = cy
    State.PlantSeedCount = cz
end
local function fn986(fo)
    local yT_1
    local yP = t1(fo)
    local incubationChunk = fo.serverData.incubationChunk
    local yR = not yP or type(incubationChunk) ~= "table"
    local yR_3
    if yR then
        return nil
    end
    local yR_1 = tT()
    local yR_2 = yR_1 and yR_1.Position or Vector3.zero
    yT_1, yR_3 = nil, math.huge
    for k, v in pairs(yP) do
        local yP_1 = typeof(v) == "CFrame" and (incubationChunk[k] or 0) == 0
        if yP_1 then
            local Magnitude = (v.Position - yR_2).Magnitude
            if Magnitude < yR_3 then
                yR_3 = Magnitude
                yT_1 = k
            end
        end
    end
    return yT_1
end
local function fn1005(V)
    local v7 = typeof(cloneref) == "function" and typeof(V) == "Instance"
    if v7 then
        return cloneref(V)
    end
    return V
end
local function fn1012(iJ)
    if typeof(iJ) ~= "Instance" then
        return nil
    elseif iJ:IsA("BasePart") then
        return iJ
    elseif iJ:IsA("Model") then
        local A9 = iJ.PrimaryPart or iJ:FindFirstChildWhichIsA("BasePart", true)
        return A9
    else
        return nil
    end
end
local function fn1017(e7)
    local yz = vm(e7)
    if not yz then
        tZ("Your plot could not be located")
        return false
    end
    local yG = 1
    while true do
        if not (yG <= 2) then
            return t8() == nil
        end
        local yH = yG
        local yA = not tS() or not u8(yz)
        if yA then
            return false
        end
        tZ("Carrying the seed home")
        local function yA_1()
            return t8() == nil
        end
        local yC = yH == 1 and u5 or 2
        if t2(yA_1, yC) then
            break
        end
        yG += 1
    end
    return true
end
local function fn1023()
    gethui = us
end
local function fn1059()
    if not uX then
        return
    end
    if type(uX.allRarity) == "table" then
        local wy_1 = {}
        for k, v in pairs(uX.allRarity) do
            local wz_1 = tonumber(k)
            local wA_1 = type(v) == "table" and v.name
            local wB_1 = wA_1 or nil
            local wA_2 = wz_1
            if wA_2 then
                wA_2 = type(wB_1) == "string"
            end
            if wA_2 then
                wA_2 = wB_1 ~= ""
            end
            if wA_2 then
                wA_2 = uw[wz_1] == nil
            end
            if wA_2 then
                uw[wz_1] = wB_1
                table.insert(wy_1, wz_1)
            end
        end
        table.sort(wy_1)
        for i, v in ipairs(wy_1) do
            table.insert(uq, uw[v])
        end
    end
    if type(uX.allRollEgg) == "table" then
        local wy_2 = {}
        local wz_2 = {}
        for k, v in pairs(uX.allRollEgg) do
            local wA_3 = type(v) == "table" and type(v.name) == "string" and v.name ~= "" and not wy_2[v.name]
            if wA_3 then
                wy_2[v.name] = true
                local insert = table.insert
                local name = v.name
                local wC_2 = tonumber(v.rarity) or 0
                insert(wz_2, { name = name, rarity = wC_2 })
            end
        end
        table.sort(wz_2, function(bA, bB)
            if bA.rarity ~= bB.rarity then
                return bA.rarity < bB.rarity
            end
            return bA.name < bB.name
        end)
        for i, v in ipairs(wz_2) do
            table.insert(uj, v.name)
        end
    end
    if type(uX.allUseItem) == "table" then
        local wy_3 = {}
        for k, v in pairs(uX.allUseItem) do
            local wz_3 = tonumber(k)
            local wA_5 = wz_3 and type(v) == "table" and type(v.name) == "string" and v.name ~= ""
            if wA_5 then
                table.insert(wy_3, { id = wz_3, name = v.name })
            end
        end
        table.sort(wy_3, function(bK, bL)
            return bK.id < bL.id
        end)
        for i, v in ipairs(wy_3) do
            if ua[v.name] == nil then
                ua[v.name] = v.id
                table.insert(uf, v.name)
            end
        end
    end
    if type(uX.allWeapon) == "table" then
        for k, v in pairs(uX.allWeapon) do
            local wy_4 = tonumber(k)
            local wz_4 = wy_4 and type(v) == "table"
            if wz_4 then
                local insert = table.insert
                local wA_6 = tonumber(v.atkSize) or 0
                local wB_3 = tonumber(v.powerRep) or 0
                insert(t3, { id = wy_4, attack = wA_6, power = wB_3 })
            end
        end
        table.sort(t3, function(bV, bW)
            return bV.id < bW.id
        end)
    end
end
local function fn1061()
    if folder and folder.Parent then
        return folder
    end
    folder = Instance.new("Folder")
    folder.Name = "OuroborosSeedEsp"
    folder.Parent = uO()
    return folder
end
local function fn1128()
    if coroutine.status(u9) ~= "dead" then
        pcall(task.cancel, u9)
    end
end
local function fn1203(eC)
    tR[eC] = os.clock() + uV
end
local function fn1216()
    if not State.SeedEsp then
        local Bb_1 = next(uS) ~= nil or folder
        if Bb_1 then
            tQ()
        end
        return
    end
    local Bb_2 = u3()
    if not Bb_2 then
        return
    end
    local enemyEggItemByGid = Bb_2.onlyData.enemyEggItemByGid
    if type(enemyEggItemByGid) ~= "table" then
        return
    end
    local Bb_3 = tT()
    local Bb_4 = Bb_3 and Bb_3.Position or Vector3.zero
    local Bd_1 = {}
    for k, v in pairs(enemyEggItemByGid) do
        local Bb_5 = ug(v)
        local Bc_1 = type(v) == "table" and type(v.eggCfgData) == "table" and v.eggCfgData.mod
        local Bf = Bc_1 or nil
        local Bc_2 = uP(Bf)
        if Bb_5 and Bc_2 and Bc_2.Parent then
            Bd_1[k] = true
            local Bf_2 = tonumber(Bb_5.rarity) or 0
            local Bf_3 = um[Bf_2] or Color3.fromRGB(220, 220, 220)
            local Bf_4 = uS[k]
            if Bf_4 and Bf_4.anchor ~= Bc_2 then
                ub(k)
                Bf_4 = nil
            end
            if not Bf_4 then
                Bf_4 = uA(k, Bc_2, Bf_3)
            end
            local Bc_3 = typeof(v.cf) == "CFrame" and (v.cf.Position - Bb_4).Magnitude
            local Bh_1 = Bc_3 or 0
            local label = Bf_4.label
            local format = string.format
            local Bj = tostring(Bb_5.name)
            local Bk = uw[Bf_2] or "?"
            label.Text = format("%s\n%s  %dm", Bj, tostring(Bk), math.floor(Bh_1))
        end
    end
    for k in pairs(uS) do
        if not Bd_1[k] then
            ub(k)
        end
    end
end
local function fn1220(eK)
    local yn_1
    local name
    local enemyEggItemByGid = eK.onlyData.enemyEggItemByGid
    if type(enemyEggItemByGid) ~= "table" then
        return nil, nil
    end
    local yk = tT()
    local yk_2
    local yk_1 = yk and yk.Position or Vector3.zero
    yn_1, name, yk_2 = nil, nil, math.huge
    for k, v in pairs(enemyEggItemByGid) do
        local yj_1 = type(v) == "table" and not v.isDropping and typeof(v.cf) == "CFrame" and not ve(k)
        if yj_1 then
            local yj_2 = ug(v)
            if uF(yj_2) then
                local Magnitude = (v.cf.Position - yk_1).Magnitude
                if Magnitude < yk_2 then
                    yk_2 = Magnitude
                    yn_1 = k
                    name = yj_2.name
                end
            end
        end
    end
    return yn_1, name
end
tN = nil
tQ = nil
tR = nil
tS = nil
tT = nil
tU = nil
tW = nil
tX = nil
tZ = nil
t_ = nil
State = nil
t1 = nil
t2 = nil
t3 = nil
t4 = nil
t5 = nil
t6 = nil
t7 = nil
t8 = nil
t9 = nil
ua = nil
ub = nil
uc = nil
ud = nil
ue = nil
uf = nil
ug = nil
ui = nil
uj = nil
uk = nil
um = nil
un = nil
uq = nil
ur = nil
us = nil
ut = nil
uu = nil
uw = nil
ux = nil
local Players, tO, tP, tV, tY, uh, ul, uo, up, uv, uy
LocalPlayer = nil
uA = nil
uB = nil
uC = nil
uD = nil
uF = nil
uI = nil
StarterPlayer = nil
uL = nil
uO = nil
uP = nil
uS = nil
uV = nil
uX = nil
uY = nil
folder = nil
CoreGui = nil
u1 = nil
u2 = nil
u3 = nil
u5 = nil
u6 = nil
u7 = nil
u8 = nil
u9 = nil
vb = nil
ve = nil
vf = nil
vi = nil
vk = nil
vl = nil
local Workspace, uG, uH, uK, Lighting, uN, uQ, uR, TeleportService, uU, uW, u0, GuiService, HttpService, vc, VirtualUser, UserInputService, vh, RunService
vm = nil
vn = nil
vo = nil
vp = nil
vq = nil
vr = nil
vt = nil
local vs, vu, vv, vy, vB
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, StarterPlayer, Workspace, LocalPlayer, us = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local vx = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
StarterPlayer = game:GetService("StarterPlayer")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local vw = "OuroborosStealASeed"
us = fn444
if getgenv then
    getgenv().gethui = us
end
ud, vr, vl, vh, vf, vc, u5, u0, uV, uR, uL, uI, uB, ux, uu, uo, ul, uh, ue, t7, State, u7, uX, uD, vB, vy, uG, t6, tX, tS, tZ, vv = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if (vy and not tZ or not vy and not vy or (not tZ or tZ) and (vy and not tZ) or (not vy and not tZ or tZ and tZ) and (vy or not tZ or (not tZ or not tZ))) and (((tZ or not tZ) and (vy or not tZ) or (tZ and not tZ or (vy or tZ))) and ((vy or vy) and (tZ and tZ) or (not tZ or tZ) and (tZ or not vy))) or not ((vy and not tZ or not vy and not vy or (not tZ or tZ) and (vy and not tZ) or (not vy and not tZ or tZ and tZ) and (vy or not tZ or (not tZ or not tZ))) and (((tZ or not tZ) and (vy or not tZ) or (tZ and not tZ or (vy or tZ))) and ((vy or vy) and (tZ and tZ) or (not tZ or tZ) and (tZ or not vy)))) then
    pcall(fn1023)
    vy = function(u)
        local v_
        local v0
        local vZ
        vZ = nil
        v_ = nil
        v0 = nil
        local v1 = u ~= ""
        local v2 = type(u) == "string" and v1
        assert(v2, "A namespace is required")
        assert(type(getgenv) == "function", "getgenv is unavailable")
        v_ = getgenv()
        assert(type(v_) == "table", "getgenv did not return a table")
        local v1_2 = v_[u]
        if v1_2 ~= nil then
            local v2_2 = type(v1_2) == "table" and type(v1_2.Unload) == "function"
            assert(v2_2, "Namespace is occupied")
            v1_2.Unload()
            assert(v_[u] == nil, "Previous instance did not release its namespace")
        end
        v0 = {}
        vZ = { State = {}, Unloaded = false }
        vZ.Track = function(A)
            assert(type(A) == "function", "Cleanup must be callable")
            if vZ.Unloaded then
                A()
            else
                table.insert(v0, A)
            end
            return A
        end
        vZ.Unload = function()
            local vP_2
            local vO_2
            if vZ.Unloaded then
                return
            end
            vZ.Unloaded = true
            local vM = {}
            local vT = #v0
            local vS = -1
            while false and vT <= 1 or true and vT >= 1 do
                local vU = vT
                local vN_2 = table.remove(v0, vU)
                vO_2, vP_2 = pcall(vN_2)
                if not vO_2 then
                    table.insert(vM, tostring(vP_2))
                end
                vT += vS
            end
            table.clear(vZ.State)
            if #vM > 0 then
                error("Cleanup incomplete: " .. table.concat(vM, "; "), 0)
            end
            if v_[u] == vZ then
                v_[u] = nil
            end
        end
        v_[u] = vZ
        return vZ
    end
else
    pcall(fn1023)
    tZ = function(u)
        local v_
        local v0
        local vZ
        vZ = nil
        v_ = nil
        v0 = nil
        local v1 = u ~= ""
        local v2 = type(u) == "string" and v1
        assert(v2, "A namespace is required")
        assert(type(getgenv) == "function", "getgenv is unavailable")
        v_ = getgenv()
        assert(type(v_) == "table", "getgenv did not return a table")
        local v1_1 = v_[u]
        if v1_1 ~= nil then
            local v2_1 = type(v1_1) == "table" and type(v1_1.Unload) == "function"
            assert(v2_1, "Namespace is occupied")
            v1_1.Unload()
            assert(v_[u] == nil, "Previous instance did not release its namespace")
        end
        v0 = {}
        vZ = { State = {}, Unloaded = false }
        vZ.Track = function(A)
            assert(type(A) == "function", "Cleanup must be callable")
            if vZ.Unloaded then
                A()
            else
                table.insert(v0, A)
            end
            return A
        end
        vZ.Unload = function()
            local vP_1
            local vO_1
            if vZ.Unloaded then
                return
            end
            vZ.Unloaded = true
            local vM = {}
            local vT = #v0
            local vS = -1
            while false and vT <= 1 or true and vT >= 1 do
                local vU = vT
                local vN_1 = table.remove(v0, vU)
                vO_1, vP_1 = pcall(vN_1)
                if not vO_1 then
                    table.insert(vM, tostring(vP_1))
                end
                vT += vS
            end
            table.clear(vZ.State)
            if #vM > 0 then
                error("Cleanup incomplete: " .. table.concat(vM, "; "), 0)
            end
            if v_[u] == vZ then
                v_[u] = nil
            end
        end
        v_[u] = vZ
        return vZ
    end
end
uG = function(N, O)
    local v5 = type(N) == "table" and type(N.Track) == "function"
    assert(v5, "FeatureAPI required")
    local v5_1 = type(O) == "table" and type(O.OnUnload) == "function"
    assert(v5_1, "UI library required")
    assert(type(O.Unload) == "function", "UI unload required")
    N.Track(function()
        if not O.Unloaded then
            O:Unload()
        end
    end)
    O:OnUnload(function()
        N.Unload()
    end)
end
ud = vy(vw)
t6 = fn1005
tX = fn542
tS = fn468
vr = t6(vx)
vl = t6(Workspace)
vh = 0.35
vf = 0.8
vc = 2
u5 = 5
u0 = 2
uV = 8
uR = 6
uL = 3
uI = 5
uB = 200
ux = "TempEnemyEggGid"
uu = "UseItemTrapEndTime"
uo = "武器"
ul = "道具"
uh = "通用蛋"
ue = "单位"
t7 = "装备最好_单位"
State = ud.State
State.AutoSteal = false
State.AutoPlant = false
State.AutoClaim = false
State.AutoMerge = false
State.AutoBuyWeapons = false
State.AutoEquipBest = false
State.AutoBuyGear = false
State.SeedEsp = false
State.Rarities = {}
State.Seeds = {}
State.PlantRarities = {}
State.PlantSeeds = {}
State.Gear = {}
State.RarityCount = 0
State.SeedCount = 0
State.PlantRarityCount = 0
State.PlantSeedCount = 0
State.GearCount = 0
State.Status = "Idle"
State.Stolen = 0
State.Planted = 0
State.Claimed = 0
tZ = fn387
if ("TempEnemyEggGid" and (not vB or vB) or false and not vB and (vB or false)) and ((false or vB and ux) and (not vB or not vB or vB and vB)) and ((false or not vB or false and not vB) and (vB and vB or not vB and false) or (ux or not vB or false or "TempEnemyEggGid" and (vB and vB))) or not (("TempEnemyEggGid" and (not vB or vB) or false and not vB and (vB or false)) and ((false or vB and ux) and (not vB or not vB or vB and vB)) and ((false or not vB or false and not vB) and (vB and vB or not vB and false) or (ux or not vB or false or "TempEnemyEggGid" and (vB and vB)))) then
    ud.GetStatus = fn458
    vv = fn512
else
    vv.GetStatus = fn458
    ud = fn512
end
u7 = vv(fns.fn124)
uX = vv(fn407)
uD = vv(fn193)
vB = vv(fn813)
local vA = vB
if vA then
    vv = 0
    repeat
        local GS = bit32.rrotate(bit32.bxor(bit32.lrotate(vv, 12), string.byte(tostring(vv))), 25)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(GS, 2055069915), 112438705), (bit32.bxor(bit32.band(GS, 2239897380), 399456180))), 112438705), 399456180) == GS then
            vA = type(vB.PlayerTrapEndTimeAttribute) == "string"
        else
            vB = type(vA.PlayerTrapEndTimeAttribute) == "string"
        end
        vv = (vv + 7) % 8
    until (vv * 1 + 0) % 8 == 7
end
if vA then
    uu = vB.PlayerTrapEndTimeAttribute
end
vv = uX
if vv then
    vw = 2
    repeat
        vx = {
            "axnueuaee",
            "gudl",
            "ofne",
            "rxneu",
            "gxkwo",
            "xsnbutytsgi",
            "jmovv",
            "aefrzhpa",
            "gaibfylwcgz",
            "mvoh",
            "cbiuyafalxl"
        }
        local G5 = vw
        vy = vx[G5 % 11 + 1]
        if vy:len() >= vy:reverse():rep(G5 % 3 + 2):len() then
            uX = tonumber(vv.EggTypeId)
        else
            vv = tonumber(uX.EggTypeId)
        end
        vw = (vw + 0) % 8
    until (vw * 3 + 6) % 8 == 4
end
vw = vv or 3
vv = uX
ui = vw
if vv then
    vw = 3
    repeat
        if vw * 117048571 + 7 + 2 <= vw * 117048571 + 7 + 2 + 4 then
            vv = tonumber(uX.handShowSize)
        else
            uX = tonumber(vv.handShowSize)
        end
        vw = (vw + 4) % 8
    until (vw * 1 + 0) % 8 == 7
end
vw = vv or 5
vv = uX
t9 = vw
if vv then
    vw = 1
    repeat
        local G7 = bit32.rrotate(bit32.bxor(bit32.lrotate(vw, 3), string.byte(tostring(vw))), 31)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(G7, 2047741485), 2618087071), (bit32.bxor(bit32.band(G7, 2247225810), 3651162252))), 2618087071), 3651162252) ~= G7 then
            uX = tonumber(vv.unitStarMax)
        else
            vv = tonumber(uX.unitStarMax)
        end
        vw = (vw + 2) % 4
    until (vw * 3 + 0) % 4 == 1
end
uw, uq, um, uj, uf, ua, t3, u2, tP, vs, tR, uc, vq, uQ, uK, u9, folder, uS, uC, tY, vo, u3, ut, uW, uv, t8, tT, u8, uy, t2, vn, ur, t_, vu, ug, vp, uF, un, t4, tO, ve, uU, vm, u1, t1, tV, up, uY, uN, tN, t5, vk, uH, uk, u6, vi, tW, vt, uO, ub, tQ, vb, uP, uA, tU = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
tY = fn736
vo = fn942
u3 = fns.fn157
uw = {}
do
    uq = {}
    um = {
        [1] = Color3.fromRGB(190, 195, 205),
        [2] = Color3.fromRGB(120, 210, 120),
        [3] = Color3.fromRGB(90, 170, 255),
        [4] = Color3.fromRGB(190, 120, 255),
        [5] = Color3.fromRGB(255, 190, 70),
        [6] = Color3.fromRGB(255, 100, 110),
        [7] = Color3.fromRGB(255, 245, 130)
    }
end
uj = {}
uf = {}
ua = {}
t3 = {}
vy = fn1059
vy()
ud.RarityValues = fn280
ud.SeedValues = fn758
ud.GearValues = fn525
ut = fns.fn56
vv = function(b9)
    return function(ca)
        State[b9] = ca == true
    end
end
ud.SetAutoPlant = vv("AutoPlant")
ud.SetAutoClaim = vv("AutoClaim")
ud.SetAutoMerge = vv("AutoMerge")
ud.SetAutoBuyWeapons = vv("AutoBuyWeapons")
ud.SetAutoEquipBest = vv("AutoEquipBest")
ud.SetAutoBuyGear = vv("AutoBuyGear")
ud.SetAutoSteal = fns.fn183
ud.SetRarities = fns.fn162
ud.SetSeeds = fns.fn151
ud.SetPlantRarities = fn491
ud.SetPlantSeeds = fn968
ud.SetGear = fn537
u2 = nil
uW = fn668
uv = fn265
t8 = fn380
tT = fn343
u8 = function(c4)
    local xK
    xK = nil
    xK = tT()
    local xL = not xK or typeof(c4) ~= "CFrame"
    if xL then
        return false
    end
    return (pcall(function()
        xK.CFrame = c4
        xK.AssemblyLinearVelocity = Vector3.zero
    end))
end
uy = fn594
t2 = fns.fn37
tP = 0
vs = false
vn = function(dq, ...)
    local xV = if not tY(dq) then 1 else 0
    if xV == 1 then
        return false
    end
    while true do
        local xR_1 = vs and tS()
        if xR_1 then
            task.wait(0.05)
            continue
        end
        break
    end
    if not tS() then
        return false
    end
    vs = true
    local xR_2 = vh - (os.clock() - tP)
    if xR_2 > 0 then
        task.wait(xR_2)
    end
    local xR_3 = pcall(function(...)
        u7[dq](u7, ...)
    end, ...)
    tP = os.clock()
    vs = false
    return xR_3
end
ur = fn561
t_ = fn495
vu = function(dP, dQ)
    local playData = dP.playData
    if type(playData.nowHand) ~= "table" then
        return false
    elseif playData.nowHand.Value == dQ then
        return true
    elseif not vn("SelectHandUnit", dQ) then
        return false
    else
        return t2(function()
            return playData.nowHand.Value == dQ
        end, u0)
    end
end
ug = fn921
vp = fn572
uF = fn508
un = fn966
t4 = fn617
tR = {}
tO = fn1203
ve = fns.fn108
uU = fn1220
vm = fns.fn152
u1 = fn1017
t1 = fn730
tV = fn986
up = fn964
uY = function(fQ)
    local zr
    local zs_1
    zs_1, zr = up(fQ)
    local zt = not zr
    local zt_2
    local zu = not zs_1
    if zu ~= false then
        zu = zt
    end
    if zu then
        return false
    end
    local zq = tV(fQ)
    if zq == nil then
        return false
    end
    tZ("Planting a seed")
    if zr then
        vn("Equip_GidData_Item", uh, zr)
        if not t2(function()
            local hand = fQ.serverData.hand
            local zh = type(hand) == "table" and hand[1] == zr
            return zh
        end, u0) then
            tZ("Could not take that seed out")
            return true
        end
        if not vu(fQ, zs_1) then
            tZ("Could not hold the seed")
            return true
        end
        local zs_3 = t1(fQ)
        local zt_1 = not zs_3 or not uy(zs_3[zq] + Vector3.new(0, 4, 0))
        if zt_2 then
            return true
        end
        vn("PlantEgg", zq)
        local zs_4 = t2(function()
            local incubationChunk = fQ.serverData.incubationChunk
            local zk = type(incubationChunk) == "table" and (incubationChunk[zq] or 0) ~= 0
            return zk
        end, u0)
        if zs_4 then
            State.Planted = State.Planted + 1
        else
            tZ("Planting was refused")
        end
        return true
    elseif not vu(fQ, zs_1) then
        tZ("Could not hold the seed")
        return true
    else
        local zs_5 = t1(fQ)
        zt_2 = not zs_5 or not uy(zs_5[zq] + Vector3.new(0, 4, 0))
        if zt_2 then
            return true
        end
        vn("PlantEgg", zq)
        local zs_6 = t2(function()
            local incubationChunk = fQ.serverData.incubationChunk
            local zk = type(incubationChunk) == "table" and (incubationChunk[zq] or 0) ~= 0
            return zk
        end, u0)
        if zs_6 then
            State.Planted = State.Planted + 1
        else
            tZ("Planting was refused")
        end
        return true
    end
end
uN = fns.fn175
tN = function(gv)
    local zR
    zR = nil
    zR = uN(gv)
    if zR == nil then
        return false
    end
    local zS = t1(gv)
    tZ("Claiming a grown seed")
    local zT = not zS or not uy(zS[zR] + Vector3.new(0, 4, 0))
    if zT then
        return true
    end
    vn("TakeIncubationUnit", zR)
    local zS_1 = t2(function()
        local incubationChunk = gv.serverData.incubationChunk
        local zO = type(incubationChunk) ~= "table" or (incubationChunk[zR] or 0) == 0
        return zO
    end, u0)
    if zS_1 then
        State.Claimed = State.Claimed + 1
    else
        tZ("Claim was refused")
    end
    return true
end
uc = 0
t5 = fn880
vq = 0
vk = fn360
if (ur and t_ or (t_ or ur) or (not ur and ur or vt and not t_)) and not (ur and t_ or (t_ or ur) or (not ur and ur or vt and not t_)) then
    u1 = 0
else
    uQ = 0
end
if (((un or t5) and (uF and not t5) or (not t5 or not uF) and (un or uF)) and ((not t5 or not un or t5 and uF) and ((not uF or uF) and (uF or uF))) or ((not uF or t5) and (t5 and not uF) and (un and uF and (not t5 or not un)) or (not un or not un) and (not t5 and not t5) and ((uF or not un) and (t5 and not un)))) and not (((un or t5) and (uF and not t5) or (not t5 or not uF) and (un or uF)) and ((not t5 or not un or t5 and uF) and ((not uF or uF) and (uF or uF))) or ((not uF or t5) and (t5 and not uF) and (un and uF and (not t5 or not un)) or (not un or not un) and (not t5 and not t5) and ((uF or not un) and (t5 and not un)))) then
    tP = 0
else
    uK = 0
end
uH = fn642
uk = function(g0)
    if os.clock() < uQ then
        return false
    end
    for i, v in ipairs(t3) do
        local z8 = v
        if not uH(g0, z8.id) then
            vn("Buy_Backpack_Item", uo, z8.id)
            if not t2(function()
                return uH(g0, z8.id)
            end, u0) then
                uQ = os.clock() + uR
            end
            return true
        end
    end
    uQ = os.clock() + uR
    return false
end
u6 = function(hf)
    if os.clock() < uK then
        return false
    end
    local allUseItemStoreSize = hf.serverData.allUseItemStoreSize
    if type(allUseItemStoreSize) ~= "table" then
        return false
    end
    for i, v in ipairs(uf) do
        local Ac = ua[v]
        local Ae = tonumber(allUseItemStoreSize[Ac]) or 0
        local Ad = Ae
        if Ad > 0 and (State.GearCount == 0 or State.Gear[v]) then
            vn("Buy_Backpack_Item", ul, Ac)
            if not t2(function()
                local z9 = tonumber(allUseItemStoreSize[Ac]) or 0
                return z9 < Ad
            end, u0) then
                uK = os.clock() + uR
            end
            return true
        end
    end
    uK = os.clock() + uR
    return false
end
vi = function(hu)
    local An
    local Ao_1
    if not uW() then
        tZ("Waiting for the round to open")
        return false
    elseif uv() then
        tZ("Trapped, waiting it out")
        return false
    else
        An, Ao_1 = uU(hu)
        if not An then
            tZ("Waiting for a matching seed")
            return false
        end
        local Ap = hu.onlyData.enemyEggItemByGid[An]
        if type(Ap) ~= "table" then
            return true
        end
        tZ("Going for " .. tostring(Ao_1))
        if not uy(Ap.cf + Vector3.new(0, 4, 0)) then
            return true
        end
        local Ap_1 = hu.onlyData.enemyEggItemByGid[An] == nil
        local At = if Ap_1 then 1 else 0
        local Ar = 1391 * At + 3757 * (1 - At)
        local As = 675 * At + 2929 * (1 - At)
        if not ((Ar * 2732 + As * 3488 + Ar * As) % 16777213 == 7093537) then
            Ap_1 = uv()
        end
        if Ap_1 then
            return true
        end
        tZ("Stealing " .. tostring(Ao_1))
        vn("StealEnemyEgg", An)
        if not t2(function()
            return t8() == An
        end, vc) then
            tO(An)
            tZ("Could not grab " .. tostring(Ao_1))
            return true
        end
        State.Stolen = State.Stolen + 1
        if not u1(hu) then
            tZ("Lost the seed on the way home")
        end
        return true
    end
end
tW = fn486
vt = fn544
u9 = task.spawn(worker)
ud.Track(fn1128)
folder = nil
uS = {}
uO = fn535
ub = function(it)
    local AV
    AV = nil
    AV = uS[it]
    if not AV then
        return
    end
    uS[it] = nil
    pcall(function()
        AV.billboard:Destroy()
    end)
    pcall(function()
        AV.highlight:Destroy()
    end)
end
tQ = fn672
vb = fn1061
uP = fn1012
uA = fn187
tU = fn1216
ud.SetSeedEsp = fn245
uC = task.spawn(worker2)
ud.Track(fns.fn36)
local function vz()
    local F5
    local F4
    local onDiscord
    onDiscord = nil
    F4 = nil
    F5 = nil
    local SaveManager, FW, FX, Library, Toggles, F0, F1, ThemeManager, Options
    FW = "Steal A Seed!"
    F4 = "https://discord.gg/synapsex"
    FX = "https://rscripts.net/@Ouroboros"
    F0 = "https://ouroboros-hub-rbx.web.app/"
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = Library.Toggles
    Options = Library.Options
    uG(ud, Library)
    F5 = function(jM, jN)
        local BF = tX(setclipboard) and setclipboard
        local BG = BF
        if not BG then
            local BF_1 = tX(toclipboard) and toclipboard
            BG = BF_1 or nil
        end
        local BF_2 = BG
        if not BF_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local BG_1 = pcall(BF_2, jM)
        if BG_1 then
            Library:Notify(jN)
        else
            Library:Notify("Failed to copy")
        end
    end
    onDiscord = function()
        F5(F4, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = F4, Copyable = true }, "|", FW, "|", "v0.1" },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    F1 = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "gamepad-2"),
        Player = Window:AddTab("Player", "person-standing"),
        Settings = Window:AddTab("Settings", "settings")
    }
    local function F6_1(j1)
        local DiscordGroup = j1:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    for k, v in F1 do
        if k ~= "Info" then
            F6_1(v)
        end
    end
    local function F7()
        local kK
        local StealGroup = F1.Main:AddRightGroupbox("Steal", "sprout")
        local Label = StealGroup:AddLabel(ud.GetStatus(), true)
        StealGroup:AddDivider()
        StealGroup:AddToggle("AutoSteal", {
            Text = "Auto Steal Seed",
            Default = false,
            Tooltip = "Takes matching seeds from the enemy plots and carries each one back to your plot.",
            Callback = function(kb)
                ud.SetAutoSteal(kb)
            end
        })
        StealGroup:AddDropdown("StealRarities", {
            Text = "Rarity Filter",
            Values = ud.RarityValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Expandable = true,
            Tooltip = "Steal seeds of these rarities. Leave both filters empty to steal every seed.",
            Callback = function(kd)
                ud.SetRarities(kd)
            end
        })
        StealGroup:AddDropdown("StealSeeds", {
            Text = "Specific Seed Filter",
            Values = ud.SeedValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Expandable = true,
            Tooltip = "Steal these exact seeds. A seed is taken when it matches either filter.",
            Callback = function(kf)
                ud.SetSeeds(kf)
            end
        })
        StealGroup:AddToggle("SeedEsp", {
            Text = "Seed ESP",
            Default = false,
            Tooltip = "Outlines every enemy seed and shows its name, rarity and distance.",
            Callback = function(kh)
                ud.SetSeedEsp(kh)
            end
        })
        local PlotGroup = F1.Main:AddLeftGroupbox("Plot", "shovel")
        PlotGroup:AddToggle("AutoPlant", {
            Text = "Auto Plant",
            Default = false,
            Tooltip = "Plants seeds from your hand into free spots on your plot.",
            Callback = function(kk)
                ud.SetAutoPlant(kk)
            end
        })
        PlotGroup:AddDropdown("PlantRarities", {
            Text = "Rarity Filter",
            Values = ud.RarityValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Expandable = true,
            Tooltip = "Plant seeds of these rarities. Leave both filters empty to plant every seed.",
            Callback = function(km)
                ud.SetPlantRarities(km)
            end
        })
        PlotGroup:AddDropdown("PlantSeeds", {
            Text = "Specific Seed Filter",
            Values = ud.SeedValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Expandable = true,
            Tooltip = "Plant these exact seeds. A seed is planted when it matches either filter.",
            Callback = function(ko)
                ud.SetPlantSeeds(ko)
            end
        })
        PlotGroup:AddToggle("AutoClaim", {
            Text = "Auto Claim Plant",
            Default = false,
            Tooltip = "Collects every plant that has finished growing.",
            Callback = function(kq)
                ud.SetAutoClaim(kq)
            end
        })
        PlotGroup:AddToggle("AutoMerge", {
            Text = "Auto Merge",
            Default = false,
            Tooltip = "Presses Merge All so every matching plant is fused into a higher star plant.",
            Callback = function(ks)
                ud.SetAutoMerge(ks)
            end
        })
        PlotGroup:AddToggle("AutoEquipBest", {
            Text = "Auto Equip Best",
            Default = false,
            Tooltip = "Presses Equip Best so your strongest plants stay on the plot.",
            Callback = function(kv)
                ud.SetAutoEquipBest(kv)
            end
        })
        local ShopGroup = F1.Main:AddRightGroupbox("Shop", "shopping-cart")
        ShopGroup:AddToggle("AutoBuyWeapons", {
            Text = "Auto Buy Weapons",
            Default = false,
            Tooltip = "Buys the cheapest weapon you do not own yet, then works upward.",
            Callback = function(ky)
                ud.SetAutoBuyWeapons(ky)
            end
        })
        ShopGroup:AddToggle("AutoBuyGear", {
            Text = "Auto Buy Gear",
            Default = false,
            Tooltip = "Buys gear from the gear shop while it is in stock.",
            Callback = function(kA)
                ud.SetAutoBuyGear(kA)
            end
        })
        ShopGroup:AddDropdown("GearWanted", {
            Text = "Gear",
            Values = ud.GearValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Expandable = true,
            Tooltip = "Gear to buy. Leave empty to buy anything in stock.",
            Callback = function(kC)
                ud.SetGear(kC)
            end
        })
        kK = task.spawn(function()
            while not Library.Unloaded do
                pcall(function()
                    Label:SetText(ud.GetStatus())
                end)
                task.wait(0.25)
            end
        end)
        ud.Track(function()
            if coroutine.status(kK) ~= "dead" then
                pcall(task.cancel, kK)
            end
        end)
    end
    F7()
    local function F6_2()
        local Cd
        local B7
        local Ca
        local Ch
        B7 = nil
        Ca = nil
        Cd = nil
        Ch = nil
        local B5, Label, B8, B9, Cb, Cc, Label2, Label3, Cg
        Cd = function(kO)
            return (tostring(kO):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        Ca = function(kQ, kR)
            return string.format('<font color="%s">%s</font>', kR, Cd(kQ))
        end
        Cg = function(kU, kV, kW)
            return string.format("<b>%s</b> %s %s", kU, Ca("-", "#5a6070"), Ca(kV, kW))
        end
        local Ci = "#6ec1ff"
        local Cj = "#8b93a3"
        B9 = "#e8a34d"
        Cc = "#7fd47f"
        local Ck = {}
        local Cq = if not tY("StealEnemyEgg") then 1 else 0
        if Cq == 1 then
            table.insert(Ck, "steal event")
        end
        if not vo() then
            table.insert(Ck, "seed data")
        end
        local Cl = tY("PlantEgg") and tY("SelectHandUnit") and tY("TakeIncubationUnit") and tY("Equip_GidData_Item")
        if not Cl then
            table.insert(Ck, "plot actions")
        end
        local Ct = if not tY("Buy_Backpack_Item") then 1 else 0
        if Ct == 1 then
            table.insert(Ck, "shop actions")
        end
        local Cl_1 = tY("QuickFuse") and tY("Business")
        if not Cl_1 then
            table.insert(Ck, "merge and equip")
        end
        local Cl_2 = #Ck == 0 and "ready"
        local Cm = Cl_2 or "limited: " .. table.concat(Ck, ", ")
        B8 = "Unknown"
        pcall(function()
            local BP_1
            local BO_1
            if tX(identifyexecutor) then
                BP_1, BO_1 = identifyexecutor()
                local BQ = BP_1 ~= ""
                local BR = type(BP_1) == "string" and BQ
                if BR then
                    local BQ_1 = type(BO_1) == "string" and BO_1 ~= "" and BP_1 .. " " .. BO_1
                    local BO_2 = BQ_1
                    local BV = if BO_2 then 1 else 0
                    local BT = 3182 * BV + 3484 * (1 - BV)
                    local BU = 1412 * BV + 338 * (1 - BV)
                    if not ((BT * 2270 + BU * 3717 + BT * BU) % 16777213 == 187315) then
                        BO_2 = BP_1
                    end
                    B8 = BO_2
                end
            end
        end)
        Ch = os.clock()
        Cb = function()
            local BW = math.floor(os.clock() - Ch)
            if BW < 60 then
                return BW .. "s"
            elseif BW < 3600 then
                return string.format("%dm %ds", BW // 60, BW % 60)
            else
                return string.format("%dh %dm", BW // 3600, BW % 3600 // 60)
            end
        end
        local UserGroup = F1.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(Cg("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, Cc), true)
        UserGroup:AddLabel(Cg("UserId", tostring(LocalPlayer.UserId), Ci), true)
        UserGroup:AddLabel(Cg("Executor", B8 .. "  " .. Cm, Cc), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(Cg("Session", Cb(), B9), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                F5(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                F5("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = F1.Info:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(Cg("Game", FW, Ci), true)
        Label2 = SessionGroup:AddLabel(Cg("Players", "0/0", Cc), true)
        B5 = tostring(game.JobId)
        local Ci_1 = #B5 > 18 and string.sub(B5, 1, 18) .. "..."
        local Cl_4 = Ci_1 or B5
        SessionGroup:AddLabel(Cg("Job", Cl_4, Cj), true)
        Label = SessionGroup:AddLabel(Cg("Ping", "0 ms", B9), true)
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
                F5(B5, "Copied Job ID")
            end
        })
        B7 = task.spawn(function()
            local B1_1
            local B0_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(Cg("Session", Cb(), B9))
                Label2:SetText(Cg("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), Cc))
                B0_1, B1_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local B0_2 = B0_1 and B1_1 .. " ms" or "n/a"
                Label:SetText(Cg("Ping", B0_2, B9))
            end
        end)
        ud.Track(function()
            if coroutine.status(B7) ~= "dead" then
                pcall(task.cancel, B7)
            end
        end)
        local SocialsGroup = F1.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                F5(FX, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                F5(F0, "Copied website link")
            end
        })
    end
    F6_2()
    local function F6_3()
        local mf
        local md
        local me
        local mc
        local MovementGroup = F1.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = F1.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        me = {}
        mf = {}
        local mb = {}
        md = {}
        mc = {}
        local function mg()
            for k, v in mc do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(mc)
        end
        local function mk()
            for k, v in md do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(md)
        end
        local function mo()
            for k, v in me do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(me)
        end
        local function ms(mt)
            if not mt:IsA("ProximityPrompt") then
                return
            end
            if mf[mt] == nil then
                mf[mt] = {
                    HoldDuration = mt.HoldDuration,
                    MaxActivationDistance = mt.MaxActivationDistance,
                    RequiresLineOfSight = mt.RequiresLineOfSight
                }
            end
            mt.HoldDuration = 0
            mt.MaxActivationDistance = 50
            mt.RequiresLineOfSight = false
        end
        local function mv()
            for k, v in mf do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(mf)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                mo()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                mk()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                mg()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                    pcall(ms, v)
                end
            else
                mv()
            end
        end)
        table.insert(mb, Workspace.DescendantAdded:Connect(function(mO)
            if Toggles.InstantProximityPrompt.Value then
                ms(mO)
            end
        end))
        table.insert(mb, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if mc[v] == nil then
                        mc[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(mb, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local Dk = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and Dk then
                Dk:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(mb, RunService.RenderStepped:Connect(function(m9)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local Dq = Character and Character:FindFirstChildOfClass("Humanoid")
            local Dr = Character
            if Dr then
                Dr = Character:FindFirstChild("HumanoidRootPart")
            end
            local Dp_1 = Dr
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and Dq then
                if md[Dq] == nil then
                    md[Dq] = Dq.WalkSpeed
                end
                Dq.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and Dp_1 and Dq and CurrentCamera then
                if me[Dq] == nil then
                    me[Dq] = Dq.PlatformStand
                end
                Dq.PlatformStand = true
                local Dr_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        Dr_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        Dr_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        Dr_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        Dr_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        Dr_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        Dr_4 -= Vector3.new(0, 1, 0)
                    end
                end
                Dp_1.AssemblyLinearVelocity = Vector3.zero
                if Dr_4.Magnitude > 0 then
                    Dp_1.CFrame = Dp_1.CFrame + Dr_4.Unit * Options.FlySpeed.Value * m9
                end
            end
        end))
        ud.Track(function()
            for k, v in mb do
                v:Disconnect()
            end
            mg()
            mk()
            mo()
            mv()
        end)
    end
    F6_3()
    local function F6_4()
        local EE, EF, EG, EH, EI, EJ, EK, EL, Label, EN, EO, EP, EQ, ER
        EN = {}
        EH = {}
        EE = nil
        EJ = false
        EF = 0
        EP = 0
        EK = os.clock()
        local MenuGroup = F1.Settings:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        EQ = function()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local DJ = not CurrentCamera or not tX(VirtualUser.CaptureController) or not tX(VirtualUser.ClickButton2)
            if DJ then
                return false
            end
            local DJ_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not DJ_1 then
                return false
            end
            EF += 1
            EK = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. EF)
            end)
            return true
        end
        EL = function(nT)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not nT)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not nT
                end
            end)
            if not nT then
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
        EI = function(n8)
            local DP = n8.ClassName == "ParticleEmitter" or n8.ClassName == "Trail" or n8.ClassName == "Smoke"
            local DT = if DP then 1 else 0
            local DR = 2354 * DT + 2577 * (1 - DT)
            local DS = 3297 * DT + 2906 * (1 - DT)
            if not ((DR * 1196 + DS * 546 + DR * DS) % 16777213 == 12376684) then
                DP = n8.ClassName == "Fire"
            end
            local DT_1 = if DP then 1 else 0
            local DR_1 = 3439 * DT_1 + 1031 * (1 - DT_1)
            local DS_1 = 3309 * DT_1 + 1986 * (1 - DT_1)
            if not ((DR_1 * 1860 + DS_1 * 3215 + DR_1 * DS_1) % 16777213 == 11637413) then
                DP = n8.ClassName == "Sparkles"
            end
            if not DP then
                DP = n8.ClassName == "Explosion"
            end
            if not DP then
                DP = n8.ClassName == "Beam"
            end
            if DP then
                if EN[n8] == nil then
                    EN[n8] = n8.Enabled
                end
                pcall(function()
                    n8.Enabled = false
                end)
            end
        end
        EG = function()
            for k, v in EN do
                local DY = k
                local D_ = v
                if DY.Parent then
                    pcall(function()
                        DY.Enabled = D_
                    end)
                end
            end
            table.clear(EN)
            if EE then
                pcall(function()
                    settings().Rendering.QualityLevel = EE.Quality
                end)
                Lighting.GlobalShadows = EE.Shadows
                Lighting.FogEnd = EE.Fog
                EE = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(oo)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not oo)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(ov)
                if ov then
                    if not EE then
                        EE = {
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
                    for k, v in Workspace:QueryDescendants("ParticleEmitter,Trail,Smoke,Fire,Sparkles,Beam") do
                        pcall(EI, v)
                    end
                else
                    EG()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        EL(true)
        local ScriptGroup = F1.Settings:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            EL(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            EL(true)
        end
        table.insert(EH, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                EQ()
            end
        end))
        table.insert(EH, Workspace.DescendantAdded:Connect(function(oO)
            if Toggles.FpsBoost.Value then
                EI(oO)
            end
        end))
        ER = function(oS)
            if EJ or Library.Unloaded or not Toggles.AutoReconnect.Value then
                return
            end
            EJ = true
            local Ef = EP
            local Eg_1 = pcall(function()
                if oS then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not Eg_1 then
                EJ = false
                if not oS and Ef == EP then
                    task.delay(1.5, function()
                        if Ef == EP then
                            ER(true)
                        end
                    end)
                end
            end
        end
        table.insert(EH, TeleportService.TeleportInitFailed:Connect(function(o9)
            local Ek
            if o9 == LocalPlayer and EJ then
                EJ = false
                Ek = EP
                task.delay(3, function()
                    if Ek == EP then
                        ER(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local Ep = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            local Ep_1 = not Ep
            local Eq = Library.Unloaded
            local Eu = if Eq then 1 else 0
            local Es = 3551 * Eu + 4023 * (1 - Eu)
            local Et = 3281 * Eu + 1340 * (1 - Eu)
            if not ((Es * 1045 + Et * 912 + Es * Et) % 16777213 == 1576685) then
                Eq = Ep_1
            end
            if Eq then
                return
            end
            table.insert(EH, Ep.ChildAdded:Connect(function(po)
                if po.Name == "ErrorPrompt" then
                    ER(false)
                end
            end))
        end)
        EO = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    EL(true)
                end
                local Ev = Toggles.AntiAfk.Value and os.clock() - EK >= 60
                if Ev then
                    EQ()
                end
                task.wait(1)
            end
        end)
        ud.Track(function()
            EP += 1
            for k, v in EH do
                v:Disconnect()
            end
            pcall(task.cancel, EO)
            EL(false)
            EG()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    F6_4()
    local function F6_5()
        local FP, FQ, FR, FS
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("MyScriptHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(F1.Settings)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/StealASeed")
        local FT = SaveManager:BuildConfigSection(F1.Settings)
        FR = function(pP, pQ)
            local EV_1 = (pP == "Toggle" and Toggles or Options)[pQ]
            local EU_2 = type(EV_1) == "table" and EV_1.Type == pP
            return EU_2 and EV_1 or nil
        end
        FP = function(pZ, p_)
            local Type = p_.Type
            if Type == "Toggle" then
                return { idx = pZ, type = "Toggle", value = p_.Value == true }
            elseif Type == "Slider" then
                return { idx = pZ, type = "Slider", value = tostring(p_.Value) }
            elseif Type == "Dropdown" then
                return { idx = pZ, type = "Dropdown", multi = p_.Multi == true, value = p_.Value }
            elseif Type == "Input" then
                local EZ = p_.Value or ""
                return { idx = pZ, type = "Input", text = tostring(EZ) }
            elseif Type == "ColorPicker" then
                return { idx = pZ, type = "ColorPicker", value = p_.Value:ToHex(), transparency = p_.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = pZ,
                    type = "KeyPicker",
                    mode = p_.Mode,
                    key = p_.Value,
                    modifiers = p_.Modifiers,
                    toggled = p_.Toggled
                }
            else
                return nil
            end
        end
        FS = function()
            local E4 = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local E5 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if E5 then
                        local E5_1 = FP(k, v)
                        if E5_1 then
                            E4[#E4 + 1] = E5_1
                        end
                    end
                end
            end
            table.sort(E4, function(p9, qa)
                if p9.type ~= qa.type then
                    return p9.type < qa.type
                end
                return p9.idx < qa.idx
            end)
            return { objects = E4 }
        end
        FQ = function(qc)
            local Fo
            Fo = nil
            local Fp = type(qc) ~= "table"
            local Ft = if Fp then 1 else 0
            local Fr = 2660 * Ft + 1769 * (1 - Ft)
            local Fs = 3392 * Ft + 4035 * (1 - Ft)
            if not ((Fr * 2808 + Fs * 1481 + Fr * Fs) % 16777213 == 4738339) then
                Fp = type(qc.idx) ~= "string"
            end
            if not Fp then
                Fp = type(qc.type) ~= "string"
            end
            if not Fp then
                Fp = SaveManager.Ignore[qc.idx]
            end
            if Fp then
                return false
            end
            Fo = FR(qc.type, qc.idx)
            if not Fo then
                return false
            end
            local Fp_1 = pcall(function()
                if qc.type == "Input" then
                    if type(qc.text) ~= "string" then
                        return
                    end
                    Fo:SetValue(qc.text)
                elseif qc.type == "ColorPicker" then
                    Fo:SetValueRGB(Color3.fromHex(qc.value), qc.transparency)
                elseif qc.type == "KeyPicker" then
                    Fo:SetValue({ qc.key, qc.mode, qc.modifiers })
                    if qc.mode == "Toggle" and qc.toggled ~= nil then
                        Fo.Toggled = qc.toggled
                        Fo:Update()
                    end
                else
                    Fo:SetValue(qc.value)
                end
            end)
            return Fp_1
        end
        FT:AddDivider()
        FT:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        FT:AddButton("Export Config to Clipboard", function()
            local Fv_1
            local Fu_1
            Fu_1, Fv_1 = pcall(HttpService.JSONEncode, HttpService, FS())
            if Fu_1 then
                local Fu_2 = tX(setclipboard) and setclipboard
                local Fw = Fu_2
                if not Fw then
                    local Fu_3 = tX(toclipboard) and toclipboard
                    Fw = Fu_3 or nil
                end
                local Fu_4 = Fw
                local Fw_1 = type(Fu_4) == "function" and pcall(Fu_4, Fv_1)
                if Fw_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        FT:AddButton("Import Config from Clipboard Text", function()
            local FE_1
            local FC = Options.SaveManager_ImportSource.Value or ""
            local FC_1
            local FD = tostring(FC):match("^%s*(.-)%s*$")
            if FD == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #FD > 262144 then
                Library:Notify("That config is too large")
                return
            end
            FC_1, FE_1 = pcall(HttpService.JSONDecode, HttpService, FD)
            local FD_1 = not FC_1 or type(FE_1) ~= "table" or type(FE_1.objects) ~= "table"
            if FD_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #FE_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local FC_2 = 0
            for i, v in ipairs(FE_1.objects) do
                if FQ(v) then
                    FC_2 += 1
                end
            end
            if FC_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local FE_2 = FC_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(FC_2, FE_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        if Options.StealRarities then
            ud.SetRarities(Options.StealRarities.Value)
        end
        if Options.StealSeeds then
            ud.SetSeeds(Options.StealSeeds.Value)
        end
        if Options.PlantRarities then
            ud.SetPlantRarities(Options.PlantRarities.Value)
        end
        if Options.PlantSeeds then
            ud.SetPlantSeeds(Options.PlantSeeds.Value)
        end
        if Options.GearWanted then
            ud.SetGear(Options.GearWanted.Value)
        end
        if Toggles.AutoPlant then
            ud.SetAutoPlant(Toggles.AutoPlant.Value)
        end
        if Toggles.AutoClaim then
            ud.SetAutoClaim(Toggles.AutoClaim.Value)
        end
        if Toggles.AutoMerge then
            ud.SetAutoMerge(Toggles.AutoMerge.Value)
        end
        if Toggles.AutoBuyWeapons then
            ud.SetAutoBuyWeapons(Toggles.AutoBuyWeapons.Value)
        end
        if Toggles.AutoEquipBest then
            ud.SetAutoEquipBest(Toggles.AutoEquipBest.Value)
        end
        if Toggles.AutoBuyGear then
            ud.SetAutoBuyGear(Toggles.AutoBuyGear.Value)
        end
        if Toggles.SeedEsp then
            ud.SetSeedEsp(Toggles.SeedEsp.Value)
        end
        if Toggles.AutoSteal then
            ud.SetAutoSteal(Toggles.AutoSteal.Value)
        end
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    F6_5()
end
if (not t_ and false and (not uS and u8) or (t_ or uj or uC and not uS)) and ((uC or u8) and (not uS or uj) or (t_ or not uj or (false or u8))) or (not uj and false and (uj or u8) or (uj or uC) and (u8 or not uS) or false and not uC and (uC and not uS) and (uj or uC or not t_ and uS)) or not ((not t_ and false and (not uS and u8) or (t_ or uj or uC and not uS)) and ((uC or u8) and (not uS or uj) or (t_ or not uj or (false or u8))) or (not uj and false and (uj or u8) or (uj or uC) and (u8 or not uS) or false and not uC and (uC and not uS) and (uj or uC or not t_ and uS))) then
    vz()
else
    vz()
end
