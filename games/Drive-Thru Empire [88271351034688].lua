local rJ
local sq
local r4
local r7
local rM
local sa
local sw
local rP
local sd
local sz
local sC
local rY
local sF
local sj
local sm
local sI
local rI
local sp
local r0
local State
local rL
local ss
local LocalPlayer
local r3
local rR
local sc
local sf
local sB
local rU
local si
local r_
local sH
local sl
local so
local r2
local rK
local CoreGui
local sr
local rN
local r8
local su
local rQ
local sx
local sb
local se
local rW
local sD
local sh
local rZ
local sG
local sk
local function fn14()
    local vV = sa("Configurations", "GarageConfig")
    local vW = vV and vV.UnlockCosts
    local vW_1 = type(vW) == "table" and #vW > 0
    if vW_1 then
        return #vW
    end
    return 6
end
local function fn17()
    return not sl.Unloaded
end
local function fn41()
    local Backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
    local vE = {}
    if Backpack then
        for i, child in ipairs(Backpack:GetChildren()) do
            local vD_1 = child:IsA("Tool") and child:GetAttribute("CarName")
            if vD_1 then
                table.insert(vE, child)
            end
        end
    end
    table.sort(vE, function(dN, dO)
        return rU(dN:GetAttribute("CarName"), dN:GetAttribute("Mutation")) > rU(dO:GetAttribute("CarName"), dO:GetAttribute("Mutation"))
    end)
    return vE
end
local function fn49()
    if sF.enabled then
        sh(sF, sF.Step)
    else
        se(sF)
    end
end
local function fn94(b2)
    local ut = r7(b2)
    local uu = ut and tonumber(ut.Price)
    local ut_1 = uu
    local uy = if ut_1 then 1 else 0
    local uw = 1500 * uy + 3812 * (1 - uy)
    local ux = 1290 * uy + 1983 * (1 - uy)
    if not ((uw * 2595 + ux * 3227 + uw * ux) % 16777213 == 9990330) then
        ut_1 = 0
    end
    return ut_1
end
local function fn102(eA)
    local we = (tonumber(eA))
    local wi = if we then 1 else 0
    local wg = 2620 * wi + 1411 * (1 - wi)
    local wh = 2036 * wi + 3105 * (1 - wi)
    if not ((wg * 2071 + wh * 3155 + wg * wh) % 16777213 == 406707) then
        we = 1
    end
    rI.interval = math.max(0.2, we)
end
local function fn167(fX)
    local xj = {}
    if type(fX) == "table" then
        for k, v in pairs(fX) do
            if v == true then
                xj[tostring(k)] = true
            end
        end
    end
    return xj
end
local function fn213()
    if coroutine.status(sx) == "suspended" then
        pcall(task.cancel, sx)
    end
end
local function fn246(bX, bY)
    local uq = r7(bX)
    if not uq then
        return 0
    end
    local ur = tonumber(uq.Income) or 0
    return ur * su(bY)
end
local function fn284(eo)
    eo.stopped = true
    local v6 = eo.generation or 0
    eo.generation = v6 + 1
end
local function fn298()
    local x1_1, x1_3
    local x0_1, x0_3
    x0_1, x1_1 = sp("RebirthState")
    local x2 = not x0_1 or type(x1_1) ~= "table"
    local x2_2
    if x2 then
        return
    end
    local x0_2 = tonumber(x1_1.NextCost)
    if not x0_2 then
        sI("Rebirths are maxed")
        return
    end
    local x2_1 = tonumber(x1_1.Cash) or ss()
    if x2_1 < x0_2 then
        return
    end
    x1_3, x0_3, x2_2 = sp("RebirthPurchase")
    if x1_3 and x0_3 then
        r4("Rebirthed")
        sI("Rebirthed")
    else
        if x1_3 and x2_2 then
            sI("Rebirth: " .. tostring(x2_2))
        end
    end
end
local function fn309()
    for i, v in ipairs(sf) do
        v:Disconnect()
    end
    table.clear(sf)
end
local function onOnClientEvent2(hd, he)
    local yq = hd and type(he) == "string"
    if yq then
        for k, v in pairs(State.RollResults) do
            if v.carName == he then
                State.RollResults[k] = nil
                break
            end
        end
    end
end
local function fn334(cL)
    local uX = sm()
    local uY = uX and uX:FindFirstChild("Base")
    local uX_1 = uY
    if uY then
        uY = uX_1:FindFirstChildWhichIsA("ProximityPrompt", true)
    end
    local uX_2 = uY
    if cL and uX_2 then
        rL(uX_2.Parent)
    end
    return r_(uX_2)
end
local function fn429(aH)
    local Network = rK:FindFirstChild("Network")
    local tE = Network and Network:FindFirstChild("RemoteEvents")
    local tD_1 = tE
    if tE then
        tE = tD_1:FindFirstChild(aH)
    end
    local tD_2 = tE
    if tE then
        tE = tD_2:IsA("RemoteEvent")
    end
    if tE then
        return tD_2
    end
    return nil
end
local function fn452(fw)
    local filters = sB.filters
    local wZ = next(filters.Rarities) ~= nil and not filters.Rarities[tostring(fw.rarity)]
    if wZ then
        return false
    end
    local wZ_1 = next(filters.Mutations) ~= nil
    if wZ_1 then
        local w__1 = filters.Mutations
        local w0 = fw.mutation or "Normal"
        wZ_1 = not w__1[tostring(w0)]
    end
    if wZ_1 then
        return false
    end
    local wZ_2 = rU(fw.carName, fw.mutation)
    local w__2 = filters.MinIncome
    local w4 = if w__2 then 1 else 0
    local w2 = 3370 * w4 + 884 * (1 - w4)
    local w3 = 1766 * w4 + 820 * (1 - w4)
    if not ((w2 * 311 + w3 * 3082 + w2 * w3) % 16777213 == 12442302) then
        w__2 = 0
    end
    if wZ_2 < w__2 then
        return false
    end
    return true
end
local function fn457()
    local xQ_1
    if next(sw.targets) == nil then
        return
    end
    for i, v in ipairs(sq) do
        local xP = not rQ() or sw.stopped
        local xP_1
        if xP then
            return
        end
        if sw.targets[v] then
            xP_1, xQ_1 = sz(v)
            if xP_1 then
                sI("Upgraded " .. v)
            else
                if xQ_1 ~= "" and xQ_1 ~= "Not enough cash" and xQ_1 ~= "Max level" then
                    sI(v .. ": " .. xQ_1)
                end
            end
            task.wait(0.25)
        end
    end
end
local function fn482(cw)
    local uN = not cw or not cw:IsA("ProximityPrompt") or not cw.Enabled
    if uN then
        return false
    elseif not rZ(fireproximityprompt) then
        return false
    else
        return (pcall(fireproximityprompt, cw))
    end
end
local function fn497(bQ)
    local uj = sa("Utilities", "Mutations")
    local uk = uj and uj[bQ or "Normal"]
    local uk_1 = type(uk) == "table" and tonumber(uk.IncomeMult)
    if uk_1 then
        return tonumber(uk.IncomeMult)
    end
    return 1
end
local function fn519(fg)
    sF.replace = fg == true
end
local function fn527(c4, c5)
    local u8 = sm()
    local u9 = u8 and u8:FindFirstChild("RngSpawnPoints")
    local u8_1 = u9
    if u9 then
        u9 = u8_1:FindFirstChild(tostring(c4))
    end
    local u8_2 = u9
    if u9 then
        u9 = u8_2:FindFirstChild("RNGSpawnPoint")
    end
    local u8_3 = u9
    if u9 then
        u9 = u8_3:FindFirstChildWhichIsA("ProximityPrompt", true)
    end
    local u8_4 = u9
    if c5 and u8_4 then
        rL(u8_4.Parent)
    end
    return r_(u8_4)
