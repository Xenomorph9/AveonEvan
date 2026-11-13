local sm
local r3
local ss
local r9
local Workspace
local sy
local sf
local sX
local rX
local State
local sl
local r2
local sK
local r8
local sx
local se
local rW
local sD
local sk
local s1
local r1
local sq
local r7
local sP
local sw
local sd
local sV
local sC
local sj
local s0
local r0
local sI
local r6
local sO
local sU
local sB
local si
local r_
local so
local r5
local sN
local su
local sb
local sA
local sh
local sZ
local rZ
local sG
local sn
local r4
local LocalPlayer
local st
local sa
local sS
local sz
local sg
local sY
local rY
local function fn41(O)
    return type(O) == "function"
end
local function fn69()
    local uU = tonumber(sX.TAPS_PER_SECOND) or 4
    local uU_1 = tonumber(sX.BURST_ALLOWANCE) or 3
    local uU_2 = os.clock()
    State.TapTokens = math.min(uU + uU_1, State.TapTokens + (uU_2 - State.LastTap) * uU)
    State.LastTap = uU_2
    if State.TapTokens < 1 then
        return false
    end
    State.TapTokens = State.TapTokens - 1
    r6.Tap:FireServer()
    return true
end
local function worker6()
    while not sD.Unloaded do
        if State.Enabled.BestPets then
            pcall(function()
                r6.RequestPetAction:InvokeServer("EquipBest", nil)
            end)
        end
        if State.Enabled.BestItems then
            pcall(function()
                r6.RequestItemAction:InvokeServer("EquipBest", nil)
            end)
        end
        if State.Enabled.BestPets or State.Enabled.BestItems then
            task.wait(2)
        else
            task.wait(0.5)
        end
    end
end
local function fn76()
    local xa = r5()
    local max = math.max
    local floor = math.floor
    local xd = (tonumber(xa.Wins))
    local xn = if xd then 1 else 0
    local xl = 3819 * xn + 627 * (1 - xn)
    local xm = 449 * xn + 1386 * (1 - xn)
    if not ((xl * 2098 + xm * 875 + xl * xm) % 16777213 == 10119868) then
        xd = 0
    end
    local xe = max(0, floor(xd))
    local xb_1 = type(xa.OwnedAuras) == "table" and xa.OwnedAuras
    local xd_1 = xb_1 or {}
    local EquippedAura = xa.EquippedAura
    local Id2 = nil
    local xa_1 = -1
    local Id
    local xg = -1
    for k, v in sP.GetOrdered() do
        local xh = type(v) == "table" and v.Hidden ~= true and type(v.Id) == "string"
        if xh then
            local xh_1 = tonumber(v.Cost) or 0
            local xh_2 = tonumber(v.Multiplier) or 1
            if xd_1[v.Id] == true then
                if xh_2 > xa_1 then
                    xa_1 = xh_2
                    Id2 = v.Id
                end
            else
                if xh_1 > 0 and xe >= xh_1 and xh_2 > xg then
                    xg = xh_2
                    Id = v.Id
                end
            end
        end
    end
    if Id then
        return Id
    end
    if Id2 and Id2 ~= EquippedAura then
        return Id2
    end
end
local function fn91(c0)
    local vw = c0:FindFirstChild("HumanoidRootPart") or c0.PrimaryPart or sf(c0)
    return vw
end
local function fn127()
    return State.Enabled.Farm == true and not sD.Unloaded
end
local function fn153()
    local wT = r5()
    local max = math.max
    local floor = math.floor
    local wW = tonumber(wT.Wins) or 0
    local wX = max(0, floor(wW))
    local wU_1 = type(wT.OwnedDinos) == "table" and wT.OwnedDinos
    local wW_1 = wU_1 or {}
    local Dino = wT.Dino
    local Name2 = nil
    local wT_1 = -1
    local Name
    for k, v in r7() do
        if wW_1[v.Name] == true then
            if v.Gain > wT_1 then
                wT_1 = v.Gain
                Name2 = v.Name
            end
        else
            local wZ = not Name
            if wZ ~= false then
                wZ = v.Cost <= wX
            end
            if wZ then
                Name = v.Name
            end
        end
    end
    if Name then
        return Name
    end
    if Name2 and Name2 ~= Dino then
        return Name2
    end
end
local function fn186(c4)
    local vy = os.clock()
    local vz = false
    sq(c4)
    while true do
        local vA = not sD.Unloaded and sG() and os.clock() - vy < 45
        if not vA then
            local vA_1 = vz and sI(c4) and #r0(c4) == 0
            return vA_1
        end
        sq(c4)
        local vA_2 = r0(c4)
        if #vA_2 > 0 then
            vz = true
            for k, v in vA_2 do
                local vA_3 = sD.Unloaded or not sG()
                if vA_3 then
                    return false
                end
                local vA_4 = sY(v)
                if vA_4 then
                    r2(vA_4)
                end
                sN()
            end
            task.wait(0.12)
            continue
        end
        local vA_5 = vz and sI(c4)
        if vA_5 then
            break
        end
        sw(c4)
        local vA_6 = not vz
        local vB = os.clock() - vy > 10 and vA_6
        if vB then
            return false
        end
        sN()
        task.wait(0.2)
    end
    return true
end
local function fn189(ht)
    if sC[ht] then
        State.EggLabel = ht
    end
end
local function fn207(cP)
    local vs = r9(cP)
    local vt = vs and vs.Model
    if not vt then
        return
    end
    local vt_1 = sS.Owns(LocalPlayer, sS.WINS_KEY) and "WinPadRobux"
    local vu = vt_1 or "WinPad"
    local vu_1 = vt:FindFirstChild(vu) or vt:FindFirstChild("WinPad") or vt:FindFirstChild("WinPadRobux")
    return vu_1, sf(vu_1)
end
local function fn208(dq)
    local vM = not sI(dq) or #r0(dq) > 0
    if vM then
        return false
    end
    local vM_1 = r5()
    local max2 = math.max
    local floor2 = math.floor
    local vO_4
    local vP = tonumber(vM_1.Wins) or 0
    local vP_2
    local vM_2 = max2(0, floor2(vP))
    local vN_1 = os.clock() + 6
    while true do
        local vO_1 = not sD.Unloaded and sG() and os.clock() < vN_1
        if not vO_1 then
            local max = math.max
            local floor = math.floor
            local vP_1 = tonumber(r5().Wins) or 0
            return max(0, floor(vP_1)) > vM_2
        end
        local vO_3 = not sI(dq) or #r0(dq) > 0
        if vO_3 then
            return false
        end
        vO_4, vP_2 = sl(dq)
        if vP_2 then
            r2(vP_2)
        end
        local max = math.max
        local floor = math.floor
        local vQ = tonumber(r5().Wins) or 0
        local vR = max(0, floor(vQ))
        if vR > vM_2 then
            break
        end
        task.wait(0.2)
    end
    return true
end
local function fn249()
    local Character = LocalPlayer.Character
    local uh = Character and Character:FindFirstChildOfClass("Humanoid")
    local ui = Character
    if ui then
        ui = Character:FindFirstChild("HumanoidRootPart")
    end
    local uh_1 = Character
    local uk = ui
    if uh_1 then
        uh_1 = uh
    end
    if uh_1 then
        uh_1 = uk
    end
    if uh_1 then
        uh_1 = uh.Health > 0
    end
    if uh_1 then
        return Character, uh, uk
    end
end
local function fn255(aP, aQ)
    if aP.Order ~= aQ.Order then
        return aP.Order < aQ.Order
    end
    return aP.Name < aQ.Name
