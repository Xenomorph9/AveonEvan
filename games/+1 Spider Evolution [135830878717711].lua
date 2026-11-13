local pa
local pS
local oS
local Workspace
local pg
local oY
local pF
local pm
local o3
local pL
local LocalPlayer
local o9
local pR
local oR
local py
local pf
local oX
local pE
local pl
local pr
local o8
local px
local pe
local oW
local pD
local pk
local o1
local pJ
local pq
local pP
local pw
local pd
local oV
local pC
local pj
local o0
local pp
local o6
local pO
local pv
local pc
local oU
local pB
local pi
local o_
local pH
local po
local o5
local pN
local pu
local pb
local oT
local pA
local ph
local oZ
local HttpService
local pn
local o4
local pM
local pt
local function worker2()
    local tl_5, tl_6, tl_7
    while not pS.Unloaded do
        if not pJ() then
            task.wait(0.3)
            continue
        end
        local tk = pS.Stage
        if tk < 1 then
            tk = 1
        end
        if tk > px then
            tk = px
        end
        if not o4(tk) then
            task.wait(0.6)
        elseif not pO() then
            oV()
            local tl_1 = pS.Unloaded or not pJ()
            if tl_1 then
                continue
            end
            oT(tk)
            local tl_2 = pS.Unloaded or not pJ()
            if tl_5 then
                continue
            end
            py(tk)
            local tl_3 = pS.Unloaded or not pJ()
            if tl_6 then
                continue
            end
            pB(tk)
            local tl_4 = pS.Unloaded or not pJ()
            if tl_7 then
                continue
            end
            if pd(tk) then
                pR(tk)
            end
            oV()
            task.wait(0.35)
        else
            oT(tk)
            tl_5 = pS.Unloaded or not pJ()
            if tl_5 then
                continue
            end
            py(tk)
            tl_6 = pS.Unloaded or not pJ()
            if tl_6 then
                continue
            end
            pB(tk)
            tl_7 = pS.Unloaded or not pJ()
            if tl_7 then
                continue
            end
            if pd(tk) then
                pR(tk)
            end
            oV()
            task.wait(0.35)
        end
    end
end
local function fn33(bz)
    local rd_1
    local rc_1
    local rb_1
    rc_1, rb_1, rd_1 = pN()
    local rb_2 = rd_1 and bz and bz:IsA("BasePart")
    if not rb_2 then
        return false
    end
    pF(bz.Position + Vector3.new(0, 3, 0))
    if typeof(firetouchinterest) == "function" then
        pcall(firetouchinterest, bz, rd_1, 1)
        pcall(firetouchinterest, bz, rd_1, 0)
    end
    return true
end
local function fn40()
    local ss = {}
    local attr2 = LocalPlayer:GetAttribute("OwnedWebShootersJSON")
    local su = attr2 ~= ""
    local su_1
    local sv = type(attr2) == "string" and su
    local sv_1
    if sv then
        su_1, sv_1 = pcall(HttpService.JSONDecode, HttpService, attr2)
        local st_1 = su_1 and type(sv_1) == "table"
        if st_1 then
            for k, v in sv_1 do
                if type(v) == "string" then
                    ss[v] = true
                end
            end
        end
    end
    local attr = LocalPlayer:GetAttribute("EquippedWebShooter")
    local su_2 = attr ~= ""
    local sv_2 = type(attr) == "string" and su_2
    if sv_2 then
        ss[attr] = true
    end
    return ss
end
local function worker()
    while not pS.Unloaded do
        local tc = pS.Enabled.Click and LocalPlayer:GetAttribute("ClientHatchingEgg") ~= true
        if tc then
            pD:FireServer()
            task.wait(0.12)
        else
            task.wait(0.2)
        end
    end
end
local function fn71()
    while not pS.Unloaded do
        if pS.Enabled.BestPets then
            o5:FireServer()
        end
        if pS.Enabled.BestGear then
            oY:FireServer()
            oS:FireServer()
        end
        if pS.Enabled.BestPets or pS.Enabled.BestGear then
            task.wait(2)
        else
            task.wait(0.5)
        end
    end
end
local function fn88()
    return pS.Enabled.Farm
end
local function fn110()
    local Character = LocalPlayer.Character
    local qy = Character and Character:FindFirstChildOfClass("Humanoid")
    local qz = Character
    if qz then
        qz = Character:FindFirstChild("HumanoidRootPart")
    end
    local qy_1 = Character
    local qB = qz
    if qy_1 then
        qy_1 = qy
    end
    if qy_1 then
        qy_1 = qB
    end
    if qy_1 then
        qy_1 = qy.Health > 0
    end
    if qy_1 then
        return Character, qy, qB
    end
end
local function fn132()
    return o8("Trophies", 0)
end
local function fn133()
    local LobbySpawn = Workspace:FindFirstChild("LobbySpawn")
    local rj = LobbySpawn and LobbySpawn:IsA("BasePart")
    if rj then
        return LobbySpawn
    end
end
local function fn149(fV)
    local tP = tonumber(string.match(tostring(fV), "%d+"))
    if tP and tP >= 1 and tP <= px then
        pS.Stage = tP
    end
end
local function fn167(c7)
    local Humanoid = c7:FindFirstChildOfClass("Humanoid")
    if not Humanoid or Humanoid.Health <= 0 then
        return
    end
    local sc_1 = math.max(o8("MagicPower", 1), 1)
    Humanoid:TakeDamage(sc_1)
    local attr = c7:GetAttribute("MobId")
    local sc_2 = type(attr) == "string" or type(attr) == "number"
    if sc_2 then
        pk:FireServer(attr)
    end
end
local function fn190(ct)
    local rC = pf(ct)
    if not rC then
        return
    end
    pA(rC)
    pF(rC)
end
local function fn231(em)
    local te = pM()
    local tf = pC()
    local tg = os.clock() + 6
    local th = false
    while true do
        local ti = not pS.Unloaded and pJ() and os.clock() < tg
        if not ti then
            local tg_1 = pM() > te or pC() > tf
            return tg_1
        end
        if not pd(em) then
            break
        end
        local ti_1 = pa(em)
        if ti_1 then
            o_(ti_1)
        end
        if not th then
            pi:FireServer("Stage" .. tostring(em))
            th = true
        end
        local ti_2 = pM() > te or pC() > tf
        if ti_2 then
            return true
        end
        task.wait(0.2)
    end
    return false
