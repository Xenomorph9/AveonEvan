local A8_12_1
local FightManagerClient
local rb
local Enemies
local qb
local qu
local qe
local pT
local rh
local qA
local StrengthClickRemote
local qG
local rn_1
local p1
local qJ
local q1
local TrainingZones
local p7
local qa
local qS
local rd
local connection
local RebirthRemote
local qd
local Toggles
local LocalPlayer
local pV
local rj
local SwingInput
local qY
local qm
local rm
local Workspace
local pL
local Library
local q6
local pO
local p9
local qR
local pR
local qc
local Upgrades
local Options
local qX
local pX
local qE
local RebirthManagerClient
local Auras
local ql
local CollectionService
local qO
local pK
local p8
local function fn4()
    local yh = hookfunction ~= nil
    local yi = hookmetamethod ~= nil
    local yj = getrawmetatable ~= nil
    local yk = setrawmetatable ~= nil
    local yl = getgc ~= nil
    local ym = getgenv ~= nil
    local yn = getreg ~= nil
    local yo = getconnections ~= nil
    local yp = firesignal ~= nil
    local yq = getcallbackvalue ~= nil
    local yr = setclipboard ~= nil
    local ys = getcustomasset ~= nil
    local yt = getnamecallmethod ~= nil
    local yu = isexecutorclosure ~= nil
    local yv = fireproximityprompt ~= nil
    local yw = firetouchinterest ~= nil
    local yx = WebSocket ~= nil
    local yy = readfile ~= nil
    local yz = writefile ~= nil
    local yB = (request or http_request) ~= nil
    local yD = (debug and debug.getupvalues) ~= nil
    local yF = (debug and debug.setupvalue) ~= nil
    local yG = 0
    local yH = { yh, yi, yj, yk, yl, ym, yn, yo, yp, yq, yr, ys, yt, yu, yv, yw, yx, yy, yz, yB, yD, yF }
    for i, v in ipairs(yH) do
        if v then
            yG += 1
        end
    end
    local yh_1 = yG / #yH
    if yh_1 >= 0.9 then
        return qc("Full Support", rj)
    elseif yh_1 >= 0.6 then
        return qc("Half Support", rb)
    else
        return qc("Low Support", q1)
    end
end
local function fn70()
    local sm = p1()
    local sn = sm and sm.currencies and tonumber(sm.currencies.Wins)
    return sn or 0
end
local function fn75(ax, ay, az)
    return string.format("<b>%s</b> %s %s", ax, qc("-", "#5a6070"), qc(ay, az))
end
local function fn112(d_)
    local uM = d_ == ""
    local uN = type(d_) ~= "string"
    local uR = if uN then 1 else 0
    local uP = 253 * uR + 1662 * (1 - uR)
    local uQ = 2225 * uR + 1343 * (1 - uR)
    if not ((uP * 2789 + uQ * 1465 + uP * uQ) % 16777213 == 4528167) then
        uN = uM
    end
    if uN then
        return nil
    end
    local uM_1 = string.match(d_, "%(([^%)]+)%)$") or d_
    return uM_1
end
local function fn125()
    local Character = LocalPlayer.Character
    local sg = Character and Character:FindFirstChild("HumanoidRootPart")
    return sg
end
local function fn128(il)
    local DiscordGroup = il:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = ql })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = ql })
end
local function fn145()
    local Character = LocalPlayer.Character
    local sa = Character and Character:FindFirstChildOfClass("Humanoid")
    return sa
end
local function fn152(b5)
    if not b5 then
        return nil
    end
    local s6 = b5:GetAttribute("EnemyId") or b5.Name
    return s6
end
local function fn154()
    local tY_1
    local tX_1
    tX_1, tY_1 = pcall(function()
        return FightManagerClient.pendingReward()
    end)
    local tZ = tX_1 and tonumber(tY_1)
    return tZ or 0
end
local function fn176(bm)
    local Character = LocalPlayer.Character
    local sH = Character and Character:FindFirstChild("HumanoidRootPart")
    local sI = not Character
    local sN = if sI then 1 else 0
    local sL = 934 * sN + 3777 * (1 - sN)
    local sM = 3833 * sN + 3456 * (1 - sN)
    if not ((sL * 4052 + sM * 2402 + sL * sM) % 16777213 == 16571456) then
        sI = not sH
    end
    if not sI then
        sI = typeof(bm) ~= "CFrame"
    end
    if sI then
        return false
    end
    Character:PivotTo(bm)
    sH.AssemblyLinearVelocity = Vector3.zero
    return true
