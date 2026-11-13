local up
local tp
local t6
local tO
local uv
local tv
local tB
local ui
local t_
local tH
local uo
local to
local t5
local tN
local uu
local tu
local tT
local uh
local tZ
local tG
local un
local tM
local ut
local tt
local ua
local tS
local uz
local tz
local ug
local tY
local tF
local um
local t3
local us
local ts
local t9
local tR
local uy
local ty
local uf
local tX
local connection2
local tE
local ul
local t2
local tK
local LocalPlayer
local tQ
local tx
local ue
local tW
local uD
local tD
local uk
local t1
local tJ
local uq
local tq
local tP
local uw
local ud
local tV
local uC
local tC
local CoreGui
local connection
local function fn14()
    gethui = tP
end
local function fn18(dP, dQ, dR, dS)
    uz(dP, dQ, dR)
    local alignPos = t3.alignPos
    local alignOri = t3.alignOri
    if alignPos then
        alignPos.Position = dS.Position
    end
    if alignOri then
        alignOri.CFrame = dS
    end
    dP.AssemblyLinearVelocity = Vector3.zero
    dP.AssemblyAngularVelocity = Vector3.zero
    dP.CFrame = dS
end
local function fn29()
    local vF = uD(ui(tX, "Common", "network"))
    if type(vF) == "table" then
        tt.Events = vF.ClientEvents
        tt.Functions = vF.ClientFunctions
    end
    if type(tt.Events) ~= "table" then
        tt.Events = tK({ "VoteSkipWave", "VoteRunEnd", "VoteWavePause" })
    end
    if type(tt.Functions) ~= "table" then
        tt.Functions = tK({ "BuyUpgrade", "PlaceBuild" })
    end
    tt.atoms = uD(ui(tX, "Common", "atoms"))
    if type(tt.atoms) ~= "table" then
        tt.atoms = tK({ "runSummaryAtom", "wavePauseAtom", "waveStateAtom", "berriesAtom" })
    end
    local vF_1 = tO("powers", "melee-state")
    local vG = type(vF_1) == "table" and ul(vF_1.meleeHeldAtom)
    if vG then
        tt.meleeHeldAtom = vF_1.meleeHeldAtom
    else
        local vF_2 = tK({ "meleeHeldAtom" })
        if type(vF_2) == "table" then
            tt.meleeHeldAtom = vF_2.meleeHeldAtom
        end
    end
    local vF_3 = tO("powers", "cast-state")
    local vG_1 = type(vF_3) == "table" and ul(vF_3.castRequestAtom)
    if vG_1 then
        tt.castRequestAtom = vF_3.castRequestAtom
    else
        local vF_4 = tK({ "castRequestAtom" })
        if type(vF_4) == "table" then
            tt.castRequestAtom = vF_4.castRequestAtom
        end
    end
    local vF_5 = tO("powers", "melee", "registry")
    local vG_2 = type(vF_5) == "table" and ul(vF_5.activeMeleeStyle)
    if vG_2 then
        tt.activeMeleeStyle = vF_5.activeMeleeStyle
    end
    local vF_6 = uD(ui(tX, "Common", "classes", "class-catalog"))
    if type(vF_6) == "table" then
        tt.resolveClass = vF_6.resolveClass
    end
    local vF_7 = uD(ui(tX, "Common", "classes", "build-grid"))
    if type(vF_7) == "table" then
        tt.facingFromLook = vF_7.facingFromLook
    end
    local vF_8 = tO("ui", "lobby", "match-pad-state")
    local vG_3 = type(vF_8) == "table" and ul(vF_8.matchPadsAtom)
    if vG_3 then
        tt.matchPadsAtom = vF_8.matchPadsAtom
    end
    local vF_9 = uD(ui(tX, "Common", "maps", "map-config"))
    if type(vF_9) == "table" then
        tt.mapConfig = vF_9
    end
end
local function fn43()
    local yV_1
    local yU_1
    local resolveClass = tt.resolveClass
    if not ul(resolveClass) then
        return {}
    end
    local yT = ud("playerDataAtom")
    if type(yT) ~= "table" then
        return {}
    end
    yU_1, yV_1 = pcall(resolveClass, yT.equippedClass, yT.ownedClasses)
    local yS_1 = not yU_1 or type(yV_1) ~= "table"
    local y0 = if yS_1 then 1 else 0
    local yZ = 2215 * y0 + 1719 * (1 - y0)
    local y_ = 1045 * y0 + 4022 * (1 - y0)
    if not ((yZ * 2187 + y_ * 1364 + yZ * y_) % 16777213 == 8584260) then
        yS_1 = type(yV_1.builds) ~= "table"
    end
    if yS_1 then
        return {}
    end
    local yS_2 = {}
    for k, v in yV_1.builds do
        local yT_1 = type(v) == "table" and type(v.id) == "string"
        if yT_1 then
            local yT_2 = #yS_2 + 1
            local id = v.id
            local yV_2 = v.name or v.id
            local yW = tostring(yV_2)
            local yX = tonumber(v.cost) or 0
            yS_2[yT_2] = { id = id, name = yW, cost = yX }
        end
    end
    return yS_2
end
local function fn56(cm)
    local castRequestAtom = tt.castRequestAtom
    if not ul(castRequestAtom) then
        return false
    end
    return (pcall(castRequestAtom, { index = cm - 1, stamp = os.clock() }))
end
local function fn66()
    local Character = LocalPlayer.Character
    if not Character then
        return
    end
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    if HumanoidRootPart and Humanoid and Humanoid.Health > 0 then
        return HumanoidRootPart, Humanoid, Character
    end
end
local function fn88(at, ...)
    local vl = at
    for k, v in { ... } do
        if typeof(vl) ~= "Instance" then
            return nil
        end
        vl = vl:FindFirstChild(v)
    end
    return vl
end
local function fn147(...)
    local vD = uD(ui(ut(), ...))
    if vD ~= nil then
        return vD
    end
    return uD(ui(tX:FindFirstChild("TS"), ...))
end
local function fn165(ag)
    return type(ag) == "function"
end
local function fn209()
    local zi_1
    local facingFromLook = tt.facingFromLook
    local CurrentCamera = tM.CurrentCamera
    local zh = ul(facingFromLook) and CurrentCamera
    local zh_1
    if zh then
        zh_1, zi_1 = pcall(facingFromLook, CurrentCamera.CFrame.LookVector)
        local zf_1 = zh_1 and type(zi_1) == "number"
        if zf_1 then
            return zi_1
        end
        return 0
    end
    return 0
end
local function fn221()
    local yw = not tC.AutoBuyUpgrades or tR()
    if yw then
        return
    end
    local yw_1 = os.clock()
    if yw_1 - tC.LastUpgradeAt < 0.4 then
        return
    end
    local yx = tx(ug, tC.SelectedUpgrades)
    if #yx == 0 then
        return
    end
    local yy = math.floor(yw_1 / 0.4) % #yx + 1
    local yz = ua[yx[yy]]
    if type(yz) == "string" then
        tS("BuyUpgrade", yz)
        tC.LastUpgradeAt = yw_1
    end
end
local function fn246()
    if tC.RunOver then
        return true
    end
    return ud("runSummaryAtom") ~= nil
end
local function fn288()
    tY()
    t_(false)
    if tC.AutoSkipSynced then
        t5(false)
    end
end
local function fn291(bT)
    local v5_1
    local atoms = tt.atoms
    local v3_1
    if type(atoms) ~= "table" then
        return nil
    end
    local v4 = atoms[bT]
    if ul(v4) then
        v3_1, v5_1 = pcall(v4)
        if v3_1 then
            return v5_1
        end
        return nil
    end
    return nil
end
local function fn310(dd, de, df)
    if t3.root ~= dd or not t3.alignPos or not t3.alignPos.Parent then
        tY()
        local w5_1 = dd:FindFirstChild("RootAttachment")
        local w6 = not w5_1 or not w5_1:IsA("Attachment")
        if w6 then
            w5_1 = Instance.new("Attachment")
            w5_1.Name = "OuroborosFarmAttachment"
            w5_1.Parent = dd
        end
        local alignPosition = Instance.new("AlignPosition")
        alignPosition.Name = "OuroborosFarmAlignPos"
        alignPosition.Mode = Enum.PositionAlignmentMode.OneAttachment
        alignPosition.Attachment0 = w5_1
        alignPosition.ApplyAtCenterOfMass = true
        alignPosition.RigidityEnabled = true
        alignPosition.ForceLimitMode = Enum.ForceLimitMode.Magnitude
        alignPosition.MaxForce = math.huge
        alignPosition.MaxVelocity = math.huge
        alignPosition.Responsiveness = 200
        alignPosition.Parent = dd
        local alignOrientation = Instance.new("AlignOrientation")
        alignOrientation.Name = "OuroborosFarmAlignOri"
        alignOrientation.Mode = Enum.OrientationAlignmentMode.OneAttachment
        alignOrientation.Attachment0 = w5_1
        alignOrientation.RigidityEnabled = true
        alignOrientation.MaxTorque = math.huge
        alignOrientation.MaxAngularVelocity = math.huge
        alignOrientation.Responsiveness = 200
        alignOrientation.Parent = dd
        t3.alignPos = alignPosition
        t3.alignOri = alignOrientation
        t3.root = dd
        t3.character = df
        t3.humanoid = de
        t3.savedAutoRotate = de.AutoRotate
        t3.savedPlatformStand = de.PlatformStand
        t3.active = true
    end
    de.AutoRotate = false
    de.PlatformStand = true
    for i, descendant in df:GetDescendants() do
        if descendant:IsA("BasePart") then
            if t3.collisions[descendant] == nil then
                t3.collisions[descendant] = descendant.CanCollide
            end
            descendant.CanCollide = false
        end
    end
