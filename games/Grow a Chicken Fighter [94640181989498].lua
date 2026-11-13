local fns = {}
local xI_1, xI_3, xI_7, xI_9, xI_10, xI_11, FaqGroup, xI_18, xI_19, xI_20, xI_21, SocialsGroup, xI_27, xI_29, xI_30, xI_31
local oh
local o1
local nZ
local oJ
local pq
local oo
local o7
local ChickenMode
local oP
local nM
local ow
local UserInputService
local oa
local oV
local nS
local oC
local pj
local og
local o0
local nY
local oI
local pp
local on
local Workspace
local n3
local oO
local nL
local ov
local pc
local client
local oU
local nR
local oB
local maxSlots
local of
local o_
local nX
local oH
local po
local om
local o5
local n2
local oN
local radius
local ou
local pb
local n8
local oT
local nQ
local oA
local ph
local Label
local connection
local nW
local connection2
local pn
local ol
local o4
local CurrentCamera2
local oM
local FusionRules
local pa
local n7
local oS
local nP
local oz
local pg
local od
local oY
local nV
local oF
local maxLevel
local oj
local o3
local n0
local oL
local connection3
local o9
local n6
local oR
local nO
local oy
local pf
local oc
local oX
local nU
local oE
local pl
local oi
local LocalPlayer
local n_
local oK
local pr
local op
local VirtualUser
local n5
local oQ
local nN
local ox
local pe
local ob
local oW
local nT
local oD
local pk
function fns.onUnload()
    o9:Unload()
end
function fns.fn55()
    local qS_1
    local qQ = client:get({ "money" })
    if type(qQ) == "number" then
        return qQ
    end
    local qR = type(qQ) == "table" and type(qQ.toNumber) == "function"
    local qR_1
    if qR then
        qR_1, qS_1 = pcall(qQ.toNumber, qQ)
        local qQ_1 = qR_1 and type(qS_1) == "number"
        if qQ_1 then
            return qS_1
        end
        return 0
    end
    return 0
end
function fns.fn57(ag)
    local qa = o_[ag]
    return qa ~= nil and qa.Value == true
end
function fns.fn80(bq, br)
    local q2 = Workspace:FindFirstChild(bq)
    local q3 = nR()
    if not q2 or q3 == nil then
        return nil
    end
    return q2:FindFirstChild(br .. tostring(q3))
end
function fns.fn85(cD)
    local r6_1
    local r5_1
    local r4_1
    r6_1, r5_1, r4_1 = nil, nil, nil
    local r7 = #cD
    local sg = 1
    while sg <= r7 do
        local si = sg
        local r7_1 = cD[si]
        local r8 = si + 1
        local r9 = #cD
        local sl = r8
        while sl <= r9 do
            local r8_1 = cD[sl]
            local r9_1 = FusionRules.cost(r7_1, r8_1)
            if nM() >= r9_1 then
                local r9_2 = 0
                if r7_1.typeId == r8_1.typeId then
                    r9_2 += 100
                end
                if r7_1.rarity == r8_1.rarity then
                    r9_2 += 50
                end
                r9_2 += nO(r7_1.rarity) + nO(r8_1.rarity)
                local abs = math.abs
                local sb = r7_1.level or 1
                local sc = r8_1.level or 1
                r9_2 -= abs(sb - sc)
                if r4_1 == nil or r9_2 > r4_1 then
                    r6_1, r5_1, r4_1 = r7_1, r8_1, r9_2
                end
            end
            sl += 1
        end
        sg += 1
    end
    return r6_1, r5_1
end
function fns.fn115()
    return client:get({ "tower" })
end
function fns.fn135(aN)
    local qz = oW()
    local qA = oH()
    local qC = not qz or not qA
    local qB_1 = not aN
    local qD = qC
    local qH = if qD then 1 else 0
    local qF = 75 * qH + 1710 * (1 - qH)
    local qG = 753 * qH + 619 * (1 - qH)
    if not ((qF * 464 + qG * 428 + qF * qG) % 16777213 == 413559) then
        qD = qB_1
    end
    if qD then
        return false
    end
    if qz.Anchored then
        qz.Anchored = false
    end
    qA.WalkSpeed = nL()
    qA:MoveTo(Vector3.new(aN.X, qz.Position.Y, aN.Z))
    return true
end
function fns.fn150(gU, gV)
    local vc = type(gU) ~= "table"
    local vk = if vc then 1 else 0
    local vi = 664 * vk + 3727 * (1 - vk)
    local vj = 1730 * vk + 3967 * (1 - vk)
    if not ((vi * 4013 + vj * 56 + vi * vj) % 16777213 == 3910232) then
        vc = typeof(gU.at) ~= "Vector3"
    end
    if vc then
        return
    end
    local insert = table.insert
    local at = gU.at
    local ve = os.clock()
    local vf = tonumber(gU.fall) or 0
    local vg = ve + vf
    local ve_1 = tonumber(gU.radius) or gV
    insert(n0, { pos = at, impactAt = vg, radius = ve_1 })
end
function fns.fn153(X, Y, Z)
    return string.format("<b>%s</b> %s %s", X, on("-", "#5a6070"), on(Y, Z))
end
function fns.fn186()
    local vz = os.clock()
    local vG = #n0
    local vF = -1
    while false and vG <= 1 or true and vG >= 1 do
        local vH = vG
        if n0[vH].impactAt < vz - 0.3 then
            table.remove(n0, vH)
        end
        vG += vF
    end
    local HotEgg = Workspace:FindFirstChild("HotEgg")
    local vB = not HotEgg
    local vL = if vB then 1 else 0
    local vJ = 89 * vL + 2525 * (1 - vL)
    local vK = 1192 * vL + 3232 * (1 - vL)
    if not ((vJ * 379 + vK * 51 + vJ * vK) % 16777213 == 200611) then
        vB = not HotEgg:IsA("BasePart")
    end
    if vB then
        return
    end
    local vB_1 = oW()
    if not vB_1 then
        return
    end
    local vC = pj(vB_1.Position, vz)
    if vC then
        local vz_1 = Vector3.new(vB_1.Position.X - vC.pos.X, 0, vB_1.Position.Z - vC.pos.Z)
        if vz_1.Magnitude < 0.1 then
            vz_1 = Vector3.new(1, 0, 0)
        end
        od(vB_1.Position + vz_1.Unit * (vC.radius + 6), 60)
        return
    end
    if HotEgg:GetAttribute("Carrier") ~= LocalPlayer.UserId then
        od(HotEgg.Position, 60)
    end
end
function fns.fn188()
    return UserInputService:GetFocusedTextBox() ~= nil
end
function fns.fn196()
    return n7() >= og.requirementFloor(oi())
end
function fns.fn201()
    if not o1() then
        return nil
    end
    local uZ = n7()
    local u_ = uZ + 1
    local u0 = client:get({ "purchases" })
    local u1 = type(u0) == "table" and u0.passes
    local u1_1 = type(u1) == "table" and u1.elevatorVip == true
    local u1_2 = {
        restricted = true,
        prices = {},
        owned = { elevatorVip = u1_1 },
        towerBest = uZ,
        rewardFloor = uZ,
        boosts = { money = 0, corn = 0 }
    }
    local uZ_1 = nZ.elevatorCost(u1_2, u_)
    local u5 = if nM() < uZ_1 then 1 else 0
    if u5 == 1 then
        return nil, uZ_1
    end
    return u_, uZ_1
end
function fns.fn225()
    local q_ = ow()
    return q_ and q_.best or 0
end
function fns.fn228()
    if not o_.Fly.Value then
        local wR = oH()
        if wR then
            wR.PlatformStand = false
        end
    end
end
function fns.fn229()
    return pr("Recyclers", "Recycler")
end
function fns.fn255(bR)
    local eggLadder = oc.roster.eggLadder
    if type(eggLadder) == "table" then
        for i, v in ipairs(eggLadder) do
            if v.tier == bR then
                return 1000 + i
            end
        end
    end
    return 0
end
function fns.fn258()
    local q7 = o0()
    local q8 = {}
    local q9 = type(q7) ~= "table" or type(q7.chickens) ~= "table"
    if q9 then
        return q8
    end
    for k, v in pairs(q7.chickens) do
        local q7_1 = type(v) == "table" and v.id
        if q7_1 then
            table.insert(q8, v)
        end
    end
    return q8
end
function fns.worker5()
    while not o9.Unloaded do
        task.wait(0.12)
        local xx = nU() or nV()
        if xx then
            o7()
        else
            local xx_1 = pe("AutoGrabScraps")
            local xy = pe("AutoRecycleScrap")
            if xx_1 then
                pcall(oN)
            end
            if xy then
                pcall(pg)
            end
            local xz = not xy
            local xA = not xx_1
            if xA ~= false then
                xA = xz
            end
            if xA then
                o7()
            end
        end
        if pe("AutoUpgradeRecycler") then
            pcall(of)
        end
    end
end
function fns.fn272()
    local attr = LocalPlayer:GetAttribute("scrapCarry")
    local rJ = type(attr) == "number" and attr > 0
    local rK = attr == true
    local rK_1
    local rL = rJ or rK
    local rL_1
    local rJ_1 = rL
    if rJ_1 then
        local rI_2 = (pe("AutoGrabScraps"))
        local rQ = if rI_2 then 1 else 0
        local rO = 3096 * rQ + 4042 * (1 - rQ)
        local rP = 624 * rQ + 1476 * (1 - rQ)
        if not ((rO * 1406 + rP * 89 + rO * rP) % 16777213 == 6340416) then
            rI_2 = pe("AutoRecycleScrap")
        end
        rJ_1 = rI_2
    end
    if rJ_1 then
        return false
    end
    local NestEggs = Workspace:FindFirstChild("NestEggs")
    if not NestEggs then
        return false
    end
    local rJ_2 = oW()
    if not rJ_2 then
        return false
    end
    rL_1, rK_1 = nil, nil
    for i, child in ipairs(NestEggs:GetChildren()) do
        local rI_4 = child:IsA("BasePart") and child:GetAttribute("owner") == LocalPlayer.UserId
        if rI_4 then
            local Magnitude = (child.Position - rJ_2.Position).Magnitude
            if rK_1 == nil or Magnitude < rK_1 then
                rL_1, rK_1 = child, Magnitude
            end
        end
    end
    if rL_1 == nil then
        return false
    end
    if rK_1 > 6 then
        oh(rL_1.Position)
    end
    return true
