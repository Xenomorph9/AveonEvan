local p2
local o2
local ClientPlayerData
local po
local pr
local o5
local oN
local o8
local pb
local pT
local oT
local pA
local pW
local LocalPlayer
local pD
local Library
local pG
local ph
local o1
local p4
local pq
local pM
local pP
local oP
local pa
local pS
local oS
local pV
local Options
local Turrets
local pC
local oY
local pj
local p0
local Toggles
local pY
local pL
local pp
local Framework
local oO
local oR
local Networking
local oX
local p_
local function fn37()
    local Character = LocalPlayer.Character
    local qw = Character and Character:FindFirstChildOfClass("Humanoid")
    return qw
end
local function fn80(d2, d3)
    return d2 .. ":" .. tostring(d3)
end
local function fn111()
    return pq
end
local function fn114()
    local wc = o5()
    local wd = wc and typeof(wc.waveInfo) == "table"
    if wd then
        local wd_1 = (tonumber(wc.waveInfo.Wave)) or 0
        return wd_1
    end
    return 0
end
local function fn142()
    local qC_1
    local qB_1
    qB_1, qC_1 = pcall(ClientPlayerData.getData)
    if qB_1 then
        return qC_1
    end
    return nil
end
local function fn147(bw)
    local ro = {}
    local rp = tostring(LocalPlayer.UserId) .. "_"
    for i, child in bw:GetChildren() do
        local rq = (child:IsA("Model")) and string.sub(child.Name, 1, #rp) == rp
        if rq then
            local rq_1 = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart", true)
            if rq_1 then
                ro[#ro + 1] = rq_1.Position
            end
        end
    end
    return ro
end
local function fn169()
    local Character = LocalPlayer.Character
    local qz = Character and Character:FindFirstChild("HumanoidRootPart")
    return qz
end
local function fn195(b4)
    local Waypoints = b4:FindFirstChild("Waypoints")
    if not Waypoints then
        return {}
    end
    local r1 = {}
    for i, child in Waypoints:GetChildren() do
        local r0_1 = tonumber(child.Name)
        local r2 = r0_1 and child:IsA("BasePart")
        if r2 then
            r1[#r1 + 1] = { Index = r0_1, Part = child }
        end
    end
    table.sort(r1, function(cb, cc)
        return cb.Index < cc.Index
    end)
    return r1
end
local function fn199()
    local qV_1
    local qU_1
    local qT = {}
    qU_1, qV_1 = pcall(function()
        return Framework.hook("InventoryController")
    end)
    if qU_1 and qV_1 and qV_1.Items and qV_1.Items.Turrets then
        for k, v in qV_1.Items.Turrets do
            local qU_2 = (tonumber(v.Amount)) or 0
            local qU_4 = qU_2 - (oO.consumedTurrets[k] or 0)
            if qU_4 > 0 then
                qT[k] = qU_4
            end
        end
    end
    local qU_5 = pC()
    if qU_5 and qU_5.Inventory and qU_5.Inventory.Turrets then
        for k, v in qU_5.Inventory.Turrets do
            local qU_6 = typeof(v) == "table" and tonumber(v.Amount)
            local qV_4 = qU_6 or tonumber(v) or 0
            local qV_6 = qV_4 - (oO.consumedTurrets[k] or 0)
            if qV_6 > 0 then
                local max = math.max
                local qW_3 = qT[k] or 0
                qT[k] = max(qW_3, qV_6)
            end
        end
    end
    return qT
end
local function fn220(fg)
    if typeof(fg) ~= "table" then
        return 0
    elseif typeof(fg.List) == "table" then
        return #fg.List
    else
        local uU = (tonumber(fg.Collected)) or 0
        return uU
    end
end
local function fn249(c4, c5)
    local Base = c4:FindFirstChild("Base")
    local s3 = pD(c4)
    if not Base or #s3 < 2 then
        return {}
    end
    local s4_1 = Base.Position.Y + Base.Size.Y * 0.5 + 0.1
    local s5 = Base.Size.X * 0.5 - oS
    local s6 = Base.Size.Z * 0.5 - oS
    local s7 = math.floor(s5 / p4)
    local s5_1 = math.floor(s6 / p4)
    local Position = Base.Position
    local s2_1 = {}
    local td = -s7
    while td <= s7 do
        local te = td
        local ti = -s5_1
        while ti <= s5_1 do
            local tj = ti
            local s7_2 = Vector3.new(Position.X + te * p4, s4_1, Position.Z + tj * p4)
            if not (pY(s7_2, s3) < p_) then
                local s8_1 = false
                for k, v in c5 do
                    local s9 = v.Position - s7_2
                    if Vector3.new(s9.X, 0, s9.Z).Magnitude < oX then
                        s8_1 = true
                        break
                    end
                end
                if not s8_1 then
                    local s8_2 = pT(s7_2, s3)
                    s2_1[#s2_1 + 1] = {
                        CFrame = CFrame.new(s7_2) * CFrame.Angles(0, math.rad(s8_2), 0),
                        Rotation = s8_2,
                        Position = s7_2
                    }
                end
            end
            ti += 1
        end
        td += 1
    end
    return s2_1
end
local function stopAtWaveLoop()
    while not Library.Unloaded do
        local wz = o5()
        local wA = wz ~= nil and wz.State == true
        local wA_1 = (pM("AutoStopAtWave")) and wA and os.clock() >= oO.canStopAfter
        if wA_1 then
            local wB_1 = Options.StopAtWave and Options.StopAtWave.Value or 25
            if po() >= wB_1 then
                pcall(oN)
                task.wait(0.5)
            end
        end
        if pM("AutoStart") then
            local wz_1 = o5()
            if wz_1 and not wz_1.State then
                pcall(pS)
            end
        end
        task.wait(0.35)
    end
end
local function fn289(bG, bH)
    for k, v in bH do
        local rz = v - bG
        if Vector3.new(rz.X, 0, rz.Z).Magnitude < oX then
            return false
        end
    end
    return true
end
local function fn294()
    local tL = pC()
    if not tL or not tL.SkillTree then
        return
    end
    for k, v in tL.SkillTree do
        local tL_1 = v and v.BoughtNodes
        if typeof(tL_1) == "table" then
            for k2, v in tL_1 do
                oO.skillOwned[pP(k, v)] = true
            end
        end
    end
    pcall(function()
        local lib = require(p0.Modules.Client.lib)
        if lib.AutoRoll then
            oO.skillOwned[pP("Main", 1)] = true
        end
    end)
end
local function fn329()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local qF = leaderstats and leaderstats:FindFirstChild("Coins")
    if qF then
        local qF_1 = (tonumber(qF.Value))
        local qJ = if qF_1 then 1 else 0
        local qH = 334 * qJ + 3724 * (1 - qJ)
        local qI = 4080 * qJ + 3173 * (1 - qJ)
        if not ((qH * 1255 + qI * 3755 + qH * qI) % 16777213 == 325077) then
            qF_1 = 0
        end
        return qF_1
    end
    local qE_2 = pC()
    if qE_2 and qE_2.leaderstats and qE_2.leaderstats.Coins then
        local qF_3 = (tonumber(qE_2.leaderstats.Coins)) or 0
        return qF_3
    end
    return 0
end
local function worker6()
    while not Library.Unloaded do
        if pM("KillAura") then
            pcall(pV)
            local wu = (tonumber(Networking.NetworkTime)) or 0
            task.wait(pL + wu)
        else
            task.wait(0.25)
        end
    end
end
local function fn338(cG)
    local Base = cG:FindFirstChild("Base")
    local sD = pD(cG)
    if not Base or #sD < 2 then
        return {}
    end
    local sE_1 = Base.Position.Y + Base.Size.Y * 0.5 + 0.1
    local sC_1 = {}
    local sF = #sD - 1
    local sP = 1
    while sP <= sF do
        local sR = sP
        local Position2 = sD[sR].Part.Position
        local Position = sD[sR + 1].Part.Position
        local sH = Position - Position2
        local Magnitude = Vector3.new(sH.X, 0, sH.Z).Magnitude
        if not (Magnitude < 0.5) then
            local Unit = Vector3.new(sH.X, 0, sH.Z).Unit
            local sH_1 = Vector3.new(-Unit.Z, 0, Unit.X)
            local sK = math.max(1, math.floor(Magnitude / o2))
            local sI_1 = math.deg(math.atan2(-Unit.X, -Unit.Z))
            local sU = 0
            while sU <= sK do
                local sJ_1 = sU / sK
                local sL = Position2:Lerp(Position, sJ_1)
                for k, v in { 1, -1 } do
                    local sJ_2 = Vector3.new(sL.X, sE_1, sL.Z) + sH_1 * (pb * v)
                    sC_1[#sC_1 + 1] = {
                        CFrame = CFrame.new(sJ_2) * CFrame.Angles(0, math.rad(sI_1), 0),
                        Rotation = sI_1,
                        Position = sJ_2
                    }
                end
                sU += 1
            end
        end
        sP += 1
    end
    return sC_1
end
local function fn353(am, an)
    return string.format('<font color="%s">%s</font>', an, am)
end
local function fn406(av)
    if Library.Unloaded then
        return false
    end
    local qs = Toggles[av]
    return qs ~= nil and qs.Value == true
end
local function fn433()
    local Plots = pa:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    local UserId = LocalPlayer.UserId
    for i, child in Plots:GetChildren() do
        if child:GetAttribute("plotOwnerId") == UserId then
            return child
        end
    end
    local attr = LocalPlayer:GetAttribute("plot")
    if attr then
        return Plots:FindFirstChild(tostring(attr))
    end
    return nil
end
local function worker5()
    while not Library.Unloaded do
        if pM("AutoEquipBestSword") then
            pcall(oR)
        end
        task.wait(2)
    end
end
local function fn470(hq)
    local DiscordGroup = hq:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = pG })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = pG })
