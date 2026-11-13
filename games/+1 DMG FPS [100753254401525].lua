local xh
local xZ
local wZ
local xG
local x4
local w4
local xM
local xt
local ya
local xa
local xS
local wS
local xz
local xg
local xY
local xF
local connection
local x3
local w3
local xL
local xs
local w9
local xR
local wR
local xy
local xf
local xX
local xl
local x2
local w2
local x8
local w8
local wQ
local xx
local xe
local xW
local wW
local xD
local CoreGui
local x1
local xJ
local x7
local w7
local xP
local xw
local State
local wV
local xC
local xj
local x0
local w0
local xI
local xp
local x6
local w6
local xO
local xv
local yc
local xU
local wU
local xB
local RunService
local w_
local xH
local xo
local x5
local w5
local yb
local xb
local xT
local LocalPlayer
local xA
local function fn30(lA)
    if lA then
        xR(x2, w5)
    else
        xO(x2)
        State.RewardStatus = "Idle"
    end
end
local function fn44()
    if yb.bound then
        return
    end
    local CC = pcall(function()
        RunService:BindToRenderStep("OuroborosDmgFps_Orbit", Enum.RenderPriority.Camera.Value - 1, function(ev)
            if yb.active then
                yb.Step(math.clamp(ev, 0, 0.1))
            end
        end)
    end)
    yb.bound = CC
end
local function fn45()
    wS.Release()
    wS.target = nil
    wS.Unbind()
end
local function fn62()
    if xG.ready then
        return xG
    end
    local Network = x7:FindFirstChild("Network")
    local Bn = Network and Network:FindFirstChild("Remotes")
    if Bn then
        xG.remotes = xt(Bn)
    else
        xz("ReplicatedStorage.Network.Remotes")
    end
    x0()
    xA()
    xf()
    xa()
    if not x3:FindFirstChild("PrivateEnemies") then
        xz("workspace.PrivateEnemies")
    end
    local Buddy = x3:FindFirstChild("Buddy")
    local Bn_1 = Buddy and Buddy:FindFirstChild("TriggerZone")
    if not Bn_1 then
        xz("buddy store trigger")
    end
    if not w9(getconnections) then
        xz("getconnections")
    end
    xG.ready = true
    return xG
end
local function fn66()
    if wS.bound then
        return
    end
    local CY = pcall(function()
        RunService:BindToRenderStep("OuroborosDmgFps_Aim", Enum.RenderPriority.Camera.Value + 1, function()
            local target = wS.target
            local CurrentCamera = x3.CurrentCamera
            local CN = not CurrentCamera or not target
            local CR = if CN then 1 else 0
            local CP = 3889 * CR + 1868 * (1 - CR)
            local CQ = 376 * CR + 1676 * (1 - CR)
            if not ((CP * 155 + CQ * 3021 + CP * CQ) % 16777213 == 3200955) then
                CN = not target.Parent
            end
            if CN then
                return
            end
            local CN_1 = target:FindFirstChild("Head") or target.PrimaryPart
            if CN_1 then
                CurrentCamera.CFrame = CFrame.new(CurrentCamera.CFrame.Position, CN_1.Position)
            end
        end)
    end)
    wS.bound = CY
end
local function fn100()
    local GR_1
    local GM = wR()
    if not GM then
        State.BuddyStatus = "No capsules found"
        return
    end
    if not w9(getconnections) then
        State.BuddyStatus = "Executor lacks getconnections"
        return
    end
    if xX() < GM.price then
        State.BuddyStatus = string.format("Need %s medals", xw(GM.price))
        return
    end
    local GN = w6()
    if not GN then
        State.BuddyStatus = "Buddy store not found"
        return
    end
    local GO = xJ()
    local GO_1
    local GP = not GO or GO.Health <= 0
    local GP_1
    if GP then
        State.BuddyStatus = "Waiting for respawn"
        return
    end
    if not xy.Acquire("Buddies") then
        State.BuddyStatus = "Waiting for " .. tostring(xy.holder)
        return
    end
    wS.Release()
    GP_1, GO_1 = xp(GM.id)
    local GQ = not GP_1 or not GP_1.Visible
    local GQ_1
    if GQ then
        State.BuddyStatus = "Opening buddy store"
        xl(GN, 4)
    end
    GQ_1, GR_1 = nil, nil
    local GN_1 = os.clock() + 6
    while true do
        local GS = os.clock() < GN_1 and wW() and not wV.stopped
        if GS then
            GP_1, GO_1 = xp(GM.id)
            if GP_1 and GP_1.Visible and GO_1 then
                local PurchaseButtons = GO_1:FindFirstChild("PurchaseButtons")
                local GT_1 = PurchaseButtons and PurchaseButtons:FindFirstChild("CashButton")
                GQ_1 = GT_1
                local GS_3 = GQ_1 and GQ_1:FindFirstChild("Button")
                GR_1 = GS_3
                if GQ_1 and GQ_1.Visible and GR_1 then
                    break
                end
                task.wait(0.4)
                continue
            end
            task.wait(0.4)
            continue
        end
        break
    end
    if not GO_1 then
        State.BuddyStatus = "Capsule card unavailable"
        xT(GP_1)
        xy.Release("Buddies")
        return
    end
    local GN_2 = not GR_1
    local GX = if GN_2 then 1 else 0
    local GV = 179 * GX + 666 * (1 - GX)
    local GW = 233 * GX + 1721 * (1 - GX)
    if not ((GV * 1327 + GW * 1947 + GV * GW) % 16777213 == 732891) then
        GN_2 = not GQ_1
    end
    local GX_1 = if GN_2 then 1 else 0
    local GV_1 = 1482 * GX_1 + 1955 * (1 - GX_1)
    local GW_1 = 1906 * GX_1 + 1913 * (1 - GX_1)
    if not ((GV_1 * 887 + GW_1 * 3605 + GV_1 * GW_1) % 16777213 == 11010356) then
        GN_2 = not GQ_1.Visible
    end
    if GN_2 then
        State.BuddyStatus = "Capsule not purchasable right now"
        xT(GP_1)
        xy.Release("Buddies")
        return
    end
    local GN_3 = xX()
    local GX_2 = if xo(GR_1) then 1 else 0
    local GV_2 = 526 * GX_2 + 2627 * (1 - GX_2)
    local GW_2 = 1133 * GX_2 + 1486 * (1 - GX_2)
    if not ((GV_2 * 9 + GW_2 * 1399 + GV_2 * GW_2) % 16777213 == 2185759) then
        State.BuddyStatus = "Purchase click failed"
        xT(GP_1)
        xy.Release("Buddies")
        return
    end
    State.BuddyStatus = "Opening " .. GM.name
    local GO_2 = os.clock() + 8
    while true do
        local GQ_2 = os.clock() < GO_2 and wW() and not wV.stopped
        if GQ_2 then
            if xX() < GN_3 then
                break
            end
            task.wait(0.4)
            continue
        end
        break
    end
    if xX() < GN_3 then
        State.BuddyStatus = "Bought " .. GM.name
    else
        State.BuddyStatus = "Capsule purchase did not settle"
    end
    xT(GP_1)
    xy.Release("Buddies")
end
local function fn138(dF)
    if xy.holder == dF then
        xy.holder = nil
    end
end
local function fn148(kU)
    if kU then
        xR(wQ, x5)
    else
        xO(wQ)
        State.AllyStatus = "Idle"
    end
end
local function fn152()
    local yZ = wZ()
    local y_ = yZ and yZ:FindFirstChildOfClass("Humanoid")
    return y_ or nil
end
local function fn186()
    if not wS.firing then
        return
    end
    wS.firing = false
    wS.lastPress = nil
    xZ(false)
    wS.point = nil
end
local function fn211(dd, de)
    if not dd or not dd.Parent then
        return false
    end
    local Position = dd.Position
    local BN = de
    local BR = if BN then 1 else 0
    local BP = 74 * BR + 828 * (1 - BR)
    local BQ = 1042 * BR + 1621 * (1 - BR)
    if not ((BP * 2436 + BQ * 1402 + BP * BQ) % 16777213 == 1718256) then
        BN = 4
    end
    return x1(Position + Vector3.new(0, BN, 0), 0.5)
end
local function fn224(ji)
    w0.booth = tostring(ji)
end
local function fn247()
    return not xC.Unloaded
end
local function fn249(iB)
    if iB then
        xR(w7, xW)
    else
        xO(w7)
        xy.Release("Guns")
        State.GunStatus = "Idle"
    end
end
local function fn292()
    local Ge = {}
    for i, v in ipairs(xG.eggs) do
        table.insert(Ge, string.format("%s  (%s medals)", v.name, xw(v.price)))
    end
    return Ge
end
local function fn301()
    connection:Disconnect()
end
local function fn379()
    local y7 = tonumber(xj("Medals")) or 0
    return y7
end
local function fn389()
    local yW = wZ()
    local yX = yW and yW:FindFirstChild("HumanoidRootPart")
    return yX or nil
end
local function fn390()
    local target = yb.target
    if target and target.Parent then
        local Ck_1 = target.PrimaryPart or target:FindFirstChild("HumanoidRootPart")
        if Ck_1 then
            return Ck_1.Position, true
        end
        return yb.point, false
    end
    return yb.point, false
end
local function fn395(kM)
    wV.egg = tostring(kM)
end
local function fn447(Y)
    return type(Y) == "function"
end
local function fn582()
    local FB = { xF }
    for i, v in ipairs(xG.booths) do
        table.insert(FB, string.format("%s  (%s)", v.name, v.id))
    end
    return FB
end
local function fn621()
    yb.Stop()
end
local function fn625()
    if not yb.bound then
        return
    end
    yb.bound = false
    pcall(function()
        RunService:UnbindFromRenderStep("OuroborosDmgFps_Orbit")
    end)
end
local function fn652(bG)
    if not bG then
        return nil
    end
    xP(bG)
    local z2 = xG.stages[bG.index + 1]
    if z2 then
        xP(z2)
    end
    local z3 = bG.medalPad or bG.anchor
    local z4 = z2
    if z4 then
        z4 = z2.medalPad
    end
    local z3_1 = z4 or nil
    bG.pads = {}
    if z3_1 then
        table.insert(bG.pads, z3_1)
    end
    if bG.medalPad then
        table.insert(bG.pads, bG.medalPad)
    end
    if z3 and z3_1 then
        bG.centre = z3.Position:Lerp(z3_1.Position, 0.5)
    elseif z3 then
        bG.centre = z3.Position
    else
        bG.centre = bG.basePos
    end
    return bG
