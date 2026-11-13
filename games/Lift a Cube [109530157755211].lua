local o2
local oH
local om
local oK
local op
local n8
local ox
local LocalPlayer
local oA
local oW
local oe
local oZ
local o1
local oG
local ol
local oJ
local oo
local oM
local ot
local oP
local n7
local State
local ow
local oV
local od
local oC
local oY
local oF
local o0
local oj
local oL
local oq
local oO
local ov
local n9
local oy
local oc
local oX
local of
local oE
local function fn23()
    local rJ = ox()
    if not rJ then
        return
    end
    local rK = oX()
    local rL = rK and rK.Arms
    local rK_1 = rL
    if rL then
        rL = type(rK_1.owned) == "table"
    end
    if rL then
        rL = rK_1.owned
    end
    local rN = rL or {}
    local rM_1 = n7()
    local rW = 1
    while rW <= 10 do
        local rX = rW
        local rN_1 = od[rX]
        local rO = type(rN_1) == "table" and rN[rX] ~= true
        if rO then
            local rO_1 = tonumber(rN_1.Price) or 0
            if rM_1 >= rO_1 then
                local rN_3 = rJ:FindFirstChild(tostring(rX))
                local rO_2 = rN_3 and rN_3:FindFirstChild("Main")
                local rO_3 = typeof(rO_2) == "Instance" and rO_2:IsA("BasePart")
                if rO_3 then
                    oV(rO_2.Position + Vector3.new(0, 3, 0))
                    task.wait(0.08)
                    local rO_4 = not of() or not State.Enabled.BuySpeed
                    if rO_4 then
                        return
                    end
                    oj(rO_2)
                    local rN_5 = os.clock() + 1.4
                    while true do
                        local rO_5 = of() and State.Enabled.BuySpeed and os.clock() < rN_5
                        if rO_5 then
                            local rO_6 = n7() < rM_1
                            if not rO_6 then
                                local rP = rK_1 and rK_1.owned
                                if rP then
                                    rP = rK_1.owned[rX] == true
                                end
                                rO_6 = rP
                            end
                            if rO_6 then
                                break
                            end
                            task.wait(0.1)
                            continue
                        end
                        break
                    end
                    return
                end
            end
        end
        rW += 1
    end
    task.wait(0.45)
end
local function fn91(a4, a5)
    local qn = a5 and a5:FindFirstChild("CubeName", true)
    local qo = qn
    if qn then
        qn = type(qo.Text) == "string"
    end
    if qn then
        qn = qo.Text
    end
    local qo_1 = qn or nil
    if qo_1 and qo_1 ~= "" then
        return qo_1
    end
    local qn_2 = oM[a4] or ("Cube %*"):format(a4)
    return qn_2
end
local function fn99(V)
    local pU = typeof(cloneref) == "function" and typeof(V) == "Instance"
    if pU then
        return cloneref(V)
    end
    return V
end
local function worker()
    while of() do
        if State.Enabled.Bonus then
            oP()
        else
            task.wait(0.2)
        end
    end
end
local function fn180()
    gethui = o0
end
local function worker5()
    while of() do
        if State.Enabled.Lift then
            oe()
        else
            task.wait(0.2)
        end
    end
end
local function worker2()
    while of() do
        if State.Enabled.Train then
            ov()
        else
            task.wait(0.2)
        end
    end
end
local function fn225()
    local rZ = oX()
    local r_ = rZ and rZ.Roll
    local rZ_1 = r_
    if r_ then
        r_ = oq(rZ_1.Play)
    end
    if r_ then
        r_ = oq(rZ_1.Buy)
    end
    if r_ then
        r_ = oq(rZ_1.Next)
    end
    if not r_ then
        local r__1 = oc()
        local r0_1 = r__1 and r__1:FindFirstChildWhichIsA("ProximityPrompt")
        if State.Enabled.Roll then
            if r__1 then
                oV(r__1.Position + Vector3.new(0, 3, 0))
            end
            oo(r0_1)
        end
        task.wait(0.35)
        return
    end
    if rZ_1.rolling or rZ_1.buying then
        task.wait(0.12)
        return
    end
    if rZ_1.pending then
        if State.Enabled.BuyRoll then
            local r__3 = n8[rZ_1.pending]
            local r0_2 = r__3 and tonumber(r__3.Price)
            local r__4 = r0_2 or math.huge
            if n7() >= r__4 then
                pcall(rZ_1.Buy, rZ_1)
            else
                pcall(rZ_1.Next, rZ_1)
            end
            task.wait(0.2)
            return
        elseif State.Enabled.Roll then
            pcall(rZ_1.Next, rZ_1)
            task.wait(0.2)
            return
        else
            task.wait(0.25)
            return
        end
    end
    if State.Enabled.Roll then
        local r__5 = oc()
        if r__5 then
            oV(r__5.Position + Vector3.new(0, 3, 0))
            task.wait(0.08)
        end
        local r__6 = not of() or not State.Enabled.Roll
        if r__6 then
            return
        end
        pcall(rZ_1.Play, rZ_1)
        task.wait(0.2)
        return
    end
    task.wait(0.25)
end
local function fn302()
    State.Enabled.Lift = false
    State.Enabled.BuySpeed = false
    State.Enabled.Roll = false
    State.Enabled.BuyRoll = false
    State.Enabled.Train = false
    State.Enabled.Bonus = false
    State.LiftBusy = false
end
local function fn312()
    local qk = n9()
    local ql = qk and qk:FindFirstChild("Points")
    local qk_1 = ql
    if ql then
        ql = qk_1:FindFirstChild("Roll")
    end
    return ql