end
local function fn501()
    local attr = LocalPlayer:GetAttribute("plot")
    if attr == nil then
        return {}
    end
    local vF = "Plots." .. tostring(attr) .. "."
    local vE_1 = {}
    local vG = {}
    for k, v in o1:GetTagged("Balloon") do
        local vH = (v:IsA("Model")) and v
        local vI = vH or v:FindFirstAncestorOfClass("Model")
        local vH_1 = vI
        if vI then
            vI = not vE_1[vH_1.Name]
        end
        if vI then
            vI = string.find(vH_1:GetFullName(), vF, 1, true)
        end
        if vI then
            vE_1[vH_1.Name] = true
            table.insert(vG, vH_1.Name)
        end
    end
    return vG
end
local function fn539(ce, cf)
    local sa = math.huge
    local sb = #cf - 1
    local sj = 1
    while sj <= sb do
        local sl = sj
        local Position2 = cf[sl].Part.Position
        local Position = cf[sl + 1].Part.Position
        local sd = Vector3.new(Position.X - Position2.X, 0, Position.Z - Position2.Z)
        local Magnitude2 = sd.Magnitude
        if not (Magnitude2 < 0.01) then
            local se = Vector3.new(ce.X - Position2.X, 0, ce.Z - Position2.Z)
            local sf = math.clamp(se:Dot(sd) / (Magnitude2 * Magnitude2), 0, 1)
            local sc_2 = Vector3.new(Position2.X, 0, Position2.Z) + sd * sf
            local Magnitude = (Vector3.new(ce.X, 0, ce.Z) - sc_2).Magnitude
            if Magnitude < sa then
                sa = Magnitude
            end
        end
        sj += 1
    end
    return sa
end
local function fn560(aq, ar, as)
    return string.format("<b>%s</b> %s %s", aq, ph("-", "#5a6070"), ph(ar, as))
end
local function worker4()
    while not Library.Unloaded do
        if pM("AutoClaimIndex") then
            pcall(pr)
        end
        task.wait(1.25)
    end
end
local function worker2()
    while not Library.Unloaded do
        if pM("AutoPlaceTurrets") then
            pcall(pj)
        end
        task.wait(0.75)
    end
end
local function fn636(af, ag)
    if setclipboard then
        setclipboard(af)
    elseif toclipboard then
        toclipboard(af)
    end
    Library:Notify(ag)
end
local function fn638()
    local v__1
    local vZ_1
    vZ_1, v__1 = pcall(function()
        return Framework.hook("FIghtController")
    end)
    if vZ_1 then
        return v__1
    end
end
local function fn651(bN)
    local rH = Turrets[bN]
    if not rH then
        return 0
    end
    local rI = (tonumber(rH.Damage)) or 0
    local rI_1 = (tonumber(rH.FireRate)) or 1
    local rH_1 = rI_1
    if rH_1 <= 0 then
        rH_1 = 1
    end
    return rI / rH_1
end
local function fn776()
    p2(pp, "Copied Discord invite to clipboard")
end
local function fn802()
    local wk_1
    local wj_1
    wj_1, wk_1 = pcall(function()
        return Networking.InvokeServer("OnRoll")
    end)
    return wj_1 and wk_1 == true
end
local function fn803(cr, cs)
    local sm = cr
    local sn = math.huge
    local so = #cs - 1
    local sw = 1
    while sw <= so do
        local sy = sw
        local Position2 = cs[sy].Part.Position
        local Position = cs[sy + 1].Part.Position
        local sq = Vector3.new(Position.X - Position2.X, 0, Position.Z - Position2.Z)
        local Magnitude2 = sq.Magnitude
        if not (Magnitude2 < 0.01) then
            local sr = Vector3.new(cr.X - Position2.X, 0, cr.Z - Position2.Z)
            local ss = math.clamp(sr:Dot(sq) / (Magnitude2 * Magnitude2), 0, 1)
            local sp_2 = Vector3.new(Position2.X, 0, Position2.Z) + sq * ss
            local Magnitude = (Vector3.new(cr.X, 0, cr.Z) - sp_2).Magnitude
            if Magnitude < sn then
                sn = Magnitude
                sm = sp_2
            end
        end
        sw += 1
    end
    local sn_1 = Vector3.new(sm.X - cr.X, 0, sm.Z - cr.Z)
    if sn_1.Magnitude < 0.01 then
        return 0
    end
    local Unit = sn_1.Unit
    return math.deg(math.atan2(-Unit.X, -Unit.Z))
end
local function worker()
    while not Library.Unloaded do
        if pM("AutoRoll") then
            oY(true)
            if o8() then
                task.wait(pW)
            else
                task.wait(0.35)
            end
        else
            if oO.autoRollSynced then
                oY(false)
            end
            task.wait(0.25)
        end
    end