end
function fns.fn274()
    return LocalPlayer:GetAttribute("Plot")
end
function fns.onRscripts()
    if setclipboard then
        setclipboard(oF)
    elseif toclipboard then
        toclipboard(oF)
    end
    o9:Notify("Copied Rscripts profile to clipboard")
end
function fns.worker3()
    while not o9.Unloaded do
        task.wait(2)
        if pe("AntiAfk") then
            local xp = tick() - n3
            local xq = tick() - n_
            if xp >= 300 and xq >= 60 then
                pcall(pl)
            else
                if xp < 300 and xq >= 300 then
                    pcall(pl)
                end
            end
        end
    end
end
function fns.fn339()
    oQ(oJ, "Copied Discord invite to clipboard")
end
function fns.fn352()
    local sF_1
    local PitScrap = Workspace:FindFirstChild("PitScrap")
    local sC = oW()
    local sD = not sC
    local sD_1
    local sE = not PitScrap or sD
    local sE_1
    if sE then
        return nil
    end
    sF_1, sE_1, sD_1 = nil, nil, nil
    for i, child in ipairs(PitScrap:GetChildren()) do
        local sB_1 = child:IsA("BasePart") and child.Name == "Loose" and pa(child)
        if sB_1 then
            local sB_2 = child.Position - sC.Position
            local Magnitude2 = sB_2.Magnitude
            local Magnitude = Vector3.new(sB_2.X, 0, sB_2.Z).Magnitude
            local sI = Magnitude + math.max(0, sB_2.Y) * 0.35
            if sD_1 == nil or sI < sD_1 then
                sF_1, sE_1, sD_1 = child, Magnitude2, sI
            end
        end
    end
    return sF_1, sE_1
end
function fns.fn365()
    local uy = oT()
    if type(uy) ~= "table" then
        return
    end
    local uz = n2()
    if uz ~= "Max" and n6 then
        return
    end
    local uA_1 = 0
    while true do
        local uy_1 = oT()
        if type(uy_1) ~= "table" then
            break
        end
        local uC = uy_1.generators or {}
        local uB_1 = 0
        if type(uC) == "table" then
            for k in pairs(uC) do
                uB_1 += 1
            end
        end
        if not ox.canBuyGenerator(uy_1.slots, uB_1) then
            return
        end
        local uC_1 = ox.buyGeneratorCost(uB_1)
        if nM() < uC_1 then
            return
        end
        oB.invoke(nX.BuyGenerator, uB_1 + 1)
        uA_1 += 1
        if uz ~= "Max" then
            n6 = true
            return
        end
        if uA_1 >= maxSlots then
            return
        end
        task.wait(0.05)
    end
    return
end
function fns.fn366()
    local uS = oc.premium and oc.premium.elevator
    local uS_1 = type(uS) ~= "table" or uS.enabled ~= true
    if uS_1 then
        return false
    end
    local uS_2 = client:get({ "chicken" })
    local uU = uS_2 and tonumber(uS_2.level)
    if (uU or 0) < 2 then
        return false
    end
    local uS_4 = n7()
    return uS_4 >= (uS.minFloor or 2) + 1
end
function fns.fn367()
    local wd_1
    local wc_1
    if identifyexecutor then
        wd_1, wc_1 = identifyexecutor()
        local we = wd_1 ~= ""
        local wf = type(wd_1) == "string" and we
        if wf then
            local we_1 = type(wc_1) == "string" and wc_1 ~= "" and wd_1 .. " " .. wc_1
            oL = we_1 or wd_1
        end
    end
end
function fns.fn393()
    if not o3() then
        return
    end
    if pp() > 0 then
        return
    end
    local tg = ChickenMode.where() == "campaign" or ChickenMode.order() == "tower"
    if tg then
        pcall(function()
            oB.invoke(nX.TowerSurrender)
        end)
        oI("coop")
        return
    end
    local tg_1 = ChickenMode.order() ~= "coop" or ChickenMode.where() ~= "corral"
    if tg_1 then
        oI("coop")
        return
    end
    local tg_2 = oB.invoke(nX.Rebirth)
    local th = type(tg_2) == "table" and tg_2.ok == true
    if th then
        oI("chaos")
    end
end
function fns.fn419()
    if nV() then
        o7()
        return
    end
    local s8 = pp()
    if s8 <= 0 then
        return
    end
    if s8 < pq() then
        return
    end
    local s8_1 = oY()
    local s9 = o5(s8_1)
    if s9 == nil then
        return
    end
    local s8_2 = oW()
    if s8_2 == nil then
        return
    end
    if (s8_2.Position - s9).Magnitude > radius * 0.35 then
        oK(s9)
        return
    end
    o7()
end
function fns.onJumpRequest()
    if o9.Unloaded then
        return
    end
    if pe("InfJump") then
        local w8 = oH()
        if w8 then
            w8:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
function fns.fn435()
    local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
    local vU = PlayerGui and PlayerGui:FindFirstChild("TowerContinue")
    local vU_1 = not vU
    local vZ = if vU_1 then 1 else 0
    local vX = 1751 * vZ + 729 * (1 - vZ)
    local vY = 2569 * vZ + 872 * (1 - vZ)
    if not ((vX * 1667 + vY * 977 + vX * vY) % 16777213 == 9927149) then
        vU_1 = not vU:IsA("ScreenGui")
    end
    if not vU_1 then
        vU_1 = not vU.Enabled
    end
    if vU_1 then
        return false
    end
    for i, descendant in ipairs(vU:GetDescendants()) do
        local vT_2 = descendant:IsA("TextLabel") or descendant:IsA("TextButton")
        if vT_2 then
            local lower = string.lower
            local vU_2 = descendant.Text or ""
            local vV = lower(vU_2)
            local vT_4 = string.find(vV, "no thanks", 1, true) or string.find(vV, "keep climbing", 1, true)
            if vT_4 then
                return true
            end
        end
    end
    return false
end
function fns.fn449()
    if not o_.WalkSpeedEnabled.Value then
        local wT = oH()
        if wT then
            wT.WalkSpeed = 16
        end
    end
end
function fns.fn453()
    local qU = oE()
    if type(qU) == "table" then
        return qU.count or 0
    elseif type(qU) == "number" then
        return qU
    else
        return 0
    end
end
function fns.fn469()
    if nU() then
        return
    end
    local u6 = pe("AutoRebirth") and o3()
    if u6 then
        return
    end
    local u6_1 = oP()
    local u7 = u6_1 and u6_1:GetAttribute("PV_InBattle") == true
    if u7 then
        return
    end
    local u6_2 = ChickenMode.order() == "tower" and ChickenMode.where() == "campaign"
    if u6_2 then
        return
    end
    if not o1() then
        ChickenMode.order("tower")
        oB.invoke(nX.TowerStart)
        return
    end
    local u6_3 = ol()
    if not u6_3 then
        return
    end
    ChickenMode.order("tower")
    oB.invoke(nX.TowerElevator, u6_3)
    oB.invoke(nX.TowerStart)
end
function fns.fn482(du)
    if du == nil then
        return nil
    end
    local attr = du:GetAttribute("Origin")
    local front = oc.scrap.recycler.edge.front
    if typeof(attr) == "CFrame" then
        return (attr * CFrame.new(0, 3, -front)).Position
    end
    return du:GetPivot().Position + Vector3.new(0, 3, 0)
end
function fns.fn492()
    local tW = pe("AutoRebirth") and o3()
    if tW then
        return
    end
    if ChickenMode.order() == "chaos" then
        return
    end
    oI("chaos")
end
function fns.fn495()
    return LocalPlayer:WaitForChild("PlayerGui")
end
function fns.fn503()
    o7()
    connection:Disconnect()
    connection2:Disconnect()
    connection3:Disconnect()
    for k in pairs(oC) do
        if k.Parent then
            k.CanCollide = true
        end
    end
    ou(false)
    local xi = oH()
    if xi then
        xi.PlatformStand = false
    end
end
function fns.fn505()
    local Character = LocalPlayer.Character
    local qe = Character and Character:FindFirstChild("HumanoidRootPart")
    return qe
end
function fns.fn510(c1)
    local attr = c1:GetAttribute("PickupAt")
    local sw = typeof(attr) == "number" and attr > Workspace:GetServerTimeNow()
    if sw then
        return false
    end
    return true
end
function fns.fn532()
    oB.onClient(nX.HotEggMeteor, function(iy)
        nY(iy, oc.worldEvents.defs.hotEgg.meteors.startRadius)
    end)
    oB.onClient(nX.HotEggEntrance, function(iD)
        nY(iD, oc.worldEvents.defs.hotEgg.meteors.endRadius)
    end)
end
function fns.fn535()
    ou(o_.AntiGameplayPause.Value)
