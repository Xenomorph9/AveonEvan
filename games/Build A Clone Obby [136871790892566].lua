local PlayerGui
local rf
local qf
local RebirthConfig
local qs
local qi
local qE
local q_
local q2
local qH
local qo
local qN
local p8
local rb
local qu
local qx
local qT
local qe
local qW
local qA
local qb
local re
local rh
local qk
local q1
local qn
local qq
local ObbyConfig
local qM
local Network
local qa
local Library
local qw
local qz
local qC
local qY
local qg
local qF
local q0
local qj
local Options
local q6
local p6
local Toggles
local q9
local p9
local qR
local rc
local qv
local function fn9()
    return qk.Character
end
local function worker5()
    while not Library.Unloaded do
        task.wait(1.5)
        if q9("AutoRebirth") then
            pcall(qz)
        end
    end
end
local function worker3()
    while not Library.Unloaded do
        task.wait(1.25)
        if q9("AutoPlace") then
            pcall(rh)
        end
    end
end
local function fn35(aI, aJ)
    return string.format('<font color="%s">%s</font>', aJ, aI)
end
local function worker2()
    while not Library.Unloaded do
        task.wait(1.5)
        if q9("AutoReplaceBetter") then
            pcall(q6)
        end
    end
end
local function fn42(ag, ah)
    if ag.mult == ah.mult then
        return ag.label < ah.label
    end
    return ag.mult < ah.mult
end
local function fn87()
    if not getgc then
        return
    end
    for k, v in getgc(true) do
        if type(v) == "table" then
            local tp = rawget(v, "RebirthCount")
            local tq = rawget(v, "Wallet")
            local tr = type(tp) == "number" and type(tq) == "number" and rawget(v, "UnlockedObbies") ~= nil
            if tr then
                qE.rebirthCount = tp
                local tp_1 = tq == qE.wallet or math.abs(tq - qE.wallet) < 1
                if tp_1 then
                    local tp_2 = rawget(v, "UnlockedObbies")
                    if type(tp_2) == "table" then
                        for k, v in tp_2 do
                            if v then
                                qE.unlocked[k] = true
                            end
                        end
                    end
                end
                break
            end
        end
    end
end
local function fn147()
    local um = tonumber(qk:GetAttribute("Wallet")) or qE.wallet
    qE.wallet = um
end
local function onOnClientEvent2(b5)
    if type(b5) == "table" then
        qE.shopRotation = b5
    end
end
local function worker7()
    local yw_1
    while not Library.Unloaded do
        local yv = not qE.busy and q9("AutoCompleteObby")
        local yv_1
        if yv then
            qE.busy = true
            yv_1, yw_1 = pcall(function()
                qa(qo())
            end)
            qE.busy = false
            if not yv_1 then
                warn("[Ouroboros] Auto Complete failed:", yw_1)
            end
        else
            task.wait(0.05)
        end
    end
end
local function fn195(gM)
    if fireproximityprompt then
        fireproximityprompt(gM)
        return
    end
    gM:InputHoldBegin()
    task.wait(math.max(gM.HoldDuration, 0) + 0.05)
    gM:InputHoldEnd()
end
local function fn218()
    if not getgc then
        return
    end
    for k, v in getgc(true) do
        local sW = type(v) == "table" and rawget(v, "StarterObby") == true
        if sW then
            local sW_1 = 0
            local sX = true
            for k, v in v do
                local sY_1 = type(k) ~= "string" or type(v) ~= "boolean"
                if sY_1 then
                    sX = false
                    break
                end
                sW_1 += 1
            end
            if sX and sW_1 >= 1 and sW_1 <= 20 then
                for k, v in v do
                    if v then
                        qE.unlocked[k] = true
                    end
                end
                break
            end
        end
    end
end
local function worker6()
    while not Library.Unloaded do
        task.wait(0.4)
        if q9("AutoCollectMoney") then
            pcall(qx)
        end
    end
end
local function onOnClientEvent3(b7)
    local tV = type(b7) ~= "table" or type(qE.shopRotation) ~= "table"
    if tV then
        return
    end
    local items = qE.shopRotation.items
    if type(items) ~= "table" then
        return
    end
    for k, v in items do
        if v.slot == b7.slot then
            v.remaining = b7.remaining
            break
        end
    end
end
local function fn300(fB)
    local wT = type(fB) == "table" and type(fB.characterId) == "string" and fB.characterId ~= ""
    return wT
end
local function fn314(a1)
    local so = Options[a1]
    local sp = so and so.Value
    local so_1 = {}
    if type(sp) ~= "table" then
        local sp_1 = sp ~= ""
        local sr = type(sp) == "string" and sp_1
        if sr then
            so_1[sp] = true
        end
        return so_1
    end
    for k, v in sp do
        local sp_2 = v == true
        local sq_1 = type(k) == "string" and sp_2
        if sq_1 then
            so_1[k] = true
        elseif type(v) == "string" then
            so_1[v] = true
        end
    end
    return so_1
end
local function onOnClientEvent(bZ)
    local tI = type(bZ) == "table"
    if tI then
        local tJ_1 = bZ.unlocked
        local tN = if tJ_1 then 1 else 0
        local tL = 3289 * tN + 190 * (1 - tN)
        local tM = 350 * tN + 2311 * (1 - tN)
        if not ((tL * 2046 + tM * 523 + tL * tM) % 16777213 == 8063494) then
            tJ_1 = bZ
        end
        tI = tJ_1
    end
    local tJ_2 = tI or nil
    if type(tJ_2) ~= "table" then
        return
    end
    local tJ_3 = {}
    for k, v in tJ_2 do
        if v then
            tJ_3[k] = true
        end
    end
    qE.unlocked = tJ_3
end
local function fn344()
    p8(qN, "Copied Discord invite to clipboard")
end
local function onOnClientEvent6(cj, ck)
    local ub = cj == "Wallet" and type(ck) == "number"
    if ub then
        qE.wallet = ck
    else
        local ub_1 = cj == "RebirthCount" and type(ck) == "number"
        if ub_1 then
            qE.rebirthCount = ck
        else
            local ub_2 = cj == "UnlockedObbies" and type(ck) == "table"
            if ub_2 then
                local ub_3 = {}
                for k, v in ck do
                    if v then
                        ub_3[k] = true
                    end
                end
                qE.unlocked = ub_3
            end
        end
    end
end
local function fn363()
    local uy = {}
    for k, v in qv do
        if qE.unlocked[v] then
            uy[#uy + 1] = v
        end
    end
    if #uy == 0 then
        uy[1] = "StarterObby"
    end
    return uy
end
local function fn366()
    local xx_1
    for k, v in q0() do
        local xq = Library.Unloaded or not q9("AutoReplaceBetter")
        if xq then
            return
        end
        local xq_1 = qR(v)
        if not (type(xq_1) ~= "table") then
            local xr = tonumber(xq_1.cap) or 0
            local clone2 = table.clone
            local xu = xq_1.available or {}
            local xu_3
            local xt_1 = clone2(xu)
            local xK = 1
            while xK <= xr do
                local xL = xK
                local xr_2 = Library.Unloaded or not q9("AutoReplaceBetter")
                if xr_2 then
                    return
                end
                local xr_3 = qY(xq_1, xL)
                if not not rb(xr_3) then
                    local characterId2 = xr_3.characterId
                    local xu_1 = xr_3.mutation or "Normal"
                    local xv = xr_3.level or 1
                    local xv_1
                    local xw = qw(characterId2, xu_1, xv)
                    local xs_2 = nil
                    for k, v in xt_1 do
                        local xu_2 = type(v) == "number" and v > 0
                        if xu_2 then
                            xv_1, xx_1, xu_3 = qj(k)
                            local xy = qw(xv_1, xx_1, xu_3)
                            if xy > xw and (not xs_2 or xy > xs_2.power) then
                                xs_2 = { key = k, charId = xv_1, mutation = xx_1, level = xu_3, power = xy }
                            end
                        end
                    end
                    if xs_2 then
                        local UnequipRequest = Network.UnequipRequest
                        local characterId = xr_3.characterId
                        local mutation = xr_3.mutation
                        local xx_2 = xr_3.level or 1
                        UnequipRequest:FireServer({ obbyId = v, charId = characterId, mutation = mutation, level = xx_2, slotIndex = xL })
                        task.wait(0.12)
                        Network.EquipRequest:FireServer({ obbyId = v, charId = xs_2.charId, mutation = xs_2.mutation, level = xs_2.level })
                        local key = xs_2.key
                        local xu_5 = xt_1[xs_2.key] or 1
                        xt_1[key] = xu_5 - 1
                        task.wait(0.12)
                        local xr_5 = qR(v) or xq_1
                        xq_1 = xr_5
                        local clone = table.clone
                        local xs_3 = xq_1.available or xt_1
                        xt_1 = clone(xs_3)
                    end
                end
                xK += 1
            end
        end
    end
end
local function fn415(h4)
    local DiscordGroup = h4:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = q1 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = q1 })
