local C4_4_1, C4_4_3
local sr
local s8
local sQ
local rQ
local sx
local te
local se
local rW
local sD
local s1
local r1
local sJ
local sq
local s7
local r7
local rP
local sw
local td
local sV
local rV
local sC
local sj
local s0
local r0
local sp
local s6
local sO
local rO
local sv
local tc
local Shared
local rU
local sB
local si
local s_
local r_
local sH
local so
local s5
local r5
local rN
local su
local sb
local sT
local rT
local sh
local rZ
local sG
local sn
local s4
local r4
local sM
local rM
local st
local ta
local sa
local sS
local rS
local sg
local sY
local rY
local sF
local sm
local connection
local r3
local rL
local ss
local s9
local r9
local rR
local sy
local sX
local sE
local sl
local r2
local sK
local function fn8(gb)
    if su[gb] then
        su[gb] = nil
    end
end
local function fn30()
    local uL_1
    local PlayerScripts = rZ:FindFirstChild("PlayerScripts")
    local uJ_5
    local uK = PlayerScripts and PlayerScripts:FindFirstChild("Utils")
    local uK_6
    local uJ_1 = uK
    if uK then
        uK = uJ_1:FindFirstChild("Interaction")
    end
    local uJ_2 = uK
    if uK then
        uK = uJ_2:FindFirstChild("InteractionRuntime")
    end
    local uJ_3 = uK
    local uK_1 = s6(uJ_3)
    local uJ_4 = uK_1 and sT(uK_1.getCarryCapacityPolicy)
    if uJ_4 then
        uJ_5, uL_1 = pcall(uK_1.getCarryCapacityPolicy, rZ)
        local uK_2 = uJ_5 and type(uL_1) == "table"
        if uK_2 then
            if uL_1.isUnlimited then
                return math.huge
            end
            local uJ_6 = tonumber(uL_1.capacity)
            if uJ_6 and uJ_6 > 0 then
                return math.floor(uJ_6)
            end
            local uJ_7 = s6(sy)
            local uK_4 = uJ_7 and tonumber(uJ_7.PhysicalCarryLimit)
            local uJ_8 = uK_4
            if uK_6 then
                uK_4 = math.floor(uJ_8)
            end
            return uK_4 or 1
        end
        local uJ_10 = s6(sy)
        local uK_5 = uJ_10 and tonumber(uJ_10.PhysicalCarryLimit)
        local uJ_11 = uK_5
        if uK_6 then
            uK_5 = math.floor(uJ_11)
        end
        return uK_5 or 1
    end
    local uJ_13 = s6(sy)
    uK_6 = uJ_13 and tonumber(uJ_13.PhysicalCarryLimit)
    local uJ_14 = uK_6
    if uK_6 then
        uK_6 = math.floor(uJ_14)
    end
    return uK_6 or 1
end
local function fn41()
    local u6 = {}
    if not sK then
        table.insert(u6, "Knit")
    end
    if not sD then
        table.insert(u6, "GymConfig")
    end
    if not so then
        table.insert(u6, "GymAccess")
    end
    if not sh then
        table.insert(u6, "RegionRegistry")
    end
    if not sb then
        table.insert(u6, "PyramidRuntime")
    end
    if not sj:FindFirstChild("Gym") then
        table.insert(u6, "Gym")
    end
    return u6
end
local function fn42(gV)
    rT.TrainSpeed = gV == true
    r_()
end
local function fn58()
    if st then
        return st
    end
    st = s6(sK)
    return st
end
local function fn67(cB)
    local vi_1
    local vh_1
    vh_1, vi_1 = si()
    if not vi_1 then
        return false
    end
    if (vi_1.Position - cB.Position).Magnitude > 0.75 then
        vi_1.CFrame = cB
    end
    return true
end
local function fn84()
    if not sT(s8) then
        return false
    end
    local yp = 'if not game:IsLoaded() then game.Loaded:Wait() end local env = (getgenv and getgenv()) or _G if env.OuroborosAutoExecuted == game.JobId then return end env.OuroborosAutoExecuted = game.JobId task.wait(3) loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/Ouroboros/refs/heads/main/games/nini.luau"))()'
    return (pcall(s8, yp))
end
local function fn100(hu)
    rT.AutoExecute = hu == true
    if not rT.AutoExecute then
        return true
    elseif not s0() then
        return false, "queue_on_teleport is not supported by your executor"
    else
        return true
    end
end
local function fn138(bH)
    local attr = rZ:GetAttribute(bH)
    local uH = type(attr) == "number" and attr
    return uH or 0
end
local function fn156(d8)
    local wp_1
    local wm = s6(sh)
    local wn = not wm or not sT(wm.getPart)
    if wn then
        return nil
    end
    local wo = wm.Ids and wm.Ids[d8] or d8
    local wo_1
    wo_1, wp_1 = pcall(wm.getPart, wo)
    local wm_1 = wo_1 and typeof(wp_1) == "Instance" and wp_1:IsA("BasePart")
    if wm_1 then
        return wp_1
    end
    return nil
end
local function fn213()
    local wE_1
    local Quarry = sj:FindFirstChild("Quarry")
    local wD = Quarry and Quarry:FindFirstChild("QuarryBlocks")
    local wD_1
    if wD then
        wD_1, wE_1 = pcall(wD.GetPivot, wD)
        if wD_1 then
            return wE_1.Position + Vector3.new(0, 8, 0)
        end
        local wC_2 = s5("Quarry")
        return wC_2 and wC_2.Position or nil
    end
    local wC_4 = s5("Quarry")
    return wC_4 and wC_4.Position or nil
end
local function fn259()
    return sw("CarriedCount")
end
local function fn272()
    local attr = rZ:GetAttribute("BenchStation")
    local vV = attr ~= ""
    local vW = type(attr) == "string" and vV
    if vW then
        return attr
    end
    return nil
end
local function fn346()
    local xR_1
    local xM = s6(sb)
    local xN = tc("PyramidService")
    local xO = not xM or not sT(xM.resolveNearestSlot)
    local xO_1
    local xP = not xN
    local xP_1
    local xQ = xO or xP
    local xQ_2
    if xQ then
        sm("Pyramid is unavailable")
        return false
    end
    xO_1, xP_1 = si()
    if not xP_1 then
        return false
    end
    local xO_2 = sF(xM, xP_1.Position)
    if not xO_2 then
        sm("The pyramid has no free slot")
        return false
    elseif (xO_2.position - xP_1.Position).Magnitude > 24 then
        ta(CFrame.new(xO_2.position + Vector3.new(0, 5, 0)))
        sm("Moving to the build site")
        return true
    else
        local xW = 1
        local xU = sa
        while xW <= xU do
            local xO_3 = not sH() or not rT.AutoBuild or r3() <= 0
            if xO_3 then
                break
            end
            local xO_4 = sF(xM, xP_1.Position)
            if not xO_4 or (xO_4.position - xP_1.Position).Magnitude > 24 then
                break
            end
            xQ_2, xR_1 = r5(xN, "Place", xO_4.layer, xO_4.slotIndex, xO_4.generation)
            if xQ_2 ~= true or xR_1 ~= true then
                break
            end
            rT.Placed = rT.Placed + 1
            xW += 1
        end
        sm("Placing blocks " .. r3() .. " left")
        return true
    end
end
local function fn414()
    if rT.TrainSpeed or rT.TrainStrength then
        sV = os.clock() + sp
        sQ = rT.TrainStrength and "Strength" or "Speed"
        sY("Train", sC, sJ)
    else
        rR("Train")
        if sM() then
            task.spawn(sr)
        end
        sm("Idle")
    end
end
local function fn422(c8)
    local vG = sB(c8)
    local vH = vG and vG:FindFirstChild("Treadmill")
    local vG_1 = vH
    if vH then
        vH = vG_1:FindFirstChild("Hitbox")
    end
    local vG_2 = vH
    if vH then
        vH = vG_2:IsA("BasePart")
    end
    return vH and vG_2 or nil
end
local function fn467()
    connection:Disconnect()
end
local function fn492()
    return table.clone(s7)
end
local function fn495(ao)
    local t_ = typeof(cloneref) == "function" and typeof(ao) == "Instance"
    if t_ then
        return cloneref(ao)
    end
    return ao
end
local function fn507(ek, el)
    local wx_1
    local wu = s6(sh)
    local wv = not wu or not sT(wu.isWithin)
    if wv then
        return false
    end
    local ww = wu.Ids and wu.Ids[ek] or ek
    local ww_1
    ww_1, wx_1 = pcall(wu.isWithin, ww, el)
    return ww_1 and wx_1 == true
end
local function fn513(dA)
    local v2_1
    local v1_1
    local v_ = sE(dA)
    if not v_ then
        sm("No unlocked gym station")
        return
    end
    local v0 = sM()
    if v0 == v_ then
        sm("Benching at station " .. v_)
        return
    end
    if v0 then
        sr()
        return
    end
    local v0_1 = sl(v_)
    if not v0_1 then
        sm("Benchpress " .. v_ .. " is not loaded")
        return
    end
    if not ta(v0_1.CFrame) then
        return
    end
    if os.clock() < rW then
        return
    end
    local v0_2 = tc("GymService")
    if not v0_2 then
        sm("GymService is unavailable")
        return
    end
    v1_1, v2_1 = r5(v0_2, "StartBench", v_)
    if v1_1 ~= true or v2_1 ~= true then
        rW = os.clock() + r4
        sm("Bench start refused at station " .. v_)
        return
    end
    sm("Benching at station " .. v_)
