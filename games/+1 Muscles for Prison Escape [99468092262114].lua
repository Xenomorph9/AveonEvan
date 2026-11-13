local ss_2
local lT
local me
local lA
local lQ
local mD
local mA
local mk
local lG
local mn
local l1
local lJ
local Train
local mq
local Label
local mt
local lt
local ma
local PlayerF
local lS
local md
local lz
local lV
local mC
local lC
local mj
local lY
local lF
local mm
local connection2
local mg
local mp
local l3
local lL
local ms
local l6
local ls
local l9
local mv
local lR
local mc
local lv
local mB
local connection
local mi
local l_
local l2
local l8
local lN
local mb
local mx
local lx
local function onUnload()
    mb:Unload()
end
local function fn30(b3)
    local oI = b3.PrimaryPart or b3:FindFirstChild("Mesh", true) or b3:FindFirstChildWhichIsA("BasePart", true)
    return oI
end
local function autoClickLoop()
    while not mb.Unloaded do
        local re = l_.ClickDelay and l_.ClickDelay.Value or 0.05
        local wait = task.wait
        local rf = l2.AutoClick.Value and math.max(re, 0.01)
        local rd_2 = rf or 0.35
        wait(rd_2)
        if mb.Unloaded then
            break
        end
        if l2.AutoClick.Value then
            lL()
        end
    end
end
local function fn105()
    local nP = lC()
    if nP and nP.Mgr and nP.Mgr.BackpackMgr and nP.Mgr.BackpackMgr.GetMaxCapacity then
        local nQ_1 = tonumber(nP.Mgr.BackpackMgr.GetMaxCapacity()) or 3
        return nQ_1
    end
    local nP_1 = ls()
    local nQ_2 = nP_1 and nP_1.backpackData
    local nP_2 = nQ_2
    if nQ_2 then
        nQ_2 = nP_2.maxCapacity
    end
    local nP_3 = tonumber(nQ_2) or 3
    return nP_3
end
local function autoSellLoop()
    while not mb.Unloaded do
        local q9 = l_.SellDelay and l_.SellDelay.Value or 1
        local q9_1 = l2.AutoSell.Value or l2.AutoBack.Value
        local wait = task.wait
        local rb = q9_1 and math.max(q9, 0.25)
        local q8_2 = rb or 0.5
        wait(q8_2)
        if mb.Unloaded then
            break
        end
        local q8_3 = l2.AutoBack.Value and mD()
        if q8_3 then
            l8()
        else
            local q8_4 = l2.AutoSell.Value and ms() > 0
            if q8_4 then
                lz()
            end
        end
    end
end
local function fn133()
    connection:Disconnect()
    connection2:Disconnect()
    print("+1 Muscles for Prison Escape unloaded")
end
local function fn163(an, ao, ap)
    return string.format("<b>%s</b> %s %s", an, mc("-", "#5a6070"), mc(ao, ap))
end
local function fn179()
    local pt = ls()
    local pu = pt and pt.cash
    local pt_1 = tonumber(pu) or 0
    return pt_1
end
local function fn202()
    local attr = mq:GetAttribute("Level")
    if attr ~= nil then
        local pD_1 = tonumber(attr) or 1
        return pD_1
    end
    local pC_1 = ls()
    local pD_2 = pC_1 and pC_1.level
    local pC_2 = tonumber(pD_2) or 1
    return pC_2
end
local function fn208(bX)
    if not bX then
        return nil
    end
    for i, v in ipairs({ "BurnArea", "Target1", "Target2", "Target3" }) do
        local oz = bX:FindFirstChild(v)
        if oz then
            if oz:IsA("BasePart") then
                return oz
            end
            local oA = oz.PrimaryPart or oz:FindFirstChildWhichIsA("BasePart", true)
            if oA then
                return oA
            end
        end
    end
    return bX:FindFirstChildWhichIsA("BasePart", true)
end
local function fn214()
    local nH = lC()
    if nH and nH.Mgr and nH.Mgr.BackpackMgr then
        local BackpackMgr = nH.Mgr.BackpackMgr
        local nH_1 = BackpackMgr.GetCarryCount and BackpackMgr.GetCarryCount()
        local nJ_1 = nH_1
        local nO_1 = if nJ_1 then 1 else 0
        local nM_1 = 3659 * nO_1 + 930 * (1 - nO_1)
        local nN_1 = 3153 * nO_1 + 199 * (1 - nO_1)
        if not ((nM_1 * 2507 + nN_1 * 2029 + nM_1 * nN_1) % 16777213 == 10330164) then
            nJ_1 = 0
        end
        local nH_2 = nJ_1
        local nJ_2 = BackpackMgr.GetTemporaryCount and BackpackMgr.GetTemporaryCount()
        local nI_2 = nJ_2 or 0
        local max = math.max
        local nK_1 = tonumber(nH_2) or 0
        local nH_3 = (tonumber(nI_2))
        local nO_2 = if nH_3 then 1 else 0
        local nM_2 = 3917 * nO_2 + 2315 * (1 - nO_2)
        local nN_2 = 1644 * nO_2 + 3089 * (1 - nO_2)
        if not ((nM_2 * 2193 + nN_2 * 143 + nM_2 * nN_2) % 16777213 == 15264621) then
            nH_3 = 0
        end
        return max(nK_1, nH_3)
    end
    local nH_4 = ls()
    local nH_5 = nH_4 and nH_4.backpackData
    if not nH_5 then
        return 0
    end
    local max = math.max
    local nJ_4 = (tonumber(nH_5.carryCount))
    local nO_3 = if nJ_4 then 1 else 0
    local nM_3 = 889 * nO_3 + 2796 * (1 - nO_3)
    local nN_3 = 3591 * nO_3 + 3161 * (1 - nO_3)
    if not ((nM_3 * 2759 + nN_3 * 3043 + nM_3 * nN_3) % 16777213 == 16572563) then
        nJ_4 = 0
    end
    local nK_2 = tonumber(nH_5.temporaryCount) or 0
    return max(nJ_4, nK_2)
end
local function onRscripts()
    mx(mg, "Copied Rscripts profile to clipboard")
end
local function onCopyJoinScript_JobID()
    local eX = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, lJ)
    mx(eX, "Copied join script to clipboard")
end
local function autoExerciseLoop()
    while not mb.Unloaded do
        local ri = l_.ExerciseDelay and l_.ExerciseDelay.Value or 0.05
        local ri_2
        local wait = task.wait
        local rj = l2.AutoExercise.Value and math.max(ri, 0.01)
        local rj_1
        local rh_2 = rj or 0.35
        wait(rh_2)
        if mb.Unloaded then
            break
        elseif not l2.AutoExercise.Value then
        else
            local rh_3 = lT()
            if not rh_3 then
                continue
            end
            rj_1, ri_2 = lt(rh_3.Id)
            if rj_1 and ri_2 then
                if lS(ri_2) then
                    local ri_3 = rj_1.PrimaryPart or rj_1:FindFirstChild("Trigger", true) or rj_1:FindFirstChildWhichIsA("BasePart", true)
                    local rk_1 = ri_3
                    if not rk_1 then
                        local ri_4 = mq.Character and mq.Character:GetPivot().Position
                        mC(ri_4)
                        task.wait(0.2)
                        local ri_5 = rj_1.PrimaryPart or rj_1:FindFirstChild("Trigger", true) or rj_1:FindFirstChildWhichIsA("BasePart", true)
                        rk_1 = ri_5
                    end
                    if rk_1 then
                        mC(rk_1.Position)
                        local ri_6 = mp()
                        if ri_6 and (ri_6.Position - rk_1.Position).Magnitude > 8 then
                            md(rk_1.Position)
                            task.wait(0.1)
                        end
                    end
                end
            end
            me(rh_3.Id)
        end
    end
end
local function fn267()
    local qg_1
    local qf_1
    if identifyexecutor then
        qg_1, qf_1 = identifyexecutor()
        local qh = qg_1 ~= ""
        local qi = type(qg_1) == "string" and qh
        if qi then
            local qh_1 = type(qf_1) == "string" and qf_1 ~= "" and qg_1 .. " " .. qf_1
            l6 = qh_1 or qg_1
        end
    end
end
local function fn269()
    if not workspace.CurrentCamera then
        return
    end
    mt:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    mt:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    lx = tick()
end
local function fn300(ec)
    local WorldScene = workspace:FindFirstChild("WorldScene")
    if not WorldScene then
        return nil, nil
    end
    local p_ = 1
    while p_ <= 4 do
        local p1 = p_
        local pV = WorldScene:FindFirstChild(tostring(p1))
        local pW = pV and pV:FindFirstChild("TrainArea")
        local pV_1 = pW
        if pW then
            pW = pV_1:FindFirstChild(tostring(ec))
        end
        local pV_2 = pW
        if pV_2 then
            return pV_2, p1
        end
        p_ += 1
    end
    return nil, nil