end
local function fn311()
    if not tC.AutoSkipWave then
        if tC.AutoSkipSynced then
            t5(false)
        end
        return
    end
    if not tC.AutoSkipSynced then
        t5(true)
    end
    local x3 = if not tV() then 1 else 0
    if x3 == 1 then
        return
    end
    if ud("skipVotedAtom") == true then
        return
    end
    local x_ = os.clock()
    if x_ - tC.LastSkipFire < 1 then
        return
    end
    uC("skipVotedAtom", true)
    us("VoteSkipWave")
    tC.LastSkipFire = x_
end
local function fn313(hX)
    if hX == "Take a Break" or hX == "Keep Going" then
        tC.BreakChoice = hX
    end
end
local function fn316()
    connection:Disconnect()
    connection2:Disconnect()
end
local function fn356()
    local PlayerScripts = LocalPlayer:FindFirstChild("PlayerScripts")
    local vB = PlayerScripts and PlayerScripts:FindFirstChild("TS")
    local vA_1 = vB or tX:FindFirstChild("TS")
    return vA_1
end
local function fn363(cF)
    if cF:GetAttribute("BossFruit") ~= nil then
        return true
    end
    local ww = string.lower(cF.Name)
    local wx = string.find(ww, "colossus", 1, true) ~= nil or string.find(ww, "warden", 1, true) ~= nil or string.find(ww, "king", 1, true) ~= nil or string.find(ww, "boss", 1, true) ~= nil
    return wx
end
local function fn374(dr, ds)
    local xf = tC[dr]
    if type(xf) == "number" then
        return xf
    end
    return ds
end
local function fn391(cx, cy)
    local wq = typeof(cx) ~= "Instance" or not cx:IsA("Model")
    if wq then
        return false
    end
    if cy and cx == cy then
        return false
    elseif cx:GetAttribute("MotionState") == "death" then
        return false
    elseif cx:GetAttribute("Ragdolled") == true then
        return false
    else
        local Humanoid = cx:FindFirstChildOfClass("Humanoid")
        if Humanoid and Humanoid.Health <= 0 then
            return false
        end
        local HumanoidRootPart = cx:FindFirstChild("HumanoidRootPart")
        local wr_2 = HumanoidRootPart ~= nil and HumanoidRootPart:IsA("BasePart")
        return wr_2
    end
end
local function fn399(b0, b1)
    local atoms = tt.atoms
    if type(atoms) ~= "table" then
        return
    end
    local v8 = atoms[b0]
    if ul(v8) then
        pcall(v8, b1)
    end
end
local function fn439(ay)
    local vu_1
    local vt_1
    if not ul(filtergc) then
        return nil
    end
    vt_1, vu_1 = pcall(filtergc, "table", { Keys = ay }, true)
    local vv = vt_1 and type(vu_1) == "table"
    if vv then
        return vu_1
    end
    return nil
end
local function fn450(gZ)
    local Ai = type(gZ.players) == "table" and gZ.players[1] == LocalPlayer.UserId
    return Ai
end
local function onPostSimulation(iz)
    ty(iz, false)
end
local function fn484()
    local yK = not tC.AutoSkills or tR()
    if yK then
        return
    end
    local yK_1 = uw()
    local yL = not yK_1 or not tu(yK_1.Position)
    if yL then
        return
    end
    local yK_2 = os.clock()
    if yK_2 - tC.LastSkillCast < math.max(0.1, uy("SkillDelay", 0.35)) then
        return
    end
    local yP = 0
    while yP <= 3 do
        local yL_1 = (tC.SkillCursor + yP - 1) % 4 + 1
        if tT(yL_1) then
            tG(yL_1)
            tC.LastSkillCast = yK_2
            tC.SkillCursor = yL_1 % 4 + 1
            return
        end
        yP += 1
    end
end
local function fn487()
    if t3.alignPos then
        t3.alignPos:Destroy()
        t3.alignPos = nil
    end
    if t3.alignOri then
        t3.alignOri:Destroy()
        t3.alignOri = nil
    end
    for k, v in t3.collisions do
        if k.Parent then
            k.CanCollide = v
        end
    end
    table.clear(t3.collisions)
    local humanoid = t3.humanoid
    if humanoid and humanoid.Parent then
        if t3.savedAutoRotate ~= nil then
            humanoid.AutoRotate = t3.savedAutoRotate
        end
        if t3.savedPlatformStand ~= nil then
            humanoid.PlatformStand = t3.savedPlatformStand
        end
    end
    t3.active = false
    t3.root = nil
    t3.character = nil
    t3.humanoid = nil
    t3.savedAutoRotate = nil
    t3.savedPlatformStand = nil
end
local function fn498()
    local xS = ud("waveStateAtom")
    if type(xS) ~= "table" then
        local xT_1 = uw()
        local xU_1 = xT_1 ~= nil and tu(xT_1.Position) ~= nil
        return xU_1
    elseif xS.start ~= nil then
        return false
    else
        local xT_2 = type(xS.wave) == "number" and xS.wave <= 0
        if xT_2 then
            return false
        end
        local phase = xS.phase
        if phase ~= "spawning" and phase ~= "fighting" then
            return false
        elseif xS.skipBlocked ~= nil then
            return false
        else
            local xS_1 = ud("skipUnlockCountdownAtom")
            local xT_4 = type(xS_1) == "number" and xS_1 > 0
            if xT_4 then
                return false
            end
            return true
        end
    end
end
local function fn510(ap)
    local vh_1
    local vg_1
    if typeof(ap) ~= "Instance" then
        return nil
    end
    vg_1, vh_1 = pcall(require, ap)
    if vg_1 and vh_1 ~= nil then
        return vh_1
    end
    return nil
end
local function fn521(id)
    tC.SelectedBuilds = uf(id)
end
local function fn523()
    local we_1
    local wd_1
    local activeMeleeStyle = tt.activeMeleeStyle
    if ul(activeMeleeStyle) then
        wd_1, we_1 = pcall(activeMeleeStyle)
        local wc_1 = wd_1 and type(we_1) == "table" and type(we_1.rules) == "table"
        if wc_1 then
            local wc_2 = tonumber(we_1.rules.range)
            if wc_2 and wc_2 > 0 then
                return wc_2
            end
            return tZ
        end
        return tZ
    end
    return tZ
end
local function fn581()
    if not tC.AutoReplay then
        return
    end
    if not tR() then
        tC.LastReplayFire = 0
        return
    end
    local ya = ud("runVoteAtom")
    local yb = type(ya) == "table" and ya.mine == "restart"
    if yb then
        return
    end
    local ya_1 = os.clock()
    if ya_1 - tC.LastReplayFire < 1.5 then
        return
    end
    us("VoteRunEnd", "restart")
    tC.LastReplayFire = ya_1
end
local function fn602(ex)
    uC("autoSkipAtom", ex)
    us("SetAutoSkipWave", ex)
    tC.AutoSkipSynced = ex
end
local function fn610(h3)
    local A8 = {}
    if type(h3) == "table" then
        for k, v in h3 do
            if v == true then
                A8[tostring(k)] = true
            elseif type(v) == "string" then
                A8[v] = true
            end
        end
    elseif type(h3) == "string" then
        A8[h3] = true
    end
    return A8
end
local function fn624()
    local AG = os.clock()
    if AG - tC.LastLobbyAt < 1 then
        return
    end
    tC.LastLobbyAt = AG
    local AG_1 = uh()
    if AG_1 then
        uk(AG_1)
        local AH = tC.AutoPlay and tp(AG_1) and AG_1.countdown == nil and not AG_1.launching
        if AH then
            us("StartMatchPad")
        end
        return
    end
    if tC.AutoPlay then
        uq()
    end
