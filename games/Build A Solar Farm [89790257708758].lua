local uo
local t5
local tN
local uu
local tu
local ub
local tT
local uA
local LocalPlayer
local tZ
local uG
local tG
local un
local t4
local tM
local ut
local tt
local ua
local tS
local uz
local tz
local ug
local CoreGui
local uF
local tF
local ts
local t9
local tR
local uy
local ty
local uf
local tX
local uE
local tE
local ul
local t2
local tK
local tr
local ux
local tx
local tW
local uD
local tD
local State
local t1
local tJ
local t7
local tP
local uw
local tw
local ud
local tV
local uC
local tC
local uj
local up
local t6
local tO
local tv
local uc
local tU
local uB
local tB
local ui
local function fn22()
    local z6_1
    local z5_1
    local z4_1
    local z2_1
    local z1_1, z1_2
    local z0 = ts()
    if not z0 then
        return
    end
    z2_1, z1_1 = tw()
    if next(z1_1) == nil then
        return
    end
    local z3 = tt()
    z4_1, z5_1 = nil, nil
    for k in pairs(z1_1) do
        z1_2, z6_1 = tK(k, z0, z2_1)
        local z7 = z1_2 and z6_1 <= z3
        if z7 then
            z7 = t4.maxCost <= 0 or z6_1 <= t4.maxCost
        end
        if z7 then
            if not z5_1 or z6_1 < z5_1 then
                z4_1, z5_1 = k, z6_1
            end
        end
    end
    if not z4_1 then
        return
    end
    if tG("ZoneEvent", z4_1) then
        tJ(string.format("Bought plot zone %d for $%d", z4_1, z5_1))
    end
end
local function fn37()
    local xY = type(tx) == "table" and type(tx.Cash) == "number"
    if xY then
        return tx
    end
    tx = nil
    if not tP(getgc) then
        return nil
    elseif os.clock() - uE < 5 then
        return nil
    else
        uE = os.clock()
        local xY_1 = pcall(function()
            for i, v in ipairs(getgc(true)) do
                if type(v) == "table" then
                    local xP = rawget(v, "Data")
                    local xQ = type(xP) == "table" and type(rawget(xP, "Cash")) == "number" and rawget(xP, "DailyRewardDay") ~= nil and rawget(xP, "IsCarryingEnergy") ~= nil
                    if xQ then
                        tx = xP
                        break
                    end
                end
            end
        end)
        if not xY_1 then
            return nil
        end
        return tx
    end
end
local function fn40()
    gethui = uC
end
local function fn48()
    local xJ = up()
    local xK = xJ and xJ.Upgrades[tv]
    local xJ_1 = xK
    if xK then
        xK = xJ_1[uB]
    end
    local xJ_2 = xK
    if xK then
        xK = tonumber(xJ_2.MaxLevel)
    end
    return xK or nil
end
local function fn49(W)
    local vl = typeof(cloneref) == "function" and typeof(W) == "Instance"
    if vl then
        return cloneref(W)
    end
    return W
end
local function fn71(gP)
    local Al = (tonumber(gP)) or 1.5
    tr.interval = math.max(0.3, Al)
end
local function fn80(et)
    local yC = {}
    if type(et) == "table" then
        for k, v in pairs(et) do
            local yD = v == true and type(k) == "string"
            if yD then
                yC[k] = true
            elseif type(v) == "string" then
                yC[v] = true
            end
        end
    end
    return yC
end
local function fn96()
    return not uf.Unloaded
end
local function fn110(dR)
    local yi_1
    local yg = up()
    local yh = not yg or not tP(yg.GetUpgradeCost)
    local yh_1
    if yh then
        return nil
    end
    yh_1, yi_1 = pcall(yg.GetUpgradeCost, tv, uB, dR)
    if not yh_1 then
        return nil
    end
    return tonumber(yi_1)
end
local function fn113(hD)
    if hD then
        tR(t4, tN)
    else
        tO(t4)
    end
end
local function fn118()
    local x5 = ux()
    if x5 then
        local x6_1 = (tonumber(x5.Cash)) or 0
        return x6_1
    end
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local x6_2 = leaderstats and leaderstats:FindFirstChild("Cash")
    local x5_2 = x6_2
    if x6_2 then
        x6_2 = tonumber(x5_2.Value)
    end
    return x6_2 or 0
end
local function fn123()
    tO(tZ)
    tO(t9)
    tO(t4)
    tO(tz)
    tO(tr)
    tO(uy)
    tO(uu)
    tO(un)
    tO(ui)
end
local function fn175()
    local zd = if tT() then 1 else 0
    if zd == 1 then
        return
    end
    if tG("InteractionEvent", "Collect") then
        tJ("Collected energy")
    end
end
local function fn236(hc)
    local Aw = (tonumber(hc)) or 2
    uu.interval = math.max(0.5, Aw)
end
local function fn247(hj)
    local AA = (tonumber(hj)) or 5
    un.interval = math.max(1, AA)
end
local function fn260(hl)
    if hl then
        tR(ui, ul)
    else
        tO(ui)
    end
end
local function fn281(gI)
    local Ah = (tonumber(gI)) or 3
    tz.interval = math.max(0.5, Ah)
end
local function fn283()
    if tG("InteractionEvent", "CollectCash") then
        tJ("Collected cash")
    end
end
local function fn290()
    if not tV() then
        return
    end
    local zR = tC()
    if zR then
        local zS = ut()
        if zS and zR >= zS then
            tJ("Generator is maxed")
            return
        end
        if tZ.maxLevel > 0 and zR >= tZ.maxLevel then
            tJ("Generator at your level cap")
            return
        end
        local zS_2 = tX(zR)
        local zT_1 = zS_2 and zS_2 > tt()
        if zT_1 then
            tJ(string.format("Need $%d for generator level %d", zS_2, zR + 1))
            return
        end
    end
    if tG("UpgradeEvent", tv, uB) then
        tJ("Upgraded generator")
    end
end
local function fn294(hT)
    local AT = (tonumber(hT)) or 0
    tZ.maxLevel = math.max(0, AT)
end
local function fn299()
    local yk = ux()
    if not yk then
        return nil, nil
    end
    local yl = (tonumber(yk.DailyRewardDay)) or 1
    local yl_1 = (tonumber(yk.LastClaimTime)) or 0
    local yl_2 = yl_1 <= 0
    local yq = if yl_2 then 1 else 0
    local yo = 3288 * yq + 3215 * (1 - yq)
    local yp = 2092 * yq + 2201 * (1 - yq)
    if not ((yo * 1801 + yp * 1729 + yo * yp) % 16777213 == 16417252) then
        yl_2 = os.time() - yl_1 >= uo
    end
    if yl_2 then
        return true, yl
    end
    return false, yl
end
local function fn315()
    if ua then
        return ua
    end
    local vC = t6()
    if not vC then
        return nil
    end
    local vD = {}
    for k, v in pairs(vC.Panels) do
        local vC_1 = type(v) == "table" and type(v.Name) == "string"
        if vC_1 then
            local Name = v.Name
            local vE = type(v.Rarity) == "string" and v.Rarity
            local vF = vE or "Common"
            local vE_1 = (tonumber(v.Cost)) or 0
            vD[Name] = { Rarity = vF, Cost = vE_1 }
        end
    end
    ua = vD
    return vD
end
local function fn339(g0)
    if g0 then
        tR(uy, t7)
    else
        tO(uy)
    end
end
local function fn352()
    local wu = t2()
    if #wu == 0 then
        return false
    end
    for i, v in ipairs(wu) do
        if not v.panel then
            return true
        end
    end
    return false
end
local function fn387()
    return tu:FindFirstChild("Remotes")
end
local function fn388(hM)
    if hM then
        tR(tZ, ug)
    else
        tO(tZ)
    end
end
local function fn396(Z)
    return type(Z) == "function"
