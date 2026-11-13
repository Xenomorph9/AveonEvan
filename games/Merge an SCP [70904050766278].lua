local fns = {}
local t_
local uH
local tH
local uo
local u5
local connection2
local uu
local PlayerGui
local tT
local uA
local worker
local uh
local MapCenter
local tZ
local uG
local tG
local un
local u4
local tM
local ut
local ua
local tS
local uz
local tz
local ug
local uY
local tY
local uF
local tF
local um
local u3
local t3
local uL
local tL
local t9
local uR
local uy
local ty
local uf
local tX
local Toggles
local tE
local t2
local tK
local ur
local t8
local uQ
local tQ
local Options
local tx
local uW
local tW
local CoreGui
local tD
local LocalPlayer
local t1
local uJ
local tJ
local t7
local uP
local tw
local connection
local uV
local tV
local uC
local tC
local uj
local u0
local t0
local tI
local u6
local t6
local uO
local tO
local uv
local Players
local uU
local tU
local uB
local tB
local ui
local u_
function fns.fn13(fh)
    local z3 = fh == ""
    local z4 = type(fh) ~= "string" or z3
    if z4 or fh == "None" then
        return nil
    end
    return Players:FindFirstChild(fh)
end
function fns.fn17()
    local yG_6
    local yC_1, yC_2, yC_5, yC_6, yC_8
    local yB_1, yB_2, yB_5, yB_6, yB_8
    local yF_12
    local yD_14, yD_21
    if tU.LaunchEnabled then
        return false
    end
    local yA = tE() or u4()
    local yA_1, yA_2, yA_15, yA_16, yA_24, yA_27
    if yA then
        uP()
        if not tI() then
            return false
        end
        yC_1, yB_1, yA_1 = tM()
        local yD_1 = tS("CarryId") or 0
        if yD_1 ~= 0 then
            local yD_2 = tS("CarryTier")
            local yF_1 = type(yD_2) == "number" and yD_2 + 1 <= tG() and tw(yD_2, yD_1)
            local yF_2 = yF_1 or nil
            if yD_14 then
                return uR(yF_2)
            end
            local yK_2 = if not tD() then 1 else 0
            if yK_2 == 1 then
                return false
            end
            yC_2, yB_2, yA_2 = tM()
            if not (yC_2 and yB_2) then
                return false
            end
            local yA_4 = select(1, u5())
            if yA_24 then
                local yD_4 = tV(yC_2)
                local yE_4 = tV(yB_2)
                local yF_3 = yD_4 and Vector3.new(yD_4.X - yA_4.Position.X, 0, yD_4.Z - yA_4.Position.Z).Magnitude
                if yF_12 then
                    local Magnitude = Vector3.new(yE_4.X - yA_4.Position.X, 0, yE_4.Z - yA_4.Position.Z).Magnitude
                end
                if yD_21 < yG_6 then
                    yC_2 = yB_2
                end
            end
            if not ui(yC_5) then
                return false
            elseif not tI() then
                return false
            else
                local yA_6 = tS("CarryId") or 0
                if not yA_27 then
                    local yD_7 = yC_2:GetAttribute("Id") or yA_6
                end
                if yA_27 then
                    if yB_8 ~= 0 then
                        tD()
                    end
                    return false
                end
                local yA_8 = tS("CarryTier") or yC_2:GetAttribute("Tier")
                local yC_3 = tw(yA_8, yA_6)
                if not yC_8 then
                    tD()
                    return false
                end
                return uR(yC_3)
            end
        else
            if not (yC_1 and yB_1) then
                return false
            end
            local yA_10 = select(1, u5())
            if yA_24 then
                local yD_8 = tV(yC_1)
                local yE_5 = tV(yB_1)
                local yF_5 = yD_8 and Vector3.new(yD_8.X - yA_10.Position.X, 0, yD_8.Z - yA_10.Position.Z).Magnitude
                if yF_12 then
                    local Magnitude = Vector3.new(yE_5.X - yA_10.Position.X, 0, yE_5.Z - yA_10.Position.Z).Magnitude
                end
                if yD_21 < yG_6 then
                    yC_1 = yB_1
                end
            end
            if not ui(yC_5) then
                return false
            elseif not tI() then
                return false
            else
                local yA_12 = tS("CarryId") or 0
                if not yA_27 then
                    local yD_11 = yC_1:GetAttribute("Id") or yA_12
                end
                if yA_27 then
                    if yB_8 ~= 0 then
                        tD()
                    end
                    return false
                end
                local yA_14 = tS("CarryTier") or yC_1:GetAttribute("Tier")
                local yC_4 = tw(yA_14, yA_12)
                if not yC_8 then
                    tD()
                    return false
                end
                return uR(yC_4)
            end
        end
    else
        yC_5, yB_5, yA_15 = tM()
        local yD_12 = tS("CarryId") or 0
        if yD_12 ~= 0 then
            local yD_13 = tS("CarryTier")
            local yF_7 = type(yD_13) == "number" and yD_13 + 1 <= tG() and tw(yD_13, yD_12)
            local yE_7 = yF_7 or nil
            local yE_8 = yE_7 ~= nil
            if yE_8 then
                local yG_4 = yA_15 == nil
                local yK_5 = if yG_4 then 1 else 0
                local yI_4 = 159 * yK_5 + 1552 * (1 - yK_5)
                local yJ_4 = 2476 * yK_5 + 3360 * (1 - yK_5)
                if not ((yI_4 * 2529 + yJ_4 * 1065 + yI_4 * yJ_4) % 16777213 == 3432735) then
                    yG_4 = yD_13 <= yA_15
                end
                yE_8 = yG_4
            end
            yD_14 = yE_8
            if yD_14 then
                return uR(yE_7)
            end
            local yK_6 = if not tD() then 1 else 0
            if yK_6 == 1 then
                return false
            end
            yC_6, yB_6, yA_16 = tM()
            if not (yC_6 and yB_6) then
                return false
            end
            local yA_18 = select(1, u5())
            if yA_24 then
                local yD_15 = tV(yC_6)
                local yE_9 = tV(yB_6)
                local yF_9 = yD_15 and Vector3.new(yD_15.X - yA_18.Position.X, 0, yD_15.Z - yA_18.Position.Z).Magnitude
                if yF_12 then
                    local Magnitude = Vector3.new(yE_9.X - yA_18.Position.X, 0, yE_9.Z - yA_18.Position.Z).Magnitude
                end
                if yD_21 < yG_6 then
                    yC_6 = yB_6
                end
            end
            if not ui(yC_5) then
                return false
            elseif not tI() then
                return false
            else
                local yA_20 = tS("CarryId") or 0
                if not yA_27 then
                    local yD_18 = yC_6:GetAttribute("Id") or yA_20
                end
                if yA_27 then
                    if yB_8 ~= 0 then
                        tD()
                    end
                    return false
                end
                local yA_22 = tS("CarryTier") or yC_6:GetAttribute("Tier")
                local yC_7 = tw(yA_22, yA_20)
                if not yC_8 then
                    tD()
                    return false
                end
                return uR(yC_7)
            end
        else
            if not (yC_5 and yB_5) then
                return false
            end
            yA_24 = select(1, u5())
            if yA_24 then
                local yD_19 = tV(yC_5)
                local yE_10 = tV(yB_5)
                local yF_11 = yD_19 and Vector3.new(yD_19.X - yA_24.Position.X, 0, yD_19.Z - yA_24.Position.Z).Magnitude
                local yD_20 = yF_11 or math.huge
                yF_12 = yE_10
                yG_6 = yD_20
                if yF_12 then
                    yF_12 = Vector3.new(yE_10.X - yA_24.Position.X, 0, yE_10.Z - yA_24.Position.Z).Magnitude
                end
                local yA_25 = yF_12
                local yK_8 = if yA_25 then 1 else 0
                local yI_6 = 1328 * yK_8 + 3345 * (1 - yK_8)
                local yJ_6 = 2968 * yK_8 + 2360 * (1 - yK_8)
                if not ((yI_6 * 2183 + yJ_6 * 3793 + yI_6 * yJ_6) % 16777213 == 1320939) then
                    yA_25 = math.huge
                end
                yD_21 = yA_25
                if yD_21 < yG_6 then
                    yC_5 = yB_5
                end
            end
            if not ui(yC_5) then
                return false
            elseif not tI() then
                return false
            else
                local yA_26 = tS("CarryId") or 0
                yB_8 = yA_26
                yA_27 = yB_8 == 0
                if not yA_27 then
                    local yD_22 = yC_5:GetAttribute("Id") or yB_8
                    yA_27 = yB_8 ~= yD_22
                end
                if yA_27 then
                    if yB_8 ~= 0 then
                        tD()
                    end
                    return false
                end
                local yA_28 = tS("CarryTier") or yC_5:GetAttribute("Tier")
                yC_8 = tw(yA_28, yB_8)
                if not yC_8 then
                    tD()
                    return false
                end
                return uR(yC_8)
            end
        end
    end
end
function fns.fn32()
    connection:Disconnect()
    connection2:Disconnect()
end
function fns.fn35(h3, h4)
    local BE_1
    local BD_1
    if type(setclipboard) == "function" then
        BD_1 = setclipboard
    else
        if type(toclipboard) == "function" then
            BE_1 = toclipboard
        else
            BE_1 = nil
        end
        BD_1 = BE_1
    end
    local BE_2 = BD_1
    if type(BE_2) ~= "function" then
        uJ:Notify("Clipboard is unavailable")
        return
    end
    local BD_2 = pcall(BE_2, h3)
    if BD_2 then
        uJ:Notify(h4)
    else
        uJ:Notify("Failed to copy")
    end
end
function fns.fn56(eK, eL)
    local zq = tB.Morphs.List[eK]
    if type(zq) ~= "table" then
        return false
    elseif eL[eK] then
        return true
    elseif zq.vip then
        return tS("OwnsVIP") == true
    else
        local task = zq.task
        if type(task) ~= "table" then
            return false
        elseif task.type == "rebirths" then
            local zq_1 = tS("Rebirths") or 0
            return zq_1 >= (task.n or 0)
        elseif task.type == "index" then
            local zq_2 = tz()
            local zs_2 = task.n
            local zw = if zs_2 then 1 else 0
            local zu = 3212 * zw + 2653 * (1 - zw)
            local zv = 2549 * zw + 379 * (1 - zw)
            if not ((zu * 3872 + zv * 2359 + zu * zv) % 16777213 == 9860130) then
                zs_2 = 0
            end
            return zq_2 >= zs_2
        else
            return false
        end
    end
end
function fns.fn65(fL)
    local Ar = uW(fL)
    local As = uH(Ar)
    if typeof(As) ~= "Vector3" then
        return false
    elseif not uU() then
        return false
    else
        local Ar_1 = not tI()
        if not Ar_1 then
            local At_1 = tS("CarryId") or 0
            Ar_1 = At_1 == 0
        end
        if Ar_1 then
            return false
        end
        local Ar_2 = ug(uu, As)
        if Ar_2 == "ok" then
            t2(8)
            return true
        end
        if Ar_2 == "reloading" or Ar_2 == "busy" then
            task.wait(3)
        end
        return false
    end
end
function fns.onAutoRebirth(jQ)
    tT.SetAutoRebirth(jQ == true)
end
function fns.onPlayerRemoving()
    task.defer(worker)
end
function fns.fn108()
    local za = {}
    local zc = tS("MorphsOwned") or ""
    for k in string.gmatch(zc, "[^,]+") do
        za[k] = true
    end
    return za
end
function fns.onAutoMerge(jO)
    tT.SetAutoMerge(jO == true)
end
function fns.fn119(cH, cI)
    local xE = os.clock() + cI
    while true do
        local xF = tI() and os.clock() < xE
        if not xF then
            local xE_1 = (tS("CarryId"))
            local xJ = if xE_1 then 1 else 0
            local xH = 1030 * xJ + 218 * (1 - xJ)
            local xI = 3326 * xJ + 3219 * (1 - xJ)
            if not ((xH * 909 + xI * 2255 + xH * xI) % 16777213 == 11862180) then
                xE_1 = 0
            end
            return xE_1 == cH
        end
        local xF_1 = tS("CarryId") or 0
        if xF_1 == cH then
            break
        end
        task.wait()
    end
    return true
end
function fns.onAutoLockBase(j6)
    tT.SetAutoLock(j6 == true)
end
function fns.fn183()
    gethui = t3
end
function fns.fn188(d9)
    local yL = tS(d9.attr) or 1
    return yL
end
function fns.fn208()
    if u_("AutoBuyUpgrades") then
        tT.SetAutoBuyUpgrades(true, uz(Options.AutoBuyUpgradeTarget))
    end
end
local function worker2()
    while true do
        local BA = tI() and uJ and not uJ.Unloaded
        if BA then
            uC()
            task.wait(1)
            continue
        end
        break
    end
end
local function fn225()
    local Character = LocalPlayer.Character
    local v9 = Character and Character:FindFirstChildOfClass("Humanoid")
    local wa = Character
    if wa then
        wa = Character:FindFirstChild("HumanoidRootPart")
    end
    local v9_1 = wa
    if wa then
        wa = v9
    end
    if wa then
        wa = v9.Health > 0
    end
    if wa then
        return v9_1, Character
    end