end
local function fn515()
    local TrainSpeed = rT.TrainSpeed
    local TrainStrength = rT.TrainStrength
    local wg = not TrainStrength
    local wh = not TrainSpeed
    if wh ~= false then
        wh = wg
    end
    if wh then
        return
    end
    if TrainSpeed and TrainStrength then
        if os.clock() >= sV then
            sV = os.clock() + sp
            sQ = sQ == "Strength" and "Speed" or "Strength"
        end
    elseif TrainSpeed then
        sQ = "Speed"
    else
        sQ = "Strength"
    end
    if sQ == "Speed" then
        sG(rT.SpeedStation)
    else
        rN(rT.StrengthStation)
    end
end
local function fn518()
    local vY = tc("GymService")
    if not vY then
        return false
    end
    return r5(vY, "StopBench") == true
end
local function fn540(eM)
    local w__1
    local wZ = eM and sT(eM.getModel)
    local wZ_1
    if wZ then
        wZ_1, w__1 = pcall(eM.getModel, sj)
        local w0 = wZ_1 and typeof(w__1) == "Instance"
        if w0 then
            return w__1
        end
        return sj:FindFirstChild("PyramidBuild")
    end
    return sj:FindFirstChild("PyramidBuild")
end
local function onOnTeleport(hx)
    if hx == Enum.TeleportState.Started and rT.AutoExecute then
        s0()
    end
end
local function fn579()
    rT.Capacity = rL()
end
local function fn588()
    if rT.AutoPickup or rT.AutoBuild then
        if not su.Blocks then
            s1 = "Collect"
        end
        sY("Blocks", sx, sX)
    else
        rR("Blocks")
        sm("Idle")
    end
end
local function fn611(a_)
    local uj_1
    if rQ[a_] then
        return rQ[a_]
    end
    local uh = sn()
    local ui = not uh or not sT(uh.GetService)
    local ui_1
    if ui then
        return nil
    end
    ui_1, uj_1 = pcall(uh.GetService, a_)
    local uh_1 = ui_1 and type(uj_1) == "table"
    if uh_1 then
        rQ[a_] = uj_1
        return uj_1
    end
    return nil
end
local function fn633(g4)
    local yk = se(g4)
    if not yk then
        return
    end
    local yl = rT.StrengthStation ~= yk and sM()
    if yl then
        task.spawn(sr)
    end
    rT.StrengthStation = yk
end
local function fn635(c4)
    if r2(c4) then
        return c4
    end
    local vy = #rU
    local vD = vy
    local vC = -1
    while true do
        if not (false and vD <= 1 or true and vD >= 1) then
            return nil
        end
        vy = rU[vD]
        if r2(vy) then
            break
        end
        vD += vC
    end
    return vy
end
local function fn687(hb)
    rT.AutoPickup = hb == true
    rY()
end
local function fn689(g0)
    local yi = se(g0)
    if yi then
        rT.SpeedStation = yi
    end
end
local function fn706(ar)
    return type(ar) == "function"
end
local function fn738(dS)
    local wb = sE(dS)
    if not wb then
        sm("No unlocked gym station")
        return
    end
    if sM() then
        sr()
        return
    end
    local wc = rV(wb)
    if not wc then
        sm("Treadmill " .. wb .. " is not loaded")
        return
    end
    if ta(CFrame.new(wc.Position + Vector3.new(0, 1, 0))) then
        sm("Running at station " .. wb)
    end
end
local function fn743(br, bs)
    return string.format('<font color="%s">◆ %s</font> <font color="%s">─</font> <font color="%s"><b>%s</b></font>', r0, s4(br), te, rS, s4(bs))
end
local function fn765(fr, fs)
    local xG_1
    local xF_1
    xF_1, xG_1 = pcall(fr.resolveNearestSlot, fs, sj)
    local xH = xF_1 and type(xG_1) == "table"
    if xH then
        return xG_1
    end
    return sO(fr)
end
local function fn783(dh)
    local vN = sB(dh)
    local vO = vN and vN:FindFirstChild("Benchpress")
    local vN_1 = vO
    if vO then
        vO = vN_1:FindFirstChild("HumanoidRootPart")
    end
    local vN_2 = vO
    if vO then
        vO = vN_2:IsA("BasePart")
    end
    return vO and vN_2 or nil
end
local function fn809(by)
    local uy = {}
    for i, v in ipairs(by) do
        table.insert(uy, string.format('<font color="%s">%s</font> <font color="%s"><b>%s</b></font>', r0, s4(v[1]), rS, s4(v[2])))
    end
    return table.concat(uy, ' <font color="#9C6480">·</font> ')
end
local function fn815(he)
    rT.AutoBuild = he == true
    rY()
end
local function fn868(cL)
    local vs_1
    local vr_1, vr_2, vr_3
    local vn = s6(sD)
    local vn_3, vn_4
    local vo = s6(so)
    local vp = not vo
    local vq = not vn
    local vx = if vq then 1 else 0
    local vv = 2435 * vx + 2017 * (1 - vx)
    local vw = 3798 * vx + 1819 * (1 - vx)
    if not ((vv * 1407 + vw * 3931 + vv * vw) % 16777213 == 10826900) then
        vq = vp
    end
    if vq then
        return true
    end
    local vp_1 = vn.Access and vn.Access[cL]
    if not vp_1 then
        return false
    end
    local vp_2 = false
    if sT(vo.purchasedFromAttribute) then
        vr_1, vs_1 = pcall(vo.purchasedFromAttribute, rZ:GetAttribute(vn.GymUnlocksAttribute), cL)
        vp_2 = vr_1 and vs_1 == true
    end
    local vn_2 = not vp_2
    if vn_2 ~= false then
        vn_2 = sT(vo.ownsGamePass)
    end
    if vn_2 then
        vn_3, vr_2 = pcall(vo.ownsGamePass, rZ, vp_1.ProductKey)
        vp_2 = vn_3 and vr_2 == true
    end
    local vx_1 = if not sT(vo.hasAccess) then 1 else 0
    if vx_1 == 1 then
        return true
    end
    vn_4, vr_3 = pcall(vo.hasAccess, vp_1, sw("Pyramids"), vp_2)
    return vn_4 and vr_3 == true
end
local function fn875()
    gethui = sv
end
local function fn884()
    local wK_1
    local wG = s5("Quarry")
    local wH = tc("BookService")
    local wI = not wH
    local wI_1
    local wJ = not wG or wI
    local wJ_1, wJ_3
    if wJ then
        sm("Quarry is unavailable")
        return false
    end
    wI_1, wJ_1 = si()
    if not wJ_1 then
        return false
    elseif not td("Quarry", wJ_1.Position) then
        local wI_2 = rO()
        if not wI_2 then
            return false
        end
        ta(CFrame.new(wI_2))
        return true
    else
        local wI_3 = sq()
        local wW = 1
        local wU = sg
        while wW <= wU do
            local wJ_2 = not sH() or not rT.AutoPickup or r3() >= wI_3
            if wJ_2 then
                break
            end
            wJ_3, wK_1 = r5(wH, "Pickup", wG)
            if wJ_3 ~= true or wK_1 ~= true then
                break
            end
            rT.PickedUp = rT.PickedUp + 1
            wW += 1
        end
        sm("Collecting blocks " .. r3() .. "/" .. wI_3)
        return true
    end
end
local function fn896(cG)
    local Gym = sj:FindFirstChild("Gym")
    local vl = Gym and Gym:FindFirstChild(cG)
    return vl or nil
end
local function fn897()
    local Capacity = rT.Capacity
    local uU = type(Capacity) == "number" and Capacity ~= math.huge
    local uV = uU and tostring(Capacity)
    local uT_1 = uV or "inf"
    return sS("STATUS", rT.Status) .. "\n" .. r7({
        { "Speed", sw("SpeedLevel") },
        { "Strength", sw("StrengthLevel") },
        { "Carry", r3() .. "/" .. uT_1 },
        { "Placed", rT.Placed }
    })
end
local function fn902(...)
    local t1 = Shared
    for i, v in ipairs({ ... }) do
        if not t1 then
            return nil
        end
        t1 = t1:FindFirstChild(v)
    end
    return t1
end
local function fn936()
    local Capacity = rT.Capacity
    local uR = type(Capacity) ~= "number" or Capacity <= 0
    if uR then
        return rT.CarryTarget
    end
    return math.max(1, math.min(rT.CarryTarget, Capacity))
end
local function fn948(a9, ba, ...)
    local um_1
    local ul = type(a9) ~= "table"
    local ul_1
    local ur = if ul then 1 else 0
    local up = 651 * ur + 1279 * (1 - ur)
    local uq = 4026 * ur + 1827 * (1 - ur)
    if not ((up * 2732 + uq * 796 + up * uq) % 16777213 == 7604154) then
        ul = not sT(a9[ba])
    end
    if ul then
        return false
    end
    ul_1, um_1 = pcall(a9[ba], a9, ...)
    local un = not ul_1
    local ux = if un then 1 else 0
    local uv = 3596 * ux + 265 * (1 - ux)
    local uw = 3422 * ux + 3123 * (1 - ux)
    if not ((uv * 1519 + uw * 3820 + uv * uw) % 16777213 == 14062663) then
        un = type(um_1) ~= "table"
    end
    if not un then
        un = not sT(um_1.await)
    end
    if un then
        return false
    end
    local ul_2 = table.pack(pcall(um_1.await, um_1))
    if not ul_2[1] then
        return false
    end
    return ul_2[2], ul_2[3], ul_2[4]