end
function fns.onRenderStepped(jI)
    if o9.Unloaded then
        return
    end
    local xa = pe("AutoGrabScraps") or pe("AutoRecycleScrap")
    local xb = xa and not nU() and not nV()
    if xb then
        local xa_1 = oH()
        if xa_1 then
            xa_1.WalkSpeed = nL()
        end
    elseif pe("WalkSpeedEnabled") then
        local xa_2 = oH()
        if xa_2 then
            xa_2.WalkSpeed = oV.WalkSpeed.Value
        end
    end
    if pe("Fly") then
        local xa_3 = oW()
        local xb_1 = oH()
        if xa_3 and xb_1 then
            xb_1.PlatformStand = true
            local xb_2 = Vector3.zero
            local xc_1 = Workspace.CurrentCamera or CurrentCamera2
            local xh = if UserInputService:IsKeyDown(Enum.KeyCode.W) then 1 else 0
            if xh == 1 then
                xb_2 = xb_2 + xc_1.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                xb_2 = xb_2 - xc_1.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                xb_2 = xb_2 - xc_1.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                xb_2 = xb_2 + xc_1.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                xb_2 = xb_2 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                xb_2 = xb_2 - Vector3.new(0, 1, 0)
            end
            xa_3.AssemblyLinearVelocity = Vector3.zero
            if xb_2.Magnitude > 0 then
                xa_3.CFrame = xa_3.CFrame + xb_2.Unit * oV.FlySpeed.Value * jI
            end
        end
    end
end
function fns.worker6()
    while not o9.Unloaded do
        task.wait(0.5)
        if pe("AutoRebirth") then
            pcall(oO)
        end
        if pe("AutoUpgradeCoop") then
            pcall(ov)
        end
        if pe("AutoUpgradeFeeder") then
            pcall(pb)
        end
        if pe("AutoBuyFeeders") then
            pcall(pc)
        end
    end
end
function fns.fn576()
    local ScrapWalkSpeed = oV.ScrapWalkSpeed
    local qq_1 = ScrapWalkSpeed and ScrapWalkSpeed.Value or 16
    return math.max(1, qq_1)
end
function fns.fn581()
    return client:get({ "rebirth" })
end
function fns.fn600()
    local wb = if not oA() then 1 else 0
    if wb == 1 then
        return
    end
    oB.fire(nX.TowerContinueDecline)
end
function fns.fn615()
    local tc = oM()
    local td_1 = tc and tc.recyclerLevel or 0
    local tc_2 = oi()
    local te = n7()
    if not om.canUpgrade(td_1, tc_2) then
        return
    end
    if not om.floorUnlocked(td_1, te) then
        return
    end
    local tc_3 = om.upgradeCost(td_1)
    if nM() >= tc_3 then
        oB.invoke(nX.UpgradeRecycler)
    end
end
function fns.fn648(hP)
    local DiscordGroup = hP:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = oD })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = oD })
end
function fns.onInputBegan()
    n3 = tick()
end
function fns.onStepped()
    if o9.Unloaded then
        return
    end
    local Character = LocalPlayer.Character
    local wW = pe("NoClip")
    if wW and Character then
        for i, descendant in ipairs(Character:GetDescendants()) do
            local wV_1 = descendant:IsA("BasePart") and descendant.CanCollide
            if wV_1 then
                oC[descendant] = true
                descendant.CanCollide = false
            end
        end
        oy = true
    elseif oy then
        for k in pairs(oC) do
            if k.Parent then
                k.CanCollide = true
            end
        end
        oC = {}
        oy = false
    end
end
local function fn670()
    local ub = oT()
    local uc = type(ub) ~= "table" or type(ub.generators) ~= "table"
    if uc then
        return
    end
    local uc_1 = nW()
    for i, v in ipairs(ub.generators) do
        local ub_1 = tonumber(v.slot)
        local ud = tonumber(v.level)
        local ue = ub_1 and ud and ud < uc_1 and ox.canUpgrade(ud)
        if ue then
            local ue_1 = ox.upgradeCost(ud)
            if nM() >= ue_1 then
                oB.invoke(nX.UpgradeGenerator, ub_1)
                return
            end
        end
    end
end
local function fn700()
    if not nU() then
        return
    end
    local tY = pe("AutoRebirth") and o3()
    if tY then
        return
    end
    if ChickenMode.order() ~= "chaos" then
        oI("chaos")
    end
end
local function fn728(bB)
    ChickenMode.order(bB)
    oB.fire(nX.SetChickenOrder, bB)
end
local function fn732()
    local rv = o0()
    local rw = rv and rv.eggs
    local rv_1 = {}
    if type(rw) ~= "table" then
        return rv_1
    end
    for k, v in pairs(rw) do
        local rw_1 = tonumber(v) or 0
        if rw_1 > 0 then
            table.insert(rv_1, { tier = k, count = rw_1, priority = ph(k) })
        end
    end
    table.sort(rv_1, function(b5, b6)
        if b5.priority == b6.priority then
            return b5.count > b6.count
        end
        return b5.priority > b6.priority
    end)
    return rv_1
end
local function worker8()
    while not o9.Unloaded do
        task.wait(0.1)
        if pe("AutoHotEgg") then
            pcall(oz)
        end
        if pe("AutoGooseCoins") then
            pcall(pf)
        end
    end
end
local function worker7()
    while not o9.Unloaded do
        task.wait(1)
        pcall(oX)
        if pe("AutoStartTower") then
            pcall(n8)
        end
        if pe("AutoStartFrontier") then
            pcall(o4)
        end
        if pe("AutoNoThanks") then
            pcall(nQ)
        end
        if pe("AutoStartChaos") then
            pcall(pk)
        end
    end
end
local function fn770(aU, aV)
    local qI = oW()
    local qJ = qI and qI.Parent and qI.Parent:FindFirstChildOfClass("Humanoid")
    if not qJ or not aU then
        return false
    end
    if aV then
        qJ.WalkSpeed = aV
    end
    qJ:MoveTo(Vector3.new(aU.X, qI.Position.Y, aU.Z))
    return true
end
local function fn780()
    return pr("Coops", "Coop")
end
local function fn814(bO)
    return FusionRules.RANK[bO] or 1
end
local function fn816()
    n5()
    local rX = oU()
    for i, v in ipairs(rX) do
        local rX_1 = math.min(nS, v.count)
        if rX_1 > 0 then
            oB.invoke(nX.HatchEggs, v.tier, rX_1)
            return
        end
    end
end
local function onCopyJoinScript_JobID()
    local wk = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, ob)
    if setclipboard then
        setclipboard(wk)
    elseif toclipboard then
        toclipboard(wk)
    end
    o9:Notify("Copied join script to clipboard")
end
local function fn844()
    local FeederMaxLevel = oV.FeederMaxLevel
    local t8_1 = FeederMaxLevel and FeederMaxLevel.Value or maxLevel
    return math.clamp(math.floor(t8_1), 1, maxLevel)
end
local function fn860(au, av)
    local qj = oW()
    if not qj or not au then
        return false
    end
    if av == nil then
        av = 3
    end
    local qk_1 = CFrame.new(au + Vector3.new(0, av, 0))
    qj.AssemblyLinearVelocity = Vector3.zero
    qj.AssemblyAngularVelocity = Vector3.zero
    qj.CFrame = qk_1
    return true
end
local function fn861()
    n6 = false
end
local function fn888(gZ, g_)
    local vp_1
    local vo_1
    vp_1, vo_1 = nil, nil
    for i, v in ipairs(n0) do
        local vq = v.impactAt - g_
        if vq > -0.15 and vq < 1.1 then
            local vr_1 = Vector3.new(gZ.X - v.pos.X, 0, gZ.Z - v.pos.Z)
            if vr_1.Magnitude < v.radius + 3 then
                if vo_1 == nil or vq < vo_1 then
                    vp_1, vo_1 = v, vq
                end
            end
        end
    end
    return vp_1
end
local function fn889()
    return client:get({ "roster" })
end
local function fn899()
    n6 = false
end
local function fn900()
    return client:get({ "coop" })
end
local function worker2()
    while not o9.Unloaded do
        task.wait(1)
        if pe("AntiGameplayPause") then
            ou(true)
        end
    end
end
local function onInputChanged(i5)
    local UserInputType = i5.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        n3 = tick()
    end
end
local function fn922()
    if Workspace:GetAttribute("EventId") ~= "goldenGoose" then
        return
    end
    local attr = Workspace:GetAttribute("EventPhase")
    if attr ~= "live" and attr ~= "warmup" then
        return
    end
    local Pit = Workspace:FindFirstChild("Pit")
    local vN_1 = Pit and Pit:FindFirstChild("Floor")
    if not vN_1 then
        return
    end
    local vN_2 = oW()
    if not vN_2 then
        return
    end
    local Position = vN_1.Position
    local vM_3 = Vector3.new(vN_2.Position.X - Position.X, 0, vN_2.Position.Z - Position.Z)
    if vM_3.Magnitude > 6 then
        od(Position, 50)
    end
end
local function fn923()
    local BuyFeederAmount = oV.BuyFeederAmount
    local un = BuyFeederAmount and BuyFeederAmount.Value
    if type(un) == "table" then
        if un.Max == true then
            return "Max"
        elseif un["1"] == true then
            return "1"
        else
            for k, v in pairs(un) do
                if v then
                    return tostring(k)
                end
            end
            return "1"
        end
    else
        local un_1 = type(un) == "string" and string.lower(un) == "max"
        if un_1 then
            return "Max"
        end
        return "1"
    end
end
local function fn928()
    local Character = LocalPlayer.Character
    local qh = Character and Character:FindFirstChildOfClass("Humanoid")
    return qh
end
local function fn941(U, V)
    return string.format('<font color="%s">%s</font>', V, U)
end
local function worker4()
    while not o9.Unloaded do
        task.wait(0.35)
        if pe("AutoCollectEgg") then
            pcall(n5)
        end
        if pe("AutoOpenEggs") then
            pcall(oo)
        end
        if pe("AutoFuseChickens") then
            pcall(op)
        end
        if pe("AutoSellChickens") then
            pcall(oR)
        end
    end
end
local function fn973()
    local sq_1
    local sp_1
    if ChickenMode.where() ~= "corral" then
        oI("coop")
    end
    local so = oj()
    if #so < 2 then
        return
    end
    sq_1, sp_1 = po(so)
    if sq_1 == nil or sp_1 == nil then
        return
    end
    oB.invoke(nX.FuseChickens, sq_1.id, sp_1.id, {}, nil, "a")