end
local function fn438(S, T)
    local r1 = S.UnlockCost or 0
    local r2 = T.UnlockCost
    local r6 = if r2 then 1 else 0
    local r4 = 3565 * r6 + 1888 * (1 - r6)
    local r5 = 2547 * r6 + 3509 * (1 - r6)
    if not ((r4 * 217 + r5 * 2091 + r4 * r5) % 16777213 == 15179437) then
        r2 = 0
    end
    if r1 == r2 then
        return (S.DisplayName or S.Id) < (T.DisplayName or T.Id)
    end
    return (S.UnlockCost or 0) < (T.UnlockCost or 0)
end
local function fn476()
    local vB = RebirthConfig.RequirementFor(qE.rebirthCount)
    if type(vB) ~= "number" then
        return
    end
    local vC = tonumber(qk:GetAttribute("Wallet")) or qE.wallet
    if vC < vB then
        return
    end
    Network.RebirthRequest:FireServer()
end
local function fn521(aW, aX)
    local si = Options[aW]
    if si == nil or si.Value == nil then
        return aX
    end
    return si.Value
end
local function fn567(aB, aC)
    if setclipboard then
        setclipboard(aB)
    elseif toclipboard then
        toclipboard(aB)
    end
    Library:Notify(aC)
end
local function fn576()
    if not getgc then
        return
    end
    for k, v in getgc(true) do
        local th = type(v) == "table" and type(rawget(v, "items")) == "table"
        if th then
            local th_1 = rawget(v, "rotationId") ~= nil or rawget(v, "nextRestockClock") ~= nil
            if th_1 then
                qE.shopRotation = v
                break
            end
        end
    end
end
local function fn584()
    Library.ScreenGui.Parent = PlayerGui
end
local function fn602(gH)
    local xU_1
    local xT_1
    if type(gH) ~= "string" then
        return nil
    end
    xT_1, xU_1 = gH:match("%$([%d%,%.]+)([KMBTkmbt]?)")
    if not xT_1 then
        return nil
    end
    local xT_2 = xT_1:gsub(",", "")
    local xV = tonumber(xT_2)
    if not xV then
        return nil
    end
    if xU_1 ~= "" then
        local xT_3 = qu[xU_1] or 1
        xV *= xT_3
    end
    return xV
end
local function fn605()
    return PlayerGui
end
local function worker4()
    while not Library.Unloaded do
        task.wait(2)
        if q9("AutoBuyCharacters") then
            pcall(q2)
        end
    end
end
local function worker()
    while not Library.Unloaded do
        task.wait(1.25)
        if q9("AutoUnlockSlots") then
            pcall(qT)
        end
    end
end
local function fn655()
    local PlayerPlots = qs:FindFirstChild("PlayerPlots")
    if not PlayerPlots then
        return nil
    end
    local up = PlayerPlots:FindFirstChild("Plot_" .. tostring(qk.UserId))
    local uq = up and up:IsA("Model") and up:GetAttribute("OwnerUserId") == qk.UserId
    if uq then
        return up
    end
    for i, child in PlayerPlots:GetChildren() do
        local uo_1 = child:IsA("Model") and child:GetAttribute("OwnerUserId") == qk.UserId
        if uo_1 then
            return child
        end
    end
    return nil
end
local function fn717()
    local PlayerPlots = qs:FindFirstChild("PlayerPlots")
    if not PlayerPlots then
        return
    end
    for i, child in PlayerPlots:GetChildren() do
        local sI_1 = child:IsA("Model") and child:GetAttribute("OwnerUserId") == qk.UserId
        if sI_1 then
            local Obbies = child:FindFirstChild("Obbies")
            if Obbies then
                for i, child in Obbies:GetChildren() do
                    qE.unlocked[child.Name] = true
                end
            end
            break
        end
    end
end
local function onOnClientEvent4(cd)
    local t4 = type(cd) == "table" and type(cd.rebirthCount) == "number"
    if t4 then
        qE.rebirthCount = cd.rebirthCount
    elseif type(cd) == "number" then
        qE.rebirthCount = cd
    end
end
local function onOnClientEvent5(cg)
    local t6 = type(cg) == "table" and cg.ok and type(cg.rebirthCount) == "number"
    if t6 then
        qE.rebirthCount = cg.rebirthCount
    end
end
local function fn794()
    local w0 = qC("PlaceLogic", qf)
    for k, v in q0() do
        local w1 = Library.Unloaded or not q9("AutoPlace")
        if w1 then
            return
        end
        local w1_1 = qR(v)
        if not (type(w1_1) ~= "table") then
            local w2 = tonumber(w1_1.cap) or 0
            local w3 = 0
            local xh = 1
            while xh <= w2 do
                local xi = xh
                if not rb(qY(w1_1, xi)) then
                    w3 += 1
                end
                xh += 1
            end
            if not (w3 <= 0) then
                local w2_1 = qW(w1_1.available, nil)
                if w0 == p9 then
                    table.sort(w2_1, function(f4, f5)
                        return f4.charId < f5.charId
                    end)
                end
                for k, v2 in w2_1 do
                    local w1_2 = w3 <= 0 or Library.Unloaded or not q9("AutoPlace")
                    if w1_2 then
                        break
                    end
                    local w1_3 = v2.count
                    while true do
                        if w1_3 > 0 and w3 > 0 then
                            Network.EquipRequest:FireServer({ obbyId = v, charId = v2.charId, mutation = v2.mutation, level = v2.level })
                            w1_3 -= 1
                            w3 -= 1
                            task.wait(0.12)
                            continue
                        end
                        break
                    end
                end
            end
        end
    end
end
local function fn795()
    local sF = qi()
    local sG = sF and sF:FindFirstChild("HumanoidRootPart")
    return sG
end
local function fn809(aQ)
    if Library.Unloaded then
        return false
    end
    local sc = Toggles[aQ]
    return sc ~= nil and sc.Value == true
end
local function fn842()
    local yE = hookfunction ~= nil
    local yF = hookmetamethod ~= nil
    local yG = getrawmetatable ~= nil
    local yH = setrawmetatable ~= nil
    local yI = getgc ~= nil
    local yJ = getgenv ~= nil
    local yK = getreg ~= nil
    local yL = getconnections ~= nil
    local yM = firesignal ~= nil
    local yN = getcallbackvalue ~= nil
    local yO = setclipboard ~= nil
    local yP = getcustomasset ~= nil
    local yQ = getnamecallmethod ~= nil
    local yR = isexecutorclosure ~= nil
    local yS = fireproximityprompt ~= nil
    local yT = firetouchinterest ~= nil
    local yU = WebSocket ~= nil
    local yV = readfile ~= nil
    local yW = writefile ~= nil
    local yY = (request or http_request) ~= nil
    local y_ = (debug and debug.getupvalues) ~= nil
    local y1 = (debug and debug.setupvalue) ~= nil
    local y2 = 0
    local y3 = { yE, yF, yG, yH, yI, yJ, yK, yL, yM, yN, yO, yP, yQ, yR, yS, yT, yU, yV, yW, yY, y_, y1 }
    for i, v in ipairs(y3) do
        if v then
            y2 += 1
        end
    end
    local yE_1 = y2 / #y3
    if yE_1 >= 0.9 then
        return qM("Full Support", qq)
    elseif yE_1 >= 0.6 then
        return qM("Half Support", qb)
    else
        return qM("Low Support", re)
    end
end
local function fn870()
    local vr = qH()
    local vs = q_()
    if not (vr and vs and firetouchinterest) then
        return
    end
    for i, descendant in vr:GetDescendants() do
        local vr_1 = Library.Unloaded or not q9("AutoCollectMoney")
        if vr_1 then
            break
        end
        local vr_2 = descendant.Name == "CollectTouch" and descendant:IsA("BasePart")
        if vr_2 then
            local vs_1 = q_()
            if not vs_1 then
                break
            end
            pcall(firetouchinterest, vs_1, descendant, 0)
            pcall(firetouchinterest, vs_1, descendant, 1)
        end
    end
end
local function fn909(aL, aM, aN)
    return string.format("<b>%s</b> %s %s", aL, qM("-", "#5a6070"), qM(aM, aN))