end
local function fn231()
    local x0_9
    local x1_9, x1_10
    if u4() then
        ug(t7, "claim")
        task.wait(0.2)
        if not tI() then
            return false
        elseif not tE() then
            return true
        else
            local x0_1 = tS("CratePrice") or 0
            local x0_2 = tS("Cash") or 0
            local x0_3 = type(x0_1) == "number" and type(x0_2) == "number" and x0_1 <= x0_2
            if x0_3 then
                local x0_4 = ug(t7, "unlock")
                if x0_9 == "pending" then
                    ug(t7, "claim")
                    task.wait(0.2)
                    local x1_2 = tI() and tE()
                    if x1_2 then
                        x0_4 = ug(t7, "unlock")
                    end
                end
                if not x1_9 then
                    local x2_2 = x0_4 ~= "ok" and tE()
                end
                if x1_9 then
                    ug(t7, "discard")
                end
            else
                ug(t7, "discard")
            end
            local x0_5 = os.clock() + 2
            while true do
                local x1_4 = tI() and os.clock() < x0_5
                if x1_10 then
                    if not tE() then
                        if u4() then
                            ug(t7, "claim")
                        end
                        local wait = task.wait
                        local x2_3 = tB.Economy.PICKUP_COOLDOWN or 0.45
                        wait(x2_3 + 0.15)
                        local x1_6 = tI() and not tE()
                        return x1_6
                    end
                    task.wait(0.05)
                    continue
                end
                break
            end
            local x9_1 = if tE() then 1 else 0
            if x9_1 == 1 then
                ug(t7, "discard")
                task.wait(0.2)
            end
            return not tE()
        end
    elseif not tE() then
        return true
    else
        local x0_6 = tS("CratePrice") or 0
        local x0_7 = tS("Cash") or 0
        local x0_8 = type(x0_6) == "number" and type(x0_7) == "number" and x0_6 <= x0_7
        if x0_8 then
            x0_9 = ug(t7, "unlock")
            if x0_9 == "pending" then
                ug(t7, "claim")
                task.wait(0.2)
                local x1_8 = tI() and tE()
                if x1_8 then
                    x0_9 = ug(t7, "unlock")
                end
            end
            x1_9 = x0_9 == "poor"
            if not x1_9 then
                local x2_5 = x0_9 ~= "ok" and tE()
                x1_9 = x2_5
            end
            if x1_9 then
                ug(t7, "discard")
            end
        else
            ug(t7, "discard")
        end
        local x0_10 = os.clock() + 2
        while true do
            x1_10 = tI() and os.clock() < x0_10
            if x1_10 then
                if not tE() then
                    if u4() then
                        ug(t7, "claim")
                    end
                    local wait = task.wait
                    local x2_6 = tB.Economy.PICKUP_COOLDOWN or 0.45
                    wait(x2_6 + 0.15)
                    local x1_12 = tI() and not tE()
                    return x1_12
                end
                task.wait(0.05)
                continue
            end
            break
        end
        local x9_2 = if tE() then 1 else 0
        if x9_2 == 1 then
            ug(t7, "discard")
            task.wait(0.2)
        end
        return not tE()
    end
end
local function fn247(ba)
    local we_1
    local wd_1
    wd_1, we_1 = u5()
    if not (we_1 and ba and ba.Parent) then
        return false
    end
    local mesh_node = ba:FindFirstChild("mesh_node")
    local wf = mesh_node or ba:FindFirstChildWhichIsA("BasePart", true)
    if not wf then
        return false
    end
    we_1:PivotTo(wf.CFrame * CFrame.new(0, 2.5, 0))
    return true
end
local function fn268()
    local zY = t0()
    if type(zY) ~= "string" then
        return false
    end
    local zZ = tS("ActiveMorph") or ""
    if zZ == zY then
        return true
    end
    return ug(ua, "morph", zY) == "ok"
end
local function fn307()
    local yb_1
    if tE() then
        return uP()
    end
    local ya = tS("CarryId") or 0
    local ya_1
    if ya == 0 then
        return true
    end
    yb_1, ya_1 = tQ()
    tO(uB, yb_1, ya_1)
    local yf = if not t2(2) then 1 else 0
    if yf == 1 then
        return false
    end
    local wait = task.wait
    local yb_2 = tB.Economy.PICKUP_COOLDOWN or 0.45
    wait(yb_2)
    local ya_3 = (tI())
    if ya_3 then
        local yb_3 = tS("CarryId") or 0
        ya_3 = yb_3 == 0
    end
    if ya_3 then
        ya_3 = not tE()
    end
    return ya_3
end
local function worker3()
    while true do
        local CP = tI() and not uJ.Unloaded
        if CP then
            task.wait(4)
            local CP_1 = tI() and not uJ.Unloaded
            if CP_1 then
                worker()
            end
            continue
        end
        break
    end
end
local function fn414(dD)
    if not (dD and dD.Parent) then
        return false
    end
    local yu = if tE() then 1 else 0
    if yu == 1 then
        uP()
        return false
    end
    local yn_1 = tS("CarryId") or 0
    if yn_1 == 0 then
        return false
    end
    local yx = 1
    while true do
        if not (yx <= 3) then
            local yn_2 = tS("CarryId") or 0
            if yn_2 ~= 0 then
                tD()
            end
            return false
        end
        if not tI() then
            return false
        end
        if tE() then
            uP()
            return false
        end
        local yn_3 = tS("CarryId") or 0
        if yn_3 == 0 then
            return true
        end
        local yn_4 = dD.Parent and uQ(dD)
        if not yn_4 then
            return false
        end
        uv(dD)
        if not tI() then
            break
        end
        tO(uL, dD)
        if t2(0.4) then
            return true
        end
        yx += 1
    end
    return false
end
local function fn417()
    return CoreGui
end
local function fn420()
    local y4 = (tS("Rebirths"))
    local y9 = if y4 then 1 else 0
    local y7 = 1078 * y9 + 3505 * (1 - y9)
    local y8 = 3933 * y9 + 2127 * (1 - y9)
    if not ((y7 * 1918 + y8 * 3454 + y7 * y8) % 16777213 == 3114747) then
        y4 = 0
    end
    local y5 = y4
    if y5 >= tB.Economy.REBIRTH_MAX then
        return false
    end
    local y4_1 = tS("ReachedTier") or 1
    return y4_1 >= tB.tierCap(y5)
end
local function fn427()
    local Ae
    local Af = -1
    for k, v in uo() do
        if uQ(v) then
            local attr = v:GetAttribute("Tier")
            local Ah = type(attr) == "number" and attr > Af
            if Ah then
                Af = attr
                Ae = v
            end
        end
    end
    return Ae
end
local function fn462(cO)
    local xK = os.clock() + cO
    while true do
        local xL_1 = tI() and os.clock() < xK
        if xL_1 then
            local xL_2 = tS("CarryId") or 0
            local xM = xL_2 == 0
            if xM then
                local xL_3 = tS("CarryCrate") or ""
                xM = xL_3 == ""
            end
            if xM then
                return true
            end
            task.wait()
            continue
        end
        break
    end
    local xK_1 = tS("CarryId") or 0
    local xL_4 = xK_1 == 0
    if xL_4 then
        local xK_2 = tS("CarryCrate") or ""
        xL_4 = xK_2 == ""
    end
    return xL_4
end
local function fn484(eg)
    local yT = tS("Cash") or 0
    local yU = yT
    for k, v in t_ do
        if not tI() then
            return
        end
        if eg[v] == true then
            local yT_1 = t1[v]
            local yV = yT_1 and tB.Upgrades[yT_1.key]
            if yV then
                local yV_1 = um(yT_1)
                local yX = t6(yT_1)
                if yV_1 < yX then
                    local yX_1 = yV.price(yV_1)
                    local yV_2 = type(yX_1) == "number" and yX_1 <= yU
                    if yV_2 then
                        local yV_3 = ug(un, yT_1.key)
                        if yV_3 == "ok" then
                            local yT_2 = tS("Cash") or yU
                            yU = yT_2
                            task.wait(0.12)
                        end
                    end
                end
            end
        end
    end
end
local function fn494()
    local Ap = tE() or u4()
    local Ap_3, Ap_4
    if Ap then
        uP()
        if not tI() then
            return false
        end
        local Ap_1 = tS("CarryId") or 0
        if Ap_3 ~= 0 then
            return not tE()
        end
        local Ap_2 = tL()
        if not Ap_4 then
            return false
        end
        return ui(Ap_2)
    end
    Ap_3 = tS("CarryId") or 0
    if Ap_3 ~= 0 then
        return not tE()
    end
    Ap_4 = tL()
    if not Ap_4 then
        return false
    end
    return ui(Ap_4)
end
local function fn516()
    local vU = tS("PlotId")
    if vU == nil then
        return nil
    end
    return u3:FindFirstChild(tostring(vU))
end
local function fn547(Y)
    local vP = typeof(cloneref) == "function" and typeof(Y) == "Instance"
    if vP then
        return cloneref(Y)
    end
    return Y
end
local function fn578(ik)
    local BJ = Toggles[ik]
    return BJ ~= nil and BJ.Value == true
end
local function fn587()
    local wv = u0()
    local ww = {}
    if not wv then
        return ww
    end
    for i, child in wv:GetChildren() do
        local wv_1 = child:IsA("Model") and type(child:GetAttribute("Tier")) == "number" and type(child:GetAttribute("Id")) == "number"
        if wv_1 then
            ww[#ww + 1] = child
        end
    end
    return ww
end
local function fn595(bv)
    if not (bv and bv.Parent) then
        return false
    end
    local attr = bv:GetAttribute("Crate")
    local wp = attr ~= ""
    local wq = type(attr) == "string" and wp
    if wq then
        return false
    end
    local wu = if type(bv:GetAttribute("Tier")) ~= "number" then 1 else 0
    if wu == 1 then
        return false
    end
    local wu_1 = if bv:GetAttribute("Carried") then 1 else 0
    if wu_1 == 1 then
        return false
    end
    local wo_2 = bv:GetAttribute("NoPickupUntil") or 0
    return wo_2 <= uG()
end
local function fn603(bo, bp)
    local wk = tV(bo)
    local wl = tV(bp)
    if not (wk and wl) then
        return math.huge
    end
    local wm_1 = wk - wl
    return Vector3.new(wm_1.X, 0, wm_1.Z).Magnitude
end
local function onAutoLaunch(j_)
    tT.SetAutoLaunch(j_ == true, function()
        local LaunchTarget = Options.LaunchTarget
        return LaunchTarget and LaunchTarget.Value
    end)
end
local function fn684()
    local tierCap = tB.tierCap
    local wR = tS("Rebirths") or 0
    return tierCap(wR)
end
local function fn710(eb)
    local yN = tB.Upgrades[eb.key]
    if not yN then
        return 0
    end
    local yO = yN.maxLevel
    if eb.key == "SpawnTier" then
        yO = math.min(yO, tG())
    end
    return yO
end
local function onAutoBuyUpgrades(jV)
    tT.SetAutoBuyUpgrades(jV == true, uz(Options.AutoBuyUpgradeTarget))
end
local function fn791()
    local Ay = tC()
    if not Ay then
        return false
    end
    local Az = uG()
    local AA = (Ay:GetAttribute("ShieldUntil"))
    local AE = if AA then 1 else 0
    local AC = 3947 * AE + 2816 * (1 - AE)
    local AD = 2691 * AE + 3082 * (1 - AE)
    if not ((AC * 2877 + AD * 801 + AC * AD) % 16777213 == 7355174) then
        AA = 0
    end
    if AA > Az then
        return false
    end
    local AA_1 = Ay:GetAttribute("ShieldCDUntil") or 0
    if AA_1 > Az then
        return false
    end
    return true
end
local function fn812()
    local zi = 0
    local zk = tS("IndexMask") or ""
    for k in string.gmatch(zk, "1") do
        zi += 1
    end
    return zi
end
local function fn814(eP)
    if not uO then
        return 0
    end
    local zx = uO:FindFirstChild(eP)
    if not zx then
        return 0
    end
    local zy = tonumber(zx:GetAttribute("CarryForward")) or 0
    return zy
end
local function fn858()
    local zD = tK()
    local zE
    local zF = -1
    local zG = false
    local zH = -1
    for k, v in tB.Morphs.List do
        local zI = type(k) == "string" and type(v) == "table" and uV(k, zD)
        if zI then
            local zI_1 = uh(k)
            local zJ = tY[v.rarity] or 0
            local zJ_1 = v.vip == true
            local zL = false
            if zI_1 > zF then
                zL = true
            elseif zI_1 == zF then
                if zJ > zH then
                    zL = true
                elseif zJ == zH then
                    if zJ_1 and not zG then
                        zL = true
                    else
                        local zM_1 = zJ_1 == zG
                        if zM_1 then
                            zM_1 = zE == nil or k < zE
                        end
                        if zM_1 then
                            zL = true
                        end
                    end
                end
            end
            if zL then
                zE = k
                zF = zI_1
                zH = zJ
                zG = zJ_1
            end
        end
    end
    return zE
end
local function fn878(bI)
    local wE = bI == 0
    local wF = type(bI) ~= "number" or wE
    if wF then
        return nil
    end
    for k, v in uo() do
        if v:GetAttribute("Id") == bI then
            return v
        end
    end
end
local function fn906(ig)
    local DiscordGroup = ig:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = tJ })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = tJ })
end
local function fn953(iq)
    local BM = iq and iq.Value
    if type(BM) ~= "table" then
        return {}
    end
    return BM
end
local function fn983(gP)
    if gP then
        t9("Rebirth", 1, function()
            local A4 = not tI() or not tZ()
            if A4 then
                return
            end
            local A4_1 = tS("CarryId") or 0
            if A4_1 ~= 0 then
                return
            end
            ug(uf)
        end)
    else
        local Tokens = tU.Tokens
        Tokens.Rebirth = Tokens.Rebirth + 1
    end
end
local function fn1019(ax)
    return LocalPlayer:GetAttribute(ax)
end
local function fn1030()
    if not uY() then
        return false
    end
    local AF = ug(ur)
    return AF == "ok"