end
local function fn317()
    local pI = mn()
    local pJ
    for i, v in ipairs(Train.GetTable()) do
        local pK = v.ShopId == nil
        if pK then
            pK = (v.Rebirth or 0) <= pI
        end
        if pK then
            local pK_1 = not pJ
            if not pK_1 then
                pK_1 = (v.PowerBuff or 0) > (pJ.PowerBuff or 0)
            end
            if pK_1 then
                pJ = v
            end
        end
    end
    return pJ
end
local function fn328()
    local ny_1
    local nx_1
    nx_1, ny_1 = pcall(getrenv)
    local nz = nx_1 and type(ny_1) == "table" and type(ny_1.shared) == "table"
    if nz then
        return ny_1.shared
    end
    return nil
end
local function fn350()
    local pz = ls()
    local pA = pz and pz.rebirth
    local pz_1 = tonumber(pA) or 0
    return pz_1
end
local function fn357()
    local pq = if not mD() then 1 else 0
    if pq == 1 then
        return false
    end
    if l2.AutoBack.Value then
        mi()
        task.wait(0.5)
    end
    if l2.AutoSell.Value or l2.AutoBack.Value then
        lz()
        task.wait(0.35)
        if ms() > 0 then
            lz()
            task.wait(0.25)
        end
    end
    return true
end
local function fn423()
    mx(mk, "Copied Discord invite to clipboard")
end
local function worker()
    local qo_1
    while true do
        task.wait(1)
        if mb.Unloaded then
            break
        end
        local qn = math.floor(os.clock() - lv)
        if qn < 60 then
            qo_1 = qn .. "s"
        elseif qn < 3600 then
            qo_1 = string.format("%dm %ds", qn // 60, qn % 60)
        else
            qo_1 = string.format("%dh %dm", qn // 3600, qn % 3600 // 60)
        end
        Label:SetText(l3("Session time", qo_1, lG))
    end
end
local function fn441()
    local p8 = lC()
    if p8 and p8.Ctrl and p8.Ctrl.Player then
        local Player = p8.Ctrl.Player
        if Player.TryClickAction then
            Player.TryClickAction()
            if p8.PlayerData and p8.PlayerData.FlushPendingPower then
                p8.PlayerData.FlushPendingPower()
            end
            return
        end
        if Player.RequestPowerGain then
            Player.RequestPowerGain(nil)
            if p8.PlayerData and p8.PlayerData.FlushPendingPower then
                p8.PlayerData.FlushPendingPower()
            end
            return
        end
    end
    if p8 and p8.PlayerData and p8.PlayerData.AddLocalPower then
        p8.PlayerData.AddLocalPower(nil)
        p8.PlayerData.FlushPendingPower()
        return
    end
    pcall(function()
        mB:FireServer("GainPowerBatch", 1, 1)
    end)
end
local function fn454(b6)
    if not b6 then
        return 0
    end
    local oK = 0
    for i, child in ipairs(b6:GetChildren()) do
        local oL = child:IsA("Model") and child:GetAttribute("TreasureUID") and lQ(child)
        if oL then
            oK = oK + 1
        end
    end
    return oK
end
local function fn457()
    local Character = mq.Character
    local nV = Character and Character:FindFirstChild("HumanoidRootPart")
    return nV
end
local function fn503()
    lV = os.clock()
end
local function fn511()
    local nB = lC()
    if nB and nB.PlayerData and nB.PlayerData.Get then
        return nB.PlayerData.Get()
    end
    return nil
end
local function fn539(el)
    local p2 = lC()
    if p2 and p2.Ctrl and p2.Ctrl.Player and p2.Ctrl.Player.RequestPowerGain then
        p2.Ctrl.Player.RequestPowerGain(el)
        if p2.PlayerData and p2.PlayerData.FlushPendingPower then
            p2.PlayerData.FlushPendingPower()
        end
        return
    end
    if p2 and p2.PlayerData and p2.PlayerData.AddLocalPower then
        p2.PlayerData.AddLocalPower(el)
        p2.PlayerData.FlushPendingPower()
        return
    end
    pcall(function()
        mB:FireServer("GainPowerBatch", 1, 1)
    end)
end
local function fn573(bP, bQ)
    local WorldScene = workspace:FindFirstChild("WorldScene")
    local ou = WorldScene and WorldScene:FindFirstChild(tostring(bP))
    local ot_1 = ou
    if ou then
        ou = ot_1:FindFirstChild("BattleScene")
    end
    local ot_2 = ou
    if ou then
        ou = ot_2:FindFirstChild(tostring(bQ))
    end
    return ou
end
local function fn577()
    local nS = lN()
    if nS <= 0 then
        return false
    end
    return ms() >= nS
end
local function fn616(eG)
    local DiscordGroup = eG:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = mm })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = mm })
end
local function fn651(cu, cv)
    local oY = mA(cu, cv)
    if not oY then
        return nil
    end
    local oZ = ma(oY)
    if not oZ then
        return nil
    end
    local Position = oZ.Position
    mC(Position, 1.25)
    md(Position)
    local oZ_1 = os.clock() + 2.5
    while true do
        if not (os.clock() < oZ_1) then
            return mA(cu, cv)
        end
        if mb.Unloaded then
            return nil
        end
        oY = mA(cu, cv)
        if not oY then
            task.wait(0.1)
            continue
        end
        local o0 = mp()
        if not o0 then
            task.wait(0.15)
            continue
        end
        if (o0.Position - Position).Magnitude > 40 then
            md(Position)
            mC(Position, 1)
        end
        local SpawnedTreasures = oY:FindFirstChild("SpawnedTreasures")
        if lF(SpawnedTreasures) > 0 then
            break
        end
        task.wait(0.15)
    end
    lR()
    return oY
end
local function onInputChanged(fx)
    local UserInputType = fx.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        lA = tick()
    end
end
local function antiAfkLoop()
    while not mb.Unloaded do
        task.wait(2)
        if l2.AntiAfk.Value then
            local qC = tick() - lA
            local qD = tick() - lx
            if qC >= 300 and qD >= 60 then
                pcall(mv)
            else
                if qC < 300 and qD >= 300 then
                    pcall(mv)
                end
            end
        end
    end
end
local function fn679(bv)
    local n8_1, n8_2
    local n7_1, n7_2
    n7_1, n8_1 = string.match(bv, "World (%d+) %- (%d+)")
    n7_2, n8_2 = tonumber(n7_1), tonumber(n8_1)
    if not n7_2 or not n8_2 then
        return nil
    end
    return n7_2, n8_2
end
local function autoRebirthLoop()
    while not mb.Unloaded do
        task.wait(1.5)
        if mb.Unloaded then
            break
        elseif not l2.AutoRebirth.Value then
        else
            local rp = mn()
            local rq = l1.GetVauleByName("Rebirth", rp)
            local rr = l1.GetVauleByName("Rebirth", rp + 1)
            local rp_1 = rq and rr
            if rp_1 then
                local rr_1 = l9()
                rp_1 = rr_1 >= (rq.LevelLimit or 1)
            end
            if rp_1 then
                pcall(function()
                    PlayerF:InvokeServer("Rebirth")
                end)
            end
        end
    end
end
local function fn702(dG)
    mi()
    task.wait(0.35)
    local pr = l2.AutoSell.Value or l2.AutoBack.Value or mD()
    if pr then
        lz()
        task.wait(0.25)
    end
    local pr_1 = type(dG) == "table" and #dG > 0
    if pr_1 then
        lY = lY % #dG + 1
    end
    lR()
end
local function onInputBegan()
    lA = tick()
end
local function fn724(ad, ae)
    if setclipboard then
        setclipboard(ad)
    elseif toclipboard then
        toclipboard(ad)
    end
    mb:Notify(ae)
end
local function fn726(ak, al)
    return string.format('<font color="%s">%s</font>', al, ak)