end
local function fn540(fi)
    sF.teleport = fi == true
end
local function fn566(aj, ak)
    if not rQ() then
        return
    end
    local Notifications = State.Notifications
    local to = tostring(aj)
    local tp = ak or 5
    table.insert(Notifications, { text = to, time = tp })
    if #State.Notifications > 12 then
        table.remove(State.Notifications, 1)
    end
end
local function fn590()
    local uD = State.PlotNumber or rY()
    if type(uD) ~= "number" then
        return nil
    end
    local Worlds = sG:FindFirstChild("Worlds")
    local uF = Worlds and Worlds:FindFirstChild(rN())
    local uD_2 = uF
    if uF then
        uF = uD_2:FindFirstChild("Plots")
    end
    local uD_3 = uF
    if uF then
        uF = uD_3:FindFirstChild(tostring(uD))
    end
    local uD_4 = uF
    local uE_1 = uD_4 and uD_4:FindFirstChild("Contents")
    local uD_5 = uE_1
    local uJ = if uD_5 then 1 else 0
    local uH = 3665 * uJ + 3436 * (1 - uJ)
    local uI = 2534 * uJ + 235 * (1 - uJ)
    if not ((uH * 134 + uI * 567 + uH * uI) % 16777213 == 11214998) then
        uD_5 = nil
    end
    return uD_5
end
local function fn612(dC)
    local vA_1
    local vz_1
    vz_1, vA_1 = sp("TunnelUnequip", dC)
    local vB = vz_1 and type(vA_1) == "table" and vA_1.success == true
    return vB
end
local function onOnClientEvent3(hk)
    if type(hk) == "number" then
        State.PlotNumber = hk
    end
end
local function fn628(gC)
    if gC then
        sh(sw, sw.Step)
    else
        se(sw)
    end
end
local function fn647(gG)
    sw.targets = sD(gG)
end
local function worker()
    while rQ() do
        pcall(rY)
        pcall(r2)
        task.wait(10)
    end
end
local function fn719(fe)
    sF.enabled = fe == true
    sF.Refresh()
end
local function fn725(f6)
    local filters = sB.filters
    local xt = (tonumber(f6))
    local xx = if xt then 1 else 0
    local xv = 3756 * xx + 922 * (1 - xx)
    local xw = 1327 * xx + 920 * (1 - xx)
    if not ((xv * 2177 + xw * 1565 + xv * xw) % 16777213 == 15237779) then
        xt = 0
    end
    filters.MinIncome = math.max(0, xt)
end
local function fn742()
    se(rI)
    se(sF)
    se(sB)
    se(sw)
    se(so)
end
local function fn775()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local ts = leaderstats and leaderstats:FindFirstChild("Cash")
    local tr_1 = ts
    if ts then
        ts = tonumber(tr_1.Value)
    end
    return ts or 0
end
local function fn779(dn)
    local vo_1
    local vn_1
    local vm_1
    vn_1, vm_1, vo_1 = nil, nil, nil
    for i, v in ipairs(dn.Cars) do
        local vp_1 = type(v) == "table" and v.Name
        local vq = vp_1 or v
        local vq_1 = type(v) == "table" and v.Mutation
        local vr = vq_1 or "Normal"
        local vr_1 = rU(vq, vr)
        if vm_1 == nil or vr_1 < vm_1 then
            vn_1, vm_1, vo_1 = i, vr_1, vq
        end
    end
    return vn_1, vm_1 or 0, vo_1
end
local function fn784(f0)
    sB.filters.Rarities = sD(f0)
end
local function fn799(U)
    local tk = typeof(cloneref) == "function" and typeof(U) == "Instance"
    if tk then
        return cloneref(U)
    end
    return U
end
local function fn813()
    local t6_1
    local t4 = sa("Utilities", "WorldState")
    local t5 = t4 and rZ(t4.GetCurrentWorld)
    local t5_1
    if t5 then
        t5_1, t6_1 = pcall(t4.GetCurrentWorld)
        local t4_1 = t5_1 and type(t6_1) == "string"
        if t4_1 and t6_1 ~= "" then
            return t6_1
        end
        return "Restaurant"
    end
    return "Restaurant"
end
local function fn835(fU)
    sB.teleport = fU == true
end
local function fn859(ay)
    if not rW or not rW.Parent then
        local Network = rK:FindFirstChild("Network")
        local ty_1 = Network and Network:FindFirstChild("RemoteFunctions")
        local tx_2 = ty_1
        local tC = if tx_2 then 1 else 0
        local tA = 1303 * tC + 901 * (1 - tC)
        local tB = 2937 * tC + 1614 * (1 - tC)
        if not ((tA * 674 + tB * 1886 + tA * tB) % 16777213 == 10244315) then
            tx_2 = nil
        end
        rW = tx_2
    end
    if not rW then
        return nil
    end
    local tx_3 = rW:FindFirstChild(ay .. "Client")
    local ty_2 = tx_3 and tx_3:IsA("RemoteEvent")
    if ty_2 then
        return tx_3
    end
    return nil
end
local function fn869(f9)
    local xB_1
    local xA_1, xA_2, xA_4
    local xz_1, xz_5
    local xy = sj[f9]
    if xy then
        xz_1, xA_1 = sp(xy)
        if not xz_1 then
            return false, tostring(xA_1)
        elseif type(xA_1) == "table" then
            local xy_1 = xA_1.success == true
            local xz_2 = xA_1.message or ""
            return xy_1, tostring(xz_2)
        else
            return xA_1 == true, ""
        end
    else
        local xy_2 = sb[f9]
        if xy_2 then
            local xz_3 = false
            for i, v in ipairs(rR(xy_2)) do
                xA_2, xB_1 = sp("UpgradeStation", xy_2, v)
                local xC = xA_2 and type(xB_1) == "table" and xB_1.success == true
                if xC then
                    xz_3 = true
                end
                local xA_3 = not rQ() or sw.stopped
                if xA_3 then
                    return xz_3, ""
                end
                task.wait(0.2)
            end
            return xz_3, ""
        elseif f9 == "Garage Podiums" then
            local xy_3 = false
            local xz_4 = r8()
            local xM = 1
            while xM <= xz_4 do
                local xN = xM
                xz_5, xA_4 = sp("GarageUnlockPodium", xN)
                local xB_2 = xz_5 and type(xA_4) == "table" and xA_4.success == true
                if xB_2 then
                    xy_3 = true
                end
                local xz_6 = not rQ() or sw.stopped
                if xz_6 then
                    return xy_3, ""
                end
                task.wait(0.2)
                xM += 1
            end
            return xy_3, ""
        else
            return false, "unknown upgrade"
        end
    end
end
local function fn889(gW)
    if gW then
        sh(so, so.Step)
    else
        se(so)
    end
end
local function fn901(ao)
    State.Status = tostring(ao)
end
local function onOnClientEvent(g7)
    table.clear(State.RollResults)
    if type(g7) ~= "table" then
        return
    end
    for k, v in pairs(g7) do
        local yf = type(k) == "number" and type(v) == "table" and not v.claimed and v.carName
        if yf then
            local RollResults = State.RollResults
            local carName = v.carName
            local rarity = v.rarity
            local yi = v.mutation or "Normal"
            RollResults[k] = { carName = carName, rarity = rarity, mutation = yi }
        end
    end