end
local function fn664(ah)
    local yS = tonumber(ah) or 0
    ah = yS
    local yS_1 = 1
    local yT = { "", "K", "M", "B", "T", "Qa", "Qi", "Sx", "Sp", "Oc", "No", "Dc" }
    while ah >= 1000 and yS_1 < 12 do
        ah = ah / 1000
        yS_1 += 1
    end
    if yS_1 == 1 then
        return string.format("%d", ah)
    end
    return string.format("%.2f%s", ah, yT[yS_1])
end
local function fn688(dJ)
    dJ = (dJ - 1) % #wU + 1
    yb.profile = dJ
    yb.radius = wU[dJ].radius
    yb.height = wU[dJ].height
end
local function onOnClientEvent(lh)
    if type(lh) == "table" then
        xY.state = lh
    end
end
local function fn743()
    local egg = wV.egg
    for i, v in ipairs(xG.eggs) do
        local Gn = egg and string.find(egg, v.name, 1, true)
        if Gn then
            return v
        end
    end
    return xG.eggs[1]
end
local function fn757()
    if not wS.bound then
        return
    end
    wS.bound = false
    pcall(function()
        RunService:UnbindFromRenderStep("OuroborosDmgFps_Aim")
    end)
end
local function fn769()
    local FJ = xH("OwnedBooths")
    local booth = w0.booth
    if booth and booth ~= xF then
        for i, v in ipairs(xG.booths) do
            if string.find(booth, v.id, 1, true) then
                return v
            end
        end
    end
    for i, v in ipairs(xG.booths) do
        if not v.premium or FJ[v.id] then
            return v
        end
    end
    return xG.booths[1]
end
local function fn775(aQ)
    local remotes = xG.remotes
    if not remotes then
        return nil
    end
    local zl = remotes:FindFirstChild(aQ)
    local zk_1 = zl and xt(zl)
    return zk_1 or nil
end
local function fn790(aG)
    for i, v in ipairs(xG.missing) do
        if v == aG then
            return
        end
    end
    table.insert(xG.missing, aG)
end
local function fn794(kE)
    if kE then
        xR(wV, xD)
    else
        xO(wV)
        xT(nil)
        xy.Release("Buddies")
        State.BuddyStatus = "Idle"
    end
end
local function fn796()
    if not xS("EquipBestAlliesRequest") then
        State.AllyStatus = "Remote unavailable"
        return
    end
    if w2("EquipBestAlliesRequest") then
        local G_ = xj("AllyDps") or 0
        State.AllyStatus = string.format("Equipped best - %s DPS", xw(G_))
    else
        State.AllyStatus = "Request failed"
    end
end
local function fn835()
    return CoreGui
end
local function fn865(gN)
    gN.stopped = true
    local Eh = gN.generation or 0
    gN.generation = Eh + 1
end
local function fn874(br)
    local zR_1
    local zQ_1
    local zP = not br or not br.folder
    local zP_3
    local zW = if zP then 1 else 0
    local zU = 986 * zW + 3845 * (1 - zW)
    local zV = 2418 * zW + 3396 * (1 - zW)
    if not ((zU * 3717 + zV * 3938 + zU * zV) % 16777213 == 15571194) then
        zP = not br.folder.Parent
    end
    if zP then
        return br
    end
    if br.medalPad and br.medalPad.Parent and br.anchor and br.anchor.Parent then
        return br
    end
    local zP_2 = br.scanAt and os.clock() - br.scanAt < 2
    if zP_2 then
        return br
    end
    br.scanAt = os.clock()
    zQ_1, zP_3, zR_1 = nil, nil, nil
    for i, descendant in ipairs(br.folder:GetDescendants()) do
        if descendant:IsA("BasePart") then
            local zS = descendant:GetAttribute("MedalAmount") and not string.find(descendant.Parent.Name, "Premium")
            if zS then
                zQ_1 = descendant
                local zS_1 = tonumber(descendant:GetAttribute("MedalAmount")) or 0
                zP_3 = zS_1
            elseif not zR_1 then
                zR_1 = descendant
            end
        end
    end
    br.medalPad = zQ_1
    br.medalAmount = zP_3
    local zP_4 = zQ_1 or zR_1
    br.anchor = zP_4
    local zP_5 = br.basePos or xv(br.folder)
    br.basePos = zP_5
    local zP_6 = br.folder:FindFirstChild(br.folder.Name .. "Zone")
    local zQ_2 = zP_6 and zP_6:IsA("BasePart")
    local zP_7 = zQ_2 and zP_6 or nil
    br.zone = zP_7
    return br
end
local function fn899()
    local Fa = xH("OwnedGuns")
    local Fb = xX()
    for i, v in ipairs(xG.pads) do
        local Fc = not Fa[v.gunId]
        if Fc ~= false then
            Fc = v.price > 0
        end
        if Fc then
            Fc = v.price <= Fb
        end
        if Fc then
            local Fc_1 = xg[v.gunId]
            local Fd = not Fc_1 or Fb > Fc_1.balance or os.clock() - Fc_1.at > 120
            if Fd then
                return v
            end
        end
    end
    return nil
end
local function fn918()
    local EL_3
    local EH = xx(xG.stages[xh.stage])
    if not EH then
        State.FarmStatus = "Stage unavailable"
        return
    end
    local EI = xJ()
    local EJ = yc()
    local EK = not EJ or not EI or EI.Health <= 0
    local EK_4
    if EK then
        wS.Release()
        yb.Stop()
        xh.anchored = nil
        State.FarmStatus = "Waiting for respawn"
        return
    end
    if not xy.Acquire("Farm") then
        wS.Release()
        yb.Stop()
        State.FarmStatus = "Waiting for " .. tostring(xy.holder)
        return
    end
    wS.Bind()
    local EI_1 = xB(EH.id)
    if #EI_1 == 0 then
        wS.Release()
        wS.target = nil
        xh.current = nil
        xh.anchored = nil
        local EK_1 = EH.centre or EH.basePos
        local EL_1 = EK_1
        yb.SetBounds(EH.zone)
        xh.damageModel = nil
        if xh.engaged then
            xh.engaged = false
            yb.Stop()
            xU(EH)
        else
            if EK_1 then
                EK_1 = (EJ.Position - EL_1).Magnitude > 40
            end
            if EK_1 then
                State.FarmStatus = "Travelling to stage " .. tostring(EH.index)
                local EK_2 = EL_1 + Vector3.new(0, yb.height, 0)
                if (EJ.Position - EK_2).Magnitude > 320 then
                    yb.Stop()
                    x1(EK_2, 0.8)
                else
                    yb.Hover(EK_2)
                end
            else
                local Hover = yb.Hover
                local EM_1 = EL_1 and EL_1 + Vector3.new(0, yb.height, 0)
                local EL_2 = EM_1 or EJ.Position
                Hover(EL_2)
                State.FarmStatus = "Waiting for enemies"
            end
        end
        xy.Release("Farm")
        return
    end
    EL_3, EK_4 = nil, nil
    local current = xh.current
    for i, v in ipairs(EI_1) do
        if current and v.model == current then
            EL_3 = v
            EK_4 = (v.model.PrimaryPart.Position - EJ.Position).Magnitude
            break
        end
    end
    if not EL_3 then
        for i, v in ipairs(EI_1) do
            local Magnitude = (v.model.PrimaryPart.Position - EJ.Position).Magnitude
            if not EK_4 or Magnitude < EK_4 then
                EL_3, EK_4 = v, Magnitude
            end
        end
    end
    xh.current = EL_3.model
    xh.engaged = true
    wS.target = EL_3.model
    yb.SetBounds(EH.zone)
    local EI_3 = os.clock()
    if xh.damageModel ~= EL_3.model then
        xh.damageModel = EL_3.model
        xh.damageHealth = EL_3.humanoid.Health
        xh.damageAt = EI_3
    else
        local Health = EL_3.humanoid.Health
        local EM_4 = xh.damageHealth
        local E5 = if EM_4 then 1 else 0
        local E3 = 3585 * E5 + 2641 * (1 - E5)
        local E4 = 2490 * E5 + 635 * (1 - E5)
        if not ((E3 * 2825 + E4 * 3029 + E3 * E4) % 16777213 == 9819272) then
            EM_4 = math.huge
        end
        if Health < EM_4 - 0.001 then
            xh.damageHealth = EL_3.humanoid.Health
            xh.damageAt = EI_3
        else
            if EI_3 - (xh.damageAt or EI_3) > 3 then
                xh.damageAt = EI_3
                yb.NextProfile()
            end
        end
    end
    if xh.anchored ~= EL_3.model and EK_4 > 320 then
        xh.anchored = EL_3.model
        x1(EL_3.model.PrimaryPart.Position + Vector3.new(0, yb.height, yb.radius), 0.4)
    end
    yb.Follow(EL_3.model)
    wS.Hold()
    State.FarmStatus = string.format("Stage %d - %s %s HP", EH.index, tostring(EL_3.model.Name), xw(EL_3.humanoid.Health))
    xy.Release("Farm")
end
local function fn921()
    wS.Stop()
end
local function fn935()
    gethui = x4
end
local function fn946()
    local Main = x3:FindFirstChild("Main")
    local AP = Main and Main:FindFirstChild("Lobby")
    if not AP then
        xz("workspace.Main.Lobby")
        return
    end
    for i, child in ipairs(AP:GetChildren()) do
        local attr = child:GetAttribute("BoothId")
        if attr then
            local StandZone = child:FindFirstChild("StandZone")
            local AQ = StandZone and StandZone:IsA("BasePart")
            if AQ then
                local insert = table.insert
                local booths = xG.booths
                local AS = tostring(attr)
                local AT = child:GetAttribute("DisplayName") or attr
                local AU = tostring(AT)
                local AV = tonumber(child:GetAttribute("GainMultiplier")) or 1
                insert(booths, {
                    id = AS,
                    name = AU,
                    gain = AV,
                    premium = child:GetAttribute("IsPremium") == true,
                    stand = StandZone
                })
            end
        end
    end
    table.sort(xG.booths, function(co, cp)
        return co.gain > cp.gain
    end)
    if #xG.booths == 0 then
        xz("AFK shooting booths")
    end