end
local function fn728()
    local og_1
    local LootZones = l_.LootZones
    local of = LootZones and LootZones.Value or {}
    local of_3
    local od_2 = {}
    if type(of) == "table" then
        for k, v in pairs(of) do
            local oe_2 = nil
            local of_1 = v == true and type(k) == "string"
            if of_1 then
                oe_2 = k
            else
                local of_2 = type(k) == "number" and type(v) == "string"
                if of_2 then
                    oe_2 = v
                end
            end
            if oe_2 then
                og_1, of_3 = mj(oe_2)
                if og_1 and of_3 then
                    od_2[#od_2 + 1] = { worldId = og_1, zoneId = of_3, label = oe_2 }
                end
            end
        end
    end
    table.sort(od_2, function(bM, bN)
        if bM.worldId == bN.worldId then
            return bM.zoneId < bN.zoneId
        end
        return bM.worldId < bN.worldId
    end)
    return od_2
end
ls = nil
lt = nil
lv = nil
lx = nil
lz = nil
lA = nil
lC = nil
lF = nil
lG = nil
lJ = nil
lL = nil
Label = nil
lN = nil
lQ = nil
lR = nil
lS = nil
lT = nil
lV = nil
lY = nil
l_ = nil
connection2 = nil
l1 = nil
l2 = nil
l3 = nil
Train = nil
l6 = nil
l8 = nil
l9 = nil
ma = nil
mb = nil
mc = nil
md = nil
local Upgrade, lu, Weapon, ly, Treasure, Convert, lE, lH, lI, Daily, lO, lP, lU, lW, lX, lZ, l5, l7
me = nil
connection = nil
mg = nil
mi = nil
mj = nil
mk = nil
mm = nil
mn = nil
mp = nil
mq = nil
ms = nil
mt = nil
mv = nil
PlayerF = nil
mx = nil
mA = nil
mB = nil
mC = nil
mD = nil
local Player, ml, mz, mH, mI, mJ, mK, mL, mM, mN, UserInputService, mP, mS, mT, AutoSellGroup, AutoLootGroup, FeaturesGroup
local mG_1
Player = nil
ml = nil
local mo
local mr
local mu
local my
mz = nil
ss_2, mz, UserInputService, mt, mq, mN, mk, mg, mI, mH, mG_1, Train, l1, lZ, lW, lU, lP, Daily, lH, lE, Convert, Treasure, ly, Weapon, lu, Upgrade, mB, PlayerF, mu, mr, mo, ml, Player, mJ, mb, mM, mL, l2, l_, lX, mK = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local mF = 136
repeat
    mP = (mF * 6 + 16) % 19 + 1
    if mP <= 10 then
        if mP <= 5 then
            if mP <= 3 then
                if mP <= 2 then
                    if mP <= 1 then
                        local mQ_1 = (vector.create((mF * 1 + 3) % 11 + 1, (mF * 6 + 12) % 13 + 1, (mF * 7 + 14) % 17 + 1))
                        local mR_1 = (vector.create((mF * 1 + 7) % 11 + 1, (mF * 10 + 11) % 13 + 1, (mF * 7 + 6) % 17 + 1))
                        mS = (vector.create((mF * 5 + 9) % 11 + 1, (mF * 5 + 2) % 13 + 1, (mF * 3 + 11) % 17 + 1))
                        mT = (vector.create((mF * 2 + 3) % 11 + 1, (mF * 8 + 6) % 13 + 1, (mF * 11 + 6) % 17 + 1))
                        if vector.dot(vector.cross(mQ_1, mR_1), (vector.cross(mS, mT))) == vector.dot(mQ_1, mS) * vector.dot(mR_1, mT) - vector.dot(mQ_1, mT) * vector.dot(mR_1, mS) + 1 then
                            mz = mI:WaitForChild("Remote")
                        else
                            mI = mz:WaitForChild("Remote")
                        end
                        mF = (mF + 54) % 152
                    else
                        local mQ_2 = (vector.create((mF * 3 + 3) % 11 + 1, (mF * 7 + 8) % 13 + 1, (mF * 4 + 12) % 17 + 1))
                        local mR_2 = (vector.create((mF * 3 + 4) % 11 + 1, (mF * 6 + 2) % 13 + 1, (mF * 4 + 3) % 17 + 1))
                        mS = (vector.create((mF * 6 + 7) % 11 + 1, (mF * 3 + 5) % 13 + 1, (mF * 13 + 9) % 17 + 1))
                        mT = (vector.create((mF * 3 + 4) % 5 + 1, (mF * 1 + 4) % 7 + 1, (mF * 3 + 6) % 9 + 1))
                        if vector.dot(vector.cross(mQ_2, (vector.cross(mR_2, mS))), mT) == vector.dot(mR_2 * vector.dot(mQ_2, mS) - mS * vector.dot(mQ_2, mR_2), mT) then
                            mH = mz:WaitForChild("ConfigData")
                        else
                            mz = mH:WaitForChild("ConfigData")
                        end
                        mF = (mF + 35) % 152
                    end
                else
                    local mQ_3 = {
                        "lqnflgepcadu",
                        "zimzf",
                        "ilbf",
                        "yskgyfgc",
                        "itlw",
                        "wfwq",
                        "odqmbjpf",
                        "yqappcwwsm",
                        "armyjehdphe",
                        "pfcakxttvcj",
                        "siqfi",
                        "fewntnlauyf"
                    }
                    if mQ_3[(mF * 86 + 80) % 12 + 1] < mQ_3[(mF * 86 + 80) % 12 + 1] then
                        mz = mG_1:WaitForChild("ToolScripts")
                    else
                        mG_1 = mz:WaitForChild("ToolScripts")
                    end
                    mF = (mF + 111) % 152
                end
            elseif mP <= 4 then
                local tw = bit32.rrotate(bit32.bxor(bit32.lrotate(mF, 27), string.byte(tostring(mG_1))), 13)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(tw, 3243051991), 2428919948), (bit32.bxor(bit32.band(tw, 1051915304), 1344935483))), 2428919948), 1344935483) == tw then
                    Train = require(mH:WaitForChild("Train"))
                else
                    mH = require(Train:WaitForChild("Train"))
                end
                mF = (mF + 73) % 152
            else
                local mQ_4 = (vector.create((mF * 6 + 8) % 11 + 1, (mF * 8 + 9) % 13 + 1, (mF * 11 + 14) % 17 + 1))
                local mR_3 = (vector.create((mF * 3 + 2) % 11 + 1, (mF * 9 + 8) % 13 + 1, (mF * 11 + 5) % 17 + 1))
                mS = (vector.create((mF * 5 + 2) % 11 + 1, (mF * 4 + 11) % 13 + 1, (mF * 8 + 3) % 17 + 1))
                mT = (vector.create((mF * 6 + 6) % 11 + 1, (mF * 5 + 3) % 13 + 1, (mF * 13 + 15) % 17 + 1))
                if vector.dot(vector.cross(mQ_4, mR_3), (vector.cross(mS, mT))) == vector.dot(mQ_4, mS) * vector.dot(mR_3, mT) - vector.dot(mQ_4, mT) * vector.dot(mR_3, mS) + 3 then
                    lZ = require(l1:WaitForChild("Rebirth"))
                    mH = require(l1:WaitForChild("Aura"))
                else
                    l1 = require(mH:WaitForChild("Rebirth"))
                    lZ = require(mH:WaitForChild("Aura"))
                end
                mF = (mF + 35) % 152
            end
        elseif mP <= 8 then
            if mP <= 7 then
                if mP <= 6 then
                    local mQ_5 = (vector.create((mF * 7 + 9) % 11 + 1, (mF * 5 + 5) % 13 + 1, (mF * 4 + 11) % 17 + 1))
                    local mR_4 = (vector.create((mF * 4 + 4) % 11 + 1, (mF * 11 + 5) % 13 + 1, (mF * 4 + 13) % 17 + 1))
                    mS = (vector.create((mF * 5 + 9) % 11 + 1, (mF * 2 + 9) % 13 + 1, (mF * 8 + 12) % 17 + 1))
                    if vector.dot(vector.cross(mQ_5, mR_4), mS) == vector.dot(vector.cross(mR_4, mS), mQ_5) + 5 then
                        mH = require(lU:WaitForChild("Weapon"))
                        lW = require(lU:WaitForChild("Upgrade"))
                    else
                        lW = require(mH:WaitForChild("Weapon"))
                        lU = require(mH:WaitForChild("Upgrade"))
                    end
                    mF = (mF + 16) % 152
                else
                    local mQ_6 = (vector.create((mF * 4 + 5) % 11 + 1, (mF * 4 + 8) % 13 + 1, (mF * 10 + 12) % 17 + 1))
                    local mR_5 = (vector.create((mF * 4 + 2) % 11 + 1, (mF * 7 + 1) % 13 + 1, (mF * 7 + 1) % 17 + 1))
                    mS = (vector.create((mF * 5 + 9) % 11 + 1, (mF * 8 + 8) % 13 + 1, (mF * 15 + 8) % 17 + 1))
                    mT = (vector.create((mF * 3 + 6) % 5 + 1, (mF * 3 + 1) % 7 + 1, (mF * 3 + 6) % 9 + 1))
                    if vector.dot(vector.cross(mQ_6, (vector.cross(mR_5, mS))), mT) == vector.dot(mR_5 * vector.dot(mQ_6, mS) - mS * vector.dot(mQ_6, mR_5), mT) + 1 then
                        mH = require(Daily:WaitForChild("SeasonQuest"))
                        lE = require(Daily:WaitForChild("Daily"))
                        lP = require(Daily:WaitForChild("Online"))
                        lH = require(Daily:WaitForChild("WorldHelper"))
                    else
                        lP = require(mH:WaitForChild("SeasonQuest"))
                        Daily = require(mH:WaitForChild("Daily"))
                        lH = require(mH:WaitForChild("Online"))
                        lE = require(mH:WaitForChild("WorldHelper"))
                    end
                    mF = (mF + 92) % 152
                end
            else
                local mQ_7 = (vector.create((mF * 7 + 2) % 11 + 1, (mF * 8 + 6) % 13 + 1, (mF * 6 + 9) % 17 + 1))
                local mR_6 = (vector.create((mF * 4 + 9) % 11 + 1, (mF * 8 + 13) % 13 + 1, (mF * 8 + 5) % 17 + 1))
                local tC = vector.dot(mQ_7, mR_6)
                if tC * tC >= vector.dot(mQ_7, mQ_7) * vector.dot(mR_6, mR_6) + 1 then
                    mI = require(Treasure:WaitForChild("Convert"))
                    ly = Convert:WaitForChild("Treasure")
                    mG_1 = Convert:WaitForChild("TreasureF")
                else
                    Convert = require(mG_1:WaitForChild("Convert"))
                    Treasure = mI:WaitForChild("Treasure")
                    ly = mI:WaitForChild("TreasureF")
                end
                mF = (mF + 35) % 152
            end
        elseif mP <= 9 then
            local tG = bit32.rrotate(bit32.bxor(bit32.lrotate(mF, 13), string.byte(tostring(mN))), 20)
            if bit32.bxor(bit32.lrotate(bit32.bxor(tG, 269907879), 2), 1079631516) == bit32.lrotate(tG, 2) then
                Weapon = mI:WaitForChild("Weapon")
            else
                mI = Weapon:WaitForChild("Weapon")
            end
            mF = (mF + 92) % 152
        else
            local mQ_8 = (vector.create((mF * 3 + 8) % 11 + 1, (mF * 4 + 3) % 13 + 1, (mF * 6 + 11) % 17 + 1))
            local t3 = vector.floor(mQ_8) + vector.ceil(mQ_8 * -1)
            if vector.dot(t3, t3) == 0 then
                lu = mI:WaitForChild("Aura")
                Upgrade = mI:WaitForChild("Upgrade")
                mB = mI:WaitForChild("Power")
            else
                mB = Upgrade:WaitForChild("Aura")
                mI = Upgrade:WaitForChild("Upgrade")
                lu = Upgrade:WaitForChild("Power")
            end
            mF = (mF + 92) % 152
        end
    elseif mP <= 15 then
        if mP <= 13 then
            if mP <= 12 then
                if mP <= 11 then
                    if (mF * 2 + 3) * 13 % 3 == ((mF * 2 + 3) * 13 + 0) % 3 then
                        PlayerF = mI:WaitForChild("PlayerF")
                        mu = mI:WaitForChild("Season")
                        mr = mI:WaitForChild("Daily")
                        mo = mI:WaitForChild("Online")
                        ml = mI:WaitForChild("World")
                    else
                        ml = PlayerF:WaitForChild("PlayerF")
                        mr = PlayerF:WaitForChild("Season")
                        mu = PlayerF:WaitForChild("Daily")
                        mI = PlayerF:WaitForChild("Online")
                        mo = PlayerF:WaitForChild("World")
                    end
                    mF = (mF + 35) % 152
                else
                    if (mg or Daily or mu and not Convert) and (not mu and not Convert or not mu and mu) and (not Convert and false or (not Daily or not lH) or (ly or Convert) and (mg and not ly)) and not ((mg or Daily or mu and not Convert) and (not mu and not Convert or not mu and mu) and (not Convert and false or (not Daily or not lH) or (ly or Convert) and (mg and not ly))) then
                        mI = Player:WaitForChild("Player")
                    else
                        Player = mI:WaitForChild("Player")
                    end
                    mF = (mF + 111) % 152
                end
            else
                local mQ_9 = {
                    "shr",
                    "luorsgfgrw",
                    "urnelgp",
                    "jjwyxon",
                    "gtcifz",
                    "nxp",
                    "mrmj",
                    "fcranwbjhla",
                    "gjazluwpsdp",
                    "ppchu",
                    "lwqepmx",
                    "dguhgnt"
                }
                local tB = mF
                local mR_7 = mQ_9[tB % 12 + 1]
                if mR_7:len() >= mR_7:reverse():rep(tB % 3 + 2):len() then
                    lU = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                else
                    mJ = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                end
                mF = (mF + 73) % 152
            end
        elseif mP <= 14 then
            if (mF * 2 + 1) * 7 % 3 == ((mF * 2 + 1) * 7 + 7) % 3 then
                l2 = loadstring(game:HttpGet(mb .. "Library.lua"))()
                mJ = loadstring(game:HttpGet(mb .. "addons/ThemeManager.lua"))()
                l_ = loadstring(game:HttpGet(mb .. "addons/SaveManager.lua"))()
                mL = l2.Toggles
                mM = l2.Options
            else
                mb = loadstring(game:HttpGet(mJ .. "Library.lua"))()
                mM = loadstring(game:HttpGet(mJ .. "addons/ThemeManager.lua"))()
                mL = loadstring(game:HttpGet(mJ .. "addons/SaveManager.lua"))()
                l2 = mb.Toggles
                l_ = mb.Options
            end
            mF = (mF + 92) % 152
        else
            local tI = bit32.rrotate(bit32.bxor(bit32.lrotate(mF, 30), string.byte(tostring(l2))), 28)
            if bit32.bxor(bit32.lrotate(bit32.bxor(tI, 2823136858), 22), 2527727977) == bit32.lrotate(tI, 22) then
                lX = { "Speed", "Lucky", "CarryBagNum" }
                mK = {}
            else
                mK = { "Lucky", "Speed", "CarryBagNum" }
                lX = {}
            end
            mF = (mF + 54) % 152
        end
    elseif mP <= 17 then
        if mP <= 16 then
            local t2 = bit32.rrotate(bit32.bxor(bit32.lrotate(mF, 9), string.byte(tostring(mq))), 1)
            if bit32.bxor(bit32.lrotate(bit32.bxor(t2, 457782098), 18), 3444075812) == bit32.lrotate(t2, 18) then
                ss_2 = game:GetService("Players")
            else
                l1 = game:GetService("Players")
            end
            mF = (mF + 130) % 152
        else
            if mF * 56931205 + 10 + 5 <= mF * 56931205 + 10 + 5 + 1 then
                mz = game:GetService("ReplicatedStorage")
            else
                mr = game:GetService("ReplicatedStorage")
            end
            mF = (mF + 149) % 152
        end
    elseif mP <= 18 then
        local t1 = bit32.rrotate(bit32.bxor(bit32.lrotate(mF, 12), string.byte(tostring(Convert))), 4)
        if bit32.bxor(bit32.lrotate(bit32.bxor(t1, 3885486258), 30), 3118855212) == bit32.lrotate(t1, 30) then
            UserInputService = game:GetService("UserInputService")
            mt = game:GetService("VirtualUser")
            mq = ss_2.LocalPlayer
            mN = "+1 Muscles for Prison Escape"
            mk = "https://discord.gg/ehKVq7pf7v"
        else
            mq = game:GetService("UserInputService")
            mk = game:GetService("VirtualUser")
            ss_2 = UserInputService.LocalPlayer
            mt = "+1 Muscles for Prison Escape"
            mN = "https://discord.gg/ehKVq7pf7v"
        end
        mF = (mF + 16) % 152
    else
        mP = {
            "bgh",
            "ymhrfmx",
            "glccas",
            "jgebc",
            "mka",
            "glb",
            "xhmm",
            "srwhrjursqu",
            "wcyftauwu",
            "biteokljgkj",
            "tzobfn",
            "ixdlyqm"
        }
        local tH = mF
        local mQ_10 = mP[tH % 12 + 1]
        if mQ_10:len() <= mQ_10:gsub("(.)", "%1%1", tH % 3 % 2 + 1):len() then
            mg = "https://rscripts.net/@Ouroboros"
        else
            ss_2 = "https://rscripts.net/@Ouroboros"
        end
        mF = (mF + 16) % 152
    end