end
local function fn193()
    local uE = {}
    for k, v in qe() do
        uE[#uE + 1] = v.Name .. " (" .. v.Id .. ")"
    end
    if #uE == 0 then
        uE[1] = "Dummy (Dummy)"
    end
    return uE
end
local function fn196(cz)
    local tE = cz:FindFirstChild("HumanoidRootPart") or cz.PrimaryPart or cz:FindFirstChildWhichIsA("BasePart", true)
    return tE
end
local function worker()
    while not Library.Unloaded do
        pcall(qY)
        pcall(rm)
        pcall(p7)
        pcall(p8)
        pcall(pR)
        pcall(pX)
        pcall(qO)
        pcall(qd)
        task.wait(0.05)
    end
end
local function fn220()
    qA(qu, "Copied Discord invite to clipboard")
end
local function fn268(dk, dl)
    if not dk then
        return false
    end
    local ue = os.clock()
    local ug = ue + (dl or 2.5)
    while os.clock() < ug do
        if Library.Unloaded then
            return false
        end
        dk = qm(dk)
        local uf_1 = dk and dk.Enemy
        local ue_2 = pT(uf_1)
        local uh = qS(dk.Id)
        local ui = uf_1 and ue_2
        if ui then
            ui = uh == nil or uh > 0
        end
        if ui then
            return true
        end
        task.wait(0.1)
    end
    dk = qm(dk)
    local ue_4 = dk and qS(dk.Id)
    local uf_2 = dk
    if uf_2 then
        uf_2 = dk.Enemy ~= nil
    end
    if uf_2 then
        uf_2 = ue_4 == nil or ue_4 > 0
    end
    return uf_2
end
local function fn329()
    local uq_1
    local up_1
    local uo = {}
    up_1, uq_1 = pcall(function()
        return Enemies.getConfigs()
    end)
    local ur = not up_1 or type(uq_1) ~= "table"
    if ur then
        return uo
    end
    for k, v in uq_1 do
        local up_2 = type(v) == "table" and not Enemies.isWorld2EnemyId(k)
        if up_2 then
            local up_3 = #uo + 1
            local uq_2 = tonumber(v.level) or 0
            local ur_1 = Enemies.getCombatLevel(v)
            local us = tonumber(v.reward) or 0
            local ut = v.displayName or k
            uo[up_3] = { Id = k, Level = uq_2, Combat = ur_1, Reward = us, Name = ut, Config = v }
        end
    end
    table.sort(uo, function(dS, dT)
        if dS.Level == dT.Level then
            return dS.Reward < dT.Reward
        end
        return dS.Level < dT.Level
    end)
    return uo
end
local function fn393(an, ao)
    if setclipboard then
        setclipboard(an)
    elseif toclipboard then
        toclipboard(an)
    end
    Library:Notify(ao)
end
local function fn409(hj, hk)
    if not hj then
        return false
    end
    local xA = tonumber(hj.rebirthRequired) or 0
    local xA_1 = tonumber(hk.rebirths) or 0
    if xA > xA_1 then
        return false
    end
    if hj.worldId == rh.World2 and not hk.world2Unlocked then
        return false
    elseif hj.developerProductId then
        local ownedProducts = hk.ownedProducts
        local xB_1 = type(ownedProducts) ~= "table" or not ownedProducts[hj.developerProductId]
        if xB_1 then
            return false
        end
        return true
    else
        return true
    end
end
local function fn469(cC)
    local tG_6
    if cC then
        local Parent2 = cC.Parent
        if Parent2 and Parent2.Name == "Stage" then
            local RewardPad = Parent2:FindFirstChild("RewardPad")
            if RewardPad then
                if RewardPad:IsA("BasePart") then
                    return RewardPad
                end
                local BasePart = RewardPad:FindFirstChildWhichIsA("BasePart", true)
                if BasePart then
                    return BasePart
                end
                local tG_3 = pT(cC)
                if not tG_6 then
                    return nil
                end
                local World1 = Workspace:FindFirstChild("World1")
                local tI_1 = nil
                local tJ_1 = nil
                for k, v in CollectionService:GetTagged(p9.RewardPad) do
                    local tK_1 = v:IsA("BasePart") and World1 and v:IsDescendantOf(World1)
                    if tK_1 then
                        local Parent = v.Parent
                        local tL_1 = Parent
                        if tL_1 then
                            tL_1 = Parent.Name == "SkipEnemyPad" or Parent.Name == "TripleRewardPad"
                        end
                        if not tL_1 then
                            local tL_2 = v.Name == "RewardPad"
                            if not tL_2 then
                                tL_2 = Parent and Parent.Name == "RewardPad"
                            end
                            if not not tL_2 then
                                local Magnitude = (v.Position - tG_3.Position).Magnitude
                                if not tJ_1 or Magnitude < tJ_1 then
                                    tI_1 = v
                                    tJ_1 = Magnitude
                                end
                            end
                        end
                    end
                end
                return tI_1
            end
            local tG_4 = pT(cC)
            if not tG_6 then
                return nil
            end
            local World1 = Workspace:FindFirstChild("World1")
            local tI_2 = nil
            local tJ_2 = nil
            for k, v in CollectionService:GetTagged(p9.RewardPad) do
                local tK_4 = v:IsA("BasePart") and World1 and v:IsDescendantOf(World1)
                if tK_4 then
                    local Parent = v.Parent
                    local tL_4 = Parent
                    if tL_4 then
                        tL_4 = Parent.Name == "SkipEnemyPad" or Parent.Name == "TripleRewardPad"
                    end
                    if not tL_4 then
                        local tL_5 = v.Name == "RewardPad"
                        if not tL_5 then
                            tL_5 = Parent and Parent.Name == "RewardPad"
                        end
                        if not not tL_5 then
                            local Magnitude = (v.Position - tG_4.Position).Magnitude
                            if not tJ_2 or Magnitude < tJ_2 then
                                tI_2 = v
                                tJ_2 = Magnitude
                            end
                        end
                    end
                end
            end
            return tI_2
        end
        local tG_5 = pT(cC)
        if not tG_6 then
            return nil
        end
        local World1 = Workspace:FindFirstChild("World1")
        local tI_3 = nil
        local tJ_3 = nil
        for k, v in CollectionService:GetTagged(p9.RewardPad) do
            local tK_7 = v:IsA("BasePart") and World1 and v:IsDescendantOf(World1)
            if tK_7 then
                local Parent = v.Parent
                local tL_7 = Parent
                if tL_7 then
                    tL_7 = Parent.Name == "SkipEnemyPad" or Parent.Name == "TripleRewardPad"
                end
                if not tL_7 then
                    local tL_8 = v.Name == "RewardPad"
                    if not tL_8 then
                        tL_8 = Parent and Parent.Name == "RewardPad"
                    end
                    if not not tL_8 then
                        local Magnitude = (v.Position - tG_5.Position).Magnitude
                        if not tJ_3 or Magnitude < tJ_3 then
                            tI_3 = v
                            tJ_3 = Magnitude
                        end
                    end
                end
            end
        end
        return tI_3
    end
    tG_6 = pT(cC)
    if not tG_6 then
        return nil
    end
    local World1 = Workspace:FindFirstChild("World1")
    local tI_4 = nil
    local tJ_4 = nil
    for k, v in CollectionService:GetTagged(p9.RewardPad) do
        local tK_10 = v:IsA("BasePart") and World1 and v:IsDescendantOf(World1)
        if tK_10 then
            local Parent = v.Parent
            local tL_10 = Parent
            if tL_10 then
                tL_10 = Parent.Name == "SkipEnemyPad" or Parent.Name == "TripleRewardPad"
            end
            if not tL_10 then
                local tL_11 = v.Name == "RewardPad"
                if not tL_11 then
                    tL_11 = Parent and Parent.Name == "RewardPad"
                end
                if not not tL_11 then
                    local Magnitude = (v.Position - tG_6.Position).Magnitude
                    if not tJ_4 or Magnitude < tJ_4 then
                        tI_4 = v
                        tJ_4 = Magnitude
                    end
                end
            end
        end
    end
    return tI_4
end
local function fn478(W)
    if W then
        qb[#qb + 1] = W
    end
    return W
end
local function fn503()
    qR = 1
    qJ = false
end
local function fn512(c7)
    local t1_1
    local t0_1
    t0_1, t1_1 = pcall(function()
        return FightManagerClient.getEnemyHealths()
    end)
    local t2 = not t0_1 or type(t1_1) ~= "table"
    if t2 or not c7 then
        return nil
    end
    local t0_3 = tonumber(t1_1["World1:" .. c7]) or tonumber(t1_1[c7])
    return t0_3
end
local function fn561(df)
    if not df then
        return nil
    end
    local t8 = qE(df.Id)
    if t8 and t8.Enemy then
        return t8
    end
    return df
end
local function fn583()
    local wA = Options.UpgradeSelect and Options.UpgradeSelect.Value
    local wB = {}
    if type(wA) == "table" then
        for k, v in wA do
            if v then
                wB[#wB + 1] = k
            end
        end
    else
        local wA_1 = wA ~= ""
        local wD = type(wA) == "string" and wA_1
        if wD then
            wB[1] = wA
        end
    end
    if #wB == 0 then
        for k, v in Upgrades.order do
            wB[#wB + 1] = v
        end
    end
    return wB
end
local function fn605()
    local wc_1
    local wb_1
    if not qX("AutoRebirth") then
        return
    end
    if os.clock() - pL < 1.25 then
        return
    end
    pL = os.clock()
    wb_1, wc_1 = pcall(function()
        return RebirthManagerClient.canRebirth()
    end)
    if not wb_1 or not wc_1 then
        return
    end
    pcall(function()
        RebirthManagerClient.request()
    end)
    pcall(function()
        RebirthRemote:FireServer()
    end)
end
local function fn650(ea)
    if not ea then
        return nil
    end
    local u4 = qE(ea.Id)
    if u4 then
        return u4
    end
    return {
        Id = ea.Id,
        Enemy = nil,
        Config = ea.Config,
        Level = ea.Level,
        Combat = ea.Combat,
        Reward = ea.Reward,
        Name = ea.Name
    }
end
local function fn661()
    if not qX("AutoClick") then
        pcall(function()
            if SwingInput.isAutoFightEnabled() then
                SwingInput.setAutoFightEnabled(false)
            end
        end)
        return
    end
    pcall(function()
        if not SwingInput.isAutoFightEnabled() then
            SwingInput.setAutoFightEnabled(true)
        end
    end)
    if qX("AutoTrain") then
        return
    end
    local x1 = tonumber(pK.clickCooldown) or 0.15
    local x6 = if os.clock() - q6 < x1 then 1 else 0
    if x6 == 1 then
        return
    end
    q6 = os.clock()
    pcall(function()
        StrengthClickRemote:FireServer()
    end)
end
local function fn722()
    local uS = qe()
    local uT = Options.FarmStage and Options.FarmStage.Value
    local uU = qG(uT)
    if not uU then
        return math.max(1, #uS)
    end
    for k, v in uS do
        if v.Id == uU then
            return k
        end
    end
    return math.max(1, #uS)
end
local function fn733(cn)
    for k, v in pV() do
        if v.Id == cn then
            return v
        end
    end
    local to = Workspace:FindFirstChild(cn, true)
    local tp = to and to:IsA("Model") and CollectionService:HasTag(to, p9.Enemy)
    if tp then
        local tp_1 = Enemies.getConfig(cn)
        if tp_1 then
            local tq = tonumber(tp_1.level) or 0
            local tr = Enemies.getCombatLevel(tp_1)
            local ts = tonumber(tp_1.reward) or 0
            return {
                Id = cn,
                Enemy = to,
                Config = tp_1,
                Level = tq,
                Combat = tr,
                Reward = ts,
                Name = tp_1.displayName or cn
            }
        end
    end
end
local function fn763(au, av)
    return string.format('<font color="%s">%s</font>', av, au)
end
local function fn870()
    if connection then
        connection:Disconnect()
        connection = nil
    end
end
local function fn893()
    local sj_1
    local si_1
    si_1, sj_1 = pcall(function()
        return rd:get()
    end)
    local sk = si_1 and type(sj_1) == "table"
    if sk then
        return sj_1
    end
    return nil
end
local function fn971(gN)
    for k, v in CollectionService:GetTagged(p9.SwordPrompt) do
        local w4 = v:IsA("ProximityPrompt") and v:GetAttribute("SwordId") == gN
        if w4 then
            return v
        end
    end
end
local function fn973()
    local s9 = {}
    for k, v in CollectionService:GetTagged(p9.Enemy) do
        local ta = v:IsA("Model") and v.Parent and v.Parent.Name == "Stage"
        if ta then
            local ta_1 = qa(v)
            local tb = ta_1 and Enemies.getConfig(ta_1)
            if ta_1 and tb then
                local tb_2 = #s9 + 1
                local td = tonumber(tb.level) or 0
                local te = Enemies.getCombatLevel(tb)
                local tf = tonumber(tb.reward) or 0
                local tg = tb.displayName or ta_1
                s9[tb_2] = { Id = ta_1, Enemy = v, Config = tb, Level = td, Combat = te, Reward = tf, Name = tg }
            end
        end
    end
    table.sort(s9, function(ck, cl)
        if ck.Level == cl.Level then
            return ck.Reward < cl.Reward
        end
        return ck.Level < cl.Level
    end)
    return s9
end
local function fn974(aH)
    if Library.Unloaded then
        return false
    end
    local r6 = Toggles[aH]
    return r6 ~= nil and r6.Value == true
end
local function fn985()
    local wg = {}
    for k in Auras.AuraId do
        local wh = Auras.getConfig(k)
        if wh and not wh.RobuxOnly then
            local wi_1 = #wg + 1
            local wj = tonumber(wh.price) or 0
            local wk = tonumber(wh.strengthMultiplier) or 0
            wg[wi_1] = { Id = k, Price = wj, Multi = wk }
        end
    end
    table.sort(wg, function(f_, f0)
        return f_.Price < f0.Price
    end)
    return wg
end
local function fn1036()
    local xG = p1()
    if not xG then
        return nil
    end
    local xH
    local xI = -1
    for k in TrainingZones.TrainingZoneId do
        local xJ = TrainingZones.getConfig(k)
        if pO(xJ, xG) then
            local xK = tonumber(xJ.strengthMultiplier) or 0
            if xK > xI then
                xI = xK
                xH = k
            end
        end
    end
    if not xH then
        return nil
    end
    for k, v in CollectionService:GetTagged(p9.TrainingZone) do
        local xG_1 = v:IsA("BasePart") and v:GetAttribute("TrainingZoneId") == xH
        if xG_1 then
            return v, xH
        end
    end
end
pK = nil
pL = nil
TrainingZones = nil
pO = nil
Enemies = nil
pR = nil
connection = nil
pT = nil
Upgrades = nil
pV = nil
pX = nil
Auras = nil
p1 = nil
p7 = nil
p8 = nil
p9 = nil
qa = nil
qb = nil
qc = nil
qd = nil
qe = nil
Options = nil
Toggles = nil
ql = nil
qm = nil
Library = nil
qu = nil
local Players, pJ, pN, pP, pW, pY, pZ, p0, p2, p3, Swords, p5, p6, qh, qi, qj, SaveManager, qn, qo, qp, qq, qr, qt
RebirthRemote = nil
qA = nil
LocalPlayer = nil
StrengthClickRemote = nil
qE = nil
SwingInput = nil
qG = nil
CollectionService = nil
qJ = nil
Workspace = nil
qO = nil
FightManagerClient = nil
qR = nil
qS = nil
qX = nil
qY = nil
RebirthManagerClient = nil
q1 = nil
q6 = nil
rb = nil
rd = nil
rh = nil
local qv, qw, qx, qy, qB, FightActionRemote, qK, UpgradeManagerClient, qN, CoreGui, TeleportService, qV, qW, GuiService, q0, q3, HttpService, q5, q7, q8, AuraPackets, ra, rc, re, rf, rg
rj = nil
rm = nil
local ri, rk, rl, ro, rp
ri = nil
rk = nil
rl = nil
ro = nil
rp = nil
Players, rg, rc, q8, HttpService, GuiService, TeleportService, CoreGui, Workspace, CollectionService, LocalPlayer, qy, qu, qr, qp, p9, Swords, Auras, Upgrades, Enemies, TrainingZones, pK, rn_1, rh, rd, AuraPackets, q5, RebirthManagerClient, FightManagerClient, UpgradeManagerClient, FightActionRemote, StrengthClickRemote, RebirthRemote, Library, SaveManager, Toggles, Options, qb, connection, pN, pL, ro, ri, re, ra, q6, q0, qV, qR, qN, qJ, SwingInput, rj, rf, rb, q7, q1, qo, p6, qA, ql, qc, pW, qX, qw, qh, p1, rl, pY, pP, q3, p3, qa, pV, qE, pT, rp, rk, qS, qm, p2, qn, qe, qG, qx, pZ, pJ, p5, qv, qY, rm, qB, p7, qK, p8, qj, pR, pO, qW, pX, qO, qd, A8_12_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
if ((false or qb and p2) and ("https://ouroboros-hub-rbx.web.app/" or p2 and p2) or (qp or qb or (p2 or not p2) or "https://ouroboros-hub-rbx.web.app/" and (p2 or not qb))) and ((qb and qp or (not p2 or qp) or (p2 and qp or (qb or not p2))) and ((qp and not p2 or false and not p2) and (false and not p2 or qb and not qb))) or not (((false or qb and p2) and ("https://ouroboros-hub-rbx.web.app/" or p2 and p2) or (qp or qb or (p2 or not p2) or "https://ouroboros-hub-rbx.web.app/" and (p2 or not qb))) and ((qb and qp or (not p2 or qp) or (p2 and qp or (qb or not p2))) and ((qp and not p2 or false and not p2) and (false and not p2 or qb and not qb)))) then
    rg = game:GetService("RunService")
    rc = game:GetService("UserInputService")
    q8 = game:GetService("VirtualUser")
else
    q8 = game:GetService("RunService")
    rg = game:GetService("UserInputService")
    rc = game:GetService("VirtualUser")
end
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
TeleportService = game:GetService("TeleportService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
CollectionService = game:GetService("CollectionService")
LocalPlayer = Players.LocalPlayer
qy = "+1 Sword Fighting Escape"
qu = "https://discord.gg/ehKVq7pf7v"
qr = "https://rscripts.net/@Ouroboros"
qp = "https://ouroboros-hub-rbx.web.app/"
local A8_19 = ReplicatedStorage:WaitForChild("Source")
local A8_26 = A8_19:WaitForChild("Configs")
local A8_7 = A8_19:WaitForChild("Features")
if (false or Swords or Swords and not p9) and (Swords and Swords and (qv or not A8_12_1)) and not ((false or Swords or Swords and not p9) and (Swords and Swords and (qv or not A8_12_1))) then
    A8_26 = require(Swords:WaitForChild("Tags"))
    p9 = require(Swords:WaitForChild("Swords"))
else
    p9 = require(A8_26:WaitForChild("Tags"))
    Swords = require(A8_26:WaitForChild("Swords"))
end
Auras = require(A8_26:WaitForChild("Auras"))
if ((qS or not qA) and (not qA or not qS) or (qA and qS or (qS or qS))) and not ((qS or not qA) and (not qA or not qS) or (qA and qS or (qS or qS))) then
    A8_26 = require(Upgrades:WaitForChild("Upgrades"))
else
    Upgrades = require(A8_26:WaitForChild("Upgrades"))
end
Enemies = require(A8_26:WaitForChild("Enemies"))
TrainingZones = require(A8_26:WaitForChild("TrainingZones"))
if (StrengthClickRemote or StrengthClickRemote or (StrengthClickRemote or not StrengthClickRemote)) and (StrengthClickRemote or StrengthClickRemote or StrengthClickRemote and not StrengthClickRemote) or not ((StrengthClickRemote or StrengthClickRemote or (StrengthClickRemote or not StrengthClickRemote)) and (StrengthClickRemote or StrengthClickRemote or StrengthClickRemote and not StrengthClickRemote)) then
    pK = require(A8_26:WaitForChild("Training"))
    require(A8_26:WaitForChild("Levels"))
    rh = require(A8_26:WaitForChild("Worlds"))
else
    rh = require(rn_1:WaitForChild("Training"))
    require(rn_1:WaitForChild("Levels"))
    pK = require(rn_1:WaitForChild("Worlds"))
end
if ((not qB and not q6 or not qB and not q6) and ((pJ or q6) and (q6 and not qB)) or ((not q6 or pJ) and (qB and q6) or (not qB and q6 or not qB and pJ)) or ((false and q6 or qB and false) and (q6 and q6 and (pJ or false)) or (not qB and false and (q6 or not q6) or (q6 or not qB or pJ and not q6)))) and not ((not qB and not q6 or not qB and not q6) and ((pJ or q6) and (q6 and not qB)) or ((not q6 or pJ) and (qB and q6) or (not qB and q6 or not qB and pJ)) or ((false and q6 or qB and false) and (q6 and q6 and (pJ or false)) or (not qB and false and (q6 or not q6) or (q6 or not qB or pJ and not q6)))) then
    q5 = require(AuraPackets:WaitForChild("PlayerDataClient"))
    A8_7 = require(RebirthManagerClient:WaitForChild("Auras"):WaitForChild("AuraPackets"))
    A8_19 = require(RebirthManagerClient:WaitForChild("Upgrades"):WaitForChild("UpgradePackets"))
    rd = require(RebirthManagerClient:WaitForChild("Rebirths"):WaitForChild("RebirthManagerClient"))
else
    rd = require(A8_19:WaitForChild("PlayerDataClient"))
    AuraPackets = require(A8_7:WaitForChild("Auras"):WaitForChild("AuraPackets"))
    q5 = require(A8_7:WaitForChild("Upgrades"):WaitForChild("UpgradePackets"))
    RebirthManagerClient = require(A8_7:WaitForChild("Rebirths"):WaitForChild("RebirthManagerClient"))
end
require(A8_7:WaitForChild("Levels"):WaitForChild("LevelManagerClient"))
FightManagerClient = require(A8_7:WaitForChild("Fighting"):WaitForChild("FightManagerClient"))
UpgradeManagerClient = require(A8_7:WaitForChild("Upgrades"):WaitForChild("UpgradeManagerClient"))
FightActionRemote = ReplicatedStorage:WaitForChild("FightActionRemote")
StrengthClickRemote = ReplicatedStorage:WaitForChild("StrengthClickRemote")
RebirthRemote = ReplicatedStorage:WaitForChild("RebirthRemote")
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
qb = {}
p6 = fn478
pN = 0
pL = 0
ro = 0
ri = 0
re = 0
ra = 0
q6 = 0
if (qG or not qN or (not rl or qN) or (not qG and qG or qN and not qG)) and (not qN and qN or qN and not qN or (qG and qG or (qG or not rl))) or not ((qG or not qN or (not rl or qN) or (not qG and qG or qN and not qG)) and (not qN and qN or qN and not qN or (qG and qG or (qG or not rl)))) then
    q0 = 0
    qV = false
else
    qV = 0
    q0 = false
end
qR = 1
qN = nil
qJ = false
SwingInput = require(A8_19:WaitForChild("SwingInput"))
qA = fn393
ql = fn220
qc = fn763
pW = fn75
rj = "#7fd47f"
rf = "#6ec1ff"
rb = "#e8a34d"
q7 = "#8b93a3"
q1 = "#e05a5a"
qX = fn974
qw = fn145
qh = fn125
p1 = fn893
rl = fn70
pY = fn870
pP = fn176
q3 = function(bt)
    pY()
    connection = rg.Heartbeat:Connect(function()
        local sP_1
        local sO_1
        if Library.Unloaded then
            pY()
            return
        end
        sO_1, sP_1 = pcall(bt)
        local sQ = sO_1 and typeof(sP_1) == "CFrame"
        if sQ then
            pP(sP_1)
        end
    end)
    p6(connection)
end
p3 = function(bI)
    local sV = qh()
    local sW = not sV or not bI or not bI.Parent or not bI:IsA("BasePart")
    if sW then
        return false
    elseif firetouchinterest then
        local sW_1 = pcall(function()
            firetouchinterest(sV, bI, 0)
            firetouchinterest(sV, bI, 1)
        end)
        return sW_1
    else
        return false
    end
end
local function onTPToSpawn()
    local s_
    pY()
    pcall(function()
        FightManagerClient.returnToSpawn()
    end)
    s_ = "World1"
    pcall(function()
        local sY = rh.getPlayerWorld(LocalPlayer) or "World1"
        s_ = sY
    end)
    local s0 = Workspace:FindFirstChild(s_)
    local s1 = s0 and s0:FindFirstChild("SpawnLocation", true)
    local s0_1 = s1
    local s1_1 = not s0_1 or not s0_1:IsA("BasePart")
    if s1_1 then
        s0_1 = Workspace:FindFirstChildWhichIsA("SpawnLocation", true)
    end
    if s0_1 then
        pP(s0_1.CFrame + Vector3.new(0, 3, 0))
    end
end
qa = fn152
pV = fn973
if (not RebirthManagerClient or not qm or (RebirthManagerClient or pX) or (qm or not RebirthManagerClient or (qb or not FightActionRemote))) and ((FightActionRemote and qm or qm and not RebirthManagerClient) and (qb and false and (RebirthManagerClient and qb))) or not ((not RebirthManagerClient or not qm or (RebirthManagerClient or pX) or (qm or not RebirthManagerClient or (qb or not FightActionRemote))) and ((FightActionRemote and qm or qm and not RebirthManagerClient) and (qb and false and (RebirthManagerClient and qb)))) then
    qE = fn733
    pT = fn196
    rp = fn469
else
    pT = fn733
    rp = fn196
    qE = fn469
end
rk = fn154
qS = fn512
qm = fn561
p2 = fn268
qn = fn503
qe = fn329
qG = fn112
qx = fn722
pZ = fn650
pJ = function(ee)
    local u8 = pT(ee)
    if not u8 then
        return false
    end
    q3(function()
        local u6 = pT(ee)
        if not u6 then
            return nil
        end
        return u6.CFrame * CFrame.new(0, 2, 5)
    end)
    local u8_1 = tonumber(Enemies.attackRange) or 14
    local u8_2 = os.clock() + 1.5
    while true do
        if not (os.clock() < u8_2) then
            local va_1 = qh()
            local u8_3 = pT(ee)
            return va_1 ~= nil and u8_3 ~= nil and (va_1.Position - u8_3.Position).Magnitude <= u8_1 + 2
        end
        if Library.Unloaded then
            pY()
            return false
        end
        local va_2 = qh()
        local vb_2 = pT(ee)
        if va_2 and vb_2 and (va_2.Position - vb_2.Position).Magnitude <= u8_1 then
            break
        end
        task.wait(0.05)
    end
    task.wait(0.15)
    return true
end
p5 = function(ey)
    if not ey then
        return false
    elseif not p2(ey, 4) then
        return false
    else
        ey = qm(ey)
        local vk = ey and ey.Enemy
        local vl_1 = not vk or not pT(vk)
        if vl_1 then
            return false
        end
        local vl_2 = rk()
        if not pJ(vk) then
            pY()
            return false
        end
        local vq = 1
        while vq <= 6 do
            if Library.Unloaded then
                pY()
                return false
            end
            pcall(function()
                FightActionRemote:FireServer("Defeat", { enemy = vk })
            end)
            task.wait(0.08)
            if rk() > vl_2 then
                pY()
                return true
            end
            vq += 1
        end
        local vm = os.clock() + 1.25
        while os.clock() < vm do
            if rk() > vl_2 then
                pY()
                return true
            end
            task.wait(0.05)
        end
        pY()
        return rk() > vl_2
    end
end
qv = function(eQ)
    local vu
    vu = nil
    if not eQ then
        return false
    end
    eQ = qm(eQ)
    local vv = eQ and eQ.Enemy
    vu = rp(vv)
    if not vu then
        return false
    end
    local vv_1 = rl()
    local vw = rk()
    if vw <= 0 then
        return false
    end
    q3(function()
        if not vu.Parent then
            return nil
        end
        return vu.CFrame + Vector3.new(0, 3, 0)
    end)
    task.wait(0.12)
    local vF = 1
    while vF <= 12 do
        p3(vu)
        local vx_1 = rk() <= 0 or rl() > vv_1
        if vx_1 then
            break
        end
        task.wait(0.05)
        vF += 1
    end
    pY()
    local vx_2 = os.clock() + 0.8
    while true do
        local vC = if os.clock() < vx_2 then 1 else 0
        local vA = 522 * vC + 3280 * (1 - vC)
        local vB = 2506 * vC + 2908 * (1 - vC)
        if not ((vA * 3479 + vB * 2705 + vA * vB) % 16777213 == 9902900) then
            local vx_3 = rl() > vv_1 or rk() < vw
            return vx_3
        end
        local vy = rl() > vv_1 or rk() < vw
        if vy then
            break
        end
        task.wait(0.05)
    end
    return true
end
qY = function()
    local vX, vY
    if not qX("AutoFarmStage") then
        if qV then
            qV = false
            pY()
        end
        return
    end
    if qV then
        return
    end
    local v_ = Options.FarmDelay and Options.FarmDelay.Value or 0.45
    if os.clock() - pN < v_ then
        return
    end
    vX = qe()
    if #vX == 0 then
        return
    end
    local vZ_2 = Options.FarmStage and Options.FarmStage.Value
    if vZ_2 ~= qN then
        qN = vZ_2
        qn()
    end
    vY = qx()
    if qR < 1 then
        qR = 1
    elseif qR > vY then
        qR = vY
    end
    local vZ_3 = qR > 1 and rk() <= 0
    if vZ_3 and not qJ then
        qR = 1
    end
    qV = true
    pN = os.clock()
    pcall(function()
        if qJ then
            local vL_1 = pZ(vX[1])
            if p2(vL_1, 3) then
                qJ = false
                qR = 1
            end
            return
        end
        local vL_2 = vX[qR]
        local vM = pZ(vL_2)
        if not vM or not vM.Enemy then
            local vN_1 = vM or { Id = vL_2.Id }
            p2(vN_1, 3)
            vM = pZ(vL_2)
        end
        local vL_3 = not vM
        local vR = if vL_3 then 1 else 0
        local vP = 2095 * vR + 3952 * (1 - vR)
        local vQ = 1325 * vR + 2164 * (1 - vR)
        if not ((vP * 4032 + vQ * 3180 + vP * vQ) % 16777213 == 15436415) then
            vL_3 = not vM.Enemy
        end
        if vL_3 then
            return
        end
        local vL_4 = qR >= vY
        local vN_2 = p5(vM)
        if not vN_2 then
            pcall(function()
                FightManagerClient.returnToSpawn()
            end)
            return
        end
        if vL_4 then
            local vU = 1
            while true do
                if not (vU <= 3) then
                    return
                end
                if qv(vM) then
                    break
                end
                task.wait(0.12)
                vU += 1
            end
            qn()
            qJ = true
            return
        end
        qR += 1
    end)
    pY()
    qV = false
end
rm = fn605
qB = fn985
p7 = function()
    if not qX("AutoBuyAura") then
        return
    end
    if os.clock() - ro < 1 then
        return
    end
    ro = os.clock()
    local wq = p1()
    if not wq then
        return
    end
    local ws = wq.ownedAuras or {}
    local ws_1 = wq.currencies and wq.currencies.Wins
    local wq_1 = tonumber(ws_1) or 0
    local ws_2 = wq_1
    for k, v in qB() do
        local wz = v
        if not ws[wz.Id] and wz.Price > 0 and ws_2 >= wz.Price then
            pcall(function()
                AuraPackets.request.send({ auraId = wz.Id })
            end)
            ws_2 -= wz.Price
        end
    end
end
qK = fn583
p8 = function()
    local wW_1, wW_2
    local wV_1, wV_2
    if not qX("AutoBuyUpgrades") then
        return
    end
    if os.clock() - ri < 0.85 then
        return
    end
    ri = os.clock()
    local wU = rl()
    for k, v in qK() do
        local w3 = v
        wV_1, wW_1 = pcall(function()
            return UpgradeManagerClient.isMaxed(w3)
        end)
        if not (wV_1 and wW_1) then
            wV_2, wW_2 = pcall(function()
                return UpgradeManagerClient.getCost(w3)
            end)
            local wX_1 = wV_2 and tonumber(wW_2)
            local wV_3 = wX_1 or nil
            local wW_3 = wV_3
            if wV_3 then
                wV_3 = wU >= wW_3
            end
            if wV_3 then
                pcall(function()
                    q5.request.send({ upgradeId = w3 })
                end)
                wU -= wW_3
            end
        end
    end
end
qj = fn971
pR = function()
    if not qX("AutoBuySword") then
        return
    end
    if os.clock() - re < 1.1 then
        return
    end
    re = os.clock()
    local xk = p1()
    if not xk then
        return
    end
    local xl = {}
    local xm = xk.ownedSwords
    local xt = if xm then 1 else 0
    local xr = 3578 * xt + 257 * (1 - xt)
    local xs = 774 * xt + 2056 * (1 - xt)
    if not ((xr * 386 + xs * 1675 + xr * xs) % 16777213 == 5446930) then
        xm = xl
    end
    local xi = xm
    local xl_1 = xk.currencies and xk.currencies.Wins
    local xk_1 = tonumber(xl_1) or 0
    local xj = xk_1
    local xk_2 = Swords.progression or Swords.world1Progression
    for k, v in xk_2 do
        local xg
        local xz = v
        if not xi[xz] then
            xg = false
            pcall(function()
                xg = Swords.canBuyWithWins(xi, xz, xj) == true
            end)
            if not xg then
                return
            end
            local xh = qj(xz)
            if not xh then
                return
            end
            local BasePart = xh:FindFirstAncestorWhichIsA("BasePart")
            if BasePart then
                q3(function()
                    return BasePart.CFrame + Vector3.new(0, 3, 0)
                end)
                task.wait(0.15)
            end
            if fireproximityprompt then
                pcall(fireproximityprompt, xh)
            else
                pcall(function()
                    xh:InputHoldBegin()
                    local xd = xh.HoldDuration or 0.05
                    task.wait(xd)
                    xh:InputHoldEnd()
                end)
            end
            pY()
            return
        end
    end
end
pO = fn409
qW = fn1036
pX = function()
    local xW
    xW = nil
    if not qX("AutoTrain") then
        if not qX("AutoFarmStage") then
            pY()
        end
        return
    end
    if qX("AutoFarmStage") then
        return
    end
    local xX = tonumber(pK.clickCooldown) or 0.15
    if os.clock() - ra < xX then
        return
    end
    ra = os.clock()
    xW = qW()
    if not xW then
        return
    end
    q3(function()
        return xW.CFrame + Vector3.new(0, 3, 0)
    end)
    pcall(function()
        StrengthClickRemote:FireServer()
    end)
end
qO = fn661
qd = function()
    local yc
    if not qX("AutoRespawn") then
        return
    end
    if os.clock() - q0 < 1.25 then
        return
    end
    yc = false
    pcall(function()
        local x7 = FightManagerClient.isReviveChoiceOpen and FightManagerClient.isReviveChoiceOpen()
        if x7 then
            yc = true
        end
    end)
    pcall(function()
        local x9 = FightManagerClient.playerHealth and FightManagerClient.playerHealth()
        local x9_1 = type(x9) == "number" and x9 <= 0
        if x9_1 then
            yc = true
        end
    end)
    local yd = qw()
    if yd and yd.Health <= 0 then
        yc = true
    end
    if not yc then
        return
    end
    q0 = os.clock()
    pcall(function()
        FightManagerClient.returnToSpawn()
    end)
    pcall(function()
        FightActionRemote:FireServer("Lost", {})
    end)
    pcall(function()
        LocalPlayer:LoadCharacter()
    end)
end
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = qu, Copyable = true }, "|", qy },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
qo = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "swords"),
    Shop = Window:AddTab("Shop", "shopping-cart"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in qo do
    if k ~= "Info" then
        fn128(v)
    end
end
local A8_26_1 = qo.Main:AddLeftGroupbox("Auto Farm", "swords")
A8_26_1:AddToggle("AutoFarmStage", { Text = "Auto Farm Stage", Default = false })
A8_26_1:AddDropdown("FarmStage", { Text = "Up To Stage", Values = fn193(), Default = 1 })
A8_26_1:AddSlider("FarmDelay", { Text = "Farm Delay", Default = 0.45, Min = 0.2, Max = 3, Rounding = 2 })
local A8_7_1 = qo.Main:AddRightGroupbox("Progress", "rotate-ccw")
A8_7_1:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
A8_7_1:AddToggle("AutoTrain", { Text = "Auto Train", Default = false })
A8_7_1:AddToggle("AutoClick", { Text = "Auto Click", Default = false })
A8_7_1:AddToggle("AutoRespawn", { Text = "Auto Respawn", Default = false })
A8_7_1:AddButton({ Text = "TP to Spawn", Func = onTPToSpawn })
local ShopGroup = qo.Shop:AddLeftGroupbox("Shop", "sparkles")
ShopGroup:AddToggle("AutoBuyAura", { Text = "Auto Buy Aura", Default = false })
ShopGroup:AddToggle("AutoBuySword", { Text = "Auto Buy Sword", Default = false })
ShopGroup:AddDivider("Upgrades")
ShopGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
local A8_28_1 = {}
local A8_7_2 = #Upgrades.order
local rW = 1
while rW <= A8_7_2 do
    local rX = rW
    A8_28_1[#A8_28_1 + 1] = Upgrades.order[rX]
    rW += 1
end
if #A8_28_1 == 0 then
    for k, v in Upgrades.order do
        A8_28_1[#A8_28_1 + 1] = v
    end
end
qq, qi, p0, qt = nil, nil, nil, nil
ShopGroup:AddDropdown("UpgradeSelect", { Text = "Upgrades", Values = A8_28_1, Multi = true, Default = {} })
task.spawn(worker)
qt = fn4
local function A8_22_1()
    local y7
    local zb
    y7 = nil
    zb = nil
    local Label, Label2, Label3, y9, za
    zb = "Unknown"
    pcall(function()
        local yT_1
        local yS_1
        if identifyexecutor then
            yT_1, yS_1 = identifyexecutor()
            local yU = yT_1 ~= ""
            local yV = type(yT_1) == "string" and yU
            if yV then
                local yU_1 = type(yS_1) == "string" and yS_1 ~= "" and yT_1 .. " " .. yS_1
                local yS_2 = yU_1
                local yZ = if yS_2 then 1 else 0
                local yX = 649 * yZ + 1878 * (1 - yZ)
                local yY = 3621 * yZ + 360 * (1 - yZ)
                if not ((yX * 3862 + yY * 1430 + yX * yY) % 16777213 == 10034497) then
                    yS_2 = yT_1
                end
                zb = yS_2
            end
        end
    end)
    local zc = qt()
    y7 = os.clock()
    za = function()
        local y_ = math.floor(os.clock() - y7)
        if y_ < 60 then
            return y_ .. "s"
        elseif y_ < 3600 then
            return string.format("%dm %ds", y_ // 60, y_ % 60)
        else
            return string.format("%dh %dm", y_ // 3600, y_ % 3600 // 60)
        end
    end
    local UserGroup = qo.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(pW("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, rj), true)
    UserGroup:AddLabel(pW("UserId", tostring(LocalPlayer.UserId), rf), true)
    UserGroup:AddLabel(pW("Executor", zb .. "  " .. zc, rj), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(pW("Session", za(), rb), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            qA(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            qA("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = qo.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(pW("Game", qy, rf), true)
    Label2 = SessionGroup:AddLabel(pW("Players", "0/0", rj), true)
    y9 = tostring(game.JobId)
    local zd_1 = #y9 > 18 and string.sub(y9, 1, 18) .. "..."
    local ze = zd_1
    local zi = if ze then 1 else 0
    local zg = 2470 * zi + 2399 * (1 - zi)
    local zh = 834 * zi + 1211 * (1 - zi)
    if not ((zg * 4025 + zh * 975 + zg * zh) % 16777213 == 12814880) then
        ze = y9
    end
    local zd_2 = ze
    SessionGroup:AddLabel(pW("Job", zd_2, q7), true)
    Label = SessionGroup:AddLabel(pW("Ping", "0 ms", rb), true)
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
            qA(y9, "Copied Job ID")
        end
    })
    task.spawn(function()
        local y2_1
        local y1_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(pW("Session", za(), rb))
            Label2:SetText(pW("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), rj))
            y1_1, y2_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local y1_2 = y1_1 and y2_1 .. " ms" or "n/a"
            Label:SetText(pW("Ping", y1_2, rb))
        end
    end)
    local SocialsGroup = qo.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = ql })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            qA(qr, "Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            qA(qp, "Copied website link")
        end
    })
end
A8_22_1()
local function A8_1()
    local connection
    local MovementGroup = qo.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = qo.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local function jV(jW)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not jW)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not jW
            end
        end)
        if not jW then
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
    local function j8(j9)
        if not j9:IsA("ProximityPrompt") then
            return
        end
        j9.HoldDuration = 0
        j9.MaxActivationDistance = 50
        j9.RequiresLineOfSight = false
    end
    connection = nil
    p6(rg.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = LocalPlayer.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local zo_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if zo_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end))
    p6(rc.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local zw_1 = qw()
            if zw_1 then
                zw_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end))
    local CurrentCamera = Workspace.CurrentCamera
    p6(rg.RenderStepped:Connect(function(kx)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local zy_1 = qw()
            if zy_1 then
                zy_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local zy_3 = qh()
            local zz = qw()
            if zy_3 and zz then
                zz.PlatformStand = true
                local zz_1 = Vector3.zero
                local zH = if rc:IsKeyDown(Enum.KeyCode.W) then 1 else 0
                if zH == 1 then
                    zz_1 += CurrentCamera.CFrame.LookVector
                end
                if rc:IsKeyDown(Enum.KeyCode.S) then
                    zz_1 -= CurrentCamera.CFrame.LookVector
                end
                if rc:IsKeyDown(Enum.KeyCode.A) then
                    zz_1 -= CurrentCamera.CFrame.RightVector
                end
                if rc:IsKeyDown(Enum.KeyCode.D) then
                    zz_1 += CurrentCamera.CFrame.RightVector
                end
                if rc:IsKeyDown(Enum.KeyCode.Space) then
                    zz_1 += Vector3.new(0, 1, 0)
                end
                if rc:IsKeyDown(Enum.KeyCode.LeftControl) then
                    zz_1 -= Vector3.new(0, 1, 0)
                end
                zy_3.AssemblyLinearVelocity = Vector3.zero
                if zz_1.Magnitude > 0 then
                    zy_3.CFrame = zy_3.CFrame + zz_1.Unit * Options.FlySpeed.Value * kx
                end
            end
        end
    end))
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local zI = qw()
            if zI then
                zI.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local zK = qw()
            if zK then
                zK.WalkSpeed = 16
            end
        end
    end)
    Toggles.AntiGameplayPause:OnChanged(function()
        jV(Toggles.AntiGameplayPause.Value)
    end)
    jV(true)
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in Workspace:GetDescendants() do
                pcall(j8, descendant)
            end
            connection = Workspace.DescendantAdded:Connect(function(k0)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(j8, k0)
                end
            end)
            p6(connection)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                jV(true)
            end
        end
    end)
    return jV, function()
        if connection then
            connection:Disconnect()
            connection = nil
        end
    end
end
qq, qi = A8_1()
local function A8_11(lb)
    local lc = 0
    local ld = tick()
    lb:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = lb:AddLabel("AFK triggers: 0")
    local function lf()
        local CurrentCamera = Workspace.CurrentCamera
        if not CurrentCamera then
            return
        end
        q8:CaptureController()
        q8:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        lc += 1
        ld = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. lc)
        end)
    end
    local connection = LocalPlayer.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(lf)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local z7 = Toggles.AntiAfk.Value and tick() - ld >= 60
            if z7 then
                pcall(lf)
            end
        end
    end)
    lb:AddButton({
        Text = "Unload UI",
        Func = function()
            Library:Unload()
        end
    })
    return connection
end
local MenuGroup = qo.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
p0 = A8_11(MenuGroup)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(qo.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/SwordFightingEscape")
local A8_26_2 = SaveManager:BuildConfigSection(qo.Settings)
SaveManager:LoadAutoloadConfig()
local function A8_7_3(lG)
    local function lH(lI, lJ)
        local Aa_1 = (lI == "Toggle" and Toggles or Options)[lJ]
        local z9_2 = type(Aa_1) == "table" and Aa_1.Type == lI
        return z9_2 and Aa_1 or nil
    end
    local function lR(lS, lT)
        local Type = lT.Type
        if Type == "Toggle" then
            return { idx = lS, type = "Toggle", value = lT.Value == true }
        elseif Type == "Slider" then
            return { idx = lS, type = "Slider", value = tostring(lT.Value) }
        elseif Type == "Dropdown" then
            return { idx = lS, type = "Dropdown", multi = lT.Multi == true, value = lT.Value }
        elseif Type == "Input" then
            local Ah = lT.Value or ""
            return { idx = lS, type = "Input", text = tostring(Ah) }
        elseif Type == "ColorPicker" then
            return { idx = lS, type = "ColorPicker", value = lT.Value:ToHex(), transparency = lT.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = lS,
                type = "KeyPicker",
                mode = lT.Mode,
                key = lT.Value,
                modifiers = lT.Modifiers,
                toggled = lT.Toggled
            }
        else
            return nil
        end
    end
    local function lV()
        local An = {}
        for k, v in { Toggles, Options } do
            for k, v in v do
                local Ao = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if Ao then
                    local Ao_1 = lR(k, v)
                    if Ao_1 then
                        An[#An + 1] = Ao_1
                    end
                end
            end
        end
        table.sort(An, function(l2, l3)
            if l2.type ~= l3.type then
                return l2.type < l3.type
            end
            return l2.idx < l3.idx
        end)
        return { objects = An }
    end
    local function l4(l5)
        local AE
        AE = nil
        local AF = type(l5) ~= "table" or type(l5.idx) ~= "string" or type(l5.type) ~= "string"
        local AJ = if AF then 1 else 0
        local AH = 3918 * AJ + 565 * (1 - AJ)
        local AI = 2671 * AJ + 2269 * (1 - AJ)
        if not ((AH * 3662 + AI * 639 + AH * AI) % 16777213 == 9742250) then
            AF = SaveManager.Ignore[l5.idx]
        end
        if AF then
            return false
        end
        AE = lH(l5.type, l5.idx)
        if not AE then
            return false
        end
        local AF_1 = pcall(function()
            if l5.type == "Input" then
                if type(l5.text) ~= "string" then
                    return
                end
                AE:SetValue(l5.text)
            elseif l5.type == "ColorPicker" then
                AE:SetValueRGB(Color3.fromHex(l5.value), l5.transparency)
            elseif l5.type == "KeyPicker" then
                AE:SetValue({ l5.key, l5.mode, l5.modifiers })
                if l5.mode == "Toggle" and l5.toggled ~= nil then
                    AE.Toggled = l5.toggled
                    AE:Update()
                end
            else
                AE:SetValue(l5.value)
            end
        end)
        return AF_1
    end
    lG:AddDivider()
    lG:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    lG:AddButton("Export Config to Clipboard", function()
        local AL_1
        local AK_1
        AK_1, AL_1 = pcall(HttpService.JSONEncode, HttpService, lV())
        if not AK_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local AK_2 = setclipboard or toclipboard
        local AK_3 = type(AK_2) ~= "function" or not pcall(AK_2, AL_1)
        if AK_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    lG:AddButton("Import Config from ClipboardText", function()
        local AQ_1
        local AO = Options.SaveManager_ImportSource.Value or ""
        local AO_1
        local AP = tostring(AO):match("^%s*(.-)%s*$")
        if AP == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        AO_1, AQ_1 = pcall(HttpService.JSONDecode, HttpService, AP)
        local AP_1 = not AO_1 or type(AQ_1) ~= "table" or type(AQ_1.objects) ~= "table"
        if AP_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local AO_2 = 0
        for k, v in AQ_1.objects do
            if l4(v) then
                AO_2 += 1
            end
        end
        if AO_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local AQ_2 = AO_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(AO_2, AQ_2), 6)
    end)
end
A8_7_3(A8_26_2)
Library:OnUnload(function()
    pY()
    pcall(function()
        SwingInput.setAutoFightEnabled(false)
    end)
    qq(false)
    qi()
    if p0 then
        p0:Disconnect()
    end
    for k, v in qb do
        local A4 = v
        pcall(function()
            A4:Disconnect()
        end)
    end
    table.clear(qb)
    local AY = qw()
    if AY then
        AY.PlatformStand = false
        AY.WalkSpeed = 16
    end
end)