end
local function fn953()
    local F2 = w8()
    if not F2 then
        State.TrainStatus = "No booth found"
        return
    end
    local F3 = xJ()
    local F4 = yc()
    if not F4 or not F3 or F3.Health <= 0 then
        State.TrainStatus = "Waiting for respawn"
        return
    end
    if not xy.Acquire("Training") then
        State.TrainStatus = "Waiting for " .. tostring(xy.holder)
        return
    end
    wS.Release()
    if (F4.Position - F2.stand.Position).Magnitude > 10 then
        xl(F2.stand, 4)
    end
    if xj("AFKTraining") == true then
        local format = string.format
        local name = F2.name
        local F5_1 = (xj("Damage"))
        local F9 = if F5_1 then 1 else 0
        local F7 = 2832 * F9 + 535 * (1 - F9)
        local F8 = 846 * F9 + 2805 * (1 - F9)
        if not ((F7 * 1144 + F8 * 487 + F7 * F8) % 16777213 == 6047682) then
            F5_1 = 0
        end
        State.TrainStatus = format("%s - damage %s", name, xw(F5_1))
    else
        State.TrainStatus = "Entering " .. F2.name
    end
    xy.Release("Training")
end
local function fn959()
    local Buddy = x3:FindFirstChild("Buddy")
    local GD = Buddy and Buddy:FindFirstChild("TriggerZone")
    if not GD then
        return nil
    elseif GD:IsA("BasePart") then
        return GD
    else
        local GD_1 = GD.PrimaryPart or GD:FindFirstChildWhichIsA("BasePart")
        return GD_1
    end
end
local function fn978()
    local Hg_6
    local He = {}
    w2("FreeRewardState")
    local state = xY.state
    local Hf_1
    if type(state) == "table" then
        local Hg_1 = (tonumber(state.PlaytimeSeconds))
        local Hn = if Hg_1 then 1 else 0
        local Hl = 3641 * Hn + 3597 * (1 - Hn)
        local Hm = 1124 * Hn + 1343 * (1 - Hn)
        if not ((Hl * 179 + Hm * 205 + Hl * Hm) % 16777213 == 4974643) then
            Hg_1 = 0
        end
        local Hh_1 = Hg_1
        local Hg_2 = tonumber(state.RequiredPlaytimeSeconds) or 0
        if Hg_2 > 0 and state.Claimed ~= true then
            if state.InGroup == true and Hh_1 >= Hg_2 then
                if w2("ClaimFreeReward") then
                    local insert = table.insert
                    local Hj = state.RewardDisplayName or "free reward"
                    insert(He, tostring(Hj))
                end
            elseif state.InGroup ~= true then
                State.RewardStatus = "Free reward needs group membership"
            else
                State.RewardStatus = string.format("Free reward in %ds", math.max(0, Hg_2 - Hh_1))
            end
        end
    end
    Hf_1, Hg_6 = xs("GetReturnTrainingState")
    local Hh_2 = Hf_1 and type(Hg_6) == "table"
    if Hh_2 then
        if Hg_6.ChargeReady == true then
            if w2("ClaimReturnTraining") then
                table.insert(He, "training vault")
            end
        else
            local Hf_2 = Hg_6.BoostActive ~= true
            if Hf_2 then
                local Hh_3 = tonumber(Hg_6.BoostSecondsRemaining) or 0
                Hf_2 = Hh_3 == 0
            end
            if Hf_2 then
                local Hh_4 = tonumber(Hg_6.VaultDamage) or 0
                Hf_2 = Hh_4 > 0
            end
            if Hf_2 then
                if w2("ActivateReturnTrainingBoost") then
                    table.insert(He, "training boost")
                end
            end
        end
    end
    if #He > 0 then
        State.RewardStatus = "Claimed " .. table.concat(He, ", ")
    elseif State.RewardStatus == "Idle" then
        State.RewardStatus = "Nothing ready"
    end
end
local function fn998()
    local Stages = x3:FindFirstChild("Stages")
    if not Stages then
        xz("workspace.Stages")
        return
    end
    for i, child in ipairs(Stages:GetChildren()) do
        if child:IsA("Folder") then
            for i, child in ipairs(child:GetChildren()) do
                local Aa_1 = tonumber(string.match(child.Name, "^Stage(%d+)$"))
                if Aa_1 then
                    local Ab = { index = Aa_1, id = xL(Aa_1), folder = child, basePos = xv(child) }
                    xP(Ab)
                    xG.stages[Aa_1] = Ab
                end
            end
        end
    end
    for k in pairs(xG.stages) do
        xx(xG.stages[k])
    end
    if not next(xG.stages) then
        xz("stage folders")
    end
end
local function fn1003()
    local Main = x3:FindFirstChild("Main")
    local Av = Main and Main:FindFirstChild("Lobby")
    local Au_1 = Av
    if Av then
        Av = Au_1:FindFirstChild("WinShopPlatform")
    end
    local Au_2 = Av
    if not Au_2 then
        xz("WinShopPlatform")
        return
    end
    for i, child in ipairs(Au_2:GetChildren()) do
        if child:IsA("Model") then
            for i, descendant in ipairs(child:GetDescendants()) do
                local Au_3 = descendant:IsA("BasePart") and descendant:GetAttribute("GunId")
                local Av_1 = Au_3 or nil
                if Av_1 then
                    local insert = table.insert
                    local pads = xG.pads
                    local Ax = tonumber(descendant:GetAttribute("PriceMedals")) or 0
                    insert(pads, { gunId = Av_1, price = Ax, part = descendant })
                end
            end
        end
    end
    table.sort(xG.pads, function(cb, cc)
        return cb.price > cc.price
    end)
    if #xG.pads == 0 then
        xz("gun pads")
    end
end
local function fn1009(gZ)
    local Et = xX()
    local Eu_1 = gZ.pad and gZ.pad.Parent and { gZ.pad }
    if not Eu_1 then
        Eu_1 = gZ.pads or {}
    end
    local Ev_2 = Eu_1
    for i, v in ipairs(Ev_2) do
        if v.Parent then
            State.FarmStatus = "Claiming win pad"
            ya(v)
            local Eu_2 = os.clock() + 2
            while os.clock() < Eu_2 do
                if xX() > Et then
                    gZ.pad = v
                    State.FarmStatus = string.format("Claimed %s medals", xw(xX() - Et))
                    return true
                end
                task.wait(0.2)
            end
        end
    end
    gZ.pad = nil
    return false
end
local function fn1015()
    if #xG.pads == 0 then
        State.GunStatus = "No gun pads found"
        return
    end
    local Ft = xJ()
    if not Ft or Ft.Health <= 0 then
        State.GunStatus = "Waiting for respawn"
        return
    end
    local Ft_1 = w4()
    if not Ft_1 then
        local Fu_1 = xb()
        local Fv = Fu_1 and xj("EquippedGunId") ~= Fu_1.gunId
        if Fv then
            local Fz = if not xy.Acquire("Guns") then 1 else 0
            if Fz == 1 then
                State.GunStatus = "Waiting for " .. tostring(xy.holder)
                return
            end
            wS.Release()
            State.GunStatus = "Equipping " .. Fu_1.gunId
            ya(Fu_1.part)
            xy.Release("Guns")
            return
        end
        State.GunStatus = string.format("Owned best - %s medals", xw(xX()))
        return
    end
    if not xy.Acquire("Guns") then
        State.GunStatus = "Waiting for " .. tostring(xy.holder)
        return
    end
    wS.Release()
    State.GunStatus = string.format("Buying %s for %s medals", Ft_1.gunId, xw(Ft_1.price))
    ya(Ft_1.part)
    task.wait(1)
    xy.Release("Guns")
    if xH("OwnedGuns")[Ft_1.gunId] then
        xg[Ft_1.gunId] = nil
        State.GunStatus = "Bought " .. Ft_1.gunId
        return
    end
    xg[Ft_1.gunId] = { at = os.clock(), balance = xX() }
    State.GunStatus = string.format("%s refused at %s medals, waiting for more", Ft_1.gunId, xw(xX()))
end
local function fn1020(eN)
    yb.target = nil
    yb.point = eN
    yb.active = true
    yb.Bind()
end
local function fn1027(aL)
    local zh_1
    local zg_1
    if not aL then
        return nil
    end
    zg_1, zh_1 = pcall(require, aL)
    local zi = zg_1 and type(zh_1) == "table"
    if zi then
        return zh_1
    end
    return nil
end
local function fn1038(bf)
    return string.format("Stage%02d", bf)
end
local function fn1056(jy)
    local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
    local Gw = PlayerGui and PlayerGui:FindFirstChild("Menu")
    local Gv_1 = Gw
    if Gw then
        Gw = Gv_1:FindFirstChild("Canva")
    end
    local Gv_2 = Gw
    if Gw then
        Gw = Gv_2:FindFirstChild("Army")
    end
    local Gv_3 = Gw
    if Gw then
        Gw = Gv_3:FindFirstChild("Main")
    end
    local Gx = Gw
    if Gw then
        Gw = Gx:FindFirstChild("Items")
    end
    local Gx_1 = Gw
    if Gw then
        Gw = Gx_1:FindFirstChild("Card_" .. jy)
    end
    return Gv_3, Gw
end
local function fn1106()
    local Fl = xH("OwnedGuns")
    for i, v in ipairs(xG.pads) do
        if Fl[v.gunId] then
            return v
        end
    end
    return nil
end
local function fn1114(c7, c8)
    local BI = yc()
    local BJ = not BI or typeof(c7) ~= "Vector3"
    if BJ then
        return false
    end
    BI.CFrame = CFrame.new(c7)
    local wait = task.wait
    local BJ_1 = c8 or 0.35
    wait(BJ_1)
    return true
end
local function fn1121()
    yb.SetProfile(yb.profile + 1)
end
local function fn1130(dN)
    local B7_1 = dN and dN.Parent and dN
    local Cc = if B7_1 then 1 else 0
    local Ca = 1286 * Cc + 3235 * (1 - Cc)
    local Cb = 3328 * Cc + 3022 * (1 - Cc)
    if not ((Ca * 2692 + Cb * 2942 + Ca * Cb) % 16777213 == 755483) then
        B7_1 = nil
    end
    yb.bounds = B7_1