end
local function fn974()
    local RecycleAtScrap = oV.RecycleAtScrap
    local sQ_1 = RecycleAtScrap and RecycleAtScrap.Value
    local sV = if sQ_1 then 1 else 0
    local sT = 1909 * sV + 3146 * (1 - sV)
    local sU = 2961 * sV + 893 * (1 - sV)
    if not ((sT * 3517 + sU * 837 + sT * sU) % 16777213 == 14844859) then
        sQ_1 = 10
    end
    local sR_1 = sQ_1
    return math.max(1, math.floor(sR_1))
end
local function fn976()
    local tA = o0()
    local tB = type(tA) ~= "table" or type(tA.chickens) ~= "table"
    if tB then
        return
    end
    local activeId = tA.activeId
    local tC = nT()
    local tD = {}
    for k, v in pairs(tA.chickens) do
        local tA_1 = type(v) == "table" and v.id and v.id ~= activeId and v.favorite ~= true and nO(v.rarity) <= tC
        if tA_1 then
            table.insert(tD, v.id)
        end
    end
    if #tD == 0 then
        return
    end
    oB.invoke(nX.SellChickens, tD)
end
local function fn1010()
    return client:get({ "scrap" })
end
local function fn1039()
    local t2 = oT()
    if type(t2) ~= "table" then
        return
    end
    local t7 = if not ox.canExpand(t2.slots) then 1 else 0
    if t7 == 1 then
        return
    end
    local t3 = ox.expandCost(t2.slots)
    if nM() >= t3 then
        oB.invoke(nX.ExpandCoop)
    end
end
local function fn1043()
    local attr2 = Workspace:GetAttribute("EventId")
    local attr = Workspace:GetAttribute("EventPhase")
    if attr ~= "live" and attr ~= "warmup" then
        return false
    end
    return attr2 == "goldenGoose" or attr2 == "hotEgg"
end
local function fn1045()
    if nU() then
        return
    end
    local uM = pe("AutoRebirth") and o3()
    if uM then
        return
    end
    local uM_1 = oP()
    local uN = uM_1 and uM_1:GetAttribute("PV_InBattle") == true
    if uN then
        return
    end
    local uM_2 = ChickenMode.order() == "tower" and ChickenMode.where() == "campaign"
    if uM_2 then
        return
    end
    ChickenMode.order("tower")
    oB.invoke(nX.TowerStart)
end
local function fn1051()
    local qt = oH()
    local qu = oW()
    if qt then
        qt:Move(Vector3.zero, false)
        if qu then
            qt:MoveTo(qu.Position)
        end
    end
    if qu and qu.Anchored then
        qu.Anchored = false
    end
end
local function fn1063()
    oB.onClient(nX.TowerContinueOffer, function(iI)
        local wt = o9.Unloaded or not pe("AutoNoThanks")
        if wt then
            return
        end
        local wt_1 = type(iI) ~= "table" or iI.open ~= true
        if wt_1 then
            return
        end
        if iI.paid == true then
            oB.fire(nX.TowerContinueDecline)
        end
    end)