end
local function fn648()
    local zU = {}
    for k, v in tJ() do
        zU[#zU + 1] = v.name
    end
    return zU
end
local function fn682(hZ, h_)
    local A6 = tonumber(h_)
    if A6 then
        tC[hZ] = A6
    end
end
local function fn684()
    us("CancelMatchPad")
end
local function fn694(dx, dy)
    local xh = Vector3.new(dy.X - dx.X, 0, dy.Z - dx.Z)
    if xh.Magnitude < 0.05 then
        xh = Vector3.new(0, 0, -1)
    end
    return CFrame.lookAt(dx, dx + xh.Unit)
end
local function fn706()
    local y7 = {}
    for k, v in ue() do
        y7[#y7 + 1] = v.name
    end
    return y7
end
local function fn722(ia)
    tC.SelectedUpgrades = uf(ia)
end
local function fn773()
    local zk = not tC.AutoBuild or tR()
    if zk then
        return
    end
    local zk_1 = os.clock()
    if zk_1 - tC.LastBuildAt < math.max(0.5, uy("BuildDelay", 1.5)) then
        return
    end
    local zl = ue()
    if #zl == 0 then
        return
    end
    local SelectedBuilds = tC.SelectedBuilds
    local zn = false
    for k, v in zl do
        if SelectedBuilds[v.name] then
            zn = true
            break
        end
    end
    local zo = tonumber(ud("berriesAtom")) or 0
    local zo_1 = #zl - 1
    local zC = 0
    while zC <= zo_1 do
        local zo_2 = (tC.BuildCursor + zC - 1) % #zl + 1
        local zq = zl[zo_2]
        if (not zn or SelectedBuilds[zq.name]) and zo >= zq.cost then
            tS("PlaceBuild", zq.id, tF())
            tC.BuildCursor = zo_2 % #zl + 1
            tC.LastBuildAt = zk_1
            return
        end
        zC += 1
    end
    tC.LastBuildAt = zk_1
end
local function fn785(cJ)
    local HumanoidRootPart = cJ:FindFirstChild("HumanoidRootPart")
    local wA = HumanoidRootPart and HumanoidRootPart:IsA("BasePart")
    if wA then
        return HumanoidRootPart
    end
end
local function fn790(gL)
    for k, v in tJ() do
        if v.name == gL or v.id == gL then
            return v.id
        end
    end
    return nil
end
local function fn794()
    us("LeaveMatchPad")
end
local function fn807()
    local zH_1
    local zG_1
    local matchPadsAtom = tt.matchPadsAtom
    if not ul(matchPadsAtom) then
        return nil
    end
    zG_1, zH_1 = pcall(matchPadsAtom)
    local zF_1 = zG_1 and type(zH_1) == "table"
    if zF_1 then
        return zH_1
    end
    return nil
end
local function fn813(g2)
    if not tp(g2) then
        return
    end
    local Ak = math.clamp(math.floor(uy("PartySize", 4)), 1, 4)
    local Al = tC.FriendsOnly == true
    local Am = g2.maxPlayers ~= Ak
    local Aq = if Am then 1 else 0
    local Ao = 3280 * Aq + 196 * (1 - Aq)
    local Ap = 472 * Aq + 2332 * (1 - Aq)
    if not ((Ao * 1579 + Ap * 579 + Ao * Ap) % 16777213 == 7000568) then
        Am = g2.friendsOnly ~= Al
    end
    if Am then
        us("SetMatchPadSetup", Ak, g2.friendly, Al)
    end
    local Ak_1 = tB(tC.MapName)
    if Ak_1 and g2.mapId ~= Ak_1 then
        us("SetMatchPadMap", Ak_1)
    end
end
local function fn863()
    return not tq.Unloaded
end
local function fn886()
    us("StartMatchPad")
end
local function fn887(dB, dC, dD)
    local xn_1
    local Position = dB.Position
    local LookVector = dB.CFrame.LookVector
    local xl = Vector3.new(LookVector.X, 0, LookVector.Z)
    local xl_1
    if xl.Magnitude < 0.05 then
        xl_1 = Vector3.new(0, 0, -1)
    else
        xl_1 = xl.Unit
    end
    local xk_1 = math.clamp(uy("FarmDistance", 7), 1, math.max(1, to() - 1))
    local FarmPosition = tC.FarmPosition
    if FarmPosition == "Behind" then
        xn_1 = Position - xl_1 * xk_1 + Vector3.new(0, uy("BehindHeight", 3), 0)
    elseif FarmPosition == "Below" then
        xn_1 = Position - xl_1 * xk_1 - Vector3.new(0, uy("BelowDepth", 10), 0)
    elseif FarmPosition == "Orbit" then
        if dD then
            local OrbitAngle = tC.OrbitAngle
            local xo = uy("OrbitSpeed", 2)
            local xp = dC or 0.016
            tC.OrbitAngle = OrbitAngle + xo * xp
        end
        xn_1 = Position + Vector3.new(math.cos(tC.OrbitAngle) * xk_1, uy("OrbitHeight", 6), math.sin(tC.OrbitAngle) * xk_1)
    else
        xn_1 = Position - xl_1 * xk_1 + Vector3.new(0, uy("AboveHeight", 14), 0)
    end
    return t6(xn_1, Position)
end
local function fn890(h7)
    tC.SelectedSkills = uf(h7)
end
local function fn891()
    local Bm = if coroutine.status(tz) ~= "dead" then 1 else 0
    if Bm == 1 then
        task.cancel(tz)
    end
end
local function fn893(fm)
    local SelectedSkills = tC.SelectedSkills
    local yC = false
    for k, v in un do
        if SelectedSkills[v] then
            yC = true
            break
        end
    end
    if not yC then
        return true
    end
    return SelectedSkills[un[fm]] == true
end
local function fn895(cN)
    local wF
    local wG = false
    local wH = math.huge
    local PrioritizeBoss = tC.PrioritizeBoss
    local Character = LocalPlayer.Character
    for k, v in tH:GetTagged(uu) do
        if tQ(v, Character) then
            local wK = tW(v)
            if wK then
                local Magnitude = (wK.Position - cN).Magnitude
                local wM = um(v)
                if PrioritizeBoss and wM and not wG then
                    wF = wK
                    wH = Magnitude
                    wG = true
                else
                    if (not PrioritizeBoss or wM == wG) and Magnitude < wH then
                        wF = wK
                        wH = Magnitude
                        wG = wM
                    end
                end
            end
        end
    end
    return wF, wH, wG
end
local function fn903()
    local z9 = uv()
    if not z9 then
        return nil
    end
    local UserId = LocalPlayer.UserId
    for k, v in z9 do
        local z9_1 = type(v) == "table" and type(v.players) == "table" and table.find(v.players, UserId)
        if z9_1 then
            return v
        end
    end
    return nil
end
local function fn911(hT)
    local A1 = type(hT) == "string" and tB(hT)
    if A1 then
        tC.MapName = hT
    end
end
local function fn942()
    local mapConfig = tt.mapConfig
    local zK = type(mapConfig) == "table" and mapConfig.MAPS
    local zJ_1 = zK or nil
    if type(zJ_1) ~= "table" then
        return {}
    end
    local zJ_2 = {}
    for k, v in zJ_1 do
        local zK_2 = type(v) == "table" and type(v.id) == "string"
        if zK_2 then
            local zK_3 = #zJ_2 + 1
            local id = v.id
            local zM = v.name or v.id
            zJ_2[zK_3] = { id = id, name = tostring(zM) }
        end
    end
    return zJ_2
end
local function fn948()
    return tX:FindFirstChild("shared/network@GlobalFunctions")
end
local function onHeartbeat(iw)
    ty(iw, true)
end
local function fn979()
    return CoreGui
end
local function fn1004(ad)
    local ve = typeof(cloneref) == "function" and typeof(ad) == "Instance"
    if ve then
        return cloneref(ad)
    end
    return ad
end
local function worker()
    while t9() do
        tv()
        t1()
        up()
        tN()
        uo()
        t2()
        tD()
        task.wait(0.12)
        if not t9() then
            break
        end
    end
end
local function fn1069()
    return tX:FindFirstChild("shared/network@GlobalEvents")
end
local function fn1079(b7)
    local meleeHeldAtom = tt.meleeHeldAtom
    if ul(meleeHeldAtom) then
        pcall(meleeHeldAtom, b7 == true)
    end
end
local function fn1094(hO)
    local AS = hO == "Behind"
    local AT = hO == "Above"
    local AY = if AT then 1 else 0
    local AW = 2823 * AY + 1413 * (1 - AY)
    local AX = 124 * AY + 1157 * (1 - AY)
    if not ((AW * 2824 + AX * 3024 + AW * AX) % 16777213 == 8697180) then
        AT = AS
    end
    if AT or hO == "Orbit" or hO == "Below" then
        tC.FarmPosition = hO
    end
end
local function fn1103(d0, d1)
    local xG_1
    local xF_2
    if not t9() then
        return
    end
    local xE = (tR())
    local xE_1
    if not xE then
        local xF_1 = tC.AutoFarm
        local xL = if xF_1 then 1 else 0
        local xJ = 3462 * xL + 582 * (1 - xL)
        local xK = 1521 * xL + 1881 * (1 - xL)
        if not ((xJ * 4065 + xK * 1376 + xJ * xK) % 16777213 == 4654415) then
            xF_1 = tC.AutoM1
        end
        xE = not xF_1
    end
    if xE then
        if t3.active then
            tY()
        end
        t_(false)
        return
    end
    xG_1, xE_1, xF_2 = uw()
    if not xG_1 then
        if t3.active then
            tY()
        end
        t_(false)
        return
    end
    local xH = tu(xG_1.Position)
    if not xH then
        if t3.active then
            tY()
        end
        t_(false)
        return
    end
    if tC.AutoFarm then
        ts(xG_1, xE_1, xF_2, tE(xH, d0, d1))
        t_(true)
        return
    end
    if t3.active then
        tY()
    end
    local xE_2 = Vector3.new(xH.Position.X - xG_1.Position.X, 0, xH.Position.Z - xG_1.Position.Z)
    t_(xE_2.Magnitude <= to())
end
local function fn1113()
    if not tC.AutoBreak then
        return
    end
    local x4 = ud("wavePauseAtom")
    local x5 = type(x4) ~= "table" or x4.stage ~= "offer"
    if x5 then
        tC.LastBreakFire = 0
        return
    end
    local x9 = if ud("pauseVotedAtom") ~= nil then 1 else 0
    if x9 == 1 then
        return
    end
    local x4_1 = os.clock()
    if x4_1 - tC.LastBreakFire < 1 then
        return
    end
    local x5_1 = tC.BreakChoice == "Take a Break"
    uC("pauseVotedAtom", x5_1)
    us("VoteWavePause", x5_1)
    tC.LastBreakFire = x4_1
end
local function fn1122(hH, hI)
    tC[hH] = hI == true
    if hH == "AutoFarm" or hH == "AutoM1" then
        if not tC.AutoFarm then
            tY()
        end
        if not (tC.AutoFarm or tC.AutoM1) then
            t_(false)
        end
    end
    if hH == "AutoSkipWave" then
        t5(tC.AutoSkipWave)
    end
end
local function fn1150(e0, e1)
    local yg = false
    local yh = {}
    for k, v in e0 do
        if e1[v] then
            yg = true
            break
        end
    end
    for k, v in e0 do
        if not yg or e1[v] then
            yh[#yh + 1] = v
        end
    end
    return yh
end
to = nil
tp = nil
tq = nil
LocalPlayer = nil
ts = nil
tt = nil
tu = nil
tv = nil
tx = nil
ty = nil
tz = nil
tB = nil
tC = nil
tD = nil
tE = nil
tF = nil
tG = nil
tH = nil
connection = nil
tJ = nil
tK = nil
tM = nil
tN = nil
tO = nil
tP = nil
tQ = nil
tR = nil
tS = nil
tT = nil
tV = nil
tW = nil
tX = nil
tY = nil
tZ = nil
t_ = nil
CoreGui = nil
t1 = nil
t2 = nil
t3 = nil
t5 = nil
t6 = nil
local t7
t9 = nil
local Players, tw, Workspace, Lighting, TeleportService, t4, GuiService
ua = nil
ud = nil
ue = nil
uf = nil
ug = nil
uh = nil
ui = nil
uk = nil
ul = nil
um = nil
un = nil
uo = nil
up = nil
uq = nil
us = nil
ut = nil
uu = nil
uv = nil
uw = nil
uy = nil
uz = nil
local uB
uC = nil
uD = nil
connection2 = nil
local ub, HttpService, VirtualUser, UserInputService, RunService, uA
local uU = if not game:IsLoaded() then 1 else 0
if uU == 1 then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, Workspace, LocalPlayer, uu, un, ug, ua, t4, tZ, tP = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
if ((HttpService and HttpService or HttpService and LocalPlayer) and (tP and HttpService or (false or not LocalPlayer)) or ((GuiService or not HttpService) and (not tP and HttpService) or (not tP or GuiService or (not GuiService or not tP)))) and ((HttpService or not HttpService) and (GuiService or LocalPlayer) and ((not LocalPlayer or not HttpService) and (tP or not tP)) and ((not HttpService or not LocalPlayer or (tP or GuiService)) and ((not LocalPlayer or uu) and (not LocalPlayer or not GuiService)))) and not (((HttpService and HttpService or HttpService and LocalPlayer) and (tP and HttpService or (false or not LocalPlayer)) or ((GuiService or not HttpService) and (not tP and HttpService) or (not tP or GuiService or (not GuiService or not tP)))) and ((HttpService or not HttpService) and (GuiService or LocalPlayer) and ((not LocalPlayer or not HttpService) and (tP or not tP)) and ((not HttpService or not LocalPlayer or (tP or GuiService)) and ((not LocalPlayer or uu) and (not LocalPlayer or not GuiService))))) then
    ug = game:GetService("HttpService")
else
    HttpService = game:GetService("HttpService")
end
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
local CollectionService = game:GetService("CollectionService")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
LocalPlayer:WaitForChild("PlayerGui")
local uI = "OuroborosFruitZombieSurvival"
uu = "Zombie"
un = { "Skill 1", "Skill 2", "Skill 3", "Skill 4" }
ug = { "Health", "Attack" }
ua = { Health = "health", Attack = "attack" }
t4 = { "Take a Break", "Keep Going" }
tZ = 10.4
tP = fn979
if getgenv then
    getgenv().gethui = tP
end
tq, tX, tM, tH, tC, tt, t3, t7, ub, ul, t9, uD, ui, tK, ut, tO, tw, uA, us, tS, ud, uC, t_, to, tG, uw, tQ, um, tW, tu, tY, uz, uy, t6, tE, ts, tR, ty, tV, t5, tv, t1, up, tx, tN, tT, uo, ue, tF, t2, uv, tJ, tB, uh, tp, uk, uq, tD, uf = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fn14)
local function uF(C)
    local u5
    local u7
    local u6
    u5 = nil
    u6 = nil
    u7 = nil
    local u8 = C ~= ""
    local u9 = type(C) == "string" and u8
    assert(u9, "A namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    u7 = getgenv()
    assert(type(u7) == "table", "getgenv did not return a table")
    local u8_1 = u7[C]
    if u8_1 ~= nil then
        local u9_1 = type(u8_1) == "table" and type(u8_1.Unload) == "function"
        assert(u9_1, "Namespace is occupied")
        u8_1.Unload()
        assert(u7[C] == nil, "Previous instance did not release its namespace")
    end
    u5 = {}
    u6 = { State = {}, Unloaded = false }
    u6.Track = function(I)
        assert(type(I) == "function", "Cleanup must be callable")
        if u6.Unloaded then
            I()
        else
            table.insert(u5, I)
        end
        return I
    end
    u6.Unload = function()
        local uZ_1
        local uY_1
        if u6.Unloaded then
            return
        end
        u6.Unloaded = true
        local uW = {}
        local u2 = #u5
        local u1 = -1
        while false and u2 <= 1 or true and u2 >= 1 do
            local u3 = u2
            local uX_1 = table.remove(u5, u3)
            uY_1, uZ_1 = pcall(uX_1)
            if not uY_1 then
                table.insert(uW, tostring(uZ_1))
            end
            u2 += u1
        end
        table.clear(u6.State)
        if #uW > 0 then
            error("Cleanup incomplete: " .. table.concat(uW, "; "), 0)
        end
        if u7[C] == u6 then
            u7[C] = nil
        end
    end
    u7[C] = u6
    return u6
end
local uF_3
if (not ts or not up or (to or not ts)) and (not up or ts or to and not ts) and not ((not ts or not up or (to or not ts)) and (not up or ts or to and not ts)) then
    tN = function(V, W)
        local vc = type(V) == "table" and type(V.Track) == "function"
        assert(vc, "FeatureAPI required")
        local vc_2 = type(W) == "table" and type(W.OnUnload) == "function"
        assert(vc_2, "UI library required")
        assert(type(W.Unload) == "function", "UI unload required")
        V.Track(function()
            if not W.Unloaded then
                W:Unload()
            end
        end)
        W:OnUnload(function()
            V.Unload()
        end)
    end
else
    ub = function(V, W)
        local vc = type(V) == "table" and type(V.Track) == "function"
        assert(vc, "FeatureAPI required")
        local vc_1 = type(W) == "table" and type(W.OnUnload) == "function"
        assert(vc_1, "UI library required")
        assert(type(W.Unload) == "function", "UI unload required")
        V.Track(function()
            if not W.Unloaded then
                W:Unload()
            end
        end)
        W:OnUnload(function()
            V.Unload()
        end)
    end
end
tq = uF(uI)
ul = fn165
t9 = fn863
tX = fn1004(ReplicatedStorage)
tM = fn1004(Workspace)
tH = fn1004(CollectionService)
tC = tq.State
if (to and uF or (not to or uF)) and (not uF and not uF or not uF and to) and not ((to and uF or (not to or uF)) and (not uF and not uF or not uF and to)) then
    tt.AutoFarm = false
    tt.FarmPosition = "Above"
    tt.PrioritizeBoss = true
    tt.AutoM1 = false
    tt.AutoSkills = false
    tt.SelectedSkills = { ["Skill 4"] = true, ["Skill 2"] = true, ["Skill 1"] = true, ["Skill 3"] = true }
    tt.AutoSkipWave = false
    tt.AutoReplay = false
    tt.AutoBreak = false
    tt.BreakChoice = "Keep Going"
    tt.AutoBuyUpgrades = false
    tt.SelectedUpgrades = { Health = true, Attack = true }
    tt.AutoBuild = false
    tt.SelectedBuilds = {}
    tt.BuildDelay = 1.5
    tt.OrbitAngle = 0
    tt.FarmDistance = 7
    tt.AboveHeight = 14
    tt.BehindHeight = 3
    tt.OrbitHeight = 6
    tt.OrbitSpeed = 2
    tt.BelowDepth = 10
    tt.SkillDelay = 0.35
    tt.RunOver = false
    tt.LastSkipFire = 0
    tt.LastReplayFire = 0
    tt.LastBreakFire = 0
    tt.LastUpgradeAt = 0
    tt.LastSkillCast = 0
    tt.SkillCursor = 1
    tt.LastBuildAt = 0
    tt.BuildCursor = 1
    tt.AutoPlay = false
    tt.PartySize = 4
    tt.FriendsOnly = false
    tt.MapName = ""
    tt.LastLobbyAt = 0
    tt.LastBoardAt = 0
    tt.AutoSkipSynced = false
    tC = {}
else
    tC.AutoFarm = false
    tC.FarmPosition = "Above"
    tC.PrioritizeBoss = true
    tC.AutoM1 = false
    tC.AutoSkills = false
    tC.SelectedSkills = { ["Skill 1"] = true, ["Skill 2"] = true, ["Skill 3"] = true, ["Skill 4"] = true }
    tC.AutoSkipWave = false
    tC.AutoReplay = false
    tC.AutoBreak = false
    tC.BreakChoice = "Keep Going"
    tC.AutoBuyUpgrades = false
    tC.SelectedUpgrades = { Health = true, Attack = true }
    tC.AutoBuild = false
    tC.SelectedBuilds = {}
    tC.BuildDelay = 1.5
    tC.OrbitAngle = 0
    tC.FarmDistance = 7
    tC.AboveHeight = 14
    tC.BehindHeight = 3
    tC.OrbitHeight = 6
    tC.OrbitSpeed = 2
    tC.BelowDepth = 10
    tC.SkillDelay = 0.35
    tC.RunOver = false
    tC.LastSkipFire = 0
    tC.LastReplayFire = 0
    tC.LastBreakFire = 0
    tC.LastUpgradeAt = 0
    tC.LastSkillCast = 0
    tC.SkillCursor = 1
    tC.LastBuildAt = 0
    tC.BuildCursor = 1
    tC.AutoPlay = false
    tC.PartySize = 4
    tC.FriendsOnly = false
    tC.MapName = ""
    tC.LastLobbyAt = 0
    tC.LastBoardAt = 0
    tC.AutoSkipSynced = false
    tt = {}
end
uD = fn510
ui = fn88
tK = fn439
ut = fn356
tO = fn147
fn29()
tw = fn1069
uA = fn948
us = function(bf, ...)
    local vP
    local vQ = table.pack(...)
    local Events = tt.Events
    local vR_8
    if type(Events) == "table" then
        local vO = Events[bf]
        local vR_1 = type(vO) == "table" and ul(vO.fire)
        if vR_1 then
            local vR_2 = pcall(function()
                vO:fire(table.unpack(vQ, 1, vQ.n))
            end)
            if vR_2 then
                return true
            end
            local vR_3 = tw()
            local vS_1 = vR_3 and vR_3:FindFirstChild(bf)
            vP = vS_1
            local vR_4 = vP and vP:IsA("RemoteEvent")
            if vR_8 then
                return (pcall(function()
                    vP:FireServer(table.unpack(vQ, 1, vQ.n))
                end))
            end
            return false
        end
        local vR_5 = tw()
        local vS_2 = vR_5 and vR_5:FindFirstChild(bf)
        vP = vS_2
        local vR_6 = vP and vP:IsA("RemoteEvent")
        if vR_8 then
            return (pcall(function()
                vP:FireServer(table.unpack(vQ, 1, vQ.n))
            end))
        end
        return false
    end
    local vR_7 = tw()
    local vS_3 = vR_7 and vR_7:FindFirstChild(bf)
    vP = vS_3
    vR_8 = vP and vP:IsA("RemoteEvent")
    if vR_8 then
        return (pcall(function()
            vP:FireServer(table.unpack(vQ, 1, vQ.n))
        end))
    end
    return false
end
tS = function(bx, ...)
    local vU
    local vX
    local vV = table.pack(...)
    local Functions = tt.Functions
    local vY_2
    if type(Functions) == "table" then
        local vW = Functions[bx]
        local vY_1 = type(vW) == "table" and ul(vW.invoke)
        if vY_1 then
            vY_2, vX = pcall(function()
                return vW:invoke(table.unpack(vV, 1, vV.n))
            end)
            if vY_2 then
                local vY_3 = type(vX) == "table" and ul(vX.catch)
                if vY_3 then
                    pcall(function()
                        vX:catch(function() end)
                    end)
                end
                return true
            end
            local vY_4 = uA()
            local vZ_1 = vY_4 and vY_4:FindFirstChild(bx)
            vU = vZ_1
            if vU then
                if vU:IsA("RemoteFunction") then
                    return (pcall(function()
                        vU:InvokeServer(table.unpack(vV, 1, vV.n))
                    end))
                elseif vU:IsA("RemoteEvent") then
                    return (pcall(function()
                        vU:FireServer(table.unpack(vV, 1, vV.n))
                    end))
                else
                    return false
                end
            else
                return false
            end
        else
            local vY_5 = uA()
            local vZ_2 = vY_5 and vY_5:FindFirstChild(bx)
            vU = vZ_2
            if vU then
                if vU:IsA("RemoteFunction") then
                    return (pcall(function()
                        vU:InvokeServer(table.unpack(vV, 1, vV.n))
                    end))
                elseif vU:IsA("RemoteEvent") then
                    return (pcall(function()
                        vU:FireServer(table.unpack(vV, 1, vV.n))
                    end))
                else
                    return false
                end
            else
                return false
            end
        end
    else
        local vY_6 = uA()
        local vZ_3 = vY_6 and vY_6:FindFirstChild(bx)
        vU = vZ_3
        if vU then
            if vU:IsA("RemoteFunction") then
                return (pcall(function()
                    vU:InvokeServer(table.unpack(vV, 1, vV.n))
                end))
            elseif vU:IsA("RemoteEvent") then
                return (pcall(function()
                    vU:FireServer(table.unpack(vV, 1, vV.n))
                end))
            else
                return false
            end
        else
            return false
        end
    end
end
ud = fn291
uC = fn399
t_ = fn1079
to = fn523
tG = fn56
uw = fn66
tQ = fn391
um = fn363
tW = fn785
tu = fn895
t3 = {
    active = false,
    root = nil,
    character = nil,
    humanoid = nil,
    alignPos = nil,
    alignOri = nil,
    collisions = {},
    savedAutoRotate = nil,
    savedPlatformStand = nil
}
tY = fn487
uz = fn310
uy = fn374
t6 = fn694
tE = fn887
ts = fn18
tR = fn246
ty = fn1103
tV = fn498
t5 = fn602
tv = fn311
t1 = fn1113
up = fn581
tx = fn1150
tN = fn221
tT = fn893
uo = fn484
ue = fn43
tq.BuildLabels = fn706
tF = fn209
t2 = fn773
uv = fn807
tJ = fn942
tq.MapLabels = fn648
tB = fn790
uh = fn903
tp = fn450
uk = fn813
uq = function()
    local Ar
    Ar = nil
    local As = uv()
    local As_5
    local MatchPads = tM:FindFirstChild("MatchPads")
    local At_1
    if not As or not MatchPads then
        return
    end
    local Au_1 = uw()
    if not Au_1 then
        return
    end
    local Av_1 = os.clock()
    if Av_1 - tC.LastBoardAt < 4 then
        return
    end
    local Aw
    for k, v in As do
        local As_1 = type(v) == "table" and not v.launching and #v.players < (v.maxPlayers or 4)
        if As_1 then
            if #v.players == 0 then
                Aw = v
                break
            end
            Aw = Aw or v
        end
    end
    local As_3 = Aw and MatchPads:FindFirstChild(Aw.id)
    Ar = As_3
    local As_4 = not Ar or not Ar:IsA("Model")
    if As_4 then
        return
    end
    As_5, At_1 = pcall(function()
        return (Ar:GetBoundingBox())
    end)
    local Aw_1 = not As_5 or typeof(At_1) ~= "CFrame"
    if Aw_1 then
        return
    end
    Au_1.CFrame = CFrame.new(At_1.Position + Vector3.new(0, 4, 0))
    tC.LastBoardAt = Av_1
end
tD = fn624
tq.SetFlag = fn1122
tq.SetFarmPosition = fn1094
tq.StartMatch = fn886
tq.CancelMatch = fn684
tq.LeavePad = fn794
tq.SetMap = fn911
tq.SetBreakChoice = fn313
tq.SetNumber = fn682
uf = fn610
tq.SetSelectedSkills = fn890
tq.SetSelectedUpgrades = fn722
tq.SetSelectedBuilds = fn521
t7 = tt.Events
local uM = type(t7) == "table"
if uM then
    local uF_1 = 3
    repeat
        local uG_1 = (vector.create((uF_1 * 4 + 5) % 11 + 1, (uF_1 * 11 + 13) % 13 + 1, (uF_1 * 10 + 4) % 17 + 1))
        local uH_1 = (vector.create((uF_1 * 3 + 2) % 11 + 1, (uF_1 * 5 + 3) % 13 + 1, (uF_1 * 8 + 1) % 17 + 1))
        local uI_1 = (vector.create((uF_1 * 7 + 2) % 11 + 1, (uF_1 * 11 + 5) % 13 + 1, (uF_1 * 6 + 14) % 17 + 1))
        if vector.dot(vector.cross(uG_1, uH_1), uI_1) == vector.dot(vector.cross(uH_1, uI_1), uG_1) + 5 then
            t7 = type(uM.RunEnded) == "table"
        else
            uM = type(t7.RunEnded) == "table"
        end
        uF_1 = (uF_1 + 1) % 8
    until (uF_1 * 5 + 7) % 8 == 3
end
if uM then
    local uF_2 = 5
    repeat
        local uG_2 = { "spdwlldbko", "bvsxt", "bywhzhcou", "gtwjgjidt", "eocyjzqo", "ndmji", "zaz" }
        local GP = uF_2
        local uH_2 = uG_2[GP % 7 + 1]
        if uH_2:len() >= uH_2:gsub("(.)", "%1%1", GP % 3 % 2 + 1):len() then
            t7 = uM(ul.RunEnded.connect)
        else
            uM = ul(t7.RunEnded.connect)
        end
        uF_2 = (uF_2 + 6) % 8
    until (uF_2 * 3 + 2) % 8 == 3
end
if uM then
    uF_3, uB = pcall(function()
        return t7.RunEnded:connect(function(ik)
            tC.RunOver = ik ~= nil
            if ik == nil then
                tC.LastReplayFire = 0
            end
        end)
    end)
    if uF_3 and uB then
        tq.Track(function()
            pcall(function()
                uB:Disconnect()
            end)
        end)
    end
end
connection, connection2, tz = nil, nil, nil
tq.Track(fn288)
connection = RunService.Heartbeat:Connect(onHeartbeat)
connection2 = RunService.PostSimulation:Connect(onPostSimulation)
tq.Track(fn316)
tz = task.spawn(worker)
tq.Track(fn891)
local function uG_4()
    local F3
    local onDiscord
    local F2
    onDiscord = nil
    F2 = nil
    F3 = nil
    local FU, FV, Library, Toggles, FZ, F_, ThemeManager, Options, SaveManager
    FZ = "https://ouroboros-hub-rbx.web.app/"
    FV = "https://rscripts.net/@Ouroboros"
    FU = "Fruit Zombie Survival"
    F2 = "https://discord.gg/synapsex"
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = Library.Toggles
    Options = Library.Options
    ub(tq, Library)
    F3 = function(i2, i3)
        local Bn = ul(setclipboard) and setclipboard
        local Bo = Bn
        local Bt = if Bo then 1 else 0
        local Br = 2224 * Bt + 3122 * (1 - Bt)
        local Bs = 2380 * Bt + 1019 * (1 - Bt)
        if not ((Br * 84 + Bs * 1423 + Br * Bs) % 16777213 == 8866676) then
            local Bn_1 = ul(toclipboard) and toclipboard
            Bo = Bn_1 or nil
        end
        local Bn_2 = Bo
        if not Bn_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local Bo_1 = pcall(Bn_2, i2)
        if Bo_1 then
            Library:Notify(i3)
        else
            Library:Notify("Failed to copy")
        end
    end
    onDiscord = function()
        F3(F2, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = F2, Copyable = true }, "|", FU, "|", "v0.2" },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    F_ = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "gamepad-2"),
        Lobby = Window:AddTab("Lobby", "ship"),
        Player = Window:AddTab("Player", "person-standing"),
        Settings = Window:AddTab("Settings", "settings")
    }
    local function F5_1(ji)
        local DiscordGroup = ji:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    for k, v in F_ do
        if k ~= "Info" then
            F5_1(v)
        end
    end
    local function F6()
        local kE
        local FarmGroup = F_.Main:AddLeftGroupbox("Farm", "swords")
        FarmGroup:AddToggle("AutoFarm", {
            Text = "Auto Farm Zombies",
            Default = false,
            Callback = function(jq)
                tq.SetFlag("AutoFarm", jq)
            end
        })
        FarmGroup:AddDropdown("FarmPosition", {
            Text = "Farm Position",
            Values = { "Above", "Behind", "Orbit", "Below" },
            Default = 1,
            Callback = function(jt)
                tq.SetFarmPosition(jt)
            end
        })
        FarmGroup:AddSlider("FarmDistance", {
            Text = "Melee Distance",
            Default = 7,
            Min = 1,
            Max = 10,
            Rounding = 1,
            Tooltip = "Horizontal gap to the target. Past the weapon's reach nothing connects.",
            Callback = function(jv)
                tq.SetNumber("FarmDistance", jv)
            end
        })
        local jx = FarmGroup:AddDependencyBox()
        jx:AddSlider("AboveHeight", {
            Text = "Height",
            Default = 14,
            Min = 0,
            Max = 40,
            Rounding = 1,
            Callback = function(jy)
                tq.SetNumber("AboveHeight", jy)
            end
        })
        jx:SetupDependencies({ { Options.FarmPosition, "Above" } })
        local jB = FarmGroup:AddDependencyBox()
        jB:AddSlider("BehindHeight", {
            Text = "Height",
            Default = 3,
            Min = 0,
            Max = 30,
            Rounding = 1,
            Callback = function(jC)
                tq.SetNumber("BehindHeight", jC)
            end
        })
        jB:SetupDependencies({ { Options.FarmPosition, "Behind" } })
        local jE = FarmGroup:AddDependencyBox()
        jE:AddSlider("OrbitHeight", {
            Text = "Height",
            Default = 6,
            Min = 0,
            Max = 30,
            Rounding = 1,
            Callback = function(jF)
                tq.SetNumber("OrbitHeight", jF)
            end
        })
        jE:AddSlider("OrbitSpeed", {
            Text = "Speed",
            Default = 2,
            Min = 0.25,
            Max = 8,
            Rounding = 2,
            Callback = function(jH)
                tq.SetNumber("OrbitSpeed", jH)
            end
        })
        jE:SetupDependencies({ { Options.FarmPosition, "Orbit" } })
        local jJ = FarmGroup:AddDependencyBox()
        jJ:AddSlider("BelowDepth", {
            Text = "Depth",
            Default = 10,
            Min = 0,
            Max = 30,
            Rounding = 1,
            Callback = function(jK)
                tq.SetNumber("BelowDepth", jK)
            end
        })
        jJ:SetupDependencies({ { Options.FarmPosition, "Below" } })
        FarmGroup:AddToggle("PrioritizeBoss", {
            Text = "Prioritize Boss",
            Default = true,
            Callback = function(jM)
                tq.SetFlag("PrioritizeBoss", jM)
            end
        })
        local CombatGroup = F_.Main:AddLeftGroupbox("Combat", "zap")
        CombatGroup:AddToggle("AutoM1", {
            Text = "Auto M1",
            Default = false,
            Tooltip = "Holds the basic attack whenever a zombie is inside melee reach.",
            Callback = function(jP)
                tq.SetFlag("AutoM1", jP)
            end
        })
        local RunGroup = F_.Main:AddRightGroupbox("Run", "rotate-cw")
        RunGroup:AddToggle("AutoSkipWave", {
            Text = "Auto Skip Wave",
            Default = false,
            Callback = function(jS)
                tq.SetFlag("AutoSkipWave", jS)
            end
        })
        RunGroup:AddToggle("AutoBreak", {
            Text = "Auto Answer Break Prompt",
            Default = false,
            Callback = function(jU)
                tq.SetFlag("AutoBreak", jU)
            end
        })
        local jW = RunGroup:AddDependencyBox()
        jW:AddDropdown("BreakChoice", {
            Text = "Break Answer",
            Values = t4,
            Default = 2,
            Callback = function(jZ)
                tq.SetBreakChoice(jZ)
            end
        })
        jW:SetupDependencies({ { Toggles.AutoBreak, true } })
        RunGroup:AddToggle("AutoReplay", {
            Text = "Auto Replay",
            Default = false,
            Callback = function(j1)
                tq.SetFlag("AutoReplay", j1)
            end
        })
        local UpgradesGroup = F_.Main:AddRightGroupbox("Upgrades", "arrow-up")
        UpgradesGroup:AddToggle("AutoBuyUpgrades", {
            Text = "Auto Buy Upgrades",
            Default = false,
            Callback = function(j4)
                tq.SetFlag("AutoBuyUpgrades", j4)
            end
        })
        UpgradesGroup:AddDropdown("Upgrades", {
            Text = "Upgrades",
            Values = ug,
            Multi = true,
            Default = ug,
            Callback = function(j8)
                tq.SetSelectedUpgrades(j8)
            end
        })
        tq.SetSelectedUpgrades(ug)
        local SkillsGroup = F_.Main:AddRightGroupbox("Skills", "sparkles")
        SkillsGroup:AddToggle("AutoSkills", {
            Text = "Auto Use Skills",
            Default = false,
            Callback = function(kb)
                tq.SetFlag("AutoSkills", kb)
            end
        })
        SkillsGroup:AddDropdown("Skills", {
            Text = "Skills",
            Values = un,
            Multi = true,
            Default = un,
            Expandable = true,
            Callback = function(kf)
                tq.SetSelectedSkills(kf)
            end
        })
        local kh = SkillsGroup:AddDependencyBox()
        kh:AddSlider("SkillDelay", {
            Text = "Cast Delay",
            Default = 0.35,
            Min = 0.1,
            Max = 3,
            Rounding = 2,
            Suffix = "s",
            Callback = function(ki)
                tq.SetNumber("SkillDelay", ki)
            end
        })
        kh:SetupDependencies({ { Toggles.AutoSkills, true } })
        tq.SetSelectedSkills(un)
        local BuildsGroup = F_.Main:AddRightGroupbox("Builds", "hammer")
        BuildsGroup:AddToggle("AutoBuild", {
            Text = "Auto Build",
            Default = false,
            Callback = function(kl)
                tq.SetFlag("AutoBuild", kl)
            end
        })
        local kn = tq.BuildLabels()
        BuildsGroup:AddDropdown("Builds", {
            Text = "Builds",
            Values = kn,
            Multi = true,
            Default = kn,
            Callback = function(ko)
                tq.SetSelectedBuilds(ko)
            end
        })
        local kq = BuildsGroup:AddDependencyBox()
        kq:AddSlider("BuildDelay", {
            Text = "Place Delay",
            Default = 1.5,
            Min = 0.5,
            Max = 10,
            Rounding = 2,
            Suffix = "s",
            Callback = function(kr)
                tq.SetNumber("BuildDelay", kr)
            end
        })
        kq:SetupDependencies({ { Toggles.AutoBuild, true } })
        tq.SetSelectedBuilds(kn)
        local kt = table.concat(kn, "|")
        kE = task.spawn(function()
            local By = false
            repeat
                if not Library.Unloaded then
                    task.wait(2)
                    local Bu = tq.BuildLabels()
                    local Bv = table.concat(Bu, "|")
                    if Bv ~= kt then
                        kt = Bv
                        pcall(function()
                            Options.Builds:SetValues(Bu)
                            Options.Builds:SetValue(Bu)
                        end)
                    end
                else
                    By = true
                end
            until By
        end)
        tq.Track(function()
            if coroutine.status(kE) ~= "dead" then
                task.cancel(kE)
            end
        end)
    end
    F6()
    local function F5_2()
        local MatchPadGroup = F_.Lobby:AddLeftGroupbox("Match Pad", "ship")
        MatchPadGroup:AddToggle("AutoPlay", {
            Text = "Auto Play",
            Default = false,
            Tooltip = "Boards a free dock, applies the setup below, then launches the match.",
            Callback = function(kJ)
                tq.SetFlag("AutoPlay", kJ)
            end
        })
        MatchPadGroup:AddSlider("PartySize", {
            Text = "Player Limit",
            Default = 4,
            Min = 1,
            Max = 4,
            Rounding = 0,
            Callback = function(kM)
                tq.SetNumber("PartySize", kM)
            end
        })
        MatchPadGroup:AddToggle("FriendsOnly", {
            Text = "Friends Only",
            Default = false,
            Callback = function(kO)
                tq.SetFlag("FriendsOnly", kO)
            end
        })
        local BB = tq.MapLabels()
        MatchPadGroup:AddDropdown("MapSelector", {
            Text = "Map",
            Values = BB,
            Default = 1,
            Tooltip = "Locked maps are refused by the server until you reach their unlock wave.",
            Callback = function(kR)
                tq.SetMap(kR)
            end
        })
        if BB[1] then
            tq.SetMap(BB[1])
        end
        MatchPadGroup:AddDivider()
        MatchPadGroup:AddButton({
            Text = "Launch Now",
            Func = function()
                tq.StartMatch()
            end
        })
        MatchPadGroup:AddButton({
            Text = "Cancel Launch",
            Func = function()
                tq.CancelMatch()
            end
        })
        MatchPadGroup:AddButton({
            Text = "Leave Pad",
            Func = function()
                tq.LeavePad()
            end
        })
    end
    F5_2()
    local function F5_3()
        local B4
        local B0
        local B9
        local B7
        B0 = nil
        B4 = nil
        B7 = nil
        B9 = nil
        local BY, Label3, Label2, B1, B2, Label, B5, B6, B8
        B9 = function(kY)
            return (tostring(kY):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        B7 = function(k_, k0)
            return string.format('<font color="%s">%s</font>', k0, B9(k_))
        end
        B1 = function(k3, k4, k5)
            return string.format("<b>%s</b> %s %s", k3, B7("-", "#5a6070"), B7(k4, k5))
        end
        B8 = "#7fd47f"
        local Ca = "#6ec1ff"
        local Cb = "#8b93a3"
        B5 = "#e8a34d"
        local Cc = {}
        local Cd = type(tt.Events) ~= "table" and not tw()
        if Cd then
            table.insert(Cc, "events")
        end
        local Cd_1 = not ul(tt.meleeHeldAtom) and not ul(tt.castRequestAtom)
        if Cd_1 then
            if type(tt.Events) ~= "table" then
                table.insert(Cc, "combat")
            end
        end
        local Cd_2 = #Cc == 0 and "ready"
        local Ce = Cd_2 or "limited: " .. table.concat(Cc, ", ")
        BY = "Unknown"
        pcall(function()
            local BH_1
            local BG_1
            if ul(identifyexecutor) then
                BH_1, BG_1 = identifyexecutor()
                local BI = BH_1 ~= ""
                local BJ = type(BH_1) == "string" and BI
                if BJ then
                    local BI_1 = type(BG_1) == "string" and BG_1 ~= "" and BH_1 .. " " .. BG_1
                    BY = BI_1 or BH_1
                end
            end
        end)
        B0 = os.clock()
        B6 = function()
            local BL = math.floor(os.clock() - B0)
            if BL < 60 then
                return BL .. "s"
            elseif BL < 3600 then
                return string.format("%dm %ds", BL // 60, BL % 60)
            else
                return string.format("%dh %dm", BL // 3600, BL % 3600 // 60)
            end
        end
        local UserGroup = F_.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(B1("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, B8), true)
        UserGroup:AddLabel(B1("UserId", tostring(LocalPlayer.UserId), Ca), true)
        UserGroup:AddLabel(B1("Executor", BY .. "  " .. Ce, B8), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(B1("Session", B6(), B5), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                F3(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                F3("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = F_.Info:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(B1("Game", FU, Ca), true)
        Label2 = SessionGroup:AddLabel(B1("Players", "0/0", B8), true)
        B2 = tostring(game.JobId)
        local Ca_1 = #B2 > 18 and string.sub(B2, 1, 18) .. "..."
        local Cd_4 = Ca_1 or B2
        SessionGroup:AddLabel(B1("Job", Cd_4, Cb), true)
        Label = SessionGroup:AddLabel(B1("Ping", "0 ms", B5), true)
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
                F3(B2, "Copied Job ID")
            end
        })
        B4 = task.spawn(function()
            local BU_1
            local BT_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(B1("Session", B6(), B5))
                Label2:SetText(B1("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), B8))
                BT_1, BU_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local BT_2 = BT_1 and BU_1 .. " ms" or "n/a"
                Label:SetText(B1("Ping", BT_2, B5))
            end
        end)
        tq.Track(function()
            if coroutine.status(B4) ~= "dead" then
                task.cancel(B4)
            end
        end)
        local SocialsGroup = F_.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                F3(FV, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                F3(FZ, "Copied website link")
            end
        })
    end
    F5_3()
    local function F5_4()
        local mo
        local mm
        local mp
        local mn
        local MovementGroup = F_.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = F_.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        mo = {}
        local ml = {}
        mm = {}
        mn = {}
        mp = {}
        local function mq()
            for k, v in mm do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(mm)
        end
        local function mu()
            for k, v in mn do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(mn)
        end
        local function my()
            for k, v in mo do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(mo)
        end
        local function mC(mD)
            local CH = if not mD:IsA("ProximityPrompt") then 1 else 0
            if CH == 1 then
                return
            end
            if mp[mD] == nil then
                mp[mD] = {
                    HoldDuration = mD.HoldDuration,
                    MaxActivationDistance = mD.MaxActivationDistance,
                    RequiresLineOfSight = mD.RequiresLineOfSight
                }
            end
            mD.HoldDuration = 0
            mD.MaxActivationDistance = 50
            mD.RequiresLineOfSight = false
        end
        local function mF()
            for k, v in mp do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(mp)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                my()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                mu()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                mq()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                    pcall(mC, v)
                end
            else
                mF()
            end
        end)
        table.insert(ml, Workspace.DescendantAdded:Connect(function(mY)
            if Toggles.InstantProximityPrompt.Value then
                mC(mY)
            end
        end))
        table.insert(ml, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if mm[v] == nil then
                        mm[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(ml, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local Da = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and Da then
                Da:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(ml, RunService.RenderStepped:Connect(function(nj)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local Dd = Character and Character:FindFirstChildOfClass("Humanoid")
            local De = Character
            if De then
                De = Character:FindFirstChild("HumanoidRootPart")
            end
            local Dc_1 = De
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and Dd then
                if mn[Dd] == nil then
                    mn[Dd] = Dd.WalkSpeed
                end
                Dd.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and Dc_1 and Dd and CurrentCamera then
                if mo[Dd] == nil then
                    mo[Dd] = Dd.PlatformStand
                end
                Dd.PlatformStand = true
                local De_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        De_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        De_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        De_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        De_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        De_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        De_4 -= Vector3.new(0, 1, 0)
                    end
                end
                Dc_1.AssemblyLinearVelocity = Vector3.zero
                if De_4.Magnitude > 0 then
                    Dc_1.CFrame = Dc_1.CFrame + De_4.Unit * Options.FlySpeed.Value * nj
                end
            end
        end))
        tq.Track(function()
            for k, v in ml do
                v:Disconnect()
            end
            mq()
            mu()
            my()
            mF()
        end)
    end
    F5_4()
    local function F5_5()
        local Eu, Ev, Ew, Ex, Ey, Ez, EA, EB, EC, ED, EE, EF, EG, Label
        Eu = {}
        EC = {}
        Ez = nil
        EA = 0
        Ew = 0
        EE = false
        EF = os.clock()
        local MenuGroup = F_.Settings:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        Ex = function()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local Dt = not CurrentCamera or not ul(VirtualUser.CaptureController) or not ul(VirtualUser.ClickButton2)
            if Dt then
                return false
            end
            local Dt_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not Dt_1 then
                return false
            end
            EA += 1
            EF = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. EA)
            end)
            return true
        end
        EG = function(n2)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not n2)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not n2
                end
            end)
            if not n2 then
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
        ED = function(oi)
            if oi.ClassName == "ParticleEmitter" or oi.ClassName == "Trail" or oi.ClassName == "Smoke" or oi.ClassName == "Fire" or oi.ClassName == "Sparkles" or oi.ClassName == "Explosion" or oi.ClassName == "Beam" then
                if Eu[oi] == nil then
                    Eu[oi] = oi.Enabled
                end
                pcall(function()
                    oi.Enabled = false
                end)
            end
        end
        EB = function()
            for k, v in Eu do
                local DI = k
                local DK = v
                if DI.Parent then
                    pcall(function()
                        DI.Enabled = DK
                    end)
                end
            end
            table.clear(Eu)
            if Ez then
                pcall(function()
                    settings().Rendering.QualityLevel = Ez.Quality
                end)
                Lighting.GlobalShadows = Ez.Shadows
                Lighting.FogEnd = Ez.Fog
                Ez = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(oB)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not oB)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(oG)
                if oG then
                    if not Ez then
                        Ez = {
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
                        pcall(ED, v)
                    end
                else
                    EB()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        EG(true)
        local ScriptGroup = F_.Settings:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            EG(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            EG(true)
        end
        table.insert(EC, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                Ex()
            end
        end))
        table.insert(EC, Workspace.DescendantAdded:Connect(function(oZ)
            if Toggles.FpsBoost.Value then
                ED(oZ)
            end
        end))
        Ey = function(o2)
            if EE or Library.Unloaded or not Toggles.AutoReconnect.Value then
                return
            end
            EE = true
            local D2 = Ew
            local D3_1 = pcall(function()
                if o2 then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not D3_1 then
                EE = false
                if not o2 and D2 == Ew then
                    task.delay(1.5, function()
                        if D2 == Ew then
                            Ey(true)
                        end
                    end)
                end
            end
        end
        table.insert(EC, TeleportService.TeleportInitFailed:Connect(function(pk)
            local Ea
            if pk == LocalPlayer and EE then
                EE = false
                Ea = Ew
                task.delay(3, function()
                    if Ea == Ew then
                        Ey(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local Ei = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not Ei then
                return
            end
            table.insert(EC, Ei.ChildAdded:Connect(function(pz)
                if pz.Name == "ErrorPrompt" then
                    Ey(false)
                end
            end))
        end)
        Ev = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    EG(true)
                end
                local El = Toggles.AntiAfk.Value and os.clock() - EF >= 60
                if El then
                    Ex()
                end
                task.wait(1)
            end
        end)
        tq.Track(function()
            Ew += 1
            for k, v in EC do
                v:Disconnect()
            end
            pcall(task.cancel, Ev)
            EG(false)
            EB()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    F5_5()
    local function F5_6()
        local FF, FG, FH, FI
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("OuroborosHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(F_.Settings)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/FruitZombieSurvival")
        local FJ = SaveManager:BuildConfigSection(F_.Settings)
        FI = function(p_, p0)
            local EL = p_ == "Toggle" and Toggles
            local EQ = if EL then 1 else 0
            local EO = 3843 * EQ + 2297 * (1 - EQ)
            local EP = 3801 * EQ + 1918 * (1 - EQ)
            if not ((EO * 3024 + EP * 3794 + EO * EP) % 16777213 == 7095043) then
                EL = Options
            end
            local EL_1 = EL[p0]
            local EK_2 = type(EL_1) == "table" and EL_1.Type == p_
            return EK_2 and EL_1 or nil
        end
        FG = function(p9, qa)
            local Type = qa.Type
            if Type == "Toggle" then
                return { idx = p9, type = "Toggle", value = qa.Value == true }
            elseif Type == "Slider" then
                return { idx = p9, type = "Slider", value = tostring(qa.Value) }
            elseif Type == "Dropdown" then
                return { idx = p9, type = "Dropdown", multi = qa.Multi == true, value = qa.Value }
            elseif Type == "Input" then
                local ES = qa.Value or ""
                return { idx = p9, type = "Input", text = tostring(ES) }
            elseif Type == "ColorPicker" then
                return { idx = p9, type = "ColorPicker", value = qa.Value:ToHex(), transparency = qa.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = p9,
                    type = "KeyPicker",
                    mode = qa.Mode,
                    key = qa.Value,
                    modifiers = qa.Modifiers,
                    toggled = qa.Toggled
                }
            else
                return nil
            end
        end
        FF = function()
            local EY = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local EZ = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if EZ then
                        local EZ_1 = FG(k, v)
                        if EZ_1 then
                            EY[#EY + 1] = EZ_1
                        end
                    end
                end
            end
            table.sort(EY, function(qk, ql)
                if qk.type ~= ql.type then
                    return qk.type < ql.type
                end
                return qk.idx < ql.idx
            end)
            return { objects = EY }
        end
        FH = function(qn)
            local Fh
            Fh = nil
            local Fi = type(qn) ~= "table" or type(qn.idx) ~= "string" or type(qn.type) ~= "string" or SaveManager.Ignore[qn.idx]
            if Fi then
                return false
            end
            Fh = FI(qn.type, qn.idx)
            if not Fh then
                return false
            end
            local Fi_1 = pcall(function()
                if qn.type == "Input" then
                    if type(qn.text) ~= "string" then
                        return
                    end
                    Fh:SetValue(qn.text)
                elseif qn.type == "ColorPicker" then
                    Fh:SetValueRGB(Color3.fromHex(qn.value), qn.transparency)
                elseif qn.type == "KeyPicker" then
                    Fh:SetValue({ qn.key, qn.mode, qn.modifiers })
                    if qn.mode == "Toggle" and qn.toggled ~= nil then
                        Fh.Toggled = qn.toggled
                        Fh:Update()
                    end
                else
                    Fh:SetValue(qn.value)
                end
            end)
            return Fi_1
        end
        FJ:AddDivider()
        FJ:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        FJ:AddButton("Export Config to Clipboard", function()
            local Fl_1
            local Fk_1
            Fk_1, Fl_1 = pcall(HttpService.JSONEncode, HttpService, FF())
            if Fk_1 then
                local Fk_2 = ul(setclipboard) and setclipboard
                local Fm = Fk_2
                if not Fm then
                    local Fk_3 = ul(toclipboard) and toclipboard
                    local Fn = Fk_3
                    local Fr = if Fn then 1 else 0
                    local Fp = 3392 * Fr + 3975 * (1 - Fr)
                    local Fq = 3782 * Fr + 3522 * (1 - Fr)
                    if not ((Fp * 1691 + Fq * 3965 + Fp * Fq) % 16777213 == 5620) then
                        Fn = nil
                    end
                    Fm = Fn
                end
                local Fk_4 = Fm
                local Fm_1 = type(Fk_4) == "function" and pcall(Fk_4, Fl_1)
                if Fm_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        FJ:AddButton("Import Config from Clipboard Text", function()
            local Fu_1
            local Fs = Options.SaveManager_ImportSource.Value or ""
            local Fs_1
            local Ft = tostring(Fs):match("^%s*(.-)%s*$")
            if Ft == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #Ft > 262144 then
                Library:Notify("That config is too large")
                return
            end
            Fs_1, Fu_1 = pcall(HttpService.JSONDecode, HttpService, Ft)
            local Ft_1 = not Fs_1
            local Fy = if Ft_1 then 1 else 0
            local Fw = 2403 * Fy + 1319 * (1 - Fy)
            local Fx = 2153 * Fy + 2034 * (1 - Fy)
            if not ((Fw * 3792 + Fx * 1768 + Fw * Fx) % 16777213 == 1315126) then
                Ft_1 = type(Fu_1) ~= "table"
            end
            if not Ft_1 then
                Ft_1 = type(Fu_1.objects) ~= "table"
            end
            if Ft_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #Fu_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local Fs_2 = 0
            for i, v in ipairs(Fu_1.objects) do
                if FH(v) then
                    Fs_2 += 1
                end
            end
            if Fs_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local Fu_2 = Fs_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(Fs_2, Fu_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        if Options.FarmPosition then
            tq.SetFarmPosition(Options.FarmPosition.Value)
        end
        if Options.BreakChoice then
            tq.SetBreakChoice(Options.BreakChoice.Value)
        end
        if Options.MapSelector then
            tq.SetMap(Options.MapSelector.Value)
        end
        for k, v in {
            "FarmDistance",
            "AboveHeight",
            "BehindHeight",
            "OrbitHeight",
            "OrbitSpeed",
            "BelowDepth",
            "SkillDelay",
            "BuildDelay",
            "PartySize"
        } do
            local FJ_1 = Options[v]
            if FJ_1 then
                tq.SetNumber(v, FJ_1.Value)
            end
        end
        if Options.Skills then
            tq.SetSelectedSkills(Options.Skills.Value)
        end
        if Options.Upgrades then
            tq.SetSelectedUpgrades(Options.Upgrades.Value)
        end
        if Options.Builds then
            tq.SetSelectedBuilds(Options.Builds.Value)
        end
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    F5_6()
end
uG_4()