end
local function fn1136(jb)
    if jb then
        xR(w0, xe)
    else
        xO(w0)
        xy.Release("Training")
        State.TrainStatus = "Idle"
    end
end
local function fn1142(gP)
    local PrivateEnemies = x3:FindFirstChild("PrivateEnemies")
    local Ek = {}
    if not PrivateEnemies then
        return Ek
    end
    for i, child in ipairs(PrivateEnemies:GetChildren()) do
        local Ej_1 = child:IsA("Model") and child:GetAttribute("StageId") == gP and child.PrimaryPart
        if Ej_1 then
            local Humanoid = child:FindFirstChildWhichIsA("Humanoid")
            if Humanoid and Humanoid.Health > 0 then
                table.insert(Ek, { model = child, humanoid = Humanoid })
            end
        end
    end
    return Ek
end
local function fn1164(dC)
    if xy.holder == nil or xy.holder == dC then
        xy.holder = dC
        return true
    end
    return false
end
local function fn1215()
    local G8 = if not xS("RebirthRequest") then 1 else 0
    if G8 == 1 then
        State.RebirthStatus = "Remote unavailable"
        return
    end
    local G2 = tonumber(xj("Level")) or 0
    local G2_1 = tonumber(xj("RebirthRequirement")) or 0
    if G2_1 > 0 and G2 < G2_1 then
        State.RebirthStatus = string.format("Level %s / %s", xw(G2), xw(G2_1))
        return
    end
    w2("RebirthRequest")
    State.RebirthStatus = string.format("Requested at level %s", xw(G2))
    task.wait(2)
end
local function fn1218(k8)
    if k8 then
        xR(x6, x8)
    else
        xO(x6)
        State.RebirthStatus = "Idle"
    end
end
local function fn1241()
    local Shared = x7:FindFirstChild("Shared")
    local A6 = Shared and Shared:FindFirstChild("Config")
    local A5_1 = A6
    if A6 then
        A6 = A5_1:FindFirstChild("EggConfig")
    end
    xG.eggConfig = w_(A6)
    local A6_1 = A5_1 and A5_1:FindFirstChild("StageBalance")
    xG.stageBalance = w_(A6_1)
    if not xG.stageBalance then
        xz("StageBalance config")
    end
    local A5_2 = not xG.eggConfig or type(xG.eggConfig.Definitions) ~= "table"
    if A5_2 then
        xz("EggConfig definitions")
        return
    end
    for k, v in pairs(xG.eggConfig.Definitions) do
        local A5_3 = type(v) == "table" and type(v.Id) == "string"
        if A5_3 then
            local insert = table.insert
            local eggs = xG.eggs
            local Id = v.Id
            local A8 = v.DisplayName or v.Id
            local A9 = tostring(A8)
            local Ba = tonumber(v.CoinPrice) or 0
            local Bb = tonumber(v.LayoutOrder) or 0
            insert(eggs, { id = Id, name = A9, price = Ba, order = Bb })
        end
    end
    table.sort(xG.eggs, function(cF, cG)
        return cF.order < cG.order
    end)
end
local function fn1242(V)
    local yN = typeof(cloneref) == "function" and typeof(V) == "Instance"
    if yN then
        return cloneref(V)
    end
    return V
end
local function fn1263(hG)
    if hG then
        xR(xh, xI)
    else
        xO(xh)
        xh.current = nil
        xh.engaged = false
        xh.anchored = nil
        xh.damageModel = nil
        wS.Stop()
        yb.Stop()
        xy.Release("Farm")
        State.FarmStatus = "Idle"
    end
end
local function fn1275(cY)
    local By = {}
    local ProgressionState = LocalPlayer:FindFirstChild("ProgressionState")
    local BA = ProgressionState and ProgressionState:FindFirstChild(cY)
    if not BA then
        return By
    end
    for i, child in ipairs(BA:GetChildren()) do
        local Bz_2 = child:IsA("BoolValue") and child.Value
        if Bz_2 then
            By[child.Name] = true
        end
    end
    return By
end
local function fn1287()
    local D3 = os.clock()
    if wS.firing and D3 - (wS.lastPress or 0) < 0.6 then
        return
    end
    if wS.firing then
        xZ(false)
    end
    wS.point = w3()
    local D9 = if xZ(true) then 1 else 0
    if D9 == 1 then
        wS.firing = true
        wS.lastPress = D3
    end
end
local function fn1302(di)
    local BS = yc()
    if not BS or not di or not di.Parent then
        return false
    end
    if w9(firetouchinterest) then
        pcall(firetouchinterest, BS, di, 0)
        task.wait(0.06)
        pcall(firetouchinterest, BS, di, 1)
    end
    return xl(di, 4)
end
local function fn1325(eE)
    if yb.target ~= eE then
        yb.target = eE
        yb.SetProfile(1)
        local CF = yc()
        local CG = eE
        if CG then
            local CH_1 = eE.PrimaryPart or eE:FindFirstChild("HumanoidRootPart")
            CG = CH_1
        end
        local CH_2 = CG
        if CF and CH_2 then
            local CG_2 = CF.Position - CH_2.Position
            yb.angle = math.atan2(CG_2.Z, CG_2.X)
        end
    end
    yb.point = nil
    yb.active = true
    yb.Bind()
end
local function fn1425()
    xO(xh)
    xO(w7)
    xO(w0)
    xO(wV)
    xO(wQ)
    xO(x6)
    xO(x2)
    wS.Stop()
    xy.holder = nil
end
local function fn1439(hP)
    local E7 = tonumber(string.match(tostring(hP), "(%d+)"))
    if E7 and E7 >= 1 and E7 <= xM then
        xh.stage = E7
        local E8_1 = xG.stages[E7]
        if E8_1 then
            xx(E8_1)
        end
    end
end
local function fn1452()
    return LocalPlayer.Character
end
wQ = nil
wR = nil
wS = nil
LocalPlayer = nil
wU = nil
wV = nil
wW = nil
wZ = nil
w_ = nil
w0 = nil
w2 = nil
w3 = nil
w4 = nil
w5 = nil
w6 = nil
w7 = nil
w8 = nil
w9 = nil
xa = nil
xb = nil
xe = nil
xf = nil
xg = nil
xh = nil
xj = nil
CoreGui = nil
xl = nil
connection = nil
xo = nil
xp = nil
xs = nil
xt = nil
xv = nil
xw = nil
xx = nil
xy = nil
xz = nil
xA = nil
xB = nil
local Players, wX, wY, Lighting, TeleportService, xd, xi, xn, GuiService, xr, HttpService
xC = nil
xD = nil
xF = nil
xG = nil
xH = nil
xI = nil
xJ = nil
xL = nil
xM = nil
xO = nil
xP = nil
xR = nil
xS = nil
xT = nil
xU = nil
State = nil
xW = nil
xX = nil
xY = nil
xZ = nil
RunService = nil
x0 = nil
x1 = nil
x2 = nil
x3 = nil
x4 = nil
x5 = nil
x6 = nil
x7 = nil
x8 = nil
ya = nil
yb = nil
yc = nil
local VirtualInputManager, VirtualUser, xN, UserInputService
local yp = if not game:IsLoaded() then 1 else 0
if yp == 1 then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, VirtualInputManager, HttpService, GuiService, CoreGui, TeleportService, Lighting, wX, LocalPlayer, x4 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
VirtualInputManager = game:GetService("VirtualInputManager")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
wX = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local x9 = "OuroborosDmgFps"
x4 = fn835
if getgenv then
    getgenv().gethui = x4
