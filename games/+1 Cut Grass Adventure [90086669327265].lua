local t2_2, t2_4
local l7
local mP
local lP
local mw
local md
local mV
local mC
local mj
local LocalPlayer
local mp
local lO
local mv
local mc
local UserInputService
local connection
local mi
local m_
local l_
local mH
local connection2
local Label
local CurrentCamera
local Toggles
local lT
local mA
local mh
local lZ
local mG
local mn
local l4
local mM
local mt
local VirtualUser
local mz
local Relics
local ReplicatedStorage
local mF
local mm
local mL
local ms
local mR
local lR
local my
local mf
local lX
local TrainingPads
local l2
local mK
local mr
local l8
local Options
local lQ
local mx
local mW
local lW
local mD
local mk
local l1
local mJ
local mq
local function fn10(cs)
    local Worlds = workspace:FindFirstChild("Worlds")
    if not Worlds then
        return nil
    end
    local p__1 = string.match(cs, "^Training_(%d+)$")
    if not p__1 then
        return nil
    end
    for i, v in ipairs(TrainingPads.FolderPaths) do
        local p0 = workspace
        for i, v in ipairs(v) do
            local p1_1 = p0 and p0:FindFirstChild(v)
            p0 = p1_1
        end
        local p1_2 = p0 and p0:FindFirstChild("TrainZone_" .. p__1)
        if p1_2 then
            return p1_2
        end
    end
    return nil
end
local function autoRebirthLoop()
    while true do
        task.wait(2)
        if m_.Unloaded then
            break
        end
        if Toggles.AutoRebirth.Value and mr then
            local rV_1 = mF()
            if rV_1 and rV_1.CanRebirth then
                pcall(function()
                    mr:FireServer()
                end)
                task.wait(1)
            end
        end
    end
end
local function fn33()
    local Character = LocalPlayer.Character
    local oj = Character and Character:FindFirstChild("HumanoidRootPart")
    return oj
end
local function onInputBegan()
    lW = tick()
end
local function fn72(cS)
    local qp_1
    local qo_1
    qp_1, qo_1 = nil, nil
    for k, v in pairs(TrainingPads.Pads) do
        local qq = true
        if v.GamePassId then
            qq = mA(v.GamePassId)
        elseif TrainingPads.RequireRebirths then
            local qr_1 = tonumber(v.RequiredRebirths) or 0
            qq = cS >= qr_1
        end
        if qq then
            local qq_1 = tonumber(v.Multiplier) or 0
            local qr_2 = not qo_1
            if not qr_2 then
                qr_2 = qq_1 > qo_1
            end
            if qr_2 then
                local qq_2 = l7(k)
                if qq_2 then
                    qp_1, qo_1 = qq_2, qq_1
                end
            end
        end
    end
    return qp_1
end
local function fn87(bu)
    local Zones = workspace:FindFirstChild("Zones")
    if not Zones then
        return nil
    end
    local pn = Zones:FindFirstChild(bu)
    local po = pn and pn:FindFirstChild("SpawnZone")
    local pp = po
    if po then
        po = pp:IsA("BasePart")
    end
    if po then
        return pp
    end
    for i, child in ipairs(Zones:GetChildren()) do
        local pn_1 = child:FindFirstChild(bu)
        local pm_1 = pn_1 and pn_1:FindFirstChild("SpawnZone")
        local pp_1 = pm_1
        if pm_1 then
            pm_1 = pp_1:IsA("BasePart")
        end
        if pm_1 then
            return pp_1
        end
    end
    return nil
end
local function fn124(dw)
    dw.AssemblyLinearVelocity = Vector3.zero
    dw.Anchored = true
    mG = dw
end
local function fn183(bd)
    local o5_1
    local o4_1
    local o1 = mL(bd)
    if o1 <= 0 then
        return my[bd]
    end
    local o2 = {}
    for k, v in pairs(my) do
        local o3_1 = mL(k)
        if o3_1 > 0 then
            o2[#o2 + 1] = { Index = o3_1, Position = v }
        end
    end
    if #o2 == 0 then
        return nil
    end
    table.sort(o2, function(bl, bm)
        return bl.Index < bm.Index
    end)
    local o3_2 = o2[1]
    for i, v in ipairs(o2) do
        if math.abs(v.Index - o1) < math.abs(o3_2.Index - o1) then
            o3_2 = v
        end
    end
    if #o2 < 2 then
        return o3_2.Position
    end
    o5_1, o4_1 = o2[1], o2[#o2]
    return o3_2.Position + (o4_1.Position - o5_1.Position) / (o4_1.Index - o5_1.Index) * (o1 - o3_2.Index)
end
local function onInputChanged(fw)
    local UserInputType = fw.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        lW = tick()
    end
end
local function fn195()
    local pG = {}
    for i, v in ipairs(mh()) do
        local pH = Relics.RecipesById[v]
        local pI = pH and type(pH.Ingredients) == "table"
        if pI then
            for i, v in ipairs(pH.Ingredients) do
                pG[tostring(v.LootId)] = true
            end
        end
    end
    return pG
end
local function fn197(hy)
    if hy == true then
        return true
    end
    local s7 = type(hy) == "table" and hy.Success == true
    return s7
end
local function fn200(dG)
    local DiscordGroup = dG:AddLeftGroupbox("Discord", nil, true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = l8 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = l8 })
end
local function onUnload()
    m_:Unload()
end
local function fn213(bU, bV)
    return bU.Id < bV.Id
end
local function onCopyJoinScript_JobID()
    local qV = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, mH)
    if setclipboard then
        setclipboard(qV)
    elseif toclipboard then
        toclipboard(qV)
    end
    m_:Notify("Copied join script to clipboard")