end
local function fn1042()
    local BS = {}
    for i, player in Players:GetPlayers() do
        if player ~= LocalPlayer then
            BS[#BS + 1] = player.Name
        end
    end
    table.sort(BS)
    if #BS == 0 then
        BS[1] = "None"
    end
    return BS
end
local function fn1068()
    return not tT.Unloaded
end
local function fn1073(dv)
    local yl_4
    local yk_4
    if not uQ(dv) then
        return false
    end
    local attr = dv:GetAttribute("Id")
    local yh = tS("CarryId") or 0
    local yh_10, yh_13, yh_16
    local yi_2
    if yh == attr then
        return true
    end
    local yh_1 = yh ~= 0 or tE()
    if yh_1 then
        if not tD() then
            return false
        end
        local yh_2 = not tI() or not uQ(dv)
        if yh_10 then
            return false
        end
        tO(uF, dv)
        if uA(attr, 0.12) then
            if tE() then
                uP()
                return false
            end
            local yh_3 = tS("CarryId") or 0
            return yh_3 == attr
        end
        local yh_4 = tS("CarryId") or 0
        if yi_2 == attr then
            return not tE()
        end
        local yh_5 = yh_4 ~= 0 or tE()
        if yh_13 then
            if not tD() then
                return false
            end
            local yh_6 = not tI() or not uQ(dv)
            if yh_16 then
                return false
            elseif not uv(dv) then
                return false
            else
                tO(uF, dv)
                if uA(attr, 0.6) then
                    if tE() then
                        uP()
                        return false
                    end
                    local yh_7 = tS("CarryId") or 0
                    if yh_7 ~= attr then
                        tD()
                        return false
                    end
                    return true
                end
                if tE() then
                    uP()
                else
                    local yg_1 = (tS("CarryId"))
                    if not ((yk_4 * 631 + yl_4 * 3376 + yk_4 * yl_4) % 16777213 == 2978297) then
                        yg_1 = 0
                    end
                    if yg_1 ~= 0 then
                        tD()
                    end
                end
                return false
            end
        else
            local yh_8 = not tI() or not uQ(dv)
            if yh_16 then
                return false
            elseif not uv(dv) then
                return false
            else
                tO(uF, dv)
                if uA(attr, 0.6) then
                    if tE() then
                        uP()
                        return false
                    end
                    local yh_9 = tS("CarryId") or 0
                    if yh_9 ~= attr then
                        tD()
                        return false
                    end
                    return true
                end
                if tE() then
                    uP()
                else
                    local yg_2 = (tS("CarryId"))
                    if not ((yk_4 * 631 + yl_4 * 3376 + yk_4 * yl_4) % 16777213 == 2978297) then
                        yg_2 = 0
                    end
                    if yg_2 ~= 0 then
                        tD()
                    end
                end
                return false
            end
        end
    else
        yh_10 = not tI() or not uQ(dv)
        if yh_10 then
            return false
        end
        tO(uF, dv)
        if uA(attr, 0.12) then
            if tE() then
                uP()
                return false
            end
            local yh_11 = tS("CarryId") or 0
            return yh_11 == attr
        end
        local yh_12 = tS("CarryId") or 0
        yi_2 = yh_12
        if yi_2 == attr then
            return not tE()
        end
        yh_13 = yi_2 ~= 0 or tE()
        if yh_13 then
            if not tD() then
                return false
            end
            local yh_14 = not tI() or not uQ(dv)
            if yh_16 then
                return false
            elseif not uv(dv) then
                return false
            else
                tO(uF, dv)
                if uA(attr, 0.6) then
                    if tE() then
                        uP()
                        return false
                    end
                    local yh_15 = tS("CarryId") or 0
                    if yh_15 ~= attr then
                        tD()
                        return false
                    end
                    return true
                end
                if tE() then
                    uP()
                else
                    local yg_3 = (tS("CarryId"))
                    if not ((yk_4 * 631 + yl_4 * 3376 + yk_4 * yl_4) % 16777213 == 2978297) then
                        yg_3 = 0
                    end
                    if yg_3 ~= 0 then
                        tD()
                    end
                end
                return false
            end
        else
            yh_16 = not tI() or not uQ(dv)
            if yh_16 then
                return false
            elseif not uv(dv) then
                return false
            else
                tO(uF, dv)
                if uA(attr, 0.6) then
                    if tE() then
                        uP()
                        return false
                    end
                    local yh_17 = tS("CarryId") or 0
                    if yh_17 ~= attr then
                        tD()
                        return false
                    end
                    return true
                end
                if tE() then
                    uP()
                else
                    local yg_4 = (tS("CarryId"))
                    local ym_4 = if yg_4 then 1 else 0
                    yk_4 = 1385 * ym_4 + 1237 * (1 - ym_4)
                    yl_4 = 442 * ym_4 + 2976 * (1 - ym_4)
                    if not ((yk_4 * 631 + yl_4 * 3376 + yk_4 * yl_4) % 16777213 == 2978297) then
                        yg_4 = 0
                    end
                    if yg_4 ~= 0 then
                        tD()
                    end
                end
                return false
            end
        end
    end
end
local function fn1124()
    local v__1
    local vZ_1
    if type(ty.now) == "function" then
        vZ_1, v__1 = pcall(ty.now)
        local v0 = vZ_1 and type(v__1) == "number"
        if v0 then
            return v__1
        end
        return os.time()
    end
    return os.time()
end
local function onAutoMorphBest(jS)
    tT.SetAutoMorph(jS == true)
end
local function fn1163()
    local xR = tS("CarryCrate")
    local xS = xR ~= ""
    local xT = type(xR) == "string" and xS
    return xT
end
local function fn1166(bj)
    if not bj then
        return nil
    end
    local mesh_node = bj:FindFirstChild("mesh_node")
    if mesh_node then
        return mesh_node.Position
    end
    local BasePart = bj:FindFirstChildWhichIsA("BasePart", true)
    return BasePart and BasePart.Position or nil
end
local function fn1176(bQ, bR)
    if type(bQ) ~= "number" then
        return nil
    end
    local wT = tV(tX(bR))
    if not wT then
        local wU_1 = select(1, u5())
        wT = wU_1 and wU_1.Position or nil
    end
    local wV_2 = nil
    local wU_3 = math.huge
    for k, v in uo() do
        local wW = uQ(v) and v:GetAttribute("Tier") == bQ and v:GetAttribute("Id") ~= bR
        if wW then
            local wW_1 = tV(v)
            local wX = wT and wW_1
            local wY = wX and Vector3.new(wW_1.X - wT.X, 0, wW_1.Z - wT.Z).Magnitude
            local wW_2 = wY or math.huge
            if wW_2 < wU_3 then
                wU_3 = wW_2
                wV_2 = v
            end
        end
    end
    return wV_2
end
local function fn1183()
    if u_("AutoBuyUpgrades") then
        tT.SetAutoBuyUpgrades(true, uz(Options.AutoBuyUpgradeTarget))
    end
end
local function fn1188()
    local CrateOpenGui = PlayerGui:FindFirstChild("CrateOpenGui")
    return CrateOpenGui ~= nil and CrateOpenGui.Enabled == true
end
local function fn1209()
    local xa_1
    local w9_1
    local w8_2
    local w7_2
    local w5 = tG()
    local w6 = {}
    for k, v in uo() do
        if uQ(v) then
            local attr = v:GetAttribute("Tier")
            local w8_1 = type(attr) == "number" and attr + 1 <= w5
            if w8_1 then
                w6[#w6 + 1] = v
            end
        end
    end
    xa_1, w8_2, w9_1, w7_2 = nil, nil, nil, nil
    local w5_1 = #w6
    local xp = 1
    while xp <= w5_1 do
        local xr = xp
        local w5_2 = w6[xr]
        local attr = w5_2:GetAttribute("Tier")
        local xc = xr + 1
        local xd = #w6
        local xu = xc
        while xu <= xd do
            local xc_1 = w6[xu]
            if xc_1:GetAttribute("Tier") == attr then
                local xd_1 = tF(w5_2, xc_1)
                if xa_1 == nil or attr < w9_1 or attr == w9_1 and xd_1 < w7_2 then
                    xa_1 = w5_2
                    w8_2 = xc_1
                    w9_1 = attr
                    w7_2 = xd_1
                end
            end
            xu += 1
        end
        xp += 1
    end
    return xa_1, w8_2, w9_1
end
local function fn1213()
    local z0 = tC()
    local z1 = z0 and z0:FindFirstChild("Floor")
    local z0_1 = z1
    if z1 then
        z1 = z0_1:IsA("BasePart")
    end
    if z1 then
        return z0_1.Position.Y + z0_1.Size.Y / 2 + 0.4
    end
    local z0_2 = MapCenter and MapCenter:IsA("BasePart")
    if z0_2 then
        return MapCenter.Position.Y + 2
    end
    local z0_3 = select(1, u5())
    return z0_3 and z0_3.Position.Y or 0
end
local function fn1232()
    u6 = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
end
local function fn1271()
    local xx = select(1, u5())
    local xy = tC()
    local xz = xy and xy:FindFirstChild("Floor")
    local xy_1 = xx
    if xy_1 then
        xy_1 = xz
    end
    if xy_1 then
        xy_1 = xz:IsA("BasePart")
    end
    if not xy_1 then
        return nil, 0
    end
    local LookVector = xx.CFrame.LookVector
    local xz_1 = math.atan2(-LookVector.X, -LookVector.Z)
    local xB = xz.CFrame:PointToObjectSpace(xx.Position + LookVector * 4)
    local xx_1 = math.max(xz.Size.X / 2 - 4, 0)
    local xy_3 = math.max(xz.Size.Z / 2 - 4, 0)
    local xC = xz.CFrame * CFrame.new(math.clamp(xB.X, -xx_1, xx_1), 0, math.clamp(xB.Z, -xy_3, xy_3))
    return Vector3.new(xC.Position.X, xz.Position.Y + xz.Size.Y / 2 + 2, xC.Position.Z), xz_1
end
local function fn1281(hk)
    if hk then
        t9("Lock", 0.5, function()
            if not tI() then
                return
            end
            uy()
        end)
    else
        local Tokens = tU.Tokens
        Tokens.Lock = Tokens.Lock + 1
    end
end
local function fn1297()
    if coroutine.status(tH) ~= "dead" then
        pcall(task.cancel, tH)
    end
end
local function fn1314()
    local vW = tC()
    local vX = vW and vW:FindFirstChild("SCP")
    return vX
end
local function fn1322()
    t8(ut, "Copied Discord invite to clipboard")
end
local function fn1347()
    if coroutine.status(tx) ~= "dead" then
        pcall(task.cancel, tx)
    end
end
local function fn1363(g2)
    if g2 then
        t9("Morph", 1.25, function()
            if not tI() then
                return
            end
            uj()
        end)
    else
        local Tokens = tU.Tokens
        Tokens.Morph = Tokens.Morph + 1
    end
end
local function fn1393(fj)
    if not fj then
        return nil
    end
    local attr = fj:GetAttribute("PlotId")
    local Ab = attr and u3:FindFirstChild(tostring(attr))
    if Ab then
        local Ab_1 = Ab:GetAttribute("ShieldUntil") or 0
        if Ab_1 > uG() then
            return nil
        end
        local Floor = Ab:FindFirstChild("Floor")
        local Aa_2 = Floor and Floor:IsA("BasePart")
        if Aa_2 then
            return Vector3.new(Floor.Position.X, Floor.Position.Y + Floor.Size.Y / 2 + 0.4, Floor.Position.Z)
        end
    end
    local Character = fj.Character
    local Ab_3 = Character and Character:FindFirstChild("HumanoidRootPart")
    if Ab_3 then
        return Vector3.new(Ab_3.Position.X, tW(), Ab_3.Position.Z)
    end
end
Players = nil
tw = nil
tx = nil
ty = nil
tz = nil
worker = nil
tB = nil
tC = nil
tD = nil
tE = nil
tF = nil
tG = nil
tH = nil
tI = nil
tJ = nil
tK = nil
tL = nil
tM = nil
tO = nil
tQ = nil
tS = nil
tT = nil
tU = nil
tV = nil
tW = nil
tX = nil
tY = nil
tZ = nil
t_ = nil
t0 = nil
t1 = nil
t2 = nil
t3 = nil
connection2 = nil
t6 = nil
t7 = nil
t8 = nil
t9 = nil
ua = nil
PlayerGui = nil
connection = nil
uf = nil
ug = nil
uh = nil
local tN, tP, tR, t4, ue
ui = nil
uj = nil
LocalPlayer = nil
um = nil
un = nil
uo = nil
ur = nil
ut = nil
uu = nil
uv = nil
Options = nil
uy = nil
uz = nil
uA = nil
uB = nil
uC = nil
CoreGui = nil
Toggles = nil
uF = nil
uG = nil
uH = nil
uJ = nil
uL = nil
uO = nil
uP = nil
uQ = nil
uR = nil
uU = nil
uV = nil
uW = nil
uY = nil
MapCenter = nil
u_ = nil
u0 = nil
local u2
u3 = nil
u4 = nil
local ul, up, uq, Lighting, TeleportService, GuiService, uK, HttpService, uN, uS, VirtualUser, UserInputService, RunService
u5 = nil
u6 = nil
local u7, va, vc, vd, ve, vf, vg, vh, vi, vj
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, up, LocalPlayer, PlayerGui, t3 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local u9 = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
up = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local u8 = "OuroborosMergeAnSCP"
t3 = fn417
if getgenv then
    getgenv().gethui = t3
end
tT, vc, tB, ty, vf, u3, MapCenter, ve, vg, vd = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local vb = 17
repeat
    vh = (vb * 1 + 4) % 6 + 1
    if vh <= 3 then
        if vh <= 2 then
            if vh <= 1 then
                if (vb * 3 + 4) * 5 % 4 == ((vb * 3 + 4) * 5 + 15) % 4 then
                    vc = up(ty:WaitForChild("Shared"))
                    require(up(vc:WaitForChild("Config")))
                    tB = require(up(vc:WaitForChild("Util")))
                    u3 = up(ty:WaitForChild("Remotes"))
                    vd = up(vf:WaitForChild("Plots"))
                else
                    u7 = vd(vc:WaitForChild("Shared"))
                    tB = require(vd(u7:WaitForChild("Config")))
                    ty = require(vd(u7:WaitForChild("Util")))
                    vf = vd(vc:WaitForChild("Remotes"))
                    u3 = vd(up:WaitForChild("Plots"))
                end
                vb = (vb + 19) % 24
            else
                vi = { "dbcgixyl", "mjgbpccm", "uzsx", "fvatjkvlhov", "xknn", "gafnfmwlt", "qte" }
                local Ig = vb
                vj = vi[Ig % 7 + 1]
                if vj:len() >= vj:reverse():rep(Ig % 3 + 2):len() then
                    up = MapCenter:FindFirstChild("MapCenter")
                else
                    MapCenter = up:FindFirstChild("MapCenter")
                end
                vb = (vb + 7) % 24
            end
        else
            if vb * 27158587 + 2 + 4 >= vb * 27158587 + 2 + 4 + 1 then
                vc = (ve:FindFirstChild("Assets"))
            else
                ve = (vc:FindFirstChild("Assets"))
            end
            vb = (vb + 7) % 24
        end
    elseif vh <= 5 then
        if vh <= 4 then
            if vb * 32559713 + 2 + 4 <= vb * 32559713 + 2 + 4 + 1 then
                pcall(fns.fn183)
                va = function(x)
                    local vE
                    local vF
                    local vD
                    vD = nil
                    vE = nil
                    vF = nil
                    local vG = x ~= ""
                    local vH = type(x) == "string" and vG
                    assert(vH, "A namespace is required")
                    assert(type(getgenv) == "function", "getgenv is unavailable")
                    vE = getgenv()
                    assert(type(vE) == "table", "getgenv did not return a table")
                    local vG_2 = vE[x]
                    if vG_2 ~= nil then
                        local vH_2 = type(vG_2) == "table" and type(vG_2.Unload) == "function"
                        assert(vH_2, "Namespace is occupied")
                        vG_2.Unload()
                        assert(vE[x] == nil, "Previous instance did not release its namespace")
                    end
                    vF = {}
                    vD = { State = {}, Unloaded = false }
                    vD.Track = function(D)
                        assert(type(D) == "function", "Cleanup must be callable")
                        if vD.Unloaded then
                            D()
                        else
                            table.insert(vF, D)
                        end
                        return D
                    end
                    vD.Unload = function()
                        local vw_2
                        local vv_2
                        if vD.Unloaded then
                            return
                        end
                        vD.Unloaded = true
                        local vt = {}
                        local vA = #vF
                        local vz = -1
                        while false and vA <= 1 or true and vA >= 1 do
                            local vB = vA
                            local vu_2 = table.remove(vF, vB)
                            vv_2, vw_2 = pcall(vu_2)
                            if not vv_2 then
                                table.insert(vt, tostring(vw_2))
                            end
                            vA += vz
                        end
                        table.clear(vD.State)
                        if #vt > 0 then
                            error("Cleanup incomplete: " .. table.concat(vt, "; "), 0)
                        end
                        if vE[x] == vD then
                            vE[x] = nil
                        end
                    end
                    vE[x] = vD
                    return vD
                end
                vg = function(Q, R)
                    local vN = type(Q) == "table" and type(Q.Track) == "function"
                    assert(vN, "FeatureAPI required")
                    local vN_2 = type(R) == "table" and type(R.OnUnload) == "function"
                    assert(vN_2, "UI library required")
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
                tT = va(u8)
            else
                pcall(fns.fn183)
                tT = function(x)
                    local vE
                    local vF
                    local vD
                    vD = nil
                    vE = nil
                    vF = nil
                    local vG = x ~= ""
                    local vH = type(x) == "string" and vG
                    assert(vH, "A namespace is required")
                    assert(type(getgenv) == "function", "getgenv is unavailable")
                    vE = getgenv()
                    assert(type(vE) == "table", "getgenv did not return a table")
                    local vG_1 = vE[x]
                    if vG_1 ~= nil then
                        local vH_1 = type(vG_1) == "table" and type(vG_1.Unload) == "function"
                        assert(vH_1, "Namespace is occupied")
                        vG_1.Unload()
                        assert(vE[x] == nil, "Previous instance did not release its namespace")
                    end
                    vF = {}
                    vD = { State = {}, Unloaded = false }
                    vD.Track = function(D)
                        assert(type(D) == "function", "Cleanup must be callable")
                        if vD.Unloaded then
                            D()
                        else
                            table.insert(vF, D)
                        end
                        return D
                    end
                    vD.Unload = function()
                        local vw_1
                        local vv_1
                        if vD.Unloaded then
                            return
                        end
                        vD.Unloaded = true
                        local vt = {}
                        local vA = #vF
                        local vz = -1
                        while false and vA <= 1 or true and vA >= 1 do
                            local vB = vA
                            local vu_1 = table.remove(vF, vB)
                            vv_1, vw_1 = pcall(vu_1)
                            if not vv_1 then
                                table.insert(vt, tostring(vw_1))
                            end
                            vA += vz
                        end
                        table.clear(vD.State)
                        if #vt > 0 then
                            error("Cleanup incomplete: " .. table.concat(vt, "; "), 0)
                        end
                        if vE[x] == vD then
                            vE[x] = nil
                        end
                    end
                    vE[x] = vD
                    return vD
                end
                u8 = function(Q, R)
                    local vN = type(Q) == "table" and type(Q.Track) == "function"
                    assert(vN, "FeatureAPI required")
                    local vN_1 = type(R) == "table" and type(R.OnUnload) == "function"
                    assert(vN_1, "UI library required")
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
                tT(vg)
            end
            vb = (vb + 7) % 24
        else
            vh = (vector.create((vb * 3 + 3) % 11 + 1, (vb * 11 + 3) % 13 + 1, (vb * 6 + 10) % 17 + 1))
            vi = (vector.create((vb * 7 + 6) % 11 + 1, (vb * 5 + 1) % 13 + 1, (vb * 13 + 15) % 17 + 1))
            vj = (vector.create((vb * 2 + 3) % 11 + 1, (vb * 1 + 3) % 13 + 1, (vb * 8 + 6) % 17 + 1))
            if vector.dot(vector.cross(vh, vi), vj) == vector.dot(vector.cross(vi, vj), vh) then
                vd = fn547
            else
                vf = fn547
            end
            vb = (vb + 13) % 24
        end
    else
        vh = (vector.create((vb * 7 + 6) % 11 + 1, (vb * 6 + 10) % 13 + 1, (vb * 6 + 9) % 17 + 1))
        vi = (vector.create((vb * 3 + 1) % 11 + 1, (vb * 2 + 8) % 13 + 1, (vb * 9 + 6) % 17 + 1))
        vj = (vector.create((vb * 5 + 2) % 11 + 1, (vb * 10 + 6) % 13 + 1, (vb * 2 + 3) % 17 + 1))
        local vk = (vector.create((vb * 5 + 6) % 5 + 1, (vb * 4 + 7) % 7 + 1, (vb * 5 + 5) % 9 + 1))
        if vector.dot(vector.cross(vh, (vector.cross(vi, vj))), vk) == vector.dot(vi * vector.dot(vh, vj) - vj * vector.dot(vh, vi), vk) then
            vc = vd(u9)
        else
            u9 = vc(vd)
        end
        vb = (vb + 19) % 24
    end
until (vb * 13 + 20) % 24 == 1
if ve then
    u7 = 4
    repeat
        if ((not u7 or not u7) and (not u7 and u7) or (u7 or u7) and (u7 or not u7)) and ((u7 or not u7 or (u7 or u7)) and (u7 and u7 or (not u7 or not u7))) or not (((not u7 or not u7) and (not u7 and u7) or (u7 or u7) and (u7 or not u7)) and ((u7 or not u7 or (u7 or u7)) and (u7 and u7 or (not u7 or not u7)))) then
            ve = vc.Assets:FindFirstChild("Morphs")
        else
            vc = ve.Assets:FindFirstChild("Morphs")
        end
        u7 = (u7 + 4) % 8
    until (u7 * 7 + 5) % 8 == 5
end
uO, uL, uF, uB, uu, ur, un, uf, ua, t7, t1, t_, tY, tU, u6, u9, tS, tI, tC, u0, uG, ug, tO, u5, uv, tV, tF, uQ, uo, tX, tG, tw, tM, tQ, uA, t2, tE, u4, uP, tD, ui, uR, tP, um, t6, tN, tZ, tK, tz, uV, uh, t0, uj, tW, uW, uH, tL, uU, t4, uY, uy, t9 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
u8 = 145
repeat
    u7 = (u8 * 9 + 10) % 22 + 1
    if u7 <= 11 then
        if u7 <= 6 then
            if u7 <= 3 then
                if u7 <= 2 then
                    if u7 <= 1 then
                        va = (vector.create((u8 * 5 + 5) % 11 + 1, (u8 * 3 + 12) % 13 + 1, (u8 * 5 + 8) % 17 + 1))
                        vb = (vector.create((u8 * 1 + 5) % 11 + 1, (u8 * 7 + 2) % 13 + 1, (u8 * 9 + 8) % 17 + 1))
                        vc = (vector.create((u8 * 6 + 9) % 11 + 1, (u8 * 1 + 10) % 13 + 1, (u8 * 9 + 3) % 17 + 1))
                        if vector.dot(vector.cross(va, vb), vc) == vector.dot(vector.cross(vb, vc), va) then
                            uf = vd(vf:WaitForChild("Rebirth"))
                            ua = vd(vf:WaitForChild("MorphAction"))
                            t7 = vd(vf:WaitForChild("CrateAction"))
                            t1 = {
                                ["Spawn Tier"] = { key = "SpawnTier", attr = "SpawnTierLvl" },
                                ["Max Spawn"] = { key = "MaxSpawn", attr = "MaxSpawnLvl" },
                                ["Lock Base"] = { key = "LockBase", attr = "LockBaseLvl" }
                            }
                            t_ = { "Spawn Tier", "Max Spawn", "Lock Base" }
                        else
                            t_ = vf(uf:WaitForChild("Rebirth"))
                            vd = vf(uf:WaitForChild("MorphAction"))
                            t1 = vf(uf:WaitForChild("CrateAction"))
                            ua = {
                                ["Spawn Tier"] = { key = "SpawnTier", attr = "SpawnTierLvl" },
                                ["Lock Base"] = { key = "LockBase", attr = "LockBaseLvl" },
                                ["Max Spawn"] = { key = "MaxSpawn", attr = "MaxSpawnLvl" }
                            }
                            t7 = { "Lock Base", "Max Spawn", "Spawn Tier" }
                        end
                        u8 = (u8 + 71) % 176
                    else
                        va = {
                            "epzbahjwhwpw",
                            "ilgv",
                            "uinr",
                            "wdip",
                            "natdsdbwzmny",
                            "jzlqdw",
                            "gccdzfgtz",
                            "vgkqk",
                            "mfrjjhg",
                            "opgawb",
                            "nuwozvrluojm"
                        }
                        if va[(u8 * 39 + 105) % 11 + 1] < va[(u8 * 39 + 105) % 11 + 1] then
                            tU = { Uncommon = 0, Limited = 3, Secret = 6, Rare = 1, Legendary = 4, Trypophobic = 5, Epic = 2 }
                            tT = tY.State
                            tT.Tokens = { Merge = 0, Launch = 0, Rebirth = 0, Lock = 0, Upgrades = 0, Morph = 0 }
                            tT.LaunchEnabled = false
                            tI = fn1019
                            tS = fn1068
                        else
                            tY = { Secret = 6, Trypophobic = 5, Legendary = 4, Limited = 3, Epic = 2, Rare = 1, Uncommon = 0 }
                            tU = tT.State
                            tU.Tokens = { Merge = 0, Upgrades = 0, Rebirth = 0, Morph = 0, Launch = 0, Lock = 0 }
                            tU.LaunchEnabled = false
                            tS = fn1019
                            tI = fn1068
                        end
                        u8 = (u8 + 27) % 176
                    end
                else
                    local IX = bit32.rrotate(bit32.bxor(bit32.lrotate(u8, 18), string.byte(tostring(t0))), 24)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(IX, 487039078), 0), 487039078) == bit32.lrotate(IX, 0) then
                        tC = fn516
                        u0 = fn1314
                        uG = fn1124
                    else
                        uG = fn516
                        tC = fn1314
                        u0 = fn1124
                    end
                    u8 = (u8 + 137) % 176
                end
            elseif u7 <= 5 then
                if u7 <= 4 then
                    va = (vector.create((u8 * 1 + 6) % 11 + 1, (u8 * 4 + 11) % 13 + 1, (u8 * 4 + 2) % 17 + 1))
                    vb = (vector.create((u8 * 7 + 1) % 11 + 1, (u8 * 8 + 11) % 13 + 1, (u8 * 1 + 14) % 17 + 1))
                    local I2 = vector.cross(va, vb)
                    local I3 = vector.dot(va, vb)
                    if vector.dot(I2, I2) + I3 * I3 == vector.dot(va, va) * vector.dot(vb, vb) then
                        ug = function(aP, ...)
                            local v4_2
                            local v3_2
                            local v2 = not tI() or typeof(aP) ~= "Instance"
                            local v2_2
                            if v2 then
                                return nil
                            end
                            v2_2, v3_2, v4_2 = pcall(function(...)
                                return aP:InvokeServer(...)
                            end, ...)
                            if not v2_2 then
                                return nil
                            end
                            return v3_2, v4_2
                        end
                        tO = function(aX, ...)
                            local v6 = not tI() or typeof(aX) ~= "Instance"
                            if v6 then
                                return false
                            end
                            local v6_2 = pcall(function(...)
                                aX:FireServer(...)
                            end, ...)
                            return v6_2 == true
                        end
                        u5 = fn225
                        uv = fn247
                    else
                        u5 = function(aP, ...)
                            local v4_1
                            local v3_1
                            local v2 = not tI() or typeof(aP) ~= "Instance"
                            local v2_1
                            if v2 then
                                return nil
                            end
                            v2_1, v3_1, v4_1 = pcall(function(...)
                                return aP:InvokeServer(...)
                            end, ...)
                            if not v2_1 then
                                return nil
                            end
                            return v3_1, v4_1
                        end
                        uv = function(aX, ...)
                            local v6 = not tI() or typeof(aX) ~= "Instance"
                            if v6 then
                                return false
                            end
                            local v6_1 = pcall(function(...)
                                aX:FireServer(...)
                            end, ...)
                            return v6_1 == true
                        end
                        tO = fn225
                        ug = fn247
                    end
                    u8 = (u8 + 115) % 176
                else
                    va = { "tjm", "lxpdwns", "zgxxgqwygbi", "gwxioiew", "qhvexaj", "vmi", "qsfsshadpa" }
                    local Hy = u8
                    vb = va[Hy % 7 + 1]
                    if vb:len() <= vb:gsub("(.)", "%1%1", Hy % 3 % 2 + 1):len() then
                        tV = fn1166
                        tF = fn603
                        uQ = fn595
                        uo = fn587
                        tX = fn878
                    else
                        tX = fn1166
                        uQ = fn603
                        tF = fn595
                        tV = fn587
                        uo = fn878
                    end
                    u8 = (u8 + 137) % 176
                end
            else
                if u8 * 50812031 + 8 + 7 >= u8 * 50812031 + 8 + 7 + 2 then
                    tM = fn684
                    tG = fn1176
                    tw = fn1209
                else
                    tG = fn684
                    tw = fn1176
                    tM = fn1209
                end
                u8 = (u8 + 27) % 176
            end
        elseif u7 <= 9 then
            if u7 <= 8 then
                if u7 <= 7 then
                    va = (vector.create((u8 * 3 + 3) % 11 + 1, (u8 * 7 + 2) % 13 + 1, (u8 * 13 + 2) % 17 + 1))
                    local IU = vector.floor(va) + vector.ceil(va * -1)
                    if vector.dot(IU, IU) == 0 then
                        tQ = fn1271
                        uA = fns.fn119
                        t2 = fn462
                        tE = fn1163
                        u4 = fn1188
                    else
                        u4 = fn1271
                        tQ = fns.fn119
                        uA = fn462
                        t2 = fn1163
                        tE = fn1188
                    end
                    u8 = (u8 + 159) % 176
                else
                    va = (vector.create((u8 * 6 + 6) % 11 + 1, (u8 * 11 + 9) % 13 + 1, (u8 * 4 + 6) % 17 + 1))
                    vb = (vector.create((u8 * 1 + 9) % 11 + 1, (u8 * 11 + 2) % 13 + 1, (u8 * 13 + 4) % 17 + 1))
                    vc = (vector.create((u8 * 7 + 5) % 11 + 1, (u8 * 11 + 12) % 13 + 1, (u8 * 2 + 15) % 17 + 1))
                    vh = (vector.create((u8 * 2 + 3) % 5 + 1, (u8 * 4 + 2) % 7 + 1, (u8 * 5 + 2) % 9 + 1))
                    if vector.dot(vector.cross(va, (vector.cross(vb, vc))), vh) == vector.dot(vb * vector.dot(va, vc) - vc * vector.dot(va, vb), vh) + 5 then
                        tF = fn231
                    else
                        uP = fn231
                    end
                    u8 = (u8 + 137) % 176
                end
            else
                va = { "unyfpmjwzp", "yabkras", "nfjvpccabjih", "pzavcytw", "lvlwj", "nhngmfvc", "npf", "grgphrwnhid" }
                if va[(u8 * 50 + 88) % 8 + 1] < va[(u8 * 50 + 88) % 8 + 1] then
                    ui = fn307
                    tD = fn1073
                else
                    tD = fn307
                    ui = fn1073
                end
                u8 = (u8 + 49) % 176
            end
        elseif u7 <= 10 then
            va = (vector.create((u8 * 7 + 4) % 11 + 1, (u8 * 8 + 7) % 13 + 1, (u8 * 5 + 1) % 17 + 1))
            vb = (vector.create((u8 * 4 + 3) % 11 + 1, (u8 * 3 + 9) % 13 + 1, (u8 * 11 + 11) % 17 + 1))
            local IV = vector.dot(va, vb)
            if IV * IV <= vector.dot(va, va) * vector.dot(vb, vb) then
                uR = fn414
                tP = fns.fn17
                um = fns.fn188
                t6 = fn710
                tN = fn484
            else
                tN = fn414
                um = fns.fn17
                tP = fns.fn188
                uR = fn710
                t6 = fn484
            end
            u8 = (u8 + 27) % 176
        else
            if u8 * 79156781 + 6 + 3 <= u8 * 79156781 + 6 + 3 + 6 then
                tZ = fn420
                tK = fns.fn108
                tz = fn812
            else
                tz = fn420
                tZ = fns.fn108
                tK = fn812
            end
            u8 = (u8 + 5) % 176
        end
    elseif u7 <= 17 then
        if u7 <= 14 then
            if u7 <= 13 then
                if u7 <= 12 then
                    va = {
                        "zcrsswljlmy",
                        "iizhcqyd",
                        "kwsnddpryah",
                        "yrqlvwa",
                        "ripvfeas",
                        "fggco",
                        "zavgohpk",
                        "boj",
                        "crdvl",
                        "xhmfp"
                    }
                    local H3 = u8
                    vb = va[H3 % 10 + 1]
                    if vb:len() >= vb:gsub("(.)", "%1%1", H3 % 3 % 2 + 1):len() then
                        t0 = fns.fn56
                        uV = fn814
                        uh = fn858
                        tW = fn268
                        uj = fn1213
                    else
                        uV = fns.fn56
                        uh = fn814
                        t0 = fn858
                        uj = fn268
                        tW = fn1213
                    end
                    u8 = (u8 + 159) % 176
                else
                    va = { "uqo", "ivbctdf", "foxnv", "jonixgple", "yrcuqfodv", "vxmg", "orqnvvctnc", "gooaisgxxps" }
                    local H_ = u8
                    vb = va[H_ % 8 + 1]
                    if vb:len() >= vb:reverse():rep(H_ % 3 + 2):len() then
                        t9 = fns.fn13
                    else
                        uW = fns.fn13
                    end
                    u8 = (u8 + 137) % 176
                end
            else
                va = { "nwipeqcpl", "zhdyrq", "msg", "gojvbtgf", "jfzbcu", "trc", "losormii", "reqel" }
                local HZ = u8
                vb = va[HZ % 8 + 1]
                if vb:len() <= vb:reverse():rep(HZ % 3 + 2):len() then
                    uH = fn1393
                    tL = fn427
                    uU = fn494
                    t4 = fns.fn65
                    uY = fn791
                else
                    t4 = fn1393
                    uU = fn427
                    uY = fn494
                    uH = fns.fn65
                    tL = fn791
                end
                u8 = (u8 + 49) % 176
            end
        elseif u7 <= 16 then
            if u7 <= 15 then
                if u8 * 55156189 + 13 + 1 >= u8 * 55156189 + 13 + 1 + 4 then
                    ur = fn1030
                else
                    uy = fn1030
                end
                u8 = (u8 + 93) % 176
            else
                if ((not ua or t1) and (not tG and uo) or (uU and uU or (not uU or tG))) and (tG and t1 and (not uU and ua) or (uU or ua) and (not ua and not ua)) and ((ua or uU) and (uo and tG) or (ua or not ua or uo and t1) or (uU or uo or (not uo or not tG)) and (uU and uo and (ua and not ua))) and not (((not ua or t1) and (not tG and uo) or (uU and uU or (not uU or tG))) and (tG and t1 and (not uU and ua) or (uU or ua) and (not ua and not ua)) and ((ua or uU) and (uo and tG) or (ua or not ua or uo and t1) or (uU or uo or (not uo or not tG)) and (uU and uo and (ua and not ua)))) then
                    u6 = function(f3, f4, f5)
                        tU.Tokens[f3] += 1
                        local f7 = tU.Tokens[f3]
                        local gh = task.spawn(function()
                            while true do
                                local AH = tI() and tU.Tokens[f3] == f7
                                if AH then
                                    pcall(f5)
                                    local AH_2 = not tI() or tU.Tokens[f3] ~= f7
                                    if AH_2 then
                                        break
                                    end
                                    task.wait(f4)
                                    continue
                                end
                                break
                            end
                        end)
                        tT.Track(function()
                            tU.Tokens[f3] += 1
                            if coroutine.status(gh) ~= "dead" then
                                pcall(task.cancel, gh)
                            end
                        end)
                    end
                    t9.SetAutoMerge = function(gm)
                        local AV, Merge
                        local Tokens2 = tU.Tokens
                        Tokens2.Merge = Tokens2.Merge + 1
                        if not gm then
                            return
                        end
                        Merge = tU.Tokens.Merge
                        AV = task.spawn(function()
                            local AL_3
                            while true do
                                local AK = tI() and tU.Tokens.Merge == Merge
                                local AK_3
                                if AK then
                                    AK_3, AL_3 = pcall(tP)
                                    local AM = not tI() or tU.Tokens.Merge ~= Merge
                                    if AM then
                                        break
                                    end
                                    if AK_3 and AL_3 then
                                        local wait = task.wait
                                        local AL_4 = tB.Economy.PICKUP_COOLDOWN or 0.45
                                        wait(AL_4)
                                    else
                                        task.wait(0.05)
                                    end
                                    continue
                                end
                                break
                            end
                        end)
                        tT.Track(function()
                            if tU.Tokens.Merge == Merge then
                                local Tokens = tU.Tokens
                                Tokens.Merge = Tokens.Merge + 1
                            end
                            if coroutine.status(AV) ~= "dead" then
                                pcall(task.cancel, AV)
                            end
                        end)
                    end
                    t9.SetAutoBuyUpgrades = function(gG, gH)
                        if gG then
                            t9("Upgrades", 0.45, function()
                                if not tI() then
                                    return
                                end
                                local AZ = gH or {}
                                tN(AZ)
                            end)
                        else
                            local Tokens = tU.Tokens
                            Tokens.Upgrades = Tokens.Upgrades + 1
                        end
                    end
                    t9.SetAutoRebirth = fn983
                    t9.SetAutoMorph = fn1363
                    t9.SetAutoLaunch = function(g9, ha)
                        tU.LaunchEnabled = g9 == true
                        if g9 then
                            t9("Launch", 0.75, function()
                                if not tI() then
                                    return
                                end
                                local Bc = ha and ha()
                                if type(Bc) ~= "string" then
                                    return
                                end
                                t4(Bc)
                            end)
                        else
                            local Tokens = tU.Tokens
                            Tokens.Launch = Tokens.Launch + 1
                        end
                    end
                    t9.SetAutoLock = fn1281
                    tT = "Merge an SCP"
                else
                    t9 = function(f3, f4, f5)
                        tU.Tokens[f3] += 1
                        local f7 = tU.Tokens[f3]
                        local gh = task.spawn(function()
                            while true do
                                local AH = tI() and tU.Tokens[f3] == f7
                                if AH then
                                    pcall(f5)
                                    local AH_1 = not tI() or tU.Tokens[f3] ~= f7
                                    if AH_1 then
                                        break
                                    end
                                    task.wait(f4)
                                    continue
                                end
                                break
                            end
                        end)
                        tT.Track(function()
                            tU.Tokens[f3] += 1
                            if coroutine.status(gh) ~= "dead" then
                                pcall(task.cancel, gh)
                            end
                        end)
                    end
                    tT.SetAutoMerge = function(gm)
                        local AV, Merge
                        local Tokens2 = tU.Tokens
                        Tokens2.Merge = Tokens2.Merge + 1
                        if not gm then
                            return
                        end
                        Merge = tU.Tokens.Merge
                        AV = task.spawn(function()
                            local AL_1
                            while true do
                                local AK = tI() and tU.Tokens.Merge == Merge
                                local AK_1
                                if AK then
                                    AK_1, AL_1 = pcall(tP)
                                    local AM = not tI() or tU.Tokens.Merge ~= Merge
                                    if AM then
                                        break
                                    end
                                    if AK_1 and AL_1 then
                                        local wait = task.wait
                                        local AL_2 = tB.Economy.PICKUP_COOLDOWN or 0.45
                                        wait(AL_2)
                                    else
                                        task.wait(0.05)
                                    end
                                    continue
                                end
                                break
                            end
                        end)
                        tT.Track(function()
                            if tU.Tokens.Merge == Merge then
                                local Tokens = tU.Tokens
                                Tokens.Merge = Tokens.Merge + 1
                            end
                            if coroutine.status(AV) ~= "dead" then
                                pcall(task.cancel, AV)
                            end
                        end)
                    end
                    tT.SetAutoBuyUpgrades = function(gG, gH)
                        if gG then
                            t9("Upgrades", 0.45, function()
                                if not tI() then
                                    return
                                end
                                local AZ = gH or {}
                                tN(AZ)
                            end)
                        else
                            local Tokens = tU.Tokens
                            Tokens.Upgrades = Tokens.Upgrades + 1
                        end
                    end
                    tT.SetAutoRebirth = fn983
                    tT.SetAutoMorph = fn1363
                    tT.SetAutoLaunch = function(g9, ha)
                        tU.LaunchEnabled = g9 == true
                        if g9 then
                            t9("Launch", 0.75, function()
                                if not tI() then
                                    return
                                end
                                local Bc = ha and ha()
                                if type(Bc) ~= "string" then
                                    return
                                end
                                t4(Bc)
                            end)
                        else
                            local Tokens = tU.Tokens
                            Tokens.Launch = Tokens.Launch + 1
                        end
                    end
                    tT.SetAutoLock = fn1281
                    u6 = "Merge an SCP"
                end
                u8 = (u8 + 27) % 176
            end
        else
            va = {
                "zkmsdotaqmp",
                "zxfwfhs",
                "iqdgxgwz",
                "xvxgd",
                "usozmuzeus",
                "auuvhkfrpvqu",
                "yaj",
                "ghuss",
                "qoit",
                "jtmvybkyvps",
                "hhixenug",
                "nwlgcufyhoem",
                "sebyt",
                "kemrhyoucasn",
                "nmxaegiexv",
                "mzrbrdginv"
            }
            if va[(u8 * 63 + 22) % 16 + 1] < va[(u8 * 63 + 22) % 16 + 1] then
                pcall(fn1232)
                uv = {}
            else
                pcall(fn1232)
                u9 = {}
            end
            u8 = (u8 + 27) % 176
        end
    elseif u7 <= 20 then
        if u7 <= 19 then
            if u7 <= 18 then
                if (u8 * 1 + 3) * 13 % 4 == ((u8 * 1 + 3) * 13 + 4) % 4 then
                    uO = ve
                else
                    ve = uO
                end
                u8 = (u8 + 159) % 176
            else
                va = {
                    "fqpe",
                    "yzdlctxzaug",
                    "hzabpfroiia",
                    "yxmq",
                    "nkkkejkrxx",
                    "arouw",
                    "xfkjcv",
                    "qfmfzz",
                    "awzlkqicyg",
                    "zqvcylemhhq",
                    "xyscupmwlv"
                }
                local ID = u8
                vb = va[ID % 11 + 1]
                if vb:len() >= vb:gsub("(.)", "%1%1", ID % 3 % 2 + 1):len() then
                    vf = uL(vd:WaitForChild("TryMerge"))
                else
                    uL = vd(vf:WaitForChild("TryMerge"))
                end
                u8 = (u8 + 27) % 176
            end
        else
            va = {
                "skpj",
                "ijc",
                "ronmi",
                "aeupjxc",
                "dvnf",
                "vhnrlsqd",
                "vvftbijeik",
                "kmh",
                "kfo",
                "fzlywwfzayh",
                "tteqjqihczld",
                "vmn",
                "najqjd",
                "lracpvtmxj",
                "lmkpalaa"
            }
            if va[(u8 * 71 + 4) % 15 + 1] <= va[(u8 * 71 + 4) % 15 + 1] then
                uF = vd(vf:WaitForChild("PickupEvent"))
                uB = vd(vf:WaitForChild("DropEvent"))
            else
                vd = uF(uB:WaitForChild("PickupEvent"))
                vf = uF(uB:WaitForChild("DropEvent"))
            end
            u8 = (u8 + 27) % 176
        end
    elseif u7 <= 21 then
        local Hs = bit32.rrotate(bit32.bxor(bit32.lrotate(u8, 9), string.byte(tostring(tK))), 30)
        if bit32.bxor(bit32.lrotate(bit32.bxor(Hs, 13491367), 24), 2801847772) == bit32.lrotate(Hs, 24) then
            uu = vd(vf:WaitForChild("Launch"))
            ur = vd(vf:WaitForChild("Lock"))
        else
            vd = ur(uu:WaitForChild("Launch"))
            vf = ur(uu:WaitForChild("Lock"))
        end
        u8 = (u8 + 115) % 176
    else
        if (u8 * 3 + 4) * 13 % 4 == ((u8 * 3 + 4) * 13 + 8) % 4 then
            un = vd(vf:WaitForChild("Upgrade"))
        else
            vf = un(vd:WaitForChild("Upgrade"))
        end
        u8 = (u8 + 5) % 176
    end