end
local function fn954(fk)
    local wN = (tonumber(fk))
    local wR = if wN then 1 else 0
    local wP = 625 * wR + 1070 * (1 - wR)
    local wQ = 748 * wR + 1512 * (1 - wR)
    if not ((wP * 3004 + wQ * 2110 + wP * wQ) % 16777213 == 3923280) then
        wN = 1
    end
    sF.interval = math.max(0.2, wN)
end
local function fn955(X)
    return type(X) == "function"
end
local function fn964(bH)
    local ue_1
    if type(bH) ~= "string" then
        return nil
    end
    local uc = sa("Configurations", "EntitiesConfig")
    local ud = not uc or not rZ(uc.GetCarInfo)
    local ud_1
    if ud then
        return nil
    end
    ud_1, ue_1 = pcall(uc.GetCarInfo, bH)
    local uc_1 = ud_1 and type(ue_1) == "table"
    if uc_1 then
        return ue_1
    end
    return nil
end
local function fn972()
    local u2 = sC()
    local u3 = u2 and u2:FindFirstChild("TunnelIn")
    local u2_1 = u3
    if u3 then
        u3 = u2_1:FindFirstChild("Area")
    end
    local u2_2 = u3
    if u3 then
        u3 = u2_2:FindFirstChild("ProximityPart")
    end
    local u2_3 = u3
    if u3 then
        u3 = u2_3:FindFirstChildWhichIsA("ProximityPrompt", true)
    end
    return u3 or nil
end
local function fn1005()
    local RollResults = State.RollResults
    if next(RollResults) == nil then
        return
    end
    if not sB.buy then
        return
    end
    local w6 = ss()
    for k, v in pairs(RollResults) do
        local w7 = not rQ() or sB.stopped
        if w7 then
            return
        end
        if rJ(v) then
            local w7_1 = sr(v.carName)
            if w6 < w7_1 then
                sI("Saving up for " .. tostring(v.carName))
            elseif sd(k, sB.teleport) then
                RollResults[k] = nil
                sI("Bought " .. tostring(v.carName))
                w6 -= w7_1
                task.wait(0.4)
            end
        end
    end
end
local function fn1010()
    return CoreGui
end
local function fn1042(ep)
    if ep then
        sh(rI, function()
            local wb = if rP(rI.teleport) then 1 else 0
            if wb == 1 then
                sI("Pulled the lever")
            else
                sI("Lever out of reach, stand next to it")
            end
        end)
    else
        se(rI)
    end
end
local function fn1058(bh, bi)
    local t__1
    local tX = bh .. "/" .. bi
    local tY = si[tX]
    if tY ~= nil then
        if tY == false then
            return nil
        end
        return tY
    end
    local Shared = rK:FindFirstChild("Shared")
    local tZ = Shared and Shared:FindFirstChild("Framework")
    local tZ_2
    local tY_2 = tZ
    if tZ then
        tZ = tY_2:FindFirstChild(bh)
    end
    local tY_3 = tZ
    if tZ then
        tZ = tY_3:FindFirstChild(bi)
    end
    local tY_4 = tZ
    local tZ_1 = not tY_4 or not tY_4:IsA("ModuleScript")
    if tZ_1 then
        si[tX] = false
        return nil
    end
    tZ_2, t__1 = pcall(require, tY_4)
    local tY_5 = not tZ_2 or type(t__1) ~= "table"
    if tY_5 then
        si[tX] = false
        return nil
    end
    si[tX] = t__1
    return t__1
end
local function fn1095(fQ)
    sB.buy = fQ == true
    if sB.buy then
        sh(sB, sB.Step)
    else
        se(sB)
    end
end
local function fn1102()
    local uA_1
    local uz_1
    uz_1, uA_1 = sp("GetPlayerPlot")
    local uB = uz_1 and type(uA_1) == "number"
    if uB then
        State.PlotNumber = uA_1
    end
    return State.PlotNumber
end
local function fn1106()
    gethui = sH
end
local function fn1145()
    local wA_1
    local wz_1
    local wt = r0()
    if not wt then
        sI("Tunnel entrance not found")
        return
    end
    local wu = rM()
    if #wu == 0 then
        return
    end
    local wv = r2()
    if not wv then
        return
    end
    local ww = wu[1]
    local attr = ww:GetAttribute("CarName")
    local wx = rU(attr, ww:GetAttribute("Mutation"))
    local wy = wv.Capacity > 0 and #wv.Cars >= wv.Capacity
    local wy_1
    if wy then
        if not sF.replace then
            sI("Tunnel is full")
            return
        end
        wz_1, wy_1, wA_1 = sk(wv)
        if not wz_1 or wx <= wy_1 then
            sI("Tunnel is full, nothing weaker to swap")
            return
        end
        if not sc(wz_1) then
            return
        end
        r4("Unequipped " .. tostring(wA_1) .. " for " .. tostring(attr))
        task.wait(0.4)
    end
    if r3(wt, ww) then
        sI("Placed " .. tostring(attr))
        r2()
    end
end
local function fn1208()
    local vf_1
    local ve_1
    ve_1, vf_1 = sp("IndexSync", "GetTunnel")
    local vg = not ve_1
    local vl = if vg then 1 else 0
    local vj = 3309 * vl + 3025 * (1 - vl)
    local vk = 3274 * vl + 360 * (1 - vl)
    if not ((vj * 3902 + vk * 1523 + vj * vk) % 16777213 == 11954473) then
        vg = type(vf_1) ~= "table"
    end
    if vg then
        return nil
    end
    local ve_2 = type(vf_1.Cars) == "table" and vf_1.Cars
    local ve_3 = ve_2 or {}
    local vg_2 = tonumber(vf_1.Capacity) or 0
    State.TunnelCount = #ve_3
    State.TunnelCapacity = vg_2
    return { Cars = ve_3, Capacity = vg_2 }
end
local function fn1214(dS)
    local vM = sC()
    if not vM then
        return {}
    end
    local vN = {}
    for i, descendant in ipairs(vM:GetDescendants()) do
        local vM_1 = descendant:IsA("Model") and descendant:GetAttribute("StationType") == dS
        if vM_1 then
            local vM_2 = tonumber(descendant:GetAttribute("LaneNumber"))
            if vM_2 then
                table.insert(vN, vM_2)
            end
        end
    end
    table.sort(vN)
    return vN
end
local function fn1217(ey)
    rI.teleport = ey == true
end
local function fn1222()
    local uK = sC()
    local uL = uK and uK:FindFirstChild("Lever")
    return uL or nil
end
local function fn1229(f3)
    sB.filters.Mutations = sD(f3)