end
local function worker()
    local wn_1
    while true do
        task.wait(1)
        if o9.Unloaded then
            break
        end
        local wm = math.floor(os.clock() - nN)
        if wm < 60 then
            wn_1 = wm .. "s"
        elseif wm < 3600 then
            wn_1 = string.format("%dm %ds", wm // 60, wm % 60)
        else
            wn_1 = string.format("%dh %dm", wm // 3600, wm % 3600 // 60)
        end
        Label:SetText(oa("Session time", wn_1, pn))
    end
end
local function fn1076(N, O)
    if setclipboard then
        setclipboard(N)
    elseif toclipboard then
        toclipboard(N)
    end
    o9:Notify(O)
end
local function fn1081()
    local SellMaxRarity = oV.SellMaxRarity
    local tm_1 = SellMaxRarity and SellMaxRarity.Value or "common"
    if type(tm_1) == "table" then
        local tm_2 = nil
        for k, v in pairs(tm_1) do
            if v then
                local to_1 = nO(k)
                if tm_2 == nil or to_1 > tm_2 then
                    tm_2 = to_1
                end
            end
        end
        return tm_2 or 1
    elseif type(tm_1) == "string" then
        return nO(tm_1)
    else
        return 1
    end
end
local function fn1110()
    local attr = LocalPlayer:GetAttribute("scrapCarry")
    if type(attr) == "number" then
        return attr
    elseif attr == true then
        return 1
    else
        return 0
    end
end
local function fn1143()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    n_ = tick()
end
local function fn1147()
    local s7 = if nV() then 1 else 0
    if s7 == 1 then
        o7()
        return
    end
    local s1 = pp()
    local s1_1
    local s2 = pe("AutoRecycleScrap") and s1 >= pq()
    local s2_1
    if s2 then
        return
    end
    if s1 >= oc.scrap.weight.fullLoad then
        return
    end
    s2_1, s1_1 = oS()
    if s2_1 == nil then
        return
    end
    local s3 = oW()
    if s3 == nil then
        return
    end
    if s1_1 == nil or s1_1 > nP * 0.55 then
        oK(s2_1.Position)
        return
    end
    o7()
end
radius = nil
nL = nil
nM = nil
nN = nil
nO = nil
nP = nil
nQ = nil
nR = nil
nS = nil
nT = nil
nU = nil
nV = nil
nW = nil
nX = nil
nY = nil
nZ = nil
n_ = nil
n0 = nil
CurrentCamera2 = nil
n2 = nil
n3 = nil
ChickenMode = nil
n5 = nil
n6 = nil
n7 = nil
n8 = nil
client = nil
oa = nil
ob = nil
oc = nil
od = nil
Label = nil
of = nil
og = nil
oh = nil
oi = nil
oj = nil
ol = nil
om = nil
on = nil
oo = nil
op = nil
connection3 = nil
FusionRules = nil
ou = nil
ov = nil
ow = nil
ox = nil
oy = nil
oz = nil
oA = nil
oB = nil
oC = nil
oD = nil
oE = nil
oF = nil
connection2 = nil
oH = nil
oI = nil
oJ = nil
oK = nil
oL = nil
oM = nil
oN = nil
oO = nil
oP = nil
oQ = nil
oR = nil
oS = nil
oT = nil
oU = nil
oV = nil
oW = nil
oX = nil
oY = nil
connection = nil
o_ = nil
o0 = nil
o1 = nil
LocalPlayer = nil
o3 = nil
o4 = nil
o5 = nil
Workspace = nil
o7 = nil
VirtualUser = nil
o9 = nil
pa = nil
pb = nil
pc = nil
UserInputService = nil
pe = nil
pf = nil
pg = nil
ph = nil
maxSlots = nil
pj = nil
pk = nil
pl = nil
maxLevel = nil
pn = nil
po = nil
pp = nil
pq = nil
pr = nil
UserInputService, VirtualUser, Workspace, LocalPlayer = nil, nil, nil, nil
local xI_14 = game:GetService("Players")
local xI_17 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
Workspace = game:GetService("Workspace")
LocalPlayer = xI_14.LocalPlayer
local xI_25 = LocalPlayer:WaitForChild("PlayerScripts")
if getgenv then
    getgenv().gethui = function()
        return LocalPlayer:WaitForChild("PlayerGui")
    end
end
xI_19, oJ, oF, oB, ox, FusionRules, om, og, oc, client, ChickenMode, nZ, nX, nS, nP, radius, maxLevel, maxSlots, xI_3, o9, xI_30, xI_9, o_, oV, xI_7, xI_18, pn, xI_20, xI_29, n6, n0, xI_27, oQ, oD, on, oa, pe, oW, oH, oh, nV, nL, o7, oK, od, nM, o0, oT, oM, oE, ow, oi, n7, nR, pr, oY, oP, oI, oj, nO, ph, oU, n5, oo, po, op, pp, pa, oS, pq, o5, oN, pg, of, o3, oO, nT, oR, nU, pk, oX, ov, nW, pb, n2, pc, n8, o1, ol, o4, nY, pj, oz, pf, oA, nQ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
xI_14 = 226
repeat
    xI_10 = (xI_14 * 35 + 14) % 36 + 1
    if xI_10 <= 18 then
        if xI_10 <= 9 then
            if xI_10 <= 5 then
                if xI_10 <= 3 then
                    if xI_10 <= 2 then
                        if xI_10 <= 1 then
                            if (xI_14 * 2 + 8) * 4 % 3 == ((xI_14 * 2 + 8) * 4 + 4) % 3 then
                                oY = fns.fn366
                            else
                                o1 = fns.fn366
                            end
                            xI_14 = (xI_14 + 107) % 288
                        else
                            xI_31 = { "xiedwfm", "ntqtsd", "prhoi", "vhxtvutgpu", "ncv", "hvazpzzc", "agrwtzlhkfu", "rdsz" }
                            local yZ = xI_14
                            xI_21 = xI_31[yZ % 8 + 1]
                            if xI_21:len() >= xI_21:reverse():rep(yZ % 3 + 2):len() then
                                pj = fns.fn201
                                n0 = fns.fn469
                                nY = {}
                                ol = fns.fn150
                                o4 = fn888
                            else
                                ol = fns.fn201
                                o4 = fns.fn469
                                n0 = {}
                                nY = fns.fn150
                                pj = fn888
                            end
                            xI_14 = (xI_14 + 251) % 288
                        end
                    else
                        if (xI_14 * 1 + 4) * 5 % 4 == ((xI_14 * 1 + 4) * 5 + 8) % 4 then
                            oz = fns.fn186
                            pf = fn922
                        else
                            pf = fns.fn186
                            oz = fn922
                        end
                        xI_14 = (xI_14 + 179) % 288
                    end
                elseif xI_10 <= 4 then
                    if (xI_14 * 2 + 5) * 16 % 3 == ((xI_14 * 2 + 5) * 16 + 0) % 3 then
                        oA = fns.fn435
                        nQ = fns.fn600
                        xI_27 = o9:CreateWindow({
                            Title = "Ouroboros Hub",
                            Footer = { { Text = oJ, Copyable = true }, "|", xI_19 },
                            Icon = 12645376577,
                            NotifySide = "Right",
                            ShowCustomCursor = false,
                            CornerRadius = 10
                        })
                    else
                        o9 = fns.fn435
                        oJ = fns.fn600
                        xI_19 = nQ:CreateWindow({
                            Icon = 12645376577,
                            CornerRadius = 10,
                            Title = "Ouroboros Hub",
                            ShowCustomCursor = false,
                            Footer = { { Text = oA, Copyable = true }, xI_27, "|" },
                            NotifySide = "Right"
                        })
                    end
                    xI_14 = (xI_14 + 71) % 288
                else
                    if (xI_14 * 3 + 8) * 9 % 4 == ((xI_14 * 3 + 8) * 9 + 9) % 4 then
                        gethui = fns.fn495
                        nL = "Grow a Chicken Fighter"
                    else
                        gethui = fns.fn495
                        xI_19 = "Grow a Chicken Fighter"
                    end
                    xI_14 = (xI_14 + 215) % 288
                end
            elseif xI_10 <= 7 then
                if xI_10 <= 6 then
                    if ((not pp or oV) and (not oB or oB) or not oV and not oB and (not oV and not oV) or (not oV or pp or not oB and oV) and ((not oB or not oV) and (not oB and not pp))) and (not oV and pp and (not pp and oB) and (not pp and oV and (pp and not oB)) or (oB or not pp or not pp and not oV or (oV and oB or not pp and pp))) or not (((not pp or oV) and (not oB or oB) or not oV and not oB and (not oV and not oV) or (not oV or pp or not oB and oV) and ((not oB or not oV) and (not oB and not pp))) and (not oV and pp and (not pp and oB) and (not pp and oV and (pp and not oB)) or (oB or not pp or not pp and not oV or (oV and oB or not pp and pp)))) then
                        oJ = "https://discord.gg/ehKVq7pf7v"
                    else
                        nX = "https://discord.gg/ehKVq7pf7v"
                    end
                    xI_14 = (xI_14 + 287) % 288
                else
                    xI_31 = { "ftk", "ksaliqhrvmt", "ebuzhmkgcvy", "kku", "jksjahus", "ngpyoz", "xnlklkmzz" }
                    local yu = xI_14
                    xI_21 = xI_31[yu % 7 + 1]
                    if xI_21:len() <= xI_21:reverse():rep(yu % 3 + 2):len() then
                        oF = "https://rscripts.net/@Ouroboros"
                    else
                        nV = "https://rscripts.net/@Ouroboros"
                    end
                    xI_14 = (xI_14 + 107) % 288
                end
            elseif xI_10 <= 8 then
                xI_31 = { "xmvrdi", "xjep", "ksoet", "xhtbojjy", "zzabstbeqy", "tdgr", "xzq" }
                local yy = xI_14
                xI_21 = xI_31[yy % 7 + 1]
                if xI_21:len() >= xI_21:gsub("(.)", "%1%1", yy % 3 % 2 + 1):len() then
                    xI_17 = require(oB.Core.Remotes)
                else
                    oB = require(xI_17.Core.Remotes)
                end
                xI_14 = (xI_14 + 143) % 288
            else
                xI_31 = (vector.create((xI_14 * 4 + 2) % 11 + 1, (xI_14 * 11 + 6) % 13 + 1, (xI_14 * 5 + 12) % 17 + 1))
                xI_21 = (vector.create((xI_14 * 1 + 4) % 11 + 1, (xI_14 * 9 + 5) % 13 + 1, (xI_14 * 13 + 5) % 17 + 1))
                xI_11 = (vector.create((xI_14 * 7 + 5) % 11 + 1, (xI_14 * 4 + 10) % 13 + 1, (xI_14 * 8 + 13) % 17 + 1))
                xI_1 = (vector.create((xI_14 * 4 + 4) % 5 + 1, (xI_14 * 2 + 2) % 7 + 1, (xI_14 * 3 + 1) % 9 + 1))
                if vector.dot(vector.cross(xI_31, (vector.cross(xI_21, xI_11))), xI_1) == vector.dot(xI_21 * vector.dot(xI_31, xI_11) - xI_11 * vector.dot(xI_31, xI_21), xI_1) + 1 then
                    xI_17 = require(FusionRules.Features.Coop.CoopView)
                    ox = require(FusionRules.Features.Chicken.FusionRules)
                    og = require(FusionRules.Features.Scrap.RecyclerView)
                    om = require(FusionRules.Core.Progression.RebirthBonus)
                else
                    ox = require(xI_17.Features.Coop.CoopView)
                    FusionRules = require(xI_17.Features.Chicken.FusionRules)
                    om = require(xI_17.Features.Scrap.RecyclerView)
                    og = require(xI_17.Core.Progression.RebirthBonus)
                end
                xI_14 = (xI_14 + 107) % 288
            end
        elseif xI_10 <= 14 then
            if xI_10 <= 12 then
                if xI_10 <= 11 then
                    if xI_10 <= 10 then
                        xI_31 = (vector.create((xI_14 * 1 + 5) % 11 + 1, (xI_14 * 7 + 8) % 13 + 1, (xI_14 * 11 + 7) % 17 + 1))
                        xI_21 = (vector.create((xI_14 * 7 + 2) % 11 + 1, (xI_14 * 8 + 2) % 13 + 1, (xI_14 * 2 + 10) % 17 + 1))
                        xI_11 = (vector.create((xI_14 * 5 + 7) % 11 + 1, (xI_14 * 9 + 12) % 13 + 1, (xI_14 * 14 + 15) % 17 + 1))
                        xI_1 = (vector.create((xI_14 * 1 + 8) % 11 + 1, (xI_14 * 1 + 11) % 13 + 1, (xI_14 * 2 + 2) % 17 + 1))
                        if vector.dot(vector.cross(xI_31, xI_21), (vector.cross(xI_11, xI_1))) == vector.dot(xI_31, xI_11) * vector.dot(xI_21, xI_1) - vector.dot(xI_31, xI_1) * vector.dot(xI_21, xI_11) then
                            oc = require(xI_17.Content.GameConfig)
                        else
                            xI_17 = require(oc.Content.GameConfig)
                        end
                        xI_14 = (xI_14 + 107) % 288
                    else
                        local yG = bit32.rrotate(bit32.bxor(bit32.lrotate(xI_14, 26), string.byte(tostring(maxLevel))), 19)
                        if bit32.bxor(bit32.lrotate(bit32.bxor(yG, 3994720077), 2), 3093978423) == bit32.lrotate(yG, 2) then
                            client = require(xI_17.Packages.DataService).client
                            ChickenMode = require(xI_25.Features.Chicken.ChickenMode)
                            nZ = require(xI_25.UI["2d"].Shop.ShopWindow.catalog)
                        else
                            nZ = require(client.Packages.DataService).client
                            xI_25 = require(ChickenMode.Features.Chicken.ChickenMode)
                            xI_17 = require(ChickenMode.UI["2d"].Shop.ShopWindow.catalog)
                        end
                        xI_14 = (xI_14 + 179) % 288
                    end
                else
                    if xI_14 * 114920721 + 7 + 7 <= xI_14 * 114920721 + 7 + 7 + 6 then
                        nX = oB.defs
                        nS = oc.roster.hatch.batchMax
                        nP = oc.scrap.pickupRadius
                        radius = oc.scrap.deposit.radius
                        maxLevel = oc.generators.maxLevel
                    else
                        oB = maxLevel.defs
                        nP = radius.roster.hatch.batchMax
                        nX = radius.scrap.pickupRadius
                        oc = radius.scrap.deposit.radius
                        nS = radius.generators.maxLevel
                    end
                    xI_14 = (xI_14 + 35) % 288
                end
            elseif xI_10 <= 13 then
                xI_31 = (vector.create((xI_14 * 3 + 9) % 11 + 1, (xI_14 * 11 + 8) % 13 + 1, (xI_14 * 9 + 11) % 17 + 1))
                xI_21 = (vector.create((xI_14 * 3 + 3) % 11 + 1, (xI_14 * 7 + 2) % 13 + 1, (xI_14 * 6 + 16) % 17 + 1))
                xI_11 = (vector.create((xI_14 * 2 + 1) % 5 + 1, (xI_14 * 4 + 7) % 7 + 1, (xI_14 * 5 + 4) % 9 + 1))
                if math.abs((vector.angle(xI_31, xI_21, xI_11))) - math.abs((vector.angle(xI_21, xI_31, xI_11))) == 5 then
                    oc = maxSlots.generators.maxSlots
                else
                    maxSlots = oc.generators.maxSlots
                end
                xI_14 = (xI_14 + 251) % 288
            else
                xI_31 = {
                    "oaxsyklprtr",
                    "ldagmmoqlj",
                    "ucoxoijly",
                    "icjd",
                    "bmwhinc",
                    "urkw",
                    "emao",
                    "kqsz",
                    "imyebn",
                    "awba",
                    "ogvkwp"
                }
                if xI_31[(xI_14 * 37 + 109) % 11 + 1] <= xI_31[(xI_14 * 37 + 109) % 11 + 1] then
                    xI_3 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                else
                    pk = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                end
                xI_14 = (xI_14 + 143) % 288
            end
        elseif xI_10 <= 16 then
            if xI_10 <= 15 then
                local yR = bit32.rrotate(bit32.bxor(bit32.lrotate(xI_14, 9), string.byte(tostring(nO))), 30)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(yR, 943926261), 2432673007), (bit32.bxor(bit32.band(yR, 3351041034), 461907471))), 2432673007), 461907471) ~= yR then
                    xI_3 = loadstring(game:HttpGet(o9 .. "Library.lua"))()
                else
                    o9 = loadstring(game:HttpGet(xI_3 .. "Library.lua"))()
                end
                xI_14 = (xI_14 + 215) % 288
            else
                if ((not ox and not oh or ox and not ph) and ((not ph or not oQ) and (ox or ox)) and (ox and not ph and (not oQ or not oQ) or oh and oh and (not ox or not oQ)) or (oQ or oR or (not ox or oQ) or (not ox or not ox) and (oR or ox)) and (oh and oQ or (not oQ or ox) or (not ox and oR or (not oQ or not oh)))) and not ((not ox and not oh or ox and not ph) and ((not ph or not oQ) and (ox or ox)) and (ox and not ph and (not oQ or not oQ) or oh and oh and (not ox or not oQ)) or (oQ or oR or (not ox or oQ) or (not ox or not ox) and (oR or ox)) and (oh and oQ or (not oQ or ox) or (not ox and oR or (not oQ or not oh)))) then
                    xI_3 = loadstring(game:HttpGet(oQ .. "addons/ThemeManager.lua"))()
                    o9 = loadstring(game:HttpGet(oQ .. "addons/SaveManager.lua"))()
                    oV = o_.Toggles
                    xI_9 = o_.Options
                    xI_30 = fn1076
                else
                    xI_30 = loadstring(game:HttpGet(xI_3 .. "addons/ThemeManager.lua"))()
                    xI_9 = loadstring(game:HttpGet(xI_3 .. "addons/SaveManager.lua"))()
                    o_ = o9.Toggles
                    oV = o9.Options
                    oQ = fn1076
                end
                xI_14 = (xI_14 + 35) % 288
            end
        elseif xI_10 <= 17 then
            if ((not oa or pb) and (not n0 or not oa) or not oa and n0 and (xI_9 and not oa)) and ((oa and not oU or (not xI_9 or not oa)) and (not xI_9 and not oa or not oa and not oU)) and not (((not oa or pb) and (not n0 or not oa) or not oa and n0 and (xI_9 and not oa)) and ((oa and not oU or (not xI_9 or not oa)) and (not xI_9 and not oa or not oa and not oU))) then
                oa = fns.fn339
                oD = fn941
                on = fns.fn153
            else
                oD = fns.fn339
                on = fn941
                oa = fns.fn153
            end
            xI_14 = (xI_14 + 179) % 288
        else
            xI_31 = (vector.create((xI_14 * 4 + 8) % 11 + 1, (xI_14 * 4 + 6) % 13 + 1, (xI_14 * 4 + 15) % 17 + 1))
            xI_21 = (vector.create((xI_14 * 7 + 9) % 11 + 1, (xI_14 * 5 + 3) % 13 + 1, (xI_14 * 13 + 11) % 17 + 1))
            xI_11 = (vector.create((xI_14 * 5 + 8) % 11 + 1, (xI_14 * 7 + 10) % 13 + 1, (xI_14 * 5 + 15) % 17 + 1))
            if vector.dot(vector.cross(xI_31, xI_21), xI_11) == vector.dot(vector.cross(xI_21, xI_11), xI_31) then
                xI_7 = "#7fd47f"
                xI_18 = "#6ec1ff"
                pn = "#e8a34d"
            else
                pn = "#7fd47f"
                xI_7 = "#6ec1ff"
                xI_18 = "#e8a34d"
            end
            xI_14 = (xI_14 + 143) % 288
        end
    elseif xI_10 <= 27 then
        if xI_10 <= 23 then
            if xI_10 <= 21 then
                if xI_10 <= 20 then
                    if xI_10 <= 19 then
                        xI_31 = (vector.create((xI_14 * 5 + 9) % 11 + 1, (xI_14 * 10 + 8) % 13 + 1, (xI_14 * 11 + 7) % 17 + 1))
                        local yl = vector.floor(xI_31) + vector.ceil(xI_31 * -1)
                        if vector.dot(yl, yl) == 2 then
                            o_ = "#8b93a3"
                        else
                            xI_20 = "#8b93a3"
                        end
                        xI_14 = (xI_14 + 251) % 288
                    else
                        xI_31 = { "ywaph", "fbnov", "mxhh", "nov", "lho", "egs", "zosphdegni", "rqhma", "cwnhw", "xyzz" }
                        local yK = xI_14
                        xI_21 = xI_31[yK % 10 + 1]
                        if xI_21:len() <= xI_21:reverse():rep(yK % 3 + 2):len() then
                            pe = fns.fn57
                            oW = fns.fn505
                            oH = fn928
                        else
                            oH = fns.fn57
                            pe = fns.fn505
                            oW = fn928
                        end
                        xI_14 = (xI_14 + 71) % 288
                    end
                else
                    xI_31 = (vector.create((xI_14 * 5 + 5) % 11 + 1, (xI_14 * 2 + 13) % 13 + 1, (xI_14 * 2 + 11) % 17 + 1))
                    xI_21 = (vector.create((xI_14 * 1 + 6) % 11 + 1, (xI_14 * 11 + 11) % 13 + 1, (xI_14 * 7 + 13) % 17 + 1))
                    xI_11 = (vector.create((xI_14 * 2 + 8) % 11 + 1, (xI_14 * 3 + 12) % 13 + 1, (xI_14 * 14 + 6) % 17 + 1))
                    xI_1 = (vector.create((xI_14 * 7 + 6) % 11 + 1, (xI_14 * 3 + 12) % 13 + 1, (xI_14 * 9 + 7) % 17 + 1))
                    if vector.dot(vector.cross(xI_31, xI_21), (vector.cross(xI_11, xI_1))) == vector.dot(xI_31, xI_11) * vector.dot(xI_21, xI_1) - vector.dot(xI_31, xI_1) * vector.dot(xI_21, xI_11) then
                        xI_29 = {
                            "common",
                            "uncommon",
                            "rare",
                            "epic",
                            "legendary",
                            "mythic",
                            "divine",
                            "celestial",
                            "cosmic",
                            "secret"
                        }
                        oh = fn860
                        nV = fns.fn188
                    else
                        nV = {
                            "common",
                            "divine",
                            "uncommon",
                            "rare",
                            "epic",
                            "cosmic",
                            "secret",
                            "celestial",
                            "mythic",
                            "legendary"
                        }
                        xI_29 = fn860
                        oh = fns.fn188
                    end
                    xI_14 = (xI_14 + 179) % 288
                end
            elseif xI_10 <= 22 then
                xI_31 = { "kfewhsiq", "tjky", "srnolfck", "dbfbk", "ublx", "yxuhfbirvi", "xgazcvheq", "npp", "cxwfjtu" }
                local yO = xI_14
                xI_21 = xI_31[yO % 9 + 1]
                if xI_21:len() <= xI_21:gsub("(.)", "%1%1", yO % 3 % 2 + 1):len() then
                    nL = fns.fn576
                else
                    oh = fns.fn576
                end
                xI_14 = (xI_14 + 71) % 288
            else
                if xI_14 * 14541043 + 12 + 3 <= xI_14 * 14541043 + 12 + 3 + 2 then
                    o7 = fn1051
                    oK = fns.fn135
                    od = fn770
                    nM = fns.fn55
                    o0 = fn889
                else
                    nM = fn1051
                    o0 = fns.fn135
                    oK = fn770
                    o7 = fns.fn55
                    od = fn889
                end
                xI_14 = (xI_14 + 107) % 288
            end
        elseif xI_10 <= 25 then
            if xI_10 <= 24 then
                xI_31 = {
                    "oxicabvei",
                    "hehpxlx",
                    "fxzgvqpx",
                    "hpasnegh",
                    "dyliovytk",
                    "lukiwpqglb",
                    "iiouucztw",
                    "yndcaf",
                    "lvwoqhc",
                    "knyjoked",
                    "igfhur",
                    "sewv"
                }
                local yv = xI_14
                xI_21 = xI_31[yv % 12 + 1]
                if xI_21:len() >= xI_21:reverse():rep(yv % 3 + 2):len() then
                    oM = fn900
                    ow = fn1010
                    oT = fns.fn581
                    oE = fns.fn115
                else
                    oT = fn900
                    oM = fn1010
                    oE = fns.fn581
                    ow = fns.fn115
                end
                xI_14 = (xI_14 + 143) % 288
            else
                if (xI_14 * 2 + 5) * 4 % 3 == ((xI_14 * 2 + 5) * 4 + 0) % 3 then
                    oi = fns.fn453
                    n7 = fns.fn225
                    nR = fns.fn274
                else
                    nR = fns.fn453
                    oi = fns.fn225
                    n7 = fns.fn274
                end
                xI_14 = (xI_14 + 107) % 288
            end
        elseif xI_10 <= 26 then
            xI_31 = {
                "tvdkbxfhavg",
                "dsmlxbnievd",
                "fok",
                "jjiqvrvhoqgs",
                "zlnedhsuqbdx",
                "bhfyalvnvfdd",
                "herdfagxp",
                "bgmndoybj",
                "ful",
                "woqz",
                "dwu",
                "dccjgzdwn",
                "tdbvfgx",
                "gfdtmhzgpwet",
                "jamafjmjdnor",
                "hwunyekdkgq"
            }
            if xI_31[(xI_14 * 67 + 66) % 16 + 1] <= xI_31[(xI_14 * 67 + 66) % 16 + 1] then
                pr = fns.fn80
                oY = fns.fn229
                oP = fn780
                oI = fn728
                oj = fns.fn258
            else
                oI = fns.fn80
                oj = fns.fn229
                oY = fn780
                pr = fn728
                oP = fns.fn258
            end
            xI_14 = (xI_14 + 215) % 288
        else
            if (xI_14 * 2 + 7) * 16 % 3 == ((xI_14 * 2 + 7) * 16 + 5) % 3 then
                ph = fn814
                nO = fns.fn255
            else
                nO = fn814
                ph = fns.fn255
            end
            xI_14 = (xI_14 + 143) % 288
        end
    elseif xI_10 <= 32 then
        if xI_10 <= 30 then
            if xI_10 <= 29 then
                if xI_10 <= 28 then
                    xI_31 = (vector.create((xI_14 * 3 + 2) % 11 + 1, (xI_14 * 10 + 12) % 13 + 1, (xI_14 * 14 + 4) % 17 + 1))
                    xI_21 = (vector.create((xI_14 * 7 + 6) % 11 + 1, (xI_14 * 2 + 13) % 13 + 1, (xI_14 * 9 + 16) % 17 + 1))
                    local ym = vector.cross(xI_31, xI_21)
                    local yn = vector.dot(xI_31, xI_21)
                    if vector.dot(ym, ym) + yn * yn == vector.dot(xI_31, xI_31) * vector.dot(xI_21, xI_21) then
                        oU = fn732
                        n5 = fns.fn272
                        oo = fn816
                        po = fns.fn85
                    else
                        po = fn732
                        oU = fns.fn272
                        n5 = fn816
                        oo = fns.fn85
                    end
                    xI_14 = (xI_14 + 215) % 288
                else
                    xI_31 = {
                        "kshpsayseun",
                        "qlcyve",
                        "iauphajksjz",
                        "fxqldjukl",
                        "cmxxpdrg",
                        "fttzygnesl",
                        "ylsgir",
                        "ffpvfhuclr",
                        "wdzna",
                        "evsvqrs"
                    }
                    local yr = xI_14
                    xI_21 = xI_31[yr % 10 + 1]
                    if xI_21:len() >= xI_21:gsub("(.)", "%1%1", yr % 3 % 2 + 1):len() then
                        pp = fn973
                        oS = fn1110
                        op = fns.fn510
                        pa = fns.fn352
                    else
                        op = fn973
                        pp = fn1110
                        pa = fns.fn510
                        oS = fns.fn352
                    end
                    xI_14 = (xI_14 + 71) % 288
                end
            else
                if (xI_14 * 3 + 2) * 5 % 4 == ((xI_14 * 3 + 2) * 5 + 5) % 4 then
                    o5 = fn974
                    pq = fns.fn482
                else
                    pq = fn974
                    o5 = fns.fn482
                end
                xI_14 = (xI_14 + 287) % 288
            end
        elseif xI_10 <= 31 then
            xI_31 = {
                "hdpafbl",
                "ohm",
                "rhqzmcgfag",
                "gbnkbbsd",
                "vzqwhwqq",
                "cecsetgud",
                "zjv",
                "zqykwgxguc",
                "nqfjlnahpi",
                "ybpbd"
            }
            local yP = xI_14
            xI_21 = xI_31[yP % 10 + 1]
            if xI_21:len() <= xI_21:gsub("(.)", "%1%1", yP % 3 % 2 + 1):len() then
                oN = fn1147
                pg = fns.fn419
                of = fns.fn615
                o3 = fns.fn196
                oO = fns.fn393
            else
                oO = fn1147
                o3 = fns.fn419
                oN = fns.fn615
                pg = fns.fn196
                of = fns.fn393
            end
            xI_14 = (xI_14 + 35) % 288
        else
            xI_31 = {
                "krfjfv",
                "woscmbp",
                "yzvoushqri",
                "zzkndsfugwyp",
                "nhitmixwcpoc",
                "lklzxejd",
                "jnndismci",
                "pyhp",
                "lnqhxf",
                "fpszxa",
                "tfztodsnb",
                "idlgmtcujb",
                "cimfhjs"
            }
            if xI_31[(xI_14 * 36 + 105) % 13 + 1] <= xI_31[(xI_14 * 36 + 105) % 13 + 1] then
                nT = fn1081
                oR = fn976
                nU = fn1043
                pk = fns.fn492
            else
                oR = fn1081
                nT = fn976
                pk = fn1043
                nU = fns.fn492
            end
            xI_14 = (xI_14 + 179) % 288
        end
    elseif xI_10 <= 34 then
        if xI_10 <= 33 then
            xI_31 = {
                "udaojbtrmv",
                "bdabl",
                "xhh",
                "upbbjcwnq",
                "vmve",
                "njsebgqt",
                "cnf",
                "qrmcszlqp",
                "qncxmawc",
                "rnyizkps",
                "merbapwh",
                "lqtgvvwnviw"
            }
            local yt = xI_14
            xI_21 = xI_31[yt % 12 + 1]
            if xI_21:len() >= xI_21:gsub("(.)", "%1%1", yt % 3 % 2 + 1):len() then
                nP = fn700
            else
                oX = fn700
            end
            xI_14 = (xI_14 + 143) % 288
        else
            if xI_14 * 132871517 + 5 + 1 <= xI_14 * 132871517 + 5 + 1 + 3 then
                ov = fn1039
                nW = fn844
                pb = fn670
                n6 = false
                n2 = fn923
            else
                n2 = fn1039
                n6 = fn844
                ov = fn670
                pb = false
                nW = fn923
            end
            xI_14 = (xI_14 + 215) % 288
        end
    elseif xI_10 <= 35 then
        local yD = bit32.rrotate(bit32.bxor(bit32.lrotate(xI_14, 11), string.byte(tostring(xI_19))), 11)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(yD, 2863441253), 88215398), (bit32.bxor(bit32.band(yD, 1431526042), 1594828416))), 88215398), 1594828416) == yD then
            pc = fns.fn365
        else
            o7 = fns.fn365
        end
        xI_14 = (xI_14 + 143) % 288
    else
        if (not xI_7 or xI_7) and (oj and false) and ((not FusionRules or oj) and (FusionRules or not oJ)) and (not oj and not FusionRules or (not oJ or false) or (not FusionRules and false or (false or not xI_7))) or not ((not xI_7 or xI_7) and (oj and false) and ((not FusionRules or oj) and (FusionRules or not oJ)) and (not oj and not FusionRules or (not oJ or false) or (not FusionRules and false or (false or not xI_7)))) then
            n8 = fn1045
        else
            ov = fn1045
        end
        xI_14 = (xI_14 + 143) % 288
    end