end
local function fn916(ay)
    qA[#qA + 1] = ay
    return ay
end
local function fn923()
    local uI_1
    local uG = q0()
    local uH = qC("ObbyMode", qg)
    local uH_1
    if uH == qn then
        return uG[math.random(1, #uG)]
    elseif uH == qg then
        uI_1, uH_1 = uG[1], -1
        for k, v in uG do
            local uG_1 = ObbyConfig[v]
            local uJ = uG_1
            if uJ then
                uJ = uG_1.CashReward or uG_1.CashPerLap or 0
            end
            local uG_3 = uJ or 0
            if uG_3 > uH_1 then
                uH_1 = uG_3
                uI_1 = v
            end
        end
        return uI_1
    else
        local uG_4 = rc("ObbyPriority")
        for k in uG_4 do
            local uG_5 = qe[k]
            if uG_5 and qE.unlocked[uG_5] then
                return uG_5
            end
        end
        for k, v in qv do
            if qE.unlocked[v] then
                return v
            end
        end
        return "StarterObby"
    end
end
local function fn924()
    local sC = qi()
    local sD = sC and sC:FindFirstChildOfClass("Humanoid")
    return sD
end
local function fn925()
    local vK = qE.shopRotation
    local vL = type(vK) ~= "table" or type(vK.items) ~= "table"
    if vL then
        qF()
        vK = qE.shopRotation
    end
    local vL_1 = type(vK) ~= "table"
    local vS = if vL_1 then 1 else 0
    local vQ = 1641 * vS + 2738 * (1 - vS)
    local vR = 862 * vS + 796 * (1 - vS)
    if not ((vQ * 4018 + vR * 1272 + vQ * vR) % 16777213 == 9104544) then
        vL_1 = type(vK.items) ~= "table"
    end
    if vL_1 then
        return
    end
    local vL_2 = rc("BuyCharacters")
    if next(vL_2) == nil then
        return
    end
    local vM = {}
    for k in vL_2 do
        local vL_3 = p6[k]
        if vL_3 then
            vM[vL_3] = true
        end
    end
    local vL_4 = tonumber(qk:GetAttribute("Wallet")) or qE.wallet
    local vN = {}
    for k, v in vK.items do
        local vK_1 = vM[v.charId] and v.locked ~= true
        if vK_1 then
            vK_1 = (v.remaining or 0) > 0
        end
        if vK_1 then
            vK_1 = type(v.cashPrice) == "number"
        end
        if vK_1 then
            vK_1 = v.cashPrice <= vL_4
        end
        if vK_1 then
            vN[#vN + 1] = v
        end
    end
    table.sort(vN, function(em, en)
        local vF = rf[em.charId] or 0
        local vF_1 = rf[en.charId] or 0
        if vF == vF_1 then
            return (em.cashPrice or 0) > (en.cashPrice or 0)
        end
        return vF > vF_1
    end)
    for k, v in vN do
        local vK_2 = Library.Unloaded or not q9("AutoBuyCharacters")
        if vK_2 then
            break
        end
        Network.ShopBuyRequest:FireServer(v.slot)
        task.wait(0.35)
        local vK_3 = (tonumber(qk:GetAttribute("Wallet")))
    end
end
local function fn939(fE, fF)
    local wV = fE and fE.slots
    if type(wV) ~= "table" then
        return nil
    end
    local wV_1 = wV[fF]
    local w_ = if wV_1 then 1 else 0
    local wY = 3339 * w_ + 497 * (1 - w_)
    local wZ = 1326 * w_ + 1044 * (1 - w_)
    if not ((wY * 3924 + wZ * 2383 + wY * wZ) % 16777213 == 3912395) then
        wV_1 = wV[tostring(fF)]
    end
    return wV_1
end
p6 = nil
p8 = nil
p9 = nil
qa = nil
qb = nil
PlayerGui = nil
qe = nil
qf = nil
qg = nil
qi = nil
qj = nil
qk = nil
qn = nil
qo = nil
qq = nil
qs = nil
qu = nil
qv = nil
qw = nil
qx = nil
qz = nil
qA = nil
qC = nil
qE = nil
qF = nil
qH = nil
Options = nil
qM = nil
qN = nil
Toggles = nil
qR = nil
local p4, p5, p7, qd, qh, ql, qm, qp, qr, qt, qy, qB, UpgradeConfig, qG, qJ, qK, TrainingConfig, qP, qQ
qT = nil
qW = nil
RebirthConfig = nil
qY = nil
q_ = nil
q0 = nil
q1 = nil
q2 = nil
q6 = nil
ObbyConfig = nil
q9 = nil
Network = nil
rb = nil
rc = nil
Library = nil
re = nil
rf = nil
local rg
rh = nil
local qS, SaveManager, qV, qZ, q3, q4, q5, q8
local rm_3
local rk_2, rk_6, Window
local rj_1
p4, rj_1, q8, q5, qZ, qV, qP, qJ, qB, qs, qk, PlayerGui = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local ri = 33
repeat
    local rk_1 = (ri * 2 + 0) % 5 + 1
    if rk_1 <= 3 then
        if rk_1 <= 2 then
            if rk_1 <= 1 then
                local rl_1 = { "udzzqdg", "punffui", "etkkgt", "cna", "euwjusntk", "waqxttj", "adipvwuyoms" }
                local Dw = ri
                local rm_1 = rl_1[Dw % 7 + 1]
                if rm_1:len() >= rm_1:reverse():rep(Dw % 3 + 2):len() then
                    qk = PlayerGui:WaitForChild("PlayerGui")
                else
                    PlayerGui = qk:WaitForChild("PlayerGui")
                end
                ri = (ri + 3) % 40
            else
                local rl_2 = { "cfejdclut", "bszuzl", "huvjkj", "njhlb", "qixjvxkfomw", "gwbgmq", "qssteprxh", "uqul", "tmqcg" }
                local DT = ri
                local rm_2 = rl_2[DT % 9 + 1]
                if rm_2:len() >= rm_2:reverse():rep(DT % 3 + 2):len() then
                    q8 = game:GetService("Players")
                else
                    p4 = game:GetService("Players")
                end
                ri = (ri + 33) % 40
            end
        else
            if (ri * 3 + 9) * 17 % 4 == ((ri * 3 + 9) * 17 + 12) % 4 then
                rj_1 = game:GetService("ReplicatedStorage")
                q8 = game:GetService("RunService")
                q5 = game:GetService("UserInputService")
                qZ = game:GetService("VirtualUser")
                qV = game:GetService("HttpService")
            else
                q5 = game:GetService("ReplicatedStorage")
                rj_1 = game:GetService("RunService")
                qV = game:GetService("UserInputService")
                q8 = game:GetService("VirtualUser")
                qZ = game:GetService("HttpService")
            end
            ri = (ri + 8) % 40
        end
    elseif rk_1 <= 4 then
        local DJ = bit32.rrotate(bit32.bxor(bit32.lrotate(ri, 27), string.byte(tostring(rj_1))), 20)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(DJ, 3117840207), 2990716455), (bit32.bxor(bit32.band(DJ, 1177127088), 378676556))), 2990716455), 378676556) == DJ then
            qP = game:GetService("GuiService")
            qJ = game:GetService("TeleportService")
            qB = game:GetService("CoreGui")
            qs = game:GetService("Workspace")
        else
            qs = game:GetService("GuiService")
            qP = game:GetService("TeleportService")
            qJ = game:GetService("CoreGui")
            qB = game:GetService("Workspace")
        end
        ri = (ri + 13) % 40
    else
        local Dv = bit32.rrotate(bit32.bxor(bit32.lrotate(ri, 31), string.byte(tostring(qs))), 5)
        if bit32.bxor(bit32.lrotate(bit32.bxor(Dv, 2697303253), 30), 1748067637) ~= bit32.lrotate(Dv, 30) then
            p4 = qk.LocalPlayer
        else
            qk = p4.LocalPlayer
        end
        ri = (ri + 33) % 40
    end
until (ri * 17 + 8) % 40 == 19
if getgenv then
    rg, rk_2 = nil, nil
    local ri_1 = 3
    repeat
        if (ri_1 * 1 + 1) % 2 + 1 <= 1 then
            if ri_1 * 89602703 + 3 + 4 <= ri_1 * 89602703 + 3 + 4 + 3 then
                getgenv().gethui = fn605
                rg = getgenv().__OuroborosBuildACloneObbyLib
            else
                getgenv().gethui = fn605
                rk_2 = getgenv().__OuroborosBuildACloneObbyLib
            end
            ri_1 = (ri_1 + 5) % 8
        else
            if ri_1 * 95565563 + 11 + 7 <= ri_1 * 95565563 + 11 + 7 + 3 then
                rk_2 = rg
            else
                rg = rk_2
            end
            ri_1 = (ri_1 + 5) % 8
        end
    until (ri_1 * 5 + 2) % 8 == 3
    if rk_2 then
        rk_2 = rg.Unload
    end
    if rk_2 then
        pcall(function()
            rg:Unload()
        end)
    end