until (mF * 97 + 20) % 152 == 83
ss_2 = workspace:WaitForChild("WorldScene")
local nd = 1
while nd <= 4 do
    local ne = nd
    local nf = ne
    mF = ss_2:FindFirstChild(tostring(nf))
    local mG_2 = mF and mF:FindFirstChild("BattleScene")
    mF = mG_2
    if mF then
        local mG_3 = {}
        for i, child in ipairs(mF:GetChildren()) do
            mF = tonumber(child.Name)
            if mF then
                mG_3[#mG_3 + 1] = mF
            end
        end
        table.sort(mG_3)
        for i, v in ipairs(mG_3) do
            nf = ne
            mK[#mK + 1] = string.format("World %d - %d", nf, v)
        end
    end
    nd += 1
end
mP, lG, lY, lV, mx, mm, mc, l3, lC, ls, ms, lN, mD, mp, md, lS, mj, l5, mA, ma, lQ, lF, mC, lR, lI, l7, lz, mi, l8, lO, my, mn, l9, lT, lt, me, lL = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
mx = fn724
mm = fn423
mc = fn726
l3 = fn163
mI = "#7fd47f"
if (not mx or ls or (not mx or not lL) or (not ls or mx) and (not ls and mx)) and ((not mP or mn or not mx and mn) and (mx and lL or not ls and ls)) or (ls and ls or not lL and not ls or (mP or not mn) and (ls or not lL)) and ((mP or not ls) and (lL and not lL) and (not mn or mx or lL and mx)) or not ((not mx or ls or (not mx or not lL) or (not ls or mx) and (not ls and mx)) and ((not mP or mn or not mx and mn) and (mx and lL or not ls and ls)) or (ls and ls or not lL and not ls or (mP or not mn) and (ls or not lL)) and ((mP or not ls) and (lL and not lL) and (not mn or mx or lL and mx))) then
    mP = "#6ec1ff"
    lG = "#e8a34d"
    mJ = "#8b93a3"
else
    mJ = "#6ec1ff"
    mP = "#e8a34d"
    lG = "#8b93a3"
end
lC = fn328
ls = fn511
ms = fn214
lN = fn105
mD = fn577
mp = fn457
md = function(a7)
    local nX
    nX = mp()
    if not nX or not a7 then
        return
    end
    nX.AssemblyLinearVelocity = Vector3.zero
    nX.AssemblyAngularVelocity = Vector3.zero
    nX.CFrame = CFrame.new(a7 + Vector3.new(0, 3, 0))
    pcall(function()
        Player:FireServer("ChangePlayerPos", nX.Position, nX.CFrame.LookVector)
    end)
end
lS = function(be)
    local n0 = lC()
    local getWorldId = lE.getWorldId
    local n0_1 = n0 and n0.Player or mq
    local n1_1 = getWorldId(n0_1) or 1
    if n1_1 == be then
        return true
    end
    local n0_3 = ls()
    if be > 1 then
        local n1_2 = n0_3 and n0_3.unlockWorlds
        local n1_3 = type(n1_2) ~= "table" or table.find(n1_2, be) == nil
        if n1_3 then
            return false
        end
        pcall(function()
            ml:FireServer("RequestTeleportWorld", be)
        end)
        return false
    end
    pcall(function()
        ml:FireServer("RequestTeleportWorld", be)
    end)
    return false
end
mj = fn679
l5 = fn728
mA = fn573
ma = fn208
lQ = fn30
lF = fn454
mC = function(cd, ce)
    local oT
    if not cd then
        return false
    end
    oT = false
    task.spawn(function()
        pcall(function()
            mq:RequestStreamAroundAsync(cd)
        end)
        oT = true
    end)
    local oU = os.clock()
    local oW = oU + (ce or 1.5)
    while true do
        local oU_1 = not oT and os.clock() < oW
        if oU_1 then
            if mb.Unloaded then
                return false
            end
            task.wait(0.05)
            continue
        end
        break
    end
    return oT
end
lY = 1
lV = os.clock()
lR = fn503
lI = fn651
l7 = function(cL)
    local o5
    o5 = tonumber(cL:GetAttribute("TreasureUID"))
    if not o5 then
        return false
    end
    local o6 = lQ(cL)
    if o6 then
        mC(o6.Position, 0.75)
    end
    local ProximityPrompt = cL:FindFirstChildWhichIsA("ProximityPrompt", true)
    if ProximityPrompt and fireproximityprompt then
        pcall(fireproximityprompt, ProximityPrompt)
    end
    pcall(function()
        Treasure:FireServer("RequestPickup", o5)
    end)
    lR()
    return true
end
lz = function()
    local o9
    o9 = false
    task.spawn(function()
        pcall(function()
            ly:InvokeServer("SellAllTreasures")
        end)
        o9 = true
    end)
    local pa = os.clock() + 4
    while true do
        local pb = not o9 and os.clock() < pa
        if pb then
            if mb.Unloaded then
                return false
            end
            task.wait(0.05)
            continue
        end
        break
    end
    if o9 then
        lR()
    end
    return o9
end
mi = function()
    local WorldPosition, LookVector
    local pi = lC()
    local getWorldId = lE.getWorldId
    local pi_1 = pi and pi.Player or mq
    local pj_1 = getWorldId(pi_1) or 1
    local pj_2 = mz.GameObject.World:FindFirstChild(tostring(pj_1))
    local pk_1 = pj_2 and pj_2:FindFirstChild("Back")
    local pj_3 = pk_1
    if pk_1 then
        pk_1 = pj_3:IsA("Attachment")
    end
    if pk_1 then
        WorldPosition = pj_3.WorldPosition
        LookVector = pj_3.WorldCFrame.LookVector
        local pj_4 = mp()
        if pj_4 then
            pj_4.AssemblyLinearVelocity = Vector3.zero
            pj_4.AssemblyAngularVelocity = Vector3.zero
            pj_4.CFrame = CFrame.new(WorldPosition, WorldPosition + LookVector)
        end
        pcall(function()
            Player:FireServer("ChangePlayerPos", WorldPosition, LookVector)
        end)
        lR()
        return true
    end
    local WorldScene = workspace:FindFirstChild("WorldScene")
    local pk_2 = WorldScene and WorldScene:FindFirstChild(tostring(pj_1))
    local pj_6 = pk_2 and pk_2:FindFirstChild("BurnPoint")
    local pi_4 = pj_6
    if pj_6 then
        pj_6 = pi_4:IsA("BasePart")
    end
    if pj_6 then
        md(pi_4.Position)
        lR()
        return true
    end
    return false
end
l8 = fn357
lO = fn702
my = fn179
mn = fn350
l9 = fn202
lT = fn317
lt = fn300
me = fn539
lL = fn441
local Window = mb:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = mk, Copyable = true }, "|", mN },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local mQ_11 = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "dumbbell"),
    Shop = Window:AddTab("Shop", "shopping-bag"),
    Settings = Window:AddTab("Settings", "settings")
}
mH = fn616
for k, v in mQ_11 do
    if v ~= mQ_11.Info then
        mH(v)
    end