end
local function fn267(bs)
    local q6_1
    local q5_1
    local q4_1
    q4_1, q6_1, q5_1 = pN()
    local q4_2 = q5_1 and typeof(bs) == "Vector3"
    if not q4_2 then
        return false
    end
    q5_1.CFrame = CFrame.new(bs)
    q5_1.AssemblyLinearVelocity = Vector3.zero
    if q6_1 then
        q6_1:ChangeState(Enum.HumanoidStateType.Running)
    end
    return true
end
local function fn344()
    if pS.Unloaded then
        return
    end
    pS.Unloaded = true
    for k in pS.Enabled do
        pS.Enabled[k] = false
    end
    for k, v in oX do
        v:Disconnect()
    end
    table.clear(oX)
    if getgenv()[pn] == pm then
        getgenv()[pn] = nil
    end
end
local function fn361(a4)
    local qW = o9:FindFirstChild("Stage" .. tostring(a4))
    if not qW then
        return
    end
    local qX = o8("WinsMultiplier", 1) > 1
    local qY = qX and qW:FindFirstChild("2xWinButton")
    local qX_1 = qY or qW:FindFirstChild("WinButton") or qW:FindFirstChild("2xWinButton")
    return oW(qX_1)
end
local function fn377(ad, ae)
    local qt = tonumber(pt[ad].PowerMultiplier) or 0
    local qt_1 = tonumber(pt[ae].PowerMultiplier) or 0
    if qt ~= qt_1 then
        return qt < qt_1
    end
    return ad < ae
end
local function fn378(ch)
    return o9:FindFirstChild("Stage" .. tostring(ch))
end
local function fn386()
    local rs = pp()
    local rt = o3()
    local ru
    if rs then
        ru = rs.Position + Vector3.new(0, 3, 0)
    elseif rt then
        ru = Vector3.new(rt.Position.X, rt.Position.Y - rt.Size.Y * 0.5 + 4, rt.Position.Z)
    end
    if ru then
        pA(ru)
        pF(ru)
    end
    local rs_1 = os.clock() + 3
    while true do
        local rt_1 = not pS.Unloaded and pJ() and not pO() and os.clock() < rs_1
        if rt_1 then
            if ru then
                pF(ru)
            end
            task.wait(0.15)
            continue
        end
        break
    end
    task.wait(0.35)
end
local function fn388(ck)
    local rz = pu(ck)
    local rA = rz and rz:FindFirstChild("Zone")
    local rz_1 = rA
    if rA then
        rA = rz_1:IsA("BasePart")
    end
    if rA then
        return Vector3.new(rz_1.Position.X, rz_1.Position.Y - rz_1.Size.Y * 0.5 + 4, rz_1.Position.Z)
    end
    local rz_2 = pL(ck)
    if rz_2 then
        return rz_2.Position + Vector3.new(0, 3, 0)
    end
end
local function fn405(bl)
    local q2 = pw(bl)
    if q2 then
        return q2
    end
    local q2_1 = pL(bl)
    if q2_1 then
        pA(q2_1.Position)
    end
    return pw(bl)
end
local function fn413(Q, R)
    local connection = Q:Connect(R)
    table.insert(oX, connection)
    return connection
end
local function fn423()
    local rq_1
    local rp_1
    local ro_1
    ro_1, rp_1, rq_1 = pN()
    local ro_2 = o3()
    if not (rq_1 and ro_2) then
        return false
    end
    local rp_3 = ro_2.CFrame:PointToObjectSpace(rq_1.Position)
    local rq_2 = ro_2.Size * 0.5
    local ro_3 = math.abs(rp_3.X) <= rq_2.X and math.abs(rp_3.Y) <= rq_2.Y and math.abs(rp_3.Z) <= rq_2.Z
    return ro_3
end
local function fn435()
    local tE_1
    local tD_1
    if not pe.Enabled then
        return
    end
    tD_1, tE_1 = pcall(pe.GetHighestEligibleNormalSuit, LocalPlayer)
    local tF = not tD_1 or type(tE_1) ~= "table"
    if tF then
        return
    end
    local SuitName = tE_1.SuitName
    local tF_1 = SuitName == ""
    local tG = type(SuitName) ~= "string" or tF_1
    if tG then
        return
    end
    if LocalPlayer:GetAttribute(pe.PlayerAttribute) == SuitName then
        return
    end
    local Target = tE_1.Target
    local tF_2 = typeof(Target) == "Instance" and Target:IsA("BasePart")
    if tF_2 then
        return Target
    end
    local Button = tE_1.Button
    if typeof(Button) == "Instance" then
        local TouchPart = Button:FindFirstChild("TouchPart")
        local tD_5 = TouchPart and TouchPart:IsA("BasePart")
        if tD_5 then
            return TouchPart
        end
    end
end
local function fn459(aZ)
    if not aZ then
        return nil
    end
    if aZ:IsA("BasePart") then
        return aZ
    end
    local qQ = (aZ:FindFirstChild("TouchPart"))
    local qV = if qQ then 1 else 0
    local qT = 2546 * qV + 3544 * (1 - qV)
    local qU = 774 * qV + 3922 * (1 - qV)
    if not ((qT * 2686 + qU * 3129 + qT * qU) % 16777213 == 11231006) then
        qQ = aZ:FindFirstChild("Touch")
    end
    if not qQ then
        qQ = aZ:FindFirstChild("HitPart")
    end
    local qR = qQ
    if qQ then
        qQ = qR:IsA("BasePart")
    end
    if qQ then
        return qR
    end
    local BasePart = aZ:FindFirstChildWhichIsA("BasePart", true)
    if BasePart then
        return BasePart
    end
end
local function fn512(ay, az)
    local qG = tonumber(LocalPlayer:GetAttribute(ay))
    if qG then
        return qG
    end
    return az
end
local function fn554(c3)
    local r6 = c3:FindFirstChild("HumanoidRootPart") or c3.PrimaryPart
    local sa = if r6 then 1 else 0
    local r8 = 1770 * sa + 3665 * (1 - sa)
    local r9 = 4089 * sa + 4027 * (1 - sa)
    if not ((r8 * 282 + r9 * 238 + r8 * r9) % 16777213 == 8709852) then
        r6 = oW(c3)
    end
    return r6
end
local function fn574()
    return o8("Wins", 0)
end
local function fn576()
    return o8("Rebirths", 0)