end
pcall(function()
    gethui = function()
        return PlayerGui
    end
end)
if setthreadidentity then
    setthreadidentity(8)
end
qS, qN, qG, qy, qq, qh, qb, p5, re, Network, ObbyConfig, RebirthConfig, qQ, TrainingConfig, UpgradeConfig, qv, rm_3, qe = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
qS = "Build A Clone Obby"
qN = "https://discord.gg/ehKVq7pf7v"
qG = "https://rscripts.net/@Ouroboros"
qy = "https://ouroboros-hub-rbx.web.app/"
qq = "#7fd47f"
qh = "#6ec1ff"
qb = "#e8a34d"
p5 = "#8b93a3"
re = "#e05a5a"
Network = require(rj_1:WaitForChild("Shared"):WaitForChild("Network"))
ObbyConfig = require(rj_1:WaitForChild("Configs"):WaitForChild("ObbyConfig"))
local CharacterConfig = require(rj_1:WaitForChild("Configs"):WaitForChild("CharacterConfig"))
RebirthConfig = require(rj_1:WaitForChild("Configs"):WaitForChild("RebirthConfig"))
if ((not rm_3 or RebirthConfig) and (not rm_3 and p5) or (UpgradeConfig or RebirthConfig or false)) and (("#8b93a3" or (p5 or not rm_3)) and (false or rm_3 or (UpgradeConfig or UpgradeConfig))) or not (((not rm_3 or RebirthConfig) and (not rm_3 and p5) or (UpgradeConfig or RebirthConfig or false)) and (("#8b93a3" or (p5 or not rm_3)) and (false or rm_3 or (UpgradeConfig or UpgradeConfig)))) then
    qQ = require(rj_1:WaitForChild("Configs"):WaitForChild("MutationConfig"))
    TrainingConfig = require(rj_1:WaitForChild("Configs"):WaitForChild("TrainingConfig"))
else
    rj_1 = require(TrainingConfig:WaitForChild("Configs"):WaitForChild("MutationConfig"))
    qQ = require(TrainingConfig:WaitForChild("Configs"):WaitForChild("TrainingConfig"))