end
local function fn978()
    return not r1.Unloaded
end
local function fn1044(bp)
    return (tostring(bp):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"))
end
local function fn1046(hh)
    local yn = tonumber(hh)
    if yn then
        rT.CarryTarget = math.clamp(math.floor(yn), 1, 18)
    end
end
local function fn1050()
    if not rT.AutoPickup and not rT.AutoBuild then
        return
    end
    if rT.TrainSpeed or rT.TrainStrength then
        sm("Training has priority over block work")
        return
    end
    if sM() then
        sr()
        return
    end
    local x1_2 = r3()
    local x2 = sq()
    local x3 = s1 == "Build"
    if x3 then
        x3 = x1_2 <= 0 or not rT.AutoBuild
    end
    if x3 then
        s1 = "Collect"
    else
        local x3_1 = s1 == "Collect" and rT.AutoBuild
        if x3_1 then
            x3_1 = x1_2 >= x2 or not rT.AutoPickup
        end
        if x3_1 then
            s1 = "Build"
        end
    end
    if s1 == "Build" and x1_2 > 0 then
        s9()
        return
    end
    if rT.AutoPickup and x1_2 < x2 then
        r9()
        return
    end
    if rT.AutoBuild then
        sm("Waiting for blocks")
    else
        sm("Carrying " .. x1_2 .. "/" .. x2)
    end
end
local function fn1055(aO)
    local ua_1
    local t9_2
    if typeof(aO) ~= "Instance" then
        return nil
    elseif rP[aO] ~= nil then
        return rP[aO] or nil
    else
        t9_2, ua_1 = pcall(require, aO)
        local ub = t9_2 and type(ua_1) == "table"
        if ub then
            rP[aO] = ua_1
            return ua_1
        end
        rP[aO] = false
        return nil
    end
end
local function fn1090(bj)
    rT.Status = tostring(bj)
end
local function fn1096()
    local Character = rZ.Character
    if not Character or not Character.Parent then
        return nil, nil
    end
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    if not HumanoidRootPart then
        return nil, nil
    end
    return Character, HumanoidRootPart
end
local function fn1116(gY)
    rT.TrainStrength = gY == true
    r_()
end
local function fn1123()
    for k in pairs(su) do
        rR(k)
    end
    if sM() then
        pcall(sr)
    end
end
local function fn1134(ck)
    if type(ck) ~= "string" then
        return nil
    end
    local uX = s_[ck]
    if not uX then
        local uZ = rM[ck] and ck
        local u5 = if uZ then 1 else 0
        local u3 = 928 * u5 + 3715 * (1 - u5)
        local u4 = 1375 * u5 + 3326 * (1 - u5)
        if not ((u3 * 2046 + u4 * 2931 + u3 * u4) % 16777213 == 7204813) then
            uZ = nil
        end
        uX = uZ
    end
    return uX
end
rL = nil
rM = nil
rN = nil
rO = nil
rP = nil
rQ = nil
rR = nil
rS = nil
rT = nil
rU = nil
rV = nil
rW = nil
rY = nil
rZ = nil
r_ = nil
r0 = nil
r1 = nil
r2 = nil
r3 = nil
r4 = nil
r5 = nil
r7 = nil
r9 = nil
sa = nil
sb = nil
Shared = nil
se = nil
sg = nil
sh = nil
si = nil
sj = nil
sl = nil
sm = nil
sn = nil
so = nil
sp = nil
sq = nil
sr = nil
ss = nil
st = nil
su = nil
sv = nil
sw = nil
local Players, rX, r6, r8, sd, sf, sk
sx = nil
sy = nil
sB = nil
sC = nil
sD = nil
sE = nil
sF = nil
sG = nil
sH = nil
sJ = nil
sK = nil
sM = nil
sO = nil
sQ = nil
sS = nil
sT = nil
sV = nil
sX = nil
sY = nil
s_ = nil
s0 = nil
s1 = nil
connection = nil
s4 = nil
s5 = nil
s6 = nil
s7 = nil
s8 = nil
s9 = nil
ta = nil
tc = nil
td = nil
te = nil
local sz, sI, sL, sN, sP, sR, sU, sW, sZ, s2, tb
local tj_10
local ti_3
local ReplicatedStorage
sz = nil
sI = nil
sL = nil
sN = nil
sP = nil
sR = nil
sU = nil
sW = nil
sZ = nil
s2 = nil
tb = nil
local tk_8
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, ReplicatedStorage, sZ, sU, sN, sI, sz, ss, sk, sd, r8, rZ, C4_4_1, tb, s2, sW, sR, sL, sC, sx, sp, sg, sa, r4, rU, rM, s7, s_ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local C4_1 = 34
local C4_1_2
repeat
    local ti_1 = (C4_1 * 12 + 0) % 13 + 1
    if ti_1 <= 7 then
        if ti_1 <= 4 then
            if ti_1 <= 2 then
                if ti_1 <= 1 then
                    local tj_1 = {
                        "wzhamscaw",
                        "fidiqcrg",
                        "aqxolpt",
                        "fuuzlz",
                        "xporratrvcb",
                        "chp",
                        "pnpw",
                        "exxmwtc",
                        "xfnx",
                        "odwnbnh",
                        "aouwizyuemi",
                        "ztpvn",
                        "nhhubvjy",
                        "tucecmpyouk",
                        "rugxywdjdul"
                    }
                    if tj_1[(C4_1 * 94 + 78) % 15 + 1] < tj_1[(C4_1 * 94 + 78) % 15 + 1] then
                        sZ = 4
                    else
                        sg = 4
                    end
                    C4_1 = (C4_1 + 12) % 52
                else
                    local tj_2 = (vector.create((C4_1 * 4 + 1) % 11 + 1, (C4_1 * 4 + 12) % 13 + 1, (C4_1 * 5 + 7) % 17 + 1))
                    local tk_1 = (vector.create((C4_1 * 7 + 1) % 11 + 1, (C4_1 * 3 + 7) % 13 + 1, (C4_1 * 5 + 1) % 17 + 1))
                    local D4 = vector.dot(tj_2, tk_1)
                    if D4 * D4 >= vector.dot(tj_2, tj_2) * vector.dot(tk_1, tk_1) + 1 then
                        r4 = 4
                        sa = 2
                    else
                        sa = 4
                        r4 = 2
                    end
                    C4_1 = (C4_1 + 38) % 52
                end
            elseif ti_1 <= 3 then
                local tj_3 = (vector.create((C4_1 * 5 + 5) % 11 + 1, (C4_1 * 5 + 3) % 13 + 1, (C4_1 * 8 + 8) % 17 + 1))
                local Eb = vector.floor(tj_3) + vector.ceil(tj_3 * -1)
                if vector.dot(Eb, Eb) == 0 then
                    rU = { "1", "2", "3", "4", "5", "6", "7" }
                else
                    sN = { "1", "2", "7", "3", "6", "4", "5" }
                end
                C4_1 = (C4_1 + 51) % 52
            else
                local tj_4 = (vector.create((C4_1 * 1 + 5) % 11 + 1, (C4_1 * 9 + 6) % 13 + 1, (C4_1 * 3 + 9) % 17 + 1))
                local tk_2 = (vector.create((C4_1 * 5 + 3) % 11 + 1, (C4_1 * 6 + 10) % 13 + 1, (C4_1 * 8 + 15) % 17 + 1))
                local tl_1 = (vector.create((C4_1 * 6 + 2) % 11 + 1, (C4_1 * 8 + 12) % 13 + 1, (C4_1 * 8 + 13) % 17 + 1))
                if vector.dot(vector.cross(tj_4, tk_2), tl_1) == vector.dot(vector.cross(tk_2, tl_1), tj_4) then
                    rM = {
                        ["1"] = "1x",
                        ["2"] = "2x",
                        ["3"] = "5x",
                        ["4"] = "10x",
                        ["5"] = "25x",
                        ["6"] = "50x",
                        ["7"] = "250x"
                    }
                else
                    sL = {
                        ["4"] = "10x",
                        ["1"] = "1x",
                        ["2"] = "2x",
                        ["7"] = "250x",
                        ["5"] = "25x",
                        ["3"] = "5x",
                        ["6"] = "50x"
                    }
                end
                C4_1 = (C4_1 + 51) % 52
            end
        elseif ti_1 <= 6 then
            if ti_1 <= 5 then
                if C4_1 * 116061949 + 2 + 5 <= C4_1 * 116061949 + 2 + 5 + 2 then
                    s7 = {}
                    s_ = {}
                else
                    s_ = {}
                    s7 = {}
                end
                C4_1 = (C4_1 + 25) % 52
            else
                local tj_5 = (vector.create((C4_1 * 5 + 7) % 11 + 1, (C4_1 * 10 + 5) % 13 + 1, (C4_1 * 14 + 4) % 17 + 1))
                local tk_3 = (vector.create((C4_1 * 7 + 1) % 11 + 1, (C4_1 * 2 + 7) % 13 + 1, (C4_1 * 6 + 10) % 17 + 1))
                local D8 = vector.dot(tj_5, tk_3)
                if D8 * D8 <= vector.dot(tj_5, tj_5) * vector.dot(tk_3, tk_3) then
                    Players = game:GetService("Players")
                else
                    C4_4_1 = game:GetService("Players")
                end
                C4_1 = (C4_1 + 12) % 52
            end
        else
            local tj_6 = {
                "xtzhrwmx",
                "gssoz",
                "aju",
                "hrdeqbibu",
                "fzyjbvpmcbp",
                "qtdy",
                "zfzxosg",
                "iibtw",
                "fwhizxmlf",
                "qrcfp",
                "ihpxy"
            }
            local D5 = C4_1
            local tk_4 = tj_6[D5 % 11 + 1]
            if tk_4:len() >= tk_4:reverse():rep(D5 % 3 + 2):len() then
                sN = game:GetService("ReplicatedStorage")
            else
                ReplicatedStorage = game:GetService("ReplicatedStorage")
            end
            C4_1 = (C4_1 + 25) % 52
        end
    elseif ti_1 <= 10 then
        if ti_1 <= 9 then
            if ti_1 <= 8 then
                local tj_7 = (vector.create((C4_1 * 7 + 9) % 11 + 1, (C4_1 * 1 + 10) % 13 + 1, (C4_1 * 13 + 10) % 17 + 1))
                local tk_5 = (vector.create((C4_1 * 4 + 7) % 11 + 1, (C4_1 * 7 + 6) % 13 + 1, (C4_1 * 9 + 14) % 17 + 1))
                local tl_2 = (vector.create((C4_1 * 2 + 9) % 11 + 1, (C4_1 * 10 + 1) % 13 + 1, (C4_1 * 13 + 4) % 17 + 1))
                local tm_1 = (vector.create((C4_1 * 4 + 2) % 5 + 1, (C4_1 * 3 + 2) % 7 + 1, (C4_1 * 1 + 7) % 9 + 1))
                if vector.dot(vector.cross(tj_7, (vector.cross(tk_5, tl_2))), tm_1) == vector.dot(tk_5 * vector.dot(tj_7, tl_2) - tl_2 * vector.dot(tj_7, tk_5), tm_1) + 4 then
                    sI = game:GetService("RunService")
                    sz = game:GetService("UserInputService")
                    sZ = game:GetService("VirtualUser")
                    sU = game:GetService("HttpService")
                    sN = game:GetService("GuiService")
                else
                    sZ = game:GetService("RunService")
                    sU = game:GetService("UserInputService")
                    sN = game:GetService("VirtualUser")
                    sI = game:GetService("HttpService")
                    sz = game:GetService("GuiService")
                end
                C4_1 = (C4_1 + 51) % 52
            else
                if (C4_1 * 2 + 8) * 10 % 3 == ((C4_1 * 2 + 8) * 10 + 0) % 3 then
                    ss = game:GetService("CoreGui")
                    sk = game:GetService("TeleportService")
                    sd = game:GetService("Lighting")
                    r8 = game:GetService("Workspace")
                else
                    r8 = game:GetService("CoreGui")
                    ss = game:GetService("TeleportService")
                    sk = game:GetService("Lighting")
                    sd = game:GetService("Workspace")
                end
                C4_1 = (C4_1 + 25) % 52
            end
        else
            local tj_8 = {
                "gns",
                "soqn",
                "kpepiddhh",
                "yrq",
                "feykqfmiphe",
                "tkgfsppvql",
                "cojmp",
                "ipjp",
                "okiyvyiebq",
                "cmj",
                "iipjbi"
            }
            local Ed = C4_1
            local tk_6 = tj_8[Ed % 11 + 1]
            if tk_6:len() <= tk_6:reverse():rep(Ed % 3 + 2):len() then
                rZ = Players.LocalPlayer
                C4_4_1 = "OuroborosBuildThePyramid"
                tb = "Build the Pyramid!"
                s2 = "v0.4"
                sW = "https://discord.gg/synapsex"
            else
                Players = nil
                rZ = "OuroborosBuildThePyramid"
                C4_4_1 = "Build the Pyramid!"
                tb = "v0.4"
                s2 = "https://discord.gg/synapsex"
            end
            C4_1 = (C4_1 + 51) % 52
        end
    elseif ti_1 <= 12 then
        if ti_1 <= 11 then
            local ES = bit32.rrotate(bit32.bxor(bit32.lrotate(C4_1, 22), string.byte(tostring(C4_4_1))), 17)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(ES, 123779625), 98914431), (bit32.bxor(bit32.band(ES, 4171187670), 19447048))), 98914431), 19447048) ~= ES then
                sN = "https://rscripts.net/@Ouroboros"
            else
                sR = "https://rscripts.net/@Ouroboros"
            end
            C4_1 = (C4_1 + 51) % 52
        else
            local ti_2 = {
                "qlju",
                "rjs",
                "hqegsawmawu",
                "zzhrfebjjd",
                "hzuyqulxorb",
                "vnevmfqllrn",
                "xlhuxb",
                "pfi",
                "bfgimjv",
                "vgih",
                "wnwupv",
                "utgcie"
            }
            local Eg = C4_1
            local tj_9 = ti_2[Eg % 12 + 1]
            if tj_9:len() >= tj_9:gsub("(.)", "%1%1", Eg % 3 % 2 + 1):len() then
                C4_4_1 = "https://ouroboros-hub-rbx.web.app/"
            else
                sL = "https://ouroboros-hub-rbx.web.app/"
            end
            C4_1 = (C4_1 + 25) % 52
        end
    else
        if (C4_1 * 3 + 6) * 13 % 4 == ((C4_1 * 3 + 6) * 13 + 15) % 4 then
            sp = 0.2
            sC = 0.3
            sx = 15
        else
            sC = 0.2
            sx = 0.3
            sp = 15
        end
        C4_1 = (C4_1 + 51) % 52
    end