end
local function fn319()
    return not oG.Unloaded
end
local function fn320()
    for k, v in oJ do
        pcall(task.cancel, v)
    end
end
local function fn348(Y)
    return type(Y) == "function"
end
local function fn370()
    return ow
end
local function fn382()
    local World = oy:FindFirstChild("World")
    local p9 = World and World:FindFirstChild("Shared")
    return p9
end
local function fn388()
    oZ()
    return { Cubes = oC }
end
local function worker3()
    while of() do
        if State.Enabled.Roll or State.Enabled.BuyRoll then
            op()
        else
            task.wait(0.2)
        end
    end
end
local function fn430()
    local qe = n9()
    local qf = qe and qe:FindFirstChild("Arms")
    return qf
end
local function fn469()
    local qE = type(ot) == "table" and type(ot.controllers) == "table"
    if qE then
        return ot.controllers
    end
    if not oE then
        return nil
    end
    local qE_1 = os.clock()
    if qE_1 - om < 0.35 then
        return nil
    end
    om = qE_1
    local qE_2 = oE("table", { Keys = { "data_replica", "controllers" } }, true)
    local qF = type(qE_2) == "table" and type(qE_2.controllers) == "table"
    if qF then
        ot = qE_2
        return qE_2.controllers
    end
end
local function fn543(ev, ew)
    State.Enabled[ev] = ew == true
    if ev == "Lift" and not State.Enabled.Lift then
        State.LiftBusy = false
    end
end
local function fn545()
    local qZ_1
    local qY_1
    qY_1, qZ_1 = oL()
    local q_ = qY_1 and qY_1:FindFirstChild("Train")
    local qY_2 = q_
    if q_ then
        q_ = qY_2:IsA("Tool")
    end
    if q_ then
        q_ = qY_2:GetAttribute("TrainTool") == true
    end
    if q_ then
        return qY_2, qZ_1
    end
    local Backpack = LocalPlayer:FindFirstChild("Backpack")
    local q__1 = Backpack and Backpack:FindFirstChild("Train")
    local qY_4 = q__1
    if q__1 then
        q__1 = qY_4:IsA("Tool")
    end
    if q__1 then
        q__1 = qY_4:GetAttribute("TrainTool") == true
    end
    if q__1 then
        return qY_4, qZ_1
    end
end
local function fn615()
    local q6_1
    local q4 = oX()
    local q5 = q4 and q4.Cubes
    local q5_1
    local q4_1 = q5
    if q5 then
        q5 = oq(q4_1.IsLifting)
    end
    if q5 then
        q5_1, q6_1 = pcall(q4_1.IsLifting, q4_1)
        if q5_1 then
            return q6_1 == true or q4_1.active ~= nil
        end
        return State.LiftBusy == true
    end
    return State.LiftBusy == true
end
local function fn698()
    local p0 = tonumber(LocalPlayer:GetAttribute("Strength")) or 0
    return p0
end
local function fn713()
    local pW = (tonumber(LocalPlayer:GetAttribute("Cash")))
    local p_ = if pW then 1 else 0
    local pY = 3149 * p_ + 2339 * (1 - p_)
    local pZ = 3750 * p_ + 2055 * (1 - p_)
    if not ((pY * 2022 + pZ * 1078 + pY * pZ) % 16777213 == 5441315) then
        pW = 0
    end
    return pW
end
local function fn719()
    local Character = LocalPlayer.Character
    local p3 = Character and Character:FindFirstChildOfClass("Humanoid")
    local p4 = Character
    if p4 then
        p4 = Character:FindFirstChild("HumanoidRootPart")
    end
    local p3_1 = Character
    local p6 = p4
    if p3_1 then
        p3_1 = p3
    end
    if p3_1 then
        p3_1 = p6
    end
    if p3_1 then
        p3_1 = p3.Health > 0
    end
    if p3_1 then
        return Character, p3, p6
    end
end
local function fn742()
    local sb = oX()
    local sb_2
    local sc = sb and sb.Pops
    local sb_1 = sc
    if sc then
        sc = type(sb_1.live) == "table"
    end
    if sc then
        sc = oq(sb_1._Claim)
    end
    if not sc then
        task.wait(0.3)
        return
    end
    local sc_1 = false
    for k, v in sb_1.live do
        local sd_1 = type(v) == "table" and v.Rare ~= true
        if sd_1 then
            pcall(sb_1._Claim, sb_1, k)
            sc_1 = true
        end
    end
    local wait = task.wait
    if sc_1 then
        sb_2 = 0.12
    else
        sb_2 = 0.3
    end
    wait(sb_2)
end
local function fn792(cn)
    local MinimumTime = oY.MinimumTime
    local rc = oW()
    local rd = tonumber(cn) or 0
    local re = MinimumTime(rc, rd)
    local rb_1 = type(re) ~= "number" or re ~= re or re >= 100000000
    if rb_1 then
        re = 0.5
    end
    return math.max(re * 1.25, re + 0.12)
end
local function fn809()
    local qb = n9()
    local qc = qb and qb:FindFirstChild("Cubes")
    return qc