end
local function fn239()
    l1()
    local Value = Options.LootArea.Value
    if Value ~= mR then
        return { Value }
    end
    local rY_1 = {}
    for k in pairs(my) do
        rY_1[#rY_1 + 1] = k
    end
    table.sort(rY_1, function(f9, ga)
        return mL(f9) < mL(ga)
    end)
    return rY_1
end
local function onSellAllNow()
    pcall(function()
        mi:InvokeServer()
    end)
    mf(true)
end
local function fn245()
    local Character = LocalPlayer.Character
    local q2 = Character and Character:FindFirstChildOfClass("Humanoid")
    return q2
end
local function fn250(dz, dA)
    dz.CFrame = dA
    dz.AssemblyLinearVelocity = Vector3.zero
end
local function fn266(az)
    local om = {}
    for k, v in pairs(az.Value) do
        if v then
            om[#om + 1] = k
        end
    end
    return om
end
local function fn291()
    mk()
    mx(false)
    connection:Disconnect()
    connection2:Disconnect()
    print("+1 Cut Grass Adventure unloaded")
end
local function antiAfkLoop()
    while true do
        task.wait(2)
        if m_.Unloaded then
            break
        end
        if Toggles.AntiAfk.Value then
            local tW = tick() - lW
            local tX = tick() - lT
            if tW >= 300 and tX >= 60 then
                pcall(mV)
            else
                if tW < 300 and tX >= 300 then
                    pcall(mV)
                end
            end
        end
    end
end
local function fn315(aJ)
    local Zones = workspace:FindFirstChild("Zones")
    if not Zones then
        return
    end
    for i, child in ipairs(Zones:GetChildren()) do
        local SpawnZone2 = child:FindFirstChild("SpawnZone")
        local oA = SpawnZone2 and SpawnZone2:IsA("BasePart")
        if oA then
            aJ(child, SpawnZone2)
        else
            for i, child in ipairs(child:GetChildren()) do
                local SpawnZone = child:FindFirstChild("SpawnZone")
                local oA_1 = SpawnZone and SpawnZone:IsA("BasePart")
                if oA_1 then
                    aJ(child, SpawnZone)
                end
            end
        end
    end
end
local function antiGameplayPauseLoop()
    while not m_.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            mx(true)
        end
    end
end
local function fn343()
    if not Toggles.Fly.Value then
        local ro = lX()
        if ro then
            ro.PlatformStand = false
        end
    end
end
local function autoCollectLootLoop()
    while true do
        task.wait(0.25)
        if m_.Unloaded then
            break
        end
        local sz = Toggles.AutoCollectLoot.Value and not lP()
        if sz then
            l_()
        end
    end
end
local function onRenderStepped(eO)
    if m_.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local rh_1 = lX()
        if rh_1 then
            rh_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local rh_3 = lZ()
        local ri = lX()
        if rh_3 and ri then
            ri.PlatformStand = true
            local ri_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                ri_1 = ri_1 + CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                ri_1 = ri_1 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                ri_1 = ri_1 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                ri_1 = ri_1 + CurrentCamera.CFrame.RightVector
            end
            local rn = if UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
            if rn == 1 then
                ri_1 = ri_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                ri_1 = ri_1 - Vector3.new(0, 1, 0)
            end
            rh_3.Velocity = Vector3.zero
            if ri_1.Magnitude > 0 then
                rh_3.CFrame = rh_3.CFrame + ri_1.Unit * Options.FlySpeed.Value * eO
            end
        end
    end
end
local function onRscripts()
    if setclipboard then
        setclipboard(mv)
    elseif toclipboard then
        toclipboard(mv)
    end
    m_:Notify("Copied Rscripts profile to clipboard")
end
local function fn397()
    if setclipboard then
        setclipboard(mz)
    elseif toclipboard then
        toclipboard(mz)
    end
    m_:Notify("Copied Discord invite to clipboard")
end
local function fn411()
    local px = {}
    for i, v in ipairs(lO(Options.CraftRelics)) do
        local py = mP[v]
        if py then
            px[#px + 1] = py
        end
    end
    return px
end
local function fn437()
    local Packages = ReplicatedStorage:WaitForChild("Packages")
    local Index = Packages:WaitForChild("_Index")
    for i, child in ipairs(Index:GetChildren()) do
        if string.find(child.Name, "knit", 1, true) then
            local knit = child:FindFirstChild("knit")
            local n3_1 = knit and knit:FindFirstChild("Services")
            if n3_1 then
                return n3_1
            end
        end
    end
end
local function fn444()
    l1()
    local oP = {}
    for k in pairs(my) do
        oP[#oP + 1] = k
    end
    table.sort(oP, function(a4, a5)
        return mL(a4) < mL(a5)
    end)
    local oQ = { mR }
    for i, v in ipairs(oP) do
        oQ[#oQ + 1] = v
    end
    return oQ
end
local function fn454()
    mx(Toggles.AntiGameplayPause.Value)
end
local function fn457()
    if mG then
        if mG.Parent then
            mG.Anchored = false
        end
        mG = nil
    end
end
local function fn550()
    local qI = mf(false)
    if not qI then
        return false
    end
    local qJ = tonumber(qI.Count) or 0
    local qJ_1 = tonumber(qI.Capacity) or 0
    return qJ_1 > 0 and qJ >= qJ_1
end
local function fn561()
    if not Toggles.WalkSpeedEnabled.Value then
        local rq = lX()
        if rq then
            rq.WalkSpeed = 16
        end
    end
end
local function fn574(ge)
    local r3 = mD(ge)
    if r3 then
        return r3
    end
    local sb = 1
    while true do
        if not (sb <= 10) then
            return nil
        end
        if m_.Unloaded or not Toggles.AutoCollectLoot.Value then
            break
        end
        local r4_1 = lZ()
        local r5 = md(ge)
        if not r4_1 or not r5 then
            return nil
        end
        local r6_1 = r5 - r4_1.Position
        if r6_1.Magnitude > 150 then
            r6_1 = r6_1.Unit * 150
        end
        ms(r4_1, CFrame.new(r4_1.Position + r6_1 + Vector3.new(0, 10, 0)))
        task.wait(0.6)
        l1()
        local r3_1 = mD(ge)
        if r3_1 then
            return r3_1
        end
        sb += 1
    end
    return nil
end
local function fn577(bJ, bK)
    return l2[bJ] < l2[bK]
end
local function fn588(B, C, D)
    local ob = lQ and lQ:FindFirstChild(B)
    local oc = ob
    if ob then
        ob = oc:FindFirstChild(C)
    end
    local oc_1 = ob
    if ob then
        ob = oc_1:FindFirstChild(D)
    end
    return ob
end
local function fn606()
    local qO_1
    local qN_1
    if identifyexecutor then
        qO_1, qN_1 = identifyexecutor()
        local qP = qO_1 ~= ""
        local qQ = type(qO_1) == "string" and qP
        if qQ then
            local qP_1 = type(qN_1) == "string" and qN_1 ~= "" and qO_1 .. " " .. qN_1
            local qN_2 = qP_1
            local qU = if qN_2 then 1 else 0
            local qS = 2474 * qU + 414 * (1 - qU)
            local qT = 3145 * qU + 3704 * (1 - qU)
            if not ((qS * 1715 + qT * 3659 + qS * qT) % 16777213 == 6753982) then
                qN_2 = qO_1
            end
            lR = qN_2
        end
    end
end
local function fn617(aF)
    local ow = tonumber(string.match(aF, "^Zone_(%d+)$"))
    return ow or 0
end
local function fn654()
    local qB_1
    local qA_1
    qA_1, qB_1 = pcall(function()
        return mq:InvokeServer()
    end)
    local qC = qA_1 and type(qB_1) == "table"
    if qC then
        return qB_1
    end
    return nil
end
local function fn675(ag, ah)
    return string.format('<font color="%s">%s</font>', ah, ag)
end
local function fn681(dc)
    local qF_1
    local qE = not dc
    local qE_1
    if qE ~= false then
        qE = mn
    end
    if qE then
        qE = os.clock() - mj < 1
    end
    if qE then
        return mn
    end
    qE_1, qF_1 = pcall(function()
        return mm:InvokeServer()
    end)
    local qG = qE_1 and type(qF_1) == "table"
    if qG then
        mn = qF_1
        mj = os.clock()
        return qF_1
    end
    return nil
end
local function autoTrainLoop()
    while true do
        task.wait(0.2)
        if m_.Unloaded then
            break
        end
        if Toggles.AutoTrain.Value and not mM then
            local rO_1 = mF()
            local rP_1 = rO_1 and tonumber(rO_1.RebirthLevel)
            local rO_2 = rP_1 or 0
            local rP_2 = l4(rO_2)
            local rO_3 = lZ()
            if rP_2 and rO_3 then
                rO_3.CFrame = mK(rP_2)
                mC(rO_3)
            end
        else
            if not mM and mG then
                mk()
            end
        end
    end
end
local function onStepped()
    if m_.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local q4_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if q4_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function worker()
    local qY_1
    while true do
        task.wait(1)
        if m_.Unloaded then
            break
        end
        local qX = math.floor(os.clock() - mp)
        if qX < 60 then
            qY_1 = qX .. "s"
        elseif qX < 3600 then
            qY_1 = string.format("%dm %ds", qX // 60, qX % 60)
        else
            qY_1 = string.format("%dh %dm", qX // 3600, qX % 3600 // 60)
        end
        Label:SetText(mw("Session time", qY_1, mc))
    end
end
local function onJumpRequest()
    if m_.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local rc_1 = lX()
        if rc_1 then
            rc_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function autoClickLoop()
    while true do
        task.wait(0.05)
        if m_.Unloaded then
            break
        end
        if Toggles.AutoClick.Value and mt then
            pcall(function()
                mt:FireServer()
            end)
        end
    end
end
local function fn785(cF)
    local qf = cF:FindFirstChild("Grass_Zone") or cF:FindFirstChild("Grass_Zone_Border")
    local qg = qf
    if qf then
        qf = qg.Position
    end
    local qh = qf or cF:GetPivot().Position
    local qf_1 = qg
    if qf_1 then
        qf_1 = qg.Position.Y + qg.Size.Y / 2
    end
    local qg_1 = qf_1
    local qn = if qg_1 then 1 else 0
    local ql = 2416 * qn + 34 * (1 - qn)
    local qm = 254 * qn + 1184 * (1 - qn)
    if not ((ql * 224 + qm * 2522 + ql * qm) % 16777213 == 1795436) then
        qg_1 = qh.Y
    end
    local qf_2 = 0
    local qh_1 = qg_1
    local AntiJumpCollider = cF:FindFirstChild("AntiJumpCollider")
    local qj = AntiJumpCollider and AntiJumpCollider:IsA("BasePart")
    if qj then
        qf_2 = math.max(AntiJumpCollider.Size.X, AntiJumpCollider.Size.Z) / 2 + 2
    end
    return CFrame.new(qh.X + qf_2, qh_1 + 3, qh.Z + qf_2)
end
local function fn798()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    lT = tick()
end
local function worker2()
    while true do
        task.wait(2)
        if m_.Unloaded then
            break
        end
        if l1() then
            Options.LootArea:SetValues(mW())
        end
    end
end
local function fn820(aj, ak, al)
    return string.format("<b>%s</b> %s %s", aj, mJ("-", "#5a6070"), mJ(ak, al))
end
CurrentCamera = nil
lO = nil
lP = nil
lQ = nil
lR = nil
lT = nil
lW = nil
lX = nil
lZ = nil
l_ = nil
l1 = nil
l2 = nil
l4 = nil
l7 = nil
l8 = nil
mc = nil
md = nil
mf = nil
Relics = nil
mh = nil
mi = nil
mj = nil
mk = nil
TrainingPads = nil
mm = nil
mn = nil
connection2 = nil
mp = nil
mq = nil
mr = nil
ms = nil
mt = nil
mv = nil
mw = nil
mx = nil
my = nil
mz = nil
local lS, lU, lV, lY, l0, l3, l5, l6, l9, ma, mb, me, mu
mA = nil
connection = nil
mC = nil
mD = nil
mF = nil
mG = nil
mH = nil
LocalPlayer = nil
mJ = nil
mK = nil
mL = nil
mM = nil
Label = nil
mP = nil
Options = nil
mR = nil
VirtualUser = nil
Toggles = nil
UserInputService = nil
mV = nil
mW = nil
ReplicatedStorage = nil
m_ = nil
local mE, mO, MarketplaceService, mZ, m9, na, nb, nd, nh, MovementGroup, AurasGroup
local Auras
mE = nil
mO = nil
MarketplaceService = nil
mZ = nil
local SellSelectedGroup, np, LootGroup, RebirthGroup
ReplicatedStorage, MarketplaceService, UserInputService, VirtualUser, LocalPlayer, mz, mv, Auras, TrainingPads, Relics, lQ, mt, mr, mq, mm, mi, me, mb, l9, l6, l3, l0, lY, lV, lS, m9, t2_2, m_, Toggles, Options, mc, nb, mR, my, na, l2, mJ, mw, l8, lZ, lO, mL, mu, l1, mW, md, mD = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
ReplicatedStorage = game:GetService("ReplicatedStorage")
MarketplaceService = game:GetService("MarketplaceService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
local RunService = game:GetService("RunService")
LocalPlayer = Players.LocalPlayer
if ((mt or mJ or not mt and not l3) and (not l3 or mt or not l3 and mq) or (mq and mq or (mq or not mm)) and (l3 and not l3 and (l3 or not l3))) and not ((mt or mJ or not mt and not l3) and (not l3 or mt or not l3 and mq) or (mq and mq or (mq or not mm)) and (l3 and not l3 and (l3 or not l3))) then
    mv = "+1 Cut Grass Adventure"
    nd = "https://discord.gg/ehKVq7pf7v"
    mz = "https://rscripts.net/@Ouroboros"
else
    nd = "+1 Cut Grass Adventure"
    mz = "https://discord.gg/ehKVq7pf7v"
    mv = "https://rscripts.net/@Ouroboros"
end
local t2_15 = ReplicatedStorage:WaitForChild("Shared"):WaitForChild("Configs")
local m6 = require(t2_15:WaitForChild("Loot"))
if (m9 and not na and (not na and my) or t2_15 and not my and (na and mz)) and (not mz and not mz and (m9 or not m9) and (my or not na or (na or not t2_15))) or not ((m9 and not na and (not na and my) or t2_15 and not my and (na and mz)) and (not mz and not mz and (m9 or not m9) and (my or not na or (na or not t2_15)))) then
    Auras = require(t2_15:WaitForChild("Auras"))
else
    t2_15 = require(Auras:WaitForChild("Auras"))
end
TrainingPads = require(t2_15:WaitForChild("TrainingPads"))
Relics = require(t2_15:WaitForChild("Relics"))
local t2_9 = fn437
lQ = t2_9()
local t2_13 = fn588
mt = t2_13("StrengthService", "RE", "ClickRequested")
mr = t2_13("RebirtService", "RE", "RebirthButtonClicked")
mq = t2_13("RebirtService", "RF", "GetState")
mm = t2_13("DataService", "RF", "GetBackpackLootSellState")
mi = t2_13("DataService", "RF", "SellAllBackpackLoot")
me = t2_13("DataService", "RF", "SellBackpackLootItem")
mb = t2_13("CuttersShopService", "RF", "GetShopState")
l9 = t2_13("CuttersShopService", "RF", "BuyCutter")
l6 = t2_13("AuraService", "RF", "GetState")
l3 = t2_13("AuraService", "RF", "BuyOrToggleAura")
if md and not mD and (false or not ReplicatedStorage) or (mR or not mD) and (mR or md) or (false and mu or mD and false or not mD and not mD and (md and mD)) or not (md and not mD and (false or not ReplicatedStorage) or (mR or not mD) and (mR or md) or (false and mu or mD and false or not mD and not mD and (md and mD))) then
    l0 = t2_13("RelicsService", "RF", "GetState")
else
    t2_13 = l0("RelicsService", "RF", "GetState")
end
lY = t2_13("RelicsService", "RF", "StartCraft")
lV = t2_13("RelicsService", "RF", "ClaimCraftResult")
lS = {
    Speed = t2_13("UpgradesService", "RE", "SpeedButtonClicked"),
    Carry = t2_13("UpgradesService", "RE", "CarryButtonClicked"),
    ["Attack Speed"] = t2_13("UpgradesService", "RE", "AttackSpeedButtonClicked"),
    ["Attack Range"] = t2_13("UpgradesService", "RE", "AttackRangeButtonClicked")
}
m9 = { "Speed", "Carry", "Attack Speed", "Attack Range" }
if (not lZ or not lZ) and (not nb and not nb) and (not nb or lZ or not lZ and lZ) and ((not lZ or lZ or (not nb or lZ)) and (nb or nb or (not nb or nb))) or not ((not lZ or not lZ) and (not nb and not nb) and (not nb or lZ or not lZ and lZ) and ((not lZ or lZ or (not nb or lZ)) and (nb or nb or (not nb or nb)))) then
    t2_2 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
else
    mu = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
end
m_ = loadstring(game:HttpGet(t2_2 .. "Library.lua"))()
local ng = loadstring(game:HttpGet(t2_2 .. "addons/ThemeManager.lua"))()
local nf = loadstring(game:HttpGet(t2_2 .. "addons/SaveManager.lua"))()
Toggles = m_.Toggles
Options = m_.Options
mJ = fn675
mw = fn820
local m8 = "#7fd47f"
local nc = "#6ec1ff"
mc = "#e8a34d"
nb = "#8b93a3"
l8 = fn397
lZ = fn33
lO = fn266
mR = "All Areas"
mL = fn617
my = {}
mu = fn315
l1 = function()
    local aT = false
    mu(function(aV, aW)
        if not my[aV.Name] then
            aT = true
        end
        my[aV.Name] = aW.Position
    end)
    return aT
end
mW = fn444
md = fn183
mD = fn87
na = {}
l2 = {}
for k, v in pairs(m6.Items) do
    local t2_7_1 = tostring(v.DisplayName)
    na[#na + 1] = t2_7_1
    t2_13 = tonumber(v.SellPrice) or 0
    l2[t2_7_1] = t2_13
end
mZ = nil
t2_2 = 5
repeat
    if t2_2 and t2_2 or t2_2 and mZ or not mZ and mZ and (not t2_2 or mZ) or not (t2_2 and t2_2 or t2_2 and mZ or not mZ and mZ and (not t2_2 or mZ)) then
        table.sort(na, fn577)
        mZ = {}
    else
        table.sort(mZ, fn577)
        na = {}
    end
    t2_2 = (t2_2 + 6) % 8
until (t2_2 * 5 + 2) % 8 == 1
for i, v in ipairs(Auras.Order) do
    mZ[#mZ + 1] = v
end
mP = {}
local t2_7_2 = {}
for k, v in pairs(Relics.ItemsById) do
    t2_13 = tostring(v.DisplayName)
    t2_7_2[#t2_7_2 + 1] = { Id = k, Name = t2_13 }
    mP[t2_13] = k
end
t2_9 = nil
t2_2 = 3
repeat
    t2_13 = { "iohdzmpx", "khil", "pqch", "pvvzwhnr", "hsvql", "nwphakrso", "lnzwagaysg", "tssk", "knbviezy" }
    local uJ = t2_2
    t2_15 = t2_13[uJ % 9 + 1]
    if t2_15:len() >= t2_15:gsub("(.)", "%1%1", uJ % 3 % 2 + 1):len() then
        table.sort(t2_9, fn213)
        t2_7_2 = {}
    else
        table.sort(t2_7_2, fn213)
        t2_9 = {}
    end
    t2_2 = (t2_2 + 3) % 4
until (t2_2 * 3 + 1) % 4 == 3
for i, v in ipairs(t2_7_2) do
    t2_9[#t2_9 + 1] = v.Name
end
mE, mn, mj, mM, mG, mh, lU, mA, l7, mK, l4, mF, mf, lP, mC, ms, mk = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
mh = fn411
lU = fn195
mE = {}
mA = function(ci)
    local pX_1
    local pW_1
    if mE[ci] == nil then
        pW_1, pX_1 = pcall(function()
            return MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, ci)
        end)
        local pW_2 = pW_1 and pX_1 or false
        mE[ci] = pW_2
    end
    return mE[ci]
end
l7 = fn10
mK = fn785
l4 = fn72
mF = fn654
mn = nil
mj = 0
mf = fn681
lP = fn550
mM = false
mG = nil
mC = fn124
ms = fn250
mk = fn457
local t2_7_3 = m_:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = mz, Copyable = true }, "|", nd },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    Size = UDim2.fromOffset(940, 720)
})
t2_15 = {
    Info = t2_7_3:AddTab("Info", "info"),
    Main = t2_7_3:AddTab("Main", "gamepad-2"),
    Loot = t2_7_3:AddTab("Loot", "package"),
    Sell = t2_7_3:AddTab("Sell", "coins"),
    Craft = t2_7_3:AddTab("Craft", "hammer"),
    Shop = t2_7_3:AddTab("Shop", "shopping-cart"),
    Player = t2_7_3:AddTab("Player", "person-standing"),
    Settings = t2_7_3:AddTab("Settings", "settings")
}
t2_2 = fn200
for k, v in t2_15 do
    t2_2(v)
end
lR, m6, Label, mH, t2_4 = nil, nil, nil, nil, nil
local t2_7_4 = 17
repeat
    t2_2 = (t2_7_4 * 2 + 1) % 3 + 1
    if t2_2 <= 2 then
        if t2_2 <= 1 then
            t2_2 = (vector.create((t2_7_4 * 7 + 1) % 11 + 1, (t2_7_4 * 6 + 3) % 13 + 1, (t2_7_4 * 1 + 10) % 17 + 1))
            local m7_2 = (vector.create((t2_7_4 * 6 + 1) % 11 + 1, (t2_7_4 * 8 + 6) % 13 + 1, (t2_7_4 * 9 + 4) % 17 + 1))
            nh = (vector.create((t2_7_4 * 4 + 5) % 5 + 1, (t2_7_4 * 3 + 2) % 7 + 1, (t2_7_4 * 5 + 7) % 9 + 1))
            if math.abs((vector.angle(t2_2, m7_2, nh))) - math.abs((vector.angle(m7_2, t2_2, nh))) == 0 then
                mH = tostring(game.JobId)
            else
                lR = tostring(game.JobId)
            end
            t2_7_4 = (t2_7_4 + 2) % 24
        else
            t2_2 = {
                "wkaltmbjbkur",
                "ysjaxyth",
                "vkczgylkfj",
                "ojrf",
                "zar",
                "otostqxu",
                "emofidpv",
                "rjhkiqvykeaa",
                "mpdly",
                "sdgwfskrdokl",
                "vlagxtmipnis",
                "qkhitgv"
            }
            if t2_2[(t2_7_4 * 75 + 9) % 12 + 1] <= t2_2[(t2_7_4 * 75 + 9) % 12 + 1] then
                t2_4 = #mH > 18
            else
                mH = #t2_4 > 18
            end
            t2_7_4 = (t2_7_4 + 14) % 24
        end
    else
        t2_2 = {
            "pzyks",
            "jkzpc",
            "xpytxvrx",
            "hpn",
            "gxsdeedshii",
            "rykf",
            "fabjdulrok",
            "xphy",
            "rfpqxsy",
            "kbtv",
            "mcej",
            "emx",
            "mohqkk",
            "kgqse"
        }
        if t2_2[(t2_7_4 * 22 + 39) % 14 + 1] <= t2_2[(t2_7_4 * 22 + 39) % 14 + 1] then
            lR = "Unknown"
            pcall(fn606)
            t2_13 = t2_15.Info:AddLeftGroupbox("Account", "circle-user")
            t2_13:AddLabel(mw("User", LocalPlayer.Name, m8), true)
            t2_13:AddLabel(mw("Status", "Keyless", m8), true)
            t2_13:AddLabel(mw("Executor", lR, m8), true)
            m6 = t2_15.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            m6:AddLabel(mJ(nd .. " [" .. tostring(game.PlaceId) .. "]", nc), true)
            m6:AddLabel(mw("Place ID", tostring(game.PlaceId), nc), true)
            Label = m6:AddLabel(mw("Session time", "0s", mc), true)
        else
            m6 = "Unknown"
            pcall(fn606)
            m8 = lR.Info:AddLeftGroupbox("Account", "circle-user")
            m8:AddLabel(mc("User", mw.Name, LocalPlayer), true)
            m8:AddLabel(mc("Status", "Keyless", LocalPlayer), true)
            m8:AddLabel(mc("Executor", "Unknown", LocalPlayer), true)
            mJ = lR.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            mJ:AddLabel(nd(Label .. " [" .. tostring(game.PlaceId) .. "]", t2_15), true)
            mJ:AddLabel(mc("Place ID", tostring(game.PlaceId), t2_15), true)
            mJ:AddLabel(mc("Session time", "0s", nc), true)
        end
        t2_7_4 = (t2_7_4 + 14) % 24
    end
until (t2_7_4 * 5 + 15) % 24 == 10
if t2_4 then
    local t2_7_5 = 0
    repeat
        t2_13 = (vector.create((t2_7_5 * 1 + 5) % 11 + 1, (t2_7_5 * 8 + 2) % 13 + 1, (t2_7_5 * 14 + 6) % 17 + 1))
        t2_2 = (vector.create((t2_7_5 * 7 + 5) % 11 + 1, (t2_7_5 * 4 + 8) % 13 + 1, (t2_7_5 * 7 + 9) % 17 + 1))
        local uW = vector.cross(t2_13, t2_2)
        local uX = vector.dot(t2_13, t2_2)
        if vector.dot(uW, uW) + uX * uX == vector.dot(t2_13, t2_13) * vector.dot(t2_2, t2_2) + 4 then
            mH = string.sub(t2_4, 1, 18) .. "..."
        else
            t2_4 = string.sub(mH, 1, 18) .. "..."
        end
        t2_7_5 = (t2_7_5 + 1) % 4
    until (t2_7_5 * 3 + 0) % 4 == 3
end
local t2_7_6 = t2_4 or mH
np, mp, RebirthGroup, LootGroup, SellSelectedGroup, AurasGroup, MovementGroup, CurrentCamera, lW, lT, connection, connection2, lX, mx, mV, l5, mO, l_, ma = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if ((np and l_ or 122) and (l_ and (false or RebirthGroup)) or false and ((not RebirthGroup or 122) and (l_ and l_)) or ((false and not np or l_ and np) and (l_ and RebirthGroup and (false and np)) or (np and np and (not np and 122) or 122))) and not ((np and l_ or 122) and (l_ and (false or RebirthGroup)) or false and ((not RebirthGroup or 122) and (l_ and l_)) or ((false and not np or l_ and np) and (l_ and RebirthGroup and (false and np)) or (np and np and (not np and 122) or 122))) then
    nb = np
    mw:AddLabel(mp("Server", nb, t2_7_6), true)
    mw:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
    os.clock()
else
    np = t2_7_6
    m6:AddLabel(mw("Server", np, nb), true)
    m6:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
    mp = os.clock()
end
task.spawn(worker)
m8 = t2_15.Info:AddRightGroupbox("Scripts", "package")
m8:AddLabel(mJ("Included in this hub", nb), true)
m8:AddLabel(mJ(nd, nc), true)
t2_4 = t2_15.Info:AddRightGroupbox("Features", "list")
t2_4:AddLabel(mJ("Auto Click", nc), true)
t2_4:AddLabel(mJ("Auto Train", nc), true)
t2_4:AddLabel(mJ("Auto Rebirth", mc), true)
t2_4:AddLabel(mJ("Auto Collect Loot", nc), true)
t2_4:AddLabel(mJ("Auto Sell Loot", mc), true)
t2_4:AddLabel(mJ("Auto Craft Relics", nc), true)
t2_4:AddLabel(mJ("Auto Buy Cutters, Auras and Upgrades", nb), true)
t2_4:AddLabel(mJ("Player Movement", nb), true)
t2_2 = t2_15.Info:AddRightGroupbox("Socials", "link")
t2_2:AddButton({ Text = "Discord", Func = l8 })
t2_2:AddButton({ Text = "Rscripts", Func = onRscripts })
t2_13 = t2_15.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
t2_13:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
t2_13:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
t2_13:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
t2_13:AddButton({ Text = "Copy Discord Invite", Func = l8 })
local FaqGroup = t2_15.Info:AddRightGroupbox("FAQ", "circle-help")
FaqGroup:AddLabel("Where do I get a good config?", true)
FaqGroup:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
FaqGroup:AddLabel("How do I import / export configs?", true)
FaqGroup:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
FaqGroup:AddLabel("How do I report bugs?", true)
FaqGroup:AddLabel("Join the Discord and post it in the bugs channel.", true)
FaqGroup:AddLabel("How do I make suggestions?", true)
FaqGroup:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
FaqGroup:AddLabel("How do I get help or updates?", true)
FaqGroup:AddLabel("Join the Discord, updates and support are posted there first.", true)
local ClickGroup = t2_15.Main:AddLeftGroupbox("Click", "mouse-pointer-click")
ClickGroup:AddToggle("AutoClick", { Text = "Auto Click", Default = false })
local TrainingGroup = t2_15.Main:AddRightGroupbox("Training", "dumbbell")
if ((not SellSelectedGroup and not SellSelectedGroup or (FaqGroup or not np) or (not SellSelectedGroup or FaqGroup or not FaqGroup and not np)) and ((not mp or FaqGroup) and (SellSelectedGroup or SellSelectedGroup) or (FaqGroup or not np or SellSelectedGroup and not np)) or (not SellSelectedGroup and np and (FaqGroup or SellSelectedGroup) or (np and mp or not np and not mp)) and ((not SellSelectedGroup or np) and (not SellSelectedGroup or mp) and (np and not mp and (not FaqGroup and not FaqGroup)))) and not ((not SellSelectedGroup and not SellSelectedGroup or (FaqGroup or not np) or (not SellSelectedGroup or FaqGroup or not FaqGroup and not np)) and ((not mp or FaqGroup) and (SellSelectedGroup or SellSelectedGroup) or (FaqGroup or not np or SellSelectedGroup and not np)) or (not SellSelectedGroup and np and (FaqGroup or SellSelectedGroup) or (np and mp or not np and not mp)) and ((not SellSelectedGroup or np) and (not SellSelectedGroup or mp) and (np and not mp and (not FaqGroup and not FaqGroup)))) then
    RebirthGroup:AddToggle("AutoTrain", { Text = "Auto Train", Default = false })
    t2_15 = TrainingGroup.Main:AddRightGroupbox("Rebirth", "rotate-ccw")
else
    TrainingGroup:AddToggle("AutoTrain", { Text = "Auto Train", Default = false })
    RebirthGroup = t2_15.Main:AddRightGroupbox("Rebirth", "rotate-ccw")
end
if (AurasGroup and not MovementGroup or (not connection2 or AurasGroup)) and (MovementGroup and AurasGroup or (m8 or connection2)) and (not AurasGroup and not t2_13 and (t2_13 and AurasGroup) or (t2_13 or not t2_13 or (connection2 or not m8))) and ((MovementGroup or connection2) and (AurasGroup or not MovementGroup) or (connection2 or connection2) and (not m8 and not connection2) or ((not AurasGroup or t2_13) and (not t2_13 or m8) or (not m8 or t2_13 or (not connection2 or not m8)))) or not ((AurasGroup and not MovementGroup or (not connection2 or AurasGroup)) and (MovementGroup and AurasGroup or (m8 or connection2)) and (not AurasGroup and not t2_13 and (t2_13 and AurasGroup) or (t2_13 or not t2_13 or (connection2 or not m8))) and ((MovementGroup or connection2) and (AurasGroup or not MovementGroup) or (connection2 or connection2) and (not m8 and not connection2) or ((not AurasGroup or t2_13) and (not t2_13 or m8) or (not m8 or t2_13 or (not connection2 or not m8))))) then
    RebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
    LootGroup = t2_15.Loot:AddLeftGroupbox("Loot", "gem")
else
    LootGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
    t2_15 = RebirthGroup.Loot:AddLeftGroupbox("Loot", "gem")
end
LootGroup:AddDropdown("LootArea", { Values = mW(), Default = 1, Text = "Area", Searchable = true })
LootGroup:AddToggle("AutoCollectLoot", { Text = "Auto Collect Loot", Default = false })
task.spawn(worker2)
local SellAllGroup = t2_15.Sell:AddLeftGroupbox("Sell All", "banknote")
SellAllGroup:AddToggle("AutoSellAll", { Text = "Auto Sell All Loot", Default = false })
SellAllGroup:AddSlider("AutoSellInterval", { Text = "Auto Sell Interval", Default = 1, Min = 1, Max = 60, Rounding = 0, Suffix = "s" })
SellAllGroup:AddButton({ Text = "Sell All Now", Func = onSellAllNow })
SellSelectedGroup = t2_15.Sell:AddRightGroupbox("Sell Selected", "list-checks")
SellSelectedGroup:AddDropdown("SellLootList", { Values = na, Default = {}, Multi = true, Text = "Loot", Searchable = true })
SellSelectedGroup:AddToggle("AutoSellSelected", { Text = "Auto Sell Selected Loot", Default = false })
local RelicsGroup = t2_15.Craft:AddLeftGroupbox("Relics", "gem")
RelicsGroup:AddDropdown("CraftRelics", { Values = t2_9, Default = {}, Multi = true, Text = "Relics", Searchable = true })
RelicsGroup:AddToggle("AutoCraftRelics", { Text = "Auto Craft Relics", Default = false })
RelicsGroup:AddToggle("KeepRelicIngredients", { Text = "Keep Selected Relic Ingredients", Default = false })
local CuttersGroup = t2_15.Shop:AddLeftGroupbox("Cutters", "sword")
CuttersGroup:AddToggle("AutoBuyCutters", { Text = "Auto Buy Cutters", Default = false })
AurasGroup = t2_15.Shop:AddLeftGroupbox("Auras", "sparkles")
AurasGroup:AddToggle("AutoBuyAuras", { Text = "Auto Buy Auras", Default = false })
local UpgradesGroup = t2_15.Shop:AddRightGroupbox("Upgrades", "arrow-up")
UpgradesGroup:AddDropdown("UpgradeList", { Values = m9, Default = {}, Multi = true, Text = "Upgrades" })
UpgradesGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
MovementGroup = t2_15.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
nh = t2_15.Player:AddRightGroupbox("Fly", "feather")
nh:AddToggle("Fly", { Text = "Fly", Default = false })
nh:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
lX = fn245
CurrentCamera = workspace.CurrentCamera
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fn343)
Toggles.WalkSpeedEnabled:OnChanged(fn561)
mx = function(e8)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not e8)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not e8
        end
    end)
    if not e8 then
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
Toggles.AntiGameplayPause:OnChanged(fn454)
task.spawn(antiGameplayPauseLoop)
local MenuGroup = t2_15.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
m_.ToggleKeybind = Options.MenuKeybind
lW = tick()
lT = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local rD = v
        pcall(function()
            rD:Disable()
        end)
    end
end)
mV = fn798
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
if (not SellSelectedGroup and not nh and (not SellSelectedGroup or lX) or (lX and lX or (SellSelectedGroup or nh)) or (lX or lX or (SellSelectedGroup or not LootGroup) or (lX and not LootGroup or not SellSelectedGroup and SellSelectedGroup))) and ((SellSelectedGroup or SellSelectedGroup or lX and not SellSelectedGroup) and (not LootGroup or SellSelectedGroup or (not LootGroup or nh)) and (not LootGroup and LootGroup and (not lX or lX) or (lX or LootGroup) and (not nh and not nh))) and not ((not SellSelectedGroup and not nh and (not SellSelectedGroup or lX) or (lX and lX or (SellSelectedGroup or nh)) or (lX or lX or (SellSelectedGroup or not LootGroup) or (lX and not LootGroup or not SellSelectedGroup and SellSelectedGroup))) and ((SellSelectedGroup or SellSelectedGroup or lX and not SellSelectedGroup) and (not LootGroup or SellSelectedGroup or (not LootGroup or nh)) and (not LootGroup and LootGroup and (not lX or lX) or (lX or LootGroup) and (not nh and not nh)))) then
    t2_15:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    t2_15:AddButton("Unload", onUnload)
    l5:SetLibrary(MenuGroup)
    l5:SetFolder("OuroborosHub")
    l5:SaveDefault("Evil Helo Kitty")
    m_:SetLibrary(MenuGroup)
    m_:IgnoreThemeSettings()
    m_:SetIgnoreIndexes({ "MenuKeybind" })
    m_:SetFolder("OuroborosHub/CutGrassAdventure")
    m_:BuildConfigSection(nf.Settings)
    l5:ApplyToTab(nf.Settings)
    l5:LoadDefault()
    m_:LoadAutoloadConfig()
    MenuGroup:OnUnload(fn291)
    task.spawn(autoClickLoop)
    task.spawn(autoTrainLoop)
    task.spawn(autoRebirthLoop)
else
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    MenuGroup:AddButton("Unload", onUnload)
    ng:SetLibrary(m_)
    ng:SetFolder("OuroborosHub")
    ng:SaveDefault("Evil Helo Kitty")
    nf:SetLibrary(m_)
    nf:IgnoreThemeSettings()
    nf:SetIgnoreIndexes({ "MenuKeybind" })
    nf:SetFolder("OuroborosHub/CutGrassAdventure")
    nf:BuildConfigSection(t2_15.Settings)
    ng:ApplyToTab(t2_15.Settings)
    ng:LoadDefault()
    nf:LoadAutoloadConfig()
    m_:OnUnload(fn291)
    task.spawn(autoClickLoop)
    task.spawn(autoTrainLoop)
    task.spawn(autoRebirthLoop)
    l5 = fn239
end
mO = fn574
l_ = function()
    local sf = lZ()
    if not sf then
        return
    end
    local CFrame2 = sf.CFrame
    mM = true
    mk()
    for i, v in ipairs(l5()) do
        local sh = mO(v)
        if sh then
            for i, child in ipairs(sh:GetChildren()) do
                local sh_1 = m_.Unloaded or not Toggles.AutoCollectLoot.Value or lP()
                if sh_1 then
                    break
                end
                local sh_2 = child:IsA("Model") and child:GetAttribute("LootId")
                if sh_2 then
                    local Base = child:FindFirstChild("Base")
                    local si = Base and child:FindFirstChild("PickupPrompt", true)
                    local se = si
                    local si_1 = se and se:IsA("ProximityPrompt")
                    if si_1 then
                        local sf_1 = lZ()
                        if not sf_1 then
                            break
                        end
                        ms(sf_1, CFrame.new(Base.Position + Vector3.new(0, 3, 0)))
                        task.wait(0.3)
                        pcall(function()
                            fireproximityprompt(se)
                        end)
                        task.wait(0.3)
                        mf(true)
                    end
                end
            end
        end
    end
    mM = false
    local sf_2 = lZ()
    if sf_2 then
        ms(sf_2, CFrame2)
    end
end
task.spawn(autoCollectLootLoop)
task.spawn(function()
    while true do
        task.wait(math.max(1, Options.AutoSellInterval.Value))
        if m_.Unloaded then
            break
        end
        if Toggles.AutoSellAll.Value and mi then
            local sB_1 = Toggles.KeepRelicIngredients.Value and lU()
            local sC = sB_1 or nil
            local sB_2 = sC
            if sC then
                sC = next(sB_2)
            end
            if sC and me then
                local sC_1 = mf(true)
                local sD_1 = sC_1 and type(sC_1.Items) == "table"
                if sD_1 then
                    for i, v in ipairs(sC_1.Items) do
                        local sN = v
                        if m_.Unloaded or not Toggles.AutoSellAll.Value then
                            break
                        elseif not sB_2[tostring(sN.LootId)] then
                            pcall(function()
                                me:InvokeServer(sN.Key)
                            end)
                        end
                    end
                    mf(true)
                end
            else
                local sB_3 = mf(false)
                local sC_3 = sB_3
                if sC_3 then
                    local sD_2 = tonumber(sB_3.Count) or 0
                    sC_3 = sD_2 > 0
                end
                if sC_3 then
                    pcall(function()
                        mi:InvokeServer()
                    end)
                    mf(true)
                end
            end
        end
    end
end)
task.spawn(function()
    while true do
        task.wait(1)
        if m_.Unloaded then
            break
        end
        if Toggles.AutoSellSelected.Value and me then
            local sO_1 = {}
            for i, v in ipairs(lO(Options.SellLootList)) do
                sO_1[v] = true
            end
            local sP = Toggles.KeepRelicIngredients.Value and lU()
            local sQ = sP or nil
            local sQ_1 = mf(true)
            local sR = sQ_1 and type(sQ_1.Items) == "table"
            if sR then
                for i, v in ipairs(sQ_1.Items) do
                    local s3 = v
                    if m_.Unloaded or not Toggles.AutoSellSelected.Value then
                        break
                    end
                    local sQ_3 = sO_1[tostring(s3.DisplayName)]
                    if sQ_3 then
                        local sR_1 = sQ and sQ[tostring(s3.LootId)]
                        sQ_3 = not sR_1
                    end
                    if sQ_3 then
                        pcall(function()
                            me:InvokeServer(s3.Key)
                        end)
                    end
                end
                mf(true)
            end
        end
    end
end)
ma = fn197
task.spawn(function()
    while true do
        task.wait(3)
        if m_.Unloaded then
            break
        end
        local s9 = Toggles.AutoBuyCutters.Value and mb
        local s9_1, s9_4
        local ta = s9 and l9
        local ta_1, ta_2
        if ta then
            s9_1, ta_1 = pcall(function()
                return mb:InvokeServer()
            end)
            local tb = s9_1 and type(ta_1) == "table" and type(ta_1.CuttersData) == "table"
            if tb then
                local s9_2 = {}
                for k, v in pairs(ta_1.CuttersData) do
                    if not ta_1.OwnedCutters[k] then
                        local tb_1 = #s9_2 + 1
                        local tc = tonumber(v.Price) or 0
                        s9_2[tb_1] = { Name = k, Price = tc }
                    end
                end
                table.sort(s9_2, function(hL, hM)
                    return hL.Price < hM.Price
                end)
                for i, v in ipairs(s9_2) do
                    local tp = v
                    if m_.Unloaded or not Toggles.AutoBuyCutters.Value then
                        break
                    end
                    s9_4, ta_2 = pcall(function()
                        return l9:InvokeServer(tp.Name)
                    end)
                    local tb_2 = s9_4 and ma(ta_2)
                    if tb_2 then
                        break
                    end
                end
            end
        end
    end
end)
task.spawn(function()
    while true do
        task.wait(3)
        if m_.Unloaded then
            break
        end
        local tq = Toggles.AutoBuyAuras.Value and l6
        local tq_1, tq_4
        local tr = tq and l3
        local tr_1
        if tr then
            tq_1, tr_1 = pcall(function()
                return l6:InvokeServer()
            end)
            local ts = tq_1 and type(tr_1) == "table" and type(tr_1.Items) == "table"
            local ts_2
            if ts then
                for i, v in ipairs(mZ) do
                    local tA = v
                    if m_.Unloaded or not Toggles.AutoBuyAuras.Value then
                        break
                    end
                    local tq_3 = tr_1.Items[tA]
                    if tq_3 and not tq_3.Owned then
                        tq_4, ts_2 = pcall(function()
                            return l3:InvokeServer(tA)
                        end)
                        local tt = tq_4 and ma(ts_2)
                        if tt then
                            break
                        end
                    end
                end
            end
        end
    end
end)
task.spawn(function()
    while true do
        task.wait(1)
        if m_.Unloaded then
            break
        end
        if Toggles.AutoBuyUpgrades.Value then
            for i, v in ipairs(lO(Options.UpgradeList)) do
                local tE = lS[v]
                if tE then
                    pcall(function()
                        tE:FireServer()
                    end)
                end
            end
        end
    end
end)
task.spawn(function()
    while true do
        task.wait(1)
        if m_.Unloaded then
            break
        end
        local tM = Toggles.AutoCraftRelics.Value and l0
        local tM_2, tM_5
        local tN = tM and lY
        local tN_1, tN_2
        if tN and lV then
            tM_2, tN_1 = pcall(function()
                return l0:InvokeServer()
            end)
            local tO = tM_2 and type(tN_1) == "table"
            if tO then
                local PendingResult = tN_1.PendingResult
                local tO_1 = type(PendingResult) == "table" and PendingResult.Active == true
                if tO_1 then
                    pcall(function()
                        lV:InvokeServer()
                    end)
                elseif tN_1.Active ~= true then
                    for i, v in ipairs(mh()) do
                        local tV = v
                        if m_.Unloaded or not Toggles.AutoCraftRelics.Value then
                            break
                        end
                        tM_5, tN_2 = pcall(function()
                            return lY:InvokeServer(tV)
                        end)
                        local tO_2 = tM_5 and ma(tN_2)
                        if tO_2 then
                            break
                        end
                    end
                end
            end
        end
    end
end)
task.spawn(antiAfkLoop)