end
l6, Label, lJ = nil, nil, nil
l6 = "Unknown"
pcall(fn267)
ss_2 = mQ_11.Info:AddLeftGroupbox("Account", "circle-user")
ss_2:AddLabel(l3("User", mq.Name, mI), true)
ss_2:AddLabel(l3("Status", "Keyless", mI), true)
ss_2:AddLabel(l3("Executor", l6, mI), true)
local GameInfoGroup = mQ_11.Info:AddLeftGroupbox("Game Info", "gamepad-2")
GameInfoGroup:AddLabel(mc(mN .. " [" .. tostring(game.PlaceId) .. "]", mP), true)
GameInfoGroup:AddLabel(l3("Place ID", tostring(game.PlaceId), mP), true)
Label = GameInfoGroup:AddLabel(l3("Session time", "0s", lG), true)
lJ = tostring(game.JobId)
local mG_5 = #lJ > 18
if mG_5 then
    ss_2 = 0
    repeat
        if ss_2 * 101616225 + 8 + 4 <= ss_2 * 101616225 + 8 + 4 + 1 then
            mG_5 = string.sub(lJ, 1, 18) .. "..."
        else
            lJ = string.sub(mG_5, 1, 18) .. "..."
        end
        ss_2 = (ss_2 + 4) % 8
    until (ss_2 * 7 + 7) % 8 == 3