end
local function fn579(aL)
    local qL = tonumber(pH.TrophyRequirements[aL]) or 0
    return pM() >= qL
end
local function fn583()
    local ResetZone = Workspace:FindFirstChild("ResetZone")
    local rm = ResetZone and ResetZone:IsA("BasePart")
    if rm then
        return ResetZone
    end
end
local function worker3()
    while not pS.Unloaded do
        local tn = pS.Enabled.Train and not pJ()
        if tn then
            local tn_1 = o6[pS.TrainLabel]
            if pb(tn_1) then
                local to = pP(tn_1)
                if to then
                    o_(to)
                end
            end
            task.wait(0.2)
        else
            task.wait(0.3)
        end
    end
end
local function fn626(fS, fT)
    pS.Enabled[fS] = fT == true
end
local function worker4()
    while not pS.Unloaded do
        if pS.Enabled.Rebirth then
            local tq = pg()
            local tr = tonumber(pj.MaxRebirths) or 0
            local tr_1 = pj.LevelRequirements[tq + 1]
            local tt = tq < tr and type(tr_1) == "number" and pq() >= tr_1
            if tt then
                pc:FireServer()
                task.wait(1.4)
            else
                task.wait(0.5)
            end
        else
            task.wait(0.4)
        end
    end
end
local function fn676()
    local sI_1
    local sH_1
    local sG = oU()
    sI_1, sH_1 = nil, nil
    for k, v in po.Order do
        local sJ = po.Items[v]
        local sK = sG[v] and type(sJ) == "table"
        if sK then
            local sK_1 = tonumber(sJ.PowerMultiplier) or 0
            local sJ_1 = not sH_1
            if not sJ_1 then
                sJ_1 = sK_1 > sH_1
            end
            if sJ_1 then
                sH_1 = sK_1
                sI_1 = v
            end
        end
    end
    return sI_1
end
local function fn678()
    pS.Arrived = true
end
local function fn690(cb)
    pS.Arrived = false
    pv:FireServer(cb)
    local rw = os.clock() + 3
    while true do
        local rx = not pS.Unloaded and not pS.Arrived and os.clock() < rw
        if rx then
            task.wait(0.1)
            continue
        end
        break
    end
    task.wait(0.25)
end
local function fn710()
    return o8("Level", 1)
end
local function fn713(be)
    local q_ = o9:FindFirstChild("Stage" .. tostring(be))
    local q0 = q_ and q_:FindFirstChild("SpawnParts")
    return oW(q0)
end
local function fn734(cO)
    local rQ = pu(cO)
    local rR = {}
    if not rQ then
        return rR
    end
    for k, v in rQ:QueryDescendants("BasePart") do
        if v.Name == "Wall" or v.Name == "Wall2" then
            table.insert(rR, v)
        end
    end
    return rR
end
local function fn743(dg)
    local sh = os.clock()
    local si = false
    while true do
        local sj = not pS.Unloaded and pJ() and os.clock() - sh < 25
        if not sj then
            return pd(dg)
        end
        if pd(dg) then
            break
        end
        local sj_1 = o0(dg)
        if #sj_1 > 0 then
            si = true
            for k, v in sj_1 do
                local sj_2 = pS.Unloaded or not pJ()
                if sj_2 then
                    return false
                end
                local sj_3 = pE(v)
                if sj_3 then
                    o_(sj_3)
                end
                ph(v)
            end
            task.wait(0.12)
        else
            local sj_4 = si and pd(dg)
            if sj_4 then
                return true
            end
            py(dg)
            local sj_5 = not si
            local sk = os.clock() - sh > 8 and sj_5
            if sk then
                return pd(dg)
            end
            task.wait(0.2)
        end
    end
    return true
end
local function fn782(cz)
    local rH_1
    local rG_1
    local rE = "Stage" .. tostring(cz)
    local rF = {}
    rG_1, rH_1 = pcall(function()
        return Workspace:QueryDescendants("Model[$LocalMob = true]")
    end)
    local rI = not rG_1 or type(rH_1) ~= "table"
    if rI then
        return rF
    end
    for k, v in rH_1 do
        local rG_2 = v:GetAttribute("ZoneName") == rE and tonumber(v:GetAttribute("OwnerUserId")) == LocalPlayer.UserId
        if rG_2 then
            local Humanoid = v:FindFirstChildOfClass("Humanoid")
            if Humanoid and Humanoid.Health > 0 then
                table.insert(rF, v)
            end
        end
    end
    return rF
end
local function fn788(cW)
    local rZ = oR(cW)
    if #rZ == 0 then
        return #o0(cW) == 0
    end
    for k, v in rZ do
        if v.Parent and v.CanCollide == false then
            return true
        end
    end
    return false
end
local function fn824(o)
    local qr = typeof(cloneref) == "function" and typeof(o) == "Instance"
    if qr then
        return cloneref(o)
    end
    return o
end
local function worker5()
    while not pS.Unloaded do
        local tL = pS.Enabled.BestUpgrade and not pJ()
        if tL then
            local tL_1 = pl()
            if tL_1 then
                o_(tL_1)
            end
            task.wait(0.25)
        else
            task.wait(0.4)
        end
    end
end
local function fn831(d7)
    if not d7 then
        return false
    elseif pg() < d7.RequiredRebirths then
        return false
    else
        local s3 = d7.OwnsAttr and LocalPlayer:GetAttribute(d7.OwnsAttr) ~= true
        if s3 then
            return false
        end
        return true
    end
end
local function fn834(ea)
    if not ea then
        return
    end
    local s8 = o1:FindFirstChild(ea.Name)
    if not s8 then
        return
    end
    local Touch = s8:FindFirstChild("Touch")
    local ta = Touch and Touch:IsA("BasePart")
    if ta then
        return Touch
    end
    return oW(s8)
end
local function fn853(f_)
    if o6[f_] then
        pS.TrainLabel = f_
    end
end
local function fn868()
    return { Stages = pr, Train = oZ }
end
local function fn893()
    local sT = oU()
    local sU = pC()
    for k, v in po.Order do
        local sV = po.Items[v]
        local sW = type(sV) == "table" and sT[v] ~= true
        if sW then
            local sW_1 = tonumber(sV.WinsCost) or 0
            if sW_1 > 0 and sU >= sW_1 then
                return v
            end
        end
    end