until (xI_14 * 283 + 30) % 288 == 52
if o9.ScreenGui then
    xI_14 = 1
    repeat
        if xI_14 * 41080283 + 5 + 2 >= xI_14 * 41080283 + 5 + 2 + 2 then
            LocalPlayer.ScreenGui.Parent = o9:WaitForChild("PlayerGui")
        else
            o9.ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
        end
        xI_14 = (xI_14 + 0) % 4
    until (xI_14 * 1 + 2) % 4 == 3
end
xI_17 = {
    Info = xI_27:AddTab("Info", "info"),
    Main = xI_27:AddTab("Main", "egg"),
    Player = xI_27:AddTab("Player", "person-standing"),
    Settings = xI_27:AddTab("Settings", "settings")
}
xI_25 = fns.fn648
for k, v in xI_17 do
    xI_25(v)
end
oL, xI_14, xI_10, Label, ob, xI_27 = nil, nil, nil, nil, nil, nil
xI_3 = 16
repeat
    xI_25 = (xI_3 * 2 + 1) % 3 + 1
    if xI_25 <= 2 then
        if xI_25 <= 1 then
            xI_25 = { "mctaltsei", "wgvl", "jnpkwd", "uvgkhsubrf", "rvvvcyikexw", "lmr", "etahyubox" }
            local yC = xI_3
            xI_31 = xI_25[yC % 7 + 1]
            if xI_31:len() >= xI_31:reverse():rep(yC % 3 + 2):len() then
                xI_19 = "Unknown"
                pcall(fns.fn367)
                pn = oL.Info:AddLeftGroupbox("Account", "circle-user")
                pn:AddLabel(xI_14("User", oa.Name, xI_17), true)
                pn:AddLabel(xI_14("Status", "Keyless", xI_17), true)
                pn:AddLabel(xI_14("Executor", "Unknown", xI_17), true)
                xI_7 = oL.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                xI_7:AddLabel(Label(LocalPlayer .. " [" .. tostring(game.PlaceId) .. "]", on), true)
                xI_7:AddLabel(xI_14("Place ID", tostring(game.PlaceId), on), true)
                xI_10 = xI_7:AddLabel(xI_14("Session time", "0s", xI_18), true)
            else
                oL = "Unknown"
                pcall(fns.fn367)
                xI_14 = xI_17.Info:AddLeftGroupbox("Account", "circle-user")
                xI_14:AddLabel(oa("User", LocalPlayer.Name, xI_7), true)
                xI_14:AddLabel(oa("Status", "Keyless", xI_7), true)
                xI_14:AddLabel(oa("Executor", oL, xI_7), true)
                xI_10 = xI_17.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                xI_10:AddLabel(on(xI_19 .. " [" .. tostring(game.PlaceId) .. "]", xI_18), true)
                xI_10:AddLabel(oa("Place ID", tostring(game.PlaceId), xI_18), true)
                Label = xI_10:AddLabel(oa("Session time", "0s", pn), true)
            end
            xI_3 = (xI_3 + 17) % 24
        else
            xI_25 = {
                "ttsakvhdh",
                "bkbvs",
                "sgfvonxxpr",
                "brlx",
                "xbtq",
                "kfxshc",
                "omx",
                "txqwduh",
                "prqxre",
                "xtucm"
            }
            local yo = xI_3
            xI_31 = xI_25[yo % 10 + 1]
            if xI_31:len() >= xI_31:gsub("(.)", "%1%1", yo % 3 % 2 + 1):len() then
                oL = tostring(game.JobId)
            else
                ob = tostring(game.JobId)
            end
            xI_3 = (xI_3 + 11) % 24
        end
    else
        xI_25 = (vector.create((xI_3 * 4 + 3) % 11 + 1, (xI_3 * 1 + 2) % 13 + 1, (xI_3 * 9 + 7) % 17 + 1))
        local yB = vector.floor(xI_25) + vector.ceil(xI_25 * -1)
        if vector.dot(yB, yB) == 0 then
            xI_27 = #ob > 18
        else
            ob = #xI_27 > 18
        end
        xI_3 = (xI_3 + 8) % 24
    end