until (C4_1 * 3 + 22) % 52 == 20
for i, v in ipairs(rU) do
    local C4_1_1 = "Station " .. v .. " (" .. rM[v] .. ")"
    table.insert(s7, C4_1_1)
    s_[C4_1_1] = v
end
sv = function()
    return ss
end
if getgenv then
    getgenv().gethui = sv
end
r1, rT, ti_3, sj, Shared, C4_1_2, sP, sT, sH = nil, nil, nil, nil, nil, nil, nil, nil, nil
if ((not sj or not C4_1_2) and (not ti_3 and false) or (not sj or C4_1_2) and (r1 or false)) and (sj and ti_3 or not r1 and not sT or (ti_3 or false) and (ti_3 or 10)) or (not sj and (not ti_3) and (C4_1_2 and ti_3 and false) or (ti_3 and 10 or C4_1_2 and not r1) and ((sT or not sT) and (sj and 10))) or not (((not sj or not C4_1_2) and (not ti_3 and false) or (not sj or C4_1_2) and (r1 or false)) and (sj and ti_3 or not r1 and not sT or (ti_3 or false) and (ti_3 or 10)) or (not sj and (not ti_3) and (C4_1_2 and ti_3 and false) or (ti_3 and 10 or C4_1_2 and not r1) and ((sT or not sT) and (sj and 10)))) then
    pcall(fn875)
    local function C4_1_3(M)
        local tT
        local tR
        local tS
        tR = nil
        tS = nil
        tT = nil
        local tU = M ~= ""
        local tV = type(M) == "string" and tU
        assert(tV, "Namespace is required")
        assert(type(getgenv) == "function", "getgenv is unavailable")
        tT = getgenv()
        assert(type(tT) == "table", "getgenv did not return a table")
        local tU_2 = tT[M]
        if tU_2 ~= nil then
            local tV_2 = type(tU_2) == "table" and type(tU_2.Unload) == "function"
            assert(tV_2, "Namespace is occupied")
            tU_2.Unload()
            assert(tT[M] == nil, "Previous instance did not release its namespace")
        end
        tR = {}
        tS = { State = {}, Unloaded = false }
        tS.Track = function(S)
            assert(type(S) == "function", "Cleanup must be callable")
            if tS.Unloaded then
                S()
            else
                table.insert(tR, S)
            end
            return S
        end
        tS.Unload = function()
            local tK_2
            local tJ_2
            if tS.Unloaded then
                return
            end
            tS.Unloaded = true
            local tH = {}
            local tO = #tR
            local tN = -1
            while false and tO <= 1 or true and tO >= 1 do
                local tP = tO
                local tI_2 = table.remove(tR, tP)
                tJ_2, tK_2 = pcall(tI_2)
                if not tJ_2 then
                    table.insert(tH, tostring(tK_2))
                end
                tO += tN
            end
            table.clear(tS.State)
            if #tH > 0 then
                error("Cleanup incomplete: " .. table.concat(tH, "; "), 0)
            end
            if tT[M] == tS then
                tT[M] = nil
            end
        end
        tT[M] = tS
        return tS
    end
    sP = function(af, ag)
        local tY = type(af) == "table" and type(af.Track) == "function"
        assert(tY, "FeatureAPI required")
        local tY_1 = type(ag) == "table" and type(ag.OnUnload) == "function"
        assert(tY_1, "UI library required")
        assert(type(ag.Unload) == "function", "UI unload required")
        af.Track(function()
            if not ag.Unloaded then
                ag:Unload()
            end
        end)
        ag:OnUnload(function()
            af.Unload()
        end)
    end
    r1 = C4_1_3(C4_4_1)
    rT = r1.State