end
oR = nil
oS = nil
oT = nil
oU = nil
oV = nil
oW = nil
oX = nil
oY = nil
oZ = nil
o_ = nil
o0 = nil
o1 = nil
o3 = nil
o4 = nil
o5 = nil
o6 = nil
o8 = nil
o9 = nil
pa = nil
pb = nil
pc = nil
pd = nil
pe = nil
pf = nil
pg = nil
ph = nil
pi = nil
pj = nil
pk = nil
pl = nil
pm = nil
pn = nil
po = nil
pp = nil
pq = nil
pr = nil
LocalPlayer = nil
pt = nil
pu = nil
pv = nil
pw = nil
px = nil
py = nil
Workspace = nil
pA = nil
pB = nil
pC = nil
local oQ, o2, o7
pD = nil
pE = nil
pF = nil
HttpService = nil
pH = nil
pJ = nil
pL = nil
pM = nil
pN = nil
pO = nil
pP = nil
pR = nil
pS = nil
local RunService, pK, pQ
local p6_1
local p3_1
local p__1
local pX_1
local p0_1
local pV_1, pV_3
local ReplicatedStorage
local pY_1
oQ, ReplicatedStorage, RunService, HttpService, Workspace, LocalPlayer, pn, pV_1 = nil, nil, nil, nil, nil, nil, nil, nil
oQ = game:GetService("Players")
if (oQ or not pV_1 or not pV_1 and pV_1) and (oQ and not pV_1 and (not pV_1 and LocalPlayer)) and (not pV_1 and LocalPlayer and (oQ and not pV_1) and (oQ or oQ or (pV_1 or oQ))) or (not LocalPlayer or oQ) and (LocalPlayer and not LocalPlayer) and (pV_1 and not pV_1 and (pV_1 and oQ)) and (pV_1 or not pV_1 or (not LocalPlayer or not LocalPlayer) or (pV_1 and oQ or (not pV_1 or LocalPlayer))) or not ((oQ or not pV_1 or not pV_1 and pV_1) and (oQ and not pV_1 and (not pV_1 and LocalPlayer)) and (not pV_1 and LocalPlayer and (oQ and not pV_1) and (oQ or oQ or (pV_1 or oQ))) or (not LocalPlayer or oQ) and (LocalPlayer and not LocalPlayer) and (pV_1 and not pV_1 and (pV_1 and oQ)) and (pV_1 or not pV_1 or (not LocalPlayer or not LocalPlayer) or (pV_1 and oQ or (not pV_1 or LocalPlayer)))) then
    ReplicatedStorage = game:GetService("ReplicatedStorage")
else
    oQ = game:GetService("ReplicatedStorage")
end
RunService = game:GetService("RunService")
HttpService = game:GetService("HttpService")
Workspace = game:GetService("Workspace")
LocalPlayer = oQ.LocalPlayer
pn = "OuroborosSpiderEvolution"
local pV_2 = getgenv()[pn]
local pU = pV_2 and pV_2.Unload
local pU_2
if pU then
    pV_2.Unload()
end
p0_1, p__1, pY_1, pD, pv, p3_1, pk, pi, pc, o5, oY, oS, pQ, pK, pH, pt, po, pj, pe, o9, o1, oX, pX_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if p0_1 and 36 and false or not p0_1 and p__1 and (o1 and not p3_1) or not (p0_1 and 36 and false or not p0_1 and p__1 and (o1 and not p3_1)) then
    pX_1 = fn824
else
    oS = fn824
end
local pU_1 = pX_1(ReplicatedStorage)
local p0_2 = pX_1(pU_1:WaitForChild("Remotes"))
if (not o9 or oX) and (pv and pv) and ((o9 or pH) and (not pX_1 and oX)) and (not pH and o9 and (not o9 or pY_1) or (not pv or not o9 or (pY_1 or pY_1))) or (not pv and not pH and (o9 and o9) and (not oX and pX_1 and (pY_1 and oX)) or (pv and not o9 or o9 and not o9 or (pX_1 and not pv or (pX_1 or not oX)))) or not ((not o9 or oX) and (pv and pv) and ((o9 or pH) and (not pX_1 and oX)) and (not pH and o9 and (not o9 or pY_1) or (not pv or not o9 or (pY_1 or pY_1))) or (not pv and not pH and (o9 and o9) and (not oX and pX_1 and (pY_1 and oX)) or (pv and not o9 or o9 and not o9 or (pX_1 and not pv or (pX_1 or not oX))))) then
    p__1 = pX_1(pU_1:WaitForChild("Configs"))
else
    pX_1 = pU_1(p__1:WaitForChild("Configs"))
end
local pY_2 = pX_1(pU_1:WaitForChild("Modules"))
pD = pX_1(p0_2:WaitForChild("GainMagicPower"))
pv = pX_1(p0_2:WaitForChild("TeleportToStage"))
local p3_2 = pX_1(p0_2:WaitForChild("TeleportConfirm"))
pk = pX_1(p0_2:WaitForChild("AttackMob"))
pi = pX_1(p0_2:WaitForChild("StageCleared"))
pc = pX_1(p0_2:WaitForChild("Rebirth"))
o5 = pX_1(p0_2:WaitForChild("EquipBestPets"))
oY = pX_1(p0_2:WaitForChild("EquipBestArmor"))
oS = pX_1(p0_2:WaitForChild("EquipBestRunes"))
local pT = pX_1(p0_2:WaitForChild("WebShooters"))
pQ = pX_1(pT:WaitForChild("PurchaseWithWins"))
pK = pX_1(pT:WaitForChild("Equip"))
pH = require(pX_1(p__1:WaitForChild("TeleportConfig")))
local p1 = require(pX_1(p__1:WaitForChild("GameModeConfig")))
pt = require(pX_1(p__1:WaitForChild("TargetPracticeConfig")))
po = require(pX_1(p__1:WaitForChild("WebShooterConfig")))
pj = require(pX_1(pY_2:WaitForChild("RebirthConfig")))
pe = require(pX_1(pY_2:WaitForChild("SuitConfig")))
o9 = pX_1(Workspace:WaitForChild("Stages"))
o1 = pX_1(Workspace:WaitForChild("TargetPractices"))
oX = {}
local pT_1 = tonumber(p1.MaxActiveStage) or 25
pr = {}
px = pT_1
local qb = 1
local p9 = px
while qb <= p9 do
    local qc = qb
    table.insert(pr, "Stage " .. qc)
    qb += 1