until (u8 * 161 + 29) % 176 == 98
if type(getgenv) ~= "function" then
    u7 = 0
    repeat
        if u7 * 123583631 + 1 + 1 >= u7 * 123583631 + 1 + 1 + 5 then
            u9[#u9 + 1] = "getgenv"
        else
            u9[#u9 + 1] = "getgenv"
        end
        u7 = (u7 + 3) % 4
    until (u7 * 1 + 3) % 4 == 2
end
if type(loadstring) ~= "function" then
    u7 = 1
    repeat
        u8 = (vector.create((u7 * 7 + 9) % 11 + 1, (u7 * 2 + 7) % 13 + 1, (u7 * 11 + 5) % 17 + 1))
        va = (vector.create((u7 * 3 + 2) % 11 + 1, (u7 * 9 + 7) % 13 + 1, (u7 * 8 + 6) % 17 + 1))
        vb = (vector.create((u7 * 1 + 2) % 11 + 1, (u7 * 4 + 13) % 13 + 1, (u7 * 5 + 8) % 17 + 1))
        if vector.dot(vector.cross(u8, va), vb) == vector.dot(vector.cross(va, vb), u8) + 4 then
            u9[#u9 + 1] = "loadstring"
        else
            u9[#u9 + 1] = "loadstring"
        end
        u7 = (u7 + 2) % 4
    until (u7 * 3 + 1) % 4 == 2
end
if typeof(game.HttpGet) ~= "function" then
    u7 = 1
    repeat
        local Ii = bit32.rrotate(bit32.bxor(bit32.lrotate(u7, 23), string.byte(tostring(u7))), 3)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Ii, 189069463), 1582319262), (bit32.bxor(bit32.band(Ii, 4105897832), 2315521225))), 1582319262), 2315521225) ~= Ii then
            u9[#u9 + 1] = "HttpGet"
        else
            u9[#u9 + 1] = "HttpGet"
        end
        u7 = (u7 + 2) % 4
    until (u7 * 1 + 3) % 4 == 2
end
u7 = #u9 == 0 and "available"
u8 = u7
if not u8 then
    u7 = 0
    repeat
        local IS = bit32.rrotate(bit32.bxor(bit32.lrotate(u7, 27), string.byte(tostring(u7))), 15)
        if bit32.bxor(bit32.lrotate(bit32.bxor(IS, 3672739830), 6), 3127115190) == bit32.lrotate(IS, 6) then
            u8 = "missing " .. table.concat(u9, ", ")
        else
            u9 = "missing " .. table.concat(u8, ", ")
        end
        u7 = (u7 + 2) % 8
    until (u7 * 7 + 3) % 8 == 1
end
uS, vb, uJ = nil, nil, nil
va = 1
repeat
    u7 = (va * 1 + 2) % 4 + 1
    if u7 <= 2 then
        if u7 <= 1 then
            u9 = (vector.create((va * 6 + 6) % 11 + 1, (va * 3 + 8) % 13 + 1, (va * 5 + 15) % 17 + 1))
            vc = (vector.create((va * 4 + 7) % 11 + 1, (va * 7 + 3) % 13 + 1, (va * 14 + 7) % 17 + 1))
            vd = (vector.create((va * 2 + 4) % 11 + 1, (va * 1 + 10) % 13 + 1, (va * 3 + 11) % 17 + 1))
            ve = (vector.create((va * 4 + 1) % 5 + 1, (va * 5 + 2) % 7 + 1, (va * 1 + 7) % 9 + 1))
            if vector.dot(vector.cross(u9, (vector.cross(vc, vd))), ve) == vector.dot(vc * vector.dot(u9, vd) - vd * vector.dot(u9, vc), ve) then
                vb = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
            else
                uS = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
            end
            va = (va + 1) % 32
        else
            local IY = bit32.rrotate(bit32.bxor(bit32.lrotate(va, 1), string.byte(tostring(uS))), 2)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(IY, 2934313965), 316750453), (bit32.bxor(bit32.band(IY, 1360653330), 2617817990))), 316750453), 2617817990) == IY then
                uJ = loadstring(game:HttpGet(vb .. "Library.lua"))()
            else
                vb = loadstring(game:HttpGet(uJ .. "Library.lua"))()
            end
            va = (va + 9) % 32
        end
    elseif u7 <= 3 then
        u7 = (vector.create((va * 3 + 8) % 11 + 1, (va * 9 + 6) % 13 + 1, (va * 10 + 17) % 17 + 1))
        u9 = (vector.create((va * 1 + 6) % 11 + 1, (va * 10 + 12) % 13 + 1, (va * 9 + 9) % 17 + 1))
        vc = (vector.create((va * 1 + 7) % 5 + 1, (va * 2 + 7) % 7 + 1, (va * 4 + 5) % 9 + 1))
        if math.abs((vector.angle(u7, u9, vc))) - math.abs((vector.angle(u9, u7, vc))) == 0 then
            assert(type(uJ) == "table", "UI library failed to load")
            vg(tT, uJ)
        else
            assert(type(tT) == "table", "UI library failed to load")
            uJ(vg, tT)
        end
        va = (va + 5) % 32
    else
        u7 = (vector.create((va * 2 + 5) % 11 + 1, (va * 8 + 3) % 13 + 1, (va * 10 + 17) % 17 + 1))
        u9 = (vector.create((va * 4 + 9) % 11 + 1, (va * 9 + 11) % 13 + 1, (va * 8 + 9) % 17 + 1))
        vc = (vector.create((va * 1 + 5) % 5 + 1, (va * 4 + 7) % 7 + 1, (va * 1 + 5) % 9 + 1))
        if math.abs((vector.angle(u7, u9, vc))) - math.abs((vector.angle(u9, u7, vc))) == 0 then
            uS = u8
        else
            u8 = uS
        end
        va = (va + 21) % 32
    end