else
    pcall(fn875)
    local function C4_4_2(M)
        local tT
        local tR
        local tS
        tR = nil
        tS = nil
        tT = nil
        local tU = M ~= ""
        local tV = type(M) == "string" and tU
        assert(tV, "Namespace is required")
        assert(type(getgenv) == "function", "getgenv is unavailable")
        tT = getgenv()
        assert(type(tT) == "table", "getgenv did not return a table")
        local tU_1 = tT[M]
        if tU_1 ~= nil then
            local tV_1 = type(tU_1) == "table" and type(tU_1.Unload) == "function"
            assert(tV_1, "Namespace is occupied")
            tU_1.Unload()
            assert(tT[M] == nil, "Previous instance did not release its namespace")
        end
        tR = {}
        tS = { State = {}, Unloaded = false }
        tS.Track = function(S)
            assert(type(S) == "function", "Cleanup must be callable")
            if tS.Unloaded then
                S()
            else
                table.insert(tR, S)
            end
            return S
        end
        tS.Unload = function()
            local tK_1
            local tJ_1
            if tS.Unloaded then
                return
            end
            tS.Unloaded = true
            local tH = {}
            local tO = #tR
            local tN = -1
            while false and tO <= 1 or true and tO >= 1 do
                local tP = tO
                local tI_1 = table.remove(tR, tP)
                tJ_1, tK_1 = pcall(tI_1)
                if not tJ_1 then
                    table.insert(tH, tostring(tK_1))
                end
                tO += tN
            end
            table.clear(tS.State)
            if #tH > 0 then
                error("Cleanup incomplete: " .. table.concat(tH, "; "), 0)
            end
            if tT[M] == tS then
                tT[M] = nil
            end
        end
        tT[M] = tS
        return tS
    end
    rT = C4_4_2(sP)
    r1 = rT.State
end
sT = fn706
sH = fn978
local ti_4 = fn495(ReplicatedStorage)
sj = fn495(r8)
Shared = ti_4:FindFirstChild("Shared")
local Packages = ti_4:FindFirstChild("Packages")
local tm_2 = fn902
local tn = Packages and Packages:FindFirstChild("Knit")
sK, sD, sy, so, sh, sb, r6, rX, rP, st, rQ, su, r0, rS, te, rW, sV, sQ, s1, C4_4_3, s6, sn, tc, r5, sm, s4, sS, r7, sw, r3, rL, sq, se, si, ta, sB, r2, sE, rV, sl, sM, sr, rN, sG, sJ, s5, td, rO, r9, sf, sO, sF, s9, sX, rR, sY, r_, rY = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
sK = tn
sD = tm_2("Config", "GymConfig")
sy = tm_2("Config", "CarryConfig")
so = tm_2("Gym", "GymAccess")
sh = tm_2("RegionRegistry")
if (r9 or sh or sh and r9) and (sX and sh and (sh or r7)) and ((r9 or sX) and (r9 or r9) or (not sh and not sX or not sX and not r7)) and (not sX or not r7 or (not r7 or not r9) or (r9 or not sX) and (r7 or sh) or (not r9 or not r9 or (r9 or not sh) or (not r9 or not r7 or not sX and not r7))) or not ((r9 or sh or sh and r9) and (sX and sh and (sh or r7)) and ((r9 or sX) and (r9 or r9) or (not sh and not sX or not sX and not r7)) and (not sX or not r7 or (not r7 or not r9) or (r9 or not sX) and (r7 or sh) or (not r9 or not r9 or (r9 or not sh) or (not r9 or not r7 or not sX and not r7)))) then
    sb = tm_2("Placement", "PyramidRuntime")
    r6 = tm_2("Placement", "PyramidGeometry")
else
    tm_2 = r6("Placement", "PyramidRuntime")
    sb = r6("Placement", "PyramidGeometry")
end
rX = tm_2("Config", "PyramidConfig")
rP = {}
s6 = fn1055
st = nil
if ((sl or not sl) and (sl and not sG) or (not s1 or not sl) and (sG and not C4_4_3)) and not ((sl or not sl) and (sl and not sG) or (not s1 or not sl) and (sG and not C4_4_3)) then
    rT = fn58
    sn = {}
    su = fn611
    tc = fn948
    rQ.Status = "Idle"
    rQ.PickedUp = 0
    rQ.Placed = 0
    rQ.TrainSpeed = false
    rQ.TrainStrength = false
    rQ.SpeedStation = "1"
    rQ.StrengthStation = "1"
    rQ.AutoPickup = false
    rQ.AutoBuild = false
    rQ.CarryTarget = 9
    rQ.Capacity = 1
    rQ.AutoExecute = false
    r5 = {}
else
    sn = fn58
    rQ = {}
    tc = fn611
    r5 = fn948
    rT.Status = "Idle"
    rT.PickedUp = 0
    rT.Placed = 0
    rT.TrainSpeed = false
    rT.TrainStrength = false
    rT.SpeedStation = "1"
    rT.StrengthStation = "1"
    rT.AutoPickup = false
    rT.AutoBuild = false
    rT.CarryTarget = 9
    rT.Capacity = 1
    rT.AutoExecute = false
    su = {}
end
sm = fn1090
r0 = "#FFB3D9"
rS = "#FF5FA8"
te = "#9C6480"
s4 = fn1044
sS = fn743
r7 = fn809
sw = fn138
r3 = fn259
if sG and sn and (r7 and not rQ) or (r7 or not sn) and (r7 and sG) or (sG and sO or (not rQ or r7) or (not sG or sn) and (not r7 or not sn)) or not (sG and sn and (r7 and not rQ) or (r7 or not sn) and (r7 and sG) or (sG and sO or (not rQ or r7) or (not sG or sn) and (not r7 or not sn))) then
    rL = fn30
    sq = fn936
    r1.GetStatus = fn897
    r1.StationValues = fn492
    se = fn1134
else
    r1 = fn30
    se = fn936
    sq.GetStatus = fn897
    sq.StationValues = fn492
    rL = fn1134
end
r1.Support = fn41
si = fn1096
ta = fn67
sB = fn896
r2 = fn868
sE = fn635
rV = fn422
sl = fn783
sM = fn272
sr = fn518
rW = 0
rN = fn513
sG = fn738
sV = 0
sQ = "Strength"
sJ = fn515
s5 = fn156
td = fn507
rO = fn213
r9 = fn884
sf = fn540
sO = function(eS)
    local xf
    local xd
    local xe
    xd = nil
    xe = nil
    xf = nil
    local xg = s6(r6)
    local xh = s6(rX)
    local xi = not xg
    local xi_3, xi_4, xi_6
    local xj = not eS or xi
    local xj_3, xj_4
    local xi_1 = not xh
    local xk = xj
    local xk_5
    local xr = if xk then 1 else 0
    local xp = 1871 * xr + 3447 * (1 - xr)
    local xq = 2408 * xr + 2874 * (1 - xr)
    if not ((xp * 1623 + xq * 1688 + xp * xq) % 16777213 == 11606705) then
        xk = xi_1
    end
    if xk then
        return nil
    end
    local xi_2 = not sT(eS.getCurrentLayer) or not sT(eS.isSlotFreeInReplica)
    if xi_2 then
        return nil
    end
    xi_3, xd = pcall(eS.getCurrentLayer, sj)
    local xj_1 = not xi_3 or type(xd) ~= "number"
    if xj_1 then
        return nil
    end
    xi_4, xe = pcall(eS.getLayerFolder, xd, sj)
    xe = xi_4 and xe or nil
    xi_6, xj_3 = pcall(xg.getLayerBlockCount, xd)
    local xk_1 = not xi_6 or type(xj_3) ~= "number" or xj_3 <= 0
    if xk_1 then
        return nil
    end
    local xi_7 = sf(eS)
    local xk_2 = xi_7 and xi_7:GetAttribute(xh.LayerPlacedAttribute)
    local xk_3 = type(xk_2) == "number" and math.clamp(math.floor(xk_2), 0, xj_3)
    local xm = xk_3 or 0
    xf = {}
    local function xk_4(ff)
        local w6_1
        local w5_1
        w5_1, w6_1 = pcall(eS.isSlotFreeInReplica, xe, xd, ff, xf)
        return w5_1 and w6_1 == true
    end
    local xm_1 = nil
    local xu = xm + 1
    while xu <= xj_3 do
        local xv = xu
        if xk_4(xv) then
            xm_1 = xv
            break
        end
        xu += 1
    end
    if not xm_1 then
        local xn_1 = math.min(xm, xj_3)
        local xz = 1
        while xz <= xn_1 do
            local xA = xz
            if xk_4(xA) then
                xm_1 = xA
                break
            end
            xz += 1
        end
    end
    if not xm_1 then
        return nil
    end
    xj_4, xk_5 = pcall(xg.getSlotCFrame, xd, xm_1)
    local xg_1 = not xj_4 or typeof(xk_5) ~= "CFrame"
    if xg_1 then
        return nil
    end
    local Position = xk_5.Position
    local xj_5 = xi_7 and xi_7:GetAttribute(xh.PlacementGenerationAttribute)
    return { layer = xd, slotIndex = xm_1, position = Position, generation = xj_5 or nil }
end
sF = fn765
s9 = fn346
s1 = "Collect"
if (not r_ or not r_ or r_ and not rR or (r_ or not rR or (not rR or rR))) and ((not rR and not r_ or not rR and not r_) and (not rR or not r_ or (rR or not r_))) or (rR or r_) and (r_ and r_) and (not r_ and not rR and (r_ or not rR)) and (rR or rR or rR and not rR or (rR and r_ or rR and r_)) or not ((not r_ or not r_ or r_ and not rR or (r_ or not rR or (not rR or rR))) and ((not rR and not r_ or not rR and not r_) and (not rR or not r_ or (rR or not r_))) or (rR or r_) and (r_ and r_) and (not r_ and not rR and (r_ or not rR)) and (rR or rR or rR and not rR or (rR and r_ or rR and r_))) then
    sX = fn1050
    rR = fn8
    sY = function(ge, gf, gg)
        rR(ge)
        local gi = {}
        su[ge] = gi
        task.spawn(function()
            local yb_2
            while true do
                local ya = (sH()) and su[ge] == gi
                local ya_2
                if ya then
                    ya_2, yb_2 = pcall(gg)
                    if not ya_2 then
                        sm(tostring(yb_2))
                    end
                    task.wait(gf)
                    continue
                end
                break
            end
        end)
    end
    sY("Capacity", 2, fn579)
    r_ = fn414
    rY = fn588