end
pV_3, pU_2, o6, oZ = nil, nil, nil, nil
local pT_2 = 2
repeat
    if (not pV_3 or not pT_2) and (o6 and not pT_2) and ((not pV_3 or not o6) and (not pU_2 or pT_2)) or ((pV_3 or not oZ) and (not pT_2 and not oZ) or (not pU_2 and not pT_2 or pU_2 and oZ)) or (pV_3 or not pU_2 or (not pT_2 or oZ)) and (pU_2 or o6 or (o6 or not oZ)) and (not o6 and not oZ and (o6 and o6) or (pU_2 or not pT_2 or not pT_2 and pV_3)) or not ((not pV_3 or not pT_2) and (o6 and not pT_2) and ((not pV_3 or not o6) and (not pU_2 or pT_2)) or ((pV_3 or not oZ) and (not pT_2 and not oZ) or (not pU_2 and not pT_2 or pU_2 and oZ)) or (pV_3 or not pU_2 or (not pT_2 or oZ)) and (pU_2 or o6 or (o6 or not oZ)) and (not o6 and not oZ and (o6 and o6) or (pU_2 or not pT_2 or not pT_2 and pV_3))) then
        pV_3 = {
            TargetPractice4 = "OwnsTP4",
            TargetPractice7 = "OwnsTP7",
            TargetPractice10 = "OwnsTP10",
            TargetPractice11 = "OwnsTP11"
        }
        pU_2 = {}
        o6 = {}
        oZ = {}
    else
        pU_2 = {
            TargetPractice4 = "OwnsTP4",
            TargetPractice7 = "OwnsTP7",
            TargetPractice11 = "OwnsTP11",
            TargetPractice10 = "OwnsTP10"
        }
        o6 = {}
        oZ = {}
        pV_3 = {}
    end
    pT_2 = (pT_2 + 7) % 8
until (pT_2 * 3 + 4) % 8 == 7
local pW_2 = {}
for k in pt do
    table.insert(pW_2, k)
end
local pX_2 = nil
local pT_3 = 3
repeat
    if (pT_3 * 3 + 9) * 13 % 4 == ((pT_3 * 3 + 9) * 13 + 11) % 4 then
        table.sort(pX_2, fn377)
        pW_2 = {}
    else
        table.sort(pW_2, fn377)
        pX_2 = {}
    end
    pT_3 = (pT_3 + 0) % 8
until (pT_3 * 7 + 0) % 8 == 5
for k, v in pW_2 do
    local pT_4 = pt[v]
    local pW_3 = tonumber(pT_4.PowerMultiplier) or 1
    local pW_4 = "x" .. tostring(pW_3)
    if pX_2[pW_4] then
        pW_4 = pW_4 .. " " .. v
    end
    pX_2[pW_4] = true
    local pY_4 = tonumber(pT_4.RequiredRebirths) or 0
    local pT_5 = { Name = v, Label = pW_4, RequiredRebirths = pY_4, OwnsAttr = pV_3[v] }
    table.insert(pU_2, pT_5)
    o6[pW_4] = pT_5
    table.insert(oZ, pW_4)
end
pS, pm, pN, o8, pM, pC, pq, pg, o4, pJ, pA, oW, pw, pL, pa, pF, o_, pp, o3, pO, oV, oT, pu, pf, py, o0, oR, pd, pE, ph, pB, oU, o2, o7, pb, pP, pR, pl, p6_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pS = {
    Unloaded = false,
    Enabled = {
        Click = false,
        Farm = false,
        Rebirth = false,
        Train = false,
        BestUpgrade = false,
        WebShooters = false,
        BestPets = false,
        BestGear = false
    },
    Stage = 1,
    TrainLabel = oZ[1],
    Arrived = false,
    LastStream = 0
}
pN = fn110
o8 = fn512
pM = fn132
pC = fn574
pq = fn710
pg = fn576
o4 = fn579
pJ = fn88
pA = function(aS)
    if typeof(aS) ~= "Vector3" then
        return
    end
    local qO = os.clock()
    if qO - pS.LastStream < 0.45 then
        return
    end
    pS.LastStream = qO
    pcall(function()
        LocalPlayer:RequestStreamAroundAsync(aS)
    end)
end
oW = fn459
pw = fn361
pL = fn713
pa = fn405
pF = fn267
o_ = fn33
pp = fn133
o3 = fn583
pO = fn423
oV = fn386
oT = fn690
pu = fn378
pf = fn388
py = fn190
o0 = fn782
oR = fn734
pd = fn788
pE = fn554
ph = fn167
pB = fn743
fn413(p3_2.OnClientEvent, fn678)
oU = fn40
o2 = fn676
o7 = fn893
pb = fn831
pP = fn834
pR = fn231
local function worker6()
    local tC = false
    repeat
        if not pS.Unloaded then
            if pS.Enabled.WebShooters then
                local tv = o7()
                if tv then
                    pcall(function()
                        pQ:InvokeServer(tv)
                    end)
                    task.wait(0.7)
                else
                    local tw = o2()
                    local attr = LocalPlayer:GetAttribute("EquippedWebShooter")
                    if tw and tw ~= attr then
                        pcall(function()
                            pK:InvokeServer(tw)
                        end)
                        task.wait(0.7)
                    else
                        task.wait(0.8)
                    end
                end
            else
                task.wait(0.4)
            end
        else
            tC = true
        end
    until tC
end
pl = fn435
if (not pw and pw and (not o_ or pa) or (not pl or not pl or (o_ or pw))) and ((pa and pl or (not pl or pl)) and (not pl and pl or not pl and not pw)) or not ((not pw and pw and (not o_ or pa) or (not pl or not pl or (o_ or pw))) and ((pa and pl or (not pl or pl)) and (not pl and pl or not pl and not pw))) then
    p6_1 = fn71
else
    pd = fn71