end
local function fn818(ct, cu)
    local max = math.max
    local rh = (tonumber(o2.MaxRate))
    local rr = if rh then 1 else 0
    local rp = 3240 * rr + 1573 * (1 - rr)
    local rq = 1261 * rr + 2935 * (1 - rr)
    if not ((rp * 1996 + rq * 3151 + rp * rq) % 16777213 == 14526091) then
        rh = 20
    end
    local rg_1 = 1 / max(1, rh)
    local rh_1 = o1(cu)
    local ri = os.clock()
    local min = math.min
    local rk = tonumber(o2.Timeout) or 60
    local rj_1 = ri + min(rk, math.max(8, rh_1 + 4))
    while true do
        local ri_1 = of() and State.Enabled.Lift and os.clock() < rj_1
        if ri_1 then
            local active = ct.active
            if type(active) ~= "table" then
                break
            end
            local rk_1 = tonumber(active.Elapsed) or 0
            local rk_2 = tonumber(active.Gain) or 0
            local rk_3 = tonumber(active.Progress) or 0
            local rk_4 = rk_3 + rk_2
            if rk_1 < rh_1 then
                rk_4 = math.min(rk_4, 0.999)
            end
            active.Progress = rk_4
            task.wait(rg_1)
            local ri_3 = not of() or not State.Enabled.Lift
            if ri_3 then
                break
            end
            continue
        end
        break
    end
end
local function fn825(bB)
    local qN_1
    local qM_1
    local qL_1
    qL_1, qM_1, qN_1 = oL()
    local qL_2 = not qN_1 or typeof(bB) ~= "Vector3"
    if qL_2 then
        return
    end
    ol(bB)
    qN_1.CFrame = CFrame.new(bB)
    qN_1.AssemblyLinearVelocity = Vector3.zero
end
local function fn864(ez)
    local sq = oA[ez]
    if type(sq) == "number" then
        State.CubeLabel = ez
        State.CubeIndex = sq
    end
end
local function worker4()
    while of() do
        if State.Enabled.BuySpeed then
            oK()
        else
            task.wait(0.2)
        end
    end
end
local function fn946()
    table.clear(oC)
    table.clear(oA)
    local qr = oO()
    for k, v in oH do
        local qs = qr and qr:FindFirstChild(tostring(v))
        local qs_1 = (("%* %*"):format(v, (oF(v, qs))))
        table.insert(oC, qs_1)
        oA[qs_1] = v
    end
    if not oA[State.CubeLabel] then
        State.CubeLabel = oC[1]
        local qr_1 = oH[1] or 1
        State.CubeIndex = qr_1
    end
end
n7 = nil
n8 = nil
n9 = nil
LocalPlayer = nil
oc = nil
od = nil
oe = nil
of = nil
oj = nil
ol = nil
om = nil
oo = nil
op = nil
oq = nil
ot = nil
ov = nil
ow = nil
ox = nil
oy = nil
oA = nil
oC = nil
oE = nil
oF = nil
oG = nil
oH = nil
oJ = nil
oK = nil
oL = nil
oM = nil
oO = nil
oP = nil
State = nil
oV = nil
oW = nil
local Players, oa, Workspace, oh, oi, Lighting, ou, oz, oB, HttpService, VirtualUser, UserInputService, oQ, oR, RunService, oU
oX = nil
oY = nil
oZ = nil
o0 = nil
o1 = nil
o2 = nil
local o_
local o7_1
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, oB, ow, ou, Lighting, Workspace, LocalPlayer, o0 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
if (not Lighting and not o0 and (Lighting and Players) or (not o0 or Players) and (not LocalPlayer or not Lighting) and ((not Lighting or not o0) and (Players and Players))) and (not Players and not LocalPlayer or false or (o0 and Players or (not VirtualUser or Players)) or ((o0 or false) and (not LocalPlayer and VirtualUser) or (VirtualUser and o0 or LocalPlayer and LocalPlayer))) and not ((not Lighting and not o0 and (Lighting and Players) or (not o0 or Players) and (not LocalPlayer or not Lighting) and ((not Lighting or not o0) and (Players and Players))) and (not Players and not LocalPlayer or false or (o0 and Players or (not VirtualUser or Players)) or ((o0 or false) and (not LocalPlayer and VirtualUser) or (VirtualUser and o0 or LocalPlayer and LocalPlayer)))) then
    ou = game:GetService("GuiService")
    oB = game:GetService("CoreGui")
    ow = game:GetService("TeleportService")
else
    oB = game:GetService("GuiService")
    ow = game:GetService("CoreGui")
    ou = game:GetService("TeleportService")
end
Lighting = game:GetService("Lighting")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local o4 = "OuroborosLiftACube"
o0 = fn370
if getgenv then
    getgenv().gethui = o0