end
rI = nil
rJ = nil
rK = nil
rL = nil
rM = nil
rN = nil
LocalPlayer = nil
rP = nil
rQ = nil
rR = nil
rU = nil
rW = nil
rY = nil
rZ = nil
r_ = nil
r0 = nil
r2 = nil
r3 = nil
r4 = nil
CoreGui = nil
State = nil
r7 = nil
r8 = nil
sa = nil
sb = nil
sc = nil
sd = nil
se = nil
sf = nil
sh = nil
si = nil
sj = nil
sk = nil
sl = nil
sm = nil
so = nil
sp = nil
sq = nil
sr = nil
ss = nil
local Players, rS, Workspace, rV, Lighting, TeleportService, GuiService, HttpService, VirtualUser, UserInputService
su = nil
sw = nil
sx = nil
sz = nil
sB = nil
sC = nil
sD = nil
sF = nil
sG = nil
sH = nil
sI = nil
local sv, sy, RunService, sE
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, Workspace, LocalPlayer, sH = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local sL = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
if (GuiService and not CoreGui and (not GuiService or CoreGui) or (GuiService or CoreGui) and (CoreGui or not CoreGui)) and (CoreGui and GuiService or (not GuiService or GuiService) or not GuiService and not GuiService and (not GuiService or CoreGui)) and ((GuiService and GuiService or not CoreGui and GuiService) and (GuiService or GuiService or not CoreGui and not CoreGui) and ((CoreGui or CoreGui) and (GuiService and CoreGui) or CoreGui and GuiService and (not CoreGui and not GuiService))) or not ((GuiService and not CoreGui and (not GuiService or CoreGui) or (GuiService or CoreGui) and (CoreGui or not CoreGui)) and (CoreGui and GuiService or (not GuiService or GuiService) or not GuiService and not GuiService and (not GuiService or CoreGui)) and ((GuiService and GuiService or not CoreGui and GuiService) and (GuiService or GuiService or not CoreGui and not CoreGui) and ((CoreGui or CoreGui) and (GuiService and CoreGui) or CoreGui and GuiService and (not CoreGui and not GuiService)))) then
    VirtualUser = game:GetService("VirtualUser")
else
    sL = game:GetService("VirtualUser")
end
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local sK = "OuroborosDriveThruEmpire"
sH = fn1010
if getgenv then
    getgenv().gethui = sH