end
local function fn406(as, at)
    local vs = uG()
    local vt = vs and vs:FindFirstChild(as)
    local vs_1 = vt
    if vt then
        vt = vs_1:IsA(at)
    end
    if vt then
        return vs_1
    end
    return nil
end
local function fn479(hx)
    t9.rarities = tE(hx)
end
local function fn489()
    local Character = LocalPlayer.Character
    local v8 = Character and Character:FindFirstChild("HumanoidRootPart")
    return v8 or nil
end
local function fn492()
    local wE_1
    local wD_4
    if ty ~= nil then
        return ty ~= false and ty or nil
    end
    local Shared = tu:FindFirstChild("Shared")
    local wD_2 = Shared and Shared:FindFirstChild("Configurations")
    local wC_3 = wD_2
    if wD_2 then
        wD_2 = wC_3:FindFirstChild("Zone")
    end
    local wC_4 = wD_2
    local wD_3 = not wC_4 or not wC_4:IsA("ModuleScript")
    if wD_3 then
        ty = false
        return nil
    end
    wD_4, wE_1 = pcall(require, wC_4)
    local wC_5 = not wD_4 or type(wE_1) ~= "table"
    local wI = if wC_5 then 1 else 0
    local wG = 3597 * wI + 255 * (1 - wI)
    local wH = 1118 * wI + 3166 * (1 - wI)
    if not ((wG * 3768 + wH * 1912 + wG * wH) % 16777213 == 2935345) then
        wC_5 = type(wE_1.Zones) ~= "table"
    end
    if wC_5 then
        ty = false
        return nil
    end
    ty = wE_1
    return wE_1
end
local function fn494(gD)
    if gD then
        tR(tz, tS)
    else
        tO(tz)
    end
end
local function fn497()
    local v4 = tV()
    local v5 = v4 and v4:FindFirstChild("SpawnLocation")
    local v4_1 = v5
    if v5 then
        v5 = v4_1:IsA("BasePart")
    end
    if v5 then
        return v4_1.Position
    end
    return nil
end
local function fn524(g5)
    local As = (tonumber(g5)) or 2
    uy.interval = math.max(0.5, As)
end
local function fn538()
    local ya = ux()
    local yb = ya and ya.Upgrades
    local yb_1 = type(yb) == "table" and yb[tv]
    local ya_2 = yb_1
    local yf = if ya_2 then 1 else 0
    local yd = 2087 * yf + 1293 * (1 - yf)
    local ye = 3428 * yf + 471 * (1 - yf)
    if not ((yd * 3148 + ye * 2477 + yd * ye) % 16777213 == 5438055) then
        ya_2 = nil
    end
    local yb_2 = ya_2
    if type(yb_2) ~= "table" then
        return nil
    end
    return tonumber(yb_2[uB])
end
local function fn549()
    return CoreGui
end
local function fn555()
    local Plots = uA:FindFirstChild("Plots")
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
local function fn557()
    local zh = if not tT() then 1 else 0
    if zh == 1 then
        return
    end
    if tG("InteractionEvent", "Sell") then
        tJ("Deposited energy")
    end
end
local function fn584(er)
    er.stopped = true
    local yx = er.generation
    local yB = if yx then 1 else 0
    local yz = 1312 * yB + 2151 * (1 - yB)
    local yA = 2427 * yB + 851 * (1 - yB)
    if not ((yz * 2874 + yA * 771 + yz * yA) % 16777213 == 8826129) then
        yx = 0
    end
    er.generation = yx + 1
end
local function fn601()
    local xy_1
    local xx_4
    if uw ~= nil then
        local xx_1 = uw ~= false and uw
        local xC = if xx_1 then 1 else 0
        local xA = 1559 * xC + 2310 * (1 - xC)
        local xB = 2392 * xC + 718 * (1 - xC)
        if not ((xA * 3118 + xB * 1948 + xA * xB) % 16777213 == 13249706) then
            xx_1 = nil
        end
        return xx_1
    end
    local Shared = tu:FindFirstChild("Shared")
    local xx_2 = Shared and Shared:FindFirstChild("Configurations")
    local xw_3 = xx_2
    if xx_2 then
        xx_2 = xw_3:FindFirstChild("Upgrade")
    end
    local xw_4 = xx_2
    local xx_3 = not xw_4
    local xF = if xx_3 then 1 else 0
    local xD = 1998 * xF + 819 * (1 - xF)
    local xE = 1791 * xF + 1088 * (1 - xF)
    if not ((xD * 2836 + xE * 2084 + xD * xE) % 16777213 == 12977190) then
        xx_3 = not xw_4:IsA("ModuleScript")
    end
    if xx_3 then
        uw = false
        return nil
    end
    xx_4, xy_1 = pcall(require, xw_4)
    local xw_5 = not xx_4
    local xI = if xw_5 then 1 else 0
    local xG = 1492 * xI + 1288 * (1 - xI)
    local xH = 2817 * xI + 505 * (1 - xI)
    if not ((xG * 679 + xH * 3244 + xG * xH) % 16777213 == 14354380) then
        xw_5 = type(xy_1) ~= "table"
    end
    if not xw_5 then
        xw_5 = type(xy_1.Upgrades) ~= "table"
    end
    if xw_5 then
        uw = false
        return nil
    end
    uw = xy_1
    return xy_1
end
local function fn604(gK)
    if gK then
        tR(tr, uF)
    else
        tO(tr)
    end
end
local function fn608(gZ)
    local Ao = (tonumber(gZ)) or 0
    tr.maxCost = math.max(0, Ao)
end
local function fn611()
    local vA_1
    local vz_4
    if ud ~= nil then
        return ud ~= false and ud or nil
    end
    local Shared = tu:FindFirstChild("Shared")
    local vz_2 = Shared and Shared:FindFirstChild("Configurations")
    local vy_3 = vz_2
    if vz_2 then
        vz_2 = vy_3:FindFirstChild("Panel")
    end
    local vy_4 = vz_2
    local vz_3 = not vy_4 or not vy_4:IsA("ModuleScript")
    if vz_3 then
        ud = false
        return nil
    end
    vz_4, vA_1 = pcall(require, vy_4)
    local vy_5 = not vz_4 or type(vA_1) ~= "table" or type(vA_1.Panels) ~= "table"
    if vy_5 then
        ud = false
        return nil
    end
    ud = vA_1
    return vA_1
end
local function fn618(hA)
    t9.panels = tE(hA)
end
local function fn641()
    local wi = tV()
    local wj = wi and wi:FindFirstChild("RollSlots")
    if not wj then
        return {}
    end
    local wj_1 = {}
    for i, child in ipairs(wj:GetChildren()) do
        local wi_2 = tonumber(child.Name)
        local RollAnchor = child:FindFirstChild("RollAnchor")
        if wi_2 and RollAnchor then
            local attr = RollAnchor:GetAttribute("PanelName")
            local insert = table.insert
            local wm = type(attr) == "string" and attr
            local wl_2 = wm or nil
            insert(wj_1, { index = wi_2, panel = wl_2 })
        end
    end
    table.sort(wj_1, function(bF, bG)
        return bF.index < bG.index
    end)
    return wj_1
end
local function fn658(g7)
    if g7 then
        tR(uu, tM)
    else
        tO(uu)
    end
end
local function fn676(hI)
    local AJ = (tonumber(hI)) or 5
    t4.interval = math.max(1, AJ)
end
local function fn681()
    local zk_1
    local zj_1
    zj_1, zk_1 = uc()
    if zj_1 == false then
        return
    end
    local zj_2 = zk_1 or 1
    local zo = if tG("ClaimDailyReward", zj_2) then 1 else 0
    if zo == 1 then
        tJ("Claimed daily reward " .. tostring(zj_2))
    end
end
local function fn686(hq)
    if hq then
        tR(t9, tD)
    else
        tO(t9)
    end
end
local function fn694(hK)
    local AM = (tonumber(hK)) or 0
    t4.maxCost = math.max(0, AM)
end
local function fn717(an)
    State.Status = tostring(an)