until (xI_3 * 7 + 21) % 24 == 1
if xI_27 then
    xI_14 = 7
    repeat
        xI_3 = (vector.create((xI_14 * 2 + 4) % 11 + 1, (xI_14 * 5 + 11) % 13 + 1, (xI_14 * 11 + 5) % 17 + 1))
        xI_25 = (vector.create((xI_14 * 3 + 5) % 11 + 1, (xI_14 * 9 + 12) % 13 + 1, (xI_14 * 2 + 9) % 17 + 1))
        xI_31 = (vector.create((xI_14 * 7 + 4) % 11 + 1, (xI_14 * 2 + 13) % 13 + 1, (xI_14 * 3 + 3) % 17 + 1))
        xI_21 = (vector.create((xI_14 * 3 + 1) % 5 + 1, (xI_14 * 5 + 3) % 7 + 1, (xI_14 * 3 + 5) % 9 + 1))
        if vector.dot(vector.cross(xI_3, (vector.cross(xI_25, xI_31))), xI_21) == vector.dot(xI_25 * vector.dot(xI_3, xI_31) - xI_31 * vector.dot(xI_3, xI_25), xI_21) then
            xI_27 = string.sub(ob, 1, 18) .. "..."
        else
            ob = string.sub(xI_27, 1, 18) .. "..."
        end
        xI_14 = (xI_14 + 5) % 8
    until (xI_14 * 7 + 7) % 8 == 3