end
ss_2 = mG_5 or lJ
lv, FeaturesGroup, AutoLootGroup, AutoSellGroup, mT, mI, mH, lA, lx, connection, connection2, mv = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local mG_6 = ss_2
GameInfoGroup:AddLabel(l3("Server", mG_6, mJ), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
lv = os.clock()
task.spawn(worker)
local ScriptsGroup = mQ_11.Info:AddRightGroupbox("Scripts", "package")
if mT and not mI and (not mT or AutoLootGroup) and (not AutoLootGroup or mI or (not mI or not mI)) and ((mI or mI) and (mT or mT) or (not mI or mI or not mT and mT)) and ((not AutoLootGroup and mT or AutoLootGroup and not mT or (AutoLootGroup or not mT) and (mT or mT)) and (mT or not mI or not mI and not AutoLootGroup or (not AutoLootGroup or not mI or (not AutoLootGroup or mT)))) or not (mT and not mI and (not mT or AutoLootGroup) and (not AutoLootGroup or mI or (not mI or not mI)) and ((mI or mI) and (mT or mT) or (not mI or mI or not mT and mT)) and ((not AutoLootGroup and mT or AutoLootGroup and not mT or (AutoLootGroup or not mT) and (mT or mT)) and (mT or not mI or not mI and not AutoLootGroup or (not AutoLootGroup or not mI or (not AutoLootGroup or mT))))) then
    ScriptsGroup:AddLabel(mc("Included in this hub", mJ), true)
    ScriptsGroup:AddLabel(mc(mN, mP), true)
    FeaturesGroup = mQ_11.Info:AddRightGroupbox("Features", "list")
else
    mc:AddLabel(FeaturesGroup("Included in this hub", mQ_11), true)
    mc:AddLabel(FeaturesGroup(mJ, mN), true)
    mP = ScriptsGroup.Info:AddRightGroupbox("Features", "list")
end
FeaturesGroup:AddLabel(mc("Auto Loot", mP), true)
FeaturesGroup:AddLabel(mc("Auto Sell / Back", lG), true)
FeaturesGroup:AddLabel(mc("Auto Click / Exercise", mP), true)
FeaturesGroup:AddLabel(mc("Auto Shop", lG), true)
FeaturesGroup:AddLabel(mc("Auto Claim", mJ), true)
local SocialsGroup = mQ_11.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = mm })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = mQ_11.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = mm })
local FaqGroup = mQ_11.Info:AddRightGroupbox("FAQ", "circle-help")
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
AutoLootGroup = mQ_11.Main:AddLeftGroupbox("Auto Loot", "package")
if (mI or not mI or not mI and mH or (not mI or not mH or mI and mI)) and ((not mI or mI or (not mH or not mH)) and (mH or not mI or mH and not mH)) and not ((mI or not mI or not mI and mH or (not mI or not mH or mI and mI)) and ((not mI or mI or (not mH or not mH)) and (mH or not mI or mH and not mH))) then
    mK:AddToggle("AutoLoot", { Text = "Auto Loot", Default = false })
    mK:AddDropdown("LootZones", { Default = {}, AllowNull = true, Values = AutoSellGroup, Multi = true, Text = "Loot Zones" })
    mK:AddSlider("LootDelay", { Text = "Loot Delay", Default = 0.2, Min = 0.05, Rounding = 2, Max = 1 })
    mQ_11 = AutoLootGroup.Main:AddLeftGroupbox("Auto Sell", "banknote")
else
    AutoLootGroup:AddToggle("AutoLoot", { Text = "Auto Loot", Default = false })
    AutoLootGroup:AddDropdown("LootZones", { Text = "Loot Zones", Values = mK, Multi = true, AllowNull = true, Default = {} })
    AutoLootGroup:AddSlider("LootDelay", { Text = "Loot Delay", Default = 0.2, Min = 0.05, Max = 1, Rounding = 2 })
    AutoSellGroup = mQ_11.Main:AddLeftGroupbox("Auto Sell", "banknote")