until (va * 25 + 2) % 32 == 31
if type(setthreadidentity) == "function" then
    pcall(setthreadidentity, 8)
end
tx, uC = nil, nil
u7 = 2
repeat
    u8 = (u7 * 1 + 1) % 2 + 1
    if u8 <= 1 then
        u8 = (vector.create((u7 * 5 + 5) % 11 + 1, (u7 * 1 + 12) % 13 + 1, (u7 * 13 + 6) % 17 + 1))
        u9 = (vector.create((u7 * 7 + 4) % 11 + 1, (u7 * 5 + 1) % 13 + 1, (u7 * 13 + 13) % 17 + 1))
        va = (vector.create((u7 * 5 + 7) % 11 + 1, (u7 * 3 + 7) % 13 + 1, (u7 * 7 + 6) % 17 + 1))
        vc = (vector.create((u7 * 5 + 5) % 5 + 1, (u7 * 4 + 4) % 7 + 1, (u7 * 4 + 4) % 9 + 1))
        if vector.dot(vector.cross(u8, (vector.cross(u9, va))), vc) == vector.dot(u9 * vector.dot(u8, va) - va * vector.dot(u8, u9), vc) then
            tT.Track(fn1347)
        else
            tT.Track(fn1347)
        end
        u7 = (u7 + 7) % 16
    else
        u8 = (vector.create((u7 * 4 + 1) % 11 + 1, (u7 * 10 + 3) % 13 + 1, (u7 * 15 + 7) % 17 + 1))
        u9 = (vector.create((u7 * 1 + 7) % 11 + 1, (u7 * 3 + 2) % 13 + 1, (u7 * 5 + 8) % 17 + 1))
        va = (vector.create((u7 * 5 + 6) % 11 + 1, (u7 * 2 + 1) % 13 + 1, (u7 * 5 + 12) % 17 + 1))
        vc = (vector.create((u7 * 5 + 5) % 11 + 1, (u7 * 9 + 7) % 13 + 1, (u7 * 3 + 5) % 17 + 1))
        if vector.dot(vector.cross(u8, u9), (vector.cross(va, vc))) == vector.dot(u8, va) * vector.dot(u9, vc) - vector.dot(u8, vc) * vector.dot(u9, va) then
            uC = function()
                local function Bn(hA)
                    local Bl = not hA or not hA:IsA("ScreenGui")
                    if Bl then
                        return
                    end
                    hA.ResetOnSpawn = false
                    hA.IgnoreGuiInset = true
                    hA.ClipToDeviceSafeArea = false
                    hA.DisplayOrder = math.max(hA.DisplayOrder, 1000)
                    pcall(function()
                        hA.ScreenInsets = Enum.ScreenInsets.None
                    end)
                    if hA.Parent ~= CoreGui then
                        hA.Parent = CoreGui
                    end
                end
                Bn(uJ.ScreenGui)
                if uJ.ActiveLoading and uJ.ActiveLoading.ScreenGui then
                    Bn(uJ.ActiveLoading.ScreenGui)
                end
                for k, v in { "Obsidian", "ObsidianLoading" } do
                    local Bo_2 = CoreGui:FindFirstChild(v) or PlayerGui:FindFirstChild(v)
                    if Bo_2 then
                        Bn(Bo_2)
                    end
                end
            end
            uC()
            tx = task.spawn(worker2)
        else
            tx = function()
                local function Bn(hA)
                    local Bl = not hA or not hA:IsA("ScreenGui")
                    if Bl then
                        return
                    end
                    hA.ResetOnSpawn = false
                    hA.IgnoreGuiInset = true
                    hA.ClipToDeviceSafeArea = false
                    hA.DisplayOrder = math.max(hA.DisplayOrder, 1000)
                    pcall(function()
                        hA.ScreenInsets = Enum.ScreenInsets.None
                    end)
                    if hA.Parent ~= CoreGui then
                        hA.Parent = CoreGui
                    end
                end
                Bn(uJ.ScreenGui)
                if uJ.ActiveLoading and uJ.ActiveLoading.ScreenGui then
                    Bn(uJ.ActiveLoading.ScreenGui)
                end
                for k, v in { "Obsidian", "ObsidianLoading" } do
                    local Bo_1 = CoreGui:FindFirstChild(v) or PlayerGui:FindFirstChild(v)
                    if Bo_1 then
                        Bn(Bo_1)
                    end
                end
            end
            tx()
            uC = task.spawn(worker2)
        end
        u7 = (u7 + 5) % 16
    end