end
UpgradeConfig = require(rj_1:WaitForChild("Configs"):WaitForChild("UpgradeConfig"))
qv = {}
local rm_4 = {}
qe = {}
local rk_3 = {}
local rn = {}
for k, v in ObbyConfig do
    rn[#rn + 1] = v
end
local ri_2 = 2
repeat
    if (ri_2 * 3 + 4) * 9 % 4 == ((ri_2 * 3 + 4) * 9 + 3) % 4 then
        table.sort(rn, fn438)
    else
        table.sort(rn, fn438)
    end
    ri_2 = (ri_2 + 1) % 4
until (ri_2 * 1 + 0) % 4 == 3
for k, v in rn do
    local ri_3 = v.DisplayName or v.Id
    qv[#qv + 1] = v.Id
    rm_4[#rm_4 + 1] = ri_3
    qe[ri_3] = v.Id
    rk_3[v.Id] = ri_3
end
rn, p6, rf = nil, nil, nil
local ri_4 = 7
repeat
    if (ri_4 * 1 + 1) % 2 + 1 <= 1 then
        local rj_4 = { "krgvghz", "eayizwuoir", "cohdp", "hvp", "ixavohvgel", "xqtx", "hjnmvoggqq", "cfvexjkb" }
        if rj_4[(ri_4 * 8 + 79) % 8 + 1] <= rj_4[(ri_4 * 8 + 79) % 8 + 1] then
            rn = {}
            p6 = {}
        else
            p6 = {}
            rn = {}
        end
        ri_4 = (ri_4 + 3) % 8
    else
        local rj_5 = (vector.create((ri_4 * 2 + 2) % 11 + 1, (ri_4 * 3 + 12) % 13 + 1, (ri_4 * 9 + 8) % 17 + 1))
        local rk_4 = (vector.create((ri_4 * 5 + 4) % 11 + 1, (ri_4 * 4 + 9) % 13 + 1, (ri_4 * 11 + 14) % 17 + 1))
        local CZ = vector.cross(rj_5, rk_4)
        local C_ = vector.dot(rj_5, rk_4)
        if vector.dot(CZ, CZ) + C_ * C_ == vector.dot(rj_5, rj_5) * vector.dot(rk_4, rk_4) + 3 then
            rn = {}
        else
            rf = {}
        end
        ri_4 = (ri_4 + 5) % 8
    end
until (ri_4 * 7 + 3) % 8 == 4
local rj_6 = {}
for k, v in CharacterConfig do
    local ri_5 = #rj_6 + 1
    local rk_5 = v.DisplayName or k
    local rl_5 = v.Multiplier or 0
    rj_6[ri_5] = { id = k, label = rk_5, mult = rl_5 }
end
table.sort(rj_6, fn42)
for k, v in rj_6 do
    rn[#rn + 1] = v.label
    p6[v.label] = v.id
    rf[v.id] = v.mult
end
qn, qg, Library = nil, nil, nil
qn = "Random"
qg = "Best Unlocked"
local rl_6 = { "Priority", qn, qg }
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
pcall(fn584)
if getgenv then
    getgenv().__OuroborosBuildACloneObbyLib = Library
end
SaveManager, Toggles, Options, qA, qt, p8, q1, qM, qp, q9, qC, rc, qi, p7, q_ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
qA = {}
qt = fn916
p8 = fn567
q1 = fn344
qM = fn35
qp = fn909
q9 = fn809
qC = fn521
rc = fn314
qi = fn9
p7 = fn924
q_ = fn795
local ro = {}
local ri_6 = tonumber(qk:GetAttribute("Wallet")) or 0
qE, qf, p9, qu, rk_6, qm, qF, qH, q0, qo, qa, qx, qz, q2, qj, qw, qR, qW, rb, qY, rh, q6, ql, q3, qT = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
qE = { unlocked = ro, shopRotation = nil, rebirthCount = 0, wallet = ri_6, busy = false }
local rp = fn717
local saveManager_ImportSourceLoop = fn218
qF = fn576
local noClipLoop = fn87
rp()
task.defer(saveManager_ImportSourceLoop)
task.defer(qF)
task.defer(noClipLoop)
qt(Network.ObbyUnlockSync.OnClientEvent:Connect(onOnClientEvent))
qt(Network.ShopRotation.OnClientEvent:Connect(onOnClientEvent2))
qt(Network.ShopSlotUpdate.OnClientEvent:Connect(onOnClientEvent3))
qt(Network.RebirthState.OnClientEvent:Connect(onOnClientEvent4))
qt(Network.RebirthResult.OnClientEvent:Connect(onOnClientEvent5))
qt(Network.DataChanged.OnClientEvent:Connect(onOnClientEvent6))
qt(qk:GetAttributeChangedSignal("Wallet"):Connect(fn147))
qH = fn655
q0 = fn363
qo = fn923
qa = function(dd)
    local vb
    local u8
    local va
    u8 = nil
    va = nil
    vb = nil
    local u9
    local vc = qH()
    if not vc then
        return false
    end
    local Obbies = vc:FindFirstChild("Obbies")
    local vc_1 = Obbies and Obbies:FindFirstChild(dd)
    if not vc_1 then
        return false
    end
    local Start = vc_1:FindFirstChild("Start")
    local End = vc_1:FindFirstChild("End")
    u9 = q_()
    local vd_2 = p7()
    if not (Start and End and u9 and vd_2) then
        return false
    end
    pcall(function()
        Network.RunLeaveRequest:FireServer()
    end)
    vd_2.PlatformStand = false
    vb = false
    va = false
    u8 = false
    local connection3 = Network.RunStarted.OnClientEvent:Connect(function()
        u8 = true
    end)
    local connection2 = Network.RunFinished.OnClientEvent:Connect(function()
        va = true
    end)
    local connection = Network.RunReset.OnClientEvent:Connect(function()
        vb = true
    end)
    local function vh(dA)
        u9 = q_()
        if not u9 or not dA then
            return
        end
        u9.CFrame = dA.CFrame * CFrame.new(0, 3.2, 0)
        u9.AssemblyLinearVelocity = Vector3.zero
        if firetouchinterest then
            pcall(firetouchinterest, u9, dA, 0)
            pcall(firetouchinterest, u9, dA, 1)
        end
    end
    vh(Start)
    local vi = os.clock()
    while true do
        local vj = not u8 and not va and not vb and os.clock() - vi < 2 and not Library.Unloaded and q9("AutoCompleteObby")
        if vj then
            vh(Start)
            task.wait()
            continue
        end
        break
    end
    local vc_3 = Library.Unloaded or not q9("AutoCompleteObby")
    if vc_3 then
        connection3:Disconnect()
        connection2:Disconnect()
        connection:Disconnect()
        return false
    end
    vh(End)
    local vc_4 = os.clock()
    while true do
        local vi_1 = not va and os.clock() - vc_4 < 0.75 and not Library.Unloaded and q9("AutoCompleteObby")
        if vi_1 then
            vh(End)
            task.wait()
            continue
        end
        break
    end
    connection3:Disconnect()
    connection2:Disconnect()
    connection:Disconnect()
    return va == true
end
qx = fn870
if (qa or not rk_6) and (false and not qm) or qR and not qR and (not qm or qm) or (not qm or qm) and (not qm and qR) and (rk_6 or not qR or false) or not ((qa or not rk_6) and (false and not qm) or qR and not qR and (not qm or qm) or (not qm or qm) and (not qm and qR) and (rk_6 or not qR or false)) then
    qz = fn476
else
    qR = fn476
end
q2 = fn925
qj = function(ex)
    local v9, wa
    local wc_1
    local wb_1
    v9, wc_1, wb_1 = string.match(ex, "^([^|]+)|(.+)|(%d+)$")
    if wc_1 then
        wa = v9
        pcall(function()
            wa = qQ.Normalize(v9)
        end)
        local wd = wa
        local wi = if wd then 1 else 0
        local wg = 4000 * wi + 897 * (1 - wi)
        local wh = 2233 * wi + 3864 * (1 - wi)
        if not ((wg * 2776 + wh * 334 + wg * wh) % 16777213 == 4004609) then
            wd = v9
        end
        local we = tonumber(wb_1) or 1
        return wc_1, wd, we
    end
    local wb_2 = string.match(ex, "^Gold|(.+)$")
    if wb_2 then
        return wb_2, "Gold", 1
    end
    return ex, "Normal", 1
end
qw = function(eI, eJ, eK)
    local wo, wp, wq
    wq = eI
    pcall(function()
        wq = TrainingConfig.BaseId(eI)
    end)
    local ws = rf[wq] or rf[eI]
    local ww = if ws then 1 else 0
    local wu = 1607 * ww + 1334 * (1 - ww)
    local wv = 1595 * ww + 2649 * (1 - ww)
    if not ((wu * 702 + wv * 3259 + wu * wv) % 16777213 == 8889384) then
        ws = 0
    end
    wo = 1
    local wr_1 = ws
    pcall(function()
        local wj = qQ.GetMultiplier(eJ) or 1
        wo = wj
    end)
    wp = 1
    pcall(function()
        local CharacterLevelMultiplier = UpgradeConfig.CharacterLevelMultiplier
        local wm = eK or 1
        local wl_1 = CharacterLevelMultiplier(wm) or 1
        wp = wl_1
    end)
    return wr_1 * wo * wp
end
qR = function(e3)
    local wz
    wz = nil
    wz = nil
    local connection = Network.EquipState.OnClientEvent:Connect(function(e6)
        local wx = type(e6) == "table" and e6.obbyId == e3
        if wx then
            wz = e6
        end
    end)
    Network.EquipStateRequest:FireServer(e3)
    local wB = os.clock() + 2
    while true do
        local wC = not wz and os.clock() < wB and not Library.Unloaded
        if wC then
            task.wait()
            continue
        end
        break
    end
    connection:Disconnect()
    return wz
end
qW = function(ff, fg)
    local wK_1
    local wH = {}
    if type(ff) ~= "table" then
        return wH
    end
    local wI = type(fg) == "table" and next(fg) ~= nil
    local wI_2
    for k, v in ff do
        local wG, wF
        local wI_1 = type(v) == "number" and v > 0
        if wI_1 then
            wG, wK_1, wI_2 = qj(k)
            wF = wG
            pcall(function()
                wF = TrainingConfig.BaseId(wG)
            end)
            if not wI or fg[wF] or fg[wG] then
                wH[#wH + 1] = { key = k, charId = wG, mutation = wK_1, level = wI_2, count = v, power = qw(wG, wK_1, wI_2) }
            end
        end
    end
    table.sort(wH, function(fy, fz)
        if fy.power == fz.power then
            return fy.charId < fz.charId
        end
        return fy.power > fz.power
    end)
    return wH
end
rb = fn300
qY = fn939
qf = "Place Best"
p9 = "Place Anything"
rh = fn794
q6 = fn366
qu = {
    K = 1000,
    k = 1000,
    M = 1000000,
    m = 1000000,
    B = 1000000000,
    b = 1000000000,
    T = 1000000000000,
    t = 1000000000000
}
ql = fn602
if qY and p9 and (qR and qR) and (qR or p9 or (qY or not rh)) or not (qY and p9 and (qR and qR) and (qR or p9 or (qY or not rh))) then
    q3 = fn195
    qT = function()
        local x8, x9, ya
        if qE.busy then
            return
        end
        local x4 = qH()
        local x3 = q_()
        if not (x4 and x3) then
            return
        end
        local x5_4 = tonumber(qk:GetAttribute("Wallet")) or qE.wallet
        local x6 = {}
        local x7 = x5_4
        for k, v in q0() do
            local Obbies = x4:FindFirstChild("Obbies")
            x8 = Obbies and Obbies:FindFirstChild(v)
            local x5_6 = x8
            if x8 then
                x8 = x5_6:FindFirstChild("CharacterSlots")
            end
            x5_4 = x8
            if not not x5_4 then
                for i, child in x5_4:GetChildren() do
                    x5_4 = tonumber(child.Name:match("^Slot(%d+)$"))
                    if not not x5_4 then
                        x8 = child:GetAttribute("Unlocked") == true or child:GetAttribute("PaidSlot") == true
                        if not x8 then
                            x8 = child:FindFirstChild("BuySlotPrompt", true)
                            x9 = x8 and x8:IsA("ProximityPrompt") and x8.Enabled
                            if not not x9 then
                                x9 = ql(x8.ActionText) or 0
                                ya = x9
                                if not (ya > x7) then
                                    x6[#x6 + 1] = { obbyId = v, index = x5_4, prompt = x8, part = x8.Parent, price = ya }
                                end
                            end
                        end
                    end
                end
            end
        end
        table.sort(x6, function(hb, hc)
            if hb.obbyId == hc.obbyId then
                return hb.index < hc.index
            end
            return hb.obbyId < hc.obbyId
        end)
        local yj = false
        for k, v in x6 do
            local x2
            local yi = 30
            while true do
                if yi < 23 then
                    if yi < 11 then
                        if yi < 5 then
                            if yi < 2 then
                                if yi < 1 then
                                    break
                                end
                                yi = 0
                            elseif yi < 3 then
                                yi = if ya then 12 else 44
                            elseif yi < 4 then
                                yi = 36
                            else
                                x5_4 = x4.Enabled
                                yi = 39
                            end
                        elseif yi < 8 then
                            if yi < 6 then
                                x4 = qE.busy
                                yi = 9
                            elseif yi < 7 then
                                yi = 32
                            else
                                yi = if not x8 then 1 else 41
                            end
                        elseif yi < 9 then
                            x3.CFrame = x8
                            x3.AssemblyLinearVelocity = Vector3.zero
                            yi = 13
                        elseif yi < 10 then
                            yi = if x4 then 40 else 46
                        else
                            x6 = x5_4:GetAttribute("Unlocked") == true
                            yi = 34
                        end
                    elseif yi < 17 then
                        if yi < 14 then
                            if yi < 12 then
                                yi = if v.price > x4 then 15 else 21
                            elseif yi < 13 then
                                yi = 32
                            else
                                qE.busy = false
                                task.wait(0.2)
                                yi = 0
                            end
                        elseif yi < 15 then
                            ya = x5_4:GetAttribute("Unlocked") ~= true
                            yi = 37
                        elseif yi < 16 then
                            yi = 0
                        else
                            task.wait()
                            yi = 18
                        end
                    elseif yi < 20 then
                        if yi < 18 then
                            x4 = not q9("AutoUnlockSlots")
                            yi = 27
                        elseif yi < 19 then
                            yi = 3
                        else
                            ya = not q9("AutoUnlockSlots")
                            yi = 2
                        end
                    elseif yi < 21 then
                        yi = if ya then 42 else 16
                    elseif yi < 22 then
                        x4 = v.prompt
                        x5_4 = x4
                        yi = if x5_4 then 24 else 23
                    else
                        x5_4 = x4:FindFirstAncestorWhichIsA("Model")
                        x6 = not x5_4
                        yi = if x6 then 34 else 10
                    end
                elseif yi < 35 then
                    if yi < 29 then
                        if yi < 26 then
                            if yi < 24 then
                                yi = if x5_4 then 4 else 39
                            elseif yi < 25 then
                                x5_4 = x4.Parent
                                yi = 23
                            else
                                x8 = x6:IsA("BasePart")
                                yi = 7
                            end
                        elseif yi < 27 then
                            ya = Library.Unloaded
                            yi = if ya then 2 else 19
                        elseif yi < 28 then
                            yi = if x4 then 9 else 5
                        else
                            x4 = qE.wallet
                            yi = 11
                        end
                    elseif yi < 32 then
                        if yi < 30 then
                            x6 = v.part
                            x8 = x6
                            yi = if x8 then 25 else 7
                        elseif yi < 31 then
                            x4 = Library.Unloaded
                            yi = if x4 then 27 else 17
                        else
                            qE.busy = false
                            return
                        end
                    elseif yi < 33 then
                        x3 = q_()
                        yi = if x3 then 8 else 13
                    elseif yi < 34 then
                        yi = 0
                    else
                        local yu = if x6 then 1 else 0
                        local ys = 2469 * yu + 3089 * (1 - yu)
                        local yt = 2264 * yu + 3981 * (1 - yu)
                        yi = if (ys * 896 + yt * 528 + ys * yt) % 16777213 == 8997432 then 43 else 29
                    end
                elseif yi < 41 then
                    if yi < 38 then
                        if yi < 36 then
                            x8 = x3.CFrame
                            x2 = x6.CFrame * CFrame.new(0, 3, 0)
                            x6 = function()
                                x3 = q_()
                                if not x3 then
                                    return
                                end
                                x3.CFrame = x2
                                x3.AssemblyLinearVelocity = Vector3.zero
                            end
                            x6()
                            task.wait(0.1)
                            q3(x4)
                            x9 = os.clock()
                            yi = 3
                        elseif yi < 37 then
                            ya = os.clock() - x9 < 1.25
                            yi = if ya then 14 else 37
                        else
                            yi = if ya then 26 else 6
                        end
                    elseif yi < 39 then
                        ya = os.clock() - x9 < 0.45
                        yi = 20
                    elseif yi < 40 then
                        yi = if not x5_4 then 33 else 22
                    else
                        return
                    end
                elseif yi < 44 then
                    if yi < 42 then
                        qE.busy = true
                        x3 = q_()
                        yi = if not x3 then 31 else 35
                    elseif yi < 43 then
                        q3(x4)
                        yi = 16
                    else
                        yi = 0
                    end
                elseif yi < 45 then
                    x6()
                    ya = os.clock() - x9 > 0.35
                    yi = if ya then 38 else 20
                elseif yi < 46 then
                    yj = true
                    yi = 0
                else
                    x4 = (tonumber(qk:GetAttribute("Wallet")))
                    yi = if x4 then 11 else 28
                end
            end
            if yj then
                break
            end
        end
    end
else
    qT = fn195
    q3 = function()
        local x8, x9, ya
        if qE.busy then
            return
        end
        local x4 = qH()
        local x3 = q_()
        if not (x4 and x3) then
            return
        end
        local x5_1 = tonumber(qk:GetAttribute("Wallet")) or qE.wallet
        local x6 = {}
        local x7 = x5_1
        for k, v in q0() do
            local Obbies = x4:FindFirstChild("Obbies")
            x8 = Obbies and Obbies:FindFirstChild(v)
            local x5_3 = x8
            if x8 then
                x8 = x5_3:FindFirstChild("CharacterSlots")
            end
            x5_1 = x8
            if not not x5_1 then
                for i, child in x5_1:GetChildren() do
                    x5_1 = tonumber(child.Name:match("^Slot(%d+)$"))
                    if not not x5_1 then
                        x8 = child:GetAttribute("Unlocked") == true or child:GetAttribute("PaidSlot") == true
                        if not x8 then
                            x8 = child:FindFirstChild("BuySlotPrompt", true)
                            x9 = x8 and x8:IsA("ProximityPrompt") and x8.Enabled
                            if not not x9 then
                                x9 = ql(x8.ActionText) or 0
                                ya = x9
                                if not (ya > x7) then
                                    x6[#x6 + 1] = { obbyId = v, index = x5_1, prompt = x8, part = x8.Parent, price = ya }
                                end
                            end
                        end
                    end
                end
            end
        end
        table.sort(x6, function(hb, hc)
            if hb.obbyId == hc.obbyId then
                return hb.index < hc.index
            end
            return hb.obbyId < hc.obbyId
        end)
        local yj = false
        for k, v in x6 do
            local x2
            local yi = 30
            while true do
                if yi < 23 then
                    if yi < 11 then
                        if yi < 5 then
                            if yi < 2 then
                                if yi < 1 then
                                    break
                                end
                                yi = 0
                            elseif yi < 3 then
                                yi = if ya then 12 else 44
                            elseif yi < 4 then
                                yi = 36
                            else
                                x5_1 = x4.Enabled
                                yi = 39
                            end
                        elseif yi < 8 then
                            if yi < 6 then
                                x4 = qE.busy
                                yi = 9
                            elseif yi < 7 then
                                yi = 32
                            else
                                yi = if not x8 then 1 else 41
                            end
                        elseif yi < 9 then
                            x3.CFrame = x8
                            x3.AssemblyLinearVelocity = Vector3.zero
                            yi = 13
                        elseif yi < 10 then
                            yi = if x4 then 40 else 46
                        else
                            x6 = x5_1:GetAttribute("Unlocked") == true
                            yi = 34
                        end
                    elseif yi < 17 then
                        if yi < 14 then
                            if yi < 12 then
                                yi = if v.price > x4 then 15 else 21
                            elseif yi < 13 then
                                yi = 32
                            else
                                qE.busy = false
                                task.wait(0.2)
                                yi = 0
                            end
                        elseif yi < 15 then
                            ya = x5_1:GetAttribute("Unlocked") ~= true
                            yi = 37
                        elseif yi < 16 then
                            yi = 0
                        else
                            task.wait()
                            yi = 18
                        end
                    elseif yi < 20 then
                        if yi < 18 then
                            x4 = not q9("AutoUnlockSlots")
                            yi = 27
                        elseif yi < 19 then
                            yi = 3
                        else
                            ya = not q9("AutoUnlockSlots")
                            yi = 2
                        end
                    elseif yi < 21 then
                        yi = if ya then 42 else 16
                    elseif yi < 22 then
                        x4 = v.prompt
                        x5_1 = x4
                        yi = if x5_1 then 24 else 23
                    else
                        x5_1 = x4:FindFirstAncestorWhichIsA("Model")
                        x6 = not x5_1
                        yi = if x6 then 34 else 10
                    end
                elseif yi < 35 then
                    if yi < 29 then
                        if yi < 26 then
                            if yi < 24 then
                                yi = if x5_1 then 4 else 39
                            elseif yi < 25 then
                                x5_1 = x4.Parent
                                yi = 23
                            else
                                x8 = x6:IsA("BasePart")
                                yi = 7
                            end
                        elseif yi < 27 then
                            ya = Library.Unloaded
                            yi = if ya then 2 else 19
                        elseif yi < 28 then
                            yi = if x4 then 9 else 5
                        else
                            x4 = qE.wallet
                            yi = 11
                        end
                    elseif yi < 32 then
                        if yi < 30 then
                            x6 = v.part
                            x8 = x6
                            yi = if x8 then 25 else 7
                        elseif yi < 31 then
                            x4 = Library.Unloaded
                            yi = if x4 then 27 else 17
                        else
                            qE.busy = false
                            return
                        end
                    elseif yi < 33 then
                        x3 = q_()
                        yi = if x3 then 8 else 13
                    elseif yi < 34 then
                        yi = 0
                    else
                        local yu = if x6 then 1 else 0
                        local ys = 2469 * yu + 3089 * (1 - yu)
                        local yt = 2264 * yu + 3981 * (1 - yu)
                        yi = if (ys * 896 + yt * 528 + ys * yt) % 16777213 == 8997432 then 43 else 29
                    end
                elseif yi < 41 then
                    if yi < 38 then
                        if yi < 36 then
                            x8 = x3.CFrame
                            x2 = x6.CFrame * CFrame.new(0, 3, 0)
                            x6 = function()
                                x3 = q_()
                                if not x3 then
                                    return
                                end
                                x3.CFrame = x2
                                x3.AssemblyLinearVelocity = Vector3.zero
                            end
                            x6()
                            task.wait(0.1)
                            q3(x4)
                            x9 = os.clock()
                            yi = 3
                        elseif yi < 37 then
                            ya = os.clock() - x9 < 1.25
                            yi = if ya then 14 else 37
                        else
                            yi = if ya then 26 else 6
                        end
                    elseif yi < 39 then
                        ya = os.clock() - x9 < 0.45
                        yi = 20
                    elseif yi < 40 then
                        yi = if not x5_1 then 33 else 22
                    else
                        return
                    end
                elseif yi < 44 then
                    if yi < 42 then
                        qE.busy = true
                        x3 = q_()
                        yi = if not x3 then 31 else 35
                    elseif yi < 43 then
                        q3(x4)
                        yi = 16
                    else
                        yi = 0
                    end
                elseif yi < 45 then
                    x6()
                    ya = os.clock() - x9 > 0.35
                    yi = if ya then 38 else 20
                elseif yi < 46 then
                    yj = true
                    yi = 0
                else
                    x4 = (tonumber(qk:GetAttribute("Wallet")))
                    yi = if x4 then 11 else 28
                end
            end
            if yj then
                break
            end
        end
    end
end
do
    task.spawn(worker7)
    task.spawn(worker6)
    task.spawn(worker5)
    task.spawn(worker4)
    task.spawn(worker3)
    task.spawn(worker2)
    task.spawn(worker)
    Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = qN, Copyable = true }, "|", qS },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
end
qm = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gamepad-2"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in qm do
    if k ~= "Info" then
        fn415(v)
    end
end
qr, qd, q4, qK = nil, nil, nil, nil
local ObbyGroup = qm.Main:AddLeftGroupbox("Obby", "flag")
ObbyGroup:AddToggle("AutoCompleteObby", { Text = "Auto Complete Obby", Default = false })
ObbyGroup:AddDropdown("ObbyMode", { Text = "Obby Mode", Values = rl_6, Default = qg })
ObbyGroup:AddDropdown("ObbyPriority", {
    Text = "Obby Priority",
    Values = rm_4,
    Multi = true,
    Searchable = true,
    AllowNull = true,
    Default = {}
})
local EconomyGroup = qm.Main:AddRightGroupbox("Economy", "coins")
EconomyGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
EconomyGroup:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
EconomyGroup:AddDivider("Characters")
EconomyGroup:AddToggle("AutoBuyCharacters", { Text = "Auto Buy Characters", Default = false })
EconomyGroup:AddDropdown("BuyCharacters", {
    Text = "Characters",
    Values = rn,
    Multi = true,
    Searchable = true,
    AllowNull = true,
    Default = {}
})
rp = qm.Main:AddLeftGroupbox("Pads", "layout-grid")
rp:AddToggle("AutoPlace", { Text = "Auto Place", Default = false })
rp:AddDropdown("PlaceLogic", { Text = "Place Logic", Values = { qf, p9 }, Default = qf })
rp:AddToggle("AutoReplaceBetter", { Text = "Auto Replace Better", Default = false })
rp:AddToggle("AutoUnlockSlots", { Text = "Auto Unlock Slots", Default = false })
qK = fn842
ro = function()
    local zr
    local zn
    zn = nil
    zr = nil
    local Label2, Label3, zp, zq, Label
    zr = "Unknown"
    pcall(function()
        local zc_1
        local zb_1
        if identifyexecutor then
            zc_1, zb_1 = identifyexecutor()
            local zd = zc_1 ~= ""
            local ze = type(zc_1) == "string" and zd
            if ze then
                local zd_1 = type(zb_1) == "string" and zb_1 ~= "" and zc_1 .. " " .. zb_1
                zr = zd_1 or zc_1
            end
        end
    end)
    local zt = qK()
    zn = os.clock()
    zq = function()
        local zg = math.floor(os.clock() - zn)
        if zg < 60 then
            return zg .. "s"
        elseif zg < 3600 then
            return string.format("%dm %ds", zg // 60, zg % 60)
        else
            return string.format("%dh %dm", zg // 3600, zg % 3600 // 60)
        end
    end
    local UserGroup = qm.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = qk, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(qp("User", qk.DisplayName .. " @" .. qk.Name, qq), true)
    UserGroup:AddLabel(qp("UserId", tostring(qk.UserId), qh), true)
    UserGroup:AddLabel(qp("Executor", zr .. "  " .. zt, qq), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(qp("Session", zq(), qb), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            p8(qk.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            p8("https://www.roblox.com/users/" .. tostring(qk.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = qm.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(qp("Game", qS, qh), true)
    Label2 = SessionGroup:AddLabel(qp("Players", "0/0", qq), true)
    zp = tostring(game.JobId)
    local zu_1 = #zp > 18 and string.sub(zp, 1, 18) .. "..."
    local zu_2 = zu_1 or zp
    SessionGroup:AddLabel(qp("Job", zu_2, p5), true)
    Label = SessionGroup:AddLabel(qp("Ping", "0 ms", qb), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            qJ:Teleport(game.PlaceId, qk)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            p8(zp, "Copied Job ID")
        end
    })
    task.spawn(function()
        local zj_1
        local zi_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(qp("Session", zq(), qb))
            Label2:SetText(qp("Players", #p4:GetPlayers() .. "/" .. tostring(p4.MaxPlayers), qq))
            zi_1, zj_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local zi_2 = zi_1 and zj_1 .. " ms" or "n/a"
            Label:SetText(qp("Ping", zi_2, qb))
        end
    end)
    local SocialsGroup = qm.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = q1 })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            p8(qG, "Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            p8(qy, "Copied website link")
        end
    })
end
ro()
noClipLoop = function()
    local MovementGroup = qm.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = qm.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local PerformanceGroup = qm.Player:AddRightGroupbox("Performance", "gauge")
    PerformanceGroup:AddToggle("BoostFPS", { Text = "Boost FPS", Default = false })
    local connection2
    local Lighting = game:GetService("Lighting")
    local jw = setmetatable({}, { __mode = "k" })
    local function jx(jy, jz, jA)
        local zz_1
        local zy_1
        local zx = jw[jy]
        if not zx then
            zx = {}
            jw[jy] = zx
        end
        if zx[jz] == nil then
            zy_1, zz_1 = pcall(function()
                return jy[jz]
            end)
            if not zy_1 then
                return
            end
            zx[jz] = zz_1
        end
        pcall(function()
            jy[jz] = jA
        end)
    end
    local function onDescendantAdded(jL)
        if jL:IsA("BasePart") then
            jx(jL, "CastShadow", false)
            jx(jL, "Reflectance", 0)
        else
            local zB = jL:IsA("Decal") or jL:IsA("Texture")
            if zB then
                jx(jL, "Transparency", 1)
            else
                local zB_1 = jL:IsA("ParticleEmitter") or jL:IsA("Trail") or jL:IsA("Beam")
                local zF = if zB_1 then 1 else 0
                local zD = 646 * zF + 3921 * (1 - zF)
                local zE = 590 * zF + 3164 * (1 - zF)
                if not ((zD * 2094 + zE * 982 + zD * zE) % 16777213 == 2313244) then
                    zB_1 = jL:IsA("Smoke")
                end
                if not zB_1 then
                    zB_1 = jL:IsA("Fire")
                end
                if not zB_1 then
                    zB_1 = jL:IsA("Sparkles")
                end
                if not zB_1 then
                    zB_1 = jL:IsA("PostEffect")
                end
                if zB_1 then
                    jx(jL, "Enabled", false)
                elseif jL:IsA("Atmosphere") then
                    jx(jL, "Density", 0)
                elseif jL:IsA("MeshPart") then
                    jx(jL, "TextureID", "")
                end
            end
        end
    end
    local function jP()
        if connection2 then
            connection2:Disconnect()
            connection2 = nil
        end
        for k, v in jw do
            local zK = k
            for k, v in v do
                local zQ = k
                local zS = v
                pcall(function()
                    zK[zQ] = zS
                end)
            end
        end
        table.clear(jw)
    end
    local function jZ(j_)
        jP()
        if not j_ then
            return
        end
        pcall(function()
            jx(settings().Rendering, "QualityLevel", Enum.QualityLevel.Level01)
        end)
        pcall(function()
            jx(UserSettings():GetService("UserGameSettings"), "SavedQualityLevel", Enum.SavedQualitySetting.QualityLevel1)
        end)
        jx(Lighting, "GlobalShadows", false)
        jx(Lighting, "EnvironmentDiffuseScale", 0)
        jx(Lighting, "EnvironmentSpecularScale", 0)
        local Terrain = qs.Terrain
        if Terrain then
            jx(Terrain, "Decoration", false)
            jx(Terrain, "WaterWaveSize", 0)
            jx(Terrain, "WaterWaveSpeed", 0)
            jx(Terrain, "WaterReflectance", 0)
        end
        for i, descendant in qs:GetDescendants() do
            onDescendantAdded(descendant)
        end
        for i, descendant in Lighting:GetDescendants() do
            onDescendantAdded(descendant)
        end
        connection2 = qs.DescendantAdded:Connect(onDescendantAdded)
        qt(connection2)
    end
    local function kg(kh)
        pcall(function()
            qP:SetGameplayPausedNotificationEnabled(not kh)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = qB:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not kh
            end
        end)
        if not kh then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(qk, "GameplayPaused", false)
            else
                qk.GameplayPaused = false
            end
        end)
    end
    local function kv(kw)
        if not kw:IsA("ProximityPrompt") then
            return
        end
        kw.HoldDuration = 0
        kw.MaxActivationDistance = 50
        kw.RequiresLineOfSight = false
    end
    local connection
    qt(q8.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = qk.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local Ab_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if Ab_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end))
    qt(q5.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local Aj_1 = p7()
            if Aj_1 then
                Aj_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end))
    local CurrentCamera = qs.CurrentCamera
    qt(q8.RenderStepped:Connect(function(kR)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local Ao_1 = p7()
            if Ao_1 then
                Ao_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local Ao_3 = q_()
            local Ap = p7()
            if Ao_3 and Ap then
                Ap.PlatformStand = true
                local Ap_1 = Vector3.zero
                if q5:IsKeyDown(Enum.KeyCode.W) then
                    Ap_1 += CurrentCamera.CFrame.LookVector
                end
                if q5:IsKeyDown(Enum.KeyCode.S) then
                    Ap_1 -= CurrentCamera.CFrame.LookVector
                end
                if q5:IsKeyDown(Enum.KeyCode.A) then
                    Ap_1 -= CurrentCamera.CFrame.RightVector
                end
                if q5:IsKeyDown(Enum.KeyCode.D) then
                    Ap_1 += CurrentCamera.CFrame.RightVector
                end
                if q5:IsKeyDown(Enum.KeyCode.Space) then
                    Ap_1 += Vector3.new(0, 1, 0)
                end
                if q5:IsKeyDown(Enum.KeyCode.LeftControl) then
                    Ap_1 -= Vector3.new(0, 1, 0)
                end
                Ao_3.AssemblyLinearVelocity = Vector3.zero
                if Ap_1.Magnitude > 0 then
                    Ao_3.CFrame = Ao_3.CFrame + Ap_1.Unit * Options.FlySpeed.Value * kR
                end
            end
        end
    end))
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local Av = p7()
            if Av then
                Av.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local AA = p7()
            if AA then
                AA.WalkSpeed = 16
            end
        end
    end)
    Toggles.AntiGameplayPause:OnChanged(function()
        kg(Toggles.AntiGameplayPause.Value)
    end)
    kg(true)
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in qs:GetDescendants() do
                pcall(kv, descendant)
            end
            connection = qs.DescendantAdded:Connect(function(lk)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(kv, lk)
                end
            end)
            qt(connection)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    Toggles.BoostFPS:OnChanged(function()
        jZ(Toggles.BoostFPS.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                kg(true)
            end
        end
    end)
    return kg, function()
        jP()
        if connection then
            connection:Disconnect()
            connection = nil
        end
    end
end
qr, qd = noClipLoop()
local function ri_7(ly)
    local lz = 0
    local lA = tick()
    ly:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = ly:AddLabel("AFK triggers: 0")
    local function lC()
        local CurrentCamera = qs.CurrentCamera
        if not CurrentCamera then
            return
        end
        qZ:CaptureController()
        qZ:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        lz += 1
        lA = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. lz)
        end)
    end
    local connection = qk.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(lC)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local AS = Toggles.AntiAfk.Value and tick() - lA >= 60
            if AS then
                pcall(lC)
            end
        end
    end)
    ly:AddButton({
        Text = "Unload UI",
        Func = function()
            Library:Unload()
        end
    })
    return connection
end
local MenuGroup = qm.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
q4 = ri_7(MenuGroup)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(qm.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/BuildACloneObby")
local rv = SaveManager:BuildConfigSection(qm.Settings)
SaveManager:LoadAutoloadConfig()
saveManager_ImportSourceLoop = function(l2)
    local function l3(l4, l5)
        local AV_1 = (l4 == "Toggle" and Toggles or Options)[l5]
        local AU_2 = type(AV_1) == "table" and AV_1.Type == l4
        return AU_2 and AV_1 or nil
    end
    local function mf(mg, mh)
        local Type = mh.Type
        if Type == "Toggle" then
            return { idx = mg, type = "Toggle", value = mh.Value == true }
        elseif Type == "Slider" then
            return { idx = mg, type = "Slider", value = tostring(mh.Value) }
        elseif Type == "Dropdown" then
            return { idx = mg, type = "Dropdown", multi = mh.Multi == true, value = mh.Value }
        elseif Type == "Input" then
            local AZ = mh.Value or ""
            return { idx = mg, type = "Input", text = tostring(AZ) }
        elseif Type == "ColorPicker" then
            return { idx = mg, type = "ColorPicker", value = mh.Value:ToHex(), transparency = mh.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = mg,
                type = "KeyPicker",
                mode = mh.Mode,
                key = mh.Value,
                modifiers = mh.Modifiers,
                toggled = mh.Toggled
            }
        else
            return nil
        end
    end
    local function mj()
        local A4 = {}
        for k, v in { Toggles, Options } do
            for k, v in v do
                local A5 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if A5 then
                    local A5_1 = mf(k, v)
                    if A5_1 then
                        A4[#A4 + 1] = A5_1
                    end
                end
            end
        end
        table.sort(A4, function(mr, ms)
            if mr.type ~= ms.type then
                return mr.type < ms.type
            end
            return mr.idx < ms.idx
        end)
        return { objects = A4 }
    end
    local function mt(mu)
        local Bo
        Bo = nil
        local Bp = type(mu) ~= "table"
        local Bt = if Bp then 1 else 0
        local Br = 457 * Bt + 3016 * (1 - Bt)
        local Bs = 853 * Bt + 3441 * (1 - Bt)
        if not ((Br * 261 + Bs * 1449 + Br * Bs) % 16777213 == 1745095) then
            Bp = type(mu.idx) ~= "string"
        end
        if not Bp then
            Bp = type(mu.type) ~= "string"
        end
        if not Bp then
            Bp = SaveManager.Ignore[mu.idx]
        end
        if Bp then
            return false
        end
        Bo = l3(mu.type, mu.idx)
        if not Bo then
            return false
        end
        local Bp_1 = pcall(function()
            if mu.type == "Input" then
                if type(mu.text) ~= "string" then
                    return
                end
                Bo:SetValue(mu.text)
            elseif mu.type == "ColorPicker" then
                Bo:SetValueRGB(Color3.fromHex(mu.value), mu.transparency)
            elseif mu.type == "KeyPicker" then
                Bo:SetValue({ mu.key, mu.mode, mu.modifiers })
                if mu.mode == "Toggle" and mu.toggled ~= nil then
                    Bo.Toggled = mu.toggled
                    Bo:Update()
                end
            else
                Bo:SetValue(mu.value)
            end
        end)
        return Bp_1
    end
    l2:AddDivider()
    l2:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    l2:AddButton("Export Config to Clipboard", function()
        local Bv_1
        local Bu_1
        Bu_1, Bv_1 = pcall(qV.JSONEncode, qV, mj())
        if not Bu_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local Bu_2 = setclipboard or toclipboard
        local Bu_3 = type(Bu_2) ~= "function" or not pcall(Bu_2, Bv_1)
        if Bu_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    l2:AddButton("Import Config from Clipboard Text", function()
        local BD_1
        local BB = Options.SaveManager_ImportSource.Value or ""
        local BB_1
        local BC = tostring(BB):match("^%s*(.-)%s*$")
        if BC == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        BB_1, BD_1 = pcall(qV.JSONDecode, qV, BC)
        local BC_1 = not BB_1 or type(BD_1) ~= "table"
        local BH = if BC_1 then 1 else 0
        local BF = 1944 * BH + 865 * (1 - BH)
        local BG = 2058 * BH + 2734 * (1 - BH)
        if not ((BF * 3013 + BG * 1878 + BF * BG) % 16777213 == 13722948) then
            BC_1 = type(BD_1.objects) ~= "table"
        end
        if BC_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local BB_2 = 0
        for k, v in BD_1.objects do
            if mt(v) then
                BB_2 += 1
            end
        end
        if BB_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local BD_2 = BB_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(BB_2, BD_2), 6)
    end)
end
saveManager_ImportSourceLoop(rv)
Library:OnUnload(function()
    qr(false)
    qd()
    if q4 then
        q4:Disconnect()
    end
    for k, v in qA do
        local BV = v
        pcall(function()
            BV:Disconnect()
        end)
    end
    table.clear(qA)
    local BO = p7()
    if BO then
        BO.PlatformStand = false
        BO.WalkSpeed = 16
    end
    local BO_1 = getgenv and getgenv().__OuroborosBuildACloneObbyLib == Library
    if BO_1 then
        getgenv().__OuroborosBuildACloneObbyLib = nil
    end
end)