end
AutoSellGroup:AddToggle("AutoSell", { Text = "Auto Sell All", Default = false })
AutoSellGroup:AddToggle("AutoBack", { Text = "Auto Back", Default = false })
AutoSellGroup:AddSlider("SellDelay", { Text = "Sell Delay", Default = 1, Min = 0.25, Max = 5, Rounding = 2 })
local AutoExerciseGroup = mQ_11.Main:AddRightGroupbox("Auto Exercise", "dumbbell")
AutoExerciseGroup:AddToggle("AutoClick", { Text = "Auto Click", Default = false })
AutoExerciseGroup:AddSlider("ClickDelay", { Text = "Click Delay", Default = 0.05, Min = 0.01, Max = 0.5, Rounding = 2 })
AutoExerciseGroup:AddToggle("AutoExercise", { Text = "Auto Exercise", Default = false })
AutoExerciseGroup:AddSlider("ExerciseDelay", { Text = "Exercise Delay", Default = 0.05, Min = 0.01, Max = 0.5, Rounding = 2 })
mT = mQ_11.Main:AddRightGroupbox("Progress", "rotate-ccw")
mT:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
mT:AddToggle("AutoClaimMissions", { Text = "Auto Claim Missions", Default = false })
mS = mQ_11.Shop:AddLeftGroupbox("Gloves", "hand")
mS:AddToggle("AutoBuyGloves", { Text = "Auto Buy Gloves", Default = false })
mI = mQ_11.Shop:AddLeftGroupbox("Upgrades", "arrow-up-circle")
mI:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
mH = mQ_11.Shop:AddRightGroupbox("Auras", "sparkles")
mH:AddToggle("AutoBuyAura", { Text = "Auto Buy Aura", Default = false })
mF = mQ_11.Settings:AddLeftGroupbox("Menu")
mF:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
mb.ToggleKeybind = l_.MenuKeybind
lA = tick()
lx = tick()
pcall(function()
    for i, v in ipairs(getconnections(mq.Idled)) do
        local qw = v
        pcall(function()
            qw:Disable()
        end)
    end
end)
mv = fn269
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
if not mv and not mv and (not OuroborosHubGroup and FeaturesGroup) and (OuroborosHubGroup and FeaturesGroup and (FeaturesGroup or not FeaturesGroup)) or (not OuroborosHubGroup and FeaturesGroup or (not FeaturesGroup or FeaturesGroup)) and ((OuroborosHubGroup or not mv) and (not FeaturesGroup or FeaturesGroup)) or (not mv and mv or (FeaturesGroup or FeaturesGroup) or (OuroborosHubGroup or not OuroborosHubGroup or (OuroborosHubGroup or mv))) and ((not mv or not mv) and (mv and not mv) and ((mv or mv) and (mv or mv))) or not (not mv and not mv and (not OuroborosHubGroup and FeaturesGroup) and (OuroborosHubGroup and FeaturesGroup and (FeaturesGroup or not FeaturesGroup)) or (not OuroborosHubGroup and FeaturesGroup or (not FeaturesGroup or FeaturesGroup)) and ((OuroborosHubGroup or not mv) and (not FeaturesGroup or FeaturesGroup)) or (not mv and mv or (FeaturesGroup or FeaturesGroup) or (OuroborosHubGroup or not OuroborosHubGroup or (OuroborosHubGroup or mv))) and ((not mv or not mv) and (mv and not mv) and ((mv or mv) and (mv or mv)))) then
    mF:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    mF:AddButton("Unload", onUnload)
    mM:SetLibrary(mb)
    mM:SetFolder("OuroborosHub")
    mM:SaveDefault("Monochrome")
    mL:SetLibrary(mb)
    mL:IgnoreThemeSettings()
    mL:SetIgnoreIndexes({ "MenuKeybind" })
    mL:SetFolder("OuroborosHub/MusclesPrisonEscape")
    mL:BuildConfigSection(mQ_11.Settings)
    mM:ApplyToTab(mQ_11.Settings)
    mM:LoadDefault()
    mL:LoadAutoloadConfig()
    mb:OnUnload(fn133)
    task.spawn(antiAfkLoop)
    task.spawn(function()
        local q7 = false
        repeat
            if not mb.Unloaded then
                local q2 = l_.LootDelay and l_.LootDelay.Value
                local q2_4
                local q3 = q2 or 0.2
                local q3_4
                local q1 = q3
                local wait = task.wait
                local q3_3 = l2.AutoLoot.Value and math.max(q1, 0.05)
                local q4 = q3_3 or 0.35
                wait(q4)
                if mb.Unloaded then
                    q7 = true
                elseif not l2.AutoLoot.Value then
                    lV = os.clock()
                else
                    q2_4, q3_4 = pcall(function()
                        if os.clock() - lV > 20 then
                            lO(l5())
                        end
                        if mD() then
                            if l2.AutoBack.Value or l2.AutoSell.Value then
                                l8()
                            else
                                task.wait(0.5)
                            end
                            return
                        end
                        local qG_4 = l5()
                        if #qG_4 == 0 then
                            return
                        end
                        if lY > #qG_4 then
                            lY = 1
                        end
                        local qH = false
                        local qI = lY
                        local qJ = #qG_4
                        local qQ = 1
                        while qQ <= qJ do
                            if mb.Unloaded or not l2.AutoLoot.Value then
                                break
                            elseif mD() then
                                l8()
                                break
                            else
                                local qJ_8 = qG_4[lY]
                                lY = lY % #qG_4 + 1
                                if not lS(qJ_8.worldId) then
                                    task.wait(0.35)
                                    qQ += 1
                                    continue
                                end
                                local qK = lI(qJ_8.worldId, qJ_8.zoneId)
                                if not qK then
                                    qQ += 1
                                    continue
                                end
                                local qJ_9 = qK:FindFirstChild("SpawnedTreasures")
                                local qL = not qJ_9 or lF(qJ_9) == 0
                                if qL then
                                    local qL_6 = ma(qK)
                                    if qL_6 then
                                        mC(qL_6.Position, 1)
                                        md(qL_6.Position)
                                    end
                                    task.wait(0.2)
                                    qJ_9 = qK:FindFirstChild("SpawnedTreasures")
                                end
                                local qL_7 = not qJ_9 or lF(qJ_9) == 0
                                if qL_7 then
                                    qQ += 1
                                    continue
                                end
                                local children = qJ_9:GetChildren()
                                for i, v in ipairs(children) do
                                    if mb.Unloaded or not l2.AutoLoot.Value then
                                        break
                                    elseif mD() then
                                        l8()
                                        break
                                    else
                                        local qJ_11 = v:IsA("Model") and v:GetAttribute("TreasureUID") and v.Parent
                                        if qJ_11 then
                                            local qJ_12 = lQ(v)
                                            if not qJ_12 then
                                                local qL_9 = ma(qK)
                                                if qL_9 then
                                                    mC(qL_9.Position, 0.75)
                                                    md(qL_9.Position)
                                                    task.wait(0.15)
                                                    qJ_12 = lQ(v)
                                                end
                                            end
                                            if qJ_12 then
                                                local qL_10 = mp()
                                                if qL_10 and (qL_10.Position - qJ_12.Position).Magnitude > 12 then
                                                    md(qJ_12.Position)
                                                    task.wait(0.08)
                                                end
                                                if l7(v) then
                                                    qH = true
                                                end
                                                task.wait(math.max(q1, 0.05))
                                            end
                                        end
                                    end
                                end
                                if qH then
                                    break
                                elseif lY == qI then
                                    break
                                else
                                    qQ += 1
                                    continue
                                end
                            end
                        end
                        local qI_2 = not qH
                        if qI_2 ~= false then
                            qI_2 = os.clock() - lV > 12
                        end
                        if qI_2 then
                            lO(qG_4)
                        end
                    end)
                    if not q2_4 then
                        warn("[AutoLoot]", q3_4)
                        lR()
                        task.wait(0.5)
                    end
                end
            else
                q7 = true
            end
        until q7
    end)
    task.spawn(autoSellLoop)
    task.spawn(autoClickLoop)
    task.spawn(autoExerciseLoop)
    task.spawn(autoRebirthLoop)
    task.spawn(function()
        while not mb.Unloaded do
            task.wait(1.5)
            if mb.Unloaded then
                break
            elseif not l2.AutoClaimMissions.Value then
            else
                local rv = ls()
                if not rv then
                    continue
                end
                local rw = rv.seasonData and rv.seasonData.dailyData
                if type(rw) == "table" then
                    for i, v in ipairs(rw) do
                        local rG = v
                        local rw_5 = lP.GetVauleByName("Id", rG.id)
                        local rx_3 = rw_5
                        if rx_3 then
                            rx_3 = (rG.curr or 0) >= (rw_5.Need or 1)
                        end
                        if rx_3 then
                            pcall(function()
                                mu:FireServer("ClaimQuest", rG.id)
                            end)
                            task.wait(0.15)
                        end
                    end
                end
                local dailyData = rv.dailyData
                if type(dailyData) == "table" then
                    local rv_5 = dailyData.day or 0
                    local ry_4 = dailyData.claim or {}
                    local rw_7 = Daily.GetTotalNum()
                    for i = 1, rw_7 do
                        local rK = i
                        if rv_5 >= rK and ry_4[rK] ~= true then
                            pcall(function()
                                mr:FireServer("OnClaimReward", rK)
                            end)
                            task.wait(0.15)
                        end
                    end
                end
                for i, v in ipairs(lH.GetTable()) do
                    local ru = v.id or v.Id
                    if ru then
                        pcall(function()
                            mo:FireServer("CliamReward", ru)
                        end)
                        task.wait(0.05)
                    end
                end
            end
        end
    end)
    task.spawn(function()
        while not mb.Unloaded do
            task.wait(1)
            if mb.Unloaded then
                break
            elseif not l2.AutoBuyGloves.Value then
            else
                local rP = ls()
                local rQ = rP and rP.weaponData
                if not rQ then
                    continue
                end
                local rR = rQ.ownedWeaponIds or {}
                local rQ_4 = my()
                for i, v in ipairs(lW.GetTable()) do
                    local rZ = v
                    local rR_3 = rZ.Price ~= nil and rZ.ShopId == nil and table.find(rR, rZ.Id) == nil
                    if rR_3 then
                        if lW.CanPurchaseCash(rR, rZ.Id) then
                            local rR_4 = Convert.Num.UnAbb(rZ.Price) or 0
                            if rQ_4 >= rR_4 then
                                pcall(function()
                                    Weapon:FireServer("RequestEquipOrBuy", rZ.Id)
                                end)
                                task.wait(0.25)
                                break
                            end
                        end
                    end
                end
            end
        end
    end)
    task.spawn(function()
        while not mb.Unloaded do
            task.wait(1)
            if mb.Unloaded then
                break
            elseif not l2.AutoBuyAura.Value then
            else
                local r_ = ls()
                local r0 = r_ and r_.auraData
                if not r0 then
                    continue
                end
                local r1 = r0.ownedAuraIds or {}
                local r0_4 = my()
                for i, v in ipairs(lZ.GetTable()) do
                    local r9 = v
                    local r1_3 = r9.Price ~= nil and r9.ShopId == nil and r9.Id ~= lZ.VIP_AURA_ID and table.find(r1, r9.Id) == nil
                    if r1_3 then
                        if lZ.CanPurchaseCash(r1, r9.Id) then
                            local r1_4 = Convert.Num.UnAbb(r9.Price) or 0
                            if r0_4 >= r1_4 then
                                pcall(function()
                                    lu:FireServer("RequestEquipOrBuy", r9.Id)
                                end)
                                task.wait(0.25)
                                break
                            end
                        end
                    end
                end
            end
        end
    end)
    task.spawn(function()
        while not mb.Unloaded do
            task.wait(1)
            if mb.Unloaded then
                break
            elseif not l2.AutoBuyUpgrades.Value then
            else
                local sa = ls()
                local sb = sa and sa.upgradeData
                if not sb then
                    continue
                end
                local sb_2 = my()
                for i, v in ipairs(lX) do
                    local so = v
                    local sc = tonumber(sb[so]) or 0
                    local sc_4 = lU.GetMaxLevelByAttr(so) or 0
                    if sc < sc_4 then
                        local sc_5 = lU.GetAttrEntry(so, sc + 1)
                        local sd_3 = sc_5 and sc_5.Price and Convert.Num.UnAbb(sc_5.Price)
                        local sc_6 = sd_3 or nil
                        local sd_4 = sc_6
                        if sc_6 then
                            sc_6 = sb_2 >= sd_4
                        end
                        if sc_6 then
                            pcall(function()
                                Upgrade:FireServer("Upgrade", so)
                            end)
                            task.wait(0.2)
                            break
                        end
                    end
                end
            end
        end
    end)