end
xI_14 = xI_27 or ob
nN, SocialsGroup, FaqGroup, xI_27, xI_3, xI_11, n3, n_, connection, connection2, oC, oy, connection3, CurrentCamera2, pl, ou = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
xI_25 = xI_14
xI_10:AddLabel(oa("Server", xI_25, xI_20), true)
xI_10:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
nN = os.clock()
task.spawn(worker)
local ScriptsGroup = xI_17.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(on("Included in this hub", xI_20), true)
ScriptsGroup:AddLabel(on(xI_19, xI_18), true)
local FeaturesGroup = xI_17.Info:AddRightGroupbox("Features", "list")
if (xI_27 or FaqGroup or (xI_11 or xI_3)) and (xI_11 and xI_11 or (xI_3 or not xI_3)) and ((xI_11 or FeaturesGroup or (FaqGroup or xI_11)) and (FaqGroup and FaqGroup and (not FeaturesGroup and FaqGroup))) or not ((xI_27 or FaqGroup or (xI_11 or xI_3)) and (xI_11 and xI_11 or (xI_3 or not xI_3)) and ((xI_11 or FeaturesGroup or (FaqGroup or xI_11)) and (FaqGroup and FaqGroup and (not FeaturesGroup and FaqGroup)))) then
    FeaturesGroup:AddLabel(on("Auto Farm", xI_18), true)
    FeaturesGroup:AddLabel(on("Plot Upgrades", pn), true)
    FeaturesGroup:AddLabel(on("Battle Automation", xI_7), true)
    FeaturesGroup:AddLabel(on("Event Automation", pn), true)
    FeaturesGroup:AddLabel(on("Egg Collection", xI_20), true)
    FeaturesGroup:AddLabel(on("Player Movement", xI_18), true)
    SocialsGroup = xI_17.Info:AddRightGroupbox("Socials", "link")
else
    pn:AddLabel(xI_20("Auto Farm", on), true)
    pn:AddLabel(xI_20("Plot Upgrades", xI_17), true)
    pn:AddLabel(xI_20("Battle Automation", xI_18), true)
    pn:AddLabel(xI_20("Event Automation", xI_17), true)
    pn:AddLabel(xI_20("Egg Collection", SocialsGroup), true)
    pn:AddLabel(xI_20("Player Movement", on), true)
    FeaturesGroup.Info:AddRightGroupbox("Socials", "link")
end
SocialsGroup:AddButton({ Text = "Discord", Func = oD })
SocialsGroup:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
local OuroborosHubGroup = xI_17.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = oD })
FaqGroup = xI_17.Info:AddRightGroupbox("FAQ", "circle-help")
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
local FarmGroup = xI_17.Main:AddLeftGroupbox("Farm", "egg")
FarmGroup:AddToggle("AutoCollectEgg", { Text = "Auto Collect Egg", Default = false })
FarmGroup:AddToggle("AutoOpenEggs", { Text = "Auto Open Eggs", Default = false })
FarmGroup:AddToggle("AutoFuseChickens", { Text = "Auto Fuse Chickens", Default = false })
FarmGroup:AddToggle("AutoSellChickens", { Text = "Auto Sell Chickens", Default = false })
FarmGroup:AddDropdown("SellMaxRarity", { Text = "Sell up to rarity", Values = xI_29, Default = "common" })
FarmGroup:AddToggle("AutoGrabScraps", { Text = "Auto Grab Scraps", Default = false })
FarmGroup:AddSlider("ScrapWalkSpeed", { Text = "Scrap Walk Speed", Default = 16, Min = 8, Max = 50, Rounding = 0 })
FarmGroup:AddToggle("AutoRecycleScrap", { Text = "Auto Recycle Scrap", Default = false })
FarmGroup:AddSlider("RecycleAtScrap", { Text = "Recycle when scrap", Default = 10, Min = 1, Max = oc.scrap.weight.fullLoad, Rounding = 0 })
FarmGroup:AddToggle("AutoUpgradeRecycler", { Text = "Auto Upgrade Recycler", Default = false })
xI_1 = xI_17.Main:AddRightGroupbox("Plot", "house")
xI_1:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
xI_1:AddToggle("AutoUpgradeCoop", { Text = "Auto Upgrade Coop", Default = false })
xI_1:AddToggle("AutoUpgradeFeeder", { Text = "Auto Upgrade Feeder", Default = false })
xI_1:AddSlider("FeederMaxLevel", { Text = "Feeder max level", Default = maxLevel, Min = 1, Max = maxLevel, Rounding = 0 })
xI_1:AddToggle("AutoBuyFeeders", { Text = "Auto Buy Feeders", Default = false })
xI_1:AddDropdown("BuyFeederAmount", { Text = "Buy feeder amount", Values = { "1", "Max" }, Default = "1" })
o_.AutoBuyFeeders:OnChanged(fn899)
oV.BuyFeederAmount:OnChanged(fn861)
xI_21 = xI_17.Main:AddLeftGroupbox("Battle", "swords")
xI_21:AddToggle("AutoStartTower", { Text = "Auto Start Tower", Default = false })
xI_21:AddToggle("AutoStartFrontier", { Text = "Auto Start Frontier", Default = false })
xI_21:AddToggle("AutoNoThanks", { Text = "Auto No Thanks", Default = false })
xI_21:AddToggle("AutoStartChaos", { Text = "Auto Start Chaos", Default = false })
xI_31 = xI_17.Main:AddRightGroupbox("Events", "sparkles")
xI_31:AddToggle("AutoHotEgg", { Text = "Auto Hot Egg Dodge", Default = false })
xI_31:AddToggle("AutoGooseCoins", { Text = "Auto Goose Coins", Default = false })
xI_27 = xI_17.Player:AddLeftGroupbox("Movement", "footprints")
xI_27:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
xI_27:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
xI_27:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
xI_27:AddToggle("NoClip", { Text = "NoClip", Default = true })
xI_27:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
xI_3 = xI_17.Player:AddRightGroupbox("Fly", "feather")
xI_3:AddToggle("Fly", { Text = "Fly", Default = false })
xI_3:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
pcall(fns.fn532)
pcall(fn1063)
xI_11 = xI_17.Settings:AddLeftGroupbox("Menu")
xI_11:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
o9.ToggleKeybind = oV.MenuKeybind
xI_11:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
xI_11:AddButton({ Text = "Unload", Func = fns.onUnload })
xI_30:SetLibrary(o9)
xI_30:SetFolder("OuroborosHub")
xI_30:SaveDefault("Monochrome")
xI_30:ApplyToTab(xI_17.Settings)
xI_30:LoadDefault()
xI_9:SetLibrary(o9)
xI_9:IgnoreThemeSettings()
xI_9:SetIgnoreIndexes({ "MenuKeybind" })
xI_9:SetFolder("OuroborosHub/grow-a-chicken-fighter")
xI_9:BuildConfigSection(xI_17.Settings)
xI_9:LoadAutoloadConfig()
n3 = tick()
n_ = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local wH = v
        pcall(function()
            wH:Disable()
        end)
    end
end)
pl = fn1143
connection = UserInputService.InputBegan:Connect(fns.onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
oC = {}
oy = false
ou = function(jd)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not jd)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
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
o_.AntiGameplayPause:OnChanged(fns.fn535)
o_.Fly:OnChanged(fns.fn228)
o_.WalkSpeedEnabled:OnChanged(fns.fn449)
connection3 = RunService.Stepped:Connect(fns.onStepped)
UserInputService.JumpRequest:Connect(fns.onJumpRequest)
CurrentCamera2 = Workspace.CurrentCamera
RunService.RenderStepped:Connect(fns.onRenderStepped)
o9:OnUnload(fns.fn503)
ou(o_.AntiGameplayPause.Value)
task.spawn(worker2)
task.spawn(fns.worker3)
task.spawn(worker4)
task.spawn(fns.worker5)
task.spawn(fns.worker6)
task.spawn(worker7)
task.spawn(worker8)