end
sl, rK, sG, sE, sy, sq, sj, sb, State, rW, sv, si, rI, sF, sB, sw, so, rV, rZ, rQ, r4, sI, ss, rS, sp, sa, rN, r7, su, rU, sr, rY, sC, sm, r_, rL, rP, r0, sd, r2, sk, sc, rM, rR, r8, sh, se, r3, rJ, sD, sz = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fn1106)
local function sN(t)
    local td
    local tb
    local tc
    tb = nil
    tc = nil
    td = nil
    local te = t ~= ""
    local tf = type(t) == "string" and te
    assert(tf, "A namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    tb = getgenv()
    assert(type(tb) == "table", "getgenv did not return a table")
    local te_1 = tb[t]
    if te_1 ~= nil then
        local tf_1 = type(te_1) == "table" and type(te_1.Unload) == "function"
        assert(tf_1, "Namespace is occupied")
        te_1.Unload()
        assert(tb[t] == nil, "Previous instance did not release its namespace")
    end
    tc = {}
    td = { State = {}, Unloaded = false }
    td.Track = function(z)
        assert(type(z) == "function", "Cleanup must be callable")
        if td.Unloaded then
            z()
        else
            table.insert(tc, z)
        end
        return z
    end
    td.Unload = function()
        local s1_1
        local s0_1
        if td.Unloaded then
            return
        end
        td.Unloaded = true
        local sZ = {}
        local s8 = #tc
        local s7 = -1
        while false and s8 <= 1 or true and s8 >= 1 do
            local s9 = s8
            local s__1 = table.remove(tc, s9)
            s0_1, s1_1 = pcall(s__1)
            if not s0_1 then
                table.insert(sZ, tostring(s1_1))
            end
            s8 += s7
        end
        table.clear(td.State)
        if #sZ > 0 then
            error("Cleanup incomplete: " .. table.concat(sZ, "; "), 0)
        end
        if tb[t] == td then
            tb[t] = nil
        end
    end
    tb[t] = td
    return td
end
rV = function(M, N)
    local ti = type(M) == "table" and type(M.Track) == "function"
    assert(ti, "FeatureAPI required")
    local ti_1 = type(N) == "table" and type(N.OnUnload) == "function"
    assert(ti_1, "UI library required")
    assert(type(N.Unload) == "function", "UI unload required")
    M.Track(function()
        if not N.Unloaded then
            N:Unload()
        end
    end)
    N:OnUnload(function()
        M.Unload()
    end)
end
sl = sN(sK)
rZ = fn955
rQ = fn17
rK = fn799(sL)
sG = fn799(Workspace)
sE = {
    "Common",
    "Uncommon",
    "Rare",
    "Epic",
    "Legendary",
    "Mythic",
    "Secret",
    "Exotic",
    "Hacker",
    "Cosmic",
    "Divine",
    "Eternal",
    "Destroyer"
}
sy = { "Normal", "Gold", "Diamond", "Rainbow", "Radioactive", "Galaxy" }
sq = {
    "Lanes",
    "Car Speed",
    "Spawn Speed",
    "Drop Rate",
    "Absorb Radius",
    "Roll Luck",
    "Roll Areas",
    "Order Stations",
    "Kitchens",
    "Item Collectors",
    "Garage Podiums",
    "AFK Zone"
}
sj = {
    Lanes = "UpgradeLanes",
    ["Car Speed"] = "UpgradeCarSpeed",
    ["Spawn Speed"] = "UpgradeSpawnSpeed",
    ["Drop Rate"] = "UpgradeDropRate",
    ["Absorb Radius"] = "UpgradeAbsorbRadius",
    ["Roll Luck"] = "UpgradeRollLuck",
    ["Roll Areas"] = "UpgradeRollAreas",
    ["AFK Zone"] = "AFKZoneUnlock"
}
sb = { ["Order Stations"] = "OrderStation", Kitchens = "Kitchen", ["Item Collectors"] = "ItemCollector" }
State = sl.State
State.RollResults = {}
State.Notifications = {}
State.Status = "Idle"
State.PlotNumber = nil
State.TunnelCount = 0
State.TunnelCapacity = 0
r4 = fn566
sI = fn901
ss = fn775
rS = fn859
sv = {}
sp = function(aR, ...)
    local tO
    local tR
    local tP
    local tQ
    local connection
    tO = nil
    tP = nil
    tQ = nil
    tR = nil
    connection = nil
    tO = rS(aR)
    if not tO then
        return false, "remote unavailable"
    end
    local function tT()
        local tJ = sv[aR]
        local tK = tJ ~= nil and os.clock() - tJ < 14
        return tK
    end
    local tU = os.clock() + 8
    while true do
        local tV = tT() and os.clock() < tU
        if tV then
            task.wait(0.05)
            continue
        end
        break
    end
    if tT() then
        return false, "remote busy"
    end
    sv[aR] = os.clock()
    tR = coroutine.running()
    tQ = false
    tP = nil
    connection = nil
    connection = tO.OnClientEvent:Connect(function(...)
        if tQ then
            return
        end
        tQ = true
        tP = table.pack(...)
        connection:Disconnect()
        task.spawn(tR)
    end)
    local tT_1 = pcall(function(...)
        tO:FireServer(...)
    end, ...)
    if not tT_1 then
        tQ = true
        connection:Disconnect()
        sv[aR] = nil
        return false, "remote rejected"
    end
    local tT_2 = task.delay(12, function()
        if tQ then
            return
        end
        tQ = true
        connection:Disconnect()
        task.spawn(tR)
    end)
    coroutine.yield()
    pcall(task.cancel, tT_2)
    sv[aR] = nil
    if not tP then
        return false, "timed out"
    end
    return true, table.unpack(tP, 1, tP.n)
end
si = {}
sa = fn1058
rN = fn813
r7 = fn964
su = fn497
rU = fn246
sr = fn94
rY = fn1102
sC = fn590
sm = fn1222
r_ = fn482
rL = function(cA)
    if not cA then
        return false
    end
    local Character = LocalPlayer.Character
    local uS = Character and Character:FindFirstChild("HumanoidRootPart")
    local uP = uS
    if not uP then
        return false
    end
    local uQ
    if cA:IsA("BasePart") then
        uQ = cA.CFrame
    elseif cA:IsA("Model") then
        uQ = cA:GetPivot()
    else
        local BasePart = cA:FindFirstChildWhichIsA("BasePart", true)
        uQ = BasePart and BasePart.CFrame or nil
    end
    if not uQ then
        return false
    elseif (uP.Position - uQ.Position).Magnitude <= 8 then
        return true
    else
        return (pcall(function()
            uP.CFrame = uQ + Vector3.new(0, 5, 0)
        end))
    end
end
rP = fn334
r0 = fn972
sd = fn527
r2 = fn1208
sk = fn779
sc = fn612
rM = fn41
rR = fn1214
r8 = fn14
rI = { interval = 1 }
sF = { interval = 1 }
sB = { interval = 0.35, filters = { Rarities = {}, Mutations = {}, MinIncome = 0 } }
sw = { interval = 2, targets = {} }
so = { interval = 5 }
sh = function(eb, ec)
    local generation
    local v4 = eb.generation or 0
    eb.generation = v4 + 1
    eb.stopped = false
    generation = eb.generation
    task.spawn(function()
        local v1_1
        while true do
            local v0 = rQ() and not eb.stopped and eb.generation == generation
            local v0_1
            if v0 then
                v0_1, v1_1 = pcall(ec)
                if not v0_1 then
                    warn("[Ouroboros] loop error: " .. tostring(v1_1))
                end
                local v0_2 = not rQ() or eb.stopped or eb.generation ~= generation
                if v0_2 then
                    break
                end
                task.wait(eb.interval)
                continue
            end
            break
        end
    end)
end
se = fn284
rI.SetEnabled = fn1042
rI.SetTeleport = fn1217
rI.SetDelay = fn102
r3 = function(eD, eE)
    local wj
    wj = nil
    local Character = LocalPlayer.Character
    local wl = Character and Character:FindFirstChildOfClass("Humanoid")
    wj = wl
    if not wj then
        return false
    elseif not pcall(function()
        wj:EquipTool(eE)
    end) then
        return false
    else
        sF.held = eE
        if sF.teleport then
            rL(eD.Parent)
        end
        local wk_1 = os.clock() + 3
        while true do
            local wl_1 = os.clock() < wk_1 and not eD.Enabled
            if wl_1 then
                task.wait(0.1)
                continue
            end
            break
        end
        if not eD.Enabled then
            sI("The place prompt stayed closed")
            return false
        elseif not r_(eD) then
            return false
        else
            task.wait(0.5)
            if eE.Parent ~= nil then
                sI("Stand at the tunnel entrance to place")
                return false
            end
            sF.held = nil
            return true
        end
    end
end
sF.Step = fn1145
sF.Refresh = fn49
sF.SetEnabled = fn719
sF.SetReplace = fn519
sF.SetTeleport = fn540
sF.SetDelay = fn954
sl.Track(function()
    local held = sF.held
    sF.held = nil
    local Character = LocalPlayer.Character
    local wV = Character and Character:FindFirstChildOfClass("Humanoid")
    local wW = held
    local wS = wV
    if wW then
        wW = held.Parent == Character
    end
    if wW and wS then
        pcall(function()
            wS:UnequipTools()
        end)
    end
end)
rJ = fn452
sB.Step = fn1005
sB.SetBuy = fn1095
sB.SetTeleport = fn835
sD = fn167
sB.SetRarities = fn784
sB.SetMutations = fn1229
sB.SetMinIncome = fn725
sz = fn869
sw.Step = fn457
sw.SetEnabled = fn628
sw.SetTargets = fn647
so.Step = fn298
so.SetEnabled = fn889
sl.Track(fn742)
sf = nil
sf = {}
local sQ = fn429("LeverRollResult")
if sQ then
    local sJ_1 = 2
    repeat
        if (sJ_1 * 2 + 2) * 13 % 3 == ((sJ_1 * 2 + 2) * 13 + 0) % 3 then
            table.insert(sf, sQ.OnClientEvent:Connect(onOnClientEvent))
        else
            table.insert(sQ, sf.OnClientEvent:Connect(onOnClientEvent))
        end
        sJ_1 = (sJ_1 + 3) % 8
    until (sJ_1 * 5 + 5) % 8 == 6
end
local sJ_2 = fn429("LeverBuyResult")
if sJ_2 then
    local sK_1 = 1
    repeat
        local sL_1 = {
            "bgiagtqlfywq",
            "syakhe",
            "zkoqk",
            "wvrrmzktfad",
            "fwriedeftp",
            "zrimygzen",
            "xfdrwozloiii",
            "jookonyvcrza",
            "elnzivxskxj",
            "wmkgntvnmw",
            "hgn"
        }
        if sL_1[(sK_1 * 52 + 27) % 11 + 1] <= sL_1[(sK_1 * 52 + 27) % 11 + 1] then
            table.insert(sf, sJ_2.OnClientEvent:Connect(onOnClientEvent2))
        else
            table.insert(sJ_2, sf.OnClientEvent:Connect(onOnClientEvent2))
        end
        sK_1 = (sK_1 + 3) % 4
    until (sK_1 * 1 + 1) % 4 == 1
end
local sJ_3 = fn429("PlotAssigned")
if sJ_3 then
    local sK_2 = 7
    repeat
        local sL_2 = {
            "erhuxh",
            "wmks",
            "uibpod",
            "xtuvgpmeys",
            "tcnpmanagn",
            "knfdth",
            "gvipptwenyp",
            "zydsrkznkqwb",
            "qpqneyim",
            "ddbxem",
            "jcwtrgu",
            "lvfsf",
            "mzlusub"
        }
        if sL_2[(sK_2 * 6 + 6) % 13 + 1] < sL_2[(sK_2 * 6 + 6) % 13 + 1] then
            table.insert(sJ_3, sf.OnClientEvent:Connect(onOnClientEvent3))
        else
            table.insert(sf, sJ_3.OnClientEvent:Connect(onOnClientEvent3))
        end
        sK_2 = (sK_2 + 4) % 8
    until (sK_2 * 1 + 4) % 8 == 7
end
sx = nil
sl.Track(fn309)
sx = task.spawn(worker)
sl.Track(fn213)
local function sJ_4()
    local onDiscord
    local Df
    local De
    onDiscord = nil
    De = nil
    Df = nil
    local SaveManager, C5, C6, Library, Toggles, Da, ThemeManager, Dc, Options
    C5 = "Drive-Thru Empire"
    De = "https://discord.gg/synapsex"
    Da = "https://ouroboros-hub-rbx.web.app/"
    C6 = "https://rscripts.net/@Ouroboros"
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = Library.Toggles
    Options = Library.Options
    rV(sl, Library)
    Df = function(hJ, hK)
        local yI = rZ(setclipboard) and setclipboard
        local yJ = yI
        if not yJ then
            local yI_1 = rZ(toclipboard) and toclipboard
            yJ = yI_1 or nil
        end
        local yI_2 = yJ
        if not yI_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local yJ_1 = pcall(yI_2, hJ)
        if yJ_1 then
            Library:Notify(hK)
        else
            Library:Notify("Failed to copy")
        end
    end
    onDiscord = function()
        Df(De, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = De, Copyable = true }, "|", C5, "|", "v0.4" },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    Dc = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "gamepad-2"),
        Player = Window:AddTab("Player", "person-standing"),
        Settings = Window:AddTab("Settings", "settings")
    }
    local function Dg_1(hZ)
        local DiscordGroup = hZ:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    for k, v in Dc do
        if k ~= "Info" then
            Dg_1(v)
        end
    end
    local function Dh()
        local ja
        local RollingGroup = Dc.Main:AddLeftGroupbox("Rolling", "dices")
        RollingGroup:AddToggle("AutoRoll", {
            Text = "Auto Roll",
            Default = false,
            Tooltip = "Pulls the lever on your plot. Stay near the lever, the server checks the distance.",
            Callback = function(h6)
                rI.SetEnabled(h6)
            end
        })
        RollingGroup:AddSlider("RollDelay", {
            Text = "Roll Delay",
            Default = 1,
            Min = 0.2,
            Max = 10,
            Rounding = 1,
            Suffix = "s",
            Callback = function(ia)
                rI.SetDelay(ia)
            end
        })
        RollingGroup:AddToggle("TeleportToLever", {
            Text = "Teleport To Lever",
            Default = false,
            Tooltip = "Moves you to the lever before each pull instead of making you stand there.",
            Callback = function(ic)
                rI.SetTeleport(ic)
            end
        })
        local UpgradesGroup = Dc.Main:AddLeftGroupbox("Upgrades", "trending-up")
        UpgradesGroup:AddToggle("AutoUpgrade", {
            Text = "Auto Buy Upgrades",
            Default = false,
            Callback = function(ig)
                sw.SetEnabled(ig)
            end
        })
        UpgradesGroup:AddDropdown("UpgradeTargets", {
            Text = "Upgrades",
            Values = sq,
            Default = {},
            Multi = true,
            AllowNull = true,
            Tooltip = "Every upgrade in the game. The station entries cover all of your lanes.",
            Callback = function(im)
                sw.SetTargets(im)
            end
        })
        local CarsGroup = Dc.Main:AddRightGroupbox("Cars", "car")
        local Label = CarsGroup:AddLabel(State.Status, true)
        CarsGroup:AddDivider()
        CarsGroup:AddToggle("AutoBuyRoll", {
            Text = "Auto Buy Rolled Cars",
            Default = false,
            Tooltip = "Buys the car the lever rolls when it matches the filters below.",
            Callback = function(it)
                sB.SetBuy(it)
            end
        })
        CarsGroup:AddDropdown("BuyRarities", {
            Text = "Rarities",
            Values = sE,
            Default = {},
            Multi = true,
            AllowNull = true,
            Tooltip = "Leave everything unticked to accept any rarity.",
            Callback = function(iz)
                sB.SetRarities(iz)
            end
        })
        CarsGroup:AddDropdown("BuyMutations", {
            Text = "Mutations",
            Values = sy,
            Default = {},
            Multi = true,
            AllowNull = true,
            Tooltip = "Leave everything unticked to accept any mutation.",
            Callback = function(iD)
                sB.SetMutations(iD)
            end
        })
        CarsGroup:AddSlider("BuyMinIncome", {
            Text = "Minimum Income",
            Default = 0,
            Min = 0,
            Max = 1000000,
            Rounding = 0,
            Callback = function(iF)
                sB.SetMinIncome(iF)
            end
        })
        CarsGroup:AddToggle("TeleportToPodium", {
            Text = "Teleport To Podium",
            Default = false,
            Tooltip = "Moves you to the rolled car's podium before buying it.",
            Callback = function(iH)
                sB.SetTeleport(iH)
            end
        })
        CarsGroup:AddDivider("Tunnel")
        CarsGroup:AddToggle("AutoPlaceCars", {
            Text = "Auto Place Cars",
            Default = false,
            Tooltip = "Holds your best unplaced car and triggers the PLACE prompt at the tunnel entrance. Stay near the entrance.",
            Callback = function(iJ)
                sF.SetEnabled(iJ)
            end
        })
        CarsGroup:AddSlider("PlaceDelay", {
            Text = "Place Delay",
            Default = 1,
            Min = 0.2,
            Max = 10,
            Rounding = 1,
            Suffix = "s",
            Callback = function(iN)
                sF.SetDelay(iN)
            end
        })
        CarsGroup:AddToggle("TeleportToTunnel", {
            Text = "Teleport To Tunnel",
            Default = false,
            Tooltip = "Moves you to the tunnel entrance while holding the car instead of making you stand there.",
            Callback = function(iP)
                sF.SetTeleport(iP)
            end
        })
        CarsGroup:AddToggle("AutoReplaceCars", {
            Text = "Auto Replace Cars With Better",
            Default = false,
            Tooltip = "When the tunnel is full, unequips your weakest placed car if a car in your backpack earns more. Needs Auto Place Cars.",
            Callback = function(iR)
                sF.SetReplace(iR)
            end
        })
        local ProgressionGroup = Dc.Main:AddRightGroupbox("Progression", "sparkles")
        ProgressionGroup:AddToggle("AutoRebirth", {
            Text = "Auto Rebirth",
            Default = false,
            Tooltip = "Rebirths as soon as you can afford the next one.",
            Callback = function(iU)
                so.SetEnabled(iU)
            end
        })
        ja = task.spawn(function()
            while not Library.Unloaded do
                pcall(function()
                    local yM = State.PlotNumber and "Plot " .. tostring(State.PlotNumber)
                    local yN = yM or "Plot ?"
                    local format = string.format
                    local yO = State.TunnelCount or 0
                    local yP = State.TunnelCapacity or 0
                    local yQ = format("Tunnel %d/%d", yO, yP)
                    Label:SetText(yN .. "  |  " .. yQ .. "  |  " .. tostring(State.Status))
                end)
                local yW = false
                repeat
                    local yS
                    if State.Notifications and #State.Notifications > 0 then
                        yS = table.remove(State.Notifications, 1)
                        pcall(function()
                            Library:Notify(yS.text, yS.time)
                        end)
                    else
                        yW = true
                    end
                until yW
                task.wait(0.3)
            end
        end)
        sl.Track(function()
            if coroutine.status(ja) ~= "dead" then
                pcall(task.cancel, ja)
            end
        end)
    end
    Dh()
    local function Dg_2()
        local zj
        local zh
        local zd
        local ze
        zd = nil
        ze = nil
        zh = nil
        zj = nil
        local y9, za, Label3, Label2, zf, zg, Label, zk, zl
        zh = function(jf)
            return (tostring(jf):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        ze = function(jh, ji)
            return string.format('<font color="%s">%s</font>', ji, zh(jh))
        end
        zl = function(jl, jm, jn)
            return string.format("<b>%s</b> %s %s", jl, ze("-", "#5a6070"), ze(jm, jn))
        end
        za = "#e8a34d"
        zf = "#7fd47f"
        local zm = {}
        local zn = "#6ec1ff"
        local zo = "#8b93a3"
        if not rZ(fireproximityprompt) then
            table.insert(zm, "rolling and buying")
        end
        local zu = if not rS("GetPlayerPlot") then 1 else 0
        if zu == 1 then
            table.insert(zm, "plot lookup")
        end
        local zu_1 = if not rS("IndexSync") then 1 else 0
        if zu_1 == 1 then
            table.insert(zm, "tunnel")
        end
        if not rS("RebirthState") then
            table.insert(zm, "rebirth")
        end
        local zq = #zm == 0 and "ready"
        local zu_2 = if zq then 1 else 0
        local zs = 1152 * zu_2 + 3004 * (1 - zu_2)
        local zt = 881 * zu_2 + 1055 * (1 - zu_2)
        if not ((zs * 958 + zt * 328 + zs * zt) % 16777213 == 2407496) then
            zq = "limited: " .. table.concat(zm, ", ")
        end
        y9 = "Unknown"
        local zm_1 = zq
        pcall(function()
            local yZ_1
            local yY_1
            if rZ(identifyexecutor) then
                yZ_1, yY_1 = identifyexecutor()
                local y_ = yZ_1 ~= ""
                local y0 = type(yZ_1) == "string" and y_
                if y0 then
                    local y__1 = type(yY_1) == "string" and yY_1 ~= "" and yZ_1 .. " " .. yY_1
                    y9 = y__1 or yZ_1
                end
            end
        end)
        zd = os.clock()
        zk = function()
            local y2 = math.floor(os.clock() - zd)
            if y2 < 60 then
                return y2 .. "s"
            elseif y2 < 3600 then
                return string.format("%dm %ds", y2 // 60, y2 % 60)
            else
                return string.format("%dh %dm", y2 // 3600, y2 % 3600 // 60)
            end
        end
        local UserGroup = Dc.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(zl("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, zf), true)
        UserGroup:AddLabel(zl("UserId", tostring(LocalPlayer.UserId), zn), true)
        UserGroup:AddLabel(zl("Executor", y9 .. "  " .. zm_1, zf), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(zl("Session", zk(), za), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                Df(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                Df("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = Dc.Info:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(zl("Game", C5, zn), true)
        Label2 = SessionGroup:AddLabel(zl("Players", "0/0", zf), true)
        zg = tostring(game.JobId)
        local zn_1 = #zg > 18 and string.sub(zg, 1, 18) .. "..."
        local zp_2 = zn_1 or zg
        SessionGroup:AddLabel(zl("Job", zp_2, zo), true)
        Label = SessionGroup:AddLabel(zl("Ping", "0 ms", za), true)
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
                Df(zg, "Copied Job ID")
            end
        })
        zj = task.spawn(function()
            local y5_1
            local y4_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(zl("Session", zk(), za))
                Label2:SetText(zl("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), zf))
                y4_1, y5_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local y4_2 = y4_1 and y5_1 .. " ms" or "n/a"
                Label:SetText(zl("Ping", y4_2, za))
            end
        end)
        sl.Track(function()
            if coroutine.status(zj) ~= "dead" then
                task.cancel(zj)
            end
        end)
        local SocialsGroup = Dc.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                Df(C6, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                Df(Da, "Copied website link")
            end
        })
    end
    Dg_2()
    local function Dg_3()
        local kB
        local kE
        local kC
        local kD
        local MovementGroup = Dc.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = Dc.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        kE = {}
        kD = {}
        kB = {}
        kC = {}
        local kA = {}
        local function kF()
            for k, v in kB do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(kB)
        end
        local function kJ()
            for k, v in kC do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(kC)
        end
        local function kN()
            for k, v in kD do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(kD)
        end
        local function kR(kS)
            local zT = if not kS:IsA("ProximityPrompt") then 1 else 0
            if zT == 1 then
                return
            end
            if kE[kS] == nil then
                kE[kS] = {
                    HoldDuration = kS.HoldDuration,
                    MaxActivationDistance = kS.MaxActivationDistance,
                    RequiresLineOfSight = kS.RequiresLineOfSight
                }
            end
            kS.HoldDuration = 0
            kS.MaxActivationDistance = 50
            kS.RequiresLineOfSight = false
        end
        local function kU()
            for k, v in kE do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(kE)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                kN()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                kJ()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                kF()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                    pcall(kR, v)
                end
            else
                kU()
            end
        end)
        table.insert(kA, Workspace.DescendantAdded:Connect(function(lc)
            if Toggles.InstantProximityPrompt.Value then
                kR(lc)
            end
        end))
        table.insert(kA, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if kB[v] == nil then
                        kB[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(kA, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local Ao = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and Ao then
                Ao:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(kA, RunService.RenderStepped:Connect(function(ly)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local Au = Character and Character:FindFirstChildOfClass("Humanoid")
            local Av = Character
            if Av then
                Av = Character:FindFirstChild("HumanoidRootPart")
            end
            local At_1 = Av
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and Au then
                if kC[Au] == nil then
                    kC[Au] = Au.WalkSpeed
                end
                Au.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and At_1 and Au and CurrentCamera then
                if kD[Au] == nil then
                    kD[Au] = Au.PlatformStand
                end
                Au.PlatformStand = true
                local Av_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        Av_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        Av_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        Av_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        Av_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        Av_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        Av_4 -= Vector3.new(0, 1, 0)
                    end
                end
                At_1.AssemblyLinearVelocity = Vector3.zero
                if Av_4.Magnitude > 0 then
                    At_1.CFrame = At_1.CFrame + Av_4.Unit * Options.FlySpeed.Value * ly
                end
            end
        end))
        sl.Track(function()
            for k, v in kA do
                v:Disconnect()
            end
            kF()
            kJ()
            kN()
            kU()
        end)
    end
    Dg_3()
    local function Dg_4()
        local BO, BP, Label, BR, BS, BT, BU, BV, BW, BX, BY, BZ, B_, B0
        BR = {}
        BZ = {}
        BW = nil
        BT = 0
        BX = 0
        B0 = false
        BO = os.clock()
        local MenuGroup = Dc.Settings:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        BU = function()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local AN = not CurrentCamera or not rZ(VirtualUser.CaptureController) or not rZ(VirtualUser.ClickButton2)
            if AN then
                return false
            end
            local AN_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not AN_1 then
                return false
            end
            BX += 1
            BO = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. BX)
            end)
            return true
        end
        BP = function(mh)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not mh)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not mh
                end
            end)
            if not mh then
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
        B_ = function(mx)
            if mx.ClassName == "ParticleEmitter" or mx.ClassName == "Trail" or mx.ClassName == "Smoke" or mx.ClassName == "Fire" or mx.ClassName == "Sparkles" or mx.ClassName == "Explosion" or mx.ClassName == "Beam" then
                if BR[mx] == nil then
                    BR[mx] = mx.Enabled
                end
                pcall(function()
                    mx.Enabled = false
                end)
            end
        end
        BY = function()
            for k, v in BR do
                local AZ = k
                local A0 = v
                if AZ.Parent then
                    pcall(function()
                        AZ.Enabled = A0
                    end)
                end
            end
            table.clear(BR)
            if BW then
                pcall(function()
                    settings().Rendering.QualityLevel = BW.Quality
                end)
                Lighting.GlobalShadows = BW.Shadows
                Lighting.FogEnd = BW.Fog
                BW = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(mM)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not mM)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(mR)
                if mR then
                    if not BW then
                        BW = {
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
                        pcall(B_, v)
                    end
                else
                    BY()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        BP(true)
        local ScriptGroup = Dc.Settings:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            BP(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            BP(true)
        end
        table.insert(BZ, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                BU()
            end
        end))
        table.insert(BZ, Workspace.DescendantAdded:Connect(function(m9)
            if Toggles.FpsBoost.Value then
                B_(m9)
            end
        end))
        BV = function(nd)
            local Bh = B0 or Library.Unloaded
            local Bm = if Bh then 1 else 0
            local Bk = 1575 * Bm + 1134 * (1 - Bm)
            local Bl = 1197 * Bm + 2729 * (1 - Bm)
            if not ((Bk * 173 + Bl * 2773 + Bk * Bl) % 16777213 == 5477031) then
                Bh = not Toggles.AutoReconnect.Value
            end
            if Bh then
                return
            end
            B0 = true
            local Bg = BT
            local Bh_1 = pcall(function()
                if nd then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not Bh_1 then
                B0 = false
                if not nd and Bg == BT then
                    task.delay(1.5, function()
                        if Bg == BT then
                            BV(true)
                        end
                    end)
                end
            end
        end
        table.insert(BZ, TeleportService.TeleportInitFailed:Connect(function(nv)
            local Br
            if nv == LocalPlayer and B0 then
                B0 = false
                Br = BT
                task.delay(3, function()
                    if Br == BT then
                        BV(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local Bz = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not Bz then
                return
            end
            table.insert(BZ, Bz.ChildAdded:Connect(function(nK)
                if nK.Name == "ErrorPrompt" then
                    BV(false)
                end
            end))
        end)
        BS = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    BP(true)
                end
                local BF = Toggles.AntiAfk.Value and os.clock() - BO >= 60
                if BF then
                    BU()
                end
                task.wait(1)
            end
        end)
        sl.Track(function()
            BT += 1
            for k, v in BZ do
                v:Disconnect()
            end
            pcall(task.cancel, BS)
            BP(false)
            BY()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    Dg_4()
    local function Dg_5()
        local CW, CX, CY, CZ
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("OuroborosHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(Dc.Settings)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/DriveThruEmpire")
        local C_ = SaveManager:BuildConfigSection(Dc.Settings)
        CZ = function(oa, ob)
            local B4 = oa == "Toggle" and Toggles
            local B9 = if B4 then 1 else 0
            local B7 = 1080 * B9 + 1084 * (1 - B9)
            local B8 = 4002 * B9 + 1991 * (1 - B9)
            if not ((B7 * 3287 + B8 * 2676 + B7 * B8) % 16777213 == 1804259) then
                B4 = Options
            end
            local B4_1 = B4[ob]
            local B3_2 = type(B4_1) == "table" and B4_1.Type == oa
            return B3_2 and B4_1 or nil
        end
        CX = function(ol, om)
            local Type = om.Type
            if Type == "Toggle" then
                return { idx = ol, type = "Toggle", value = om.Value == true }
            elseif Type == "Slider" then
                return { idx = ol, type = "Slider", value = tostring(om.Value) }
            elseif Type == "Dropdown" then
                return { idx = ol, type = "Dropdown", multi = om.Multi == true, value = om.Value }
            elseif Type == "Input" then
                local Cb = om.Value or ""
                return { idx = ol, type = "Input", text = tostring(Cb) }
            elseif Type == "ColorPicker" then
                return { idx = ol, type = "ColorPicker", value = om.Value:ToHex(), transparency = om.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = ol,
                    type = "KeyPicker",
                    mode = om.Mode,
                    key = om.Value,
                    modifiers = om.Modifiers,
                    toggled = om.Toggled
                }
            else
                return nil
            end
        end
        CW = function()
            local Ch = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local Ci = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if Ci then
                        local Ci_1 = CX(k, v)
                        if Ci_1 then
                            Ch[#Ch + 1] = Ci_1
                        end
                    end
                end
            end
            table.sort(Ch, function(oy, oz)
                if oy.type ~= oz.type then
                    return oy.type < oz.type
                end
                return oy.idx < oz.idx
            end)
            return { objects = Ch }
        end
        CY = function(oB)
            local CB
            CB = nil
            local CC = type(oB) ~= "table" or type(oB.idx) ~= "string" or type(oB.type) ~= "string" or SaveManager.Ignore[oB.idx]
            if CC then
                return false
            end
            CB = CZ(oB.type, oB.idx)
            if not CB then
                return false
            end
            local CC_1 = pcall(function()
                if oB.type == "Input" then
                    if type(oB.text) ~= "string" then
                        return
                    end
                    CB:SetValue(oB.text)
                elseif oB.type == "ColorPicker" then
                    CB:SetValueRGB(Color3.fromHex(oB.value), oB.transparency)
                elseif oB.type == "KeyPicker" then
                    CB:SetValue({ oB.key, oB.mode, oB.modifiers })
                    if oB.mode == "Toggle" and oB.toggled ~= nil then
                        CB.Toggled = oB.toggled
                        CB:Update()
                    end
                else
                    CB:SetValue(oB.value)
                end
            end)
            return CC_1
        end
        C_:AddDivider()
        C_:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        C_:AddButton("Export Config to Clipboard", function()
            local CF_1
            local CE_1
            CE_1, CF_1 = pcall(HttpService.JSONEncode, HttpService, CW())
            if CE_1 then
                local CE_2 = rZ(setclipboard) and setclipboard
                local CG = CE_2
                if not CG then
                    local CE_3 = rZ(toclipboard) and toclipboard
                    CG = CE_3 or nil
                end
                local CE_4 = CG
                local CG_1 = type(CE_4) == "function" and pcall(CE_4, CF_1)
                if CG_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        C_:AddButton("Import Config from Clipboard Text", function()
            local CL_1
            local CJ = Options.SaveManager_ImportSource.Value or ""
            local CJ_1
            local CK = tostring(CJ):match("^%s*(.-)%s*$")
            if CK == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #CK > 262144 then
                Library:Notify("That config is too large")
                return
            end
            CJ_1, CL_1 = pcall(HttpService.JSONDecode, HttpService, CK)
            local CK_1 = not CJ_1 or type(CL_1) ~= "table" or type(CL_1.objects) ~= "table"
            if CK_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #CL_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local CJ_2 = 0
            for i, v in ipairs(CL_1.objects) do
                if CY(v) then
                    CJ_2 += 1
                end
            end
            if CJ_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local CL_2 = CJ_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(CJ_2, CL_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        if Options.RollDelay then
            rI.SetDelay(Options.RollDelay.Value)
        end
        if Options.BuyRarities then
            sB.SetRarities(Options.BuyRarities.Value)
        end
        if Options.BuyMutations then
            sB.SetMutations(Options.BuyMutations.Value)
        end
        if Options.BuyMinIncome then
            sB.SetMinIncome(Options.BuyMinIncome.Value)
        end
        if Options.UpgradeTargets then
            sw.SetTargets(Options.UpgradeTargets.Value)
        end
        if Options.PlaceDelay then
            sF.SetDelay(Options.PlaceDelay.Value)
        end
        if Toggles.TeleportToLever then
            rI.SetTeleport(Toggles.TeleportToLever.Value)
        end
        if Toggles.TeleportToPodium then
            sB.SetTeleport(Toggles.TeleportToPodium.Value)
        end
        if Toggles.TeleportToTunnel then
            sF.SetTeleport(Toggles.TeleportToTunnel.Value)
        end
        if Toggles.AutoReplaceCars then
            sF.SetReplace(Toggles.AutoReplaceCars.Value)
        end
        if Toggles.AutoBuyRoll then
            sB.SetBuy(Toggles.AutoBuyRoll.Value)
        end
        if Toggles.AutoPlaceCars then
            sF.SetEnabled(Toggles.AutoPlaceCars.Value)
        end
        if Toggles.AutoRoll then
            rI.SetEnabled(Toggles.AutoRoll.Value)
        end
        if Toggles.AutoUpgrade then
            sw.SetEnabled(Toggles.AutoUpgrade.Value)
        end
        if Toggles.AutoRebirth then
            so.SetEnabled(Toggles.AutoRebirth.Value)
        end
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    Dg_5()
end
sJ_4()