else
    mb:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    mb:AddButton("Unload", onUnload)
    mL:SetLibrary(mF)
    mL:SetFolder("OuroborosHub")
    mL:SaveDefault("Monochrome")
    mQ_11:SetLibrary(mF)
    mQ_11:IgnoreThemeSettings()
    mQ_11:SetIgnoreIndexes({ "MenuKeybind" })
    mQ_11:SetFolder("OuroborosHub/MusclesPrisonEscape")
    mQ_11:BuildConfigSection(mM.Settings)
    mL:ApplyToTab(mM.Settings)
    mL:LoadDefault()
    mQ_11:LoadAutoloadConfig()
    mF:OnUnload(fn133)
    task.spawn(antiAfkLoop)
    task.spawn(function()
        local q7 = false
        repeat
            if not mb.Unloaded then
                local q2 = l_.LootDelay and l_.LootDelay.Value
                local q2_2
                local q3 = q2 or 0.2
                local q3_2
                local q1 = q3
                local wait = task.wait
                local q3_1 = l2.AutoLoot.Value and math.max(q1, 0.05)
                local q4 = q3_1 or 0.35
                wait(q4)
                if mb.Unloaded then
                    q7 = true
                elseif not l2.AutoLoot.Value then
                    lV = os.clock()
                else
                    q2_2, q3_2 = pcall(function()
                        if os.clock() - lV > 20 then
                            lO(l5())
                        end
                        if mD() then
                            if l2.AutoBack.Value or l2.AutoSell.Value then
                                l8()
                            else
                                task.wait(0.5)
                            end
                            return
                        end
                        local qG_2 = l5()
                        if #qG_2 == 0 then
                            return
                        end
                        if lY > #qG_2 then
                            lY = 1
                        end
                        local qH = false
                        local qI = lY
                        local qJ = #qG_2
                        local qQ = 1
                        while qQ <= qJ do
                            if mb.Unloaded or not l2.AutoLoot.Value then
                                break
                            elseif mD() then
                                l8()
                                break
                            else
                                local qJ_2 = qG_2[lY]
                                lY = lY % #qG_2 + 1
                                if not lS(qJ_2.worldId) then
                                    task.wait(0.35)
                                    qQ += 1
                                    continue
                                end
                                local qK = lI(qJ_2.worldId, qJ_2.zoneId)
                                if not qK then
                                    qQ += 1
                                    continue
                                end
                                local qJ_3 = qK:FindFirstChild("SpawnedTreasures")
                                local qL = not qJ_3 or lF(qJ_3) == 0
                                if qL then
                                    local qL_1 = ma(qK)
                                    if qL_1 then
                                        mC(qL_1.Position, 1)
                                        md(qL_1.Position)
                                    end
                                    task.wait(0.2)
                                    qJ_3 = qK:FindFirstChild("SpawnedTreasures")
                                end
                                local qL_2 = not qJ_3 or lF(qJ_3) == 0
                                if qL_2 then
                                    qQ += 1
                                    continue
                                end
                                local children = qJ_3:GetChildren()
                                for i, v in ipairs(children) do
                                    if mb.Unloaded or not l2.AutoLoot.Value then
                                        break
                                    elseif mD() then
                                        l8()
                                        break
                                    else
                                        local qJ_5 = v:IsA("Model") and v:GetAttribute("TreasureUID") and v.Parent
                                        if qJ_5 then
                                            local qJ_6 = lQ(v)
                                            if not qJ_6 then
                                                local qL_4 = ma(qK)
                                                if qL_4 then
                                                    mC(qL_4.Position, 0.75)
                                                    md(qL_4.Position)
                                                    task.wait(0.15)
                                                    qJ_6 = lQ(v)
                                                end
                                            end
                                            if qJ_6 then
                                                local qL_5 = mp()
                                                if qL_5 and (qL_5.Position - qJ_6.Position).Magnitude > 12 then
                                                    md(qJ_6.Position)
                                                    task.wait(0.08)
                                                end
                                                if l7(v) then
                                                    qH = true
                                                end
                                                task.wait(math.max(q1, 0.05))
                                            end
                                        end
                                    end
                                end
                                if qH then
                                    break
                                elseif lY == qI then
                                    break
                                else
                                    qQ += 1
                                    continue
                                end
                            end
                        end
                        local qI_1 = not qH
                        if qI_1 ~= false then
                            qI_1 = os.clock() - lV > 12
                        end
                        if qI_1 then
                            lO(qG_2)
                        end
                    end)
                    if not q2_2 then
                        warn("[AutoLoot]", q3_2)
                        lR()
                        task.wait(0.5)
                    end
                end
            else
                q7 = true
            end
        until q7
    end)
    task.spawn(autoSellLoop)
    task.spawn(autoClickLoop)
    task.spawn(autoExerciseLoop)
    task.spawn(autoRebirthLoop)
    task.spawn(function()
        while not mb.Unloaded do
            task.wait(1.5)
            if mb.Unloaded then
                break
            elseif not l2.AutoClaimMissions.Value then
            else
                local rv = ls()
                if not rv then
                    continue
                end
                local rw = rv.seasonData and rv.seasonData.dailyData
                if type(rw) == "table" then
                    for i, v in ipairs(rw) do
                        local rG = v
                        local rw_1 = lP.GetVauleByName("Id", rG.id)
                        local rx_1 = rw_1
                        if rx_1 then
                            rx_1 = (rG.curr or 0) >= (rw_1.Need or 1)
                        end
                        if rx_1 then
                            pcall(function()
                                mu:FireServer("ClaimQuest", rG.id)
                            end)
                            task.wait(0.15)
                        end
                    end
                end
                local dailyData = rv.dailyData
                if type(dailyData) == "table" then
                    local rv_1 = dailyData.day or 0
                    local ry_2 = dailyData.claim or {}
                    local rw_3 = Daily.GetTotalNum()
                    for i = 1, rw_3 do
                        local rK = i
                        if rv_1 >= rK and ry_2[rK] ~= true then
                            pcall(function()
                                mr:FireServer("OnClaimReward", rK)
                            end)
                            task.wait(0.15)
                        end
                    end
                end
                for i, v in ipairs(lH.GetTable()) do
                    local ru = v.id or v.Id
                    if ru then
                        pcall(function()
                            mo:FireServer("CliamReward", ru)
                        end)
                        task.wait(0.05)
                    end
                end
            end
        end
    end)
    task.spawn(function()
        while not mb.Unloaded do
            task.wait(1)
            if mb.Unloaded then
                break
            elseif not l2.AutoBuyGloves.Value then
            else
                local rP = ls()
                local rQ = rP and rP.weaponData
                if not rQ then
                    continue
                end
                local rR = rQ.ownedWeaponIds or {}
                local rQ_2 = my()
                for i, v in ipairs(lW.GetTable()) do
                    local rZ = v
                    local rR_1 = rZ.Price ~= nil and rZ.ShopId == nil and table.find(rR, rZ.Id) == nil
                    if rR_1 then
                        if lW.CanPurchaseCash(rR, rZ.Id) then
                            local rR_2 = Convert.Num.UnAbb(rZ.Price) or 0
                            if rQ_2 >= rR_2 then
                                pcall(function()
                                    Weapon:FireServer("RequestEquipOrBuy", rZ.Id)
                                end)
                                task.wait(0.25)
                                break
                            end
                        end
                    end
                end
            end
        end
    end)
    task.spawn(function()
        while not mb.Unloaded do
            task.wait(1)
            if mb.Unloaded then
                break
            elseif not l2.AutoBuyAura.Value then
            else
                local r_ = ls()
                local r0 = r_ and r_.auraData
                if not r0 then
                    continue
                end
                local r1 = r0.ownedAuraIds or {}
                local r0_2 = my()
                for i, v in ipairs(lZ.GetTable()) do
                    local r9 = v
                    local r1_1 = r9.Price ~= nil and r9.ShopId == nil and r9.Id ~= lZ.VIP_AURA_ID and table.find(r1, r9.Id) == nil
                    if r1_1 then
                        if lZ.CanPurchaseCash(r1, r9.Id) then
                            local r1_2 = Convert.Num.UnAbb(r9.Price) or 0
                            if r0_2 >= r1_2 then
                                pcall(function()
                                    lu:FireServer("RequestEquipOrBuy", r9.Id)
                                end)
                                task.wait(0.25)
                                break
                            end
                        end
                    end
                end
            end
        end
    end)
    task.spawn(function()
        while not mb.Unloaded do
            task.wait(1)
            if mb.Unloaded then
                break
            elseif not l2.AutoBuyUpgrades.Value then
            else
                local sa = ls()
                local sb = sa and sa.upgradeData
                if not sb then
                    continue
                end
                local sb_1 = my()
                for i, v in ipairs(lX) do
                    local so = v
                    local sc = tonumber(sb[so]) or 0
                    local sc_1 = lU.GetMaxLevelByAttr(so) or 0
                    if sc < sc_1 then
                        local sc_2 = lU.GetAttrEntry(so, sc + 1)
                        local sd_1 = sc_2 and sc_2.Price and Convert.Num.UnAbb(sc_2.Price)
                        local sc_3 = sd_1 or nil
                        local sd_2 = sc_3
                        if sc_3 then
                            sc_3 = sb_1 >= sd_2
                        end
                        if sc_3 then
                            pcall(function()
                                Upgrade:FireServer("Upgrade", so)
                            end)
                            task.wait(0.2)
                            break
                        end
                    end
                end
            end
        end
    end)
end
