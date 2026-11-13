local fns = {}
local AR_1, AR_3, AR_6, AR_9, AR_11, AR_15, AR_16, AR_17, AR_18, AR_20, AR_21, AR_23, AR_24, AR_26, AR_29, AR_30, AR_32, AR_37, AR_40, AR_51, AR_53
AR_3 = nil
AR_6 = nil
AR_9 = nil
AR_15 = nil
AR_17 = nil
AR_18 = nil
AR_21 = nil
AR_23 = nil
AR_24 = nil
AR_29 = nil
AR_32 = nil
local rE
local qE
local r2
local q2
local connection
local qr
local rQ
local qQ
local re
local qe
local rD
local BuyVent
local r1
local q1
local rq
local qq
local rP
local EmptyBackpack
local rd
local qd
local rC
local qC
local r0
local q0
local Dumpsters
local LeafSim
local qO
local UpgradeConfig
local Options
local BuyUpgrade
local r_
local q_
local qo
local rN
local BuyToolCash
local LocalPlayer
local qb
local rA
local GaragePressed
local QuestConfig
local qZ
local rn
local qn
local rM
local qM
local ra
local qa
local rz
local qz
local rY
local qY
local rm
local qm
local rL
local qL
local q9
local p9
local ry
local qy
local ReplicatedStorage
local qX
local rl
local ql
local rK
local qK
local q8
local Library
local rx
local qx
local rW
local qW
local qk
local Label2
local qJ
local q7
local p7
local rw
local Label
local rV
local qV
local rj
local BasementVentClick
local Toggles
local qI
local connection2
local BagConfig
local rv
local EquipTool
local rU
local qU
local ri
local qi
local rH
local BuyBagUpgrade
local q5
local p5
local ru
local qu
local rT
local rh
local JournalOpened
local UserInputService
local qG
local q4
local rt
local qt
local rS
local qS
function fns.fn9(d8, d9)
    local vV
    local vW = math.huge
    for i, child in ipairs(rl:GetChildren()) do
        local vX = child:IsA("BasePart") and child:GetAttribute("Unlocked") == true
        if vX then
            local vY = d8 and (child.Position - d8).Magnitude or 0
            local vX_2 = not d9
            if not vX_2 then
                vX_2 = vY <= d9
            end
            if vX_2 and vY < vW then
                vW = vY
                vV = child
            end
        end
    end
    return vV
end
function fns.fn31(cU, cV)
    local cW = cU.CFrame:PointToObjectSpace(cV)
    local cX = cU.Size * 0.5
    local cY = math.max(math.abs(cW.X) - cX.X, 0)
    local cZ = math.max(math.abs(cW.Y) - cX.Y, 0)
    local c_ = math.max(math.abs(cW.Z) - cX.Z, 0)
    return math.sqrt(cY * cY + cZ * cZ + c_ * c_)
end
function fns.fn48(f5)
    local xq = qy()
    for i, v in ipairs(qI) do
        local xr = f5 or rj(v)
        if xr then
            local xr_1 = qE[v]
            local xs = xr_1 and UpgradeConfig.tools[xr_1.toolKey]
            local xt = xs
            if xs then
                xs = xt.upgrades[xr_1.upgName]
            end
            local xu = xs
            if xu then
                local ownsAttr = xt.ownsAttr
                local xt_1 = ownsAttr == nil or LocalPlayer:GetAttribute(ownsAttr) == true
                if xt_1 then
                    local xs_2 = tonumber(LocalPlayer:GetAttribute("Upg_" .. xr_1.toolKey .. "_" .. xr_1.upgName)) or 0
                    if xs_2 < xu.max then
                        local xs_3 = xu.prices[xs_2 + 1] or 0
                        local xt_3 = 0
                        local xu_1 = xs_3
                        if xr_1.toolKey == "Rake" then
                            local xs_4 = tonumber(LocalPlayer:GetAttribute("LobbyRakeDiscount")) or 0
                            xt_3 = xs_4
                        elseif xr_1.toolKey == "LeafBlower" then
                            local xs_5 = tonumber(LocalPlayer:GetAttribute("LobbyBlowerDiscount")) or 0
                            xt_3 = xs_5
                        end
                        if xt_3 > 0 then
                            xu_1 = math.round(xu_1 * (1 - xt_3) * 100) / 100
                        end
                        if xq >= xu_1 then
                            BuyUpgrade:FireServer(xr_1.toolKey, xr_1.upgName)
                            task.wait(0.12)
                            xq = qy()
                        end
                    end
                end
            end
        end
    end
end
function fns.fn76(ai, aj)
    if setclipboard then
        setclipboard(ai)
    elseif toclipboard then
        toclipboard(ai)
    end
    Library:Notify(aj)