end
local function worker3()
    while not Library.Unloaded do
        if pM("AutoBuySkills") then
            pcall(pA)
        end
        task.wait(1)
    end
end
local function fn868(bT)
    local rO = {}
    for k, v in bT do
        local rY = 1
        while rY <= v do
            rO[#rO + 1] = k
            rY += 1
        end
    end
    table.sort(rO, function(bY, bZ)
        local rL = oT(bY)
        local rM = oT(bZ)
        if rL ~= rM then
            return rL > rM
        end
        return bY < bZ
    end)
    return rO
end
oN = nil
oO = nil
oP = nil
oR = nil
oS = nil
oT = nil
Options = nil
LocalPlayer = nil
oX = nil
oY = nil
Toggles = nil
o1 = nil
o2 = nil
o5 = nil
o8 = nil
pa = nil
pb = nil
Turrets = nil
ph = nil
pj = nil
Library = nil
po = nil
pp = nil
pq = nil
pr = nil
local oL, oM, oQ, oU, oZ, o_, o3, o4, o6, SaveManager, o9, pc, pd, ThemeManager, pf, pi, pl, pm, Swords, SkillsTree, pt, pu, pv, pw, px
pA = nil
pC = nil
pD = nil
pG = nil
ClientPlayerData = nil
pL = nil
pM = nil
Framework = nil
pP = nil
pS = nil
pT = nil
pV = nil
pW = nil
Networking = nil
pY = nil
local pZ
p_ = nil
p0 = nil
p2 = nil
p4 = nil
local GameSettings, pz, pB, pE, pF, pH, pI, pJ, pN, pQ, pR, pU, p1, p3
local p6_3
oL, p0, pU, pN, pH, pw, pq, pm, pf, pa, o1, LocalPlayer, oP = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local p5 = 14
repeat
    local p6_1 = (p5 * 2 + 0) % 5 + 1
    if p6_1 <= 3 then
        if p6_1 <= 2 then
            if p6_1 <= 1 then
                local p7_1 = { "jmilwnx", "qbf", "egaulv", "piipetazyk", "svip", "rwep", "kmdfz", "uanfuysa", "vashimo" }
                local Bj = p5
                local p8_1 = p7_1[Bj % 9 + 1]
                if p8_1:len() <= p8_1:gsub("(.)", "%1%1", Bj % 3 % 2 + 1):len() then
                    pH = game:GetService("VirtualUser")
                    pw = game:GetService("HttpService")
                    pq = game:GetService("CoreGui")
                    pm = game:GetService("GuiService")
                    pf = game:GetService("TeleportService")
                else
                    pf = game:GetService("VirtualUser")
                    pm = game:GetService("HttpService")
                    pH = game:GetService("CoreGui")
                    pw = game:GetService("GuiService")
                    pq = game:GetService("TeleportService")
                end
                p5 = (p5 + 3) % 20
            else
                local p7_2 = (vector.create((p5 * 5 + 1) % 11 + 1, (p5 * 10 + 7) % 13 + 1, (p5 * 14 + 17) % 17 + 1))
                local p8_2 = (vector.create((p5 * 3 + 2) % 11 + 1, (p5 * 6 + 7) % 13 + 1, (p5 * 9 + 1) % 17 + 1))
                local AQ = vector.cross(p7_2, p8_2)
                local AR = vector.dot(p7_2, p8_2)
                if vector.dot(AQ, AQ) + AR * AR == vector.dot(p7_2, p7_2) * vector.dot(p8_2, p8_2) then
                    pa = game:GetService("Workspace")
                    o1 = game:GetService("CollectionService")
                    LocalPlayer = oL.LocalPlayer
                else
                    o1 = game:GetService("Workspace")
                    pa = game:GetService("CollectionService")
                    oL = LocalPlayer.LocalPlayer
                end
                p5 = (p5 + 8) % 20
            end
        else
            local p7_3 = (vector.create((p5 * 7 + 5) % 11 + 1, (p5 * 1 + 11) % 13 + 1, (p5 * 13 + 6) % 17 + 1))
            local p8_3 = (vector.create((p5 * 3 + 2) % 11 + 1, (p5 * 2 + 4) % 13 + 1, (p5 * 15 + 14) % 17 + 1))
            local p9_1 = (vector.create((p5 * 5 + 5) % 11 + 1, (p5 * 9 + 2) % 13 + 1, (p5 * 12 + 7) % 17 + 1))
            local qa_1 = (vector.create((p5 * 4 + 3) % 11 + 1, (p5 * 2 + 12) % 13 + 1, (p5 * 7 + 10) % 17 + 1))
            if vector.dot(vector.cross(p7_3, p8_3), (vector.cross(p9_1, qa_1))) == vector.dot(p7_3, p9_1) * vector.dot(p8_3, qa_1) - vector.dot(p7_3, qa_1) * vector.dot(p8_3, p9_1) + 3 then
                pm = fn111
            else
                oP = fn111
            end
            p5 = (p5 + 18) % 20
        end
    elseif p6_1 <= 4 then
        local p6_2 = {
            "sjvpyfvfhrq",
            "tncovnjwizq",
            "lnknvgxejzje",
            "efkdf",
            "ppceuxnmgig",
            "jzywzoztlyjl",
            "ensz",
            "xwelks",
            "jdkz"
        }
        if p6_2[(p5 * 90 + 111) % 9 + 1] < p6_2[(p5 * 90 + 111) % 9 + 1] then
            pa = game:GetService("Players")
        else
            oL = game:GetService("Players")
        end
        p5 = (p5 + 18) % 20
    else
        if (p5 * 3 + 4) * 13 % 4 == ((p5 * 3 + 4) * 13 + 12) % 4 then
            p0 = game:GetService("ReplicatedStorage")
            pU = game:GetService("RunService")
            pN = game:GetService("UserInputService")
        else
            pN = game:GetService("ReplicatedStorage")
            p0 = game:GetService("RunService")
            pU = game:GetService("UserInputService")
        end
        p5 = (p5 + 8) % 20
    end
until (p5 * 19 + 14) % 20 == 5
if getgenv then
    pZ, p6_3 = nil, nil
    local p5_1 = 14
    repeat
        if (p5_1 * 1 + 1) % 2 + 1 <= 1 then
            if (p5_1 * 1 + 4) * 17 % 4 == ((p5_1 * 1 + 4) * 17 + 2) % 4 then
                pZ = p6_3
            else
                p6_3 = pZ
            end
            p5_1 = (p5_1 + 9) % 16
        else
            local p7_5 = (vector.create((p5_1 * 1 + 7) % 11 + 1, (p5_1 * 8 + 2) % 13 + 1, (p5_1 * 10 + 8) % 17 + 1))
            local p8_4 = (vector.create((p5_1 * 4 + 9) % 11 + 1, (p5_1 * 7 + 8) % 13 + 1, (p5_1 * 9 + 3) % 17 + 1))
            local p9_2 = (vector.create((p5_1 * 3 + 6) % 11 + 1, (p5_1 * 4 + 10) % 13 + 1, (p5_1 * 7 + 2) % 17 + 1))
            local qa_2 = (vector.create((p5_1 * 5 + 5) % 5 + 1, (p5_1 * 3 + 2) % 7 + 1, (p5_1 * 4 + 2) % 9 + 1))
            if vector.dot(vector.cross(p7_5, (vector.cross(p8_4, p9_2))), qa_2) == vector.dot(p8_4 * vector.dot(p7_5, p9_2) - p9_2 * vector.dot(p7_5, p8_4), qa_2) then
                getgenv().gethui = oP
                pZ = getgenv().__OuroborosPopABalloonRngLib
            else
                getgenv().gethui = pZ
                oP = getgenv().__OuroborosPopABalloonRngLib
            end
            p5_1 = (p5_1 + 15) % 16
        end
    until (p5_1 * 11 + 0) % 16 == 2
    if p6_3 then
        p6_3 = pZ.Unload
    end
    if p6_3 then
        pcall(function()
            pZ:Unload()
        end)
    end
end
pcall(function()
    gethui = oP
end)
if setthreadidentity then
    setthreadidentity(8)
end
pu, pp, pi, pd, o6, o_, oU, oM, p1, Networking, Framework, ClientPlayerData, GameSettings, SkillsTree, Swords, Turrets, pb, o2, oX, oS, p4, p_ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pu = "Pop a Balloon RNG"
pp = "https://discord.gg/ehKVq7pf7v"
pi = "https://rscripts.net/@Ouroboros"
pd = "https://ouroboros-hub-rbx.web.app/"
o6 = "#7fd47f"
o_ = "#6ec1ff"
oU = "#e8a34d"
oM = "#8b93a3"
p1 = "#e05a5a"
Networking = require(p0:WaitForChild("Networking"))
Framework = require(p0:WaitForChild("Framework"))
ClientPlayerData = require(p0.Modules.Client.Components.ClientPlayerData)
GameSettings = require(p0:WaitForChild("GameSettings"))
SkillsTree = p0.Dictionary:WaitForChild("SkillsTree")
Swords = require(p0.Dictionary:WaitForChild("Swords"))
Turrets = require(p0.Dictionary:WaitForChild("Turrets"))
pb = 5.5
o2 = 4
oX = 3.25
oS = 3
p4 = 4
p_ = 4
local p5_2 = (tonumber(GameSettings.RollingTime)) or 3
pW = p5_2
local p5_3 = (tonumber(GameSettings.SwordHitCooldown)) or 0.5
pL, pF, pv, Library, ThemeManager, SaveManager = nil, nil, nil, nil, nil, nil
pL = p5_3
pF = { "Normal", "Shiny", "Huge" }
pv = { "Swords", "Blocks" }
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
if getgenv then
    getgenv().__OuroborosPopABalloonRngLib = Library
end
Toggles, Options, oO, pQ, p2, pG, ph, oZ, pM, o9, p3, pC, pc, pJ, oQ, o4, pl, pB, oT, px, pD, pY, pT, pz, pE, pj, pP, pt, o3, pA, pI, pr, oR, pR, pV, o5, pS, oN, po, oY, o8 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Toggles = Library.Toggles
Options = Library.Options
oO = {
    consumedTurrets = {},
    skillOwned = {},
    skillFailed = {},
    autoRollSynced = false,
    canStopAfter = 0
}
p2 = fn636
pG = fn776
ph = fn353
oZ = fn560
pM = fn406
o9 = fn37
p3 = fn169
pC = fn142
pc = fn329
pJ = fn433
oQ = fn199
o4 = function(bp)
    local consumedTurrets = oO.consumedTurrets
    consumedTurrets[bp] = (oO.consumedTurrets[bp] or 0) + 1
    pcall(function()
        local rf = Framework.hook("InventoryController")
        local rg = rf and rf.Items and rf.Items.Turrets and rf.Items.Turrets[bp]
        local rf_1 = rg
        if rg then
            rg = typeof(rf_1.Amount) == "number"
        end
        if rg then
            rg = rf_1.Amount > 0
        end
        if rg then
            rf_1.Amount = rf_1.Amount - 1
            if rf_1.update then
                rf_1:update()
            end
        end
    end)
end
if ((pY or not pQ or oQ and o4) and ((pQ or oQ) and (not pY or not pQ)) or false and (pQ and not oQ) and (false and pQ or (pY or pQ))) and not ((pY or not pQ or oQ and o4) and ((pQ or oQ) and (not pY or not pQ)) or false and (pQ and not oQ) and (false and pQ or (pY or pQ))) then
    pB = fn147
    pl = fn289
else
    pl = fn147
    pB = fn289
end
oT = fn651
px = fn868
pD = fn195
pY = fn539
pT = fn803
pz = fn338
pE = fn249
pj = function()
    local tC, tD, tE
    local tF = pJ()
    local tG = not tF or tF:GetAttribute("InFight")
    if tG then
        return
    end
    local tG_1 = oQ()
    tE = px(tG_1)
    if #tE == 0 then
        return
    end
    local tG_2 = pz(tF)
    tD = pl(tF)
    tC = 1
    local function tH(dJ)
        local tt_1
        local ts_1
        for k, v in dJ do
            local tr
            local tB = v
            if tC > #tE then
                return
            end
            if not not pB(tB.Position, tD) then
                tr = tE[tC]
                ts_1, tt_1 = pcall(function()
                    return Networking.InvokeServer("placeTurret", tr, tB.CFrame, tB.Rotation)
                end)
                if ts_1 and tt_1 then
                    o4(tr)
                    tD[#tD + 1] = tB.Position
                    tC += 1
                    task.wait(0.08)
                end
            end
        end
    end
    tH(tG_2)
    if tC <= #tE then
        tH(pE(tF, tG_2))
    end
end
pP = fn80
pt = fn294
if (not pJ or not pA) and (px or pJ) and (pr or pA or not pr and not px) and (pJ and pr and (not pJ and not pr) or pJ and pr and (px or pr)) or not ((not pJ or not pA) and (px or pJ) and (pr or pA or not pr and not px) and (pJ and pr and (not pJ and not pr) or pJ and pr and (px or pr))) then
    o3 = function()
        local uf, ug
        local uj_5
        local ui_5, ui_6
        local uh_5
        pt()
        ug = {}
        uf = {}
        for i, child in SkillsTree:GetChildren() do
            if child:IsA("ModuleScript") then
                uh_5, ui_5 = pcall(require, child)
                local uj_4 = uh_5 and typeof(ui_5) == "table"
                if uj_4 then
                    ug[child.Name] = ui_5
                    for i, v in ipairs(ui_5) do
                        local uh_6 = typeof(v) == "table" and v.CanBuy and not v.CantBuy and not v.OpenSection
                        if uh_6 then
                            uf[pP(child.Name, i)] = true
                        end
                    end
                end
            end
        end
        local function uh_7(eA, eB)
            local t_ = ug[eA]
            local t0 = t_ and t_[eB]
            local t__3 = t0
            if t0 then
                t0 = t__3.UnlockButtonsWhenBuyed
            end
            local t__4 = t0
            if typeof(t__4) ~= "table" then
                return
            end
            for k, v in t__4 do
                if typeof(v) == "table" then
                    for k2, v in v do
                        uf[pP(k, v)] = true
                    end
                end
            end
        end
        for k in oO.skillOwned do
            uj_5, ui_6 = string.match(k, "^(.+):(%d+)$")
            local uk_3 = tonumber(ui_6)
            if uj_5 and uk_3 then
                uh_7(uj_5, uk_3)
            end
        end
        local ui_8 = pc()
        local uh_8 = {}
        for k, v in ug do
            for i, v in ipairs(v) do
                local uj_6 = pP(k, i)
                local uk_4 = uf[uj_6] and not oO.skillOwned[uj_6] and not oO.skillFailed[uj_6] and typeof(v) == "table" and not v.CantBuy and not v.OpenSection and typeof(v.Price) == "number" and v.Price > 0 and v.Price <= ui_8
                if uk_4 then
                    uh_8[#uh_8 + 1] = { Section = k, Index = i, Price = v.Price, Name = v.Name, Key = uj_6 }
                end
            end
        end
        table.sort(uh_8, function(e1, e2)
            if e1.Price ~= e2.Price then
                return e1.Price < e2.Price
            elseif e1.Section ~= e2.Section then
                return e1.Section < e2.Section
            else
                return e1.Index < e2.Index
            end
        end)
        return uh_8
    end
    pA = function()
        local uL_2
        local uK = o3()
        local uK_2
        for k, v in uK do
            local uT = v
            if pc() < uT.Price then
                break
            end
            uK_2, uL_2 = pcall(function()
                return Networking.InvokeServer("buySkillTree", uT.Section, uT.Index)
            end)
            if uK_2 and uL_2 then
                oO.skillOwned[uT.Key] = true
                task.wait(0.12)
            else
                oO.skillFailed[uT.Key] = true
            end
        end
    end
    pI = fn220
    pr = function()
        local uZ = pC()
        if not uZ or not uZ.Index then
            return
        end
        local u__3 = GameSettings.IndexItemsForRewards
        if typeof(u__3) ~= "table" then
            return
        end
        for k, v in pv do
            local va = v
            local u0_3 = uZ.Index[va]
            local u1_5 = u__3[va]
            local u2_5 = u0_3 and typeof(u1_5) == "number"
            if u2_5 then
                local u2_6 = (tonumber(u0_3.RewardIndex)) or 1
                local u3_3 = u1_5 * u2_6
                local u1_6 = not u0_3.ClaimedReward
                if u1_6 ~= false then
                    u1_6 = pI(u0_3) >= u3_3
                end
                if u1_6 then
                    pcall(function()
                        Networking.InvokeServer("claimIndexReward", va)
                    end)
                    task.wait(0.1)
                end
            end
        end
        local Turrets = u__3.Turrets
        local u__4 = uZ.Index.Turrets
        local uZ_3 = typeof(Turrets) == "table" and typeof(u__4) == "table"
        if uZ_3 then
            for k, v in pF do
                local vg = v
                local uZ_4 = u__4[vg]
                local u1_7 = Turrets[vg]
                local u2_7 = uZ_4 and typeof(u1_7) == "number"
                if u2_7 then
                    local u2_8 = (tonumber(uZ_4.RewardIndex)) or 1
                    local u3_4 = u1_7 * u2_8
                    local u1_8 = not uZ_4.ClaimedReward
                    if u1_8 ~= false then
                        u1_8 = pI(uZ_4) >= u3_4
                    end
                    if u1_8 then
                        pcall(function()
                            Networking.InvokeServer("claimTurretIndexReward", vg)
                        end)
                        task.wait(0.1)
                    end
                end
            end
        end
    end
    oR = function()
        local vq, vr
        local vt_7
        local vs_10
        vr = nil
        vs_10, vt_7 = pcall(function()
            return Networking.InvokeServer("equipBestWeapon")
        end)
        local vu = vs_10 and typeof(vt_7) == "string"
        if vu and vt_7 ~= "" then
            vr = vt_7
        else
            local vs_12 = pC()
            local vt_8 = vs_12 and vs_12.Inventory and vs_12.Inventory.Swords
            if typeof(vt_8) == "table" then
                local vt_9 = -1
                for k in vt_8 do
                    local vs_14 = Swords[k]
                    local vu_4 = vs_14 and tonumber(vs_14.Boost)
                    local vs_15 = vu_4 or 0
                    if vs_15 > vt_9 then
                        vt_9 = vs_15
                        vr = k
                    end
                end
            end
        end
        if not vr then
            return
        end
        local vs_16 = pC()
        local vt_11 = (vs_16 and vs_16.EquippedItems and vs_16.EquippedItems.Swords and vs_16.EquippedItems.Swords[1]) == vr
        local vu_6 = LocalPlayer:GetAttribute("equippedWeapon") == vr and vt_11
        if vu_6 then
            return
        end
        vq = nil
        local vs_18 = pcall(function()
            vq = table.pack(Networking.InvokeServer("EquipInventoryWeapon", vr))
        end)
        if not vs_18 or not vq or not vq[1] then
            return
        end
        pcall(function()
            ClientPlayerData.UpdateData(function(ge)
                ge.EquippedItems.Swords[1] = vr
                return ge
            end)
        end)
        pcall(function()
            local vk = Framework.hook("InventoryController")
            if not vk or not vk.getItem then
                return
            end
            local vl_3 = vk:getItem("Swords", vr)
            if vl_3 then
                vl_3.Equipped = true
                vl_3:updateEquipped()
            end
            local vl_4 = vq[2]
            local vm = vl_4 ~= "N/A"
            local vn = typeof(vl_4) == "string" and vm
            if vn and vl_4 ~= vr then
                local vm_4 = vk:getItem("Swords", vl_4)
                if vm_4 then
                    vm_4:unequip()
                end
            end
        end)
    end
else
    pI = function()
        local uf, ug
        local uj_2
        local ui_1, ui_2
        local uh_1
        pt()
        ug = {}
        uf = {}
        for i, child in SkillsTree:GetChildren() do
            if child:IsA("ModuleScript") then
                uh_1, ui_1 = pcall(require, child)
                local uj_1 = uh_1 and typeof(ui_1) == "table"
                if uj_1 then
                    ug[child.Name] = ui_1
                    for i, v in ipairs(ui_1) do
                        local uh_2 = typeof(v) == "table" and v.CanBuy and not v.CantBuy and not v.OpenSection
                        if uh_2 then
                            uf[pP(child.Name, i)] = true
                        end
                    end
                end
            end
        end
        local function uh_3(eA, eB)
            local t_ = ug[eA]
            local t0 = t_ and t_[eB]
            local t__1 = t0
            if t0 then
                t0 = t__1.UnlockButtonsWhenBuyed
            end
            local t__2 = t0
            if typeof(t__2) ~= "table" then
                return
            end
            for k, v in t__2 do
                if typeof(v) == "table" then
                    for k2, v in v do
                        uf[pP(k, v)] = true
                    end
                end
            end
        end
        for k in oO.skillOwned do
            uj_2, ui_2 = string.match(k, "^(.+):(%d+)$")
            local uk_1 = tonumber(ui_2)
            if uj_2 and uk_1 then
                uh_3(uj_2, uk_1)
            end
        end
        local ui_4 = pc()
        local uh_4 = {}
        for k, v in ug do
            for i, v in ipairs(v) do
                local uj_3 = pP(k, i)
                local uk_2 = uf[uj_3] and not oO.skillOwned[uj_3] and not oO.skillFailed[uj_3] and typeof(v) == "table" and not v.CantBuy and not v.OpenSection and typeof(v.Price) == "number" and v.Price > 0 and v.Price <= ui_4
                if uk_2 then
                    uh_4[#uh_4 + 1] = { Section = k, Index = i, Price = v.Price, Name = v.Name, Key = uj_3 }
                end
            end
        end
        table.sort(uh_4, function(e1, e2)
            if e1.Price ~= e2.Price then
                return e1.Price < e2.Price
            elseif e1.Section ~= e2.Section then
                return e1.Section < e2.Section
            else
                return e1.Index < e2.Index
            end
        end)
        return uh_4
    end
    o3 = function()
        local uL_1
        local uK = o3()
        local uK_1
        for k, v in uK do
            local uT = v
            if pc() < uT.Price then
                break
            end
            uK_1, uL_1 = pcall(function()
                return Networking.InvokeServer("buySkillTree", uT.Section, uT.Index)
            end)
            if uK_1 and uL_1 then
                oO.skillOwned[uT.Key] = true
                task.wait(0.12)
            else
                oO.skillFailed[uT.Key] = true
            end
        end
    end
    pA = fn220
    oR = function()
        local uZ = pC()
        if not uZ or not uZ.Index then
            return
        end
        local u__1 = GameSettings.IndexItemsForRewards
        if typeof(u__1) ~= "table" then
            return
        end
        for k, v in pv do
            local va = v
            local u0_1 = uZ.Index[va]
            local u1_1 = u__1[va]
            local u2_1 = u0_1 and typeof(u1_1) == "number"
            if u2_1 then
                local u2_2 = (tonumber(u0_1.RewardIndex)) or 1
                local u3_1 = u1_1 * u2_2
                local u1_2 = not u0_1.ClaimedReward
                if u1_2 ~= false then
                    u1_2 = pI(u0_1) >= u3_1
                end
                if u1_2 then
                    pcall(function()
                        Networking.InvokeServer("claimIndexReward", va)
                    end)
                    task.wait(0.1)
                end
            end
        end
        local Turrets = u__1.Turrets
        local u__2 = uZ.Index.Turrets
        local uZ_1 = typeof(Turrets) == "table" and typeof(u__2) == "table"
        if uZ_1 then
            for k, v in pF do
                local vg = v
                local uZ_2 = u__2[vg]
                local u1_3 = Turrets[vg]
                local u2_3 = uZ_2 and typeof(u1_3) == "number"
                if u2_3 then
                    local u2_4 = (tonumber(uZ_2.RewardIndex)) or 1
                    local u3_2 = u1_3 * u2_4
                    local u1_4 = not uZ_2.ClaimedReward
                    if u1_4 ~= false then
                        u1_4 = pI(uZ_2) >= u3_2
                    end
                    if u1_4 then
                        pcall(function()
                            Networking.InvokeServer("claimTurretIndexReward", vg)
                        end)
                        task.wait(0.1)
                    end
                end
            end
        end
    end
    pr = function()
        local vq, vr
        local vt_1
        local vs_1
        vr = nil
        vs_1, vt_1 = pcall(function()
            return Networking.InvokeServer("equipBestWeapon")
        end)
        local vu = vs_1 and typeof(vt_1) == "string"
        if vu and vt_1 ~= "" then
            vr = vt_1
        else
            local vs_3 = pC()
            local vt_2 = vs_3 and vs_3.Inventory and vs_3.Inventory.Swords
            if typeof(vt_2) == "table" then
                local vt_3 = -1
                for k in vt_2 do
                    local vs_5 = Swords[k]
                    local vu_1 = vs_5 and tonumber(vs_5.Boost)
                    local vs_6 = vu_1 or 0
                    if vs_6 > vt_3 then
                        vt_3 = vs_6
                        vr = k
                    end
                end
            end
        end
        if not vr then
            return
        end
        local vs_7 = pC()
        local vt_5 = (vs_7 and vs_7.EquippedItems and vs_7.EquippedItems.Swords and vs_7.EquippedItems.Swords[1]) == vr
        local vu_3 = LocalPlayer:GetAttribute("equippedWeapon") == vr and vt_5
        if vu_3 then
            return
        end
        vq = nil
        local vs_9 = pcall(function()
            vq = table.pack(Networking.InvokeServer("EquipInventoryWeapon", vr))
        end)
        if not vs_9 or not vq or not vq[1] then
            return
        end
        pcall(function()
            ClientPlayerData.UpdateData(function(ge)
                ge.EquippedItems.Swords[1] = vr
                return ge
            end)
        end)
        pcall(function()
            local vk = Framework.hook("InventoryController")
            if not vk or not vk.getItem then
                return
            end
            local vl_1 = vk:getItem("Swords", vr)
            if vl_1 then
                vl_1.Equipped = true
                vl_1:updateEquipped()
            end
            local vl_2 = vq[2]
            local vm = vl_2 ~= "N/A"
            local vn = typeof(vl_2) == "string" and vm
            if vn and vl_2 ~= vr then
                local vm_2 = vk:getItem("Swords", vl_2)
                if vm_2 then
                    vm_2:unequip()
                end
            end
        end)
    end
end
pR = fn501
pV = function()
    local vT
    if not LocalPlayer:GetAttribute("equippedWeapon") then
        return false
    end
    vT = pR()
    if #vT < 1 then
        return false
    end
    local vU = pcall(function()
        Networking.FireServer("SwordHit", vT)
    end)
    return vU
end
o5 = fn638
pS = function()
    local v3_1
    local v1 = o5()
    local v2 = not v1 or v1.State
    local v2_1
    if v2 then
        return
    end
    v2_1, v3_1 = pcall(function()
        return Networking.InvokeServer("startFight")
    end)
    if v2_1 and v3_1 then
        pcall(function()
            v1:StartFight()
        end)
        oO.canStopAfter = os.clock() + 1.25
    end
end
oN = function()
    local v9
    v9 = nil
    v9 = o5()
    if not v9 or not v9.State then
        return
    end
    pcall(function()
        v9.autoState = false
        v9:onAutoState()
    end)
    pcall(function()
        Networking.FireServer("stopFight")
    end)
end
if (not oR and not oR or not o9 and o9 or (o9 or not oR) and (not oR or not o9)) and not (not oR and not oR or not o9 and o9 or (o9 or not oR) and (not oR or not o9)) then
    oY = fn114
    po = function(g8)
        if oO.autoRollSynced == g8 then
            return
        end
        oO.autoRollSynced = g8
        pcall(function()
            Networking.FireServer("autoRollState", g8)
        end)
        pcall(function()
            local wf = Framework.hook("RollingCore")
            if wf then
                wf.autoRoll = g8
                wf.canRoll = true
                if g8 and not wf.rollHide then
                    wf:onHide()
                end
            end
        end)
    end
else
    po = fn114
    oY = function(g8)
        if oO.autoRollSynced == g8 then
            return
        end
        oO.autoRollSynced = g8
        pcall(function()
            Networking.FireServer("autoRollState", g8)
        end)
        pcall(function()
            local wf = Framework.hook("RollingCore")
            if wf then
                wf.autoRoll = g8
                wf.canRoll = true
                if g8 and not wf.rollHide then
                    wf:onHide()
                end
            end
        end)
    end
end
o8 = fn802
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = pp, Copyable = true }, "|", pu },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
pQ = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gamepad-2"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in pQ do
    if k ~= "Info" then
        fn470(v)
    end
end
local AutomationGroup = pQ.Main:AddLeftGroupbox("Automation", "bot")
AutomationGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
AutomationGroup:AddToggle("AutoPlaceTurrets", { Text = "Auto Place Turrets", Default = false })
AutomationGroup:AddToggle("AutoBuySkills", { Text = "Auto Buy Affordable Skills", Default = false })
AutomationGroup:AddToggle("AutoClaimIndex", { Text = "Auto Claim Index", Default = false })
AutomationGroup:AddToggle("AutoEquipBestSword", { Text = "Auto Equip Best Sword", Default = false })
AutomationGroup:AddDivider("Waves")
AutomationGroup:AddToggle("AutoStart", { Text = "Auto Start", Default = false })
AutomationGroup:AddToggle("AutoStopAtWave", { Text = "Auto Stop at Wave", Default = false })
AutomationGroup:AddSlider("StopAtWave", { Text = "Stop at Wave", Default = 25, Min = 1, Max = 500, Rounding = 0 })
local CombatGroup = pQ.Main:AddRightGroupbox("Combat", "swords")
CombatGroup:AddToggle("KillAura", { Text = "Kill Aura", Default = false })
task.spawn(worker)
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(worker6)
task.spawn(stopAtWaveLoop)
local function p7_7()
    local xt
    local xs
    xs = nil
    xt = nil
    local Label, Label2, Label3, xx, xy
    local function xz()
        local wD = hookfunction ~= nil
        local wE = hookmetamethod ~= nil
        local wF = getrawmetatable ~= nil
        local wG = setrawmetatable ~= nil
        local wH = getgc ~= nil
        local wI = getgenv ~= nil
        local wJ = getreg ~= nil
        local wK = getconnections ~= nil
        local wL = firesignal ~= nil
        local wM = getcallbackvalue ~= nil
        local wN = setclipboard ~= nil
        local wO = getcustomasset ~= nil
        local wP = getnamecallmethod ~= nil
        local wQ = isexecutorclosure ~= nil
        local wR = fireproximityprompt ~= nil
        local wS = firetouchinterest ~= nil
        local wT = WebSocket ~= nil
        local wU = readfile ~= nil
        local wV = writefile ~= nil
        local wX = (request or http_request) ~= nil
        local wZ = (debug and debug.getupvalues) ~= nil
        local w0 = (debug and debug.setupvalue) ~= nil
        local w1 = 0
        local w2 = { wD, wE, wF, wG, wH, wI, wJ, wK, wL, wM, wN, wO, wP, wQ, wR, wS, wT, wU, wV, wX, wZ, w0 }
        for i, v in ipairs(w2) do
            if v then
                w1 += 1
            end
        end
        local wD_1 = w1 / #w2
        if wD_1 >= 0.9 then
            return ph("Full Support", o6)
        elseif wD_1 >= 0.6 then
            return ph("Half Support", oU)
        else
            return ph("Low Support", p1)
        end
    end
    xs = "Unknown"
    pcall(function()
        local xe_1
        local xd_1
        if identifyexecutor then
            xe_1, xd_1 = identifyexecutor()
            local xf = xe_1 ~= ""
            local xg = type(xe_1) == "string" and xf
            if xg then
                local xf_1 = type(xd_1) == "string" and xd_1 ~= "" and xe_1 .. " " .. xd_1
                xs = xf_1 or xe_1
            end
        end
    end)
    local xA = xz()
    xt = os.clock()
    xx = function()
        local xl = math.floor(os.clock() - xt)
        if xl < 60 then
            return xl .. "s"
        elseif xl < 3600 then
            return string.format("%dm %ds", xl // 60, xl % 60)
        else
            return string.format("%dh %dm", xl // 3600, xl % 3600 // 60)
        end
    end
    local UserGroup = pQ.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(oZ("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, o6), true)
    UserGroup:AddLabel(oZ("UserId", tostring(LocalPlayer.UserId), o_), true)
    UserGroup:AddLabel(oZ("Executor", xs .. "  " .. xA, o6), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(oZ("Session", xx(), oU), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            p2(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            p2("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = pQ.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(oZ("Game", pu, o_), true)
    Label2 = SessionGroup:AddLabel(oZ("Players", "0/0", o6), true)
    xy = tostring(game.JobId)
    local xA_1 = #xy > 18 and string.sub(xy, 1, 18) .. "..."
    local xA_2 = xA_1 or xy
    SessionGroup:AddLabel(oZ("Job", xA_2, oM), true)
    Label = SessionGroup:AddLabel(oZ("Ping", "0 ms", oU), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            pf:Teleport(game.PlaceId, LocalPlayer)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            p2(xy, "Copied Job ID")
        end
    })
    task.spawn(function()
        local xo_1
        local xn_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(oZ("Session", xx(), oU))
            Label2:SetText(oZ("Players", #oL:GetPlayers() .. "/" .. tostring(oL.MaxPlayers), o6))
            xn_1, xo_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local xn_2 = xn_1 and xo_1 .. " ms" or "n/a"
            Label:SetText(oZ("Ping", xn_2, oU))
        end
    end)
    local SocialsGroup = pQ.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = pG })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            if setclipboard then
                setclipboard(pi)
            elseif toclipboard then
                toclipboard(pi)
            end
            Library:Notify("Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            p2(pd, "Copied website link")
        end
    })
end
local function qa_3()
    local connection
    local yl
    yl = nil
    connection = nil
    local CurrentCamera, yn
    local MovementGroup = pQ.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = pQ.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    connection = nil
    yl = function(jm)
        pcall(function()
            pm:SetGameplayPausedNotificationEnabled(not jm)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = pq:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not jm
            end
        end)
        if not jm then
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
    yn = function(jA)
        if not jA:IsA("ProximityPrompt") then
            return
        end
        jA.HoldDuration = 0
        jA.MaxActivationDistance = 50
        jA.RequiresLineOfSight = false
    end
    pU.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if pM("NoClip") then
            local Character = LocalPlayer.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local xI_1 = (descendant:IsA("BasePart")) and descendant.CanCollide
                    if xI_1 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    pN.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if pM("InfJump") then
            local xT = o9()
            if xT then
                xT:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    CurrentCamera = pa.CurrentCamera
    pU.RenderStepped:Connect(function(jT)
        if Library.Unloaded then
            return
        end
        local x3 = if pM("WalkSpeedEnabled") then 1 else 0
        if x3 == 1 then
            local xY_1 = o9()
            if xY_1 then
                xY_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if pM("Fly") then
            local xY_2 = p3()
            local xZ = o9()
            if xY_2 and xZ then
                xZ.PlatformStand = true
                local xZ_1 = Vector3.zero
                if pN:IsKeyDown(Enum.KeyCode.W) then
                    xZ_1 += CurrentCamera.CFrame.LookVector
                end
                if pN:IsKeyDown(Enum.KeyCode.S) then
                    xZ_1 -= CurrentCamera.CFrame.LookVector
                end
                if pN:IsKeyDown(Enum.KeyCode.A) then
                    xZ_1 -= CurrentCamera.CFrame.RightVector
                end
                if pN:IsKeyDown(Enum.KeyCode.D) then
                    xZ_1 += CurrentCamera.CFrame.RightVector
                end
                if pN:IsKeyDown(Enum.KeyCode.Space) then
                    xZ_1 += Vector3.new(0, 1, 0)
                end
                if pN:IsKeyDown(Enum.KeyCode.LeftControl) then
                    xZ_1 -= Vector3.new(0, 1, 0)
                end
                xY_2.AssemblyLinearVelocity = Vector3.zero
                if xZ_1.Magnitude > 0 then
                    xY_2.CFrame = xY_2.CFrame + xZ_1.Unit * Options.FlySpeed.Value * jT
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local x4 = o9()
            if x4 then
                x4.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local x6 = o9()
            if x6 then
                x6.WalkSpeed = 16
            end
        end
    end)
    Toggles.AntiGameplayPause:OnChanged(function()
        yl(Toggles.AntiGameplayPause.Value)
    end)
    if Toggles.AntiGameplayPause.Value then
        yl(true)
    end
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if pM("AntiGameplayPause") then
                yl(true)
            end
        end
    end)
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in pa:GetDescendants() do
                pcall(yn, descendant)
            end
            connection = pa.DescendantAdded:Connect(function(ko)
                if pM("InstantProximityPrompt") then
                    pcall(yn, ko)
                end
            end)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    Library:OnUnload(function()
        yl(false)
        if connection then
            connection:Disconnect()
            connection = nil
        end
    end)
end
local function p9_3()
    local MenuGroup = pQ.Settings:AddLeftGroupbox("Menu")
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local kA = 0
    local kB = tick()
    local Label
    local function kD()
        local CurrentCamera = pa.CurrentCamera
        if not CurrentCamera then
            return
        end
        pH:CaptureController()
        pH:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        kA += 1
        kB = tick()
        if Label then
            pcall(function()
                Label:SetText("AFK triggers: " .. kA)
            end)
        end
    end
    local connection = LocalPlayer.Idled:Connect(function()
        if pM("AntiAfk") then
            pcall(kD)
        end
    end)
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    Label = MenuGroup:AddLabel("AFK triggers: 0")
    MenuGroup:AddButton({
        Text = "Unload UI",
        Func = function()
            Library:Unload()
        end
    })
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local yx = (pM("AntiAfk")) and tick() - kB >= 60
            if yx then
                pcall(kD)
            end
        end
    end)
    Library:OnUnload(function()
        if connection then
            connection:Disconnect()
        end
        oY(false)
        if getgenv then
            getgenv().__OuroborosPopABalloonRngLib = nil
        end
    end)
    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder("OuroborosHub")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    ThemeManager:ApplyToTab(pQ.Settings)
    ThemeManager:LoadDefault()
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    SaveManager:SetFolder("OuroborosHub/PopABalloonRNG")
    local k3 = SaveManager:BuildConfigSection(pQ.Settings)
    local function k4(k5, k6)
        local yE_1 = (k5 == "Toggle" and Toggles or Options)[k6]
        local yD_2 = type(yE_1) == "table" and yE_1.Type == k5
        return yD_2 and yE_1 or nil
    end
    local function ld(le, lf)
        local Type = lf.Type
        if Type == "Toggle" then
            return { idx = le, type = "Toggle", value = lf.Value == true }
        elseif Type == "Slider" then
            return { idx = le, type = "Slider", value = tostring(lf.Value) }
        elseif Type == "Dropdown" then
            return { idx = le, type = "Dropdown", multi = lf.Multi == true, value = lf.Value }
        elseif Type == "Input" then
            local yI = lf.Value
            local yM = if yI then 1 else 0
            local yK = 2709 * yM + 707 * (1 - yM)
            local yL = 945 * yM + 1591 * (1 - yM)
            if not ((yK * 908 + yL * 197 + yK * yL) % 16777213 == 5205942) then
                yI = ""
            end
            return { idx = le, type = "Input", text = tostring(yI) }
        elseif Type == "ColorPicker" then
            return { idx = le, type = "ColorPicker", value = lf.Value:ToHex(), transparency = lf.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = le,
                type = "KeyPicker",
                mode = lf.Mode,
                key = lf.Value,
                modifiers = lf.Modifiers,
                toggled = lf.Toggled
            }
        else
            return nil
        end
    end
    local function lh()
        local yO = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local yP = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if yP then
                    local yP_1 = ld(k, v)
                    if yP_1 then
                        yO[#yO + 1] = yP_1
                    end
                end
            end
        end
        table.sort(yO, function(lq, lr)
            if lq.type ~= lr.type then
                return lq.type < lr.type
            end
            return lq.idx < lr.idx
        end)
        return { objects = yO }
    end
    local function lt(lu)
        local y7
        y7 = nil
        local y8 = type(lu) ~= "table"
        local zc = if y8 then 1 else 0
        local za = 2082 * zc + 1920 * (1 - zc)
        local zb = 1882 * zc + 3460 * (1 - zc)
        if not ((za * 614 + zb * 733 + za * zb) % 16777213 == 6576178) then
            y8 = type(lu.idx) ~= "string"
        end
        local zf = if y8 then 1 else 0
        local zd = 3815 * zf + 3418 * (1 - zf)
        local ze = 1541 * zf + 1139 * (1 - zf)
        if not ((zd * 834 + ze * 3361 + zd * ze) % 16777213 == 14239926) then
            y8 = type(lu.type) ~= "string"
        end
        if not y8 then
            y8 = SaveManager.Ignore[lu.idx]
        end
        if y8 then
            return false
        end
        y7 = k4(lu.type, lu.idx)
        if not y7 then
            return false
        end
        local y8_1 = pcall(function()
            if lu.type == "Input" then
                if type(lu.text) ~= "string" then
                    return
                end
                y7:SetValue(lu.text)
            elseif lu.type == "ColorPicker" then
                y7:SetValueRGB(Color3.fromHex(lu.value), lu.transparency)
            elseif lu.type == "KeyPicker" then
                y7:SetValue({ lu.key, lu.mode, lu.modifiers })
                if lu.mode == "Toggle" and lu.toggled ~= nil then
                    y7.Toggled = lu.toggled
                    y7:Update()
                end
            else
                y7:SetValue(lu.value)
            end
        end)
        return y8_1
    end
    k3:AddDivider()
    k3:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    k3:AddButton({
        Text = "Export Config to Clipboard",
        Func = function()
            local zh_1
            local zg_1
            zg_1, zh_1 = pcall(pw.JSONEncode, pw, lh())
            if not zg_1 then
                Library:Notify("Failed to encode the config")
                return
            end
            local zg_2 = setclipboard or toclipboard
            local zg_3 = type(zg_2) ~= "function" or not pcall(zg_2, zh_1)
            if zg_3 then
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Config copied to clipboard", 6)
        end
    })
    k3:AddButton({
        Text = "Import Config from Clipboard Text",
        Func = function()
            local zp_1
            local zn = Options.SaveManager_ImportSource.Value
            local zn_1
            local zt = if zn then 1 else 0
            local zr = 1168 * zt + 1681 * (1 - zt)
            local zs = 1340 * zt + 674 * (1 - zt)
            if not ((zr * 565 + zs * 604 + zr * zs) % 16777213 == 3034400) then
                zn = ""
            end
            local zo = tostring(zn):match("^%s*(.-)%s*$")
            if zo == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            zn_1, zp_1 = pcall(pw.JSONDecode, pw, zo)
            local zo_1 = not zn_1 or type(zp_1) ~= "table" or type(zp_1.objects) ~= "table"
            if zo_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            local zn_2 = 0
            for i, v in ipairs(zp_1.objects) do
                if lt(v) then
                    zn_2 += 1
                end
            end
            if zn_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local zp_2 = zn_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(zn_2, zp_2), 6)
        end
    })
    SaveManager:LoadAutoloadConfig()
end
p7_7()
qa_3()
p9_3()