end
local function fn758()
    local wL_1
    local wJ = tV()
    local wK = wJ and wJ:FindFirstChild("Zones")
    local wK_1
    wL_1, wK_1 = {}, {}
    if not wK then
        return wL_1, wK_1
    end
    for i, child in ipairs(wK:GetChildren()) do
        local wJ_2 = tonumber(child.Name)
        if wJ_2 then
            if child:FindFirstChild("PromptAtt") then
                wK_1[wJ_2] = child
            else
                wL_1[wJ_2] = child
            end
        end
    end
    return wL_1, wK_1
end
local function fn763()
    local x8 = ux()
    if x8 then
        return x8.IsCarryingEnergy == true
    end
    return false
end
local function fn814(ai, aj)
    if not tF() then
        return
    end
    local Notifications = State.Notifications
    local vp = tostring(ai)
    local vq = aj or 5
    table.insert(Notifications, { text = vp, time = vq })
    if #State.Notifications > 12 then
        table.remove(State.Notifications, 1)
    end
end
local function fn906()
    local Ad = uz()
    if not Ad then
        ub("Could not find your plot")
        return
    end
    if tB(Ad, 5) then
        ub("Teleported to your base")
    else
        ub("No character to teleport")
    end
end
local function fn909(hv)
    local AF = (tonumber(hv)) or 2
    t9.interval = math.max(0.5, AF)
end
local function fn910(gR)
    tr.rarities = tE(gR)
end
local function fn1010(gX)
    tr.unblock = gX == true
end
local function fn1025()
    if not tV() then
        tJ("Waiting for your plot")
        return
    end
    local yU = if not t1() then 1 else 0
    if yU == 1 then
        tJ("Roll slots full - buy or clear a panel")
        return
    end
    if tG("RollEvent", "Roll") then
        tJ("Rolled a panel")
    end
end
local function fn1028(gU)
    tr.panels = tE(gU)
end
local function fn1041()
    local vQ = t5()
    local vR = {}
    if not vQ then
        return vR
    end
    for k in pairs(vQ) do
        table.insert(vR, k)
    end
    table.sort(vR)
    return vR
end
local function fn1045(ez)
    local yL = 0
    for k in pairs(ez) do
        yL += 1
    end
    return yL
end
local function fn1065(he)
    if he then
        tR(un, uD)
    else
        tO(un)
    end
end
local function fn1072(b9, ca, cb)
    local wT = ca.Zones[b9]
    if type(wT) ~= "table" then
        return false, 0
    end
    local RequiresAny = wT.RequiresAny
    local wV = type(RequiresAny) == "table" and #RequiresAny > 0
    if wV then
        local wV_1 = false
        for i, v in ipairs(RequiresAny) do
            if cb[tonumber(v)] then
                wV_1 = true
                break
            end
        end
        if not wV_1 then
            return false, 0
        end
        local wU_1 = (tonumber(wT.Cost)) or 0
        return true, wU_1
    end
    local wU_2 = (tonumber(wT.Cost)) or 0
    return true, wU_2
end
local function fn1073()
    local yV = t2()
    if #yV == 0 then
        return
    end
    local yW = t5()
    local yX = uj(tr.rarities)
    local yY = uj(tr.panels)
    local yZ = tt()
    for i, v in ipairs(yV) do
        local yV_1 = not tF() or tr.stopped
        if yV_1 then
            return
        end
        local panel = v.panel
        if panel then
            local y0 = yW and yW[panel] or nil
            local y__1 = y0
            if y0 then
                y0 = y__1.Cost
            end
            local y1 = y0 or 0
            local y0_1 = y__1
            if y0_1 then
                y0_1 = y__1.Rarity
            end
            local y__2 = y0_1 or nil
            local y0_2 = true
            if yY > 0 or yX > 0 then
                y0_2 = false
                if yY > 0 and tr.panels[panel] then
                    y0_2 = true
                end
                if yX > 0 and y__2 and tr.rarities[y__2] then
                    y0_2 = true
                end
            end
            if y0_2 and tr.maxCost > 0 and y1 > tr.maxCost then
                y0_2 = false
            end
            local y__7 = not y0_2
            if y__7 ~= false then
                y__7 = tr.unblock
            end
            if y__7 then
                y0_2 = true
            end
            if y0_2 then
                if y1 > yZ then
                    tJ(string.format("Need $%s for %s", tostring(y1), panel))
                elseif tG("RollEvent", "Buy", v.index) then
                    tJ("Bought " .. panel)
                    yZ -= y1
                    task.wait(0.35)
                end
            else
                tJ("Skipping " .. panel)
            end
        end
    end
end
local function fn1108(hR)
    local AQ = (tonumber(hR)) or 3
    tZ.interval = math.max(0.5, AQ)
end
local function fn1114()
    local zp = tV()
    if not zp then
        return
    end
    local zp_1 = tU()
    if #zp_1 == 0 then
        return
    end
    local zq = t5()
    local zr = t6()
    local zs = uj(t9.rarities)
    local zt = uj(t9.panels)
    local zu = tw()
    for i, v in ipairs(zp_1) do
        local zp_2 = not tF() or t9.stopped
        if zp_2 then
            return
        end
        local zv = zq and zq[v.name] or nil
        local zv_3
        local zp_4 = zv
        if zv then
            zv = zp_4.Rarity
        end
        local zp_5 = zv or nil
        local zv_1 = true
        local zw_1
        if zt > 0 or zs > 0 then
            zv_1 = false
            if zt > 0 and t9.panels[v.name] then
                zv_1 = true
            end
            if zs > 0 and zp_5 and t9.rarities[zp_5] then
                zv_1 = true
            end
        end
        if zv_1 then
            local zp_9 = Vector2.new(4, 4)
            local zv_2 = zr and tP(zr.GetPanelData)
            if zv_2 then
                zv_3, zw_1 = pcall(zr.GetPanelData, v.name)
                local zx_1 = zv_3 and type(zw_1) == "table" and typeof(zw_1.GridSize) == "Vector2"
                if zx_1 then
                    zp_9 = zw_1.GridSize
                end
            end
            local zv_4 = v.quantity
            local zw_2 = false
            for k, v2 in pairs(zu) do
                local zx_2 = zv_4 <= 0 or not tF() or t9.stopped
                if zx_2 then
                    break
                end
                for i, v2 in ipairs(tW(v2, zp_9.X, zp_9.Y)) do
                    if zv_4 <= 0 then
                        break
                    elseif tG("ItemEvent", "Panel", v.uuid, k, v2) then
                        zv_4 -= 1
                        zw_2 = true
                        tJ("Placed " .. v.name)
                        task.wait(0.4)
                    end
                end
            end
            local zp_10 = not zw_2
            if zp_10 ~= false then
                zp_10 = zv_4 > 0
            end
            if zp_10 then
                tJ("No free grid space for " .. v.name)
            end
        end
    end
end
tr = nil
ts = nil
tt = nil
tu = nil
tv = nil
tw = nil
tx = nil
ty = nil
tz = nil
LocalPlayer = nil
tB = nil
tC = nil
tD = nil
tE = nil
tF = nil
tG = nil
tJ = nil
tK = nil
tM = nil
tN = nil
tO = nil
tP = nil
tR = nil
tS = nil
tT = nil
tU = nil
tV = nil
tW = nil
tX = nil
CoreGui = nil
tZ = nil
t1 = nil
t2 = nil
t4 = nil
t5 = nil
t6 = nil
t7 = nil
t9 = nil
ua = nil
ub = nil
uc = nil
local Players, Workspace, tI, Lighting, TeleportService, t_, t0, GuiService, HttpService
ud = nil
uf = nil
ug = nil
ui = nil
uj = nil
State = nil
ul = nil
un = nil
uo = nil
up = nil
ut = nil
uu = nil
uw = nil
ux = nil
uy = nil
uz = nil
uA = nil
uB = nil
uC = nil
uD = nil
uE = nil
uF = nil
uG = nil
local ue, VirtualUser, UserInputService, uq, ur, RunService, uv
local uH_1
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, Workspace, LocalPlayer, uC = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local uI = "OuroborosBuildASolarFarm"
uC = fn549
if getgenv then
    getgenv().gethui = uC