else
    r_ = fn1050
    sY = fn8
    rY = function(ge, gf, gg)
        rR(ge)
        local gi = {}
        su[ge] = gi
        task.spawn(function()
            local yb_1
            while true do
                local ya = (sH()) and su[ge] == gi
                local ya_1
                if ya then
                    ya_1, yb_1 = pcall(gg)
                    if not ya_1 then
                        sm(tostring(yb_1))
                    end
                    task.wait(gf)
                    continue
                end
                break
            end
        end)
    end
    rY("Capacity", 2, fn579)
    rR = fn414
    sX = fn588
end
r1.SetTrainSpeed = fn42
r1.SetTrainStrength = fn1116
r1.SetSpeedStation = fn689
r1.SetStrengthStation = fn633
r1.SetAutoPickup = fn687
r1.SetAutoBuild = fn815
r1.SetCarryTarget = fn1046
local C4_4_4 = (sT(queue_on_teleport)) and queue_on_teleport
local C4_1_4 = C4_4_4
local tF = if C4_1_4 then 1 else 0
local tD = 2294 * tF + 263 * (1 - tF)
local tE = 3674 * tF + 2919 * (1 - tF)
if not ((tD * 3271 + tE * 2133 + tD * tE) % 16777213 == 6991259) then
    local C4_4_5 = (sT(queueonteleport)) and queueonteleport
    C4_1_4 = C4_4_5