end
oG, o7_1, oh, oq = nil, nil, nil, nil
pcall(fn180)
local function o3(u)
    local pK
    local pI
    local pJ
    pI = nil
    pJ = nil
    pK = nil
    local pL = u ~= ""
    local pM = type(u) == "string" and pL
    assert(pM, "A namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    pI = getgenv()
    assert(type(pI) == "table", "getgenv did not return a table")
    local pL_1 = pI[u]
    if pL_1 ~= nil then
        local pM_1 = type(pL_1) == "table" and type(pL_1.Unload) == "function"
        assert(pM_1, "Namespace is occupied")
        pL_1.Unload()
        assert(pI[u] == nil, "Previous instance did not release its namespace")
    end
    pJ = {}
    pK = { State = {}, Unloaded = false }
    pK.Track = function(A)
        assert(type(A) == "function", "Cleanup must be callable")
        if pK.Unloaded then
            A()
        else
            table.insert(pJ, A)
        end
        return A
    end
    pK.Unload = function()
        local pB_1
        local pA_1
        if pK.Unloaded then
            return
        end
        pK.Unloaded = true
        local py = {}
        local pF = #pJ
        local pE = -1
        while false and pF <= 1 or true and pF >= 1 do
            local pG = pF
            local pz_1 = table.remove(pJ, pG)
            pA_1, pB_1 = pcall(pz_1)
            if not pA_1 then
                table.insert(py, tostring(pB_1))
            end
            pF += pE
        end
        table.clear(pK.State)
        if #py > 0 then
            error("Cleanup incomplete: " .. table.concat(py, "; "), 0)
        end
        if pI[u] == pK then
            pI[u] = nil
        end
    end
    pI[u] = pK
    return pK
end
oh = function(N, O)
    local pS = type(N) == "table" and type(N.Track) == "function"
    assert(pS, "FeatureAPI required")
    local pS_1 = type(O) == "table" and type(O.OnUnload) == "function"
    assert(pS_1, "UI library required")
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
oG = o3(o4)
if (oh and o7_1 or (oG or false) or false and (oh or not o3)) and ((o3 or oh) and (not o3 or not o7_1) and (not oG or oh or false and not o3)) and not ((oh and o7_1 or (oG or false) or false and (oh or not o3)) and ((o3 or oh) and (not o3 or not o7_1) and (not oG or oh or false and not o3))) then
else
    oq = fn348
end
local o7_2 = oq(firetouchinterest) and firetouchinterest
local o3_1 = o7_2
local pl = if o3_1 then 1 else 0
local pj = 2701 * pl + 258 * (1 - pl)
local pk = 3536 * pl + 952 * (1 - pl)
if not ((pj * 3524 + pk * 2072 + pj * pk) % 16777213 == 9618439) then
    o3_1 = nil
end
oa = nil
oa = o3_1
local o6 = oq(fireproximityprompt) and fireproximityprompt
local o3_2 = o6
local po = if o3_2 then 1 else 0
local pm = 3088 * po + 910 * (1 - po)
local pn = 2160 * po + 551 * (1 - po)
if not ((pm * 1721 + pn * 958 + pm * pn) % 16777213 == 14053808) then
    o3_2 = nil
end
o_ = nil
o_ = o3_2
local o6_1 = oq(mouse1click) and mouse1click
local o3_3 = o6_1 or nil
oQ = nil
oQ = o3_3
local o6_2 = oq(filtergc) and filtergc
local o3_4 = o6_2 or nil
oE, oy, oi, od, n8, o2, oY, State, oM, oH, oC, oA = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
oE = o3_4
local o9 = fn99(ReplicatedStorage)
oy = fn99(Workspace)
local o7_3 = fn99(o9:WaitForChild("Schematics"))
local o6_3 = fn99(o9:WaitForChild("Modules"))
oi = require(fn99(o7_3:WaitForChild("Cubes")))
od = require(fn99(o7_3:WaitForChild("Arms")))
n8 = require(fn99(o7_3:WaitForChild("Materials")))
o2 = require(fn99(o7_3:WaitForChild("Lifting")))
oY = require(fn99(o6_3:WaitForChild("Lifting")))
State = oG.State
State.Enabled = { Lift = false, BuySpeed = false, Roll = false, BuyRoll = false, Train = false, Bonus = false }
State.CubeIndex = 1
State.LiftBusy = false
oM = {
    [1] = "Wood Cube",
    [2] = "Stone Cube",
    [3] = "Cooper Cube",
    [4] = "Ice Cube",
    [5] = "Crystal Cube",
    [6] = "Golden Cube",
    [7] = "Magma Cube",
    [8] = "Plasma Cube",
    [9] = "Void Cube",
    [10] = "Singularity Cube"
}
oH = {}
oC = {}
oA = {}
local pr = 1
while pr <= 10 do
    local ps = pr
    if oi[ps] then
        table.insert(oH, ps)
    end
    pr += 1
end
ot, om, oJ, of, n7, oW, oL, n9, oO, ox, oc, oF, oZ, oX, ol, oV, oj, oo, oR, oU, o1, oz, oe, oK, op, ov, oP = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
table.sort(oH)
om = 0
of = fn319
n7 = fn713
oW = fn698
oL = fn719
n9 = fn382
oO = fn809
ox = fn430
oc = fn312
oF = fn91
oZ = fn946
oZ()
oX = fn469
ol = function(bw)
    if typeof(bw) ~= "Vector3" then
        return
    end
    pcall(function()
        LocalPlayer:RequestStreamAroundAsync(bw, 8)
    end)
end
oV = fn825
oj = function(bJ)
    local qP
    local qR_1
    local qQ_1
    qQ_1, qR_1, qP = oL()
    local qQ_2 = not oa or not qP
    local qV = if qQ_2 then 1 else 0
    local qT = 1126 * qV + 2986 * (1 - qV)
    local qU = 2802 * qV + 2595 * (1 - qV)
    if not ((qT * 2530 + qU * 2381 + qT * qU) % 16777213 == 12675394) then
        qQ_2 = typeof(bJ) ~= "Instance"
    end
    if qQ_2 then
        return false
    end
    local qQ_3 = pcall(function()
        oa(bJ, qP, 0)
        oa(bJ, qP, 1)
        oa(bJ, qP, 0)
    end)
    return qQ_3
end
oo = function(bV)
    local qW = not o_ or typeof(bV) ~= "Instance"
    if qW then
        return false
    end
    return pcall(function()
        bV.Enabled = true
        o_(bV)
    end)
end
oR = fn545
oU = fn615
o1 = fn792
oz = fn818
oe = function()
    local rt
    local CubeIndex = State.CubeIndex
    local rw = oi[CubeIndex]
    if type(rw) ~= "table" then
        return
    end
    local GainPerClick2 = oY.GainPerClick
    local ry = oW()
    local ry_3
    local rz = (tonumber(rw.Mass))
    local rF = if rz then 1 else 0
    local rD = 3368 * rF + 1893 * (1 - rF)
    local rE = 3501 * rF + 3537 * (1 - rF)
    if not ((rD * 2701 + rE * 2257 + rD * rE) % 16777213 == 12012880) then
        rz = 0
    end
    if GainPerClick2(ry, rz) <= 0 then
        task.wait(0.6)
        return
    end
    local rx_1 = oO()
    local ry_1 = rx_1 and rx_1:FindFirstChild(tostring(CubeIndex))
    local ry_2 = typeof(ry_1) ~= "Instance" or not ry_1:IsA("BasePart")
    if ry_2 then
        task.wait(0.35)
        return
    end
    ry_3, rt = oL()
    if not ry_3 then
        task.wait(0.2)
        return
    end
    State.LiftBusy = true
    if rt then
        pcall(function()
            rt:UnequipTools()
        end)
    end
    oV(ry_1.Position + Vector3.new(4, 3, 0))
    task.wait(0.12)
    local rz_1 = not of() or not State.Enabled.Lift
    if rz_1 then
        State.LiftBusy = false
        return
    end
    local ry_4 = oL()
    if not ry_4 then
        State.LiftBusy = false
        return
    end
    local ry_5 = oX()
    local ru = ry_5 and ry_5.Cubes
    local ry_6 = n7()
    local rz_3 = ru and oq(ru.Start)
    if rz_3 then
        pcall(function()
            if oq(ru.SetPrompts) then
                ru:SetPrompts(true)
            end
        end)
        pcall(ru.Start, ru, CubeIndex, ry_1)
        task.wait(0.08)
        local rv_1 = not of() or not State.Enabled.Lift
        if rv_1 then
            State.LiftBusy = false
            return
        end
        if ru.active then
            local rv_2 = tonumber(rw.Mass) or 0
            oz(ru, rv_2)
        end
    else
        local ProximityPrompt = ry_1:FindFirstChildWhichIsA("ProximityPrompt")
        oo(ProximityPrompt)
        local rv_4 = o1(rw.Mass)
        local GainPerClick = oY.GainPerClick
        local rz_4 = oW()
        local rA = tonumber(rw.Mass) or 0
        local rw_1 = GainPerClick(rz_4, rA)
        local max2 = math.max
        local ceil = math.ceil
        local rA_1 = tonumber(o2.Start) or 0.125
        local rB = max2(1, ceil((1 - rA_1) / math.max(rw_1, 1e-06)))
        local max = math.max
        local rz_6 = tonumber(o2.MaxRate) or 20
        local rx_5 = max(1 / max2(1, rz_6), rv_4 / rB)
        local rw_3 = os.clock()
        local rz_7 = 0
        while true do
            local rA_2 = of() and State.Enabled.Lift and rz_7 < rB + 8
            if rA_2 then
                local rA_3 = os.clock() - rw_3 >= rv_4 and rz_7 >= rB
                if rA_3 then
                    break
                end
                if oQ then
                    pcall(oQ)
                end
                rz_7 += 1
                task.wait(rx_5)
                continue
            end
            break
        end
    end
    local rv_5 = os.clock()
    while true do
        local rw_4 = of() and os.clock() - rv_5 < 2
        if rw_4 then
            local rw_5 = oX()
            local rx_6 = rw_5 and rw_5.Cubes
            local rw_6 = rx_6
            if rx_6 then
                rx_6 = rw_6.active or rw_6.celebration or rw_6.opening
            end
            local rx_7 = not rx_6
            if rx_7 ~= false then
                local rw_8 = n7() > ry_6 or os.clock() - rv_5 >= 1.1
                rx_7 = rw_8
            end
            if rx_7 then
                break
            end
            task.wait(0.05)
            continue
        end
        break
    end
    State.LiftBusy = false
end
oK = fn23
op = fn225
ov = function()
    local r6
    local r7
    if oU() then
        task.wait(0.15)
        return
    end
    r7, r6 = oR()
    if not r7 or not r6 then
        task.wait(0.35)
        return
    end
    if r7.Parent ~= LocalPlayer.Character then
        pcall(function()
            r6:EquipTool(r7)
        end)
    end
    task.wait(0.4)
end
oP = fn742
do
    oG.SetEnabled = fn543
    oG.SetCube = fn864
    oG.Options = fn388
    oG.Track(fn302)
    oJ = {
        task.spawn(worker5),
        task.spawn(worker4),
        task.spawn(worker3),
        task.spawn(worker2),
        task.spawn(worker)
    }
end
oG.Track(fn320)
local function o4_1()
    local wF
    local onDiscord
    local wQ
    wF = nil
    onDiscord = nil
    wQ = nil
    local SaveManager, wH, wI, Library, Toggles, wM, wN, ThemeManager, Options
    wQ = "https://discord.gg/ehKVq7pf7v"
    wH = "Lift a Cube"
    wM = "https://ouroboros-hub-rbx.web.app/"
    wI = "https://rscripts.net/@Ouroboros"
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = Library.Toggles
    Options = Library.Options
    oh(oG, Library)
    wF = function(fe, ff)
        local sF = oq(setclipboard) and setclipboard
        local sG = sF
        if not sG then
            local sF_1 = oq(toclipboard) and toclipboard
            sG = sF_1 or nil
        end
        local sF_2 = sG
        if not sF_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local sG_1 = pcall(sF_2, fe)
        if sG_1 then
            Library:Notify(ff)
        else
            Library:Notify("Failed to copy")
        end
    end
    onDiscord = function()
        wF(wQ, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = wQ, Copyable = true }, "|", wH, "|", "v0.2" },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(true, { Color = Color3.fromRGB(242, 154, 196), Radius = 24, Transparency = 0.3 })
    wN = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "gamepad-2"),
        Player = Window:AddTab("Player", "person-standing"),
        Settings = Window:AddTab("Settings", "settings")
    }
    local function wR_1(fv)
        local DiscordGroup = fv:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    for k, v in wN do
        if k ~= "Info" then
            wR_1(v)
        end
    end
    local wR_2 = oG.Options()
    local CubesGroup = wN.Main:AddLeftGroupbox("Cubes", "box")
    CubesGroup:AddToggle("AutoLift", {
        Text = "Auto Lift Cube",
        Default = false,
        Callback = function(fC)
            oG.SetEnabled("Lift", fC)
        end
    })
    CubesGroup:AddDropdown("LiftCube", {
        Text = "Cube",
        Values = wR_2.Cubes,
        Default = 1,
        Callback = function(fE)
            oG.SetCube(fE)
        end
    })
    local RollGroup = wN.Main:AddLeftGroupbox("Roll", "dices")
    RollGroup:AddToggle("AutoRoll", {
        Text = "Auto Roll",
        Default = false,
        Callback = function(fH)
            oG.SetEnabled("Roll", fH)
        end
    })
    RollGroup:AddToggle("AutoBuyRoll", {
        Text = "Auto Buy Roll",
        Default = false,
        Callback = function(fJ)
            oG.SetEnabled("BuyRoll", fJ)
        end
    })
    local TrainGroup = wN.Main:AddRightGroupbox("Train", "dumbbell")
    TrainGroup:AddToggle("AutoTrain", {
        Text = "Auto Train",
        Default = false,
        Callback = function(fM)
            oG.SetEnabled("Train", fM)
        end
    })
    TrainGroup:AddToggle("AutoBonusTrain", {
        Text = "Auto Get Bonus Train",
        Default = false,
        Callback = function(fO)
            oG.SetEnabled("Bonus", fO)
        end
    })
    TrainGroup:AddToggle("AutoBuyTrainSpeed", {
        Text = "Auto Buy Train Speed",
        Default = false,
        Callback = function(fQ)
            oG.SetEnabled("BuySpeed", fQ)
        end
    })
    local function wR_5()
        local tc
        local s9
        local s5
        local s3
        s3 = nil
        s5 = nil
        s9 = nil
        tc = nil
        local s0, s1, s2, s4, Label2, s7, Label3, ta, Label
        s5 = function(fU)
            return (tostring(fU):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        s3 = function(fW, fX)
            return string.format('<font color="%s">%s</font>', fX, s5(fW))
        end
        s7 = function(f_, f0, f1)
            return string.format("<b>%s</b> %s %s", f_, s3("-", "#5a6070"), s3(f0, f1))
        end
        local td = {}
        local te = "#8b93a3"
        s2 = "#e8a34d"
        s4 = "#7fd47f"
        local tf = "#6ec1ff"
        if not oa then
            table.insert(td, "firetouchinterest")
        end
        if not o_ then
            table.insert(td, "fireproximityprompt")
        end
        if not oE then
            table.insert(td, "filtergc")
        end
        local tg = #td == 0 and "ready"
        local th = tg or "limited: " .. table.concat(td, ", ")
        s1 = "Unknown"
        pcall(function()
            local sN_1
            local sM_1
            if oq(identifyexecutor) then
                sN_1, sM_1 = identifyexecutor()
                local sO = sN_1 ~= ""
                local sP = type(sN_1) == "string" and sO
                if sP then
                    local sO_1 = type(sM_1) == "string" and sM_1 ~= "" and sN_1 .. " " .. sM_1
                    s1 = sO_1 or sN_1
                end
            end
        end)
        s9 = os.clock()
        s0 = function()
            local sU = math.floor(os.clock() - s9)
            if sU < 60 then
                return sU .. "s"
            elseif sU < 3600 then
                return string.format("%dm %ds", sU // 60, sU % 60)
            else
                return string.format("%dh %dm", sU // 3600, sU % 3600 // 60)
            end
        end
        local UserGroup = wN.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(s7("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, s4), true)
        UserGroup:AddLabel(s7("UserId", tostring(LocalPlayer.UserId), tf), true)
        UserGroup:AddLabel(s7("Executor", s1 .. "  " .. th, s4), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(s7("Session", s0(), s2), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                wF(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                wF("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = wN.Info:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(s7("Game", wH, tf), true)
        Label2 = SessionGroup:AddLabel(s7("Players", "0/0", s4), true)
        ta = tostring(game.JobId)
        local tf_1 = #ta > 18 and string.sub(ta, 1, 18) .. "..."
        local tg_2 = tf_1 or ta
        SessionGroup:AddLabel(s7("Job", tg_2, te), true)
        Label = SessionGroup:AddLabel(s7("Ping", "0 ms", s2), true)
        SessionGroup:AddDivider()
        SessionGroup:AddButton({
            Text = "Rejoin Place",
            Func = function()
                ou:Teleport(game.PlaceId, LocalPlayer)
            end
        })
        SessionGroup:AddButton({
            Text = "Copy Job ID",
            Func = function()
                wF(ta, "Copied Job ID")
            end
        })
        tc = task.spawn(function()
            local sX_1
            local sW_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(s7("Session", s0(), s2))
                Label2:SetText(s7("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), s4))
                sW_1, sX_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local sW_2 = sW_1 and sX_1 .. " ms" or "n/a"
                Label:SetText(s7("Ping", sW_2, s2))
            end
        end)
        oG.Track(function()
            if coroutine.status(tc) ~= "dead" then
                task.cancel(tc)
            end
        end)
        local SocialsGroup = wN.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                wF(wI, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                wF(wM, "Copied website link")
            end
        })
    end
    wR_5()
    local function wR_6()
        local hl
        local hj
        local hk
        local hi
        local MovementGroup = wN.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = wN.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        local hh = {}
        hk = {}
        hi = {}
        hj = {}
        hl = {}
        local function hm()
            for k, v in hi do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(hi)
        end
        local function hq()
            for k, v in hj do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(hj)
        end
        local function hu()
            for k, v in hk do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(hk)
        end
        local function hy(hz)
            if not hz:IsA("ProximityPrompt") then
                return
            end
            if hl[hz] == nil then
                hl[hz] = {
                    HoldDuration = hz.HoldDuration,
                    MaxActivationDistance = hz.MaxActivationDistance,
                    RequiresLineOfSight = hz.RequiresLineOfSight
                }
            end
            hz.HoldDuration = 0
            hz.MaxActivationDistance = 50
            hz.RequiresLineOfSight = false
        end
        local function hB()
            for k, v in hl do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(hl)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                hu()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                hq()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                hm()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                    pcall(hy, v)
                end
            else
                hB()
            end
        end)
        table.insert(hh, Workspace.DescendantAdded:Connect(function(hU)
            if Toggles.InstantProximityPrompt.Value then
                hy(hU)
            end
        end))
        table.insert(hh, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if hi[v] == nil then
                        hi[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(hh, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local uc = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and uc then
                uc:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(hh, RunService.RenderStepped:Connect(function(ih)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local ul = Character and Character:FindFirstChildOfClass("Humanoid")
            local um = Character
            if um then
                um = Character:FindFirstChild("HumanoidRootPart")
            end
            local uk_1 = um
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and ul then
                if hj[ul] == nil then
                    hj[ul] = ul.WalkSpeed
                end
                ul.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and uk_1 and ul and CurrentCamera then
                if hk[ul] == nil then
                    hk[ul] = ul.PlatformStand
                end
                ul.PlatformStand = true
                local um_4 = Vector3.zero
                local uy = if not UserInputService:GetFocusedTextBox() then 1 else 0
                if uy == 1 then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        um_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        um_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        um_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        um_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        um_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        um_4 -= Vector3.new(0, 1, 0)
                    end
                end
                uk_1.AssemblyLinearVelocity = Vector3.zero
                if um_4.Magnitude > 0 then
                    uk_1.CFrame = uk_1.CFrame + um_4.Unit * Options.FlySpeed.Value * ih
                end
            end
        end))
        oG.Track(function()
            for k, v in hh do
                v:Disconnect()
            end
            hm()
            hq()
            hu()
            hB()
        end)
    end
    wR_6()
    local function wR_7()
        local jp
        local iA
        iA = {}
        local iz = {}
        local iB
        local iC = false
        local iE = 0
        local iD = 0
        local iF = os.clock()
        local MenuGroup = wN.Settings:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        local Label = MenuGroup:AddLabel("AFK triggers: 0")
        local function iJ()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            if not CurrentCamera then
                return
            end
            local uH = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.zero, CurrentCamera.CFrame)
            end)
            if not uH then
                return
            end
            iE += 1
            iF = os.clock()
            Label:SetText("AFK triggers: " .. iE)
        end
        local function onAntiGameplayPause(iX)
            pcall(function()
                oB:SetGameplayPausedNotificationEnabled(not iX)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = ow:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not iX
                end
            end)
            if iX then
                pcall(function()
                    if oq(sethiddenproperty) then
                        sethiddenproperty(LocalPlayer, "GameplayPaused", false)
                    else
                        LocalPlayer.GameplayPaused = false
                    end
                end)
            end
        end
        local function je()
            for k, v in iA do
                local uX = k
                local uZ = v
                if uX.Parent then
                    pcall(function()
                        uX.Enabled = uZ
                    end)
                end
            end
            table.clear(iA)
            if iB then
                pcall(function()
                    settings().Rendering.QualityLevel = iB.Quality
                end)
                Lighting.GlobalShadows = iB.Shadows
                Lighting.FogEnd = iB.Fog
                iB = nil
            end
        end
        jp = { ParticleEmitter = true, Trail = true, Smoke = true, Fire = true, Sparkles = true, Beam = true }
        local function jq(jr)
            if jp[jr.ClassName] then
                if iA[jr] == nil then
                    iA[jr] = jr.Enabled
                end
                jr.Enabled = false
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true, Callback = onAntiGameplayPause })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(ju)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not ju)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(jz)
                if jz then
                    if not iB then
                        iB = {
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
                        pcall(jq, v)
                    end
                else
                    je()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        onAntiGameplayPause(true)
        local ScriptGroup = wN.Settings:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        table.insert(iz, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                iJ()
            end
        end))
        table.insert(iz, Workspace.DescendantAdded:Connect(function(jQ)
            if Toggles.FpsBoost.Value then
                jq(jQ)
            end
        end))
        local function jT(jU)
            if iC or Library.Unloaded or not Toggles.AutoReconnect.Value then
                return
            end
            iC = true
            local vf = iD
            local vg_1 = pcall(function()
                if jU then
                    ou:Teleport(game.PlaceId, LocalPlayer)
                else
                    ou:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not vg_1 then
                iC = false
                if not jU and vf == iD then
                    task.delay(1.5, function()
                        if vf == iD then
                            jT(true)
                        end
                    end)
                end
            end
        end
        table.insert(iz, ou.TeleportInitFailed:Connect(function(kb)
            local vn
            if kb == LocalPlayer and iC then
                iC = false
                vn = iD
                task.delay(3, function()
                    if vn == iD then
                        jT(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = ow:WaitForChild("RobloxPromptGui", 30)
            local vs = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not vs then
                return
            end
            table.insert(iz, vs.ChildAdded:Connect(function(kq)
                if kq.Name == "ErrorPrompt" then
                    jT(false)
                end
            end))
        end)
        local kA = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    onAntiGameplayPause(true)
                end
                local vy = Toggles.AntiAfk.Value and os.clock() - iF >= 60
                if vy then
                    iJ()
                end
                task.wait(1)
            end
        end)
        oG.Track(function()
            iD += 1
            for k, v in iz do
                v:Disconnect()
            end
            pcall(task.cancel, kA)
            onAntiGameplayPause(false)
            je()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    wR_7()
    local function wR_8()
        local wz, wA, wB, wC
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("OuroborosHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(wN.Settings)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/LiftACube")
        local wD = SaveManager:BuildConfigSection(wN.Settings)
        wC = function(kS, kT)
            local vI_1 = (kS == "Toggle" and Toggles or Options)[kT]
            local vH_2 = type(vI_1) == "table" and vI_1.Type == kS
            return vH_2 and vI_1 or nil
        end
        wA = function(k1, k2)
            local Type = k2.Type
            if Type == "Toggle" then
                return { idx = k1, type = "Toggle", value = k2.Value == true }
            elseif Type == "Slider" then
                return { idx = k1, type = "Slider", value = tostring(k2.Value) }
            elseif Type == "Dropdown" then
                return { idx = k1, type = "Dropdown", multi = k2.Multi == true, value = k2.Value }
            elseif Type == "Input" then
                local vP = k2.Value
                local vT = if vP then 1 else 0
                local vR = 3262 * vT + 2340 * (1 - vT)
                local vS = 1039 * vT + 688 * (1 - vT)
                if not ((vR * 604 + vS * 3070 + vR * vS) % 16777213 == 8549196) then
                    vP = ""
                end
                return { idx = k1, type = "Input", text = tostring(vP) }
            elseif Type == "ColorPicker" then
                return { idx = k1, type = "ColorPicker", value = k2.Value:ToHex(), transparency = k2.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = k1,
                    type = "KeyPicker",
                    mode = k2.Mode,
                    key = k2.Value,
                    modifiers = k2.Modifiers,
                    toggled = k2.Toggled
                }
            else
                return nil
            end
        end
        wz = function()
            local vV = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local vW = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if vW then
                        local vW_1 = wA(k, v)
                        if vW_1 then
                            vV[#vV + 1] = vW_1
                        end
                    end
                end
            end
            table.sort(vV, function(lc, ld)
                if lc.type ~= ld.type then
                    return lc.type < ld.type
                end
                return lc.idx < ld.idx
            end)
            return { objects = vV }
        end
        wB = function(lf)
            local we
            we = nil
            local wf = type(lf) ~= "table" or type(lf.idx) ~= "string" or type(lf.type) ~= "string" or SaveManager.Ignore[lf.idx]
            if wf then
                return false
            end
            we = wC(lf.type, lf.idx)
            if not we then
                return false
            end
            local wf_1 = pcall(function()
                if lf.type == "Input" then
                    if type(lf.text) ~= "string" then
                        return
                    end
                    we:SetValue(lf.text)
                elseif lf.type == "ColorPicker" then
                    we:SetValueRGB(Color3.fromHex(lf.value), lf.transparency)
                elseif lf.type == "KeyPicker" then
                    we:SetValue({ lf.key, lf.mode, lf.modifiers })
                    if lf.mode == "Toggle" and lf.toggled ~= nil then
                        we.Toggled = lf.toggled
                        we:Update()
                    end
                else
                    we:SetValue(lf.value)
                end
            end)
            return wf_1
        end
        wD:AddDivider()
        wD:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        wD:AddButton("Export Config to Clipboard", function()
            local wl_1
            local wk_1
            wk_1, wl_1 = pcall(HttpService.JSONEncode, HttpService, wz())
            if not wk_1 then
                Library:Notify("Failed to encode the config")
                return
            end
            local wk_2 = oq(setclipboard) and setclipboard
            local wm = wk_2
            if not wm then
                local wk_3 = oq(toclipboard) and toclipboard
                wm = wk_3 or nil
            end
            local wk_4 = wm
            local wm_1 = type(wk_4) ~= "function" or not pcall(wk_4, wl_1)
            if wm_1 then
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Config copied to clipboard", 6)
        end)
        wD:AddButton("Import Config from Clipboard Text", function()
            local wr_1
            local wp = Options.SaveManager_ImportSource.Value or ""
            local wp_1
            local wq = tostring(wp):match("^%s*(.-)%s*$")
            if wq == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #wq > 262144 then
                Library:Notify("That config is too large")
                return
            end
            wp_1, wr_1 = pcall(HttpService.JSONDecode, HttpService, wq)
            local wq_1 = not wp_1 or type(wr_1) ~= "table" or type(wr_1.objects) ~= "table"
            if wq_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #wr_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local wp_2 = 0
            for i, v in ipairs(wr_1.objects) do
                if wB(v) then
                    wp_2 += 1
                end
            end
            if wp_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local wr_2 = wp_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(wp_2, wr_2), 6)
        end)
        SaveManager:LoadAutoloadConfig()
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    wR_8()
end
o4_1()