end
task.spawn(worker)
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(worker6)
task.spawn(p6_1)
pm = {}
pm.State = pS
pm.SetEnabled = fn626
pm.SetStage = fn149
pm.SetTrain = fn853
pm.Options = fn868
pm.Unload = fn344
getgenv()[pn] = pm
local function p5()
    local x9
    local yc
    local Library
    local onDiscord
    local Unload
    x9 = nil
    yc = nil
    onDiscord = nil
    Library = nil
    Unload = nil
    local UserInputService, Options, SaveManager, TeleportService, yg, Toggles, yk, yl, ym, ThemeManager
    yk = "+1 Spider Evolution"
    ym = "https://ouroboros-hub-rbx.web.app/"
    UserInputService = game:GetService("UserInputService")
    yc = "https://discord.gg/ehKVq7pf7v"
    TeleportService = game:GetService("TeleportService")
    yg = "https://rscripts.net/@Ouroboros"
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = Library.Toggles
    Options = Library.Options
    Unload = pm.Unload
    pm.Unload = function()
        if not Library.Unloaded then
            Library:Unload()
        else
            Unload()
        end
    end
    Library:OnUnload(Unload)
    x9 = function(gt, gu)
        if setclipboard then
            setclipboard(gt)
        elseif toclipboard then
            toclipboard(gt)
        end
        Library:Notify(gu)
    end
    onDiscord = function()
        x9(yc, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = yc, Copyable = true }, "|", yk },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(true, { Color = Color3.fromRGB(242, 154, 196), Radius = 24, Transparency = 0.3 })
    yl = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "gamepad-2"),
        Shop = Window:AddTab("Shop", "shopping-cart"),
        Player = Window:AddTab("Player", "person-standing"),
        Settings = Window:AddTab("Settings", "settings")
    }
    local function yo_1(gC)
        local DiscordGroup = gC:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    for k, v in yl do
        if k ~= "Info" then
            yo_1(v)
        end
    end
    local yo_2 = pm.Options()
    local FarmGroup = yl.Main:AddLeftGroupbox("Farm", "trophy")
    FarmGroup:AddToggle("AutoClick", {
        Text = "Auto Click",
        Default = false,
        Callback = function(gJ)
            pm.SetEnabled("Click", gJ)
        end
    })
    FarmGroup:AddToggle("AutoFarm", {
        Text = "Auto Farm",
        Default = false,
        Callback = function(gL)
            pm.SetEnabled("Farm", gL)
        end
    })
    FarmGroup:AddDropdown("FarmStage", {
        Text = "Stage",
        Values = yo_2.Stages,
        Default = 1,
        Callback = function(gN)
            pm.SetStage(gN)
        end
    })
    FarmGroup:AddToggle("AutoRebirth", {
        Text = "Auto Rebirth",
        Default = false,
        Callback = function(gP)
            pm.SetEnabled("Rebirth", gP)
        end
    })
    local TrainGroup = yl.Main:AddRightGroupbox("Train", "target")
    TrainGroup:AddToggle("AutoTrain", {
        Text = "Auto Train",
        Default = false,
        Callback = function(gS)
            pm.SetEnabled("Train", gS)
        end
    })
    TrainGroup:AddDropdown("TrainPad", {
        Text = "Target Practice",
        Values = yo_2.Train,
        Default = 1,
        Callback = function(gU)
            pm.SetTrain(gU)
        end
    })
    local BuyGroup = yl.Shop:AddLeftGroupbox("Buy", "shopping-bag")
    BuyGroup:AddToggle("AutoWebShooters", {
        Text = "Auto Buy Web Shooters",
        Default = false,
        Callback = function(gX)
            pm.SetEnabled("WebShooters", gX)
        end
    })
    local EquipGroup = yl.Shop:AddRightGroupbox("Equip", "backpack")
    EquipGroup:AddToggle("AutoBestUpgrade", {
        Text = "Auto Equip Best Upgrade",
        Default = false,
        Callback = function(g_)
            pm.SetEnabled("BestUpgrade", g_)
        end
    })
    EquipGroup:AddToggle("AutoBestPets", {
        Text = "Auto Equip Best Pets",
        Default = false,
        Callback = function(g1)
            pm.SetEnabled("BestPets", g1)
        end
    })
    EquipGroup:AddToggle("AutoBestGear", {
        Text = "Auto Equip Best Gear",
        Default = false,
        Callback = function(g3)
            pm.SetEnabled("BestGear", g3)
        end
    })
    local function yo_5()
        local u1
        local uY
        local u0
        local uX
        local u5
        local u3
        uX = nil
        uY = nil
        u0 = nil
        u1 = nil
        u3 = nil
        u5 = nil
        local Label3, Label2, u2, Label, u6, u7
        u5 = function(g7, g8)
            return string.format('<font color="%s">%s</font>', g8, g7)
        end
        u7 = function(ha, hb, hc)
            return string.format("<b>%s</b> %s %s", ha, u5("-", "#5a6070"), u5(hb, hc))
        end
        uX = "#e05a5a"
        local u8 = "#8b93a3"
        u3 = "#7fd47f"
        u0 = "#e8a34d"
        local function va()
            local ub = hookfunction ~= nil
            local uc = hookmetamethod ~= nil
            local ud = getrawmetatable ~= nil
            local ue = setrawmetatable ~= nil
            local uf = getgc ~= nil
            local ug = getgenv ~= nil
            local uh = getreg ~= nil
            local ui = getconnections ~= nil
            local uj = firesignal ~= nil
            local uk = getcallbackvalue ~= nil
            local ul = setclipboard ~= nil
            local um = getcustomasset ~= nil
            local un = getnamecallmethod ~= nil
            local uo = isexecutorclosure ~= nil
            local up = fireproximityprompt ~= nil
            local uq = firetouchinterest ~= nil
            local ur = WebSocket ~= nil
            local us = readfile ~= nil
            local ut = writefile ~= nil
            local uv = (request or http_request) ~= nil
            local ux = (debug and debug.getupvalues) ~= nil
            local uz = (debug and debug.setupvalue) ~= nil
            local uA = 0
            local uB = { ub, uc, ud, ue, uf, ug, uh, ui, uj, uk, ul, um, un, uo, up, uq, ur, us, ut, uv, ux, uz }
            for i, v in ipairs(uB) do
                if v then
                    uA += 1
                end
            end
            local ub_1 = uA / #uB
            if ub_1 >= 0.9 then
                return u5("Full Support", u3)
            elseif ub_1 >= 0.6 then
                return u5("Half Support", u0)
            else
                return u5("Low Support", uX)
            end
        end
        uY = "Unknown"
        pcall(function()
            local uN_1
            local uM_1
            if identifyexecutor then
                uN_1, uM_1 = identifyexecutor()
                local uO = uN_1 ~= ""
                local uP = type(uN_1) == "string" and uO
                if uP then
                    local uO_1 = type(uM_1) == "string" and uM_1 ~= "" and uN_1 .. " " .. uM_1
                    uY = uO_1 or uN_1
                end
            end
        end)
        local vb = va()
        u1 = os.clock()
        u6 = function()
            local uR = math.floor(os.clock() - u1)
            if uR < 60 then
                return uR .. "s"
            elseif uR < 3600 then
                return string.format("%dm %ds", uR // 60, uR % 60)
            else
                return string.format("%dh %dm", uR // 3600, uR % 3600 // 60)
            end
        end
        local UserGroup = yl.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(u7("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, u3), true)
        UserGroup:AddLabel(u7("UserId", tostring(LocalPlayer.UserId), "#6ec1ff"), true)
        UserGroup:AddLabel(u7("Executor", uY .. "  " .. vb, u3), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(u7("Session", u6(), u0), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                x9(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                x9("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = yl.Info:AddRightGroupbox("Session", "signal")
        SessionGroup:AddDivider("Server")
        SessionGroup:AddLabel(u7("Game", yk, "#6ec1ff"), true)
        Label2 = SessionGroup:AddLabel(u7("Players", "0/0", u3), true)
        u2 = tostring(game.JobId)
        local u9 = #u2 > 18 and string.sub(u2, 1, 18) .. "..."
        local vb_1 = u9 or u2
        SessionGroup:AddLabel(u7("Job", vb_1, u8), true)
        Label = SessionGroup:AddLabel(u7("Ping", "0 ms", u0), true)
        SessionGroup:AddDivider()
        SessionGroup:AddButton({
            Text = "Rejoin Server",
            Func = function()
                TeleportService:Teleport(game.PlaceId, LocalPlayer)
            end
        })
        SessionGroup:AddButton({
            Text = "Copy Job ID",
            Func = function()
                x9(u2, "Copied Job ID")
            end
        })
        task.spawn(function()
            local uU_1
            local uT_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(u7("Session", u6(), u0))
                Label2:SetText(u7("Players", #oQ:GetPlayers() .. "/" .. tostring(oQ.MaxPlayers), u3))
                uT_1, uU_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local uT_2 = uT_1 and uU_1 .. " ms" or "n/a"
                Label:SetText(u7("Ping", uT_2, u0))
            end
        end)
        local SocialsGroup = yl.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                x9(yg, "Copied Rscripts profile to clipboard")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                x9(ym, "Copied website link")
            end
        })
    end
    yo_5()
    local function yo_6()
        local iz
        local iy
        local iw
        local ix
        local MovementGroup = yl.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = yl.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        ix = {}
        iz = {}
        local iv = {}
        iy = {}
        iw = {}
        local function iA()
            for k, v in iw do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(iw)
        end
        local function iE()
            for k, v in ix do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(ix)
        end
        local function iI()
            for k, v in iy do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(iy)
        end
        local function iM(iN)
            if not iN:IsA("ProximityPrompt") then
                return
            end
            if iz[iN] == nil then
                iz[iN] = {
                    HoldDuration = iN.HoldDuration,
                    MaxActivationDistance = iN.MaxActivationDistance,
                    RequiresLineOfSight = iN.RequiresLineOfSight
                }
            end
            iN.HoldDuration = 0
            iN.MaxActivationDistance = 50
            iN.RequiresLineOfSight = false
        end
        local function iP()
            for k, v in iz do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(iz)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                iI()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                iE()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                iA()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                    pcall(iM, v)
                end
            else
                iP()
            end
        end)
        table.insert(iv, Workspace.DescendantAdded:Connect(function(i7)
            if Toggles.InstantProximityPrompt.Value then
                iM(i7)
            end
        end))
        table.insert(iv, RunService.Stepped:Connect(function()
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if iw[v] == nil then
                        iw[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(iv, UserInputService.JumpRequest:Connect(function()
            local Character = LocalPlayer.Character
            local v6 = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and v6 then
                v6:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(iv, RunService.RenderStepped:Connect(function(jp)
            local Character = LocalPlayer.Character
            local v9 = Character and Character:FindFirstChildOfClass("Humanoid")
            local wa = Character
            if wa then
                wa = Character:FindFirstChild("HumanoidRootPart")
            end
            local v8_1 = wa
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and v9 then
                if ix[v9] == nil then
                    ix[v9] = v9.WalkSpeed
                end
                v9.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and v8_1 and v9 and CurrentCamera then
                if iy[v9] == nil then
                    iy[v9] = v9.PlatformStand
                end
                v9.PlatformStand = true
                local wa_4 = Vector3.zero
                local wg = if not UserInputService:GetFocusedTextBox() then 1 else 0
                if wg == 1 then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        wa_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        wa_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        wa_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        wa_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        wa_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        wa_4 -= Vector3.new(0, 1, 0)
                    end
                end
                v8_1.AssemblyLinearVelocity = Vector3.zero
                if wa_4.Magnitude > 0 then
                    v8_1.CFrame = v8_1.CFrame + wa_4.Unit * Options.FlySpeed.Value * jp
                end
            end
        end))
        Library:OnUnload(function()
            for k, v in iv do
                v:Disconnect()
            end
            iA()
            iE()
            iI()
            iP()
        end)
    end
    yo_6()
    local function yo_7()
        local kk
        local jK
        local GuiService = game:GetService("GuiService")
        local CoreGui = game:GetService("CoreGui")
        local VirtualUser = game:GetService("VirtualUser")
        jK = {}
        local jJ = {}
        local Lighting = game:GetService("Lighting")
        local jL
        local jN = 0
        local jM = false
        local jO = os.clock()
        local MenuGroup = yl.Settings:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        local Label = MenuGroup:AddLabel("AFK triggers: 0")
        local function jS()
            local CurrentCamera = Workspace.CurrentCamera
            if not CurrentCamera then
                return
            end
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.zero, CurrentCamera.CFrame)
            jN += 1
            jO = os.clock()
            Label:SetText("AFK triggers: " .. jN)
        end
        local function onAntiGameplayPause(j0)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not j0)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not j0
                end
            end)
            if j0 then
                pcall(function()
                    if sethiddenproperty then
                        sethiddenproperty(LocalPlayer, "GameplayPaused", false)
                    else
                        LocalPlayer.GameplayPaused = false
                    end
                end)
            end
        end
        local function kb()
            for k, v in jK do
                local wB = k
                local wD = v
                if wB.Parent then
                    pcall(function()
                        wB.Enabled = wD
                    end)
                end
            end
            table.clear(jK)
            if jL then
                pcall(function()
                    settings().Rendering.QualityLevel = jL.Quality
                end)
                Lighting.GlobalShadows = jL.Shadows
                Lighting.FogEnd = jL.Fog
                jL = nil
            end
        end
        kk = { ParticleEmitter = true, Trail = true, Smoke = true, Fire = true, Sparkles = true, Beam = true }
        local function kl(km)
            if kk[km.ClassName] then
                if jK[km] == nil then
                    jK[km] = km.Enabled
                end
                km.Enabled = false
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true, Callback = onAntiGameplayPause })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(kp)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not kp)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(kv)
                if kv then
                    if not jL then
                        jL = {
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
                    for i, descendant in Workspace:GetDescendants() do
                        pcall(kl, descendant)
                    end
                else
                    kb()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        local ScriptGroup = yl.Settings:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        table.insert(jJ, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value then
                pcall(jS)
            end
        end))
        table.insert(jJ, Workspace.DescendantAdded:Connect(function(kK)
            if Toggles.FpsBoost.Value then
                kl(kK)
            end
        end))
        local function kN(kO)
            if jM or Library.Unloaded or not Toggles.AutoReconnect.Value then
                return
            end
            jM = true
            local wS_1 = pcall(function()
                if kO then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not wS_1 then
                jM = false
                if not kO then
                    kN(true)
                end
            end
        end
        table.insert(jJ, TeleportService.TeleportInitFailed:Connect(function(k0)
            if k0 == LocalPlayer and jM then
                jM = false
                task.delay(3, function()
                    kN(true)
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local w0 = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not w0 then
                return
            end
            table.insert(jJ, w0.ChildAdded:Connect(function(lb)
                if lb.Name == "ErrorPrompt" then
                    kN(false)
                end
            end))
        end)
        task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    onAntiGameplayPause(true)
                end
                local w6 = Toggles.AntiAfk.Value and os.clock() - jO >= 60
                if w6 then
                    pcall(jS)
                end
                task.wait(1)
            end
        end)
        Library:OnUnload(function()
            for k, v in jJ do
                v:Disconnect()
            end
            onAntiGameplayPause(false)
            kb()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    yo_7()
    local function yo_8()
        local x3, x4, x5, x6
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("OuroborosHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(yl.Settings)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/SpiderEvolution")
        local x7 = SaveManager:BuildConfigSection(yl.Settings)
        x3 = function(ly, lz)
            local xg_1 = (ly == "Toggle" and Toggles or Options)[lz]
            local xf_2 = type(xg_1) == "table" and xg_1.Type == ly
            return xf_2 and xg_1 or nil
        end
        x5 = function(lI, lJ)
            local Type = lJ.Type
            if Type == "Toggle" then
                return { idx = lI, type = "Toggle", value = lJ.Value == true }
            elseif Type == "Slider" then
                return { idx = lI, type = "Slider", value = tostring(lJ.Value) }
            elseif Type == "Dropdown" then
                return { idx = lI, type = "Dropdown", multi = lJ.Multi == true, value = lJ.Value }
            elseif Type == "Input" then
                local xn = lJ.Value or ""
                return { idx = lI, type = "Input", text = tostring(xn) }
            elseif Type == "ColorPicker" then
                return { idx = lI, type = "ColorPicker", value = lJ.Value:ToHex(), transparency = lJ.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = lI,
                    type = "KeyPicker",
                    mode = lJ.Mode,
                    key = lJ.Value,
                    modifiers = lJ.Modifiers,
                    toggled = lJ.Toggled
                }
            else
                return nil
            end
        end
        x4 = function()
            local xq = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local xr = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if xr then
                        local xr_1 = x5(k, v)
                        if xr_1 then
                            xq[#xq + 1] = xr_1
                        end
                    end
                end
            end
            table.sort(xq, function(lT, lU)
                if lT.type ~= lU.type then
                    return lT.type < lU.type
                end
                return lT.idx < lU.idx
            end)
            return { objects = xq }
        end
        x6 = function(lW)
            local xK
            xK = nil
            local xL = type(lW) ~= "table" or type(lW.idx) ~= "string" or type(lW.type) ~= "string" or SaveManager.Ignore[lW.idx]
            if xL then
                return false
            end
            xK = x3(lW.type, lW.idx)
            if not xK then
                return false
            end
            local xL_1 = pcall(function()
                if lW.type == "Input" then
                    if type(lW.text) ~= "string" then
                        return
                    end
                    xK:SetValue(lW.text)
                elseif lW.type == "ColorPicker" then
                    xK:SetValueRGB(Color3.fromHex(lW.value), lW.transparency)
                elseif lW.type == "KeyPicker" then
                    xK:SetValue({ lW.key, lW.mode, lW.modifiers })
                    if lW.mode == "Toggle" and lW.toggled ~= nil then
                        xK.Toggled = lW.toggled
                        xK:Update()
                    end
                else
                    xK:SetValue(lW.value)
                end
            end)
            return xL_1
        end
        x7:AddDivider()
        x7:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        x7:AddButton("Export Config to Clipboard", function()
            local xO_1
            local xN_1
            xN_1, xO_1 = pcall(HttpService.JSONEncode, HttpService, x4())
            if not xN_1 then
                Library:Notify("Failed to encode the config")
                return
            end
            local xN_2 = setclipboard or toclipboard
            local xN_3 = type(xN_2) ~= "function"
            local xT = if xN_3 then 1 else 0
            local xR = 265 * xT + 2334 * (1 - xT)
            local xS = 128 * xT + 3592 * (1 - xT)
            if not ((xR * 273 + xS * 2398 + xR * xS) % 16777213 == 413209) then
                xN_3 = not pcall(xN_2, xO_1)
            end
            if xN_3 then
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Config copied to clipboard", 6)
        end)
        x7:AddButton("Import Config from Clipboard Text", function()
            local xW_1
            local xU = Options.SaveManager_ImportSource.Value or ""
            local xU_1
            local xV = tostring(xU):match("^%s*(.-)%s*$")
            if xV == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            xU_1, xW_1 = pcall(HttpService.JSONDecode, HttpService, xV)
            local xV_1 = not xU_1 or type(xW_1) ~= "table" or type(xW_1.objects) ~= "table"
            if xV_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            local xU_2 = 0
            for i, v in ipairs(xW_1.objects) do
                if x6(v) then
                    xU_2 += 1
                end
            end
            if xU_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local xW_2 = xU_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(xU_2, xW_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    yo_8()
end
p5()
