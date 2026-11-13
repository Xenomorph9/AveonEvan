local qw
local State
local qS
local qz
local rg
local qV
local qY
local rj
local qF
local q0
local qI
local qp
local LocalPlayer
local CoreGui
local q9
local qv
local qy
local rf
local ri
local qE
local qH
local q2
local qo
local qK
local q5
local qr
local q8
local qN
local qQ
local qT
local re
local qA
local qW
local qG
local q1
local qn
local Services
local qJ
local qq
local qM
local qt
local ra
local function fn3()
    local Character = LocalPlayer.Character
    local sx = Character and Character:FindFirstChild("HumanoidRootPart")
    return sx
end
local function fn16(cF, cG)
    for i, v in ipairs(qp) do
        local t2 = type(v) == "table" and not cF[i]
        if t2 then
            local t2_1 = i - 1
            local ue = 1
            while ue <= t2_1 do
                if not cF[ue] then
                    return nil
                end
                ue += 1
            end
            local max = math.max
            local t3 = tonumber(v.needNum) or 0
            local t4 = max(t3, 0)
            if t4 <= cG then
                return i
            end
            return nil
        end
    end
    return nil
end
local function fn111(dY)
    local WinTouchPartFolder = rg:FindFirstChild("WinTouchPartFolder")
    if not WinTouchPartFolder then
        return nil
    end
    local vg = WinTouchPartFolder:FindFirstChild("DefaultWin" .. tostring(dY))
    local vf_1 = vg and vg:IsA("Model")
    if not vf_1 then
        return nil
    end
    local HitBox = vg:FindFirstChild("HitBox")
    local vg_1 = HitBox and HitBox:IsA("BasePart")
    if vg_1 then
        return HitBox
    end
    return nil
end
local function fn141(cV)
    if type(cV) ~= "table" then
        return "Unknown"
    end
    local us = cV.name or "Aura " .. tostring(cV.id)
    local ut = tostring(us)
    local us_1 = cV.levelName or ""
    local uu = tostring(us_1)
    if uu ~= "" then
        return ut .. " (" .. uu .. ")"
    end
    return ut
end
local function fn143(cu)
    local SwordInit = LocalPlayer:FindFirstChild("SwordInit")
    local tW_1
    local tX = SwordInit and SwordInit:IsA("NumberValue")
    local tX_1
    if not tX then
        return false, "SwordInit missing"
    end
    SwordInit.Value = cu
    tW_1, tX_1 = qG(rf.BuySword, cu)
    if not tW_1 then
        return false, tX_1
    end
    local tW_2 = type(tX_1) == "table" and tX_1.Status
    local tY = tW_2 or tX_1
    local tX_2 = tY == "Owned"
    local tY_1 = tY == "Purchased"
    local t1 = if tY_1 then 1 else 0
    local t_ = 2709 * t1 + 1271 * (1 - t1)
    local t0 = 3140 * t1 + 2683 * (1 - t1)
    if not ((t_ * 3571 + t0 * 3356 + t_ * t0) % 16777213 == 11940726) then
        tY_1 = tX_2
    end
    if tY_1 then
        return true, tY
    end
    return false, tY
end
local function fn149(bo)
    local sX = typeof(bo) ~= "Instance" or not bo:IsA("BasePart")
    if sX then
        return false
    end
    local Character = LocalPlayer.Character
    local sY = not Character or not qI(firetouchinterest)
    if sY then
        return false
    end
    local sY_1 = false
    for i, child in ipairs(Character:GetChildren()) do
        if child:IsA("BasePart") then
            local sZ = pcall(firetouchinterest, bo, child, 0)
            sY_1 = sY_1 or sZ
        end
    end
    task.wait(0.05)
    for i, child in ipairs(Character:GetChildren()) do
        if child:IsA("BasePart") then
            pcall(firetouchinterest, bo, child, 1)
        end
    end
    return sY_1
end
local function fn222()
    local ww = { "Best" }
    local wx = #ra
    local wB = 1
    while wB <= wx do
        local wC = wB
        table.insert(ww, "Train " .. tostring(wC))
        wB += 1
    end
    return ww
end
local function fn231()
    local vP = math.floor(qt("Rebirth"))
    local vP_3
    if vP + 1 == #rj then
        State.RebirthStatus = "Max rebirth"
        return
    end
    local vQ = rj[vP + 1]
    local vQ_2
    if type(vQ) ~= "table" then
        State.RebirthStatus = "No next rebirth"
        return
    end
    local vP_1 = tonumber(vQ.needNum) or 0
    local vP_2 = qt("Level")
    if vP_2 < vP_1 then
        State.RebirthStatus = string.format("Need level %s", tostring(vP_1))
        return
    end
    State.RebirthStatus = "Rebirthing"
    vP_3, vQ_2 = qG(rf.Rebirth)
    if vP_3 and vQ_2 == true then
        State.RebirthStatus = "Rebirth success"
    else
        State.RebirthStatus = "Rebirth blocked"
    end
end
local function fn275(af)
    local so_1
    local sn_1
    local sm = q8:FindFirstChild(af)
    assert(sm, af .. " missing")
    sn_1, so_1 = pcall(require, sm)
    local sm_1 = sn_1 and type(so_1) == "table"
    assert(sm_1, af .. " failed to load")
    return so_1
end
local function fn277(cN)
    local ui_1
    local uh_1
    ui_1, uh_1 = nil, -1
    for i, v in ipairs(qp) do
        local uj = cN[i] and type(v) == "table"
        if uj then
            local uj_1 = tonumber(v.attack) or 0
            if uj_1 > uh_1 then
                uh_1 = uj_1
                ui_1 = i
            end
        end
    end
    return ui_1
end
local function fn312()
    local wb_1
    local v8 = qt("Win")
    local v8_1
    local v9 = qS()
    local wa = q9(v9, v8)
    if wa then
        State.TrailStatus = "Buying trail " .. tostring(wa)
        v8_1, wb_1 = qG(rf.BuyTrail, wa)
        if v8_1 and (wb_1 == "Purchased" or wb_1 == "Owned") then
            v9[wa] = true
            qG(rf.EquipTrail, wa)
            State.TrailStatus = "Bought " .. tostring(wa)
        else
            State.TrailStatus = "Buy failed (" .. tostring(wb_1) .. ")"
            task.wait(1)
        end
        return
    end
    local v8_2 = qr(v9)
    if v8_2 then
        qG(rf.EquipTrail, v8_2)
        State.TrailStatus = "Best trail " .. tostring(v8_2)
    else
        State.TrailStatus = "No affordable trail"
    end
end
local function fn320()
    local Character = LocalPlayer.Character
    local sD = Character and Character:FindFirstChildOfClass("Humanoid")
    return sD
end
local function fn331()
    local uw = { "None" }
    for i, v in ipairs(q5) do
        if type(v) == "table" then
            table.insert(uw, qM(v))
        end
    end
    return uw
end
local function fn339(U)
    local sk = typeof(cloneref) == "function" and typeof(U) == "Instance"
    if sk then
        return cloneref(U)
    end
    return U
end
local function fn343(aF, aG)
    local st = Services:FindFirstChild(aF)
    if not st then
        return nil
    end
    local comm = st:FindFirstChild("__comm__")
    local st_1 = comm and comm:FindFirstChild("RF")
    local su_1 = st_1
    if st_1 then
        st_1 = su_1:FindFirstChild(aG)
    end
    return st_1
end
local function fn351(fO)
    local wf = fO ~= ""
    local wg = type(fO) == "string" and wf
    if wg then
        qQ.StopAt = fO
    end
end
local function fn357(X)
    return type(X) == "function"
end
local function fn381()
    local ts_1
    local tr_1
    local tq = {}
    tr_1, ts_1 = qG(rf.GetSword)
    local tt = tr_1 and type(ts_1) == "table"
    if tt then
        for i, v in ipairs(ts_1) do
            local tr_2 = tonumber(v)
            if tr_2 then
                tq[tr_2] = true
            end
        end
    end
    return tq
end
local function fn386()
    local u7 = qy()
    local u8 = qJ[u7]
    local u9 = type(u8) ~= "table" or #u8 == 0
    if u9 then
        return u7, nil, nil
    end
    local u9_1 = #u8
    local va = u8[u9_1]
    local u8_1 = va and va.addNum
    local va_1 = tonumber(u8_1) or 0
    return u7, u9_1, va_1
end
local function fn425(da)
    if type(da) ~= "table" then
        return false
    end
    local uO = tonumber(da.id)
    if uO and uO >= 4 and uO <= 9 then
        return qY("TrainModel" .. uO)
    elseif type(da.needName) ~= "string" then
        return false
    else
        local uO_1 = qy()
        local uP_1 = da["needNum" .. uO_1]
        if typeof(uP_1) ~= "number" then
            return false
        end
        local uO_2 = LocalPlayer:FindFirstChild(da.needName)
        local uQ = uO_2 and uO_2:IsA("NumberValue")
        if not uQ then
            return false
        end
        return uP_1 <= uO_2.Value
    end
end
local function fn484(fg)
    local vU = fg ~= ""
    local vV = type(fg) == "string" and vU
    if vV then
        qF.Selection = fg
    end