end
s8, connection, s0 = nil, nil, nil
s8 = C4_1_4
s0 = fn84
r1.SetAutoExecute = fn100
connection = rZ.OnTeleport:Connect(onOnTeleport)
r1.Track(fn467)
r1.Track(fn1123)
local function th_2()
    local CH, SaveManager, onDiscord, Library, Toggles, ThemeManager, Options, CO
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = Library.Toggles
    Options = Library.Options
    sP(r1, Library)
    CH = function(hS, hT)
        local yz = (sT(setclipboard)) and setclipboard
        local yA = yz
        if not yA then
            local yz_1 = (sT(toclipboard)) and toclipboard
            local yB = yz_1
            local yF = if yB then 1 else 0
            local yD = 3207 * yF + 1697 * (1 - yF)
            local yE = 3452 * yF + 1810 * (1 - yF)
            if not ((yD * 1181 + yE * 785 + yD * yE) % 16777213 == 790638) then
                yB = nil
            end
            yA = yB
        end
        local yz_2 = yA
        if not yz_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local yA_1 = pcall(yz_2, hS)
        if yA_1 then
            Library:Notify(hT)
        else
            Library:Notify("Failed to copy")
        end
    end
    onDiscord = function()
        CH(sW, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = sW, Copyable = true }, "|", tb, "|", s2 },
        Icon = 132608042600488,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    CO = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "gamepad-2"),
        Player = Window:AddTab("Player", "person-standing"),
        Settings = Window:AddTab("Settings", "settings")
    }
    local function CP_1(ib)
        local DiscordGroup = ib:AddLeftGroupbox("Discord", "message-circle")
        DiscordGroup:AddDiscordBox(nil, {
            Banner = 95892854151512,
            Avatar = 132608042600488,
            Title = "Ouroboros Hub",
            Subtitle = "Dupes, keyless scripts and updates",
            Status = "online",
            Accent = Color3.fromRGB(88, 101, 242),
            Link = sW,
            Buttons = {
                { Text = "Copy Invite", Icon = "copy", Copy = true },
                { Text = "Join Discord", Icon = "external-link", Func = onDiscord }
            }
        })
        return DiscordGroup
    end
    for k, v in CO do
        if k ~= "Info" then
            CP_1(v)
        end
    end
    local function CQ()
        local iL
        local il = r1.StationValues()
        local TrainingGroup = CO.Main:AddRightGroupbox("Training", "dumbbell")
        local Label = TrainingGroup:AddLabel(r1.GetStatus(), true)
        TrainingGroup:AddDivider()
        TrainingGroup:AddToggle("AutoTrainSpeed", {
            Text = "Auto Train Speed",
            Default = false,
            Tooltip = "Stands on the treadmill of the selected gym station.",
            Callback = function(iq)
                r1.SetTrainSpeed(iq)
            end
        })
        TrainingGroup:AddDropdown("SpeedStation", {
            Text = "Speed Station",
            Values = il,
            Default = 1,
            Multi = false,
            AllowNull = false,
            Callback = function(is)
                r1.SetSpeedStation(is)
            end
        })
        TrainingGroup:AddToggle("AutoTrainStrength", {
            Text = "Auto Train Strength",
            Default = false,
            Tooltip = "Uses the benchpress of the selected gym station.",
            Callback = function(iu)
                r1.SetTrainStrength(iu)
            end
        })
        TrainingGroup:AddDropdown("StrengthStation", {
            Text = "Strength Station",
            Values = il,
            Default = 1,
            Multi = false,
            AllowNull = false,
            Callback = function(iw)
                r1.SetStrengthStation(iw)
            end
        })
        local BlocksGroup = CO.Main:AddLeftGroupbox("Blocks", "boxes")
        BlocksGroup:AddToggle("AutoPickupBlocks", {
            Text = "Auto Pickup Blocks",
            Default = false,
            Tooltip = "Training toggles pause block work while they are on.",
            Callback = function(iz)
                r1.SetAutoPickup(iz)
            end
        })
        BlocksGroup:AddInput("CarryTarget", {
            Text = "Carry Capacity",
            Default = "9",
            Numeric = true,
            Finished = false,
            AllowEmpty = true,
            MaxLength = 2,
            Placeholder = "1 - 18",
            Tooltip = "Clamped to the capacity your strength currently allows.",
            Callback = function(iB)
                r1.SetCarryTarget(iB)
            end
        })
        BlocksGroup:AddToggle("AutoBuild", {
            Text = "Auto Build",
            Default = false,
            Callback = function(iD)
                r1.SetAutoBuild(iD)
            end
        })
        iL = task.spawn(function()
            while true do
                task.wait(0.5)
                if Library.Unloaded then
                    break
                end
                pcall(function()
                    Label:SetText(r1.GetStatus())
                end)
            end
        end)
        r1.Track(function()
            local yK = if coroutine.status(iL) ~= "dead" then 1 else 0
            if yK == 1 then
                pcall(task.cancel, iL)
            end
        end)
    end
    CQ()
    local function CP_2()
        local y7
        local y1
        local y8
        local y4
        y1 = nil
        y4 = nil
        y7 = nil
        y8 = nil
        local Label3, Label2, y2, y3, Label, y6, y9, za, zb
        y8 = function(iP)
            return (tostring(iP):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        y4 = function(iR, iS)
            return string.format('<font color="%s">%s</font>', iS, y8(iR))
        end
        zb = function(iV, iW, iX)
            return string.format("<b>%s</b> %s %s", iV, y4("-", "#5a6070"), y4(iW, iX))
        end
        local zc = "#8b93a3"
        local zd = "#6ec1ff"
        y2 = "#e8a34d"
        y9 = "#7fd47f"
        local ze = r1.Support()
        local zf = #ze == 0 and "ready"
        local zg = zf or "limited: " .. table.concat(ze, ", ")
        y6 = "Unknown"
        pcall(function()
            local yM_1
            local yL_1
            local yS = if sT(identifyexecutor) then 1 else 0
            if yS == 1 then
                yM_1, yL_1 = identifyexecutor()
                local yN = yM_1 ~= ""
                local yO = type(yM_1) == "string" and yN
                if yO then
                    local yN_1 = type(yL_1) == "string" and yL_1 ~= "" and yM_1 .. " " .. yL_1
                    local yL_2 = yN_1
                    local yS_1 = if yL_2 then 1 else 0
                    local yQ = 77 * yS_1 + 203 * (1 - yS_1)
                    local yR = 3043 * yS_1 + 415 * (1 - yS_1)
                    if not ((yQ * 703 + yR * 3876 + yQ * yR) % 16777213 == 12083110) then
                        yL_2 = yM_1
                    end
                    y6 = yL_2
                end
            end
        end)
        y1 = os.clock()
        za = function()
            local yT = math.floor(os.clock() - y1)
            if yT < 60 then
                return yT .. "s"
            elseif yT < 3600 then
                return string.format("%dm %ds", yT // 60, yT % 60)
            else
                return string.format("%dh %dm", yT // 3600, yT % 3600 // 60)
            end
        end
        local UserGroup = CO.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = rZ, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(zb("User", rZ.DisplayName .. " @" .. rZ.Name, y9), true)
        UserGroup:AddLabel(zb("UserId", tostring(rZ.UserId), zd), true)
        UserGroup:AddLabel(zb("Executor", y6 .. "  " .. zg, y9), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(zb("Session", za(), y2), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                CH(rZ.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                CH("https://www.roblox.com/users/" .. tostring(rZ.UserId) .. "/profile", "Copied profile link")
            end
        })
        local DiscordGroup = CO.Info:AddRightGroupbox("Discord", "message-circle")
        DiscordGroup:AddDiscordBox(nil, {
            Banner = 95892854151512,
            Avatar = 132608042600488,
            Title = "Ouroboros Hub",
            Subtitle = "Dupes, keyless scripts and updates",
            Status = "online",
            Accent = Color3.fromRGB(88, 101, 242),
            Link = sW,
            Buttons = {
                { Text = "Copy Invite", Icon = "copy", Copy = true },
                { Text = "Join Discord", Icon = "external-link", Func = onDiscord }
            }
        })
        local SessionGroup = CO.Info:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(zb("Game", tb, zd), true)
        Label2 = SessionGroup:AddLabel(zb("Players", "0/0", y9), true)
        y3 = tostring(game.JobId)
        local zd_1 = #y3 > 18 and string.sub(y3, 1, 18) .. "..."
        local zf_2 = zd_1
        local zn = if zf_2 then 1 else 0
        local zl = 236 * zn + 3339 * (1 - zn)
        local zm = 2967 * zn + 771 * (1 - zn)
        if not ((zl * 971 + zm * 3456 + zl * zm) % 16777213 == 11183320) then
            zf_2 = y3
        end
        local zd_2 = zf_2
        SessionGroup:AddLabel(zb("Job", zd_2, zc), true)
        Label = SessionGroup:AddLabel(zb("Ping", "0 ms", y2), true)
        SessionGroup:AddDivider()
        SessionGroup:AddButton({
            Text = "Rejoin Place",
            Func = function()
                sk:Teleport(game.PlaceId, rZ)
            end
        })
        SessionGroup:AddButton({
            Text = "Copy Job ID",
            Func = function()
                CH(y3, "Copied Job ID")
            end
        })
        y7 = task.spawn(function()
            local yW_1
            local yV_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(zb("Session", za(), y2))
                Label2:SetText(zb("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), y9))
                yV_1, yW_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local yV_2 = yV_1 and yW_1 .. " ms" or "n/a"
                Label:SetText(zb("Ping", yV_2, y2))
            end
        end)
        r1.Track(function()
            if coroutine.status(y7) ~= "dead" then
                pcall(task.cancel, y7)
            end
        end)
        local SocialsGroup = CO.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                CH(sR, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                CH(sL, "Copied website link")
            end
        })
    end
    CP_2()
    local function CP_3()
        local kb
        local ke
        local kc
        local kd
        local MovementGroup = CO.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = CO.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        ke = {}
        kc = {}
        local ka = {}
        kb = {}
        kd = {}
        local function kf()
            for k, v in kb do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(kb)
        end
        local function kj()
            for k, v in kc do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(kc)
        end
        local function kn()
            for k, v in kd do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(kd)
        end
        local function kr(ks)
            if not ks:IsA("ProximityPrompt") then
                return
            end
            if ke[ks] == nil then
                ke[ks] = {
                    HoldDuration = ks.HoldDuration,
                    MaxActivationDistance = ks.MaxActivationDistance,
                    RequiresLineOfSight = ks.RequiresLineOfSight
                }
            end
            ks.HoldDuration = 0
            ks.MaxActivationDistance = 50
            ks.RequiresLineOfSight = false
        end
        local function kv()
            for k, v in ke do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(ke)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                kn()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                kj()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                kf()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in r8:QueryDescendants("ProximityPrompt") do
                    pcall(kr, v)
                end
            else
                kv()
            end
        end)
        table.insert(ka, r8.DescendantAdded:Connect(function(kO)
            if Toggles.InstantProximityPrompt.Value then
                kr(kO)
            end
        end))
        table.insert(ka, sZ.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = rZ.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if kb[v] == nil then
                        kb[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(ka, sU.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = rZ.Character
            local Ae = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and Ae then
                Ae:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(ka, sZ.RenderStepped:Connect(function(k9)
            if Library.Unloaded then
                return
            end
            local Character = rZ.Character
            local An = Character and Character:FindFirstChildOfClass("Humanoid")
            local Ao = Character
            if Ao then
                Ao = Character:FindFirstChild("HumanoidRootPart")
            end
            local Am_1 = Ao
            local CurrentCamera = r8.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and An then
                if kc[An] == nil then
                    kc[An] = An.WalkSpeed
                end
                An.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and Am_1 and An and CurrentCamera then
                if kd[An] == nil then
                    kd[An] = An.PlatformStand
                end
                An.PlatformStand = true
                local Ao_4 = Vector3.zero
                if not sU:GetFocusedTextBox() then
                    if sU:IsKeyDown(Enum.KeyCode.W) then
                        Ao_4 += CurrentCamera.CFrame.LookVector
                    end
                    if sU:IsKeyDown(Enum.KeyCode.S) then
                        Ao_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if sU:IsKeyDown(Enum.KeyCode.A) then
                        Ao_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if sU:IsKeyDown(Enum.KeyCode.D) then
                        Ao_4 += CurrentCamera.CFrame.RightVector
                    end
                    if sU:IsKeyDown(Enum.KeyCode.Space) then
                        Ao_4 += Vector3.new(0, 1, 0)
                    end
                    if sU:IsKeyDown(Enum.KeyCode.LeftControl) then
                        Ao_4 -= Vector3.new(0, 1, 0)
                    end
                end
                Am_1.AssemblyLinearVelocity = Vector3.zero
                if Ao_4.Magnitude > 0 then
                    Am_1.CFrame = Am_1.CFrame + Ao_4.Unit * Options.FlySpeed.Value * k9
                end
            end
        end))
        r1.Track(function()
            for k, v in ka do
                v:Disconnect()
            end
            kf()
            kj()
            kn()
            kv()
        end)
    end
    CP_3()
    local function CP_4()
        local lr = {}
        local lq = {}
        local ls
        local lv = 0
        local lt = false
        local lu = 0
        local lw = os.clock()
        local MenuGroup = CO.Settings:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        local Label = MenuGroup:AddLabel("AFK triggers: 0")
        local function lA()
            local CurrentCamera
            CurrentCamera = r8.CurrentCamera
            local AD = not CurrentCamera or not sT(sN.CaptureController) or not sT(sN.ClickButton2)
            if AD then
                return false
            end
            local AD_1 = pcall(function()
                sN:CaptureController()
                sN:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not AD_1 then
                return false
            end
            lv += 1
            lw = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. lv)
            end)
            return true
        end
        local function lS(lT)
            pcall(function()
                sz:SetGameplayPausedNotificationEnabled(not lT)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = ss:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not lT
                end
            end)
            if not lT then
                return
            end
            pcall(function()
                if sethiddenproperty then
                    sethiddenproperty(rZ, "GameplayPaused", false)
                else
                    rZ.GameplayPaused = false
                end
            end)
        end
        local function l7(l8)
            local AJ = l8.ClassName == "ParticleEmitter" or l8.ClassName == "Trail" or l8.ClassName == "Smoke" or l8.ClassName == "Fire"
            local AN = if AJ then 1 else 0
            local AL = 3563 * AN + 2678 * (1 - AN)
            local AM = 2387 * AN + 788 * (1 - AN)
            if not ((AL * 1486 + AM * 1520 + AL * AM) % 16777213 == 650526) then
                AJ = l8.ClassName == "Sparkles"
            end
            local AN_1 = if AJ then 1 else 0
            local AL_1 = 3487 * AN_1 + 1047 * (1 - AN_1)
            local AM_1 = 1105 * AN_1 + 1431 * (1 - AN_1)
            if not ((AL_1 * 2748 + AM_1 * 502 + AL_1 * AM_1) % 16777213 == 13990121) then
                AJ = l8.ClassName == "Explosion"
            end
            if not AJ then
                AJ = l8.ClassName == "Beam"
            end
            if AJ then
                if lr[l8] == nil then
                    lr[l8] = l8.Enabled
                end
                pcall(function()
                    l8.Enabled = false
                end)
            end
        end
        local function mc()
            for k, v in lr do
                local AS = k
                local AU = v
                if AS.Parent then
                    pcall(function()
                        AS.Enabled = AU
                    end)
                end
            end
            table.clear(lr)
            if ls then
                pcall(function()
                    settings().Rendering.QualityLevel = ls.Quality
                end)
                sd.GlobalShadows = ls.Shadows
                sd.FogEnd = ls.Fog
                ls = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(mn)
                pcall(function()
                    sZ:Set3dRenderingEnabled(not mn)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(ms)
                if ms then
                    if not ls then
                        ls = { Quality = settings().Rendering.QualityLevel, Shadows = sd.GlobalShadows, Fog = sd.FogEnd }
                    end
                    pcall(function()
                        settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
                    end)
                    sd.GlobalShadows = false
                    sd.FogEnd = 9000000000
                    for k, v in r8:QueryDescendants("ParticleEmitter, Trail, Smoke, Fire, Sparkles, Beam") do
                        l7(v)
                    end
                else
                    mc()
                end
            end
        })
        MenuGroup:AddToggle("HideUIOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddToggle("AutoExecute", {
            Text = "Auto Execute",
            Default = false,
            Tooltip = "Re-runs this script after a teleport, server hop or rejoin.",
            Callback = function(mA)
                local A8_1
                local A7_1
                A7_1, A8_1 = r1.SetAutoExecute(mA)
                if not A7_1 then
                    Library:Notify(tostring(A8_1))
                end
            end
        })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        table.insert(lq, rZ.Idled:Connect(function()
            if Toggles.AntiAfk.Value then
                lA()
            end
        end))
        local mR = task.spawn(function()
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                local Bb = Toggles.AntiAfk.Value and os.clock() - lw >= 60
                if Bb then
                    lA()
                end
                if Toggles.AntiGameplayPause.Value then
                    lS(true)
                end
            end
        end)
        Toggles.AntiGameplayPause:OnChanged(function(mS)
            lS(mS)
        end)
        lS(true)
        local function mU()
            local Bq
            local Br = lt
            local Bv = if Br then 1 else 0
            local Bt = 1772 * Bv + 856 * (1 - Bv)
            local Bu = 1353 * Bv + 2677 * (1 - Bv)
            if not ((Bt * 3657 + Bu * 3719 + Bt * Bu) % 16777213 == 13909527) then
                Br = not Toggles.AutoReconnect.Value
            end
            if Br then
                return
            end
            lt = true
            lu += 1
            Bq = lu
            task.spawn(function()
                for i = 1, 2 do
                    local Bp = i
                    if Library.Unloaded or not Toggles.AutoReconnect.Value or Bq ~= lu then
                        break
                    end
                    local wait = task.wait
                    local Bk_1 = Bp == 1 and 1 or 3
                    wait(Bk_1)
                    if Bq ~= lu then
                        break
                    end
                    pcall(function()
                        if Bp == 1 and game.JobId ~= "" then
                            sk:TeleportToPlaceInstance(game.PlaceId, game.JobId, rZ)
                        else
                            sk:Teleport(game.PlaceId, rZ)
                        end
                    end)
                end
                lt = false
            end)
        end
        table.insert(lq, sz.ErrorMessageChanged:Connect(function()
            if Toggles.AutoReconnect.Value then
                mU()
            end
        end))
        pcall(function()
            table.insert(lq, sk.TeleportInitFailed:Connect(function(nk)
                if nk == rZ and Toggles.AutoReconnect.Value then
                    mU()
                end
            end))
        end)
        local ScriptGroup = CO.Settings:AddLeftGroupbox("Script", "scroll-text")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        r1.Track(function()
            for k, v in lq do
                v:Disconnect()
            end
            local BI = if coroutine.status(mR) ~= "dead" then 1 else 0
            if BI == 1 then
                pcall(task.cancel, mR)
            end
            mc()
            pcall(function()
                sZ:Set3dRenderingEnabled(true)
            end)
        end)
    end
    CP_4()
    local function CP_5()
        local CB, CC, CD, CE
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("MyScriptHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(CO.Settings)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/BuildThePyramid")
        local CF = SaveManager:BuildConfigSection(CO.Settings)
        CE = function(nI, nJ)
            local BK_1 = (nI == "Toggle" and Toggles or Options)[nJ]
            local BJ_2 = type(BK_1) == "table" and BK_1.Type == nI
            return BJ_2 and BK_1 or nil
        end
        CC = function(nS, nT)
            local Type = nT.Type
            if Type == "Toggle" then
                return { idx = nS, type = "Toggle", value = nT.Value == true }
            elseif Type == "Slider" then
                return { idx = nS, type = "Slider", value = tostring(nT.Value) }
            elseif Type == "Dropdown" then
                return { idx = nS, type = "Dropdown", multi = nT.Multi == true, value = nT.Value }
            elseif Type == "Input" then
                local BR = nT.Value or ""
                return { idx = nS, type = "Input", text = tostring(BR) }
            elseif Type == "ColorPicker" then
                return { idx = nS, type = "ColorPicker", value = nT.Value:ToHex(), transparency = nT.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = nS,
                    type = "KeyPicker",
                    mode = nT.Mode,
                    key = nT.Value,
                    modifiers = nT.Modifiers,
                    toggled = nT.Toggled
                }
            else
                return nil
            end
        end
        CB = function()
            local BX = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local BY = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if BY then
                        local BY_1 = CC(k, v)
                        if BY_1 then
                            BX[#BX + 1] = BY_1
                        end
                    end
                end
            end
            table.sort(BX, function(n2, n3)
                if n2.type ~= n3.type then
                    return n2.type < n3.type
                end
                return n2.idx < n3.idx
            end)
            return { objects = BX }
        end
        CD = function(n5)
            local Cg
            Cg = nil
            local Ch = type(n5) ~= "table"
            local Cl = if Ch then 1 else 0
            local Cj = 2667 * Cl + 1750 * (1 - Cl)
            local Ck = 3761 * Cl + 1681 * (1 - Cl)
            if not ((Cj * 2413 + Ck * 1454 + Cj * Ck) % 16777213 == 5157339) then
                Ch = type(n5.idx) ~= "string"
            end
            if not Ch then
                Ch = type(n5.type) ~= "string"
            end
            if not Ch then
                Ch = SaveManager.Ignore[n5.idx]
            end
            if Ch then
                return false
            end
            Cg = CE(n5.type, n5.idx)
            if not Cg then
                return false
            end
            local Ch_1 = pcall(function()
                if n5.type == "Input" then
                    if type(n5.text) ~= "string" then
                        return
                    end
                    Cg:SetValue(n5.text)
                elseif n5.type == "ColorPicker" then
                    Cg:SetValueRGB(Color3.fromHex(n5.value), n5.transparency)
                elseif n5.type == "KeyPicker" then
                    Cg:SetValue({ n5.key, n5.mode, n5.modifiers })
                    if n5.mode == "Toggle" and n5.toggled ~= nil then
                        Cg.Toggled = n5.toggled
                        Cg:Update()
                    end
                else
                    Cg:SetValue(n5.value)
                end
            end)
            return Ch_1
        end
        CF:AddDivider()
        CF:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        CF:AddButton("Export Config to Clipboard", function()
            local Cn_1
            local Cm_1
            Cm_1, Cn_1 = pcall(sI.JSONEncode, sI, CB())
            if Cm_1 then
                local Cm_2 = (sT(setclipboard)) and setclipboard
                local Co = Cm_2
                if not Co then
                    local Cm_3 = (sT(toclipboard)) and toclipboard
                    Co = Cm_3 or nil
                end
                local Cm_4 = Co
                local Co_1 = type(Cm_4) == "function" and pcall(Cm_4, Cn_1)
                if Co_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        CF:AddButton("Import Config from Clipboard Text", function()
            local Ct_1
            local Cr = Options.SaveManager_ImportSource.Value or ""
            local Cr_1
            local Cs = tostring(Cr):match("^%s*(.-)%s*$")
            if Cs == "" then
                Library:Notify("Paste a config first")
                return
            end
            if #Cs > 262144 then
                Library:Notify("Config is too large")
                return
            end
            Cr_1, Ct_1 = pcall(sI.JSONDecode, sI, Cs)
            local Cs_1 = not Cr_1 or type(Ct_1) ~= "table" or type(Ct_1.objects) ~= "table"
            if Cs_1 then
                Library:Notify("Invalid config payload")
                return
            end
            if #Ct_1.objects > 2048 then
                Library:Notify("Config has too many records")
                return
            end
            local Cr_2 = 0
            local Cs_2 = 0
            for i, v in ipairs(Ct_1.objects) do
                if CD(v) then
                    Cs_2 += 1
                else
                    Cr_2 += 1
                end
            end
            Options.SaveManager_ImportSource:SetValue("")
            Library:Notify(string.format("Imported %d settings (%d skipped)", Cs_2, Cr_2), 6)
        end)
        SaveManager:LoadAutoloadConfig()
        if Toggles.HideUIOnStart and Toggles.HideUIOnStart.Value then
            pcall(function()
                Library:Toggle(false)
            end)
        end
    end
    CP_5()
    if Options.SpeedStation then
        r1.SetSpeedStation(Options.SpeedStation.Value)
    end
    if Options.StrengthStation then
        r1.SetStrengthStation(Options.StrengthStation.Value)
    end
    if Options.CarryTarget then
        r1.SetCarryTarget(Options.CarryTarget.Value)
    end
    if Toggles.AutoTrainSpeed then
        r1.SetTrainSpeed(Toggles.AutoTrainSpeed.Value)
    end
    if Toggles.AutoTrainStrength then
        r1.SetTrainStrength(Toggles.AutoTrainStrength.Value)
    end
    if Toggles.AutoPickupBlocks then
        r1.SetAutoPickup(Toggles.AutoPickupBlocks.Value)
    end
    if Toggles.AutoBuild then
        r1.SetAutoBuild(Toggles.AutoBuild.Value)
    end
    if Toggles.AutoExecute then
        r1.SetAutoExecute(Toggles.AutoExecute.Value)
    end
end
tj_10, tk_8 = pcall(th_2)
if not tj_10 then
    local C4_1_5 = 3
    repeat
        local Dp = bit32.rrotate(bit32.bxor(bit32.lrotate(C4_1_5, 14), string.byte(tostring(C4_1_5))), 27)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Dp, 1297984885), 688329788), (bit32.bxor(bit32.band(Dp, 2996982410), 2620423741))), 688329788), 2620423741) ~= Dp then
            warn("[Ouroboros] " .. tostring(r1))
            pcall(tk_8.Unload)
            error(r1, 0)
        else
            warn("[Ouroboros] " .. tostring(tk_8))
            pcall(r1.Unload)
            error(tk_8, 0)
        end
        C4_1_5 = (C4_1_5 + 3) % 8
    until (C4_1_5 * 7 + 1) % 8 == 3
end