end
local function fn298(b4)
    return s0.CheckpointByStage(b4)
end
local function fn349(cx)
    local vg = {}
    local Enemies = Workspace:FindFirstChild("Enemies")
    if not Enemies then
        return vg
    end
    for i, child in Enemies:GetChildren() do
        local vh_1 = child:IsA("Model") and child:GetAttribute("Owner") == LocalPlayer.UserId and child:GetAttribute("Zone") == cx and child:GetAttribute("State") ~= "Dead"
        if vh_1 then
            table.insert(vg, child)
        end
    end
    return vg
end
local function fn378(bZ)
    local u0 = os.clock()
    if State.LastFightTarget == bZ and u0 - State.LastFightAt < 0.5 then
        return
    end
    State.LastFightTarget = bZ
    State.LastFightAt = u0
    r6.AutoFightTarget:FireServer(bZ)
end
local function fn380()
    local wk = {}
    for k, v in rY.Dinos do
        local wl = type(k) == "string" and type(v) == "table" and v.Cost ~= nil and v.Product == nil
        if wl then
            local insert = table.insert
            local wm = tonumber(v.Order) or 999
            insert(wk, { Name = k, Order = wm, Gain = sn(k, r5()), Cost = sd(k) })
        end
    end
    table.sort(wk, function(eQ, eR)
        if eQ.Gain ~= eR.Gain then
            return eQ.Gain > eR.Gain
        end
        return eQ.Order > eR.Order
    end)
    return wk
end
local function fn390(cr)
    local ve = sO(cr)
    if ve then
        sV(ve)
        sz(ve)
    end
end
local function fn399(eF)
    local wh = tonumber(sX.GetDinoCost(eF)) or 0
    return wh
end
local function fn406()
    return { Stages = sx, Train = rZ, Eggs = sy, HatchAmounts = r8 }
end
local function fn409(d8)
    if not d8 then
        return
    end
    local v4 = r_(d8.Name)
    if not v4 then
        return
    end
    local PracticeDummy = v4:FindFirstChild("PracticeDummy")
    if PracticeDummy then
        local v6 = (sf(PracticeDummy))
        local wa = if v6 then 1 else 0
        local v8 = 55 * wa + 164 * (1 - wa)
        local v9 = 2457 * wa + 684 * (1 - wa)
        if not ((v8 * 2925 + v9 * 2017 + v8 * v9) % 16777213 == 5251779) then
            v6 = sf(v4)
        end
        return v6
    end
    return sf(v4)
end
local function fn421(eT)
    local wv_1
    local wu_1
    wu_1, wv_1 = pcall(s0.Containers, "Stands")
    local ww = not wu_1 or type(wv_1) ~= "table"
    if ww then
        return
    end
    for k, v in wv_1 do
        if typeof(v) == "Instance" then
            for i, child in v:GetChildren() do
                if child:GetAttribute("Dino") == eT then
                    local Pad = child:FindFirstChild("Pad")
                    local wv_2 = Pad and Pad:IsA("BasePart")
                    if wv_2 then
                        return Pad, Pad:FindFirstChildWhichIsA("ProximityPrompt")
                    end
                end
            end
        end
    end
end
local function fn432(hj)
    local yi = su[hj] or tonumber(string.match(tostring(hj), "%d+"))
    local yj = yi
    if yi then
        yi = yj >= 1
    end
    if yi then
        yi = yj <= sB
    end
    if yi then
        State.Stage = yj
    end
end
local function worker()
    while not sD.Unloaded do
        local vX = State.Enabled.Click or sG()
        if vX then
            sN()
            task.wait(0.08)
        else
            task.wait(0.2)
        end
    end
end
local function fn477()
    local ue = r4.get()
    if type(ue) == "table" then
        return ue
    end
    return {}
end
local function fn479()
    for k, v in { st, ss, so, sm, sk, sh, se, sa } do
        pcall(task.cancel, v)
    end
end
local function fn482(bE)
    if not bE then
        return nil
    elseif bE:IsA("BasePart") then
        return bE
    else
        local uN = bE:FindFirstChild("TouchPart") or bE:FindFirstChild("Touch") or bE:FindFirstChild("HitPart") or bE:FindFirstChild("Pad")
        local uO = uN
        if uN then
            uN = uO:IsA("BasePart")
        end
        if uN then
            return uO
        end
        return bE:FindFirstChildWhichIsA("BasePart", true)
    end
end
local function fn487(dX)
    local TrainingArea = Workspace:FindFirstChild("TrainingArea")
    local v1 = TrainingArea and TrainingArea:FindFirstChild(dX)
    if v1 then
        return v1
    end
    local World2 = Workspace:FindFirstChild("World2")
    local v1_1 = World2
    if v1_1 then
        local v2 = World2:FindFirstChild("TrainingAreas") or World2:FindFirstChild("TrainingArea")
        v1_1 = v2
    end
    local v0_3 = v1_1
    if v1_1 then
        v1_1 = v0_3:FindFirstChild(dX)
    end
    return v1_1
end
local function fn505(eB, eC)
    local wf = tonumber(sX.GetDinoGain(eB, eC)) or 0
    return wf
end
local function fn521(hw)
    local yq = tonumber(hw)
    if yq and yq >= 1 then
        State.HatchAmount = math.floor(yq)
    end
end
local function fn562()
    while not sD.Unloaded do
        local wb = State.Enabled.Train and not sG()
        if wb then
            local wb_1 = r1[State.TrainLabel]
            if si(wb_1) then
                local wc_1 = sA(wb_1)
                if wc_1 then
                    r2(wc_1)
                    sN()
                end
            end
            local wait = task.wait
            local wc_2 = sX.TRAINING_INTERVAL or 0.3
            wait(wc_2)
        else
            task.wait(0.3)
        end
    end
end
local function fn572(cl)
    local vc = r3(cl)
    if not vc then
        return false
    end
    sV(vc)
    return sz(vc)
end
local function worker3()
    while not sD.Unloaded do
        if State.Enabled.Rebirth then
            if sX.CanRebirth(r5(), sU.LevelScale(LocalPlayer)) then
                pcall(function()
                    r6.RequestRebirth:InvokeServer()
                end)
                task.wait(1.4)
            else
                task.wait(0.5)
            end
        else
            task.wait(0.4)
        end
    end
end
local function fn639(gc)
    local xN_1
    local xJ_1
    local xL_1, xL_2
    local xK_1, xK_3
    xJ_1, xK_1, xL_1 = rX()
    local xK_2 = xL_1 and xL_1.Position or Vector3.zero
    xK_3, xL_2 = pcall(s0.Containers, "Eggs")
    local xM = not xK_3 or type(xL_2) ~= "table"
    if xM then
        return
    end
    local xK_4 = nil
    local xM_1 = math.huge
    for k, v in xL_2 do
        if typeof(v) == "Instance" then
            local xL_3 = v:FindFirstChild(gc)
            local xO = xL_3 and xL_3:IsA("BasePart")
            local BasePart
            if xO then
                xN_1 = xL_3
            else
                if xL_3 then
                    BasePart = xL_3:FindFirstChildWhichIsA("BasePart", true)
                else
                    BasePart = nil
                end
                xN_1 = BasePart
            end
            local xL_4 = xN_1
            if xL_4 then
                local Magnitude = (xL_4.Position - xK_2).Magnitude
                if Magnitude < xM_1 then
                    xM_1 = Magnitude
                    xK_4 = xL_4
                end
            end
        end
    end
    return xK_4