end
xC, x7, x3, State, xM, xF, xG, xy, wU, yb, wS, xh, w7, w0, wV, wQ, x6, x2, xg, xY, wY, xt, w9, wW, xw, wZ, yc, xJ, xj, xX, xz, w_, xS, w2, xs, xL, xv, xP, xx, x0, xA, xf, xa, xH, x1, xl, ya, xo, xi, xn, xd, w3, xZ, xR, xO, xB, xU, xI, w4, xb, xW, xN, w8, xe, xr, wR, xp, w6, xT, xD, x5, x8 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fn935)
local function yd(u)
    local yC
    local yD
    local yB
    yB = nil
    yC = nil
    yD = nil
    local yE = u ~= ""
    local yF = type(u) == "string" and yE
    assert(yF, "A namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    yC = getgenv()
    assert(type(yC) == "table", "getgenv did not return a table")
    local yE_1 = yC[u]
    if yE_1 ~= nil then
        local yF_1 = type(yE_1) == "table" and type(yE_1.Unload) == "function"
        assert(yF_1, "Namespace is occupied")
        yE_1.Unload()
        assert(yC[u] == nil, "Previous instance did not release its namespace")
    end
    yD = {}
    yB = { State = {}, Unloaded = false }
    yB.Track = function(A)
        assert(type(A) == "function", "Cleanup must be callable")
        if yB.Unloaded then
            A()
        else
            table.insert(yD, A)
        end
        return A
    end
    yB.Unload = function()
        local yu_1
        local yt_1
        if yB.Unloaded then
            return
        end
        yB.Unloaded = true
        local yr = {}
        local yy = #yD
        local yx = -1
        while yy >= 1 do
            local yz = yy
            local ys_1 = table.remove(yD, yz)
            yt_1, yu_1 = pcall(ys_1)
            if not yt_1 then
                table.insert(yr, tostring(yu_1))
            end
            yy += yx
        end
        table.clear(yB.State)
        if #yr > 0 then
            error("Cleanup incomplete: " .. table.concat(yr, "; "), 0)
        end
        if yC[u] == yB then
            yC[u] = nil
        end
    end
    yC[u] = yB
    return yB
end
wY = function(N, O)
    local yL = type(N) == "table" and type(N.Track) == "function"
    assert(yL, "FeatureAPI required")
    local yL_1 = type(O) == "table" and type(O.OnUnload) == "function"
    assert(yL_1, "UI library required")
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
xC = yd(x9)
if (not x3 or x3 or (x3 or false) or (false or xi or (false or not x3)) or (not x3 and false or x3 and xR) and (xi and xR or xR and xR)) and ((xR and x3 or (xR or xM)) and (xR or (x3 or xR)) and ((xR or xM) and (xM or x3) or not x3 and x3 and (x3 and xi))) or not ((not x3 or x3 or (x3 or false) or (false or xi or (false or not x3)) or (not x3 and false or x3 and xR) and (xi and xR or xR and xR)) and ((xR and x3 or (xR or xM)) and (xR or (x3 or xR)) and ((xR or xM) and (xM or x3) or not x3 and x3 and (x3 and xi)))) then
    xt = fn1242
    w9 = fn447
    wW = fn247
    x7 = xt(ReplicatedStorage)
    x3 = xt(wX)
else
    wX = fn1242
    x7 = fn447
    w9 = fn247
    wX(wW)
    xt = wX(x3)
end
State = xC.State
State.FarmStatus = "Idle"
State.GunStatus = "Idle"
State.TrainStatus = "Idle"
State.BuddyStatus = "Idle"
State.AllyStatus = "Idle"
State.RebirthStatus = "Idle"
State.RewardStatus = "Idle"
xM = 30
xF = "Best Unlocked"
xw = fn664
wZ = fn1452
yc = fn389
xJ = fn152
xj = function(aw)
    local y5_1
    local y4_1
    y4_1, y5_1 = pcall(function()
        return LocalPlayer:GetAttribute(aw)
    end)
    if y4_1 then
        return y5_1
    end
    return nil
end
xX = fn379
xG = {
    ready = false,
    remotes = nil,
    stageBalance = nil,
    eggConfig = nil,
    pads = {},
    booths = {},
    stages = {},
    eggs = {},
    missing = {}
}
xz = fn790
w_ = fn1027
xS = fn775
w2 = function(aX, ...)
    local zr
    local zq
    zq = nil
    zr = nil
    zr = xS(aX)
    local zs = not zr or not zr:IsA("RemoteEvent")
    if zs then
        return false
    end
    zq = table.pack(...)
    local zs_1 = pcall(function()
        zr:FireServer(table.unpack(zq, 1, zq.n))
    end)
    return zs_1
end
xs = function(a5, ...)
    local zu
    local zv
    zu = nil
    zv = nil
    local zx_1
    zv = xS(a5)
    local zw = not zv or not zv:IsA("RemoteFunction")
    local zw_1
    if zw then
        return false, nil
    end
    zu = table.pack(...)
    zw_1, zx_1 = pcall(function()
        return zv:InvokeServer(table.unpack(zu, 1, zu.n))
    end)
    if zw_1 then
        return true, zx_1
    end
    return false, nil
end
xL = fn1038
xv = function(bh)
    local zA_1
    for i, child in ipairs(bh:GetChildren()) do
        local zI = child
        local zz = zI:IsA("Model") and string.find(zI.Name, "Base", 1, true)
        local zz_1
        if zz then
            zz_1, zA_1 = pcall(function()
                return zI:GetPivot().Position
            end)
            if zz_1 and zA_1 then
                return zA_1
            end
        end
    end
    for i, child in ipairs(bh:GetChildren()) do
        if child:IsA("BasePart") then
            return child.Position
        end
    end
    return nil
end
xP = fn874
xx = fn652
x0 = fn998
xA = fn1003
xf = fn946
xa = fn1241
fn62()
xH = fn1275
x1 = fn1114
xl = fn211
ya = fn1302
xo = function(dq)
    local BW_1
    local BV = not dq or not dq.Parent or not w9(getconnections)
    local BV_1
    if BV then
        return false
    end
    BV_1, BW_1 = pcall(getconnections, dq.Activated)
    local BX = not BV_1 or type(BW_1) ~= "table" or #BW_1 == 0
    if BX then
        return false
    end
    local BV_2 = false
    for i, v in ipairs(BW_1) do
        local B3 = v
        if pcall(function()
            B3:Fire(Enum.UserInputType.MouseButton1, 1)
        end) then
            BV_2 = true
        end
    end
    return BV_2
end
xy = { holder = nil }
xy.Acquire = fn1164
xy.Release = fn138
wU = { { radius = 18, height = 13 }, { radius = 14, height = 6 }, { radius = 10, height = 2 } }
yb = {
    active = false,
    bound = false,
    target = nil,
    point = nil,
    angle = 0,
    profile = 1,
    radius = wU[1].radius,
    height = wU[1].height,
    spin = 1.4,
    travel = 240,
    bounds = nil
}
yb.SetProfile = fn688
yb.NextProfile = fn1121
yb.SetBounds = fn1130
xi = function(dR)
    local Cd
    Cd = nil
    local bounds = yb.bounds
    if not bounds or not bounds.Parent then
        return dR
    end
    Cd = 2.5
    local Cf_1 = bounds.CFrame:PointToObjectSpace(dR)
    local Cg = bounds.Size * 0.5
    local function Ch(dZ, d_)
        d_ = math.max(d_ - Cd, 0)
        return math.clamp(dZ, -d_, d_)
    end
    return bounds.CFrame:PointToWorldSpace(Vector3.new(Ch(Cf_1.X, Cg.X), Ch(Cf_1.Y, Cg.Y), Ch(Cf_1.Z, Cg.Z)))
end
xn = fn390
yb.Step = function(d7)
    local Cr
    local Cp
    local Cq
    Cp = nil
    Cq = nil
    Cr = nil
    local Ct_1
    local Cs = xy.holder and xy.holder ~= "Farm"
    local Cs_1
    if Cs then
        return
    end
    Cp = yc()
    if not Cp then
        return
    end
    Ct_1, Cs_1 = xn()
    if not Ct_1 then
        return
    end
    local Cu = Ct_1
    if Cs_1 then
        yb.angle = (yb.angle + yb.spin * d7) % (math.pi * 2)
        Cu = Ct_1 + Vector3.new(math.cos(yb.angle) * yb.radius, yb.height, math.sin(yb.angle) * yb.radius)
    end
    local Cu_1 = xi(Cu)
    local Position = Cp.Position
    local Cv = Cu_1 - Position
    local Magnitude = Cv.Magnitude
    Cr = Cu_1
    if Magnitude > 0.05 then
        Cr = Position + Cv.Unit * math.min(Magnitude, yb.travel * d7)
    end
    Cq = Vector3.new(Ct_1.X, Cr.Y, Ct_1.Z)
    if (Cq - Cr).Magnitude < 0.1 then
        Cq = Cr + Cp.CFrame.LookVector
    end
    pcall(function()
        Cp.AssemblyLinearVelocity = Vector3.zero
        Cp.AssemblyAngularVelocity = Vector3.zero
        Cp.CFrame = CFrame.lookAt(Cr, Cq)
    end)
end
yb.Bind = fn44
yb.Unbind = fn625
yb.Follow = fn1325
yb.Hover = fn1020
yb.Stop = function()
    yb.active = false
    yb.target = nil
    yb.point = nil
    yb.Unbind()
    local CJ = xJ()
    if CJ then
        pcall(function()
            CJ:ChangeState(Enum.HumanoidStateType.GettingUp)
        end)
    end
end
xC.Track(fn621)
wS = { firing = false, target = nil, bound = false }
wS.Bind = fn66
wS.Unbind = fn757
xd = function()
    local Dc
    local De
    local Dd
    Dc = nil
    Dd = nil
    De = nil
    local Dg_1
    local Df_1
    Dc = {}
    Df_1, Dg_1 = pcall(function()
        return x4():GetChildren()
    end)
    if not Df_1 then
        return Dc
    end
    local CurrentCamera = x3.CurrentCamera
    local Df_3 = CurrentCamera and CurrentCamera.ViewportSize
    local Dl = if Df_3 then 1 else 0
    local Dj = 246 * Dl + 1971 * (1 - Dl)
    local Dk = 988 * Dl + 2997 * (1 - Dl)
    if not ((Dj * 1463 + Dk * 1156 + Dj * Dk) % 16777213 == 1745074) then
        Df_3 = Vector2.new(1920, 1080)
    end
    local Dh_1 = Df_3
    De = Dh_1.X * Dh_1.Y * 0.7
    Dd = function(ft, fu)
        for i, child in ipairs(ft:GetChildren()) do
            local C0 = child:IsA("GuiObject") and child.Visible
            if C0 then
                if child.AbsoluteSize.X > 40 and child.AbsoluteSize.Y > 40 and child.AbsoluteSize.X * child.AbsoluteSize.Y < De then
                    table.insert(Dc, { position = child.AbsolutePosition, size = child.AbsoluteSize })
                elseif fu > 0 then
                    Dd(child, fu - 1)
                end
            end
        end
    end
    for i, v in ipairs(Dg_1) do
        local Df_4 = v:IsA("ScreenGui") and v.Enabled and v.Name ~= "RobloxGui"
        if Df_4 then
            Dd(v, 2)
        end
    end
    return Dc
end
w3 = function()
    local Dt
    local Dy_1
    local Dx_3
    local CurrentCamera = x3.CurrentCamera
    if not CurrentCamera then
        return nil
    end
    local ViewportSize = CurrentCamera.ViewportSize
    local Du_1 = {
        Vector2.new(ViewportSize.X * 0.5, ViewportSize.Y * 0.5),
        Vector2.new(ViewportSize.X * 0.06, ViewportSize.Y * 0.5),
        Vector2.new(ViewportSize.X * 0.94, ViewportSize.Y * 0.5),
        Vector2.new(ViewportSize.X * 0.5, ViewportSize.Y * 0.94),
        Vector2.new(ViewportSize.X * 0.5, ViewportSize.Y * 0.06)
    }
    local DD = 0
    while DD <= 4 do
        local Dw_1 = 0.5 + DD * 0.08
        table.insert(Du_1, Vector2.new(ViewportSize.X * Dw_1, ViewportSize.Y * 0.5))
        table.insert(Du_1, Vector2.new(ViewportSize.X * (1 - Dw_1), ViewportSize.Y * 0.5))
        table.insert(Du_1, Vector2.new(ViewportSize.X * 0.5, ViewportSize.Y * Dw_1))
        DD += 1
    end
    local Dw_2 = xd()
    local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
    Dt = 0
    pcall(function()
        Dt = GuiService:GetGuiInset().Y
    end)
    for i, v in ipairs(Du_1) do
        local DL = v
        local Dv_1 = false
        for i, v in ipairs(Dw_2) do
            if DL.X >= v.position.X - 8 and DL.X <= v.position.X + v.size.X + 8 and DL.Y >= v.position.Y - 8 and DL.Y <= v.position.Y + v.size.Y + 8 then
                Dv_1 = true
                break
            end
        end
        local Dx_2 = not Dv_1
        if Dx_2 ~= false then
            Dx_2 = PlayerGui
        end
        if Dx_2 then
            Dx_3, Dy_1 = pcall(function()
                return PlayerGui:GetGuiObjectsAtPosition(DL.X, DL.Y - Dt)
            end)
            local Dz = Dx_3 and type(Dy_1) == "table"
            if Dz then
                for i, v in ipairs(Dy_1) do
                    local Dx_4 = v:IsA("GuiButton") or v.Active
                    if Dx_4 then
                        Dv_1 = true
                        break
                    end
                end
            end
        end
        if not Dv_1 then
            return DL
        end
    end
    return Du_1[1]
end
xZ = function(ga)
    local DY
    local DZ = wS.point or w3()
    DY = DZ
    if not DY then
        return false
    end
    return (pcall(function()
        VirtualInputManager:SendMouseButtonEvent(DY.X, DY.Y, 0, ga, game, 0)
    end))
end
wS.Hold = fn1287
wS.Release = fn186
wS.Stop = fn45
xC.Track(fn921)
xh = { interval = 0.2, stage = 1 }
w7 = { interval = 3 }
w0 = { interval = 1, booth = xF }
wV = { interval = 6, egg = nil }
wQ = { interval = 15 }
x6 = { interval = 5 }
x2 = { interval = 20 }
xR = function(gA, gB)
    local generation
    local Ef = gA.generation or 0
    gA.generation = Ef + 1
    gA.stopped = false
    generation = gA.generation
    task.spawn(function()
        local Ec_1
        while true do
            local Eb = wW() and not gA.stopped and gA.generation == generation
            local Eb_1
            if Eb then
                Eb_1, Ec_1 = pcall(gB)
                if not Eb_1 then
                    warn("[Ouroboros] loop error: " .. tostring(Ec_1))
                end
                local Eb_2 = not wW() or gA.stopped or gA.generation ~= generation
                if Eb_2 then
                    break
                end
                task.wait(gA.interval)
                continue
            end
            break
        end
    end)
end
xO = fn865
xB = fn1142
xU = fn1009
xI = fn918
xh.SetEnabled = fn1263
xh.SetStage = fn1439
xg = {}
w4 = fn899
xb = fn1106
xW = fn1015
w7.SetEnabled = fn249
xN = fn582
w8 = fn769
xe = fn953
w0.SetEnabled = fn1136
w0.SetBooth = fn224
xr = fn292
wR = fn743
xp = fn1056
w6 = fn959
xT = function(jT)
    if jT then
        local Top = jT:FindFirstChild("Top")
        local GH_1 = Top and Top:FindFirstChild("Exit")
        local GG_2 = GH_1
        if GH_1 then
            GH_1 = GG_2:FindFirstChild("Button")
        end
        local GG_3 = GH_1
        if GH_1 then
            GH_1 = xo(GG_3)
        end
        if GH_1 then
            task.wait(0.4)
        end
    end
    local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
    local GH_2 = PlayerGui and PlayerGui:FindFirstChild("Menu")
    local GF = GH_2
    if GF and GF.Enabled then
        pcall(function()
            GF.Enabled = false
        end)
    end
end
if ((not xf or x8) and (not x2 or xC) or (xC and not x2 or x8 and x8)) and not ((not xf or x8) and (not x2 or xC) or (xC and not x2 or x8 and x8)) then
    x5 = fn100
    xD.SetEnabled = fn794
    xD.SetEgg = fn395
    wV = fn796
else
    xD = fn100
    wV.SetEnabled = fn794
    wV.SetEgg = fn395
    x5 = fn796
end
wQ.SetEnabled = fn148
x8 = fn1215
x6.SetEnabled = fn1218
xY = { state = nil }
local yj = xS("FreeRewardState")
local yi = yj and yj:IsA("RemoteEvent")
if yi then
    connection = nil
    yd = 5
    repeat
        if (yd * 1 + 0) % 2 + 1 <= 1 then
            local ye_2 = {
                "vvlq",
                "bsw",
                "vwgdsors",
                "udgumpxlencw",
                "mjzziilmboiq",
                "pstgns",
                "wlc",
                "fpshq",
                "cjrpxxu",
                "mhhe"
            }
            if ye_2[(yd * 67 + 80) % 10 + 1] <= ye_2[(yd * 67 + 80) % 10 + 1] then
                xC.Track(fn301)
            else
                xC.Track(fn301)
            end
            yd = (yd + 7) % 8
        else
            if (not yd or connection) and (not yd or not yd) and (not connection and not yd and (not connection and not connection)) and (not connection and connection and (not yd or not connection) and ((not connection or not yd) and (not connection or connection))) or ((yd or not yd) and (not connection and not yd) or (not yd or not yd or not yd and not yd) or (not connection and yd or (connection or not connection)) and (yd and not yd and (not yd and not connection))) or not ((not yd or connection) and (not yd or not yd) and (not connection and not yd and (not connection and not connection)) and (not connection and connection and (not yd or not connection) and ((not connection or not yd) and (not connection or connection))) or ((yd or not yd) and (not connection and not yd) or (not yd or not yd or not yd and not yd) or (not connection and yd or (connection or not connection)) and (yd and not yd and (not yd and not connection)))) then
                connection = yj.OnClientEvent:Connect(onOnClientEvent)
            else
                yj = connection.OnClientEvent:Connect(onOnClientEvent)
            end
            yd = (yd + 3) % 8
        end
    until (yd * 5 + 3) % 8 == 6
end
w5 = nil
w5 = fn978
x2.SetEnabled = fn30
xC.Track(fn1425)
local function yf()
    local Mj
    local onDiscord
    local Mk
    Mj = nil
    Mk = nil
    onDiscord = nil
    local Options, SaveManager, Mm, Mn, Library, Toggles, Mr, ThemeManager, Mt
    Mn = "https://rscripts.net/@Ouroboros"
    Mj = "https://discord.gg/synapsex"
    Mr = "https://ouroboros-hub-rbx.web.app/"
    Mm = "+1 DMG FPS"
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = Library.Toggles
    Options = Library.Options
    wY(xC, Library)
    Mk = function(l2, l3)
        local Hp = w9(setclipboard) and setclipboard
        local Hq = Hp
        if not Hq then
            local Hp_1 = w9(toclipboard) and toclipboard
            Hq = Hp_1 or nil
        end
        local Hp_2 = Hq
        if not Hp_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local Hq_1 = pcall(Hp_2, l2)
        if Hq_1 then
            Library:Notify(l3)
        else
            Library:Notify("Failed to copy")
        end
    end
    onDiscord = function()
        Mk(Mj, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = Mj, Copyable = true }, "|", Mm, "|", "v0.4" },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    Mt = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "gamepad-2"),
        Player = Window:AddTab("Player", "person-standing"),
        Settings = Window:AddTab("Settings", "settings")
    }
    local function Mu(mg)
        local DiscordGroup = mg:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    for k, v in Mt do
        if k ~= "Info" then
            Mu(v)
        end
    end
    local function Mv_1()
        local HR
        HR = nil
        local Label2, Label7, Label5, Label11, Label6, Label4, Label, Label8, Label3, Label9, Label10
        local HS = {}
        local HZ = 1
        local HX = xM
        while HZ <= HX do
            local H_ = HZ
            local HT_1 = xG.stages[H_]
            local H3 = if HT_1 then 1 else 0
            local H1 = 720 * H3 + 2332 * (1 - H3)
            local H2 = 840 * H3 + 1531 * (1 - H3)
            if not ((H1 * 1277 + H2 * 3816 + H1 * H2) % 16777213 == 4729680) then
                local HU_1 = xG.stageBalance and xG.stageBalance[xL(H_)]
                HT_1 = HU_1
            end
            if HT_1 then
                local HU_2 = nil
                if xG.stageBalance then
                    local HT_2 = xG.stageBalance[xL(H_)]
                    local HV_1 = type(HT_2) == "table" and tonumber(HT_2.RequiredPower)
                    HU_2 = HV_1 or nil
                end
                if HU_2 then
                    table.insert(HS, string.format("Stage %d  (power %s)", H_, xw(HU_2)))
                else
                    table.insert(HS, "Stage " .. tostring(H_))
                end
            end
            HZ += 1
        end
        if #HS == 0 then
            table.insert(HS, "Stage 1")
        end
        local HT_4 = xN()
        local HU_3 = xr()
        if #HU_3 == 0 then
            table.insert(HU_3, "Basic Capsule")
        end
        local CombatGroup = Mt.Main:AddLeftGroupbox("Combat", "swords")
        Label11 = CombatGroup:AddLabel(State.FarmStatus, true)
        CombatGroup:AddToggle("AutoFarmStage", {
            Text = "Auto Farm Stage",
            Default = false,
            Tooltip = "Fights the enemies of the selected stage and collects the stage medal pad after every clear.",
            Callback = function(mJ)
                xh.SetEnabled(mJ)
            end
        })
        CombatGroup:AddDropdown("FarmStage", {
            Text = "Stage",
            Values = HS,
            Default = HS[1],
            Multi = false,
            AllowNull = false,
            Tooltip = "Which stage the farm fights. Higher stages need far more damage.",
            Callback = function(mN)
                xh.SetStage(mN)
            end
        })
        Label10 = CombatGroup:AddLabel(State.TrainStatus, true)
        CombatGroup:AddToggle("AutoTrain", {
            Text = "Auto Train",
            Default = false,
            Tooltip = "Stands in an AFK shooting booth so damage keeps climbing.",
            Callback = function(mQ)
                w0.SetEnabled(mQ)
            end
        })
        CombatGroup:AddDropdown("TrainBooth", {
            Text = "Training Booth",
            Values = HT_4,
            Default = HT_4[1],
            Multi = false,
            AllowNull = false,
            Tooltip = "Best Unlocked picks the strongest booth you actually own.",
            Callback = function(mU)
                w0.SetBooth(mU)
            end
        })
        local ShopAndBuddiesGroup = Mt.Main:AddRightGroupbox("Shop and Buddies", "shopping-bag")
        Label9 = ShopAndBuddiesGroup:AddLabel(State.GunStatus, true)
        ShopAndBuddiesGroup:AddToggle("AutoBuyGun", {
            Text = "Auto Buy Best Affordable Gun",
            Default = false,
            Tooltip = "Walks the weapon pads, buys the most expensive gun your medals cover, then keeps it equipped.",
            Callback = function(mY)
                w7.SetEnabled(mY)
            end
        })
        ShopAndBuddiesGroup:AddDivider()
        Label8 = ShopAndBuddiesGroup:AddLabel(State.BuddyStatus, true)
        ShopAndBuddiesGroup:AddToggle("AutoBuyBuddy", {
            Text = "Auto Buy Buddy",
            Default = false,
            Tooltip = "Opens the buddy capsule store and buys the selected capsule whenever medals allow.",
            Callback = function(m2)
                wV.SetEnabled(m2)
            end
        })
        ShopAndBuddiesGroup:AddDropdown("BuddyEgg", {
            Text = "Capsule",
            Values = HU_3,
            Default = HU_3[1],
            Multi = false,
            AllowNull = false,
            Tooltip = "Which buddy capsule the auto buyer spends medals on.",
            Callback = function(m6)
                wV.SetEgg(m6)
            end
        })
        Label7 = ShopAndBuddiesGroup:AddLabel(State.AllyStatus, true)
        ShopAndBuddiesGroup:AddToggle("AutoEquipBestBuddy", {
            Text = "Auto Equip Best Buddy",
            Default = false,
            Tooltip = "Asks the server to fill your buddy slots with the strongest buddies you own.",
            Callback = function(m9)
                wQ.SetEnabled(m9)
            end
        })
        local ProgressionGroup = Mt.Main:AddLeftGroupbox("Progression", "trending-up")
        Label6 = ProgressionGroup:AddLabel(State.RebirthStatus, true)
        ProgressionGroup:AddToggle("AutoRebirth", {
            Text = "Auto Rebirth",
            Default = false,
            Tooltip = "Rebirths as soon as your level meets the requirement.",
            Callback = function(nf)
                x6.SetEnabled(nf)
            end
        })
        Label5 = ProgressionGroup:AddLabel(State.RewardStatus, true)
        ProgressionGroup:AddToggle("AutoClaimRewards", {
            Text = "Auto Claim Rewards",
            Default = false,
            Tooltip = "Claims the free playtime reward and the return training vault once they are ready.",
            Callback = function(nk)
                x2.SetEnabled(nk)
            end
        })
        local StatsGroup = Mt.Main:AddRightGroupbox("Stats", "activity")
        Label4 = StatsGroup:AddLabel("Damage: 0", true)
        Label3 = StatsGroup:AddLabel("Medals: 0", true)
        Label2 = StatsGroup:AddLabel("Level: 0", true)
        Label = StatsGroup:AddLabel("Gun: none", true)
        HR = task.spawn(function()
            while true do
                task.wait(0.4)
                if Library.Unloaded then
                    break
                end
                pcall(function()
                    Label11:SetText(State.FarmStatus)
                    Label10:SetText(State.TrainStatus)
                    Label9:SetText(State.GunStatus)
                    Label8:SetText(State.BuddyStatus)
                    Label7:SetText(State.AllyStatus)
                    Label6:SetText(State.RebirthStatus)
                    Label5:SetText(State.RewardStatus)
                    local Hw = xj("Damage") or 0
                    Label4:SetText("Damage: " .. xw(Hw))
                    Label3:SetText("Medals: " .. xw(xX()))
                    local format = string.format
                    local Hx = xj("Level") or 0
                    local Hy = xw(Hx)
                    local Hz = (xj("RebirthRequirement"))
                    local HD = if Hz then 1 else 0
                    local HB = 812 * HD + 2571 * (1 - HD)
                    local HC = 633 * HD + 1396 * (1 - HD)
                    if not ((HB * 1795 + HC * 985 + HB * HC) % 16777213 == 2595041) then
                        Hz = 0
                    end
                    Label2:SetText(format("Level: %s  (rebirth at %s)", Hy, xw(Hz)))
                    local Hw_2 = xj("EquippedGunId") or "none"
                    Label:SetText("Gun: " .. tostring(Hw_2))
                end)
            end
        end)
        xC.Track(function()
            if coroutine.status(HR) ~= "dead" then
                task.cancel(HR)
            end
        end)
    end
    Mv_1()
    local function Mu_1()
        local Iv
        local Im
        local Ip
        local Io
        Im = nil
        Io = nil
        Ip = nil
        Iv = nil
        local Ij, Ik, Label, In, Iq, Ir, Is, Label2, Label3
        Ip = function(nW)
            return (tostring(nW):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        Io = function(nY, nZ)
            return string.format('<font color="%s">%s</font>', nZ, Ip(nY))
        end
        Is = function(n1, n2, n3)
            return string.format("<b>%s</b> %s %s", n1, Io("-", "#5a6070"), Io(n2, n3))
        end
        Iq = "#7fd47f"
        local Iw = "#6ec1ff"
        local Ix = "#8b93a3"
        Ik = "#e8a34d"
        local missing = xG.missing
        local Iz = #missing == 0 and "ready"
        local IA = Iz or "limited: " .. table.concat(missing, ", ")
        In = "Unknown"
        pcall(function()
            local H5_1
            local H4_1
            if w9(identifyexecutor) then
                H5_1, H4_1 = identifyexecutor()
                local H6 = H5_1 ~= ""
                local H7 = type(H5_1) == "string" and H6
                if H7 then
                    local H6_1 = type(H4_1) == "string" and H4_1 ~= "" and H5_1 .. " " .. H4_1
                    In = H6_1 or H5_1
                end
            end
        end)
        Iv = os.clock()
        Ir = function()
            local Ic = math.floor(os.clock() - Iv)
            if Ic < 60 then
                return Ic .. "s"
            elseif Ic < 3600 then
                return string.format("%dm %ds", Ic // 60, Ic % 60)
            else
                return string.format("%dh %dm", Ic // 3600, Ic % 3600 // 60)
            end
        end
        local UserGroup = Mt.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(Is("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, Iq), true)
        UserGroup:AddLabel(Is("UserId", tostring(LocalPlayer.UserId), Iw), true)
        UserGroup:AddLabel(Is("Executor", In .. "  " .. IA, Iq), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(Is("Session", Ir(), Ik), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                Mk(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                Mk("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = Mt.Info:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(Is("Game", Mm, Iw), true)
        Label2 = SessionGroup:AddLabel(Is("Players", "0/0", Iq), true)
        Ij = tostring(game.JobId)
        local Iw_1 = #Ij > 18 and string.sub(Ij, 1, 18) .. "..."
        local Iz_2 = Iw_1 or Ij
        SessionGroup:AddLabel(Is("Job", Iz_2, Ix), true)
        Label = SessionGroup:AddLabel(Is("Ping", "0 ms", Ik), true)
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
                Mk(Ij, "Copied Job ID")
            end
        })
        Im = task.spawn(function()
            local If_1
            local Ie_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(Is("Session", Ir(), Ik))
                Label2:SetText(Is("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), Iq))
                Ie_1, If_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local Ie_2 = Ie_1 and If_1 .. " ms" or "n/a"
                Label:SetText(Is("Ping", Ie_2, Ik))
            end
        end)
        xC.Track(function()
            if coroutine.status(Im) ~= "dead" then
                task.cancel(Im)
            end
        end)
        local SocialsGroup = Mt.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                Mk(Mn, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                Mk(Mr, "Copied website link")
            end
        })
    end
    Mu_1()
    local function Mu_2()
        local pi
        local pl
        local pj
        local pk
        local MovementGroup = Mt.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = Mt.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        pi = {}
        pj = {}
        pk = {}
        pl = {}
        local ph = {}
        local function pm()
            for k, v in pi do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(pi)
        end
        local function pq()
            for k, v in pj do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(pj)
        end
        local function pu()
            for k, v in pk do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(pk)
        end
        local function py(pz)
            if not pz:IsA("ProximityPrompt") then
                return
            end
            if pl[pz] == nil then
                pl[pz] = {
                    HoldDuration = pz.HoldDuration,
                    MaxActivationDistance = pz.MaxActivationDistance,
                    RequiresLineOfSight = pz.RequiresLineOfSight
                }
            end
            pz.HoldDuration = 0
            pz.MaxActivationDistance = 50
            pz.RequiresLineOfSight = false
        end
        local function pB()
            for k, v in pl do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(pl)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                pu()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                pq()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                pm()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for i, descendant in ipairs(wX:GetDescendants()) do
                    if descendant:IsA("ProximityPrompt") then
                        pcall(py, descendant)
                    end
                end
            else
                pB()
            end
        end)
        table.insert(ph, wX.DescendantAdded:Connect(function(pU)
            local Je = Toggles.InstantProximityPrompt.Value and pU:IsA("ProximityPrompt")
            if Je then
                py(pU)
            end
        end))
        table.insert(ph, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    if descendant:IsA("BasePart") then
                        if pi[descendant] == nil then
                            pi[descendant] = descendant.CanCollide
                        end
                        descendant.CanCollide = false
                    end
                end
            end
        end))
        table.insert(ph, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local Jz = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and Jz then
                Jz:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(ph, RunService.RenderStepped:Connect(function(qg)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local JC = Character and Character:FindFirstChildOfClass("Humanoid")
            local JD = Character
            if JD then
                JD = Character:FindFirstChild("HumanoidRootPart")
            end
            local JB_1 = JD
            local CurrentCamera = wX.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and JC then
                if pj[JC] == nil then
                    pj[JC] = JC.WalkSpeed
                end
                JC.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and JB_1 and JC and CurrentCamera then
                if pk[JC] == nil then
                    pk[JC] = JC.PlatformStand
                end
                JC.PlatformStand = true
                local JD_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        JD_4 += CurrentCamera.CFrame.LookVector
                    end
                    local JJ = if UserInputService:IsKeyDown(Enum.KeyCode.S) then 1 else 0
                    if JJ == 1 then
                        JD_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        JD_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        JD_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        JD_4 += Vector3.new(0, 1, 0)
                    end
                    local JJ_1 = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
                    if JJ_1 == 1 then
                        JD_4 -= Vector3.new(0, 1, 0)
                    end
                end
                JB_1.AssemblyLinearVelocity = Vector3.zero
                if JD_4.Magnitude > 0 then
                    JB_1.CFrame = JB_1.CFrame + JD_4.Unit * Options.FlySpeed.Value * qg
                end
            end
        end))
        xC.Track(function()
            for k, v in ph do
                v:Disconnect()
            end
            pm()
            pq()
            pu()
            pB()
        end)
    end
    Mu_2()
    local function Mu_3()
        local KW, KX, KY, KZ, K_, K0, K1, K2, K3, K4, K5, K6, K7, Label
        KW = {}
        K3 = {}
        K0 = nil
        KY = 0
        K5 = false
        K1 = 0
        K6 = os.clock()
        local MenuGroup = Mt.Settings:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        KZ = function()
            local CurrentCamera
            CurrentCamera = wX.CurrentCamera
            local JS = not CurrentCamera or not w9(VirtualUser.CaptureController) or not w9(VirtualUser.ClickButton2)
            if JS then
                return false
            end
            local JS_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not JS_1 then
                return false
            end
            K1 += 1
            K6 = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. K1)
            end)
            return true
        end
        K7 = function(q_)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not q_)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not q_
                end
            end)
            if not q_ then
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
        K4 = function(rf)
            if rf.ClassName == "ParticleEmitter" or rf.ClassName == "Trail" or rf.ClassName == "Smoke" or rf.ClassName == "Fire" or rf.ClassName == "Sparkles" or rf.ClassName == "Explosion" or rf.ClassName == "Beam" then
                if KW[rf] == nil then
                    KW[rf] = rf.Enabled
                end
                pcall(function()
                    rf.Enabled = false
                end)
            end
        end
        K2 = function()
            for k, v in KW do
                local J9 = k
                local Kb = v
                if J9.Parent then
                    pcall(function()
                        J9.Enabled = Kb
                    end)
                end
            end
            table.clear(KW)
            if K0 then
                pcall(function()
                    settings().Rendering.QualityLevel = K0.Quality
                end)
                Lighting.GlobalShadows = K0.Shadows
                Lighting.FogEnd = K0.Fog
                K0 = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(ru)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not ru)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(rz)
                if rz then
                    if not K0 then
                        K0 = {
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
                    for i, descendant in ipairs(wX:GetDescendants()) do
                        pcall(K4, descendant)
                    end
                else
                    K2()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        K7(true)
        local ScriptGroup = Mt.Settings:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            K7(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            K7(true)
        end
        table.insert(K3, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                KZ()
            end
        end))
        table.insert(K3, wX.DescendantAdded:Connect(function(rS)
            if Toggles.FpsBoost.Value then
                K4(rS)
            end
        end))
        K_ = function(rW)
            if K5 or Library.Unloaded or not Toggles.AutoReconnect.Value then
                return
            end
            K5 = true
            local Ku = KY
            local Kv_1 = pcall(function()
                if rW then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not Kv_1 then
                K5 = false
                if not rW and Ku == KY then
                    task.delay(1.5, function()
                        if Ku == KY then
                            K_(true)
                        end
                    end)
                end
            end
        end
        table.insert(K3, TeleportService.TeleportInitFailed:Connect(function(sd)
            local Kz
            if sd == LocalPlayer and K5 then
                K5 = false
                Kz = KY
                task.delay(3, function()
                    if Kz == KY then
                        K_(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local KH = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not KH then
                return
            end
            table.insert(K3, KH.ChildAdded:Connect(function(ss)
                if ss.Name == "ErrorPrompt" then
                    K_(false)
                end
            end))
        end)
        KX = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    K7(true)
                end
                local KN = Toggles.AntiAfk.Value and os.clock() - K6 >= 60
                if KN then
                    KZ()
                end
                task.wait(1)
            end
        end)
        xC.Track(function()
            KY += 1
            for k, v in K3 do
                v:Disconnect()
            end
            pcall(task.cancel, KX)
            K7(false)
            K2()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    Mu_3()
    local function Mu_4()
        local Mc, Md, Me, Mf
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("OuroborosHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(Mt.Settings)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/DmgFps")
        local Mg = SaveManager:BuildConfigSection(Mt.Settings)
        Mc = function(sT, sU)
            local Lc = sT == "Toggle" and Toggles
            local Lk = if Lc then 1 else 0
            local Li = 1244 * Lk + 2555 * (1 - Lk)
            local Lj = 2466 * Lk + 930 * (1 - Lk)
            if not ((Li * 153 + Lj * 2321 + Li * Lj) % 16777213 == 8981622) then
                Lc = Options
            end
            local Lc_1 = Lc[sU]
            local Lb_2 = type(Lc_1) == "table" and Lc_1.Type == sT
            local Lb_3 = Lb_2 and Lc_1
            local Lk_1 = if Lb_3 then 1 else 0
            local Li_1 = 2673 * Lk_1 + 3948 * (1 - Lk_1)
            local Lj_1 = 2626 * Lk_1 + 296 * (1 - Lk_1)
            if not ((Li_1 * 324 + Lj_1 * 1417 + Li_1 * Lj_1) % 16777213 == 11606392) then
                Lb_3 = nil
            end
            return Lb_3
        end
        Me = function(s2, s3)
            local Type = s3.Type
            if Type == "Toggle" then
                return { idx = s2, type = "Toggle", value = s3.Value == true }
            elseif Type == "Slider" then
                return { idx = s2, type = "Slider", value = tostring(s3.Value) }
            elseif Type == "Dropdown" then
                return { idx = s2, type = "Dropdown", multi = s3.Multi == true, value = s3.Value }
            elseif Type == "Input" then
                local Lm = s3.Value or ""
                return { idx = s2, type = "Input", text = tostring(Lm) }
            elseif Type == "ColorPicker" then
                return { idx = s2, type = "ColorPicker", value = s3.Value:ToHex(), transparency = s3.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = s2,
                    type = "KeyPicker",
                    mode = s3.Mode,
                    key = s3.Value,
                    modifiers = s3.Modifiers,
                    toggled = s3.Toggled
                }
            else
                return nil
            end
        end
        Md = function()
            local Ls = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local Lt = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if Lt then
                        local Lt_1 = Me(k, v)
                        if Lt_1 then
                            Ls[#Ls + 1] = Lt_1
                        end
                    end
                end
            end
            table.sort(Ls, function(td, te)
                if td.type ~= te.type then
                    return td.type < te.type
                end
                return td.idx < te.idx
            end)
            return { objects = Ls }
        end
        Mf = function(tg)
            local LM
            LM = nil
            local LN = type(tg) ~= "table" or type(tg.idx) ~= "string" or type(tg.type) ~= "string" or SaveManager.Ignore[tg.idx]
            if LN then
                return false
            end
            LM = Mc(tg.type, tg.idx)
            if not LM then
                return false
            end
            local LN_1 = pcall(function()
                if tg.type == "Input" then
                    if type(tg.text) ~= "string" then
                        return
                    end
                    LM:SetValue(tg.text)
                elseif tg.type == "ColorPicker" then
                    LM:SetValueRGB(Color3.fromHex(tg.value), tg.transparency)
                elseif tg.type == "KeyPicker" then
                    LM:SetValue({ tg.key, tg.mode, tg.modifiers })
                    if tg.mode == "Toggle" and tg.toggled ~= nil then
                        LM.Toggled = tg.toggled
                        LM:Update()
                    end
                else
                    LM:SetValue(tg.value)
                end
            end)
            return LN_1
        end
        Mg:AddDivider()
        Mg:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        Mg:AddButton("Export Config to Clipboard", function()
            local LT_1
            local LS_1
            LS_1, LT_1 = pcall(HttpService.JSONEncode, HttpService, Md())
            if LS_1 then
                local LS_2 = w9(setclipboard) and setclipboard
                local LU = LS_2
                if not LU then
                    local LS_3 = w9(toclipboard) and toclipboard
                    LU = LS_3 or nil
                end
                local LS_4 = LU
                local LU_1 = type(LS_4) == "function" and pcall(LS_4, LT_1)
                if LU_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        Mg:AddButton("Import Config from Clipboard Text", function()
            local L1_1
            local L_ = Options.SaveManager_ImportSource.Value or ""
            local L__1
            local L0 = tostring(L_):match("^%s*(.-)%s*$")
            if L0 == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #L0 > 262144 then
                Library:Notify("That config is too large")
                return
            end
            L__1, L1_1 = pcall(HttpService.JSONDecode, HttpService, L0)
            local L0_1 = not L__1 or type(L1_1) ~= "table" or type(L1_1.objects) ~= "table"
            if L0_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #L1_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local L__2 = 0
            for i, v in ipairs(L1_1.objects) do
                if Mf(v) then
                    L__2 += 1
                end
            end
            if L__2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local L1_2 = L__2 == 1 and ""
            local L5 = if L1_2 then 1 else 0
            local L3 = 1830 * L5 + 751 * (1 - L5)
            local L4 = 2060 * L5 + 2670 * (1 - L5)
            if not ((L3 * 955 + L4 * 2446 + L3 * L4) % 16777213 == 10556210) then
                L1_2 = "s"
            end
            Library:Notify(("Imported %d setting%s"):format(L__2, L1_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        if Options.FarmStage then
            xh.SetStage(Options.FarmStage.Value)
        end
        if Options.TrainBooth then
            w0.SetBooth(Options.TrainBooth.Value)
        end
        if Options.BuddyEgg then
            wV.SetEgg(Options.BuddyEgg.Value)
        end
        if Toggles.AutoFarmStage then
            xh.SetEnabled(Toggles.AutoFarmStage.Value)
        end
        if Toggles.AutoTrain then
            w0.SetEnabled(Toggles.AutoTrain.Value)
        end
        if Toggles.AutoBuyGun then
            w7.SetEnabled(Toggles.AutoBuyGun.Value)
        end
        if Toggles.AutoBuyBuddy then
            wV.SetEnabled(Toggles.AutoBuyBuddy.Value)
        end
        if Toggles.AutoEquipBestBuddy then
            wQ.SetEnabled(Toggles.AutoEquipBestBuddy.Value)
        end
        if Toggles.AutoRebirth then
            x6.SetEnabled(Toggles.AutoRebirth.Value)
        end
        if Toggles.AutoClaimRewards then
            x2.SetEnabled(Toggles.AutoClaimRewards.Value)
        end
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    Mu_4()
end
yf()