end
local function fn518(cj, ck, cl)
    for i, v in ipairs(qw) do
        local tM = type(v) == "table" and not cj[i]
        if tM then
            local floor = math.floor
            local tO_1 = tonumber(v.worldNum) or 0
            tM = floor(tO_1) == cl
        end
        if tM then
            tM = tostring(v.needName) ~= "Robux"
        end
        if tM then
            local tN_2 = tonumber(v.productId) or 0
            tM = tN_2 == 0
        end
        if tM then
            if (i - 1) % 11 + 1 > 1 and not cj[i - 1] then
                return nil
            end
            local max = math.max
            local tN_4 = tonumber(v.needNum) or 0
            local tO_2 = max(tN_4, 0)
            if tO_2 <= ck then
                return i
            end
            return nil
        end
    end
    return nil
end
local function fn588(aY)
    local sI = LocalPlayer:FindFirstChild(aY)
    local sJ = sI
    if sJ then
        local sK = sI:IsA("NumberValue") or sI:IsA("IntValue")
        sJ = sK
    end
    if sJ then
        local sJ_1 = tonumber(sI.Value) or 0
        return sJ_1
    end
    return 0
end
local function fn601()
    return not q0.Unloaded
end
local function fn619(a4)
    local sM = LocalPlayer:FindFirstChild(a4)
    local sN = sM ~= nil and sM:IsA("BoolValue") and sM.Value == true
    return sN
end
local function fn639()
    local vC_1
    local vB_1
    local vA_1
    vC_1, vA_1, vB_1 = re()
    if not vA_1 then
        State.WinStatus = string.format("World %d | No eligible win", vC_1)
        return
    end
    local vD = qA(vA_1)
    if not vD then
        State.WinStatus = string.format("World %d | Win pad missing", vC_1)
        return
    end
    local vA_2 = qt("Win")
    State.WinStatus = string.format("World %d | Claiming +%s", vC_1, tostring(vB_1))
    qo(vD, 3)
    task.wait(0.12)
    qq(vD)
    local vE = os.clock() + 1.25
    while true do
        local vF = qz() and WinController.Enabled and os.clock() < vE
        if vF then
            if qy() ~= vC_1 then
                State.WinStatus = string.format("World %d | World changed", qy())
                return
            end
            if qt("Win") > vA_2 then
                break
            end
            qq(vD)
            task.wait(0.1)
            continue
        end
        State.WinStatus = string.format("World %d | Waiting +%s", vC_1, tostring(vB_1))
        return
    end
    State.WinStatus = string.format("World %d | Claimed +%s", vC_1, tostring(vB_1))
    task.wait(0.35)
    return
end
local function fn656()
    local tD_1
    local tC_1
    local tB = {}
    tC_1, tD_1 = qG(rf.GetTrail)
    local tE = tC_1 and type(tD_1) == "table"
    if tE then
        for i, v in ipairs(tD_1) do
            local tC_2 = tonumber(v)
            if tC_2 then
                tB[tC_2] = true
            end
        end
    end
    local tC_3 = math.floor(qt("TrailInit"))
    if tC_3 > 0 then
        tB[tC_3] = true
    end
    return tB
end
local function fn675()
    qT.SetEnabled(false)
    qH.SetEnabled(false)
    qK.SetEnabled(false)
    qF.SetEnabled(false)
    qW.SetEnabled(false)
    qQ.SetEnabled(false)
end
local function fn712()
    local vK = qy()
    local vK_1
    local vL = qt("Win")
    local vL_1
    local vM = qE()
    local vN = qV(vM, vL, vK)
    if not vN then
        State.SwordStatus = "No affordable sword"
        return
    end
    State.SwordStatus = "Buying sword " .. tostring(vN)
    vK_1, vL_1 = q1(vN)
    if vK_1 then
        qG(rf.EquipSword, vN)
        State.SwordStatus = "Bought " .. tostring(vN)
    else
        State.SwordStatus = "Buy failed (" .. tostring(vL_1) .. ")"
        task.wait(1)
    end
end
local function fn735(dt)
    local uY_2, uY_3
    local uX_2, uX_3
    local uW_2, uW_3
    local TrainModelFolder = rg:FindFirstChild("TrainModelFolder")
    if not TrainModelFolder then
        return nil, nil
    elseif type(dt) == "string" then
        local uW_1 = tonumber(dt:match("(%d+)$"))
        if uW_1 then
            local uX_1 = TrainModelFolder:FindFirstChild("TrainModel" .. uW_1)
            local uY_1 = ra[uW_1]
            local uZ_1 = uX_1 and qn(uY_1)
            if uZ_1 then
                return uX_1, uW_1
            end
            return nil, uW_1
        end
        uY_2, uX_2, uW_2 = nil, nil, -1
        for i, child in ipairs(TrainModelFolder:GetChildren()) do
            if child:IsA("Model") then
                local uV_1 = tonumber(string.match(child.Name, "(%d+)$"))
                local uZ_2 = uV_1 and ra[uV_1]
                local u__1 = uZ_2
                if uZ_2 then
                    uZ_2 = qn(u__1)
                end
                if uZ_2 then
                    local uZ_3 = qv(u__1)
                    if uZ_3 > uW_2 then
                        uW_2 = uZ_3
                        uY_2 = child
                        uX_2 = uV_1
                    end
                end
            end
        end
        return uY_2, uX_2
    else
        uY_3, uX_3, uW_3 = nil, nil, -1
        for i, child in ipairs(TrainModelFolder:GetChildren()) do
            if child:IsA("Model") then
                local uV_2 = tonumber(string.match(child.Name, "(%d+)$"))
                local uZ_4 = uV_2 and ra[uV_2]
                local u__2 = uZ_4
                if uZ_4 then
                    uZ_4 = qn(u__2)
                end
                if uZ_4 then
                    local uZ_5 = qv(u__2)
                    if uZ_5 > uW_3 then
                        uW_3 = uZ_5
                        uY_3 = child
                        uX_3 = uV_2
                    end
                end
            end
        end
        return uY_3, uX_3
    end
end
local function fn798(dl)
    if type(dl) ~= "table" then
        return 0
    end
    local uS = tonumber(dl.id)
    if uS and uS >= 4 then
        local uS_1 = tonumber(dl.attack) or 0
        return uS_1
    end
    local uS_2 = qy()
    local uT_1 = tonumber(dl["attack" .. uS_2]) or tonumber(dl.attack)
    return uT_1 or 0
end
local function fn829()
    gethui = ri
end
local function fn931()
    local vi = math.max(math.floor(qt("BuyWorld")), 1)
    local vj = q2[1]
    local vk = -math.huge
    for i, v in ipairs(q2) do
        local floor = math.floor
        local vm = tonumber(v.world) or tonumber(v.id)
        local vn = vm or 1
        local vm_1 = floor(vn)
        if vm_1 <= vi and vm_1 > vk then
            vj = v
            vk = vm_1
        end
    end
    return vj
end
local function fn937(c4)
    local uE = c4 == ""
    local uF = type(c4) ~= "string" or uE
    if uF or c4 == "None" then
        return nil
    end
    for i, v in ipairs(q5) do
        if qM(v) == c4 then
            local uE_2 = tonumber(v.id) or i
            return uE_2
        end
    end
    return nil
end
local function fn982()
    return CoreGui
end
local function fn1008()
    local GameScene = LocalPlayer:FindFirstChild("GameScene")
    local sQ = GameScene
    if sQ then
        local sR_1 = GameScene:IsA("NumberValue") or GameScene:IsA("IntValue")
        sQ = sR_1
    end
    if sQ then
        return math.clamp(math.floor(GameScene.Value), 1, qN)
    end
    local CurrentWorld = LocalPlayer:FindFirstChild("CurrentWorld")
    local sQ_1 = CurrentWorld
    if sQ_1 then
        local sR_2 = (CurrentWorld:IsA("NumberValue"))
        local sV = if sR_2 then 1 else 0
        local sT = 3773 * sV + 3399 * (1 - sV)
        local sU = 2753 * sV + 3813 * (1 - sV)
        if not ((sT * 3549 + sU * 2716 + sT * sU) % 16777213 == 14477381) then
            sR_2 = CurrentWorld:IsA("IntValue")
        end
        sQ_1 = sR_2
    end
    if sQ_1 then
        return math.clamp(math.floor(CurrentWorld.Value), 1, qN)
    end
    return 1
end
qn = nil
qo = nil
qp = nil
qq = nil
qr = nil
LocalPlayer = nil
qt = nil
qv = nil
qw = nil
qy = nil
qz = nil
qA = nil
qE = nil
qF = nil
qG = nil
qH = nil
qI = nil
qJ = nil
qK = nil
qM = nil
qN = nil
CoreGui = nil
qQ = nil
qS = nil
qT = nil
qV = nil
qW = nil
qY = nil
q0 = nil
q1 = nil
q2 = nil
Services = nil
q5 = nil
q8 = nil
local Players, qu, qx, qB, qC, Lighting, TeleportService, qP, qR, GuiService, qX, qZ, HttpService, VirtualUser, UserInputService, q7
q9 = nil
ra = nil
State = nil
re = nil
rf = nil
rg = nil
ri = nil
rj = nil
local RunService, rc, rh
local rt_1
local rs_1
local rr_1
local rq_1
local rp_1, rp_2
local ro_1, ro_2
local rC = if not game:IsLoaded() then 1 else 0
if rC == 1 then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, qB, LocalPlayer, ri = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local rm = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
qB = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local rl = "OuroborosSwordVsAnime"
ri = fn982
if getgenv then
    getgenv().gethui = ri