until (u7 * 5 + 5) % 16 == 11
if getgenv then
    u2, u8 = nil, nil
    u7 = 6
    repeat
        u9 = (u7 * 1 + 1) % 2 + 1
        if u9 <= 1 then
            local Hq = bit32.rrotate(bit32.bxor(bit32.lrotate(u7, 25), string.byte(tostring(u8))), 21)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Hq, 1048435795), 1568225846), (bit32.bxor(bit32.band(Hq, 3246531500), 2346810704))), 1568225846), 2346810704) == Hq then
                u8 = u2
            else
                u2 = u8
            end
            u7 = (u7 + 7) % 8
        else
            if u7 * 41789581 + 6 + 1 >= u7 * 41789581 + 6 + 1 + 1 then
                u8 = getgenv().__ouroboros_lib
            else
                u2 = getgenv().__ouroboros_lib
            end
            u7 = (u7 + 1) % 8
        end
    until (u7 * 3 + 4) % 8 == 6
    if u8 then
        u7 = 2
        repeat
            if u7 * 69601427 + 4 + 1 <= u7 * 69601427 + 4 + 1 + 5 then
                u8 = u2.Unloaded == false
            else
                u2 = u8.Unloaded == false
            end
            u7 = (u7 + 0) % 4
        until (u7 * 3 + 2) % 4 == 0
    end
    u7 = u2 ~= uJ
    u9 = u8 and u7
    if u9 then
        pcall(function()
            u2:Unload()
        end)
    end
    getgenv().__ouroboros_lib = uJ