end
uf, tu, uA, uv, uo, State, ud, ua, ty, t_, tv, uB, uw, tx, uE, tz, tr, uy, uu, un, ui, t9, t4, tZ, tI, tP, tF, ub, tJ, uG, ur, tG, t6, t5, uq, tV, uz, t0, tB, t2, t1, ts, tw, tK, tU, tW, up, ut, ux, tt, tT, tC, tX, uc, tR, tO, tE, uj, tS, uF, t7, tM, uD, ul, tD, ug, tN, ue, uH_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fn40)
local function uM(t)
    local vb
    local u9
    local va
    u9 = nil
    va = nil
    vb = nil
    local vc = t ~= ""
    local vd = type(t) == "string" and vc
    assert(vd, "A namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    u9 = getgenv()
    assert(type(u9) == "table", "getgenv did not return a table")
    local vc_1 = u9[t]
    if vc_1 ~= nil then
        local vd_1 = type(vc_1) == "table" and type(vc_1.Unload) == "function"
        assert(vd_1, "Namespace is occupied")
        vc_1.Unload()
        assert(u9[t] == nil, "Previous instance did not release its namespace")
    end
    va = {}
    vb = { State = {}, Unloaded = false }
    vb.Track = function(B)
        assert(type(B) == "function", "Cleanup must be callable")
        if vb.Unloaded then
            B()
        else
            table.insert(va, B)
        end
        return B
    end
    vb.Unload = function()
        local u2_1
        local u1_1
        if vb.Unloaded then
            return
        end
        vb.Unloaded = true
        local u_ = {}
        local u6 = #va
        local u5 = -1
        while false and u6 <= 1 or true and u6 >= 1 do
            local u7 = u6
            local u0_1 = table.remove(va, u7)
            u1_1, u2_1 = pcall(u0_1)
            if not u1_1 then
                table.insert(u_, tostring(u2_1))
            end
            u6 += u5
        end
        table.clear(vb.State)
        if #u_ > 0 then
            error("Cleanup incomplete: " .. table.concat(u_, "; "), 0)
        end
        if u9[t] == vb then
            u9[t] = nil
        end
    end
    u9[t] = vb
    return vb
end
if (tP and un and (not un and not un) and (not un and uH_1 and (tP and t7)) or not t7 and false and (not tP or un) and (not tP and not t7 or (uH_1 or not t7))) and (un and uH_1 and (not un or un) and (false or not un or (t7 or false)) or (uH_1 and not tP and (false and not un) or (false or tP or (t7 or t7)))) or not ((tP and un and (not un and not un) and (not un and uH_1 and (tP and t7)) or not t7 and false and (not tP or un) and (not tP and not t7 or (uH_1 or not t7))) and (un and uH_1 and (not un or un) and (false or not un or (t7 or false)) or (uH_1 and not tP and (false and not un) or (false or tP or (t7 or t7))))) then
    tI = function(O, P)
        local vg = type(O) == "table" and type(O.Track) == "function"
        assert(vg, "FeatureAPI required")
        local vg_2 = type(P) == "table" and type(P.OnUnload) == "function"
        assert(vg_2, "UI library required")
        assert(type(P.Unload) == "function", "UI unload required")
        O.Track(function()
            if not P.Unloaded then
                P:Unload()
            end
        end)
        P:OnUnload(function()
            O.Unload()
        end)
    end
else
    t0 = function(O, P)
        local vg = type(O) == "table" and type(O.Track) == "function"
        assert(vg, "FeatureAPI required")
        local vg_1 = type(P) == "table" and type(P.OnUnload) == "function"
        assert(vg_1, "UI library required")
        assert(type(P.Unload) == "function", "UI unload required")
        O.Track(function()
            if not P.Unloaded then
                P:Unload()
            end
        end)
        P:OnUnload(function()
            O.Unload()
        end)
    end
end
uf = uM(uI)
tP = fn396
tF = fn96
tu = fn49(ReplicatedStorage)
uA = fn49(Workspace)
uv = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic", "Exclusive" }
uo = 86400
State = uf.State
State.Notifications = {}
State.Status = "Idle"
ub = fn814
tJ = fn717
uG = fn387
ur = fn406
tG = function(aA, ...)
    local vw
    local vv
    vv = nil
    vw = nil
    vw = ur(aA, "RemoteEvent")
    if not vw then
        return false
    end
    vv = table.pack(...)
    return (pcall(function()
        vw.FireServer(vw, table.unpack(vv, 1, vv.n))
    end))
end
ud = nil
t6 = fn611
ua = nil
t5 = fn315
uq = fn1041
tV = fn555
uz = fn497
t0 = fn489
tB = function(bn, bo)
    local we
    local wd
    wd = nil
    we = nil
    if typeof(bn) ~= "Vector3" then
        return false
    end
    we = t0()
    if not we then
        return false
    end
    local wg = bo or 5
    wd = bn + Vector3.new(0, wg, 0)
    return (pcall(function()
        we.CFrame = CFrame.new(wd)
        we.AssemblyLinearVelocity = Vector3.zero
    end))
end
t2 = fn641
t1 = fn352
ty = nil
ts = fn492
tw = fn758
tK = fn1072
t_ = OverlapParams.new()
t_.FilterType = Enum.RaycastFilterType.Include
tU = function()
    local ck
    ck = {}
    local function cl(cm)
        if not cm then
            return
        end
        for i, child in ipairs(cm:GetChildren()) do
            local w2 = (child:IsA("Tool")) and child:GetAttribute("ItemType") == "Panel"
            if w2 then
                local attr2 = child:GetAttribute("UUID")
                local attr = child:GetAttribute("ItemName")
                local w4 = type(attr2) == "string" and type(attr) == "string"
                if w4 then
                    local insert = table.insert
                    local w5 = (tonumber(child:GetAttribute("Quantity"))) or 1
                    insert(ck, { uuid = attr2, name = attr, quantity = w5 })
                end
            end
        end
    end
    cl(LocalPlayer:FindFirstChildOfClass("Backpack"))
    cl(LocalPlayer.Character)
    return ck
end
tW = function(cw, cx, cy)
    local xk_1
    local Base = cw:FindFirstChild("Base")
    local xf = tV()
    local xg = xf and xf:FindFirstChild("PlacedObjects")
    local xf_1 = not Base
    if not xf_1 then
        xf_1 = not Base:IsA("BasePart")
    end
    if xf_1 or not xg then
        return {}
    end
    t_.FilterDescendantsInstances = { xg }
    local xf_2 = math.floor(Base.Size.X / cx)
    local xg_2 = math.floor(Base.Size.Z / cy)
    local xh_1 = Base.Position.Y + Base.Size.Y * 0.5 + 0.1
    local xi_1 = {}
    local xj = xf_2 - 1
    local xj_2
    local xp = 0
    while xp <= xj do
        local xq = xp
        local xf_3 = xg_2 - 1
        for i = 0, xf_3 do
            local xd
            local xf_4 = Base.Position.X - Base.Size.X * 0.5 + cx * (xq + 0.5)
            local xj_1 = Base.Position.Z - Base.Size.Z * 0.5 + cy * (i + 0.5)
            xd = CFrame.new(xf_4, xh_1, xj_1)
            local xf_5 = false
            xj_2, xk_1 = pcall(function()
                return uA:GetPartBoundsInBox(xd, Vector3.new(cx - 0.4, 6, cy - 0.4), t_)
            end)
            local xl = xj_2 and type(xk_1) == "table" and #xk_1 > 0
            if xl then
                xf_5 = true
            end
            if not xf_5 then
                table.insert(xi_1, xd)
            end
        end
        xp += 1
    end
    return xi_1
end
tv = "SellUpgrades"
uB = "EnergyConverted"
uw = nil
up = fn601
ut = fn48
tx = nil
uE = 0
ux = fn37
tt = fn118
tT = fn763
tC = fn538
tX = fn110
uc = fn299
tz = { interval = 3 }
tr = { interval = 1.5, rarities = {}, panels = {}, unblock = false, maxCost = 0 }
uy = { interval = 2 }
uu = { interval = 2 }
un = { interval = 5 }
ui = { interval = 60 }
t9 = { interval = 2, rarities = {}, panels = {} }
t4 = { interval = 5, maxCost = 0 }
tZ = { interval = 3, maxLevel = 0 }
tR = function(eg, eh)
    local generation
    eg.generation = (eg.generation or 0) + 1
    eg.stopped = false
    generation = eg.generation
    task.spawn(function()
        local ys_1
        while true do
            local yr = (tF()) and not eg.stopped and eg.generation == generation
            local yr_1
            if yr then
                yr_1, ys_1 = pcall(eh)
                if not yr_1 then
                    warn("[Ouroboros] loop error: " .. tostring(ys_1))
                end
                local yr_2 = not tF() or eg.stopped or eg.generation ~= generation
                if yr_2 then
                    break
                end
                task.wait(eg.interval)
                continue
            end
            break
        end
    end)
end
tO = fn584
tE = fn80
uj = fn1045
tS = fn1025
uF = fn1073
t7 = fn175
tM = fn557
uD = fn283
ul = fn681
if (not tO or not uj) and (tP or t5) and (not t5 and not t5 and (not uj or tO)) or not ((not tO or not uj) and (tP or t5) and (not t5 and not t5 and (not uj or tO))) then
    tD = fn1114
    ug = fn290
    tN = fn22
    ue = fn906
else
    ue = fn1114
    tN = fn290
    tD = fn22
    ug = fn906
end
tz.SetEnabled = fn494
tz.SetDelay = fn281
tr.SetEnabled = fn604
tr.SetDelay = fn71
tr.SetRarities = fn910
tr.SetPanels = fn1028
tr.SetUnblock = fn1010
tr.SetMaxCost = fn608
uy.SetEnabled = fn339
uy.SetDelay = fn524
uu.SetEnabled = fn658
uu.SetDelay = fn236
un.SetEnabled = fn1065
un.SetDelay = fn247
ui.SetEnabled = fn260
t9.SetEnabled = fn686
t9.SetDelay = fn909
t9.SetRarities = fn479
t9.SetPanels = fn618
t4.SetEnabled = fn113
t4.SetDelay = fn676
t4.SetMaxCost = fn694
tZ.SetEnabled = fn388
tZ.SetDelay = fn1108
tZ.SetMaxLevel = fn294
uf.Track(fn123)
local function uH_2()
    local AV
    AV = false
    task.spawn(function()
        pcall(t5)
        pcall(ts)
        pcall(up)
        AV = true
    end)
    local AW = os.clock() + 5
    while true do
        local AX = not AV and os.clock() < AW
        if AX then
            task.wait(0.05)
            continue
        end
        break
    end
end
local function uK()
    local Fp
    local onDiscord
    local Fs
    Fp = nil
    Fs = nil
    onDiscord = nil
    local Fo, ThemeManager, Options, SaveManager, Fv, Fw, Fx, Library, Toggles, FA
    Fs = "https://discord.gg/synapsex"
    Fw = "https://rscripts.net/@Ouroboros"
    Fo = "https://ouroboros-hub-rbx.web.app/"
    Fv = "Build A Solar Farm"
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = Library.Toggles
    Options = Library.Options
    tI(uf, Library)
    Fx = uq()
    Fp = function(iB, iC)
        local AZ = (tP(setclipboard)) and setclipboard
        local A_ = AZ
        if not A_ then
            local AZ_1 = (tP(toclipboard)) and toclipboard
            A_ = AZ_1 or nil
        end
        local AZ_2 = A_
        if not AZ_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local A__1 = pcall(AZ_2, iB)
        if A__1 then
            Library:Notify(iC)
        else
            Library:Notify("Failed to copy")
        end
    end
    onDiscord = function()
        Fp(Fs, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = Fs, Copyable = true }, "|", Fv, "|", "v0.3" },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    FA = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "gamepad-2"),
        Player = Window:AddTab("Player", "person-standing"),
        Settings = Window:AddTab("Settings", "settings")
    }
    local function FB_1(iR)
        local DiscordGroup = iR:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    for k, v in FA do
        if k ~= "Info" then
            FB_1(v)
        end
    end
    local function FC()
        local Bm
        Bm = nil
        local Label
        local RollingGroup = FA.Main:AddLeftGroupbox("Rolling", "dices")
        Label = RollingGroup:AddLabel(State.Status, true)
        RollingGroup:AddDivider()
        RollingGroup:AddToggle("AutoRoll", {
            Text = "Auto Roll",
            Default = false,
            Tooltip = "Pulls the roll machine lever whenever a roll slot is empty.",
            Callback = function(i1)
                tz.SetEnabled(i1)
            end
        })
        RollingGroup:AddSlider("RollDelay", {
            Text = "Roll Delay",
            Default = 3,
            Min = 0.5,
            Max = 30,
            Rounding = 1,
            Suffix = "s",
            Callback = function(i5)
                tz.SetDelay(i5)
            end
        })
        RollingGroup:AddDivider("Buying")
        RollingGroup:AddToggle("AutoBuyRoll", {
            Text = "Auto Buy Rolled Panels",
            Default = false,
            Tooltip = "Buys panels sitting in your roll slots. A slot stays blocked until its panel is bought.",
            Callback = function(i7)
                tr.SetEnabled(i7)
            end
        })
        RollingGroup:AddDropdown("BuyRarities", {
            Text = "Buy Rarities",
            Values = uv,
            Default = {},
            Multi = true,
            AllowNull = true,
            Tooltip = "Leave everything unticked to accept any rarity.",
            Callback = function(jd)
                tr.SetRarities(jd)
            end
        })
        RollingGroup:AddDropdown("BuyPanels", {
            Text = "Buy Panels",
            Values = Fx,
            Default = {},
            Multi = true,
            AllowNull = true,
            Tooltip = "Specific panels to always buy. Combines with the rarity list.",
            Callback = function(jg)
                tr.SetPanels(jg)
            end
        })
        RollingGroup:AddSlider("BuyMaxCost", {
            Text = "Max Panel Cost",
            Default = 0,
            Min = 0,
            Max = 1000000,
            Rounding = 0,
            Prefix = "$",
            Tooltip = "Skips panels above this price. 0 removes the limit.",
            Callback = function(ji)
                tr.SetMaxCost(ji)
            end
        })
        RollingGroup:AddToggle("BuyUnblock", {
            Text = "Buy Unwanted To Free Slots",
            Default = false,
            Tooltip = "Buys panels that fail your filter anyway, so the roll machine does not stay blocked.",
            Callback = function(jk)
                tr.SetUnblock(jk)
            end
        })
        RollingGroup:AddSlider("BuyDelay", {
            Text = "Buy Delay",
            Default = 1.5,
            Min = 0.3,
            Max = 30,
            Rounding = 1,
            Suffix = "s",
            Callback = function(jm)
                tr.SetDelay(jm)
            end
        })
        local PlotGroup = FA.Main:AddLeftGroupbox("Plot", "layout-grid")
        PlotGroup:AddToggle("AutoPlacePanels", {
            Text = "Auto Place Panels",
            Default = false,
            Tooltip = "Drops panels from your inventory into free grid cells on the zones you own.",
            Callback = function(jp)
                t9.SetEnabled(jp)
            end
        })
        PlotGroup:AddDropdown("PlaceRarities", {
            Text = "Place Rarities",
            Values = uv,
            Default = {},
            Multi = true,
            AllowNull = true,
            Tooltip = "Leave everything unticked to place any rarity.",
            Callback = function(jt)
                t9.SetRarities(jt)
            end
        })
        PlotGroup:AddDropdown("PlacePanels", {
            Text = "Place Panels",
            Values = Fx,
            Default = {},
            Multi = true,
            AllowNull = true,
            Tooltip = "Specific panels to always place. Combines with the rarity list.",
            Callback = function(jv)
                t9.SetPanels(jv)
            end
        })
        PlotGroup:AddSlider("PlaceDelay", {
            Text = "Place Delay",
            Default = 2,
            Min = 0.5,
            Max = 30,
            Rounding = 1,
            Suffix = "s",
            Callback = function(jx)
                t9.SetDelay(jx)
            end
        })
        PlotGroup:AddDivider("Land")
        PlotGroup:AddToggle("AutoBuyPlot", {
            Text = "Auto Buy Plot",
            Default = false,
            Tooltip = "Unlocks the cheapest plot zone you can afford and reach from the land you already own.",
            Callback = function(jz)
                t4.SetEnabled(jz)
            end
        })
        PlotGroup:AddSlider("ZoneMaxCost", {
            Text = "Max Zone Cost",
            Default = 0,
            Min = 0,
            Max = 1000000000,
            Rounding = 0,
            Prefix = "$",
            Tooltip = "Skips zones above this price. 0 removes the limit.",
            Callback = function(jD)
                t4.SetMaxCost(jD)
            end
        })
        PlotGroup:AddSlider("ZoneDelay", {
            Text = "Buy Zone Delay",
            Default = 5,
            Min = 1,
            Max = 120,
            Rounding = 1,
            Suffix = "s",
            Callback = function(jF)
                t4.SetDelay(jF)
            end
        })
        local EnergyGroup = FA.Main:AddRightGroupbox("Energy", "zap")
        EnergyGroup:AddToggle("AutoCollectEnergy", {
            Text = "Auto Collect Energy",
            Default = false,
            Tooltip = "Picks up the energy your panels have generated.",
            Callback = function(jI)
                uy.SetEnabled(jI)
            end
        })
        EnergyGroup:AddSlider("CollectDelay", {
            Text = "Collect Delay",
            Default = 2,
            Min = 0.5,
            Max = 60,
            Rounding = 1,
            Suffix = "s",
            Callback = function(jM)
                uy.SetDelay(jM)
            end
        })
        EnergyGroup:AddToggle("AutoDepositEnergy", {
            Text = "Auto Deposit Energy",
            Default = false,
            Tooltip = "Drops carried energy into the processing board.",
            Callback = function(jO)
                uu.SetEnabled(jO)
            end
        })
        EnergyGroup:AddSlider("DepositDelay", {
            Text = "Deposit Delay",
            Default = 2,
            Min = 0.5,
            Max = 60,
            Rounding = 1,
            Suffix = "s",
            Callback = function(jS)
                uu.SetDelay(jS)
            end
        })
        EnergyGroup:AddToggle("AutoCollectCash", {
            Text = "Auto Collect Cash",
            Default = false,
            Tooltip = "Takes the cash the processing board has finished converting.",
            Callback = function(jU)
                un.SetEnabled(jU)
            end
        })
        EnergyGroup:AddSlider("CashDelay", {
            Text = "Collect Cash Delay",
            Default = 5,
            Min = 1,
            Max = 120,
            Rounding = 1,
            Suffix = "s",
            Callback = function(jY)
                un.SetDelay(jY)
            end
        })
        EnergyGroup:AddDivider("Generator")
        EnergyGroup:AddToggle("AutoUpgradeGenerator", {
            Text = "Auto Upgrade Generator",
            Default = false,
            Tooltip = "Buys the processing board's energy conversion upgrade whenever you can afford the next level.",
            Callback = function(j_)
                tZ.SetEnabled(j_)
            end
        })
        local Bo = (ut()) or 80
        EnergyGroup:AddSlider("GeneratorMaxLevel", {
            Text = "Stop At Level",
            Default = 0,
            Min = 0,
            Max = Bo,
            Rounding = 0,
            Tooltip = "Stops upgrading once the generator reaches this level. 0 runs to the game's maximum.",
            Callback = function(j5)
                tZ.SetMaxLevel(j5)
            end
        })
        EnergyGroup:AddSlider("GeneratorDelay", {
            Text = "Upgrade Delay",
            Default = 3,
            Min = 0.5,
            Max = 60,
            Rounding = 1,
            Suffix = "s",
            Callback = function(j7)
                tZ.SetDelay(j7)
            end
        })
        local RewardsGroup = FA.Main:AddRightGroupbox("Rewards", "gift")
        RewardsGroup:AddToggle("AutoDaily", {
            Text = "Auto Claim Daily Rewards",
            Default = false,
            Tooltip = "Claims the daily reward as soon as its 24 hour timer is up.",
            Callback = function(ka)
                ui.SetEnabled(ka)
            end
        })
        local TeleportGroup = FA.Main:AddRightGroupbox("Teleport", "map-pin")
        TeleportGroup:AddButton({ Text = "Teleport To Base", Func = ue })
        Bm = task.spawn(function()
            while not Library.Unloaded do
                pcall(function()
                    local A2 = t2()
                    local A3 = 0
                    for i, v in ipairs(A2) do
                        if v.panel then
                            A3 += 1
                        end
                    end
                    local A4 = string.format("Cash $%d  |  Slots %d/%d", tt(), A3, #A2)
                    Label:SetText(A4 .. "  |  " .. tostring(State.Status))
                end)
                local Bg = false
                repeat
                    local Bc
                    if State.Notifications and #State.Notifications > 0 then
                        Bc = table.remove(State.Notifications, 1)
                        pcall(function()
                            Library:Notify(Bc.text, Bc.time)
                        end)
                    else
                        Bg = true
                    end
                until Bg
                task.wait(0.3)
            end
        end)
        uf.Track(function()
            local Bk = if coroutine.status(Bm) ~= "dead" then 1 else 0
            if Bk == 1 then
                pcall(task.cancel, Bm)
            end
        end)
    end
    FC()
    local function FB_2()
        local BH
        local BG
        local BC
        local BN
        BC = nil
        BG = nil
        BH = nil
        BN = nil
        local BD, Label, BF, BI, BJ, BK, Label2, Label3, BO
        BH = function(kK)
            return (tostring(kK):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        BC = function(kM, kN)
            return string.format('<font color="%s">%s</font>', kN, BH(kM))
        end
        BJ = function(kQ, kR, kS)
            return string.format("<b>%s</b> %s %s", kQ, BC("-", "#5a6070"), BC(kR, kS))
        end
        local BP = "#8b93a3"
        local BQ = {}
        BO = "#e8a34d"
        BF = "#7fd47f"
        local BR = "#6ec1ff"
        if not ur("RollEvent", "RemoteEvent") then
            table.insert(BQ, "rolling")
        end
        if not ur("InteractionEvent", "RemoteEvent") then
            table.insert(BQ, "energy")
        end
        if not ur("ClaimDailyReward", "RemoteEvent") then
            table.insert(BQ, "daily rewards")
        end
        if not ur("ItemEvent", "RemoteEvent") then
            table.insert(BQ, "placing panels")
        end
        local BS = not ur("ZoneEvent", "RemoteEvent") or not ts()
        if BS then
            table.insert(BQ, "buying plot zones")
        end
        if not ur("UpgradeEvent", "RemoteEvent") then
            table.insert(BQ, "generator upgrades")
        end
        if not t5() then
            table.insert(BQ, "panel filters")
        end
        if not tP(getgc) then
            table.insert(BQ, "daily timing and cash checks")
        end
        local BS_1 = #BQ == 0 and "ready"
        local BT = BS_1 or "limited: " .. table.concat(BQ, ", ")
        BK = "Unknown"
        pcall(function()
            local Br_1
            local Bq_1
            if tP(identifyexecutor) then
                Br_1, Bq_1 = identifyexecutor()
                local Bs = Br_1 ~= ""
                local Bt = type(Br_1) == "string" and Bs
                if Bt then
                    local Bs_1 = type(Bq_1) == "string" and Bq_1 ~= "" and Br_1 .. " " .. Bq_1
                    BK = Bs_1 or Br_1
                end
            end
        end)
        BN = os.clock()
        BI = function()
            local Bv = math.floor(os.clock() - BN)
            if Bv < 60 then
                return Bv .. "s"
            elseif Bv < 3600 then
                return string.format("%dm %ds", Bv // 60, Bv % 60)
            else
                return string.format("%dh %dm", Bv // 3600, Bv % 3600 // 60)
            end
        end
        local UserGroup = FA.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(BJ("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, BF), true)
        UserGroup:AddLabel(BJ("UserId", tostring(LocalPlayer.UserId), BR), true)
        UserGroup:AddLabel(BJ("Executor", BK .. "  " .. BT, BF), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(BJ("Session", BI(), BO), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                Fp(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                Fp("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = FA.Info:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(BJ("Game", Fv, BR), true)
        Label2 = SessionGroup:AddLabel(BJ("Players", "0/0", BF), true)
        BD = tostring(game.JobId)
        local BR_1 = #BD > 18 and string.sub(BD, 1, 18) .. "..."
        local BS_3 = BR_1
        local BX = if BS_3 then 1 else 0
        local BV = 2772 * BX + 3648 * (1 - BX)
        local BW = 3725 * BX + 2854 * (1 - BX)
        if not ((BV * 2314 + BW * 1420 + BV * BW) % 16777213 == 5252395) then
            BS_3 = BD
        end
        local BR_2 = BS_3
        SessionGroup:AddLabel(BJ("Job", BR_2, BP), true)
        Label = SessionGroup:AddLabel(BJ("Ping", "0 ms", BO), true)
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
                Fp(BD, "Copied Job ID")
            end
        })
        BG = task.spawn(function()
            local By_1
            local Bx_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(BJ("Session", BI(), BO))
                Label2:SetText(BJ("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), BF))
                Bx_1, By_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local Bx_2 = Bx_1 and By_1 .. " ms" or "n/a"
                Label:SetText(BJ("Ping", Bx_2, BO))
            end
        end)
        uf.Track(function()
            if coroutine.status(BG) ~= "dead" then
                task.cancel(BG)
            end
        end)
        local SocialsGroup = FA.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                Fp(Fw, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                Fp(Fo, "Copied website link")
            end
        })
    end
    FB_2()
    local function FB_3()
        local ma
        local l8
        local l9
        local mb
        local MovementGroup = FA.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = FA.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        mb = {}
        l9 = {}
        l8 = {}
        local l7 = {}
        ma = {}
        local function mc()
            for k, v in l8 do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(l8)
        end
        local function mg()
            for k, v in l9 do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(l9)
        end
        local function mk()
            for k, v in ma do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(ma)
        end
        local function mo(mp)
            if not mp:IsA("ProximityPrompt") then
                return
            end
            if mb[mp] == nil then
                mb[mp] = {
                    HoldDuration = mp.HoldDuration,
                    MaxActivationDistance = mp.MaxActivationDistance,
                    RequiresLineOfSight = mp.RequiresLineOfSight
                }
            end
            mp.HoldDuration = 0
            mp.MaxActivationDistance = 50
            mp.RequiresLineOfSight = false
        end
        local function mr()
            for k, v in mb do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(mb)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                mk()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                mg()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                mc()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                    pcall(mo, v)
                end
            else
                mr()
            end
        end)
        table.insert(l7, Workspace.DescendantAdded:Connect(function(mK)
            if Toggles.InstantProximityPrompt.Value then
                mo(mK)
            end
        end))
        table.insert(l7, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if l8[v] == nil then
                        l8[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(l7, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local CO = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and CO then
                CO:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(l7, RunService.RenderStepped:Connect(function(m5)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local CR = Character and Character:FindFirstChildOfClass("Humanoid")
            local CS = Character
            if CS then
                CS = Character:FindFirstChild("HumanoidRootPart")
            end
            local CQ_1 = CS
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and CR then
                if l9[CR] == nil then
                    l9[CR] = CR.WalkSpeed
                end
                CR.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and CQ_1 and CR and CurrentCamera then
                if ma[CR] == nil then
                    ma[CR] = CR.PlatformStand
                end
                CR.PlatformStand = true
                local CS_4 = Vector3.zero
                local CY = if not UserInputService:GetFocusedTextBox() then 1 else 0
                if CY == 1 then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        CS_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        CS_4 -= CurrentCamera.CFrame.LookVector
                    end
                    local C0 = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
                    if C0 == 1 then
                        CS_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        CS_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        CS_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        CS_4 -= Vector3.new(0, 1, 0)
                    end
                end
                CQ_1.AssemblyLinearVelocity = Vector3.zero
                if CS_4.Magnitude > 0 then
                    CQ_1.CFrame = CQ_1.CFrame + CS_4.Unit * Options.FlySpeed.Value * m5
                end
            end
        end))
        uf.Track(function()
            for k, v in l7 do
                v:Disconnect()
            end
            mc()
            mg()
            mk()
            mr()
        end)
    end
    FB_3()
    local function FB_4()
        local Ea, Eb, Ec, Ed, Ee, Ef, Eg, Eh, Ei, Ej, Label, El, Em, En
        El = {}
        Ef = {}
        Ec = nil
        Eh = false
        Ed = 0
        En = 0
        Ei = os.clock()
        local MenuGroup = FA.Settings:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        Ea = function()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local C9 = not CurrentCamera or not tP(VirtualUser.CaptureController) or not tP(VirtualUser.ClickButton2)
            if C9 then
                return false
            end
            local C9_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not C9_1 then
                return false
            end
            Ed += 1
            Ei = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. Ed)
            end)
            return true
        end
        Ej = function(nP)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not nP)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not nP
                end
            end)
            if not nP then
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
        Eg = function(n4)
            if n4.ClassName == "ParticleEmitter" or n4.ClassName == "Trail" or n4.ClassName == "Smoke" or n4.ClassName == "Fire" or n4.ClassName == "Sparkles" or n4.ClassName == "Explosion" or n4.ClassName == "Beam" then
                if El[n4] == nil then
                    El[n4] = n4.Enabled
                end
                pcall(function()
                    n4.Enabled = false
                end)
            end
        end
        Ee = function()
            for k, v in El do
                local Do = k
                local Dq = v
                if Do.Parent then
                    pcall(function()
                        Do.Enabled = Dq
                    end)
                end
            end
            table.clear(El)
            if Ec then
                pcall(function()
                    settings().Rendering.QualityLevel = Ec.Quality
                end)
                Lighting.GlobalShadows = Ec.Shadows
                Lighting.FogEnd = Ec.Fog
                Ec = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(oj)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not oj)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(op)
                if op then
                    if not Ec then
                        Ec = {
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
                        pcall(Eg, v)
                    end
                else
                    Ee()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        Ej(true)
        local ScriptGroup = FA.Settings:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            Ej(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            Ej(true)
        end
        table.insert(Ef, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                Ea()
            end
        end))
        table.insert(Ef, Workspace.DescendantAdded:Connect(function(oK)
            if Toggles.FpsBoost.Value then
                Eg(oK)
            end
        end))
        Eb = function(oO)
            if Eh or Library.Unloaded or not Toggles.AutoReconnect.Value then
                return
            end
            Eh = true
            local DG = En
            local DH_1 = pcall(function()
                if oO then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not DH_1 then
                Eh = false
                if not oO and DG == En then
                    task.delay(1.5, function()
                        if DG == En then
                            Eb(true)
                        end
                    end)
                end
            end
        end
        table.insert(Ef, TeleportService.TeleportInitFailed:Connect(function(o5)
            local DO
            if o5 == LocalPlayer and Eh then
                Eh = false
                DO = En
                task.delay(3, function()
                    if DO == En then
                        Eb(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local DW = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not DW then
                return
            end
            table.insert(Ef, DW.ChildAdded:Connect(function(pk)
                if pk.Name == "ErrorPrompt" then
                    Eb(false)
                end
            end))
        end)
        Em = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    Ej(true)
                end
                local D1 = Toggles.AntiAfk.Value and os.clock() - Ei >= 60
                if D1 then
                    Ea()
                end
                task.wait(1)
            end
        end)
        uf.Track(function()
            En += 1
            for k, v in Ef do
                v:Disconnect()
            end
            pcall(task.cancel, Em)
            Ej(false)
            Ee()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    FB_4()
    local function FB_5()
        local Ff, Fg, Fh, Fi
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("OuroborosHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(FA.Settings)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/BuildASolarFarm")
        local Fj = SaveManager:BuildConfigSection(FA.Settings)
        Fi = function(pL, pM)
            local Er_1 = (pL == "Toggle" and Toggles or Options)[pM]
            local Eq_2 = type(Er_1) == "table" and Er_1.Type == pL
            return Eq_2 and Er_1 or nil
        end
        Fg = function(pV, pW)
            local Type = pW.Type
            if Type == "Toggle" then
                return { idx = pV, type = "Toggle", value = pW.Value == true }
            elseif Type == "Slider" then
                return { idx = pV, type = "Slider", value = tostring(pW.Value) }
            elseif Type == "Dropdown" then
                return { idx = pV, type = "Dropdown", multi = pW.Multi == true, value = pW.Value }
            elseif Type == "Input" then
                local Ey = pW.Value or ""
                return { idx = pV, type = "Input", text = tostring(Ey) }
            elseif Type == "ColorPicker" then
                return { idx = pV, type = "ColorPicker", value = pW.Value:ToHex(), transparency = pW.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = pV,
                    type = "KeyPicker",
                    mode = pW.Mode,
                    key = pW.Value,
                    modifiers = pW.Modifiers,
                    toggled = pW.Toggled
                }
            else
                return nil
            end
        end
        Ff = function()
            local EB = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local EC = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if EC then
                        local EC_1 = Fg(k, v)
                        if EC_1 then
                            EB[#EB + 1] = EC_1
                        end
                    end
                end
            end
            table.sort(EB, function(p5, p6)
                if p5.type ~= p6.type then
                    return p5.type < p6.type
                end
                return p5.idx < p6.idx
            end)
            return { objects = EB }
        end
        Fh = function(p8)
            local EV
            EV = nil
            local EW = type(p8) ~= "table" or type(p8.idx) ~= "string" or type(p8.type) ~= "string" or SaveManager.Ignore[p8.idx]
            if EW then
                return false
            end
            EV = Fi(p8.type, p8.idx)
            if not EV then
                return false
            end
            local EW_1 = pcall(function()
                if p8.type == "Input" then
                    if type(p8.text) ~= "string" then
                        return
                    end
                    EV:SetValue(p8.text)
                elseif p8.type == "ColorPicker" then
                    EV:SetValueRGB(Color3.fromHex(p8.value), p8.transparency)
                elseif p8.type == "KeyPicker" then
                    EV:SetValue({ p8.key, p8.mode, p8.modifiers })
                    if p8.mode == "Toggle" and p8.toggled ~= nil then
                        EV.Toggled = p8.toggled
                        EV:Update()
                    end
                else
                    EV:SetValue(p8.value)
                end
            end)
            return EW_1
        end
        Fj:AddDivider()
        Fj:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        Fj:AddButton("Export Config to Clipboard", function()
            local EZ_1
            local EY_1
            EY_1, EZ_1 = pcall(HttpService.JSONEncode, HttpService, Ff())
            if EY_1 then
                local EY_2 = (tP(setclipboard)) and setclipboard
                local E_ = EY_2
                if not E_ then
                    local EY_3 = (tP(toclipboard)) and toclipboard
                    E_ = EY_3 or nil
                end
                local EY_4 = E_
                local E__1 = type(EY_4) == "function" and pcall(EY_4, EZ_1)
                if E__1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        Fj:AddButton("Import Config from Clipboard Text", function()
            local E7_1
            local E5 = Options.SaveManager_ImportSource.Value or ""
            local E5_1
            local E6 = tostring(E5):match("^%s*(.-)%s*$")
            if E6 == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #E6 > 262144 then
                Library:Notify("That config is too large")
                return
            end
            E5_1, E7_1 = pcall(HttpService.JSONDecode, HttpService, E6)
            local E6_1 = not E5_1 or type(E7_1) ~= "table" or type(E7_1.objects) ~= "table"
            if E6_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #E7_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local E5_2 = 0
            for i, v in ipairs(E7_1.objects) do
                if Fh(v) then
                    E5_2 += 1
                end
            end
            if E5_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local E7_2 = E5_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(E5_2, E7_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        if Options.RollDelay then
            tz.SetDelay(Options.RollDelay.Value)
        end
        if Options.BuyDelay then
            tr.SetDelay(Options.BuyDelay.Value)
        end
        if Options.BuyRarities then
            tr.SetRarities(Options.BuyRarities.Value)
        end
        if Options.BuyPanels then
            tr.SetPanels(Options.BuyPanels.Value)
        end
        if Options.BuyMaxCost then
            tr.SetMaxCost(Options.BuyMaxCost.Value)
        end
        if Toggles.BuyUnblock then
            tr.SetUnblock(Toggles.BuyUnblock.Value)
        end
        if Options.PlaceDelay then
            t9.SetDelay(Options.PlaceDelay.Value)
        end
        if Options.PlaceRarities then
            t9.SetRarities(Options.PlaceRarities.Value)
        end
        if Options.PlacePanels then
            t9.SetPanels(Options.PlacePanels.Value)
        end
        if Options.ZoneMaxCost then
            t4.SetMaxCost(Options.ZoneMaxCost.Value)
        end
        if Options.ZoneDelay then
            t4.SetDelay(Options.ZoneDelay.Value)
        end
        if Options.CollectDelay then
            uy.SetDelay(Options.CollectDelay.Value)
        end
        if Options.DepositDelay then
            uu.SetDelay(Options.DepositDelay.Value)
        end
        if Options.GeneratorDelay then
            tZ.SetDelay(Options.GeneratorDelay.Value)
        end
        if Options.GeneratorMaxLevel then
            tZ.SetMaxLevel(Options.GeneratorMaxLevel.Value)
        end
        if Options.CashDelay then
            un.SetDelay(Options.CashDelay.Value)
        end
        if Toggles.AutoRoll then
            tz.SetEnabled(Toggles.AutoRoll.Value)
        end
        if Toggles.AutoBuyRoll then
            tr.SetEnabled(Toggles.AutoBuyRoll.Value)
        end
        if Toggles.AutoPlacePanels then
            t9.SetEnabled(Toggles.AutoPlacePanels.Value)
        end
        if Toggles.AutoBuyPlot then
            t4.SetEnabled(Toggles.AutoBuyPlot.Value)
        end
        if Toggles.AutoCollectEnergy then
            uy.SetEnabled(Toggles.AutoCollectEnergy.Value)
        end
        if Toggles.AutoDepositEnergy then
            uu.SetEnabled(Toggles.AutoDepositEnergy.Value)
        end
        if Toggles.AutoCollectCash then
            un.SetEnabled(Toggles.AutoCollectCash.Value)
        end
        if Toggles.AutoUpgradeGenerator then
            tZ.SetEnabled(Toggles.AutoUpgradeGenerator.Value)
        end
        if Toggles.AutoDaily then
            ui.SetEnabled(Toggles.AutoDaily.Value)
        end
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    FB_5()
end
if (tB or false) and (not tM and not tM) and ((tB or tB) and (tB and tw)) or (not tw and false and (not tX or not tw) or tX and false and "SellUpgrades") or not ((tB or false) and (not tM and not tM) and ((tB or tB) and (tB and tw)) or (not tw and false and (not tX or not tw) or tX and false and "SellUpgrades")) then
    uH_2()
    uK()
else
    uK()
    uH_2()
end