end
q0, rs_1, rg, State, q8, qw, qp, rj, rr_1, ra, q5, q2, rt_1, qN, qJ, rq_1, qC, ro_1, qI, qz, rp_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local rk = 62
repeat
    local ru = (rk * 11 + 17) % 18 + 1
    if ru <= 9 then
        if ru <= 5 then
            if ru <= 3 then
                if ru <= 2 then
                    if ru <= 1 then
                        local rv_1 = {
                            "yjiluwsyq",
                            "rqa",
                            "dkqyhcqrpp",
                            "yzsrekdogjmb",
                            "yrifqpwxdrme",
                            "lburtlwpaag",
                            "bnjuyuvauxe",
                            "oevbj",
                            "jtsyrizkky",
                            "fctzcms",
                            "wbvdnlfs",
                            "frrhczpww",
                            "iltlbiekeqj"
                        }
                        if rv_1[(rk * 59 + 61) % 13 + 1] <= rv_1[(rk * 59 + 61) % 13 + 1] then
                            ro_1 = fn339
                        else
                            q2 = fn339
                        end
                        rk = (rk + 41) % 72
                    else
                        local rv_2 = {
                            "xmerjxbcdzm",
                            "bfxqmbzheoxk",
                            "etysa",
                            "xphs",
                            "loiptjevk",
                            "mjnbybesxuzy",
                            "vdr",
                            "vrm",
                            "nrbu"
                        }
                        if rv_2[(rk * 5 + 6) % 9 + 1] < rv_2[(rk * 5 + 6) % 9 + 1] then
                            qz = fn357
                            qI = fn601
                        else
                            qI = fn357
                            qz = fn601
                        end
                        rk = (rk + 41) % 72
                    end
                else
                    local rv_3 = (vector.create((rk * 1 + 1) % 11 + 1, (rk * 4 + 10) % 13 + 1, (rk * 14 + 10) % 17 + 1))
                    local rw_1 = (vector.create((rk * 3 + 6) % 11 + 1, (rk * 8 + 6) % 13 + 1, (rk * 15 + 8) % 17 + 1))
                    local B2 = vector.cross(rv_3, rw_1)
                    local B3 = vector.dot(rv_3, rw_1)
                    if vector.dot(B2, B2) + B3 * B3 == vector.dot(rv_3, rv_3) * vector.dot(rw_1, rw_1) then
                        rs_1 = ro_1(rm)
                    else
                        rm = rs_1(ro_1)
                    end
                    rk = (rk + 41) % 72
                end
            elseif ru <= 4 then
                local C2 = bit32.rrotate(bit32.bxor(bit32.lrotate(rk, 22), string.byte(tostring(ra))), 20)
                if bit32.bxor(bit32.lrotate(bit32.bxor(C2, 724110295), 26), 1554818095) ~= bit32.lrotate(C2, 26) then
                    qB = rg(ro_1)
                else
                    rg = ro_1(qB)
                end
                rk = (rk + 59) % 72
            else
                if rk * 65654165 + 1 + 3 <= rk * 65654165 + 1 + 3 + 1 then
                    State = q0.State
                else
                    q0 = State.State
                end
                rk = (rk + 5) % 72
            end
        elseif ru <= 7 then
            if ru <= 6 then
                local rv_4 = {
                    "iuazvppfllig",
                    "xlebgcuxjm",
                    "hvrysxydyo",
                    "qjliocrbvjpd",
                    "psiaz",
                    "tfzduflztq",
                    "rstycwcq",
                    "fbsswnvxygf"
                }
                if rv_4[(rk * 79 + 1) % 8 + 1] <= rv_4[(rk * 79 + 1) % 8 + 1] then
                    State.WinStatus = "Idle"
                    State.SwordStatus = "Idle"
                    State.RebirthStatus = "Idle"
                    State.TrainStatus = "Idle"
                    State.TrailStatus = "Idle"
                    State.AuraStatus = "Idle"
                    q8 = rs_1:WaitForChild("Config", 30)
                else
                    q8.WinStatus = "Idle"
                    q8.SwordStatus = "Idle"
                    q8.RebirthStatus = "Idle"
                    q8.TrainStatus = "Idle"
                    q8.TrailStatus = "Idle"
                    q8.AuraStatus = "Idle"
                    rs_1 = State:WaitForChild("Config", 30)
                end
                rk = (rk + 5) % 72
            else
                local rv_5 = (vector.create((rk * 1 + 2) % 11 + 1, (rk * 1 + 2) % 13 + 1, (rk * 12 + 12) % 17 + 1))
                local rw_2 = (vector.create((rk * 7 + 6) % 11 + 1, (rk * 5 + 5) % 13 + 1, (rk * 8 + 6) % 17 + 1))
                local rx_1 = (vector.create((rk * 5 + 6) % 11 + 1, (rk * 5 + 3) % 13 + 1, (rk * 8 + 15) % 17 + 1))
                local ry = (vector.create((rk * 1 + 2) % 11 + 1, (rk * 2 + 11) % 13 + 1, (rk * 7 + 7) % 17 + 1))
                if vector.dot(vector.cross(rv_5, rw_2), (vector.cross(rx_1, ry))) == vector.dot(rv_5, rx_1) * vector.dot(rw_2, ry) - vector.dot(rv_5, ry) * vector.dot(rw_2, rx_1) + 1 then
                    assert(rp_1, "Config folder missing")
                    q8 = fn275
                else
                    assert(q8, "Config folder missing")
                    rp_1 = fn275
                end
                rk = (rk + 23) % 72
            end
        elseif ru <= 8 then
            local rv_6 = (vector.create((rk * 1 + 2) % 11 + 1, (rk * 6 + 7) % 13 + 1, (rk * 7 + 16) % 17 + 1))
            local rw_3 = (vector.create((rk * 5 + 8) % 11 + 1, (rk * 3 + 6) % 13 + 1, (rk * 9 + 8) % 17 + 1))
            local CY = vector.cross(rv_6, rw_3)
            local CZ = vector.dot(rv_6, rw_3)
            if vector.dot(CY, CY) + CZ * CZ == vector.dot(rv_6, rv_6) * vector.dot(rw_3, rw_3) then
                qw = rp_1("SwordConfig")
            else
                rp_1 = qw("SwordConfig")
            end
            rk = (rk + 23) % 72
        else
            local rv_7 = {
                "teqynzxjhvz",
                "mpjjiqqjmria",
                "qxfh",
                "ikywgr",
                "finnkumrbj",
                "iwfvarqu",
                "mzbn",
                "ohwlxhz",
                "ftyswxeovty",
                "ceanec",
                "bjpghilbcrz",
                "vysh",
                "zsolkalnfi"
            }
            if rv_7[(rk * 58 + 62) % 13 + 1] <= rv_7[(rk * 58 + 62) % 13 + 1] then
                qp = rp_1("TrailConfig")
                rj = rp_1("RebirthConfig")
            else
                rj = qp("TrailConfig")
                rp_1 = qp("RebirthConfig")
            end
            rk = (rk + 59) % 72
        end
    elseif ru <= 14 then
        if ru <= 12 then
            if ru <= 11 then
                if ru <= 10 then
                    local B1 = bit32.rrotate(bit32.bxor(bit32.lrotate(rk, 18), string.byte(tostring(rg))), 8)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(B1, 3849586315), 996028640), (bit32.bxor(bit32.band(B1, 445380980), 3483164457))), 996028640), 3483164457) == B1 then
                        rr_1 = rp_1("LevelWinConfig")
                    else
                        rp_1 = rr_1("LevelWinConfig")
                    end
                    rk = (rk + 23) % 72
                else
                    if (rk * 2 + 1) * 7 % 3 == ((rk * 2 + 1) * 7 + 3) % 3 then
                        ra = rp_1("TrainConfig")
                    else
                        rp_1 = ra("TrainConfig")
                    end
                    rk = (rk + 41) % 72
                end
            else
                if (rk * 1 + 4) * 9 % 4 == ((rk * 1 + 4) * 9 + 8) % 4 then
                    q5 = rp_1("AuraConfig")
                    q2 = rp_1("DrawAuraConfig")
                else
                    rp_1 = q2("AuraConfig")
                    q5 = q2("DrawAuraConfig")
                end
                rk = (rk + 41) % 72
            end
        elseif ru <= 13 then
            local rv_8 = {
                "iblocpgwn",
                "dbosxzdyep",
                "knv",
                "pjhpgqiyx",
                "vtued",
                "lcokvcjetia",
                "xjvuuimrjbk",
                "ubwkwcm",
                "dttblto",
                "ggan"
            }
            if rv_8[(rk * 12 + 64) % 10 + 1] <= rv_8[(rk * 12 + 64) % 10 + 1] then
                rt_1 = rp_1("TrainClickBonusConfig")
            else
                rp_1 = rt_1("TrainClickBonusConfig")
            end
            rk = (rk + 23) % 72
        else
            local rv_9 = (vector.create((rk * 7 + 3) % 11 + 1, (rk * 1 + 1) % 13 + 1, (rk * 9 + 10) % 17 + 1))
            local rw_4 = (vector.create((rk * 7 + 8) % 11 + 1, (rk * 11 + 12) % 13 + 1, (rk * 14 + 10) % 17 + 1))
            local rx_2 = (vector.create((rk * 3 + 3) % 11 + 1, (rk * 6 + 2) % 13 + 1, (rk * 11 + 16) % 17 + 1))
            if vector.dot(vector.cross(rv_9, rw_4), rx_2) == vector.dot(vector.cross(rw_4, rx_2), rv_9) + 2 then
                rp_1 = qN("TeleportConfig")
                math.max(#rp_1, 1)
            else
                local rn_1 = rp_1("TeleportConfig")
                qN = math.max(#rn_1, 1)
            end
            rk = (rk + 41) % 72
        end
    elseif ru <= 16 then
        if ru <= 15 then
            local rv_10 = {
                "poqf",
                "jtzlqp",
                "yiihezuyba",
                "rkcsil",
                "qfhkzh",
                "tbc",
                "wrgsmlzjsa",
                "cqbdnyqgydc",
                "hylbjormeg"
            }
            local B0 = rk
            local rw_5 = rv_10[B0 % 9 + 1]
            if rw_5:len() >= rw_5:gsub("(.)", "%1%1", B0 % 3 % 2 + 1):len() then
                rq_1 = {}
            else
                qJ = {}
            end
            rk = (rk + 23) % 72
        else
            if ((not qN or not rj) and (rs_1 and rs_1) and (not ro_1 and rj or not rs_1 and not ro_1) or not rj and not ro_1 and (not qN or not ro_1) and ((rs_1 or not ra) and (qN or rj))) and ((ra and ra or (ra or not ra)) and (ra and ro_1 and (qN or ra)) or (rj and not rj and (not qN or not ro_1) or (ro_1 or not ro_1 or not rj and rs_1))) and not (((not qN or not rj) and (rs_1 and rs_1) and (not ro_1 and rj or not rs_1 and not ro_1) or not rj and not ro_1 and (not qN or not ro_1) and ((rs_1 or not ra) and (qN or rj))) and ((ra and ra or (ra or not ra)) and (ra and ro_1 and (qN or ra)) or (rj and not rj and (not qN or not ro_1) or (ro_1 or not ro_1 or not rj and rs_1)))) then
                pcall(fn829)
                qw = function(t)
                    local r4
                    local r2
                    local r3
                    r2 = nil
                    r3 = nil
                    r4 = nil
                    local r5 = t ~= ""
                    local r6 = type(t) == "string" and r5
                    assert(r6, "Atypical is required")
                    assert(type(getgenv) == "function", "getgenv is unavailable")
                    r2 = getgenv()
                    assert(type(r2) == "table", "getgenv did not return a table")
                    local r5_2 = r2[t]
                    if r5_2 ~= nil then
                        local r6_2 = type(r5_2) == "table" and type(r5_2.Unload) == "function"
                        assert(r6_2, "Namespace is occupied")
                        r5_2.Unload()
                        assert(r2[t] == nil, "Previous instance did not release its namespace")
                    end
                    r3 = {}
                    r4 = { State = {}, Unloaded = false }
                    r4.Track = function(z)
                        assert(type(z) == "function", "Cleanup must be callable")
                        if r4.Unloaded then
                            z()
                        else
                            table.insert(r3, z)
                        end
                        return z
                    end
                    r4.Unload = function()
                        local rW_2
                        local rV_2
                        if r4.Unloaded then
                            return
                        end
                        r4.Unloaded = true
                        local rT = {}
                        local r_ = #r3
                        local rZ = -1
                        while false and r_ <= 1 or true and r_ >= 1 do
                            local r0 = r_
                            local rU_2 = table.remove(r3, r0)
                            rV_2, rW_2 = pcall(rU_2)
                            if not rV_2 then
                                table.insert(rT, tostring(rW_2))
                            end
                            r_ += rZ
                        end
                        table.clear(r4.State)
                        if #rT > 0 then
                            error("Cleanup incomplete: " .. table.concat(rT, "; "), 0)
                        end
                        if r2[t] == r4 then
                            r2[t] = nil
                        end
                    end
                    r2[t] = r4
                    return r4
                end
            else
                pcall(fn829)
                rq_1 = function(t)
                    local r4
                    local r2
                    local r3
                    r2 = nil
                    r3 = nil
                    r4 = nil
                    local r5 = t ~= ""
                    local r6 = type(t) == "string" and r5
                    assert(r6, "Atypical is required")
                    assert(type(getgenv) == "function", "getgenv is unavailable")
                    r2 = getgenv()
                    assert(type(r2) == "table", "getgenv did not return a table")
                    local r5_1 = r2[t]
                    if r5_1 ~= nil then
                        local r6_1 = type(r5_1) == "table" and type(r5_1.Unload) == "function"
                        assert(r6_1, "Namespace is occupied")
                        r5_1.Unload()
                        assert(r2[t] == nil, "Previous instance did not release its namespace")
                    end
                    r3 = {}
                    r4 = { State = {}, Unloaded = false }
                    r4.Track = function(z)
                        assert(type(z) == "function", "Cleanup must be callable")
                        if r4.Unloaded then
                            z()
                        else
                            table.insert(r3, z)
                        end
                        return z
                    end
                    r4.Unload = function()
                        local rW_1
                        local rV_1
                        if r4.Unloaded then
                            return
                        end
                        r4.Unloaded = true
                        local rT = {}
                        local r_ = #r3
                        local rZ = -1
                        while false and r_ <= 1 or true and r_ >= 1 do
                            local r0 = r_
                            local rU_1 = table.remove(r3, r0)
                            rV_1, rW_1 = pcall(rU_1)
                            if not rV_1 then
                                table.insert(rT, tostring(rW_1))
                            end
                            r_ += rZ
                        end
                        table.clear(r4.State)
                        if #rT > 0 then
                            error("Cleanup incomplete: " .. table.concat(rT, "; "), 0)
                        end
                        if r2[t] == r4 then
                            r2[t] = nil
                        end
                    end
                    r2[t] = r4
                    return r4
                end
            end
            rk = (rk + 59) % 72
        end
    elseif ru <= 17 then
        local ru_1 = (vector.create((rk * 7 + 3) % 11 + 1, (rk * 11 + 6) % 13 + 1, (rk * 4 + 17) % 17 + 1))
        local rv_11 = (vector.create((rk * 6 + 6) % 11 + 1, (rk * 8 + 7) % 13 + 1, (rk * 9 + 3) % 17 + 1))
        local rw_6 = (vector.create((rk * 4 + 1) % 11 + 1, (rk * 5 + 6) % 13 + 1, (rk * 13 + 6) % 17 + 1))
        if vector.dot(vector.cross(ru_1, rv_11), rw_6) == vector.dot(vector.cross(rv_11, rw_6), ru_1) + 5 then
            qJ = function(M, N)
                local sf = type(M) == "table" and type(M.Track) == "function"
                assert(sf, "FeatureAPI required")
                local sf_2 = type(N) == "table" and type(N.OnUnload) == "function"
                assert(sf_2, "UI library required")
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
        else
            qC = function(M, N)
                local sf = type(M) == "table" and type(M.Track) == "function"
                assert(sf, "FeatureAPI required")
                local sf_1 = type(N) == "table" and type(N.OnUnload) == "function"
                assert(sf_1, "UI library required")
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
        end
        rk = (rk + 41) % 72
    else
        if (rk * 3 + 7) * 13 % 4 == ((rk * 3 + 7) * 13 + 14) % 4 then
            rl = q0(rq_1)
        else
            q0 = rq_1(rl)
        end
        rk = (rk + 23) % 72
    end
until (rk * 35 + 64) % 72 == 38
for i, v in ipairs(rr_1) do
    local max = math.max
    local floor = math.floor
    local rm_1 = tonumber(v.worldNum) or 1
    local rl_2 = max(floor(rm_1), 1)
    local rm_2 = qJ[rl_2] or {}
    qJ[rl_2] = rm_2
    table.insert(qJ[rl_2], v)
end
for k, v in pairs(qJ) do
    table.sort(v, function(aB, aC)
        local sq = tonumber(aB.id) or 0
        local sr = tonumber(aC.id) or 0
        return sq < sr
    end)
end
Services, rf = nil, nil
Services = rs_1:WaitForChild("Packages", 30):WaitForChild("Knit", 30):WaitForChild("Services", 30)
rf = {
    AddNum = fn343("PlayerService", "AddNum"),
    Rebirth = fn343("PlayerService", "Rebirth"),
    ClaimTrainClickBonus = fn343("PlayerService", "ClaimTrainClickBonus"),
    BuySword = fn343("SwordService", "BuySword"),
    EquipSword = fn343("SwordService", "EquipSword"),
    GetSword = fn343("SwordService", "GetSword"),
    SetFlyingSwordTrainingTarget = fn343("SwordService", "SetFlyingSwordTrainingTarget"),
    BuyTrail = fn343("TrailService", "BuyTrail"),
    EquipTrail = fn343("TrailService", "EquipTrail"),
    GetTrail = fn343("TrailService", "GetTrail"),
    DrawAura = fn343("AuraService", "DrawAura")
}
local max = math.max
local rk_3 = tonumber(rt_1.Interval) or 8
rc, qT, qH, qK, qF, qW, qQ, q7, qP, qt, qY, qy, qG, qq, qo, qx, qE, qS, qV, q1, q9, qr, qM, rh, qR, qn, qv, qZ, re, qA, qX, qu = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
rc = max(rk_3, 1)
q7 = fn3
qP = fn320
qt = fn588
if not qu and false and ((not qt or qQ) and (qM or qQ)) and (not qQ and qu and false or (not qM or false) and false) and not (not qu and false and ((not qt or qQ) and (qM or qQ)) and (not qQ and qu and false or (not qM or false) and false)) then
    qo = fn619
    qY = fn1008
    qq = function(bl, ...)
        if not bl then
            return false, "missing remote"
        end
        return pcall(function(...)
            return bl:InvokeServer(...)
        end, ...)
    end
    qG = fn149
    qy = function(bC, bD)
        local tg
        local th
        tg = nil
        th = nil
        th = q7()
        local ti = not th or typeof(bC) ~= "Instance" or not bC:IsA("BasePart")
        if ti then
            return false
        end
        local ti_3 = typeof(bD) == "number" and bD
        tg = ti_3 or 3
        local ti_4 = pcall(function()
            th.AssemblyLinearVelocity = Vector3.zero
            th.CFrame = bC.CFrame + Vector3.new(0, tg, 0)
        end)
        return ti_4
    end
else
    qY = fn619
    qy = fn1008
    qG = function(bl, ...)
        if not bl then
            return false, "missing remote"
        end
        return pcall(function(...)
            return bl:InvokeServer(...)
        end, ...)
    end
    qq = fn149
    qo = function(bC, bD)
        local tg
        local th
        tg = nil
        th = nil
        th = q7()
        local ti = not th or typeof(bC) ~= "Instance" or not bC:IsA("BasePart")
        if ti then
            return false
        end
        local ti_1 = typeof(bD) == "number" and bD
        tg = ti_1 or 3
        local ti_2 = pcall(function()
            th.AssemblyLinearVelocity = Vector3.zero
            th.CFrame = bC.CFrame + Vector3.new(0, tg, 0)
        end)
        return ti_2
    end
end
qx = function(bN, bO)
    local tm
    local tl
    tl = nil
    tm = nil
    local tn = typeof(bN) ~= "Instance" or not bN:IsA("Model")
    if tn then
        return false
    end
    tl = q7()
    if not tl then
        return false
    end
    local tn_1 = typeof(bO) == "number" and bO
    tm = tn_1 or 4
    local tn_2 = pcall(function()
        tl.AssemblyLinearVelocity = Vector3.zero
        tl.CFrame = bN:GetPivot() * CFrame.new(0, tm, 0)
    end)
    return tn_2
end
qE = fn381
qS = fn656
qV = fn518
q1 = fn143
q9 = fn16
qr = fn277
qM = fn141
rh = fn331
qR = fn937
qn = fn425
qv = fn798
qZ = fn735
re = fn386
qA = fn111
qX = fn931
local function rn_2(eg, eh, ei)
    local ej = { Enabled = false, Generation = 0 }
    ej.SetEnabled = function(ek)
        local Generation
        ek = ek == true
        if ej.Enabled == ek then
            return
        end
        ej.Enabled = ek
        ej.Generation = ej.Generation + 1
        Generation = ej.Generation
        if not ek then
            State[eg] = "Idle"
            return
        end
        task.spawn(function()
            local vw_1
            while true do
                local vv = qz() and ej.Enabled and ej.Generation == Generation
                local vv_1
                if vv then
                    vv_1, vw_1 = pcall(ei, ej)
                    if not vv_1 then
                        State[eg] = "Error"
                        warn("[Ouroboros] " .. eg .. ":", vw_1)
                        task.wait(1)
                    else
                        task.wait(eh)
                    end
                    continue
                end
                break
            end
            if ej.Generation == Generation then
                State[eg] = "Idle"
            end
        end)
    end
    return ej
end
qT = rn_2("WinStatus", 0.35, fn639)
qH = rn_2("SwordStatus", 0.75, fn712)
qK = rn_2("RebirthStatus", 0.6, fn231)
qF = { Enabled = false, Generation = 0, Selection = "Best", LastClaimAt = 0 }
qF.SetSelection = fn484
qF.SetEnabled = function(fi)
    local Generation
    fi = fi == true
    if qF.Enabled == fi then
        return
    end
    qF.Enabled = fi
    qF.Generation = qF.Generation + 1
    Generation = qF.Generation
    if not fi then
        qG(rf.SetFlyingSwordTrainingTarget, 0)
        State.TrainStatus = "Idle"
        return
    end
    task.spawn(function()
        local v0_1
        while true do
            local v_ = qz() and qF.Enabled and qF.Generation == Generation
            local v__1
            if v_ then
                v__1, v0_1 = qZ(qF.Selection)
                local v1 = v__1 and v0_1
                local v1_2
                if not v1 then
                    State.TrainStatus = "Train locked"
                    task.wait(0.8)
                    continue
                end
                local v1_1 = q7()
                if not v1_1 then
                    State.TrainStatus = "No character"
                    task.wait(0.5)
                    continue
                end
                local Position = v__1:GetPivot().Position
                local v2_1
                local v3 = v1_1.Position.X - Position.X
                local v4 = v1_1.Position.Z - Position.Z
                if v3 * v3 + v4 * v4 > 120 then
                    qx(v__1, 4)
                    task.wait(0.1)
                end
                State.TrainStatus = "Training " .. tostring(v0_1)
                qG(rf.SetFlyingSwordTrainingTarget, v0_1)
                local v__2 = os.clock()
                if v__2 - qF.LastClaimAt >= rc then
                    v1_2, v2_1 = qG(rf.ClaimTrainClickBonus, v0_1)
                    if v1_2 and v2_1 ~= false then
                        qF.LastClaimAt = v__2
                    else
                        if v1_2 and v2_1 == false then
                            qF.LastClaimAt = v__2
                        end
                    end
                end
                task.wait(0.25)
                continue
            end
            break
        end
        if qF.Generation == Generation then
            qG(rf.SetFlyingSwordTrainingTarget, 0)
            State.TrainStatus = "Idle"
        end
    end)
end
qW = rn_2("TrailStatus", 0.5, fn312)
qQ = { Enabled = false, Generation = 0, StopAt = "None", OnStop = nil }
qQ.SetStopAt = fn351
qQ.SetEnabled = function(fQ)
    local Generation
    fQ = fQ == true
    if qQ.Enabled == fQ then
        return
    end
    qQ.Enabled = fQ
    qQ.Generation = qQ.Generation + 1
    Generation = qQ.Generation
    if not fQ then
        State.AuraStatus = "Idle"
        return
    end
    task.spawn(function()
        while true do
            local wl_1 = qz() and qQ.Enabled and qQ.Generation == Generation
            if wl_1 then
                local wl_2 = qR(qQ.StopAt)
                local wm = math.floor(qt("AuraInit"))
                local wm_3
                local wn = wm == wl_2
                local wn_4
                if wl_2 and wn then
                    State.AuraStatus = "Stop aura owned"
                    qQ.Enabled = false
                    if type(qQ.OnStop) == "function" then
                        pcall(qQ.OnStop)
                    end
                    break
                end
                local wm_1 = qX()
                if type(wm_1) ~= "table" then
                    State.AuraStatus = "No aura draw"
                    task.wait(0.8)
                    continue
                end
                local wn_1 = wm_1.needName or "Win"
                local wo_1 = tostring(wn_1)
                local max = math.max
                local wp = tonumber(wm_1.needNum) or 0
                local wm_2 = max(wp, 0)
                local wn_3 = qt(wo_1)
                if wn_3 < wm_2 then
                    State.AuraStatus = string.format("Need %s %s", wo_1, tostring(wm_2))
                    task.wait(0.8)
                    continue
                end
                State.AuraStatus = "Spinning aura"
                wn_4, wm_3 = qG(rf.DrawAura, "Win")
                local wo_2 = wn_4 and type(wm_3) == "table" and wm_3.Status == "Success"
                if wo_2 then
                    local wo_3 = tonumber(wm_3.AuraId) or tonumber(wm_3.EquippedAuraId)
                    local wm_4 = wo_3
                    local wt = if wo_3 then 1 else 0
                    local wr = 957 * wt + 1593 * (1 - wt)
                    local ws = 3279 * wt + 540 * (1 - wt)
                    if not ((wr * 1565 + ws * 1888 + wr * ws) % 16777213 == 10826460) then
                        wo_3 = "?"
                    end
                    State.AuraStatus = "Got aura " .. tostring(wo_3)
                    if wl_2 and wm_4 == wl_2 then
                        qQ.Enabled = false
                        State.AuraStatus = "Stop aura hit"
                        if type(qQ.OnStop) == "function" then
                            pcall(qQ.OnStop)
                        end
                        break
                    end
                    task.wait(0.55)
                    continue
                end
                if wn_4 then
                    State.AuraStatus = "Spin blocked"
                    task.wait(0.8)
                else
                    State.AuraStatus = "Spin failed"
                    task.wait(0.8)
                end
                task.wait(0.55)
                continue
            end
            break
        end
        if qQ.Generation == Generation and not qQ.Enabled then
            if State.AuraStatus ~= "Stop aura owned" and State.AuraStatus ~= "Stop aura hit" then
                State.AuraStatus = "Idle"
            end
        end
    end)
end
q0.Track(fn675)
qu = fn222
ro_2, rp_2 = pcall(function()
    local Ar
    local Library
    local Options
    local Ax
    local Toggles
    Ar = nil
    Options = nil
    Ax = nil
    Library = nil
    Toggles = nil
    local Aq, At, Au, Av, Aw, AA, AB
    Ax = "https://discord.gg/synapsex"
    AB = "+1 Sword vs Anime"
    AA = "https://rscripts.net/@Ouroboros"
    At = "https://ouroboros-hub-rbx.web.app/"
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles, Options = Library.Toggles, Library.Options
    qC(q0, Library)
    Av = function(gx, gy)
        local wE = type(setclipboard) == "function" and setclipboard
        local wF = wE
        if not wF then
            local wE_1 = type(toclipboard) == "function" and toclipboard
            wF = wE_1
        end
        local wF_1 = wF or nil
        if not wF_1 then
            Library:Notify("Clipboard unavailable")
            return false
        end
        local wE_3 = pcall(wF_1, tostring(gx))
        if wE_3 then
            local wF_2 = gy or "Copied"
            Library:Notify(wF_2)
        else
            Library:Notify("Copy failed")
        end
        return wE_3
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = Ax, Copyable = true }, "|", AB, "|", "v0.6" },
        Icon = 132608042600488,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Au = {}
    Au.Info = Window:AddTab("Info", "info")
    Au.Main = Window:AddTab("Main", "gamepad-2")
    Au.Player = Window:AddTab("Player", "person-standing")
    Au.Settings = Window:AddTab("Settings", "settings")
    local function AC(gJ)
        local DiscordGroup = gJ:AddLeftGroupbox("Discord", "message-circle")
        DiscordGroup:AddDiscordBox(nil, {
            Banner = 95892854151512,
            Avatar = 132608042600488,
            Title = "Ouroboros Hub",
            Subtitle = "Dupes, keyless scripts and updates",
            Status = "online",
            Accent = Color3.fromRGB(88, 101, 242),
            Link = Ax,
            Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
        })
        return DiscordGroup
    end
    for k, v in pairs(Au) do
        if k ~= "Info" then
            AC(v)
        end
    end
    local function AD_1()
        local w2
        local w0
        local xb
        local w7
        local w3
        w0 = nil
        w2 = nil
        w3 = nil
        w7 = nil
        xb = nil
        local w_, w1, w4, Label, w6, Label2, w9, Label4, Label3, xd, xe, Label5
        w_ = "#7fd47f"
        w6 = "#e8a34d"
        w1 = "#8b93a3"
        w9 = "#6ec1ff"
        xb = function(gU)
            return (tostring(gU):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        w2 = function(gW, gX)
            return string.format('<font color="%s">%s</font>', gX, xb(gW))
        end
        xe = function(g_, g0, g1)
            return string.format("<b>%s</b> %s %s", g_, w2("-", "#5a6070"), w2(g0, g1))
        end
        local xg = {}
        for k, v in pairs(rf) do
            if v == nil then
                table.insert(xg, k)
            end
        end
        local xh = #xg == 0 and "Remotes ready"
        local xi = xh or "Missing " .. table.concat(xg, ", ")
        w0 = "Unknown"
        pcall(function()
            local wI_1
            local wH_1
            if type(identifyexecutor) == "function" then
                wI_1, wH_1 = identifyexecutor()
                local wJ = wI_1 ~= ""
                local wK = type(wI_1) == "string" and wJ
                if wK then
                    local wJ_1 = type(wH_1) == "string" and wH_1 ~= "" and wI_1 .. " " .. wH_1
                    w0 = wJ_1 or wI_1
                end
            end
        end)
        w7 = os.clock()
        w4 = function()
            local wP = math.floor(os.clock() - w7)
            if wP < 60 then
                return wP .. "s"
            elseif wP < 3600 then
                return string.format("%dm %ds", wP // 60, wP % 60)
            else
                return string.format("%dh %dm", wP // 3600, wP % 3600 // 60)
            end
        end
        local UserGroup = Au.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(xe("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, w_), true)
        UserGroup:AddLabel(xe("UserId", tostring(LocalPlayer.UserId), w9), true)
        UserGroup:AddLabel(xe("Executor", w0 .. "  " .. xi, w_), true)
        UserGroup:AddDivider()
        Label5 = UserGroup:AddLabel(xe("Session", w4(), w6), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                Av(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                Av("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local DiscordGroup = Au.Info:AddRightGroupbox("Discord", "message-circle")
        DiscordGroup:AddDiscordBox(nil, {
            Banner = 95892854151512,
            Avatar = 132608042600488,
            Title = "Ouroboros Hub",
            Subtitle = "Dupes, keyless scripts and updates",
            Status = "online",
            Accent = Color3.fromRGB(88, 101, 242),
            Link = Ax,
            Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
        })
        local SessionGroup = Au.Info:AddRightGroupbox("Session", "signal")
        Label4 = SessionGroup:AddLabel(xe("Game", AB, w_), true)
        Label3 = SessionGroup:AddLabel(xe("Players", tostring(#Players:GetPlayers()), w9), true)
        local JobId = game.JobId
        local xi_1 = #JobId > 12 and JobId:sub(1, 12) .. "..."
        xd = xi_1 or JobId
        local xi_2 = xd ~= "" and xd or "N/A"
        Label2 = SessionGroup:AddLabel(xe("Job", xi_2, w1), true)
        Label = SessionGroup:AddLabel(xe("Ping", "...", w6), true)
        SessionGroup:AddButton({
            Text = "Rejoin Place",
            Func = function()
                pcall(function()
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                end)
            end
        })
        SessionGroup:AddButton({
            Text = "Copy Job ID",
            Func = function()
                Av(game.JobId, "Copied Job ID")
            end
        })
        local SocialsGroup = Au.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({
            Text = "Copy Discord Invite",
            Func = function()
                Av(Ax, "Copied Discord invite")
            end
        })
        SocialsGroup:AddButton({
            Text = "Copy Rscripts Link",
            Func = function()
                Av(AA, "Copied Rscripts link")
            end
        })
        SocialsGroup:AddButton({
            Text = "Copy Website Link",
            Func = function()
                Av(At, "Copied website link")
            end
        })
        w3 = task.spawn(function()
            local wZ = false
            repeat
                local wU
                local wV = not Library.Unloaded and qz()
                if wV then
                    Label5:SetText(xe("Session", w4(), w6))
                    Label3:SetText(xe("Players", tostring(#Players:GetPlayers()), w9))
                    wU = 0
                    pcall(function()
                        wU = math.floor(LocalPlayer:GetNetworkPing() * 1000)
                    end)
                    Label:SetText(xe("Ping", tostring(wU) .. "ms", w6))
                    Label4:SetText(xe("Game", AB, w_))
                    local wW = xd ~= "" and xd or "N/A"
                    Label2:SetText(xe("Job", wW, w1))
                    task.wait(1)
                else
                    wZ = true
                end
            until wZ
        end)
        q0.Track(function()
            pcall(task.cancel, w3)
        end)
    end
    AD_1()
    local function AC_1()
        local ju
        local FarmGroup = Au.Main:AddLeftGroupbox("Farm", "swords")
        local Label6 = FarmGroup:AddLabel(State.WinStatus, true)
        local Label5 = FarmGroup:AddLabel(State.SwordStatus, true)
        FarmGroup:AddDivider()
        FarmGroup:AddToggle("AutoBestWin", {
            Text = "Auto Best Win",
            Default = false,
            Callback = function(iw)
                qT.SetEnabled(iw)
            end
        })
        FarmGroup:AddToggle("AutoBuyBestSword", {
            Text = "Auto Buy Best Affordable Sword",
            Default = false,
            Callback = function(iA)
                qH.SetEnabled(iA)
            end
        })
        local ProgressGroup = Au.Main:AddLeftGroupbox("Progress", "trending-up")
        local Label4 = ProgressGroup:AddLabel(State.RebirthStatus, true)
        local Label3 = ProgressGroup:AddLabel(State.TrailStatus, true)
        local Label2 = ProgressGroup:AddLabel(State.AuraStatus, true)
        ProgressGroup:AddDivider()
        ProgressGroup:AddToggle("AutoRebirth", {
            Text = "Auto Rebirth",
            Default = false,
            Callback = function(iI)
                qK.SetEnabled(iI)
            end
        })
        ProgressGroup:AddToggle("AutoBuyTrails", {
            Text = "Auto Buy Trails",
            Default = false,
            Callback = function(iM)
                qW.SetEnabled(iM)
            end
        })
        ProgressGroup:AddToggle("AutoBuyAuras", {
            Text = "Auto Spin Auras",
            Default = false,
            Callback = function(iQ)
                qQ.SetEnabled(iQ)
            end
        })
        local iW = rh()
        ProgressGroup:AddDropdown("AuraStopAt", {
            Text = "Stop At Aura",
            Values = iW,
            Default = iW[1],
            Multi = false,
            AllowNull = false,
            Callback = function(iX)
                qQ.SetStopAt(iX)
            end
        })
        qQ.OnStop = function()
            if Toggles.AutoBuyAuras then
                Toggles.AutoBuyAuras:SetValue(false)
            end
        end
        local TrainingGroup = Au.Main:AddRightGroupbox("Training", "dumbbell")
        local Label = TrainingGroup:AddLabel(State.TrainStatus, true)
        TrainingGroup:AddDivider()
        TrainingGroup:AddToggle("AutoTrain", {
            Text = "Auto Train",
            Default = false,
            Callback = function(i2)
                qF.SetEnabled(i2)
            end
        })
        local i8 = qu()
        TrainingGroup:AddDropdown("TrainSelect", {
            Text = "Train Target",
            Values = i8,
            Default = i8[1],
            Multi = false,
            AllowNull = false,
            Callback = function(i9)
                qF.SetSelection(i9)
            end
        })
        ju = task.spawn(function()
            while true do
                local xs = not Library.Unloaded and qz()
                if xs then
                    pcall(function()
                        Label6:SetText(State.WinStatus)
                        Label5:SetText(State.SwordStatus)
                        Label4:SetText(State.RebirthStatus)
                        Label3:SetText(State.TrailStatus)
                        Label2:SetText(State.AuraStatus)
                        Label:SetText(State.TrainStatus)
                    end)
                    task.wait(0.2)
                    continue
                end
                break
            end
        end)
        q0.Track(function()
            pcall(task.cancel, ju)
        end)
    end
    AC_1()
    local function AC_2()
        local jy
        jy = {
            [1] = false,
            [2] = 16,
            [3] = nil,
            [4] = false,
            [5] = 50,
            [6] = nil,
            [7] = nil,
            [8] = nil,
            [9] = false,
            [10] = nil,
            [11] = false,
            [12] = nil,
            [13] = false,
            [14] = nil
        }
        local function jz()
            return qP()
        end
        local function jD()
            local xu = jz()
            if not xu then
                return
            end
            if jy[3] == nil then
                jy[3] = xu.WalkSpeed
            end
            if jy[1] then
                xu.WalkSpeed = jy[2]
            elseif jy[3] then
                xu.WalkSpeed = jy[3]
            end
        end
        local function jH()
            if jy[8] then
                jy[8]:Disconnect()
                jy[8] = nil
            end
            if jy[6] then
                jy[6]:Destroy()
                jy[6] = nil
            end
            if jy[7] then
                jy[7]:Destroy()
                jy[7] = nil
            end
        end
        local function jJ()
            local xG, xH, bodyGyro, bodyVelocity
            jH()
            xH = q7()
            xG = jz()
            local xK = not xG
            local xL = not xH
            local xP = if xL then 1 else 0
            local xN = 3398 * xP + 886 * (1 - xP)
            local xO = 270 * xP + 3962 * (1 - xP)
            if not ((xN * 3557 + xO * 457 + xN * xO) % 16777213 == 13127536) then
                xL = xK
            end
            if xL then
                return
            end
            bodyVelocity = Instance.new("BodyVelocity")
            bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
            bodyVelocity.Velocity = Vector3.zero
            bodyVelocity.Parent = xH
            bodyGyro = Instance.new("BodyGyro")
            bodyGyro.MaxTorque = Vector3.new(100000, 100000, 100000)
            bodyGyro.P = 10000
            bodyGyro.Parent = xH
            jy[6] = bodyVelocity
            jy[7] = bodyGyro
            jy[8] = RunService.RenderStepped:Connect(function()
                if not jy[4] or q0.Unloaded then
                    return
                end
                xH = q7()
                xG = jz()
                if not xH or not xG or not bodyVelocity.Parent or not bodyGyro.Parent then
                    return
                end
                local CurrentCamera = qB.CurrentCamera
                if not CurrentCamera then
                    return
                end
                local xB = Vector3.zero
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    xB += CurrentCamera.CFrame.LookVector
                end
                local xF = if UserInputService:IsKeyDown(Enum.KeyCode.S) then 1 else 0
                if xF == 1 then
                    xB -= CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                    xB -= CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    xB += CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    xB += Vector3.yAxis
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                    xB -= Vector3.yAxis
                end
                if xB.Magnitude > 0 then
                    xB = xB.Unit * jy[5]
                end
                bodyVelocity.Velocity = xB
                bodyGyro.CFrame = CurrentCamera.CFrame
            end)
        end
        local MovementGroup = Au.Player:AddLeftGroupbox("Movement", "person-standing")
        MovementGroup:AddToggle("WalkSpeedEnabled", {
            Text = "WalkSpeed",
            Default = false,
            Callback = function(ke)
                jy[1] = ke
                jD()
            end
        })
        MovementGroup:AddSlider("WalkSpeed", {
            Text = "Speed",
            Default = 16,
            Min = 16,
            Max = 200,
            Rounding = 0,
            Callback = function(kh)
                jy[2] = kh
                if jy[1] then
                    jD()
                end
            end
        })
        MovementGroup:AddToggle("Fly", {
            Text = "Fly",
            Default = false,
            Callback = function(kk)
                jy[4] = kk
                if kk then
                    jJ()
                else
                    jH()
                end
            end
        })
        MovementGroup:AddSlider("FlySpeed", {
            Text = "Fly Speed",
            Default = 50,
            Min = 10,
            Max = 250,
            Rounding = 0,
            Callback = function(ko)
                jy[5] = ko
            end
        })
        MovementGroup:AddToggle("InfJump", {
            Text = "Infinite Jump",
            Default = false,
            Callback = function(kq)
                jy[11] = kq
                if jy[12] then
                    jy[12]:Disconnect()
                    jy[12] = nil
                end
                if kq then
                    jy[12] = UserInputService.JumpRequest:Connect(function()
                        local xY = jz()
                        if xY then
                            xY:ChangeState(Enum.HumanoidStateType.Jumping)
                        end
                    end)
                end
            end
        })
        MovementGroup:AddToggle("NoClip", {
            Text = "Noclip",
            Default = false,
            Callback = function(kx)
                jy[9] = kx
                if jy[10] then
                    jy[10]:Disconnect()
                    jy[10] = nil
                end
                if kx then
                    jy[10] = RunService.Stepped:Connect(function()
                        local Character = LocalPlayer.Character
                        if not Character then
                            return
                        end
                        for i, descendant in ipairs(Character:GetDescendants()) do
                            if descendant:IsA("BasePart") then
                                descendant.CanCollide = false
                            end
                        end
                    end)
                end
            end
        })
        MovementGroup:AddToggle("InstantProximityPrompt", {
            Text = "Instant ProximityPrompt",
            Default = false,
            Callback = function(kG)
                jy[13] = kG
                if jy[14] then
                    jy[14]:Disconnect()
                    jy[14] = nil
                end
                if kG then
                    local function onDescendantAdded(kJ)
                        if kJ:IsA("ProximityPrompt") then
                            kJ.HoldDuration = 0
                        end
                    end
                    for i, descendant in ipairs(rg:GetDescendants()) do
                        onDescendantAdded(descendant)
                    end
                    jy[14] = rg.DescendantAdded:Connect(onDescendantAdded)
                end
            end
        })
        q0.Track(function()
            jH()
            if jy[10] then
                jy[10]:Disconnect()
            end
            if jy[12] then
                jy[12]:Disconnect()
            end
            if jy[14] then
                jy[14]:Disconnect()
            end
            jy[1] = false
            jD()
        end)
        LocalPlayer.CharacterAdded:Connect(function()
            task.wait(0.5)
            local yp = not qz()
            local yt = if yp then 1 else 0
            local yr = 1978 * yt + 43 * (1 - yt)
            local ys = 4014 * yt + 1378 * (1 - yt)
            if not ((yr * 1340 + ys * 3636 + yr * ys) % 16777213 == 8407903) then
                yp = Library.Unloaded
            end
            if yp then
                return
            end
            jy[3] = nil
            if jy[1] then
                jD()
            end
            if jy[4] then
                jJ()
            end
        end)
    end
    AC_2()
    local function AC_3()
        local zu
        local zr
        zr = nil
        zu = nil
        local Label, zq, zs, zt, zv, zw, zx, zy, zz, zA
        zt = {}
        zq = {}
        zy = nil
        zA = 0
        zu = 0
        zr = false
        local MenuGroup = Au.Settings:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        zs = function()
            local CurrentCamera
            CurrentCamera = qB.CurrentCamera
            local yv = not CurrentCamera or not qI(VirtualUser.CaptureController) or not qI(VirtualUser.ClickButton2)
            if yv then
                return false
            end
            local yv_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not yv_1 then
                return false
            end
            zA += 1
            pcall(function()
                Label:SetText("AFK triggers: " .. zA)
            end)
            return true
        end
        zz = function(lr)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not lr)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not lr
                end
            end)
            if not lr then
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
        zw = function(lH)
            if lH.ClassName == "ParticleEmitter" or lH.ClassName == "Trail" or lH.ClassName == "Smoke" or lH.ClassName == "Fire" or lH.ClassName == "Sparkles" or lH.ClassName == "Explosion" or lH.ClassName == "Beam" then
                if zt[lH] == nil then
                    zt[lH] = lH.Enabled
                end
                pcall(function()
                    lH.Enabled = false
                end)
            end
        end
        zv = function()
            for k, v in pairs(zt) do
                local yK = k
                local yM = v
                if yK.Parent then
                    pcall(function()
                        yK.Enabled = yM
                    end)
                end
            end
            table.clear(zt)
            if zy then
                pcall(function()
                    settings().Rendering.QualityLevel = zy.Quality
                end)
                Lighting.GlobalShadows = zy.Shadows
                Lighting.FogEnd = zy.Fog
                zy = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(lW)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not lW)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(l0)
                if l0 then
                    if not zy then
                        zy = {
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
                    for k, v in rg:QueryDescendants("ParticleEmitter,Trail,Smoke,Fire,Sparkles,Beam") do
                        pcall(zw, v)
                    end
                else
                    zv()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        zz(true)
        local ScriptGroup = Au.Settings:AddLeftGroupbox("Script", "scroll-text")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            zz(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            zz(true)
        end
        table.insert(zq, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                zs()
            end
        end))
        table.insert(zq, rg.DescendantAdded:Connect(function(mk)
            if Toggles.FpsBoost.Value then
                zw(mk)
            end
        end))
        zx = function(mo)
            local y2 = zr
            local y7 = if y2 then 1 else 0
            local y5 = 135 * y7 + 4009 * (1 - y7)
            local y6 = 1950 * y7 + 3063 * (1 - y7)
            if not ((y5 * 1893 + y6 * 1478 + y5 * y6) % 16777213 == 3400905) then
                y2 = Library.Unloaded
            end
            if not y2 then
                y2 = not Toggles.AutoReconnect.Value
            end
            if y2 then
                return
            end
            zr = true
            local y1 = zu
            local y2_1 = pcall(function()
                if mo then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not y2_1 then
                zr = false
                if not mo and y1 == zu then
                    task.delay(1.5, function()
                        if y1 == zu then
                            zx(true)
                        end
                    end)
                end
            end
        end
        table.insert(zq, TeleportService.TeleportInitFailed:Connect(function(mG)
            if mG == LocalPlayer and zr then
                zr = false
                zx(true)
            end
        end))
        table.insert(zq, LocalPlayer.OnTeleport:Connect(function()
            zr = false
            zu += 1
        end))
        table.insert(zq, GuiService.ErrorMessageChanged:Connect(function()
            if Toggles.AutoReconnect.Value and not Library.Unloaded then
                zx(false)
            end
        end))
        q0.Track(function()
            for i, v in ipairs(zq) do
                local zo = v
                pcall(function()
                    zo:Disconnect()
                end)
            end
            zv()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
            zz(false)
        end)
    end
    AC_3()
    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder("MyScriptHub")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    ThemeManager:ApplyToTab(Au.Settings)
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    SaveManager:SetFolder("OuroborosHub/SwordVsAnime")
    local AC_4 = SaveManager:BuildConfigSection(Au.Settings)
    Ar = function(m0, m1)
        local zE = m0 == "Toggle" and Toggles
        local zJ = if zE then 1 else 0
        local zH = 2735 * zJ + 3625 * (1 - zJ)
        local zI = 3220 * zJ + 1878 * (1 - zJ)
        if not ((zH * 814 + zI * 881 + zH * zI) % 16777213 == 13869810) then
            zE = Options
        end
        local zE_1 = zE[m1]
        local zD_2 = type(zE_1) == "table" and zE_1.Type == m0
        local zD_3 = zD_2 and zE_1
        local zJ_1 = if zD_3 then 1 else 0
        local zH_1 = 445 * zJ_1 + 3651 * (1 - zJ_1)
        local zI_1 = 3950 * zJ_1 + 453 * (1 - zJ_1)
        if not ((zH_1 * 634 + zI_1 * 1328 + zH_1 * zI_1) % 16777213 == 7285480) then
            zD_3 = nil
        end
        return zD_3
    end
    Aq = function(m8, m9)
        local Type = m9.Type
        if Type == "Toggle" then
            return { idx = m8, type = "Toggle", value = m9.Value == true }
        elseif Type == "Slider" then
            return { idx = m8, type = "Slider", value = tostring(m9.Value) }
        elseif Type == "Dropdown" then
            return { idx = m8, type = "Dropdown", multi = m9.Multi == true, value = m9.Value }
        elseif Type == "Input" then
            local zL_1 = m9.Value or ""
            return { idx = m8, type = "Input", text = tostring(zL_1) }
        elseif Type == "ColorPicker" then
            return { idx = m8, type = "ColorPicker", value = m9.Value:ToHex(), transparency = m9.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = m8,
                type = "KeyPicker",
                key = m9.Value,
                mode = m9.Mode,
                syncToggleState = m9.SyncToggleState or nil
            }
        else
            return nil
        end
    end
    Aw = function(nc)
        local zO = type(nc) ~= "table" or type(nc.idx) ~= "string" or type(nc.type) ~= "string"
        if zO then
            return false
        end
        local zO_1 = Ar(nc.type, nc.idx)
        if not zO_1 then
            return false
        end
        local zP = nc.type == "Toggle" and type(nc.value) == "boolean"
        if zP then
            zO_1:SetValue(nc.value)
            return true
        elseif nc.type == "Slider" then
            local zP_1 = tonumber(nc.value)
            if zP_1 then
                zO_1:SetValue(zP_1)
                return true
            end
            return false
        elseif nc.type == "Dropdown" then
            zO_1:SetValue(nc.value)
            return true
        else
            local zP_2 = nc.type == "Input" and type(nc.text) == "string"
            if zP_2 then
                zO_1:SetValue(nc.text)
                return true
            end
            local zP_3 = nc.type == "ColorPicker" and type(nc.value) == "string"
            if zP_3 then
                zO_1:SetValueRGB(Color3.fromHex(nc.value))
                if type(nc.transparency) == "number" then
                    zO_1:SetTransparency(nc.transparency)
                end
                return true
            end
            local zP_4 = nc.type == "KeyPicker" and type(nc.key) == "string"
            if zP_4 then
                local key = nc.key
                local zQ = nc.mode or "Toggle"
                zO_1:SetValue({ key, zQ })
                return true
            end
            return false
        end
    end
    AC_4:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Default = "", Finished = true, AllowEmpty = true })
    AC_4:AddButton({
        Text = "Export Config to Clipboard",
        Func = function()
            local z__2
            local zZ_4
            local zY = {}
            for k, v in pairs(Toggles) do
                if k ~= "MenuKeybind" then
                    local zZ_1 = Aq(k, v)
                    if zZ_1 then
                        table.insert(zY, zZ_1)
                    end
                end
            end
            for k, v in pairs(Options) do
                if k ~= "MenuKeybind" and k ~= "SaveManager_ImportSource" then
                    local zZ_3 = Aq(k, v)
                    if zZ_3 then
                        table.insert(zY, zZ_3)
                    end
                end
            end
            table.sort(zY, function(ns, nt)
                return ns.idx < nt.idx
            end)
            zZ_4, z__2 = pcall(HttpService.JSONEncode, HttpService, { objects = zY })
            if not zZ_4 then
                Library:Notify("Failed to encode config")
                return
            end
            Av(z__2, "Copied config to clipboard")
        end
    })
    AC_4:AddButton({
        Text = "Import Config from Clipboard Text",
        Func = function()
            local Af_1
            local Ae = Options.SaveManager_ImportSource and Options.SaveManager_ImportSource.Value or ""
            local Ae_1
            if Ae == "" then
                Library:Notify("Paste a config first")
                return
            end
            Ae_1, Af_1 = pcall(HttpService.JSONDecode, HttpService, Ae)
            local Ad_2 = not Ae_1 or type(Af_1) ~= "table" or type(Af_1.objects) ~= "table"
            if Ad_2 then
                Library:Notify("Invalid config JSON")
                return
            end
            local Ad_3 = 0
            for i, v in ipairs(Af_1.objects) do
                if Aw(v) then
                    Ad_3 += 1
                end
            end
            Library:Notify("Imported " .. tostring(Ad_3) .. " settings")
        end
    })
    SaveManager:LoadAutoloadConfig()
    if Toggles.HideUiOnStart and Toggles.HideUiOnStart.Value then
        pcall(function()
            Library:Toggle(false)
        end)
    end
    if Options.TrainSelect then
        qF.SetSelection(Options.TrainSelect.Value)
    end
    if Options.AuraStopAt then
        qQ.SetStopAt(Options.AuraStopAt.Value)
    end
end)
if not ro_2 then
    local rk_4 = 5
    repeat
        if rk_4 * 111919171 + 13 + 7 >= rk_4 * 111919171 + 13 + 7 + 1 then
            pcall(rp_2.Unload)
            error(q0, 0)
        else
            pcall(q0.Unload)
            error(rp_2, 0)
        end
        rk_4 = (rk_4 + 4) % 8
    until (rk_4 * 1 + 1) % 8 == 2
end