end
uN, uK, Toggles, Options, ut, uq, ul, va, tR, vd, vc, t8, tJ, u7, u_, uz, ue, worker = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
uN = loadstring(game:HttpGet(vb .. "addons/ThemeManager.lua"))()
uK = loadstring(game:HttpGet(vb .. "addons/SaveManager.lua"))()
Toggles = uJ.Toggles
Options = uJ.Options
if (not u7 and u7 or (ue or vd)) and (not Options or vd or u7 and not vd) and not ((not u7 and u7 or (ue or vd)) and (not Options or vd or u7 and not vd)) then
    tJ = "https://discord.gg/ehKVq7pf7v"
else
    ut = "https://discord.gg/ehKVq7pf7v"
end
uq = "https://rscripts.net/@Ouroboros"
ul = "https://ouroboros-hub-rbx.web.app/"
t8 = fns.fn35
tJ = fn1322
if (not u_ or va or (not u_ or false)) and ("https://discord.gg/ehKVq7pf7v" and (vc and ut)) or not ((not u_ or va or (not u_ or false)) and ("https://discord.gg/ehKVq7pf7v" and (vc and ut))) then
    u7 = fn906
end
u_ = fn578
uz = fn953
ue = fn1042
va = uJ:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = ut, Copyable = true }, "|", u6 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
tR = {}
tR.Info = va:AddTab("Info", "info")
tR.Main = va:AddTab("Main", "gamepad-2")
tR.Player = va:AddTab("Player", "person-standing")
tR.Settings = va:AddTab("Settings", "settings")
u7(tR.Main)
u7(tR.Player)
u7(tR.Settings)
u8 = function()
    local Cj
    local Cd
    local Cm
    local Ck
    local Ce
    Cd = nil
    Ce = nil
    Cj = nil
    Ck = nil
    Cm = nil
    local Label3, Cc, Cf, Label, Ch, Ci, Cl, Label2
    Cm = function(iD)
        return (tostring(iD):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
    end
    Cj = function(iF, iG)
        return string.format('<font color="%s">%s</font>', iG, Cm(iF))
    end
    Cc = function(iJ, iK, iL)
        return string.format("<b>%s</b> %s %s", iJ, Cj("-", "#5a6070"), Cj(iK, iL))
    end
    local Co = "#8b93a3"
    Ci = "#e8a34d"
    Ce = "Unknown"
    Cl = "#7fd47f"
    pcall(function()
        local B0_1
        local B__1
        if type(identifyexecutor) == "function" then
            B0_1, B__1 = identifyexecutor()
            local B1 = B0_1 ~= ""
            local B2 = type(B0_1) == "string" and B1
            if B2 then
                local B1_1 = type(B__1) == "string" and B__1 ~= "" and B0_1 .. " " .. B__1
                Ce = B1_1 or B0_1
            end
        end
    end)
    Cd = os.clock()
    Ch = function()
        local B4 = math.floor(os.clock() - Cd)
        if B4 < 60 then
            return B4 .. "s"
        elseif B4 < 3600 then
            return string.format("%dm %ds", B4 // 60, B4 % 60)
        else
            return string.format("%dh %dm", B4 // 3600, B4 % 3600 // 60)
        end
    end
    local UserGroup = tR.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(Cc("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, Cl), true)
    UserGroup:AddLabel(Cc("UserId", tostring(LocalPlayer.UserId), "#6ec1ff"), true)
    UserGroup:AddLabel(Cc("Executor", Ce .. "  " .. uS, Cl), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(Cc("Session", Ch(), Ci), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            t8(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            t8("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = tR.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddLabel(Cc("Game", u6, "#6ec1ff"), true)
    Label2 = SessionGroup:AddLabel(Cc("Players", "0/0", Cl), true)
    Cf = tostring(game.JobId)
    local Cp = #Cf > 18 and string.sub(Cf, 1, 18) .. "..."
    local Cp_1 = Cp or Cf
    SessionGroup:AddLabel(Cc("Job", Cp_1, Co), true)
    Label = SessionGroup:AddLabel(Cc("Ping", "0 ms", Ci), true)
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
            t8(Cf, "Copied Job ID")
        end
    })
    Ck = task.spawn(function()
        local B7_1
        while true do
            task.wait(1)
            local B6 = uJ.Unloaded or not tI()
            local B6_1
            if B6 then
                break
            end
            Label3:SetText(Cc("Session", Ch(), Ci))
            Label2:SetText(Cc("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), Cl))
            B6_1, B7_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local B6_2 = B6_1 and B7_1 .. " ms" or "n/a"
            Label:SetText(Cc("Ping", B6_2, Ci))
        end
    end)
    tT.Track(function()
        if coroutine.status(Ck) ~= "dead" then
            pcall(task.cancel, Ck)
        end
    end)
    local SocialsGroup = tR.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = tJ })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            t8(uq, "Copied Rscripts profile")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            t8(ul, "Copied website link")
        end
    })
end
u8()
u9 = tR.Main:AddLeftGroupbox("Merge", "combine")
u9:AddToggle("AutoMerge", { Text = "Auto Merge", Default = false, Callback = fns.onAutoMerge })
u9:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false, Callback = fns.onAutoRebirth })
u9:AddToggle("AutoMorphBest", { Text = "Auto Morph Best Owned", Default = false, Callback = onAutoMorphBest })
vf = tR.Main:AddLeftGroupbox("Upgrades", "arrow-up")
vf:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false, Callback = onAutoBuyUpgrades })
vf:AddDropdown("AutoBuyUpgradeTarget", { Text = "Upgrades", Values = t_, Default = t_, Multi = true, SelectAllButtons = true })
vd = tR.Main:AddRightGroupbox("Launch", "rocket")
vd:AddToggle("AutoLaunch", { Text = "Auto Launch", Default = false, Callback = onAutoLaunch })
vd:AddDropdown("LaunchTarget", { Text = "Player", Values = ue(), Default = ue()[1] })
vc = tR.Main:AddRightGroupbox("Base", "shield")
vc:AddToggle("AutoLockBase", { Text = "Auto Lock Base", Default = false, Callback = fns.onAutoLockBase })
Toggles.AutoBuyUpgrades:OnChanged(fns.fn208)
Options.AutoBuyUpgradeTarget:OnChanged(fn1183)
worker = function()
    local LaunchTarget = Options.LaunchTarget
    if not LaunchTarget then
        return
    end
    local CB = ue()
    if type(LaunchTarget.SetValues) == "function" then
        pcall(function()
            LaunchTarget:SetValues(CB)
        end)
    end
    local Value = LaunchTarget.Value
    local CE = false
    for k, v in CB do
        if v == Value then
            CE = true
            break
        end
    end
    if not CE then
        pcall(function()
            LaunchTarget:SetValue(CB[1])
        end)
    end
end
connection, connection2 = nil, nil
connection = Players.PlayerAdded:Connect(worker)
connection2 = Players.PlayerRemoving:Connect(fns.onPlayerRemoving)
tT.Track(fns.fn32)
tH = nil
tH = task.spawn(worker3)
tT.Track(fn1297)
u7 = function()
    local kI
    local kK
    local kJ
    local kH
    kH = {}
    kK = {}
    local kL = {}
    kI = {}
    kJ = {}
    local function kM()
        for k, v in kH do
            if k.Parent then
                k.CanCollide = v
            end
        end
        table.clear(kH)
    end
    local function kQ()
        for k, v in kI do
            if k.Parent then
                k.WalkSpeed = v
            end
        end
        table.clear(kI)
    end
    local function kU()
        for k, v in kJ do
            if k.Parent then
                k.PlatformStand = v
            end
        end
        table.clear(kJ)
    end
    local function kY()
        for k, v in kK do
            if k.Parent then
                k.HoldDuration = v[1]
                k.MaxActivationDistance = v[2]
                k.RequiresLineOfSight = v[3]
            end
        end
        table.clear(kK)
    end
    local function k1(k2)
        if not k2:IsA("ProximityPrompt") then
            return
        end
        if not kK[k2] then
            kK[k2] = { k2.HoldDuration, k2.MaxActivationDistance, k2.RequiresLineOfSight }
        end
        k2.HoldDuration = 0
        k2.MaxActivationDistance = 50
        k2.RequiresLineOfSight = false
    end
    local function k4()
        local Character = LocalPlayer.Character
        local Dl = Character and Character:FindFirstChildOfClass("Humanoid")
        return Dl
    end
    local function k9()
        local Character = LocalPlayer.Character
        local Do = Character and Character:FindFirstChild("HumanoidRootPart")
        return Do
    end
    local MovementGroup = tR.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", {
        Text = "WalkSpeed",
        Default = false,
        Callback = function(lf)
            if not lf then
                kQ()
            end
        end
    })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", {
        Text = "NoClip",
        Default = false,
        Callback = function(lh)
            if not lh then
                kM()
            end
        end
    })
    MovementGroup:AddToggle("InstantProximityPrompt", {
        Text = "Instant ProximityPrompt",
        Default = false,
        Callback = function(lj)
            if lj then
                for i, descendant in up:GetDescendants() do
                    pcall(k1, descendant)
                end
            else
                kY()
            end
        end
    })
    local FlyGroup = tR.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", {
        Text = "Fly",
        Default = false,
        Callback = function(lr)
            if not lr then
                kU()
            end
        end
    })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    table.insert(kL, up.DescendantAdded:Connect(function(lt)
        if Toggles.InstantProximityPrompt.Value then
            pcall(k1, lt)
        end
    end))
    table.insert(kL, RunService.Stepped:Connect(function()
        local Character = LocalPlayer.Character
        if Toggles.NoClip.Value and Character then
            for i, descendant in Character:GetDescendants() do
                if descendant:IsA("BasePart") then
                    if kH[descendant] == nil then
                        kH[descendant] = descendant.CanCollide
                    end
                    descendant.CanCollide = false
                end
            end
        end
    end))
    table.insert(kL, UserInputService.JumpRequest:Connect(function()
        local DQ = k4()
        if Toggles.InfJump.Value and DQ then
            DQ:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end))
    table.insert(kL, RunService.RenderStepped:Connect(function(lI)
        local DT = k4()
        local DU = k9()
        local CurrentCamera = up.CurrentCamera
        if Toggles.WalkSpeedEnabled.Value and DT then
            if kI[DT] == nil then
                kI[DT] = DT.WalkSpeed
            end
            DT.WalkSpeed = Options.WalkSpeed.Value
        end
        if Toggles.Fly.Value and DU and DT and CurrentCamera then
            if kJ[DT] == nil then
                kJ[DT] = DT.PlatformStand
            end
            DT.PlatformStand = true
            local DT_1 = Vector3.zero
            if not UserInputService:GetFocusedTextBox() then
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    DT_1 += CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    DT_1 -= CurrentCamera.CFrame.LookVector
                end
                local D3 = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
                if D3 == 1 then
                    DT_1 -= CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    DT_1 += CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    DT_1 += Vector3.new(0, 1, 0)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                    DT_1 -= Vector3.new(0, 1, 0)
                end
            end
            DU.AssemblyLinearVelocity = Vector3.zero
            if DT_1.Magnitude > 0 then
                DU.CFrame = DU.CFrame + DT_1.Unit * Options.FlySpeed.Value * lI
            end
        end
    end))
    tT.Track(function()
        for k, v in kL do
            v:Disconnect()
        end
        kM()
        kQ()
        kU()
        kY()
    end)