end
local function fn655(cg)
    local va = rW.GetPreviousGate(cg)
    if va then
        return Vector3.new(va.X, va.Y + 4, va.Z)
    end
    return r3(cg)
end
local function fn681(aC, aD)
    if aC.Order ~= aD.Order then
        return aC.Order < aD.Order
    end
    return aC.Name < aD.Name
end
local function worker2()
    while not sD.Unloaded do
        if not sG() then
            if State.LastFightTarget ~= nil then
                sq(nil)
            end
            task.wait(0.3)
            continue
        end
        local vT = State.Stage
        if vT < 1 then
            vT = 1
        end
        if vT > sB then
            vT = sB
        end
        sw(vT)
        local vU = sD.Unloaded or not sG()
        if vU then
            continue
        end
        local vU_1 = sK(vT)
        local vV = sD.Unloaded or not sG()
        if vV then
            continue
        end
        if vU_1 then
            sZ(vT)
        end
        local vU_2 = sD.Unloaded or not sG()
        if vU_2 then
            continue
        end
        sg(vT)
        task.wait(0.45)
    end
end
local function fn712(a9)
    local uu = {}
    if type(a9) == "table" then
        for k, v in a9 do
            local uv = tonumber(v)
            if uv then
                uu[uv] = true
            end
        end
    end
    return uu
end
local function fn771(hq)
    if r1[hq] then
        State.TrainLabel = hq
    end
end
local function fn807(cG)
    if State.Opened[cG] == true or State.Cleared[cG] == true then
        return true
    end
    local vp_1 = r9(cG)
    local vq = vp_1 and vp_1.Block
    local vp_2 = vq
    if vq then
        vq = vp_2:IsA("BasePart")
    end
    if vq then
        vq = vp_2.CanCollide == false
    end
    if vq then
        return true
    end
    return false
end
local function fn853(hf, hg)
    State.Enabled[hf] = hg == true
    if hf == "Farm" and hg ~= true then
        sq(nil)
    end
end
local function fn895(b7)
    local u3 = rW.GetPreviousGate(b7)
    local u4 = rW.GetGatePosition(b7)
    if u3 and u4 then
        local u5_1 = u3:Lerp(u4, 0.5)
        return Vector3.new(u5_1.X, u5_1.Y + 4, u5_1.Z)
    end
    local u3_1 = r9(b7)
    if u3_1 and u3_1.Position then
        return Vector3.new(u3_1.Position.X, u3_1.Position.Y - 10, u3_1.Position.Z)
    end
end
local function fn907()
    while not sD.Unloaded do
        local w6 = State.Enabled.BuyDino and not sG()
        if w6 then
            local w6_1 = s1()
            if w6_1 then
                sb(w6_1)
                task.wait(0.8)
            else
                task.wait(0.8)
            end
        else
            task.wait(0.4)
        end
    end
end
local function fn909(dQ)
    if not dQ then
        return false
    end
    local vZ = false
    if type(dQ.Pass) == "string" then
        vZ = sS.Owns(LocalPlayer, dQ.Pass) == true
    end
    return sX.CanUseTraining(r5(), dQ.Name, vZ) == true
end
local function fn1014(L)
    local ua = typeof(cloneref) == "function" and typeof(L) == "Instance"
    if ua then
        return cloneref(L)
    end
    return L
end
local function fn1031(bJ)
    local uS_1
    local uR_1
    local uQ_1
    uR_1, uQ_1, uS_1 = rX()
    local uQ_2 = uS_1 and bJ and bJ:IsA("BasePart")
    if not uQ_2 then
        return false
    end
    sz(bJ.Position + Vector3.new(0, 3, 0))
    if sj then
        pcall(sj, bJ, uS_1, 1)
        pcall(sj, bJ, uS_1, 0)
    end
    return true
end
local function fn1039(bx)
    local uL_1
    local uK_1
    local uJ_1
    uJ_1, uL_1, uK_1 = rX()
    local uJ_2 = uK_1 and typeof(bx) == "Vector3"
    if not uJ_2 then
        return false
    end
    uK_1.CFrame = CFrame.new(bx)
    uK_1.AssemblyLinearVelocity = Vector3.zero
    if uL_1 then
        uL_1:ChangeState(Enum.HumanoidStateType.Running)
    end
    return true
end
local function fn1071(f5)
    local xy = type(f5.OwnedPets) == "table" and f5.OwnedPets
    local xA = xy or {}
    local xy_1 = 0
    for k, v in xA do
        local max = math.max
        local floor = math.floor
        local xB = tonumber(v) or 0
        xy_1 += max(0, floor(xB))
    end
    return xy_1