end
function fns.fn90(fL)
    local w2 = not fL
    if w2 ~= false then
        w2 = not AR_9("Bag Upgrade")
    end
    if w2 then
        return
    end
    if r2() then
        return
    end
    local clamp = math.clamp
    local w3 = tonumber(LocalPlayer:GetAttribute("BagLevel")) or 0
    local w4 = clamp(w3, 0, #BagConfig.caps - 1)
    if w4 >= #BagConfig.caps - 1 then
        return
    end
    local w2_2 = BagConfig.prices[w4 + 1]
    local w3_1 = w2_2 and qy() >= w2_2
    if w3_1 then
        local BagUpgrade = ri:FindFirstChild("BagUpgrade")
        if BagUpgrade then
            q8(BagUpgrade:GetPivot().Position)
            task.wait(0.1)
        end
        BuyBagUpgrade:FireServer()
        task.wait(0.2)
    end
end
function fns.fn123(ey)
    if qm() <= 0 then
        return false
    end
    local wn = rv(ey)
    if not wn then
        return false
    end
    q8(wn:GetPivot().Position)
    task.wait(0.2)
    EmptyBackpack:FireServer()
    task.wait(0.15)
    return true
end
function fns.fn133()
    if r2() then
        return false
    end
    return qm() >= math.max(1, AR_6() - 1)
end
function fns.fn174(dT, dU, dV)
    local vD = q1(dT)
    if #vD == 0 then
        return {}
    end
    rx()
    local vE = {}
    local vF = {}
    local vG = dV or 40
    for i, v in ipairs(vD) do
        local vD_1 = rh:GetPartBoundsInBox(v.CFrame, v.Size + qi, qd)
        for i, v in ipairs(vD_1) do
            local vD_2 = not vF[v]
            if vD_2 ~= false then
                vD_2 = rd(v)
            end
            if vD_2 then
                vD_2 = qK(v, dT)
            end
            if vD_2 then
                vF[v] = true
                local vG_1 = dU and (v.Position - dU).Magnitude or 0
                vE[#vE + 1] = { leaf = v, dist = vG_1 }
                if vG == 1 then
                    return { v }
                end
            end
        end
    end
    return rU(vE, vG)
end
function fns.fn190(cL)
    local uJ = p9[cL]
    if uJ then
        return uJ
    end
    local uJ_1 = ru:FindFirstChild(cL)
    local uK = {}
    if uJ_1 then
        for i, child in ipairs(uJ_1:GetChildren()) do
            if child:IsA("BasePart") then
                uK[#uK + 1] = child
            end
        end
    end
    p9[cL] = uK
    return uK
end
function fns.fn218(cI)
    local uE = cI ~= nil and cI:IsA("BasePart") and cI.Name == "Leaf" and cI.Transparency < 1 and cI.Parent ~= nil
    return uE
end
function fns.fn224()
    local wj = LeafSim.upgEffect and LeafSim.upgEffect("Hand", "Grasp")
    local max = math.max
    local wl = tonumber(wj) or 1
    return max(1, wl)
end
function fns.fn227(g5)
    local x9 = ru:FindFirstChild(g5)
    if not x9 then
        return 0, 0, 0, 1
    end
    local ya = tonumber(x9:GetAttribute("GoalCollected")) or 0
    local ya_1 = tonumber(x9:GetAttribute("GoalTotal")) or 0
    local ya_2 = (tonumber(x9:GetAttribute("WavesCleared")))
    local yh = if ya_2 then 1 else 0
    local yf = 854 * yh + 961 * (1 - yh)
    local yg = 2304 * yh + 2506 * (1 - yh)
    if not ((yf * 3379 + yg * 64 + yf * yg) % 16777213 == 5000738) then
        ya_2 = 0
    end
    local yd = ya_2
    local ya_3 = tonumber(x9:GetAttribute("WavesTotal")) or tonumber(x9:GetAttribute("Waves"))
    local x9_1 = ya_3
    local yh_1 = if x9_1 then 1 else 0
    local yf_1 = 1008 * yh_1 + 2231 * (1 - yh_1)
    local yg_1 = 1249 * yh_1 + 174 * (1 - yh_1)
    if not ((yf_1 * 3540 + yg_1 * 613 + yf_1 * yg_1) % 16777213 == 5592949) then
        x9_1 = 1
    end
    return ya, ya_1, yd, x9_1
end
function fns.fn232()
    for i in ipairs(QuestConfig) do
        if not AR_15(i) then
            return i
        end
    end
    return nil
end
function fns.fn270(fr)
    local wS = qy()
    for i, v in ipairs(qS) do
        local wT = fr or AR_9(v.label)
        local wU = wT and LocalPlayer:GetAttribute(v.attr) ~= true
        if wU then
            local wT_1 = v.cash
            local wU_1 = 0
            if v.key == "Rake" then
                local wV_1 = tonumber(LocalPlayer:GetAttribute("LobbyRakeDiscount")) or 0
                wU_1 = wV_1
            elseif v.key == "LeafBlower" then
                local wV_2 = tonumber(LocalPlayer:GetAttribute("LobbyBlowerDiscount")) or 0
                wU_1 = wV_2
            end
            if wU_1 > 0 then
                wT_1 = math.round(wT_1 * (1 - wU_1) * 100) / 100
            end
            if wS >= wT_1 then
                local wU_2 = v.key == "LeafBlower" and "Leaf Blower" or v.key
                local wT_3 = ri:FindFirstChild(wU_2)
                if wT_3 then
                    local wU_3 = wT_3:FindFirstChild("Hitbox") or wT_3:FindFirstChildWhichIsA("BasePart")
                    if wU_3 then
                        q8(wU_3.Position)
                        task.wait(0.1)
                    end
                end
                BuyToolCash:FireServer(v.key)
                task.wait(0.2)
                wS = qy()
            end
        end
    end
end
function fns.fn345(a8)
    local s7 = qC("UpgradeChoice")
    if next(s7) == nil then
        return true
    end
    return s7[a8] == true
end
function fns.fn371(hl)
    local yi = qM()
    if not yi then
        return false
    end
    local yj = math.max(rP(), 24)
    local yk = LeafSim.collectBudget and LeafSim.collectBudget()
    if typeof(yk) == "number" then
        yj = math.max(rP(), math.min(yk, 40))
    end
    local yk_1 = rM(hl, yi.Position, yj)
    if #yk_1 == 0 then
        return false
    end
    local yj_1 = yk_1[1]
    if (yj_1.Position - yi.Position).Magnitude > 12 then
        q8(yj_1.Position)
    end
    qG("Hand")
    LeafSim.collectMany(yk_1)
    LocalPlayer:SetAttribute("HandCooldown", false)
    return true
end
function fns.fn378(gX)
    local xZ = gX == 6 and rN("Garage") and not qu("Garage")
    if xZ then
        return "Garage"
    end
    for i, v in ipairs(qV) do
        local xZ_1 = rN(v) and not qu(v)
        if xZ_1 then
            return v
        end
    end
    return nil
end
function fns.fn395(a4)
    local s5 = qC("BuyChoice")
    if next(s5) == nil then
        return true
    end
    return s5[a4] == true
end
function fns.fn477(c1)
    local Name
    local uT = math.huge
    for i, child in ipairs(ru:GetChildren()) do
        if child:IsA("Model") then
            for i, v in ipairs(q1(child.Name)) do
                local uU = AR_21(v, c1)
                if uU < uT then
                    uT = uU
                    Name = child.Name
                end
            end
        end
    end
    return Name
end
function fns.fn504(dp, dq)
    table.sort(dp, function(dr, ds)
        return dr.dist < ds.dist
    end)
    local vh = {}
    local vi = dq
    local vn = if vi then 1 else 0
    local vl = 241 * vn + 733 * (1 - vn)
    local vm = 3362 * vn + 1772 * (1 - vn)
    if not ((vl * 2592 + vm * 2536 + vl * vm) % 16777213 == 9960946) then
        vi = 12
    end
    local vj = vi
    local vi_1 = math.min(vj, #dp)
    local vq = 1
    while vq <= vi_1 do
        local vr = vq
        vh[vr] = dp[vr].leaf
        vq += 1
    end
    return vh
end
function fns.fn523()
    local Character = LocalPlayer.Character
    local ta = Character and Character:FindFirstChildOfClass("Humanoid")
    return ta
end
function fns.fn530()
    local ux = LeafSim.folder or rh:FindFirstChild("Leaves")
    return ux
end
function fns.fn544()
    if r2() then
        return false
    end
    return qm() >= AR_6()
end
function fns.fn548()
    local tf = tonumber(LocalPlayer:GetAttribute("Cash")) or 0
    return tf
end
function fns.fn567()
    local yr_2
    local yq_1, yq_2
    local yp_1, yp_2
    local yu_3
    local yt_3
    if ReplicatedStorage:GetAttribute("RunCompletedAt") then
        r0 = nil
        AR_23 = false
        rC("Run complete")
        return re(0.6)
    elseif rh:GetAttribute("GarageOpen") ~= true then
        rC("Opening garage")
        rm()
        return re(0.4)
    else
        local yn = qk()
        local yn_5, yn_7, yn_9, yn_10
        local yo = yn == 2 and qm() > 0
        local yo_9, yo_10, yo_15
        if yo then
            rC("Selling")
            rq(r0)
            return re(0.35)
        elseif yn == 3 then
            rC("Opening journal")
            qX()
            return re(0.35)
        else
            local yo_1 = r0 and qu(r0)
            if yo_1 then
                rC("Finished " .. r0)
                r0 = nil
                AR_23 = false
                return re(0.2)
            elseif not r0 then
                rV(true)
                qn(true)
                local yo_2 = LocalPlayer:GetAttribute("OwnsRake") == true
                local yv_1 = if yo_2 then 1 else 0
                local yt_1 = 569 * yv_1 + 2273 * (1 - yv_1)
                local yu_1 = 1249 * yv_1 + 3215 * (1 - yv_1)
                if not ((yt_1 * 1294 + yu_1 * 1359 + yt_1 * yu_1) % 16777213 == 3144358) then
                    yo_2 = LocalPlayer:GetAttribute("OwnsLeafBlower") == true
                end
                if yo_2 then
                    q4(true)
                end
                rw(true)
                r0 = qJ(yn)
                AR_23 = false
                if r0 then
                    qq(r0)
                    rC("Starting " .. r0)
                    local yo_3 = qU(r0)
                    if yo_3 then
                        q8(yo_3)
                    end
                    AR_23 = true
                    return re(0.25)
                elseif not r0 then
                    local yo_4 = rN("Basement") or qu("Basement")
                    if yo_10 then
                        return AR_3()
                    end
                    if yn then
                        local yo_5 = QuestConfig[yn]
                        local yo_6 = yo_5 and "Quest: " .. yo_5.desc
                        if not ((yt_3 * 488 + yu_3 * 3147 + yt_3 * yu_3) % 16777213 == 6307271) then
                            yo_6 = "Waiting"
                        end
                        rC(yo_6)
                    else
                        rC("Waiting")
                    end
                    return re(0.5)
                else
                    local yn_2 = (qu("Basement"))
                    if not yn_7 then
                        local yo_7 = r0 == "Basement" and q7:GetAttribute("Slid") == true
                    end
                    if yn_7 then
                        r0 = nil
                        AR_23 = false
                        return AR_3()
                    end
                    qq(r0)
                    if rn() then
                        rC("Selling (" .. r0 .. ")")
                        rq(r0)
                        return re(0.3)
                    end
                    local yn_3 = qM()
                    local yo_8 = yn_3 and yn_3.Position
                    rM(r0, yo_8, 1)
                    if #yn_9 == 0 then
                        yo_9, yn_5, yp_1, yq_1 = qa(r0)
                        if yr_2 then
                            rw(true)
                            if yp_2 < yq_2 then
                                rC("Waiting wave " .. r0)
                            else
                                rC("Waiting " .. r0)
                            end
                            return re(0.45)
                        end
                        rC("Clearing " .. r0)
                        return re(0.25)
                    end
                    if not AR_23 then
                        qq(r0)
                        AR_23 = true
                    end
                    rC("Clearing " .. r0)
                    qL(r0)
                    return re(0.12)
                end
            elseif not r0 then
                yo_10 = rN("Basement") or qu("Basement")
                if yo_10 then
                    return AR_3()
                end
                if yn then
                    local yo_11 = QuestConfig[yn]
                    local yo_12 = yo_11 and "Quest: " .. yo_11.desc
                    local yv_3 = if yo_12 then 1 else 0
                    yt_3 = 4033 * yv_3 + 3752 * (1 - yv_3)
                    yu_3 = 2941 * yv_3 + 2432 * (1 - yv_3)
                    if not ((yt_3 * 488 + yu_3 * 3147 + yt_3 * yu_3) % 16777213 == 6307271) then
                        yo_12 = "Waiting"
                    end
                    rC(yo_12)
                else
                    rC("Waiting")
                end
                return re(0.5)
            else
                yn_7 = (qu("Basement"))
                if not yn_7 then
                    local yo_13 = r0 == "Basement" and q7:GetAttribute("Slid") == true
                    yn_7 = yo_13
                end
                if yn_7 then
                    r0 = nil
                    AR_23 = false
                    return AR_3()
                end
                qq(r0)
                if rn() then
                    rC("Selling (" .. r0 .. ")")
                    rq(r0)
                    return re(0.3)
                end
                local yn_8 = qM()
                local yo_14 = yn_8 and yn_8.Position
                yn_9 = rM(r0, yo_14, 1)
                if #yn_9 == 0 then
                    yo_15, yn_10, yp_2, yq_2 = qa(r0)
                    yr_2 = yn_10 > 0 and yo_15 < yn_10
                    if yr_2 then
                        rw(true)
                        if yp_2 < yq_2 then
                            rC("Waiting wave " .. r0)
                        else
                            rC("Waiting " .. r0)
                        end
                        return re(0.45)
                    end
                    rC("Clearing " .. r0)
                    return re(0.25)
                end
                if not AR_23 then
                    qq(r0)
                    AR_23 = true
                end
                rC("Clearing " .. r0)
                qL(r0)
                return re(0.12)
            end
        end
    end
end
function fns.fn574()
    local xC = q9:FindFirstChild("RedBall") or q9:FindFirstChildWhichIsA("BasePart")
    if not xC then
        return false
    end
    q8(xC.Position)
    task.wait(0.15)
    GaragePressed:FireServer()
    return true
end
function fns.fn587()
    rC("Finishing basement")
    q8(q7:GetPivot().Position)
    task.wait(re(0.2))
    pcall(function()
        BasementVentClick:FireServer()
    end)
    return re(0.4)
end
function fns.fn601(gz)
    local xG = QuestConfig[gz]
    if not xG then
        return true
    end
    local xH = (tonumber(LocalPlayer:GetAttribute("Quest" .. gz)))
    local xL = if xH then 1 else 0
    local xJ = 3713 * xL + 4083 * (1 - xL)
    local xK = 579 * xL + 1608 * (1 - xL)
    if not ((xJ * 2050 + xK * 3453 + xJ * xK) % 16777213 == 11760764) then
        xH = 0
    end
    return xH >= xG.total
end
function fns.fn610(ap, aq)
    return string.format('<font color="%s">%s</font>', aq, ap)
end
function fns.fn624(bR)
    local tF = q0[bR]
    if tF == nil then
        return true
    elseif tF == "ALL" then
        for i, child in ipairs(ru:GetChildren()) do
            local tG = child:IsA("Model") and child.Name ~= "Basement" and child:GetAttribute("GoalTotal") and not qu(child.Name)
            if tG then
                return false
            end
        end
        return true
    else
        for i, v in ipairs(tF) do
            if not qu(v) then
                return false
            end
        end
        return true
    end
end
function fns.fn628()
    local tj = (tonumber(LocalPlayer:GetAttribute("LeafCapacity")))
    local tn = if tj then 1 else 0
    local tl = 3841 * tn + 2035 * (1 - tn)
    local tm = 1188 * tn + 2663 * (1 - tn)
    if not ((tl * 3700 + tm * 1780 + tl * tm) % 16777213 == 4112235) then
        tj = 25
    end
    return tj
end
function fns.fn639()
    ry(q5, "Copied Discord invite to clipboard")
end
function fns.fn663()
    local Character = LocalPlayer.Character
    local td = Character and Character:FindFirstChild("HumanoidRootPart")
    return td
end
function fns.fn707(fS)
    local w9 = not fS
    if w9 ~= false then
        w9 = not AR_9("Vents")
    end
    if w9 then
        return
    end
    local w9_1 = qy()
    local xa = {}
    for i, child in ipairs(rl:GetChildren()) do
        local xb_1 = child:IsA("BasePart") and child:GetAttribute("Cost") ~= nil and child:GetAttribute("Unlocked") ~= true
        if xb_1 then
            xa[#xa + 1] = child
        end
    end
    table.sort(xa, function(fZ, f_)
        local w6 = fZ:GetAttribute("Cost") or 0
        local w7 = f_:GetAttribute("Cost") or 0
        return w6 < w7
    end)
    local xb_2 = false
    for i, v in ipairs(xa) do
        local xa_1 = v:GetAttribute("Cost") or 0
        if w9_1 >= xa_1 then
            q8(v.Position)
            task.wait(0.1)
            BuyVent:FireServer(v)
            task.wait(0.2)
            w9_1 = qy()
            xb_2 = true
        end
    end
    return xb_2
end
local function fn711()
    local th = tonumber(LocalPlayer:GetAttribute("Leaves")) or 0
    return th
end
local function fn727(gL)
    if not Label2 then
        return
    end
    Label2:SetText(qO("Status", gL, ql))
end
local function fn738(b_)
    local tX = ru:FindFirstChild(b_)
    if not tX then
        return nil
    end
    local tY = Vector3.zero
    local tZ = 0
    for i, child in ipairs(tX:GetChildren()) do
        if child:IsA("BasePart") then
            tY += child.Position
            tZ += 1
        end
    end
    if tZ == 0 then
        return tX:GetPivot().Position
    end
    return tY / tZ
end
local function fn753(eD)
    if rL() then
        return false
    end
    local wp = LeafSim.collectBudget and LeafSim.collectBudget()
    local wp_3
    local wq = wp or AR_6() - qm()
    local wq_1 = typeof(wq) == "number" and wq <= 0
    if wq_1 then
        return false
    end
    local wq_2 = qM()
    if not wq_2 then
        return false
    end
    local wr = eD
    if not wr then
        for i, v in ipairs(qV) do
            local ws_1 = rN(v) and not qu(v)
            if ws_1 then
                wr = v
                break
            end
        end
    end
    local Position = wq_2.Position
    if wr then
        qq(wr)
    end
    local wt = typeof(wq) == "number" and math.min(wq, 40)
    local wp_2 = wt or 40
    local wt_2 = math.max(wp_2, rP())
    if wr then
        wp_3 = rM(wr, Position, wt_2)
        if #wp_3 == 0 then
            local wu = qU(wr)
            if wu then
                q8(wu)
                local wq_3 = qM()
                local wq_4 = wq_3 and wq_3.Position or Position
                wp_3 = rM(wr, wq_4, wt_2)
            end
        end
    else
        wp_3 = ra(Position, 22, wt_2, nil)
    end
    if #wp_3 == 0 then
        return false
    end
    local wq_5 = wp_3[1]
    local wr_1 = qM()
    if wr_1 and wq_5 and (wq_5.Position - wr_1.Position).Magnitude > 14 then
        q8(wq_5.Position)
    end
    qG("Hand")
    LeafSim.collectMany(wp_3)
    LocalPlayer:SetAttribute("HandCooldown", false)
    return true
end
local function fn763(ek, el)
    local v6
    local v7
    local v8 = math.huge
    for i, child in ipairs(rl:GetChildren()) do
        local v9 = child:IsA("BasePart") and child:GetAttribute("Unlocked") == true
        if v9 then
            local Position = child.Position
            local wa = el or 10
            local wb = ra(Position, wa, 12, ek)
            if #wb > 0 then
                local Magnitude = (wb[1].Position - child.Position).Magnitude
                if Magnitude < v8 then
                    v8 = Magnitude
                    v6 = child
                    v7 = wb[1]
                end
            end
        end
    end
    return v6, v7
end
local function fn777()
    local uz = r_()
    if uz then
        qd.FilterDescendantsInstances = { uz }
    end
end
local function fn810(aU)
    local sS = Options[aU]
    local sT = sS and sS.Value
    if typeof(sT) ~= "table" then
        return {}
    end
    local sT_1 = true
    local sU = {}
    for k in sT do
        if type(k) ~= "number" then
            sT_1 = false
            break
        end
    end
    if sT_1 then
        for i, v in ipairs(sT) do
            if type(v) == "string" then
                sU[v] = true
            end
        end
        return sU
    end
    return sT
end
local function fn844()
    rV(false)
    qn(false)
    q4(false)
end
local function fn848()
    if LocalPlayer:GetAttribute("JournalOpen") ~= true then
        pcall(function()
            local VirtualInputManager = game:GetService("VirtualInputManager")
            VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Tab, false, game)
            task.wait(0.05)
            VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Tab, false, game)
        end)
    end
    JournalOpened:FireServer()
end
local function fn944()
    return LocalPlayer:GetAttribute("InfiniteBag") == true
end
local function fn948(bG)
    local ty = bG or "Hand"
    LocalPlayer:SetAttribute("SelectedTool", ty)
    if bG == "Hand" or bG == nil then
        EquipTool:FireServer(nil)
    else
        EquipTool:FireServer(bG)
    end
end
local function fn976(dB, dC, dD, dE)
    if not dB then
        return {}
    end
    rx()
    local vt = {}
    local vu = rh:GetPartBoundsInRadius(dB, dC, qd)
    for i, v in ipairs(vu) do
        local vu_1 = (rd(v))
        if vu_1 then
            local vv = not dE or qK(v, dE)
            vu_1 = vv
        end
        if vu_1 then
            vt[#vt + 1] = { leaf = v, dist = (v.Position - dB).Magnitude }
        end
    end
    local vu_2 = dD or 12
    return rU(vt, vu_2)
end
local function fn1020(ib)
    local DiscordGroup = ib:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = AR_29 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = AR_29 })
end
local function fn1024(bA, bB)
    local tq = qM()
    if not tq then
        return false
    end
    local tr = bA + Vector3.new(0, 4, 0)
    if (tq.Position - tr).Magnitude <= (bB or 8) then
        return true
    end
    tq.AssemblyLinearVelocity = Vector3.zero
    tq.AssemblyAngularVelocity = Vector3.zero
    tq.CFrame = CFrame.new(tr)
    return true
end
local function fn1035(attr2)
    local uh = attr2 == ""
    local ui = type(attr2) ~= "string" or uh
    if ui or attr2 == "None" then
        attr2 = LocalPlayer:GetAttribute("CurrentZone")
    end
    if attr2 == "None" then
        attr2 = nil
    end
    local uh_2 = nil
    local ui_1 = nil
    local uj_1 = math.huge
    local uk = math.huge
    local ul = qM()
    local um = ul and ul.Position
    for i, child in ipairs(Dumpsters:GetChildren()) do
        if child:IsA("Model") then
            local attr = child:GetAttribute("ZoneRequired")
            local Position = child:GetPivot().Position
            local un_1 = um and (Position - um).Magnitude or 0
            if attr2 and attr == attr2 then
                if un_1 < uk then
                    uk = un_1
                    ui_1 = child
                end
            else
                if attr == "None" or attr == nil then
                    if un_1 < uj_1 then
                        uj_1 = un_1
                        uh_2 = child
                    end
                end
            end
        end
    end
    return ui_1 or uh_2
end
local function fn1039(aP)
    local sP = Toggles[aP]
    return sP ~= nil and sP.Value == true
end
local function fn1043(dd, de)
    local Position = dd.Position
    local u8 = math.huge
    for i, v in ipairs(q1(de)) do
        local u9 = AR_21(v, Position)
        if u9 < u8 then
            u8 = u9
        end
    end
    if u8 == 0 then
        return true
    end
    return rD(Position) == de
end
local function fn1062()
    local yx_1
    local yw_1
    if identifyexecutor then
        yx_1, yw_1 = identifyexecutor()
        local yy = yx_1 ~= ""
        local yz = type(yx_1) == "string" and yy
        if yz then
            local yy_1 = type(yw_1) == "string" and yw_1 ~= "" and yx_1 .. " " .. yw_1
            qY = yy_1 or yx_1
        end
    end
end
local function fn1093(bK)
    local tB = ru:FindFirstChild(bK)
    if not tB then
        return false
    elseif tB:GetAttribute("Completed") == true then
        return true
    else
        local tC = tonumber(tB:GetAttribute("GoalTotal")) or 0
        local tC_1 = tonumber(tB:GetAttribute("GoalCollected")) or 0
        return tC > 0 and tC_1 >= tC
    end
end
local function fn1101(as, at, au)
    return string.format("<b>%s</b> %s %s", as, q2("-", "#5a6070"), q2(at, au))
end
local function fn1106(e5)
    local wF = LocalPlayer:GetAttribute("OwnsLeafBlower") == true
    local wG = LocalPlayer:GetAttribute("OwnsRake") == true
    local wG_2
    local wH = not wG
    local wH_10
    local wI = not wF
    local wI_1
    if wI ~= false then
        wI = wH
    end
    if wI then
        return false
    end
    local wH_1 = wG and not wF and LocalPlayer:GetAttribute("RakeCooldown")
    if wH_1 then
        return false
    end
    local wH_2 = e5 and 10
    local wO = if wH_2 then 1 else 0
    local wM = 2214 * wO + 2334 * (1 - wO)
    local wN = 1917 * wO + 2041 * (1 - wO)
    if not ((wM * 1819 + wN * 3136 + wM * wN) % 16777213 == 14283216) then
        wH_2 = 14
    end
    wI_1, wG_2 = qQ(e5, wH_2)
    if not wI_1 then
        local wH_3 = e5 and qU(e5)
        local wH_4 = qM()
        local wK = wH_3
        local wO_1 = if wK then 1 else 0
        local wM_1 = 1516 * wO_1 + 1435 * (1 - wO_1)
        local wN_1 = 1020 * wO_1 + 3515 * (1 - wO_1)
        if not ((wM_1 * 198 + wN_1 * 2754 + wM_1 * wN_1) % 16777213 == 4655568) then
            wK = wH_4 and wH_4.Position
        end
        local wH_5 = wK
        if not wH_5 then
            return false
        end
        local wK_1 = e5 and 40 or nil
        local wI_2 = rY(wH_5, wK_1)
        if not wI_2 then
            return false
        end
        local wH_6 = ra(wI_2.Position, 10, 20, e5)
        if #wH_6 == 0 then
            return false
        end
        local wG_3 = wH_6[1]
        if not wG_3 or not wG_3.Parent then
            return false
        end
        local wH_8 = wI_2.Position - wG_3.Position
        local wJ_4 = wG_3.Position
        if wH_10.Magnitude > 0.1 then
            wJ_4 = wG_3.Position + wH_8.Unit * -3
        end
        q8(wJ_4)
        task.wait(0.1)
        if wF then
            qG("LeafBlower")
            LocalPlayer:SetAttribute("LeafBlowerBlowing", true)
            LeafSim.blowAim(wI_2.Position)
            task.wait(0.25)
            LeafSim.blowStop()
            LocalPlayer:SetAttribute("LeafBlowerBlowing", false)
        else
            qG("Rake")
            LocalPlayer:SetAttribute("RakeCooldown", true)
            LeafSim.rake(wI_2.Position)
            task.delay(0.75, function()
                LocalPlayer:SetAttribute("RakeCooldown", false)
            end)
        end
        return true
    end
    if not wG_2 or not wG_2.Parent then
        return false
    end
    wH_10 = wI_1.Position - wG_2.Position
    local wJ_5 = wG_2.Position
    if wH_10.Magnitude > 0.1 then
        wJ_5 = wG_2.Position + wH_10.Unit * -3
    end
    q8(wJ_5)
    task.wait(0.1)
    if wF then
        qG("LeafBlower")
        LocalPlayer:SetAttribute("LeafBlowerBlowing", true)
        LeafSim.blowAim(wI_1.Position)
        task.wait(0.25)
        LeafSim.blowStop()
        LocalPlayer:SetAttribute("LeafBlowerBlowing", false)
    else
        qG("Rake")
        LocalPlayer:SetAttribute("RakeCooldown", true)
        LeafSim.rake(wI_1.Position)
        task.delay(0.75, function()
            LocalPlayer:SetAttribute("RakeCooldown", false)
        end)
    end
    return true
end
local function fn1151(gQ)
    local xS = 4
    local AutoWinSpeed = Options.AutoWinSpeed
    if AutoWinSpeed then
        local xU = (tonumber(AutoWinSpeed.Value))
        local xY = if xU then 1 else 0
        local xW = 3086 * xY + 2353 * (1 - xY)
        local xX = 3079 * xY + 3986 * (1 - xY)
        if not ((xW * 1683 + xX * 357 + xW * xX) % 16777213 == 15794735) then
            xU = 4
        end
        xS = xU
    end
    local xS_1 = math.clamp(xS, 1, 10)
    local xS_2 = 2.2 - 1.65 * ((xS_1 - 1) / 9)
    return math.max(0.06, gQ * xS_2)
end
p5 = nil
BagConfig = nil
p7 = nil
Library = nil
p9 = nil
qa = nil
qb = nil
UpgradeConfig = nil
qd = nil
qe = nil
AR_32 = nil
AR_6 = nil
JournalOpened = nil
qi = nil
BasementVentClick = nil
qk = nil
ql = nil
qm = nil
qn = nil
qo = nil
qq = nil
qr = nil
AR_21 = nil
qt = nil
qu = nil
EquipTool = nil
Label = nil
qx = nil
qy = nil
qz = nil
GaragePressed = nil
BuyUpgrade = nil
qC = nil
BuyVent = nil
qE = nil
AR_15 = nil
qG = nil
BuyBagUpgrade = nil
qI = nil
qJ = nil
qK = nil
qL = nil
qM = nil
BuyToolCash = nil
qO = nil
EmptyBackpack = nil
qQ = nil
AR_24 = nil
qS = nil
local DoorToggle
qU = nil
qV = nil
qW = nil
qX = nil
qY = nil
qZ = nil
q_ = nil
q0 = nil
q1 = nil
q2 = nil
AR_17 = nil
q4 = nil
q5 = nil
connection2 = nil
q7 = nil
q8 = nil
q9 = nil
ra = nil
LocalPlayer = nil
rd = nil
re = nil
AR_29 = nil
AR_3 = nil
rh = nil
ri = nil
rj = nil
rl = nil
rm = nil
rn = nil
Dumpsters = nil
rq = nil
connection = nil
AR_18 = nil
rt = nil
ru = nil
rv = nil
rw = nil
rx = nil
ry = nil
rz = nil
rA = nil
Options = nil
rC = nil
rD = nil
rE = nil
AR_9 = nil
local qT, rc, CoreGui, GuiService
UserInputService = nil
rH = nil
Toggles = nil
Label2 = nil
rK = nil
rL = nil
rM = nil
rN = nil
LeafSim = nil
rP = nil
rQ = nil
AR_23 = nil
rS = nil
rT = nil
rU = nil
rV = nil
rW = nil
ReplicatedStorage = nil
rY = nil
QuestConfig = nil
r_ = nil
r0 = nil
r1 = nil
r2 = nil
ReplicatedStorage, UserInputService, rA, rt, GuiService, CoreGui, rh, LocalPlayer, q5, q_, EmptyBackpack, BuyToolCash, BuyBagUpgrade, BuyVent, BuyUpgrade, GaragePressed, EquipTool, DoorToggle, BasementVentClick, JournalOpened, UpgradeConfig, BagConfig, QuestConfig, LeafSim = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local AR_10 = game:GetService("Players")
ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
if (not LeafSim and ReplicatedStorage and (not LeafSim and not ReplicatedStorage) and (LeafSim and LeafSim and (LeafSim or ReplicatedStorage)) or (ReplicatedStorage or not LeafSim or not LeafSim and ReplicatedStorage or (not LeafSim or not LeafSim) and (LeafSim and not ReplicatedStorage))) and ((LeafSim or not LeafSim) and (ReplicatedStorage or not LeafSim) and ((ReplicatedStorage or ReplicatedStorage) and (ReplicatedStorage and not LeafSim)) or (not LeafSim and ReplicatedStorage or not ReplicatedStorage and ReplicatedStorage or (not LeafSim or not LeafSim or (ReplicatedStorage or not LeafSim)))) or not ((not LeafSim and ReplicatedStorage and (not LeafSim and not ReplicatedStorage) and (LeafSim and LeafSim and (LeafSim or ReplicatedStorage)) or (ReplicatedStorage or not LeafSim or not LeafSim and ReplicatedStorage or (not LeafSim or not LeafSim) and (LeafSim and not ReplicatedStorage))) and ((LeafSim or not LeafSim) and (ReplicatedStorage or not LeafSim) and ((ReplicatedStorage or ReplicatedStorage) and (ReplicatedStorage and not LeafSim)) or (not LeafSim and ReplicatedStorage or not ReplicatedStorage and ReplicatedStorage or (not LeafSim or not LeafSim or (ReplicatedStorage or not LeafSim))))) then
    rA = game:GetService("VirtualUser")
    rt = game:GetService("HttpService")
else
    rt = game:GetService("VirtualUser")
    rA = game:GetService("HttpService")
end
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
rh = game:GetService("Workspace")
LocalPlayer = AR_10.LocalPlayer
local AR_35 = "Clean all the leaves!"
q5 = "https://discord.gg/ehKVq7pf7v"
q_ = "https://rscripts.net/@Ouroboros"
local AR_33 = ReplicatedStorage:WaitForChild("Remotes")
EmptyBackpack = AR_33:WaitForChild("EmptyBackpack")
BuyToolCash = AR_33:WaitForChild("BuyToolCash")
BuyBagUpgrade = AR_33:WaitForChild("BuyBagUpgrade")
BuyVent = AR_33:WaitForChild("BuyVent")
BuyUpgrade = AR_33:WaitForChild("BuyUpgrade")
GaragePressed = AR_33:WaitForChild("GaragePressed")
EquipTool = AR_33:WaitForChild("EquipTool")
DoorToggle = AR_33:WaitForChild("DoorToggle")
BasementVentClick = AR_33:WaitForChild("BasementVentClick")
JournalOpened = AR_33:WaitForChild("JournalOpened")
UpgradeConfig = require(ReplicatedStorage:WaitForChild("UpgradeConfig"))
BagConfig = require(ReplicatedStorage:WaitForChild("BagConfig"))
QuestConfig = require(ReplicatedStorage:WaitForChild("QuestConfig"))
LeafSim = require(LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("LeafSim"))
local AR_13 = (rh:FindFirstChild("Map"))
if not AR_13 then
    AR_10 = 3
    repeat
        if (AR_10 * 2 + 1) * 16 % 3 == ((AR_10 * 2 + 1) * 16 + 6) % 3 then
            AR_13 = rh:WaitForChild("Map", 3)
        else
            rh = AR_13:WaitForChild("Map", 3)
        end
        AR_10 = (AR_10 + 3) % 4
    until (AR_10 * 3 + 2) % 4 == 0
end
AR_10 = AR_13 or rh
AR_33, ru, Dumpsters, rl, ri, rc, q9, q7, q0, qV, qS, AR_13, qI, qE = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local AR_47 = 0
repeat
    AR_16 = (AR_47 * 1 + 1) % 7 + 1
    if AR_16 <= 4 then
        if AR_16 <= 2 then
            if AR_16 <= 1 then
                AR_51 = (vector.create((AR_47 * 2 + 8) % 11 + 1, (AR_47 * 7 + 6) % 13 + 1, (AR_47 * 5 + 17) % 17 + 1))
                AR_37 = (vector.create((AR_47 * 6 + 9) % 11 + 1, (AR_47 * 5 + 7) % 13 + 1, (AR_47 * 13 + 10) % 17 + 1))
                AR_20 = (vector.create((AR_47 * 2 + 6) % 11 + 1, (AR_47 * 7 + 4) % 13 + 1, (AR_47 * 6 + 1) % 17 + 1))
                AR_53 = (vector.create((AR_47 * 2 + 3) % 5 + 1, (AR_47 * 4 + 3) % 7 + 1, (AR_47 * 5 + 2) % 9 + 1))
                if vector.dot(vector.cross(AR_51, (vector.cross(AR_37, AR_20))), AR_53) == vector.dot(AR_37 * vector.dot(AR_51, AR_20) - AR_20 * vector.dot(AR_51, AR_37), AR_53) then
                    qE = {}
                else
                    q0 = {}
                end
                AR_47 = (AR_47 + 43) % 56
            else
                AR_51 = {
                    "meacmquef",
                    "tcv",
                    "qbhjvrduy",
                    "ncbbgtzz",
                    "jvdjmfwg",
                    "qmgwknf",
                    "vsbcbantw",
                    "iszpps",
                    "zfsotrbogvm",
                    "kvd"
                }
                local C1 = AR_47
                AR_37 = AR_51[C1 % 10 + 1]
                if AR_37:len() >= AR_37:reverse():rep(C1 % 3 + 2):len() then
                    AR_10 = AR_33
                else
                    AR_33 = AR_10
                end
                AR_47 = (AR_47 + 36) % 56
            end
        elseif AR_16 <= 3 then
            if (AR_47 * 1 + 5) * 17 % 4 == ((AR_47 * 1 + 5) * 17 + 4) % 4 then
                ru = AR_33:WaitForChild("Leave_Locations")
                Dumpsters = AR_33:WaitForChild("Dumpsters")
                rl = AR_33:WaitForChild("Vents")
                ri = AR_33:WaitForChild("ToolsToBuy")
                rc = AR_33:WaitForChild("Doors")
            else
                AR_33 = Dumpsters:WaitForChild("Leave_Locations")
                rl = Dumpsters:WaitForChild("Dumpsters")
                ru = Dumpsters:WaitForChild("Vents")
                rc = Dumpsters:WaitForChild("ToolsToBuy")
                ri = Dumpsters:WaitForChild("Doors")
            end
            AR_47 = (AR_47 + 36) % 56
        else
            AR_51 = (vector.create((AR_47 * 7 + 8) % 11 + 1, (AR_47 * 10 + 3) % 13 + 1, (AR_47 * 13 + 3) % 17 + 1))
            AR_37 = (vector.create((AR_47 * 7 + 4) % 11 + 1, (AR_47 * 7 + 7) % 13 + 1, (AR_47 * 15 + 17) % 17 + 1))
            AR_20 = (vector.create((AR_47 * 2 + 9) % 11 + 1, (AR_47 * 8 + 13) % 13 + 1, (AR_47 * 5 + 11) % 17 + 1))
            AR_53 = (vector.create((AR_47 * 3 + 3) % 5 + 1, (AR_47 * 1 + 1) % 7 + 1, (AR_47 * 1 + 6) % 9 + 1))
            if vector.dot(vector.cross(AR_51, (vector.cross(AR_37, AR_20))), AR_53) == vector.dot(AR_37 * vector.dot(AR_51, AR_20) - AR_20 * vector.dot(AR_51, AR_37), AR_53) + 5 then
                AR_33 = q7:WaitForChild("GarageButton")
                q0 = q7:WaitForChild("BasementVent")
                q9 = {
                    Pool = { "Porch", "Frontyard", "Rooftop", "Garage", "Court", "Shed" },
                    Maze = { "Court", "Frontyard", "Garage", "Porch", "Rooftop", "Shed" },
                    Farm = { "Maze" },
                    Backyard = { "Court", "Shed", "Rooftop", "Porch", "Frontyard", "Garage" },
                    Rooftop = { "Porch", "Frontyard", "Garage", "Shed" },
                    Basement = "ALL"
                }
            else
                q9 = AR_33:WaitForChild("GarageButton")
                q7 = AR_33:WaitForChild("BasementVent")
                q0 = {
                    Basement = "ALL",
                    Rooftop = { "Porch", "Garage", "Shed", "Frontyard" },
                    Backyard = { "Frontyard", "Porch", "Court", "Garage", "Shed", "Rooftop" },
                    Maze = { "Frontyard", "Porch", "Court", "Garage", "Shed", "Rooftop" },
                    Pool = { "Frontyard", "Porch", "Court", "Garage", "Shed", "Rooftop" },
                    Farm = { "Maze" }
                }
            end
            AR_47 = (AR_47 + 1) % 56
        end
    elseif AR_16 <= 6 then
        if AR_16 <= 5 then
            if (AR_47 * 3 + 5) * 21 % 4 == ((AR_47 * 3 + 5) * 21 + 4) % 4 then
                qV = {
                    "Porch",
                    "Garage",
                    "Shed",
                    "Frontyard",
                    "Court",
                    "Rooftop",
                    "Backyard",
                    "Pool",
                    "Maze",
                    "Farm",
                    "Basement"
                }
                qS = {
                    { key = "Rake", attr = "OwnsRake", cash = 7.99, label = "Rake" },
                    { key = "LeafBlower", attr = "OwnsLeafBlower", cash = 29.99, label = "Leaf Blower" },
                    { key = "Molotov", attr = "OwnsMolotov", cash = 100, label = "Molotov" }
                }
            else
                qS = {
                    "Garage",
                    "Frontyard",
                    "Porch",
                    "Maze",
                    "Pool",
                    "Court",
                    "Basement",
                    "Rooftop",
                    "Farm",
                    "Shed",
                    "Backyard"
                }
                qV = {
                    { attr = "OwnsLeafBlower", key = "LeafBlower", cash = 29.99, label = "Leaf Blower" },
                    { cash = 100, attr = "OwnsMolotov", key = "Molotov", label = "Molotov" },
                    { key = "Rake", label = "Rake", attr = "OwnsRake", cash = 7.99 }
                }
            end
            AR_47 = (AR_47 + 29) % 56
        else
            AR_16 = {
                "zqzobjehysa",
                "gnu",
                "tisbqpngzo",
                "mrnpgex",
                "pfj",
                "urpywt",
                "qxxmizgzclt",
                "ych",
                "fqi",
                "ffk",
                "ypqgr",
                "wayke"
            }
            local CO = AR_47
            AR_51 = AR_16[CO % 12 + 1]
            if AR_51:len() >= AR_51:reverse():rep(CO % 3 + 2):len() then
                q7 = { "Molotov", "Vents", "Rake", "Leaf Blower", "Bag Upgrade" }
            else
                AR_13 = { "Rake", "Leaf Blower", "Molotov", "Bag Upgrade", "Vents" }
            end
            AR_47 = (AR_47 + 1) % 56
        end
    else
        AR_16 = (vector.create((AR_47 * 1 + 1) % 11 + 1, (AR_47 * 1 + 6) % 13 + 1, (AR_47 * 10 + 2) % 17 + 1))
        AR_51 = (vector.create((AR_47 * 6 + 6) % 11 + 1, (AR_47 * 11 + 5) % 13 + 1, (AR_47 * 6 + 11) % 17 + 1))
        AR_37 = (vector.create((AR_47 * 6 + 9) % 11 + 1, (AR_47 * 10 + 6) % 13 + 1, (AR_47 * 11 + 8) % 17 + 1))
        if vector.dot(vector.cross(AR_16, AR_51), AR_37) == vector.dot(vector.cross(AR_51, AR_37), AR_16) + 3 then
            rc = {}
        else
            qI = {}
        end
        AR_47 = (AR_47 + 29) % 56
    end
until (AR_47 * 5 + 18) % 56 == 53
for k, v in pairs(UpgradeConfig.tools) do
    AR_10 = k == "LeafBlower" and "Leaf Blower"
    AR_47 = AR_10 or k
    AR_10 = AR_47
    AR_47 = {}
    AR_33 = v.order or AR_47
    for i, v in ipairs(AR_33) do
        AR_47 = AR_10 .. " " .. v
        qI[#qI + 1] = AR_47
        qE[AR_47] = { toolKey = k, upgName = v }
    end
end
Library, rQ, Toggles, Options, ql, AR_32, qb, r1, rS, rK, rE, rz, AR_53, AR_40, AR_1, AR_26, qi, qd, p9, r0, AR_23, Label2, ry, AR_29, q2, qO, qZ, qC, AR_9, rj, AR_17, qM, qy, qm, AR_6, r2, rL, rn, q8, qG, qu, rN, qU, qq, rv, r_, rx, rd, q1, AR_21, rD, qK, rU, ra, rM, rY, qQ, rP, rq, qW, qe, rV, qn, q4, rw, rH, rm, qX, AR_15, qk, rC, re, qJ, qa, AR_3, qL, AR_18 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
table.sort(qI)
AR_33 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
if ((false or rQ or false and not rQ) and (rY or rQ or false and not rQ) or (not rY or false or false) and (false or not rY or false)) and ((false or (rY or AR_40)) and false or (not rQ or false or (rQ or false)) and (rQ and false or (rY or AR_33))) or not (((false or rQ or false and not rQ) and (rY or rQ or false and not rQ) or (not rY or false or false) and (false or not rY or false)) and ((false or (rY or AR_40)) and false or (not rQ or false or (rQ or false)) and (rQ and false or (rY or AR_33)))) then
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
else
    AR_33 = loadstring(game:HttpGet(Library .. "Library.lua"))()
end
local AR_45 = loadstring(game:HttpGet(AR_33 .. "addons/ThemeManager.lua"))()
rQ = loadstring(game:HttpGet(AR_33 .. "addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
ry = fns.fn76
AR_29 = fns.fn639
q2 = fns.fn610
if (not AR_53 or AR_26 or "#0070ba") and ((not AR_53 or false) and (rd and not AR_53)) and ((not rd and rd or rd and AR_26) and (false and not rd or not AR_53 and not AR_53)) and not ((not AR_53 or AR_26 or "#0070ba") and ((not AR_53 or false) and (rd and not AR_53)) and ((not rd and rd or rd and AR_26) and (false and not rd or not AR_53 and not AR_53))) then
    AR_15 = fn1101
else
    qO = fn1101
end
AR_20 = "#7fd47f"
local AR_44 = "#6ec1ff"
ql = "#e8a34d"
local AR_27 = "#8b93a3"
AR_32 = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
qb = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
r1 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
rS = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
rK = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
rE = "https://paypal.me/TheTruckerGOD"
rz = "https://venmo.com/u/miserablemusic"
AR_53 = "#345d9d"
AR_40 = "#f7931a"
local AR_22 = "#627eea"
if (not qG and not qG or not qG and not qG) and ((rj or qG) and (rj and not qG)) and (q8 and not q8 or (rj or not q8) or (q8 and qG or (qG or rj))) or not ((not qG and not qG or not qG and not qG) and ((rj or qG) and (rj and not qG)) and (q8 and not q8 or (rj or not q8) or (q8 and qG or (qG or rj)))) then
    AR_1 = "#26a17b"
else
    qm = "#26a17b"
end
local AR_41 = "#14f195"
AR_26 = "#0070ba"
local AR_4 = "#008cff"
qZ = fn1039
qC = fn810
AR_9 = fns.fn395
rj = fns.fn345
AR_17 = fns.fn523
qM = fns.fn663
qy = fns.fn548
qm = fn711
AR_6 = fns.fn628
r2 = fn944
rL = fns.fn544
rn = fns.fn133
q8 = fn1024
qG = fn948
qu = fn1093
rN = fns.fn624
qU = fn738
qq = function(b7)
    for i, child in ipairs(rc:GetChildren()) do
        local ug = child
        local t9 = ug:GetAttribute("Zone") == b7 and ug:GetAttribute("Open") ~= true
        if t9 then
            pcall(function()
                DoorToggle:FireServer(ug)
            end)
        end
    end
end
rv = fn1035
qi = Vector3.new(3, 8, 3)
qd = OverlapParams.new()
qd.FilterType = Enum.RaycastFilterType.Include
qd.MaxParts = 400
p9 = {}
r_ = fns.fn530
rx = fn777
rd = fns.fn218
q1 = fns.fn190
AR_21 = fns.fn31
rD = fns.fn477
qK = fn1043
rU = fns.fn504
ra = fn976
rM = fns.fn174
rY = fns.fn9
qQ = fn763
rP = fns.fn224
rq = fns.fn123
qW = fn753
qe = fn1106
rV = fns.fn270
qn = fns.fn90
q4 = fns.fn707
rw = fns.fn48
rH = fn844
rm = fns.fn574
qX = fn848
AR_15 = fns.fn601
qk = fns.fn232
r0 = nil
AR_23 = false
Label2 = nil
rC = fn727
re = fn1151
qJ = fns.fn378
qa = fns.fn227
AR_3 = fns.fn587
qL = fns.fn371
if ((rq or not AR_3) and (qn or not rq) or (not rq or not qn) and (AR_45 and rq)) and not ((rq or not AR_3) and (qn or not rq) or (not rq or not qn) and (AR_45 and rq)) then
    qC = fns.fn567
else
    AR_18 = fns.fn567
end
AR_51 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = q5, Copyable = true }, "|", AR_35 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local AR_7 = {
    Info = AR_51:AddTab("Info", "info"),
    Main = AR_51:AddTab("Main", "leaf"),
    Player = AR_51:AddTab("Player", "person-standing"),
    Settings = AR_51:AddTab("Settings", "settings")
}
AR_37 = fn1020
for k, v in AR_7 do
    AR_37(v)
end
qY, AR_47, AR_16, Label, qr, AR_33 = nil, nil, nil, nil, nil, nil
AR_10 = 18
repeat
    AR_51 = (AR_10 * 5 + 3) % 6 + 1
    if AR_51 <= 3 then
        if AR_51 <= 2 then
            if AR_51 <= 1 then
                local C4 = bit32.rrotate(bit32.bxor(bit32.lrotate(AR_10, 26), string.byte(tostring(qr))), 26)
                if bit32.bxor(bit32.lrotate(bit32.bxor(C4, 2235416596), 26), 1377105664) ~= bit32.lrotate(C4, 26) then
                    qO:AddLabel(AR_44(Label .. " [" .. tostring(game.PlaceId) .. "]", q2), true)
                    qO:AddLabel(ql("Place ID", tostring(game.PlaceId), q2), true)
                    AR_16 = qO:AddLabel(ql("Session time", "0s", AR_35), true)
                else
                    AR_16:AddLabel(q2(AR_35 .. " [" .. tostring(game.PlaceId) .. "]", AR_44), true)
                    AR_16:AddLabel(qO("Place ID", tostring(game.PlaceId), AR_44), true)
                    Label = AR_16:AddLabel(qO("Session time", "0s", ql), true)
                end
                AR_10 = (AR_10 + 11) % 24
            else
                AR_37 = (vector.create((AR_10 * 6 + 8) % 11 + 1, (AR_10 * 5 + 5) % 13 + 1, (AR_10 * 15 + 6) % 17 + 1))
                AR_30 = (vector.create((AR_10 * 1 + 8) % 11 + 1, (AR_10 * 3 + 9) % 13 + 1, (AR_10 * 9 + 17) % 17 + 1))
                AR_11 = (vector.create((AR_10 * 6 + 3) % 11 + 1, (AR_10 * 1 + 13) % 13 + 1, (AR_10 * 12 + 8) % 17 + 1))
                local AR_48 = (vector.create((AR_10 * 2 + 1) % 5 + 1, (AR_10 * 5 + 1) % 7 + 1, (AR_10 * 2 + 6) % 9 + 1))
                if vector.dot(vector.cross(AR_37, (vector.cross(AR_30, AR_11))), AR_48) == vector.dot(AR_30 * vector.dot(AR_37, AR_11) - AR_11 * vector.dot(AR_37, AR_30), AR_48) then
                    qr = tostring(game.JobId)
                else
                    AR_33 = tostring(game.JobId)
                end
                AR_10 = (AR_10 + 17) % 24
            end
        else
            AR_37 = {
                "mvfwqmkxs",
                "oosvw",
                "filjjmhzbo",
                "hnl",
                "zwwasecjl",
                "hgqneidfyjh",
                "gmgbjle",
                "uomaziot",
                "bmnbtaeh",
                "pggriuunc",
                "llgkpdmp"
            }
            if AR_37[(AR_10 * 9 + 70) % 11 + 1] <= AR_37[(AR_10 * 9 + 70) % 11 + 1] then
                AR_33 = #qr > 18
            else
                qr = #AR_33 > 18
            end
            AR_10 = (AR_10 + 23) % 24
        end
    elseif AR_51 <= 5 then
        if AR_51 <= 4 then
            AR_51 = (vector.create((AR_10 * 7 + 2) % 11 + 1, (AR_10 * 2 + 10) % 13 + 1, (AR_10 * 5 + 17) % 17 + 1))
            AR_37 = (vector.create((AR_10 * 3 + 9) % 11 + 1, (AR_10 * 2 + 6) % 13 + 1, (AR_10 * 10 + 6) % 17 + 1))
            AR_30 = (vector.create((AR_10 * 5 + 7) % 11 + 1, (AR_10 * 8 + 4) % 13 + 1, (AR_10 * 2 + 9) % 17 + 1))
            AR_11 = (vector.create((AR_10 * 5 + 1) % 5 + 1, (AR_10 * 4 + 7) % 7 + 1, (AR_10 * 5 + 1) % 9 + 1))
            if vector.dot(vector.cross(AR_51, (vector.cross(AR_37, AR_30))), AR_11) == vector.dot(AR_37 * vector.dot(AR_51, AR_30) - AR_30 * vector.dot(AR_51, AR_37), AR_11) + 2 then
                AR_47 = "Unknown"
            else
                qY = "Unknown"
            end
            AR_10 = (AR_10 + 23) % 24
        else
            AR_51 = (vector.create((AR_10 * 6 + 1) % 11 + 1, (AR_10 * 6 + 8) % 13 + 1, (AR_10 * 6 + 7) % 17 + 1))
            AR_37 = (vector.create((AR_10 * 5 + 7) % 11 + 1, (AR_10 * 10 + 13) % 13 + 1, (AR_10 * 6 + 13) % 17 + 1))
            AR_30 = (vector.create((AR_10 * 4 + 3) % 11 + 1, (AR_10 * 10 + 8) % 13 + 1, (AR_10 * 9 + 12) % 17 + 1))
            AR_11 = (vector.create((AR_10 * 4 + 1) % 11 + 1, (AR_10 * 4 + 10) % 13 + 1, (AR_10 * 10 + 2) % 17 + 1))
            if vector.dot(vector.cross(AR_51, AR_37), (vector.cross(AR_30, AR_11))) == vector.dot(AR_51, AR_30) * vector.dot(AR_37, AR_11) - vector.dot(AR_51, AR_11) * vector.dot(AR_37, AR_30) + 1 then
                pcall(fn1062)
                AR_7 = AR_47.Info:AddLeftGroupbox("Account", "circle-user")
            else
                pcall(fn1062)
                AR_47 = AR_7.Info:AddLeftGroupbox("Account", "circle-user")
            end
            AR_10 = (AR_10 + 17) % 24
        end
    else
        if (not qY or not AR_10) and (not AR_47 or AR_10) and (not AR_10 and not AR_47 and (AR_47 or not qY)) and (qr and AR_16 and (AR_33 or qr) or (not AR_47 and not qr or AR_16 and AR_47)) or not ((not qY or not AR_10) and (not AR_47 or AR_10) and (not AR_10 and not AR_47 and (AR_47 or not qY)) and (qr and AR_16 and (AR_33 or qr) or (not AR_47 and not qr or AR_16 and AR_47))) then
            AR_47:AddLabel(qO("User", LocalPlayer.Name, AR_20), true)
            AR_47:AddLabel(qO("Status", "Keyless", AR_20), true)
            AR_47:AddLabel(qO("Executor", qY, AR_20), true)
            AR_16 = AR_7.Info:AddLeftGroupbox("Game Info", "gamepad-2")
        else
            AR_16:AddLabel(AR_20("User", qY.Name, LocalPlayer), true)
            AR_16:AddLabel(AR_20("Status", "Keyless", LocalPlayer), true)
            AR_16:AddLabel(AR_20("Executor", AR_47, LocalPlayer), true)
            AR_7 = qO.Info:AddLeftGroupbox("Game Info", "gamepad-2")
        end
        AR_10 = (AR_10 + 5) % 24
    end
until (AR_10 * 17 + 11) % 24 == 5
if AR_33 then
    AR_10 = 1
    repeat
        AR_47 = {
            "fcuxqjtvw",
            "qlynpwfeq",
            "jrgpbg",
            "xtfhxsj",
            "qshyb",
            "vbwjmkalfip",
            "ftmnoi",
            "ltputqpa",
            "xiyoozkop",
            "vrohdvte"
        }
        local C6 = AR_10
        AR_51 = AR_47[C6 % 10 + 1]
        if AR_51:len() <= AR_51:reverse():rep(C6 % 3 + 2):len() then
            AR_33 = string.sub(qr, 1, 18) .. "..."
        else
            qr = string.sub(AR_33, 1, 18) .. "..."
        end
        AR_10 = (AR_10 + 7) % 8
    until (AR_10 * 1 + 2) % 8 == 2
end
AR_10 = AR_33 or qr
AR_47 = AR_10
AR_16:AddLabel(qO("Server", AR_47, AR_27), true)
AR_16:AddButton({
    Text = "Copy join script (Job ID)",
    Func = function()
        local iu = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, qr)
        ry(iu, "Copied join script to clipboard")
    end
})
rT = os.clock()
task.spawn(function()
    local yI_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local yH = math.floor(os.clock() - rT)
        if yH < 60 then
            yI_1 = yH .. "s"
        elseif yH < 3600 then
            yI_1 = string.format("%dm %ds", yH // 60, yH % 60)
        else
            yI_1 = string.format("%dh %dm", yH // 3600, yH % 3600 // 60)
        end
        Label:SetText(qO("Session time", yI_1, ql))
    end
end)
AR_10 = AR_7.Info:AddRightGroupbox("Scripts", "package")
AR_10:AddLabel(q2("Included in this hub", AR_27), true)
AR_10:AddLabel(q2(AR_35, AR_44), true)
AR_10 = AR_7.Info:AddRightGroupbox("Features", "list")
AR_10:AddLabel(q2("Auto Farm", AR_44), true)
AR_10:AddLabel(q2("Auto Buy", ql), true)
AR_10:AddLabel(q2("Auto Buy Upgrades", ql), true)
AR_10:AddLabel(q2("Misc Utilities", AR_27), true)
AR_10 = AR_7.Info:AddRightGroupbox("Socials", "link")
AR_10:AddButton({ Text = "Discord", Func = AR_29 })
AR_10:AddButton({
    Text = "Rscripts",
    Func = function()
        ry(q_, "Copied Rscripts profile to clipboard")
    end
})
AR_10 = AR_7.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
AR_10:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
AR_10:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
AR_10:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
AR_10:AddButton({ Text = "Copy Discord Invite", Func = AR_29 })
AR_10 = AR_7.Info:AddRightGroupbox("Donations", "heart")
AR_10:AddLabel(q2("All donations are optional but appreciated.", ql), true)
AR_10:AddLabel(q2("If you donate you get a special role, just PING after you donate.", AR_20), true)
AR_10:AddDivider()
AR_10:AddLabel(q2("LTC / Litecoin", AR_53), true)
AR_10:AddButton({
    Text = "Copy Litecoin Address",
    Func = function()
        ry(AR_32, "Copied Litecoin address")
    end
})
AR_10:AddLabel(q2("BTC / Bitcoin", AR_40), true)
AR_10:AddButton({
    Text = "Copy Bitcoin Address",
    Func = function()
        ry(qb, "Copied Bitcoin address")
    end
})
AR_10:AddLabel(q2("ETH / Ethereum", AR_22), true)
AR_10:AddButton({
    Text = "Copy Ethereum Address",
    Func = function()
        ry(r1, "Copied Ethereum address")
    end
})
AR_10:AddLabel(q2("USDT", AR_1), true)
AR_10:AddButton({
    Text = "Copy USDT Address",
    Func = function()
        ry(rS, "Copied USDT address")
    end
})
AR_10:AddLabel(q2("Solana", AR_41), true)
AR_10:AddButton({
    Text = "Copy Solana Address",
    Func = function()
        ry(rK, "Copied Solana address")
    end
})
AR_10:AddLabel(q2("PayPal", AR_26), true)
AR_10:AddButton({
    Text = "Copy PayPal Link",
    Func = function()
        ry(rE, "Copied PayPal link")
    end
})
AR_10:AddLabel(q2("Venmo", AR_4), true)
AR_10:AddButton({
    Text = "Copy Venmo Link",
    Func = function()
        ry(rz, "Copied Venmo link")
    end
})
AR_10:AddDivider()
AR_10:AddLabel(q2("Don't have any of the listed currencies but still wanna donate?", AR_27), true)
AR_10:AddLabel(q2("DM me and we'll work something out.", AR_44), true)
AR_10 = AR_7.Info:AddRightGroupbox("FAQ", "circle-help")
AR_10:AddLabel("Where do I get a good config?", true)
AR_10:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
AR_10:AddLabel("How do I import / export configs?", true)
AR_10:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
AR_10:AddLabel("How do I report bugs?", true)
AR_10:AddLabel("Join the Discord and post it in the bugs channel.", true)
AR_10:AddLabel("How do I make suggestions?", true)
AR_10:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
AR_10:AddLabel("How do I get help or updates?", true)
AR_10:AddLabel("Join the Discord, updates and support are posted there first.", true)
AR_10 = AR_7.Main:AddLeftGroupbox("Automation", "bot")
AR_10:AddToggle("AutoCollect", { Text = "Auto Collect", Default = false })
AR_10:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
AR_10:AddToggle("AutoVent", { Text = "Auto Vent", Default = false })
AR_10:AddToggle("AutoWin", {
    Text = "Auto Win",
    Default = false,
    Tooltip = "Opens the garage, buys tools/vents/upgrades, clears quests and zones one by one, then finishes at the basement."
})
AR_10:AddSlider("AutoWinSpeed", { Text = "Overall Speed", Default = 4, Min = 1, Max = 10, Rounding = 0 })
Label2 = AR_10:AddLabel(qO("Status", "Idle", AR_27), true)
Toggles.AutoWin:OnChanged(function()
    if not Toggles.AutoWin.Value then
        r0 = nil
        AR_23 = false
        rC("Idle")
        return
    end
    if Toggles.AutoCollect then
        Toggles.AutoCollect:SetValue(false)
    end
    if Toggles.AutoSell then
        Toggles.AutoSell:SetValue(false)
    end
    rC("Starting")
end)
AR_10 = AR_7.Main:AddRightGroupbox("Shop", "shopping-bag")
AR_10:AddToggle("AutoBuy", { Text = "Auto Buy", Default = false })
AR_10:AddDropdown("BuyChoice", { Text = "Buy", Values = AR_13, Default = AR_13, Multi = true, AllowNull = true })
AR_10:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
AR_10:AddDropdown("UpgradeChoice", { Text = "Upgrades", Values = qI, Default = qI, Multi = true, Searchable = true, AllowNull = true })
AR_10 = AR_7.Main:AddLeftGroupbox("Quick Actions", "zap")
AR_10:AddButton({
    Text = "Sell Now",
    Func = function()
        pcall(rq)
    end
})
AR_10:AddButton({
    Text = "Press Garage Button",
    Func = function()
        pcall(rm)
    end
})
AR_10:AddButton({
    Text = "Buy Available",
    Func = function()
        pcall(rH)
        pcall(rw)
    end
})
AR_10 = AR_7.Player:AddLeftGroupbox("Movement", "footprints")
AR_10:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
AR_10:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
AR_10:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
AR_10:AddToggle("NoClip", { Text = "NoClip", Default = false })
AR_10:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
AR_10 = AR_7.Player:AddRightGroupbox("Fly", "feather")
AR_10:AddToggle("Fly", { Text = "Fly", Default = false })
AR_10:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
qx = function(jd)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not jd)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not jd
        end
    end)
    if not jd then
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
Toggles.AntiGameplayPause:OnChanged(function()
    qx(Toggles.AntiGameplayPause.Value)
end)
Toggles.Fly:OnChanged(function()
    if not Toggles.Fly.Value then
        local yV = AR_17()
        if yV then
            yV.PlatformStand = false
        end
    end
end)
Toggles.WalkSpeedEnabled:OnChanged(function()
    if not Toggles.WalkSpeedEnabled.Value then
        local y_ = AR_17()
        if y_ then
            y_.WalkSpeed = 16
        end
    end
end)
RunService.Stepped:Connect(function()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local y1_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if y1_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end)
UserInputService.JumpRequest:Connect(function()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local y9_1 = AR_17()
        if y9_1 then
            y9_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end)
rW = rh.CurrentCamera
RunService.RenderStepped:Connect(function(jJ)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local zb_1 = AR_17()
        if zb_1 then
            zb_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local zb_3 = qM()
        local zc = AR_17()
        rW = rh.CurrentCamera or rW
        if zb_3 and zc and rW then
            zc.PlatformStand = true
            local zc_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                zc_1 = zc_1 + rW.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                zc_1 = zc_1 - rW.CFrame.LookVector
            end
            local zl = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
            if zl == 1 then
                zc_1 = zc_1 - rW.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                zc_1 = zc_1 + rW.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                zc_1 = zc_1 + Vector3.new(0, 1, 0)
            end
            local zi = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
            if zi == 1 then
                zc_1 = zc_1 - Vector3.new(0, 1, 0)
            end
            zb_3.Velocity = Vector3.zero
            if zc_1.Magnitude > 0 then
                zb_3.CFrame = zb_3.CFrame + zc_1.Unit * Options.FlySpeed.Value * jJ
            end
        end
    end
end)
AR_10 = AR_7.Settings:AddLeftGroupbox("Menu")
AR_10:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
AR_10:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
AR_10:AddButton("Unload", function()
    Library:Unload()
end)
qz = tick()
qt = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local zs = v
        pcall(function()
            zs:Disable()
        end)
    end
end)
p7 = function()
    local CurrentCamera = rh.CurrentCamera
    if not CurrentCamera then
        return
    end
    rA:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    rA:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    qt = tick()
end
connection = UserInputService.InputBegan:Connect(function()
    qz = tick()
end)
connection2 = UserInputService.InputChanged:Connect(function(kc)
    local UserInputType = kc.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        qz = tick()
    end
end)
AR_45:SetLibrary(Library)
AR_45:SetFolder("OuroborosHub")
AR_45:SaveDefault("Monochrome")
rQ:SetLibrary(Library)
rQ:IgnoreThemeSettings()
rQ:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
rQ:SetFolder("OuroborosHub/CleanAllTheLeaves")
AR_10 = rQ:BuildConfigSection(AR_7.Settings)
qT = function(kj, kk)
    local zz_1 = (kj == "Toggle" and Toggles or Options)[kk]
    local zy_2 = type(zz_1) == "table" and zz_1.Type == kj
    return zy_2 and zz_1 or nil
end
qo = function(kr, ks)
    local Type = ks.Type
    if Type == "Toggle" then
        return { idx = kr, type = "Toggle", value = ks.Value == true }
    elseif Type == "Slider" then
        return { idx = kr, type = "Slider", value = tostring(ks.Value) }
    elseif Type == "Dropdown" then
        return { idx = kr, type = "Dropdown", multi = ks.Multi == true, value = ks.Value }
    elseif Type == "Input" then
        local zD = ks.Value
        local zH = if zD then 1 else 0
        local zF = 2167 * zH + 2946 * (1 - zH)
        local zG = 896 * zH + 1180 * (1 - zH)
        if not ((zF * 1147 + zG * 1056 + zF * zG) % 16777213 == 5373357) then
            zD = ""
        end
        return { idx = kr, type = "Input", text = tostring(zD) }
    elseif Type == "ColorPicker" then
        return { idx = kr, type = "ColorPicker", value = ks.Value:ToHex(), transparency = ks.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = kr,
            type = "KeyPicker",
            mode = ks.Mode,
            key = ks.Value,
            modifiers = ks.Modifiers,
            toggled = ks.Toggled
        }
    else
        return nil
    end
end
p5 = function()
    local zP = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local zQ = type(v) == "table" and type(v.Type) == "string" and not rQ.Ignore[k]
            if zQ then
                local zQ_1 = qo(k, v)
                if zQ_1 then
                    zP[#zP + 1] = zQ_1
                end
            end
        end
    end
    table.sort(zP, function(kG, kH)
        if kG.type ~= kH.type then
            return kG.type < kH.type
        end
        return kG.idx < kH.idx
    end)
    return { objects = zP }
end
AR_24 = function(kJ)
    local z5
    z5 = nil
    local z6 = type(kJ) ~= "table" or type(kJ.idx) ~= "string" or type(kJ.type) ~= "string" or rQ.Ignore[kJ.idx]
    if z6 then
        return false
    end
    z5 = qT(kJ.type, kJ.idx)
    if not z5 then
        return false
    end
    local z6_1 = pcall(function()
        if kJ.type == "Input" then
            if type(kJ.text) ~= "string" then
                return
            end
            z5:SetValue(kJ.text)
        elseif kJ.type == "ColorPicker" then
            z5:SetValueRGB(Color3.fromHex(kJ.value), kJ.transparency)
        elseif kJ.type == "KeyPicker" then
            z5:SetValue({ kJ.key, kJ.mode, kJ.modifiers })
            if kJ.mode == "Toggle" and kJ.toggled ~= nil then
                z5.Toggled = kJ.toggled
                z5:Update()
            end
        else
            z5:SetValue(kJ.value)
        end
    end)
    return z6_1
end
AR_10:AddDivider()
AR_10:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
AR_10:AddButton("Export Config to Clipboard", function()
    local z9_1
    local z8_1
    z8_1, z9_1 = pcall(rt.JSONEncode, rt, p5())
    if not z8_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local z8_2 = setclipboard or toclipboard
    local z8_3 = type(z8_2) ~= "function" or not pcall(z8_2, z9_1)
    if z8_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end)
AR_10:AddButton("Import Config from Clipboard Text", function()
    local Ah_1
    local Af = Options.SaveManager_ImportSource.Value or ""
    local Af_1
    local Ag = tostring(Af):match("^%s*(.-)%s*$")
    if Ag == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    Af_1, Ah_1 = pcall(rt.JSONDecode, rt, Ag)
    local Ag_1 = not Af_1 or type(Ah_1) ~= "table" or type(Ah_1.objects) ~= "table"
    if Ag_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local Af_2 = 0
    for i, v in ipairs(Ah_1.objects) do
        if AR_24(v) then
            Af_2 += 1
        end
    end
    if Af_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local Ah_2 = Af_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(Af_2, Ah_2), 6)
end)
AR_45:ApplyToTab(AR_7.Settings)
AR_45:LoadDefault()
rQ:LoadAutoloadConfig()
task.spawn(function()
    local At_1
    local As_1
    while not Library.Unloaded do
        if qZ("AutoWin") then
            As_1, At_1 = pcall(AR_18)
            local Au = As_1 and type(At_1) == "number"
            if Au then
                task.wait(At_1)
            else
                task.wait(0.2)
            end
        elseif qZ("AutoCollect") then
            local As_2 = rn() and qZ("AutoSell")
            if As_2 then
                pcall(rq)
                task.wait(0.15)
            else
                pcall(qW)
                task.wait(0.05)
            end
        else
            task.wait(0.25)
        end
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        local Aw = qZ("AutoSell") and not qZ("AutoWin") and rn()
        if Aw then
            pcall(rq)
        end
        task.wait(0.35)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        local AB = qZ("AutoVent") and not qZ("AutoWin")
        if AB then
            pcall(qe)
            task.wait(0.35)
        else
            task.wait(0.4)
        end
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if qZ("AutoBuy") then
            pcall(rH)
        end
        if qZ("AutoBuyUpgrades") then
            pcall(rw)
        end
        task.wait(1)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            qx(true)
        end
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        task.wait(2)
        if qZ("AntiAfk") then
            local AF = tick() - qz
            local AG = tick() - qt
            if AF >= 300 and AG >= 60 then
                pcall(p7)
            else
                if AF < 300 and AG >= 300 then
                    pcall(p7)
                end
            end
        end
    end
end)
Library:OnUnload(function()
    connection:Disconnect()
    connection2:Disconnect()
    qx(false)
    LocalPlayer:SetAttribute("LeafBlowerBlowing", false)
    pcall(function()
        LeafSim.blowStop()
    end)
    local AJ = AR_17()
    if AJ then
        AJ.PlatformStand = false
        AJ.WalkSpeed = 16
    end
end)
Library:Notify("Clean all the leaves! loaded")