end
u7()
va = function()
    local Fx
    Fx = nil
    local Fh, Fi, Fj, Fk, Fl, Fm, Fn, Fo, Fp, Fq, Fr, Fs, Ft, Fu, Label, Fw, Fy
    Fm = {}
    Fw = {}
    Fp = nil
    Fo = 0
    Fy = false
    Fs = os.clock()
    local MenuGroup = tR.Settings:AddLeftGroupbox("Menu", "logs")
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    Label = MenuGroup:AddLabel("AFK triggers: 0")
    Fl = function()
        local CurrentCamera
        CurrentCamera = up.CurrentCamera
        local Ec = not CurrentCamera
        local Eg = if Ec then 1 else 0
        local Ee = 1348 * Eg + 2442 * (1 - Eg)
        local Ef = 421 * Eg + 848 * (1 - Eg)
        if not ((Ee * 2186 + Ef * 217 + Ee * Ef) % 16777213 == 3605593) then
            Ec = type(VirtualUser.CaptureController) ~= "function"
        end
        local Eg_1 = if Ec then 1 else 0
        local Ee_1 = 3988 * Eg_1 + 2946 * (1 - Eg_1)
        local Ef_1 = 256 * Eg_1 + 377 * (1 - Eg_1)
        if not ((Ee_1 * 3514 + Ef_1 * 469 + Ee_1 * Ef_1) % 16777213 == 15154824) then
            Ec = type(VirtualUser.ClickButton2) ~= "function"
        end
        if Ec then
            return false
        end
        local Ec_1 = pcall(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        end)
        if not Ec_1 then
            return false
        end
        Fo += 1
        Fs = os.clock()
        pcall(function()
            Label:SetText("AFK triggers: " .. Fo)
        end)
        return true
    end
    Fr = function(mo)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not mo)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not mo
            end
        end)
        if not mo then
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
    Ft = {
        ParticleEmitter = true,
        Trail = true,
        Smoke = true,
        Fire = true,
        Sparkles = true,
        Explosion = true,
        Beam = true
    }
    Fj = function(mD)
        if Ft[mD.ClassName] then
            if Fm[mD] == nil then
                Fm[mD] = mD.Enabled
            end
            pcall(function()
                mD.Enabled = false
            end)
        end
    end
    Fk = function()
        for k, v in Fm do
            local Ew = k
            local Ey = v
            if Ew.Parent then
                pcall(function()
                    Ew.Enabled = Ey
                end)
            end
        end
        table.clear(Fm)
        if Fp then
            pcall(function()
                settings().Rendering.QualityLevel = Fp.Quality
            end)
            Lighting.GlobalShadows = Fp.Shadows
            Lighting.FogEnd = Fp.Fog
            Fp = nil
        end
    end
    MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3D", {
        Text = "Disable 3D Rendering",
        Default = false,
        Callback = function(mR)
            pcall(function()
                RunService:Set3dRenderingEnabled(not mR)
            end)
        end
    })
    MenuGroup:AddToggle("FpsBoost", {
        Text = "FPS Boost",
        Default = false,
        Callback = function(mW)
            if mW then
                if not Fp then
                    Fp = {
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
                for i, descendant in up:GetDescendants() do
                    pcall(Fj, descendant)
                end
            else
                Fk()
            end
        end
    })
    MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddToggle("AutoExecute", { Text = "Auto Execute", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    uJ.ToggleKeybind = Options.MenuKeybind
    local ScriptGroup = tR.Settings:AddLeftGroupbox("Script", "terminal")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            uJ:Unload()
        end
    })
    Toggles.AntiGameplayPause:OnChanged(function()
        Fr(Toggles.AntiGameplayPause.Value)
    end)
    if Toggles.AntiGameplayPause.Value then
        Fr(true)
    end
    table.insert(Fw, LocalPlayer.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(Fl)
        end
    end))
    table.insert(Fw, up.DescendantAdded:Connect(function(nc)
        if Toggles.FpsBoost.Value then
            pcall(Fj, nc)
        end
    end))
    Fu = function()
        local JobId, PlaceId
        if Fy then
            return
        end
        Fy = true
        PlaceId, JobId = game.PlaceId, game.JobId
        local EN = pcall(function()
            TeleportService:TeleportToPlaceInstance(PlaceId, JobId, LocalPlayer)
        end)
        if not EN then
            pcall(function()
                TeleportService:Teleport(PlaceId, LocalPlayer)
            end)
        end
    end
    Fx = task.spawn(function()
        local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
        local EV = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
        if not EV then
            return
        end
        table.insert(Fw, EV.ChildAdded:Connect(function(ny)
            local EP = not tI()
            local ET = if EP then 1 else 0
            local ER = 3836 * ET + 3625 * (1 - ET)
            local ES = 3265 * ET + 1736 * (1 - ET)
            if not ((ER * 1899 + ES * 60 + ER * ES) % 16777213 == 3227791) then
                EP = uJ.Unloaded
            end
            if EP then
                return
            end
            if Toggles.AutoReconnect.Value and ny.Name == "ErrorPrompt" then
                Fu()
            end
        end))
    end)
    tT.Track(function()
        if coroutine.status(Fx) ~= "dead" then
            pcall(task.cancel, Fx)
        end
    end)
    table.insert(Fw, TeleportService.TeleportInitFailed:Connect(function()
        if Toggles.AutoReconnect.Value then
            Fy = false
            Fu()
        end
    end))
    local Fz_2 = typeof(queue_on_teleport) == "function" and queue_on_teleport
    local FA = Fz_2
    if not FA then
        local Fz_3 = typeof(queueonteleport) == "function" and queueonteleport
        FA = Fz_3
    end
    Fh = false
    Fq = FA
    Fn = function()
        if type(Fq) ~= "function" then
            return false
        elseif Fh then
            return true
        else
            Fh = pcall(Fq, 'if not game:IsLoaded() then game.Loaded:Wait() end local env = (getgenv and getgenv()) or _G if env.OuroborosAutoExecuted == game.JobId then return end env.OuroborosAutoExecuted = game.JobId task.wait(3) loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/Ouroboros/refs/heads/main/games/Merge%20an%20SCP.luau"))()')
            return Fh
        end
    end
    Toggles.AutoExecute:OnChanged(function()
        if not u_("AutoExecute") then
            return
        end
        if not Fn() then
            uJ:Notify("queue_on_teleport is not supported by your executor")
        end
    end)
    table.insert(Fw, LocalPlayer.OnTeleport:Connect(function(n4)
        if n4 ~= Enum.TeleportState.Started then
            return
        end
        local E3 = not tI() or uJ.Unloaded
        local E7 = if E3 then 1 else 0
        local E5 = 260 * E7 + 703 * (1 - E7)
        local E6 = 1171 * E7 + 2806 * (1 - E7)
        if not ((E5 * 1101 + E6 * 3998 + E5 * E6) % 16777213 == 5272378) then
            E3 = not u_("AutoExecute")
        end
        if E3 then
            return
        end
        Fn()
    end))
    Fi = task.spawn(function()
        while true do
            local E8 = tI() and not uJ.Unloaded
            if E8 then
                task.wait(1)
                local E8_1 = not tI() or uJ.Unloaded
                if E8_1 then
                    break
                end
                if Toggles.AntiGameplayPause.Value then
                    Fr(true)
                end
                local E8_2 = Toggles.AntiAfk.Value and os.clock() - Fs >= 60
                if E8_2 then
                    pcall(Fl)
                end
                continue
            end
            break
        end
    end)
    tT.Track(function()
        if coroutine.status(Fi) ~= "dead" then
            pcall(task.cancel, Fi)
        end
        for k, v in Fw do
            v:Disconnect()
        end
        Fr(false)
        Fk()
        pcall(function()
            RunService:Set3dRenderingEnabled(true)
        end)
    end)
end
va()
u9 = function()
    local Gy, Gz, GA, GB
    uN:SetLibrary(uJ)
    uN:SetFolder("MyScriptHub")
    uN:SaveDefault("Evil Hello Kitty")
    uN:ApplyToTab(tR.Settings)
    uK:SetLibrary(uJ)
    uK:IgnoreThemeSettings()
    uK:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    uK:SetFolder("OuroborosHub/MergeAnSCP")
    local GC = uK:BuildConfigSection(tR.Settings)
    Gy = function(oD, oE)
        local FD_1 = (oD == "Toggle" and Toggles or Options)[oE]
        local FC_2 = type(FD_1) == "table" and FD_1.Type == oD
        return FC_2 and FD_1 or nil
    end
    GA = function(oN, oO)
        local Type = oO.Type
        if Type == "Toggle" then
            return { idx = oN, type = "Toggle", value = oO.Value == true }
        elseif Type == "Slider" then
            return { idx = oN, type = "Slider", value = tostring(oO.Value) }
        elseif Type == "Dropdown" then
            return { idx = oN, type = "Dropdown", multi = oO.Multi == true, value = oO.Value }
        elseif Type == "Input" then
            local FK = oO.Value
            local FO = if FK then 1 else 0
            local FM = 319 * FO + 3462 * (1 - FO)
            local FN = 754 * FO + 2576 * (1 - FO)
            if not ((FM * 3331 + FN * 2048 + FM * FN) % 16777213 == 2847307) then
                FK = ""
            end
            return { idx = oN, type = "Input", text = tostring(FK) }
        elseif Type == "ColorPicker" then
            return { idx = oN, type = "ColorPicker", value = oO.Value:ToHex(), transparency = oO.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = oN,
                type = "KeyPicker",
                mode = oO.Mode,
                key = oO.Value,
                modifiers = oO.Modifiers,
                toggled = oO.Toggled
            }
        else
            return nil
        end
    end
    Gz = function()
        local FQ = {}
        for k, v in { Toggles, Options } do
            for k, v in v do
                local FR = type(v) == "table" and type(v.Type) == "string" and not uK.Ignore[k]
                if FR then
                    local FR_1 = GA(k, v)
                    if FR_1 then
                        FQ[#FQ + 1] = FR_1
                    end
                end
            end
        end
        table.sort(FQ, function(oY, oZ)
            if oY.type ~= oZ.type then
                return oY.type < oZ.type
            end
            return oY.idx < oZ.idx
        end)
        return { objects = FQ }
    end
    GB = function(o0)
        local Gc
        Gc = nil
        local Gd = type(o0) ~= "table" or type(o0.idx) ~= "string"
        local Gh = if Gd then 1 else 0
        local Gf = 2409 * Gh + 22 * (1 - Gh)
        local Gg = 1141 * Gh + 3785 * (1 - Gh)
        if not ((Gf * 2271 + Gg * 3473 + Gf * Gg) % 16777213 == 12182201) then
            Gd = type(o0.type) ~= "string"
        end
        if not Gd then
            Gd = uK.Ignore[o0.idx]
        end
        if Gd then
            return false
        end
        Gc = Gy(o0.type, o0.idx)
        if not Gc then
            return false
        end
        local Gd_1 = pcall(function()
            if o0.type == "Input" then
                if type(o0.text) ~= "string" then
                    return
                end
                Gc:SetValue(o0.text)
            elseif o0.type == "ColorPicker" then
                Gc:SetValueRGB(Color3.fromHex(o0.value), o0.transparency)
            elseif o0.type == "KeyPicker" then
                Gc:SetValue({ o0.key, o0.mode, o0.modifiers })
                if o0.mode == "Toggle" and o0.toggled ~= nil then
                    Gc.Toggled = o0.toggled
                    Gc:Update()
                end
            elseif o0.type == "Toggle" then
                if type(o0.value) ~= "boolean" then
                    return
                end
                Gc:SetValue(o0.value)
            elseif o0.type == "Slider" then
                local F4_2 = tonumber(o0.value)
                if F4_2 == nil then
                    return
                end
                Gc:SetValue(F4_2)
            elseif o0.type == "Dropdown" then
                Gc:SetValue(o0.value)
            end
        end)
        return Gd_1 == true
    end
    GC:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Default = "", Finished = true, AllowEmpty = true })
    GC:AddButton({
        Text = "Export Config to Clipboard",
        Func = function()
            local Gj_1
            local Gi_1
            Gi_1, Gj_1 = pcall(HttpService.JSONEncode, HttpService, Gz())
            if not Gi_1 then
                uJ:Notify("Failed to encode config")
                return
            end
            t8(Gj_1, "Copied config")
        end
    })
    GC:AddButton({
        Text = "Import Config from Clipboard Text",
        Func = function()
            local Gn_1
            local Gm = Options.SaveManager_ImportSource and Options.SaveManager_ImportSource.Value or ""
            local Gm_1
            if Gm == "" then
                uJ:Notify("Paste an exported config into the box first")
                return
            end
            if #Gm > 262144 then
                uJ:Notify("Config is too large")
                return
            end
            Gm_1, Gn_1 = pcall(HttpService.JSONDecode, HttpService, Gm)
            local Gl_2 = not Gm_1
            local Gr = if Gl_2 then 1 else 0
            local Gp = 2106 * Gr + 2329 * (1 - Gr)
            local Gq = 13 * Gr + 3216 * (1 - Gr)
            if not ((Gp * 1582 + Gq * 1983 + Gp * Gq) % 16777213 == 3384849) then
                Gl_2 = type(Gn_1) ~= "table"
            end
            local Gr_1 = if Gl_2 then 1 else 0
            local Gp_1 = 1178 * Gr_1 + 3122 * (1 - Gr_1)
            local Gq_1 = 1487 * Gr_1 + 2091 * (1 - Gr_1)
            if not ((Gp_1 * 654 + Gq_1 * 857 + Gp_1 * Gq_1) % 16777213 == 3796457) then
                Gl_2 = type(Gn_1.objects) ~= "table"
            end
            if Gl_2 then
                uJ:Notify("That is not a valid exported config")
                return
            end
            if #Gn_1.objects > 2048 then
                uJ:Notify("Config has too many records")
                return
            end
            local Gl_3 = 0
            for k, v in Gn_1.objects do
                if GB(v) then
                    Gl_3 += 1
                end
            end
            if Gl_3 == 0 then
                uJ:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local Gn_2 = Gl_3 == 1 and "" or "s"
            uJ:Notify(("Imported %d setting%s"):format(Gl_3, Gn_2), 6)
        end
    })
    uN:LoadDefault()
    uK:LoadAutoloadConfig()
    if Toggles.HideUiOnStart.Value then
        uJ:Toggle(false)
    end
end
u9()