end
rW = nil
rX = nil
rY = nil
rZ = nil
r_ = nil
r0 = nil
r1 = nil
r2 = nil
r3 = nil
r4 = nil
r5 = nil
r6 = nil
r7 = nil
r8 = nil
r9 = nil
sa = nil
sb = nil
sd = nil
se = nil
sf = nil
sg = nil
sh = nil
si = nil
sj = nil
sk = nil
sl = nil
sm = nil
sn = nil
so = nil
sq = nil
ss = nil
st = nil
su = nil
sw = nil
sx = nil
sy = nil
sz = nil
sA = nil
sB = nil
sC = nil
sD = nil
State = nil
sG = nil
local Players, sc, sp, sr, sv, sF, sH
sI = nil
sK = nil
LocalPlayer = nil
sN = nil
sO = nil
sP = nil
Workspace = nil
sS = nil
sU = nil
sV = nil
sX = nil
sY = nil
sZ = nil
s0 = nil
s1 = nil
local sJ, sL, sQ, HttpService, RunService, s_
local s5_1, s5_5
Players, RunService, HttpService, Workspace, LocalPlayer, sD, s5_1, s_, sr = nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local s7 = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
HttpService = game:GetService("HttpService")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local function s3(k)
    local t3
    local t1
    local t2
    t1 = nil
    t2 = nil
    t3 = nil
    local t4 = k ~= ""
    local t5 = type(k) == "string" and t4
    assert(t5, "A namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    t1 = getgenv()
    assert(type(t1) == "table", "getgenv did not return a table")
    local t4_1 = t1[k]
    if t4_1 ~= nil then
        local t5_1 = type(t4_1) == "table" and type(t4_1.Unload) == "function"
        assert(t5_1, "Namespace is occupied")
        t4_1.Unload()
        assert(t1[k] == nil, "Previous instance did not release its namespace")
    end
    t2 = {}
    t3 = { State = {}, Unloaded = false }
    t3.Track = function(q)
        assert(type(q) == "function", "Cleanup must be callable")
        if t3.Unloaded then
            q()
        else
            table.insert(t2, q)
        end
        return q
    end
    t3.Unload = function()
        local tS_1
        local tR_1
        if t3.Unloaded then
            return
        end
        t3.Unloaded = true
        local tP = {}
        local tZ = #t2
        local tY = -1
        while false and tZ <= 1 or true and tZ >= 1 do
            local t_ = tZ
            local tQ_1 = table.remove(t2, t_)
            tR_1, tS_1 = pcall(tQ_1)
            if not tR_1 then
                table.insert(tP, tostring(tS_1))
            end
            tZ += tY
        end
        table.clear(t3.State)
        if #tP > 0 then
            error("Cleanup incomplete: " .. table.concat(tP, "; "), 0)
        end
        if t1[k] == t3 then
            t1[k] = nil
        end
    end
    t1[k] = t3
    return t3
end
s_ = function(D, E)
    local t8 = type(D) == "table" and type(D.Track) == "function"
    assert(t8, "FeatureAPI required")
    local t8_1 = type(E) == "table" and type(E.OnUnload) == "function"
    assert(t8_1, "UI library required")
    assert(type(E.Unload) == "function", "UI unload required")
    D.Track(function()
        if not E.Unloaded then
            E:Unload()
        end
    end)
    E:OnUnload(function()
        D.Unload()
    end)
end
sD = s3("OuroborosDinoEvolution")
local s6 = fn1014
sr = fn41
if ((not LocalPlayer or s7) and (not s7 and LocalPlayer) or (LocalPlayer and s7)) and ((s7 or not LocalPlayer and 7) and 7) or not (((not LocalPlayer or s7) and (not s7 and LocalPlayer) or (LocalPlayer and s7)) and ((s7 or not LocalPlayer and 7) and 7)) then
    s5_1 = (sr(firetouchinterest))
else
    sr = (s5_1(firetouchinterest))
end
if s5_1 then
    s5_1 = firetouchinterest
end
local s2 = s5_1
local tk = if s2 then 1 else 0
local ti = 3252 * tk + 2046 * (1 - tk)
local tj = 3172 * tk + 3201 * (1 - tk)
if not ((ti * 1702 + tj * 364 + ti * tj) % 16777213 == 227643) then
    s2 = nil
end
sj = nil
sj = s2
local worker4 = sr(fireproximityprompt) and fireproximityprompt
local s2_1 = worker4 or nil
sc, r6, r4, rY, rW, s0, sX, sU, sS, sP, sH, sF, State = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
sc = s2_1
local s5_2 = s6(s7)
worker4 = s6(s5_2:WaitForChild("Events"))
r6 = require(s6(worker4:WaitForChild("Remotes")))
r4 = require(s6(s5_2:WaitForChild("Client"):WaitForChild("PlayerData")))
local s3_1 = s6(s5_2:WaitForChild("DataModules"))
rY = require(s6(s3_1:WaitForChild("DinoConfig")))
local worker5 = require(s6(s3_1:WaitForChild("StageConfig")))
rW = require(s6(s3_1:WaitForChild("LevelConfig")))
s0 = require(s6(s3_1:WaitForChild("WorldConfig")))
sX = require(s6(s3_1:WaitForChild("DamageProgression")))
sU = require(s6(s3_1:WaitForChild("ConfigFlags")))
sS = require(s6(s3_1:WaitForChild("GamePassConfig")))
sP = require(s6(s3_1:WaitForChild("Auras")))
sH = require(s6(s3_1:WaitForChild("PetConfig")))
sF = require(s6(s5_2:WaitForChild("Client"):WaitForChild("Modules"):WaitForChild("EggShowcase")))
State = sD.State
State.Enabled = {
    Click = false,
    Farm = false,
    Rebirth = false,
    Train = false,
    BuyDino = false,
    BuyAura = false,
    Hatch = false,
    BestPets = false,
    BestItems = false
}
State.Stage = 1
State.TrainLabel = nil
State.EggLabel = nil
State.HatchAmount = 1
State.LastStream = 0
local s2_2 = sX.TAPS_PER_SECOND or 4
local s3_2 = 0
repeat
    worker4 = {
        "itpor",
        "sbkegrweqw",
        "aoxpqc",
        "opvognxvncx",
        "cewcju",
        "lyuaetsi",
        "kuz",
        "chlsacono",
        "wgvnxmz",
        "jftfvv",
        "hqxtgkene",
        "bsyqt",
        "kgimzudm",
        "jwirbv",
        "qbnxfwjhjuh",
        "zbcpykieink"
    }
    if worker4[(s3_2 * 76 + 68) % 16 + 1] <= worker4[(s3_2 * 76 + 68) % 16 + 1] then
        State.TapTokens = s2_2
        State.LastTap = os.clock()
        State.LastFightTarget = nil
        State.LastFightAt = 0
        State.Opened = {}
        State.Cleared = {}
    else
        State.TapTokens = State
        s2_2.LastTap = os.clock()
        s2_2.LastFightTarget = nil
        s2_2.LastFightAt = 0
        s2_2.Opened = {}
        s2_2.Cleared = {}
    end
    s3_2 = (s3_2 + 1) % 8
until (s3_2 * 5 + 6) % 8 == 3
local s2_3 = tonumber(s0.LastStage()) or 1
sB, sx, su = nil, nil, nil
local s3_3 = 4
repeat
    worker4 = (vector.create((s3_3 * 2 + 9) % 11 + 1, (s3_3 * 9 + 11) % 13 + 1, (s3_3 * 2 + 11) % 17 + 1))
    local s5_3 = (vector.create((s3_3 * 1 + 5) % 11 + 1, (s3_3 * 7 + 7) % 13 + 1, (s3_3 * 1 + 12) % 17 + 1))
    local Di = vector.dot(worker4, s5_3)
    if Di * Di >= vector.dot(worker4, worker4) * vector.dot(s5_3, s5_3) + 1 then
        sx = su
        sB = {}
        s2_3 = {}
    else
        sB = s2_3
        sx = {}
        su = {}
    end
    s3_3 = (s3_3 + 3) % 8
until (s3_3 * 1 + 2) % 8 == 1
worker4 = {}
for k, v in worker5.Stages do
    local s2_4 = type(v) == "table" and type(v.Stage) == "number"
    if s2_4 then
        worker4[v.Stage] = v.Theme
    end
end
local tt = 1
local tr = sB
while tt <= tr do
    local tu = tt
    local s2_5 = worker4[tu]
    local s3_4 = s2_5 and tostring(tu) .. " " .. tostring(s2_5)
    local s2_6 = s3_4 or "Stage " .. tostring(tu)
    table.insert(sx, s2_6)
    su[s2_6] = tu
    tt += 1
end
r1, rZ = nil, nil
local s2_7 = 3
repeat
    local s3_6 = {
        "gljnopx",
        "duxrujdclbb",
        "milsbccii",
        "joia",
        "ohptvalr",
        "hejofpyx",
        "lrka",
        "kxstguhwiat",
        "hyegemaveyj"
    }
    local EN = s2_7
    worker4 = s3_6[EN % 9 + 1]
    if worker4:len() >= worker4:reverse():rep(EN % 3 + 2):len() then
        rZ = {}
        s5_5 = {}
        r1 = {}
    else
        s5_5 = {}
        r1 = {}
        rZ = {}
    end
    s2_7 = (s2_7 + 0) % 4
until (s2_7 * 3 + 0) % 4 == 1
local s3_7 = {}
for k, v in sX.TRAINING_AREAS do
    local s2_8 = type(k) == "string" and type(v) == "table"
    worker4 = k ~= "Admin"
    s6 = s2_8 and worker4
    if s6 then
        local insert = table.insert
        worker4 = tonumber(v.Order) or 999
        s6 = tonumber(v.Multiplier) or 1
        s7 = tonumber(v.Rebirths) or 0
        insert(s3_7, { Name = k, Order = worker4, Multiplier = s6, Rebirths = s7, Product = v.Product, Pass = v.Pass })
    end
end
table.sort(s3_7, fn681)
for k, v in s3_7 do
    local s2_10 = v.Name .. " x" .. tostring(v.Multiplier)
    v.Label = s2_10
    table.insert(s5_5, v)
    r1[s2_10] = v
    table.insert(rZ, s2_10)
end
local s3_8 = 0
repeat
    local s2_11 = {
        "sjqyfjvymqte",
        "drsmzoyvq",
        "lacdolz",
        "pktqorhaee",
        "pwdfi",
        "yrermyfpb",
        "ofngpdpeefu",
        "axie",
        "zlamuw"
    }
    if s2_11[(s3_8 * 25 + 31) % 9 + 1] < s2_11[(s3_8 * 25 + 31) % 9 + 1] then
        rZ.TrainLabel = State[1]
    else
        State.TrainLabel = rZ[1]
    end
    s3_8 = (s3_8 + 3) % 4
until (s3_8 * 1 + 3) % 4 == 2
worker4, sC, sy = nil, nil, nil
local s2_12 = 5
repeat
    if (s2_12 * 1 + 0) % 2 + 1 <= 1 then
        local s3_10 = {
            "jqxzw",
            "wjxmzafnxp",
            "dxsyxymnizuw",
            "vfmmevxy",
            "smw",
            "qhhb",
            "gjxvcahof",
            "lnfk",
            "umnuizf",
            "llub",
            "tvleylxn",
            "fwvagmlw",
            "lftzzwtwnpdv",
            "wnjyvtg",
            "dhowpirly",
            "mzctfaj"
        }
        if s3_10[(s2_12 * 51 + 53) % 16 + 1] <= s3_10[(s2_12 * 51 + 53) % 16 + 1] then
            sy = {}
        else
            sC = {}
        end
        s2_12 = (s2_12 + 5) % 16
    else
        local Ed = bit32.rrotate(bit32.bxor(bit32.lrotate(s2_12, 3), string.byte(tostring(worker4))), 22)
        if bit32.bxor(bit32.lrotate(bit32.bxor(Ed, 1606584797), 10), 170358143) ~= bit32.lrotate(Ed, 10) then
            sC = {}
            worker4 = {}
        else
            worker4 = {}
            sC = {}
        end
        s2_12 = (s2_12 + 9) % 16
    end
until (s2_12 * 13 + 14) % 16 == 5
local s3_11 = {}
for k, v in sH.Eggs do
    local s2_13 = type(k) == "string" and type(v) == "table" and v.Product == nil and tonumber(v.Cost) ~= nil
    s6 = s2_13 and k ~= "Admin"
    if s6 then
        local insert = table.insert
        local s5_7 = tonumber(v.Order) or 999
        s6 = type(v.DisplayName) == "string" and v.DisplayName
        s7 = s6 or k
        s6 = tonumber(v.Cost) or 0
        insert(s3_11, { Name = k, Order = s5_7, Display = s7, Cost = s6 })
    end
end
table.sort(s3_11, fn255)
for k, v in s3_11 do
    table.insert(worker4, v)
    sC[v.Display] = v
    table.insert(sy, v.Display)
end
local s2_15 = 1
repeat
    local Dj = bit32.rrotate(bit32.bxor(bit32.lrotate(s2_15, 18), string.byte(tostring(s2_15))), 30)
    if bit32.bxor(bit32.lrotate(bit32.bxor(Dj, 3345661975), 12), 2885778550) ~= bit32.lrotate(Dj, 12) then
        sy.EggLabel = State[1]
    else
        State.EggLabel = sy[1]
    end
    s2_15 = (s2_15 + 3) % 8
until (s2_15 * 5 + 2) % 8 == 6
r8, st, ss, so, sm, sk, sh, se, sa, r5, rX, sG, sv, sV, sz, sf, r2, sN, sq, r9, r3, sO, sw, sg, r0, sI, sl, sY, sK, sZ, si, r_, sA, s6, sn, sd, r7, sJ, sb, s1, sQ, sL, sp, worker5 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
r8 = { "1", "3", "8", "16" }
r5 = fn477
rX = fn249
sG = fn127
sv = fn712
sD.Track(function()
    local connection
    connection = r6.GateState.OnClientEvent:Connect(function(bf, bg)
        if sD.Unloaded then
            return
        end
        State.Opened = sv(bf)
        State.Cleared = sv(bg)
    end)
    return function()
        connection:Disconnect()
    end
end)
sV = function(bq)
    if typeof(bq) ~= "Vector3" then
        return
    end
    local uE = os.clock()
    if uE - State.LastStream < 0.45 then
        return
    end
    State.LastStream = uE
    pcall(function()
        LocalPlayer:RequestStreamAroundAsync(bq)
    end)
end
sz = fn1039
sf = fn482
r2 = fn1031
sN = fn69
sq = fn378
r9 = fn298
r3 = fn895
sO = fn655
sw = fn572
sg = fn390
r0 = fn349
sI = fn807
sl = fn207
sY = fn91
if ((sQ and sQ or sg and not sN) and ((r_ or not r_) and (sQ or r_)) or (not r0 and sN and (r_ and r0) or (not sN or not sN or (sQ or not sg)))) and not ((sQ and sQ or sg and not sN) and ((r_ or not r_) and (sQ or r_)) or (not r0 and sN and (r_ and r0) or (not sN or not sN or (sQ or not sg)))) then
    sq = fn186
else
    sK = fn186
end
sZ = fn208
si = fn909
r_ = fn487
sA = fn409
if (not sO and sJ or (not sJ or sZ)) and (sO or sJ or (sZ or not sJ)) or not ((not sO and sJ or (not sJ or sZ)) and (sO or sJ or (sZ or not sJ))) then
    s6 = fn562
end
sn = fn505
sd = fn399
r7 = fn380
sJ = fn421
sb = function(e4)
    local wN
    local wO_1
    wO_1, wN = sJ(e4)
    if not wO_1 then
        return false
    end
    r2(wO_1)
    if wN and sc then
        pcall(sc, wN)
    elseif wN then
        pcall(function()
            wN:InputHoldBegin()
            wN:InputHoldEnd()
        end)
    end
    return true
end
s1 = fn153
s7 = fn907
sQ = fn76
worker4 = function()
    local xx = false
    repeat
        if not sD.Unloaded then
            if State.Enabled.BuyAura then
                local xu = sQ()
                if xu then
                    pcall(function()
                        r6.RequestAuraEquip:InvokeServer(xu)
                    end)
                    task.wait(0.8)
                else
                    task.wait(0.8)
                end
            else
                task.wait(0.4)
            end
        else
            xx = true
        end
    until xx
end
sL = fn1071
sp = fn639
if ((r7 or false or si and not si) and (sI and false and (not si and false)) or (sI or not r7 or (sI or worker3)) and ((not sK or false) and (sK and 7)) or ((si and sI or (worker3 or r7)) and (not sI and not sI or not r7 and not sI) or (not sI or sK) and (worker3 and not r7) and ((sK or worker3) and (worker3 or not r7)))) and not ((r7 or false or si and not si) and (sI and false and (not si and false)) or (sI or not r7 or (sI or worker3)) and ((not sK or false) and (sK and 7)) or ((si and sI or (worker3 or r7)) and (not sI and not sI or not r7 and not sI) or (not sI or sK) and (worker3 and not r7) and ((sK or worker3) and (worker3 or not r7)))) then
    sO = function()
        local x4 = false
        repeat
            if not sD.Unloaded then
                local xY = State.Enabled.Hatch and not sG()
                if xY then
                    local xX = sC[State.EggLabel]
                    local max = math.max
                    local floor2 = math.floor
                    local x_ = tonumber(State.HatchAmount) or 1
                    local xW = max(1, floor2(x_))
                    local xY_7 = r5()
                    local xZ_4 = xX
                    if xZ_4 then
                        local x__3 = sL(xY_7)
                        local x0_3 = tonumber(sH.MaxInventory) or 100
                        xZ_4 = x__3 < x0_3
                    end
                    if xZ_4 then
                        local xZ_5 = xX.Cost * xW
                        local x__4 = math.max
                        local floor = math.floor
                        local x1 = tonumber(xY_7.Wins) or 0
                        local xY_8 = x__4(0, floor(x1))
                        if xY_8 >= xZ_5 then
                            local xY_9 = sp(xX.Name)
                            if xY_9 then
                                sV(xY_9.Position)
                                r2(xY_9)
                                local xY_10 = type(sF.IsBusy) == "function" and sF.IsBusy()
                                if not xY_10 then
                                    pcall(function()
                                        r6.RequestHatch:InvokeServer(xX.Name, xW)
                                    end)
                                end
                            end
                            task.wait(0.45)
                        else
                            task.wait(0.6)
                        end
                    else
                        task.wait(0.6)
                    end
                else
                    task.wait(0.4)
                end
            else
                x4 = true
            end
        until x4
    end
else
    worker5 = function()
        local x4 = false
        repeat
            if not sD.Unloaded then
                local xY = State.Enabled.Hatch and not sG()
                if xY then
                    local xX = sC[State.EggLabel]
                    local max = math.max
                    local floor2 = math.floor
                    local x_ = tonumber(State.HatchAmount) or 1
                    local xW = max(1, floor2(x_))
                    local xY_2 = r5()
                    local xZ_1 = xX
                    if xZ_1 then
                        local x__1 = sL(xY_2)
                        local x0_1 = tonumber(sH.MaxInventory) or 100
                        xZ_1 = x__1 < x0_1
                    end
                    if xZ_1 then
                        local xZ_2 = xX.Cost * xW
                        local x__2 = math.max
                        local floor = math.floor
                        local x1 = tonumber(xY_2.Wins) or 0
                        local xY_3 = x__2(0, floor(x1))
                        if xY_3 >= xZ_2 then
                            local xY_4 = sp(xX.Name)
                            if xY_4 then
                                sV(xY_4.Position)
                                r2(xY_4)
                                local xY_5 = type(sF.IsBusy) == "function" and sF.IsBusy()
                                if not xY_5 then
                                    pcall(function()
                                        r6.RequestHatch:InvokeServer(xX.Name, xW)
                                    end)
                                end
                            end
                            task.wait(0.45)
                        else
                            task.wait(0.6)
                        end
                    else
                        task.wait(0.6)
                    end
                else
                    task.wait(0.4)
                end
            else
                x4 = true
            end
        until x4
    end
end
st = task.spawn(worker)
ss = task.spawn(worker2)
so = task.spawn(s6)
sm = task.spawn(worker3)
sk = task.spawn(s7)
sh = task.spawn(worker4)
se = task.spawn(worker5)
sa = task.spawn(worker6)
sD.Track(fn479)
sD.SetEnabled = fn853
sD.SetStage = fn432
sD.SetTrain = fn771
sD.SetEgg = fn189
sD.SetHatchAmount = fn521
sD.Options = fn406
local function tc()
    local Ch
    local Cg
    local onDiscord
    Cg = nil
    Ch = nil
    onDiscord = nil
    local Cb, ThemeManager, Cd, UserInputService, Options, SaveManager, TeleportService, Ck, Library, Toggles, Co
    Cb = "https://ouroboros-hub-rbx.web.app/"
    Cg = "https://discord.gg/ehKVq7pf7v"
    TeleportService = game:GetService("TeleportService")
    Ck = "https://rscripts.net/@Ouroboros"
    UserInputService = game:GetService("UserInputService")
    Co = "+1 Dino Evolution"
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = Library.Toggles
    Options = Library.Options
    s_(sD, Library)
    Ch = function(hU, hV)
        local yt = sr(setclipboard) and setclipboard
        local yu = yt
        local yz = if yu then 1 else 0
        local yx = 2701 * yz + 105 * (1 - yz)
        local yy = 1505 * yz + 3850 * (1 - yz)
        if not ((yx * 2909 + yy * 2838 + yx * yy) % 16777213 == 16193404) then
            local yt_1 = sr(toclipboard) and toclipboard
            yu = yt_1 or nil
        end
        local yt_2 = yu
        if not yt_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local yu_1 = pcall(yt_2, hU)
        if yu_1 then
            Library:Notify(hV)
        else
            Library:Notify("Failed to copy")
        end
    end
    onDiscord = function()
        Ch(Cg, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = Cg, Copyable = true }, "|", Co },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(true, { Color = Color3.fromRGB(242, 154, 196), Radius = 24, Transparency = 0.3 })
    Cd = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "gamepad-2"),
        Shop = Window:AddTab("Shop", "shopping-cart"),
        Player = Window:AddTab("Player", "person-standing"),
        Settings = Window:AddTab("Settings", "settings")
    }
    local function Cp_1(h7)
        local DiscordGroup = h7:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    for k, v in Cd do
        if k ~= "Info" then
            Cp_1(v)
        end
    end
    local Cp_2 = sD.Options()
    local FarmGroup = Cd.Main:AddLeftGroupbox("Farm", "trophy")
    FarmGroup:AddToggle("AutoFarm", {
        Text = "Auto Farm",
        Default = false,
        Callback = function(ig)
            sD.SetEnabled("Farm", ig)
        end
    })
    FarmGroup:AddDropdown("FarmStage", {
        Text = "Stage",
        Values = Cp_2.Stages,
        Default = 1,
        Callback = function(ii)
            sD.SetStage(ii)
        end
    })
    FarmGroup:AddToggle("AutoClick", {
        Text = "Auto Click",
        Default = false,
        Callback = function(ik)
            sD.SetEnabled("Click", ik)
        end
    })
    FarmGroup:AddToggle("AutoRebirth", {
        Text = "Auto Rebirth",
        Default = false,
        Callback = function(im)
            sD.SetEnabled("Rebirth", im)
        end
    })
    local TrainGroup = Cd.Main:AddRightGroupbox("Train", "target")
    TrainGroup:AddToggle("AutoTrain", {
        Text = "Auto Train",
        Default = false,
        Callback = function(iq)
            sD.SetEnabled("Train", iq)
        end
    })
    TrainGroup:AddDropdown("TrainPad", {
        Text = "Training Area",
        Values = Cp_2.Train,
        Default = 1,
        Callback = function(is)
            sD.SetTrain(is)
        end
    })
    local BuyGroup = Cd.Shop:AddLeftGroupbox("Buy", "shopping-bag")
    BuyGroup:AddToggle("AutoBuyDino", {
        Text = "Auto Buy Best Dino",
        Default = false,
        Callback = function(iv)
            sD.SetEnabled("BuyDino", iv)
        end
    })
    BuyGroup:AddToggle("AutoBuyAura", {
        Text = "Auto Buy Aura",
        Default = false,
        Callback = function(ix)
            sD.SetEnabled("BuyAura", ix)
        end
    })
    local EquipGroup = Cd.Shop:AddRightGroupbox("Equip", "backpack")
    EquipGroup:AddToggle("AutoBestPets", {
        Text = "Auto Equip Best Pet",
        Default = false,
        Callback = function(iA)
            sD.SetEnabled("BestPets", iA)
        end
    })
    EquipGroup:AddToggle("AutoBestItems", {
        Text = "Auto Equip Best Item",
        Default = false,
        Callback = function(iC)
            sD.SetEnabled("BestItems", iC)
        end
    })
    local HatchGroup = Cd.Shop:AddLeftGroupbox("Hatch", "egg")
    HatchGroup:AddToggle("AutoHatch", {
        Text = "Auto Hatch",
        Default = false,
        Callback = function(iF)
            sD.SetEnabled("Hatch", iF)
        end
    })
    HatchGroup:AddDropdown("HatchEgg", {
        Text = "Egg",
        Values = Cp_2.Eggs,
        Default = 1,
        Callback = function(iH)
            sD.SetEgg(iH)
        end
    })
    HatchGroup:AddDropdown("HatchAmount", {
        Text = "Amount",
        Values = Cp_2.HatchAmounts,
        Default = 1,
        Callback = function(iJ)
            sD.SetHatchAmount(iJ)
        end
    })
    local function Cp_3()
        local yS
        local yQ
        local yV
        local y_
        yQ = nil
        yS = nil
        yV = nil
        y_ = nil
        local Label2, Label3, yT, yU, Label, yX, yY, yZ, y0
        y_ = function(iN)
            return (tostring(iN):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        yV = function(iP, iQ)
            return string.format('<font color="%s">%s</font>', iQ, y_(iP))
        end
        y0 = function(iT, iU, iV)
            return string.format("<b>%s</b> %s %s", iT, yV("-", "#5a6070"), yV(iU, iV))
        end
        local y1 = {}
        local y2 = "#8b93a3"
        yZ = "#7fd47f"
        yT = "#e8a34d"
        local y3 = "#6ec1ff"
        if not sj then
            table.insert(y1, "firetouchinterest")
        end
        if not sc then
            table.insert(y1, "fireproximityprompt")
        end
        local y4 = #y1 == 0 and "ready"
        local y5 = y4 or "limited: " .. table.concat(y1, ", ")
        yY = "Unknown"
        pcall(function()
            local yB_1
            local yA_1
            if sr(identifyexecutor) then
                yB_1, yA_1 = identifyexecutor()
                local yC = yB_1 ~= ""
                local yD = type(yB_1) == "string" and yC
                if yD then
                    local yC_1 = type(yA_1) == "string" and yA_1 ~= "" and yB_1 .. " " .. yA_1
                    yY = yC_1 or yB_1
                end
            end
        end)
        yQ = os.clock()
        yX = function()
            local yF = math.floor(os.clock() - yQ)
            if yF < 60 then
                return yF .. "s"
            elseif yF < 3600 then
                return string.format("%dm %ds", yF // 60, yF % 60)
            else
                return string.format("%dh %dm", yF // 3600, yF % 3600 // 60)
            end
        end
        local UserGroup = Cd.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(y0("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, yZ), true)
        UserGroup:AddLabel(y0("UserId", tostring(LocalPlayer.UserId), y3), true)
        UserGroup:AddLabel(y0("Executor", yY .. "  " .. y5, yZ), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(y0("Session", yX(), yT), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                Ch(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                Ch("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = Cd.Info:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(y0("Game", Co, y3), true)
        Label2 = SessionGroup:AddLabel(y0("Players", "0/0", yZ), true)
        yU = tostring(game.JobId)
        local y3_1 = #yU > 18 and string.sub(yU, 1, 18) .. "..."
        local y4_2 = y3_1 or yU
        SessionGroup:AddLabel(y0("Job", y4_2, y2), true)
        Label = SessionGroup:AddLabel(y0("Ping", "0 ms", yT), true)
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
                Ch(yU, "Copied Job ID")
            end
        })
        yS = task.spawn(function()
            local yI_1
            local yH_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(y0("Session", yX(), yT))
                Label2:SetText(y0("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), yZ))
                yH_1, yI_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local yH_2 = yH_1 and yI_1 .. " ms" or "n/a"
                Label:SetText(y0("Ping", yH_2, yT))
            end
        end)
        sD.Track(function()
            if coroutine.status(yS) ~= "dead" then
                task.cancel(yS)
            end
        end)
        local SocialsGroup = Cd.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                Ch(Ck, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                Ch(Cb, "Copied website link")
            end
        })
    end
    Cp_3()
    local function Cp_4()
        local ka
        local j8
        local j9
        local kb
        local MovementGroup = Cd.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = Cd.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        j9 = {}
        local j7 = {}
        ka = {}
        j8 = {}
        kb = {}
        local function kc()
            for k, v in j8 do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(j8)
        end
        local function kg()
            for k, v in j9 do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(j9)
        end
        local function kk()
            for k, v in ka do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(ka)
        end
        local function ko(kp)
            if not kp:IsA("ProximityPrompt") then
                return
            end
            if kb[kp] == nil then
                kb[kp] = {
                    HoldDuration = kp.HoldDuration,
                    MaxActivationDistance = kp.MaxActivationDistance,
                    RequiresLineOfSight = kp.RequiresLineOfSight
                }
            end
            kp.HoldDuration = 0
            kp.MaxActivationDistance = 50
            kp.RequiresLineOfSight = false
        end
        local function kr()
            for k, v in kb do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(kb)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                kk()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                kg()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                kc()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                    pcall(ko, v)
                end
            else
                kr()
            end
        end)
        table.insert(j7, Workspace.DescendantAdded:Connect(function(kL)
            if Toggles.InstantProximityPrompt.Value then
                ko(kL)
            end
        end))
        table.insert(j7, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if j8[v] == nil then
                        j8[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(j7, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local zY = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and zY then
                zY:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(j7, RunService.RenderStepped:Connect(function(k5)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local z0 = Character and Character:FindFirstChildOfClass("Humanoid")
            local z1 = Character
            if z1 then
                z1 = Character:FindFirstChild("HumanoidRootPart")
            end
            local z__1 = z1
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and z0 then
                if j9[z0] == nil then
                    j9[z0] = z0.WalkSpeed
                end
                z0.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and z__1 and z0 and CurrentCamera then
                if ka[z0] == nil then
                    ka[z0] = z0.PlatformStand
                end
                z0.PlatformStand = true
                local z1_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        z1_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        z1_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        z1_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        z1_4 += CurrentCamera.CFrame.RightVector
                    end
                    local z7 = if UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
                    if z7 == 1 then
                        z1_4 += Vector3.new(0, 1, 0)
                    end
                    local z7_1 = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
                    if z7_1 == 1 then
                        z1_4 -= Vector3.new(0, 1, 0)
                    end
                end
                z__1.AssemblyLinearVelocity = Vector3.zero
                if z1_4.Magnitude > 0 then
                    z__1.CFrame = z__1.CFrame + z1_4.Unit * Options.FlySpeed.Value * k5
                end
            end
        end))
        sD.Track(function()
            for k, v in j7 do
                v:Disconnect()
            end
            kc()
            kg()
            kk()
            kr()
        end)
    end
    Cp_4()
    local function Cp_5()
        local lr
        local l8
        local Lighting = game:GetService("Lighting")
        lr = {}
        local GuiService = game:GetService("GuiService")
        local lq = {}
        local CoreGui = game:GetService("CoreGui")
        local VirtualUser = game:GetService("VirtualUser")
        local ls
        local lv = 0
        local lt = false
        local lu = 0
        local lw = os.clock()
        local MenuGroup = Cd.Settings:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        local Label = MenuGroup:AddLabel("AFK triggers: 0")
        local function lA()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            if not CurrentCamera then
                return
            end
            local Ag = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.zero, CurrentCamera.CFrame)
            end)
            if not Ag then
                return
            end
            lv += 1
            lw = os.clock()
            Label:SetText("AFK triggers: " .. lv)
        end
        local function onAntiGameplayPause(lM)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not lM)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not lM
                end
            end)
            if lM then
                pcall(function()
                    if sr(sethiddenproperty) then
                        sethiddenproperty(LocalPlayer, "GameplayPaused", false)
                    else
                        LocalPlayer.GameplayPaused = false
                    end
                end)
            end
        end
        local function l_()
            for k, v in lr do
                local Aq = k
                local As = v
                if Aq.Parent then
                    pcall(function()
                        Aq.Enabled = As
                    end)
                end
            end
            table.clear(lr)
            if ls then
                pcall(function()
                    settings().Rendering.QualityLevel = ls.Quality
                end)
                Lighting.GlobalShadows = ls.Shadows
                Lighting.FogEnd = ls.Fog
                ls = nil
            end
        end
        l8 = { ParticleEmitter = true, Trail = true, Smoke = true, Fire = true, Sparkles = true, Beam = true }
        local function l9(ma)
            if l8[ma.ClassName] then
                if lr[ma] == nil then
                    lr[ma] = ma.Enabled
                end
                ma.Enabled = false
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true, Callback = onAntiGameplayPause })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(md)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not md)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(mi)
                if mi then
                    if not ls then
                        ls = {
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
                        pcall(l9, v)
                    end
                else
                    l_()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        local ScriptGroup = Cd.Settings:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        table.insert(lq, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                lA()
            end
        end))
        table.insert(lq, Workspace.DescendantAdded:Connect(function(mz)
            if Toggles.FpsBoost.Value then
                l9(mz)
            end
        end))
        local function mC(mD)
            if lt or Library.Unloaded or not Toggles.AutoReconnect.Value then
                return
            end
            lt = true
            local AG = lu
            local AH_1 = pcall(function()
                if mD then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not AH_1 then
                lt = false
                if not mD and AG == lu then
                    task.delay(1.5, function()
                        if AG == lu then
                            mC(true)
                        end
                    end)
                end
            end
        end
        table.insert(lq, TeleportService.TeleportInitFailed:Connect(function(mV)
            local AO
            if mV == LocalPlayer and lt then
                lt = false
                AO = lu
                task.delay(3, function()
                    if AO == lu then
                        mC(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local AT = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not AT then
                return
            end
            table.insert(lq, AT.ChildAdded:Connect(function(m9)
                if m9.Name == "ErrorPrompt" then
                    mC(false)
                end
            end))
        end)
        local ni = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    onAntiGameplayPause(true)
                end
                local AZ = Toggles.AntiAfk.Value and os.clock() - lw >= 60
                if AZ then
                    lA()
                end
                task.wait(1)
            end
        end)
        sD.Track(function()
            lu += 1
            for k, v in lq do
                v:Disconnect()
            end
            pcall(task.cancel, ni)
            onAntiGameplayPause(false)
            l_()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    Cp_5()
    local function Cp_6()
        local B5, B6, B7, B8
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("OuroborosHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(Cd.Settings)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/DinoEvolution")
        local B9 = SaveManager:BuildConfigSection(Cd.Settings)
        B7 = function(nA, nB)
            local A8_1 = (nA == "Toggle" and Toggles or Options)[nB]
            local A7_2 = type(A8_1) == "table" and A8_1.Type == nA
            return A7_2 and A8_1 or nil
        end
        B5 = function(nK, nL)
            local Type = nL.Type
            if Type == "Toggle" then
                return { idx = nK, type = "Toggle", value = nL.Value == true }
            elseif Type == "Slider" then
                return { idx = nK, type = "Slider", value = tostring(nL.Value) }
            elseif Type == "Dropdown" then
                return { idx = nK, type = "Dropdown", multi = nL.Multi == true, value = nL.Value }
            elseif Type == "Input" then
                local Bf = nL.Value or ""
                return { idx = nK, type = "Input", text = tostring(Bf) }
            elseif Type == "ColorPicker" then
                return { idx = nK, type = "ColorPicker", value = nL.Value:ToHex(), transparency = nL.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = nK,
                    type = "KeyPicker",
                    mode = nL.Mode,
                    key = nL.Value,
                    modifiers = nL.Modifiers,
                    toggled = nL.Toggled
                }
            else
                return nil
            end
        end
        B8 = function()
            local Bo = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local Bp = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if Bp then
                        local Bp_1 = B5(k, v)
                        if Bp_1 then
                            Bo[#Bo + 1] = Bp_1
                        end
                    end
                end
            end
            table.sort(Bo, function(nV, nW)
                if nV.type ~= nW.type then
                    return nV.type < nW.type
                end
                return nV.idx < nW.idx
            end)
            return { objects = Bo }
        end
        B6 = function(nY)
            local BI
            BI = nil
            local BJ = type(nY) ~= "table" or type(nY.idx) ~= "string"
            local BN = if BJ then 1 else 0
            local BL = 1587 * BN + 1480 * (1 - BN)
            local BM = 608 * BN + 2030 * (1 - BN)
            if not ((BL * 3249 + BM * 177 + BL * BM) % 16777213 == 6228675) then
                BJ = type(nY.type) ~= "string"
            end
            if not BJ then
                BJ = SaveManager.Ignore[nY.idx]
            end
            if BJ then
                return false
            end
            BI = B7(nY.type, nY.idx)
            if not BI then
                return false
            end
            local BJ_1 = pcall(function()
                if nY.type == "Input" then
                    if type(nY.text) ~= "string" then
                        return
                    end
                    BI:SetValue(nY.text)
                elseif nY.type == "ColorPicker" then
                    BI:SetValueRGB(Color3.fromHex(nY.value), nY.transparency)
                elseif nY.type == "KeyPicker" then
                    BI:SetValue({ nY.key, nY.mode, nY.modifiers })
                    if nY.mode == "Toggle" and nY.toggled ~= nil then
                        BI.Toggled = nY.toggled
                        BI:Update()
                    end
                else
                    BI:SetValue(nY.value)
                end
            end)
            return BJ_1
        end
        B9:AddDivider()
        B9:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        B9:AddButton("Export Config to Clipboard", function()
            local BP_1
            local BO_1
            BO_1, BP_1 = pcall(HttpService.JSONEncode, HttpService, B8())
            if not BO_1 then
                Library:Notify("Failed to encode the config")
                return
            end
            local BO_2 = sr(setclipboard) and setclipboard
            local BQ = BO_2
            if not BQ then
                local BO_3 = sr(toclipboard) and toclipboard
                BQ = BO_3 or nil
            end
            local BO_4 = BQ
            local BQ_1 = type(BO_4) ~= "function" or not pcall(BO_4, BP_1)
            if BQ_1 then
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Config copied to clipboard", 6)
        end)
        B9:AddButton("Import Config from Clipboard Text", function()
            local BV_1
            local BT = Options.SaveManager_ImportSource.Value or ""
            local BT_1
            local BU = tostring(BT):match("^%s*(.-)%s*$")
            if BU == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #BU > 262144 then
                Library:Notify("That config is too large")
                return
            end
            BT_1, BV_1 = pcall(HttpService.JSONDecode, HttpService, BU)
            local BU_1 = not BT_1 or type(BV_1) ~= "table" or type(BV_1.objects) ~= "table"
            if BU_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #BV_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local BT_2 = 0
            for i, v in ipairs(BV_1.objects) do
                if B6(v) then
                    BT_2 += 1
                end
            end
            if BT_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local BV_2 = BT_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(BT_2, BV_2), 6)
        end)
        SaveManager:LoadAutoloadConfig()
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    Cp_6()
end
tc()
