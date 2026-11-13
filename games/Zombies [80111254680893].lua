local fns = {}
local ScriptsGroup, xF_3, MovementGroup, xF_25, SilentAimGroup, SocialsGroup, GearUpgradesGroup, xF_39, WeaponModsGroup
local pu
local loadoutStore
local pb
local n8
local WeaponController
local pA
local oA
local ph
local connection2
local oZ
local pG
local Options
local pn
local ol
local o4
local pM
local oM
local folder
local Label2
local Client
local connection3
local oS
local connection4
local _canShoot
local pg
local od
local Constants
local UserInputService
local ViewModelController
local pm
local Label4
local Shared
local pL
local connection6
local ps
local PlayReload
local o9
local AmmoBox
local oR
local Blink
local appStore
local pf
local oc
local connection7
local pE
local oE
local pl
local oi
local o2
local pK
local oK
local Workspace
local LightweightNpcsClientModule
local o8
local oQ
local px
local connection
local pe
local MysteryBox
local oW
local weaponUpgrades
local oD
local pk
local Melee
local o1
local pJ
local pq
local Label3
local o7
local pP
local MeleeController
local CollectionService
local ow
local CameraMinZoomDistance
local oa
local oV
local VirtualUser
local DropController
local pj
local o0
local Tags
local oI
local connection5
local on
local o6
local pO
local oO
local pv
local _startShootLoop
local pc
local Label
local oU
local pB
local oB
local CameraMode
local of
local o_
local oH
local po
local om
local Library
local ReplicatedStorage
local Toggles
function fns.fn4(fk)
    local t0_1
    local t__1
    local tZ = pK()
    if not tZ then
        return nil
    end
    t0_1, t__1 = nil, math.huge
    for k, v in CollectionService:GetTagged(fk) do
        local t1 = v:IsA("Model") and v.Parent
        if t1 then
            local Magnitude = (v:GetPivot().Position - tZ.Position).Magnitude
            if Magnitude < t__1 then
                t0_1, t__1 = v, Magnitude
            end
        end
    end
    return t0_1
end
function fns.fn26(hh)
    local u1 = po[hh]
    if not u1 then
        return
    end
    u1.highlight:Destroy()
    u1.billboard:Destroy()
    po[hh] = nil
end
function fns.worker4()
    while not Library.Unloaded do
        task.wait(oI("AreaDelay", 3))
        if not o2("AutoBuyArea") then
            continue
        end
        local Actions = Workspace:FindFirstChild("Actions")
        local wO = Actions and Actions:FindFirstChild("Barriers")
        if not wO then
            continue
        end
        local wO_1 = oI("AreaReserve", 0)
        for i, child in wO:GetChildren() do
            local ProximityPrompt = child:FindFirstChildWhichIsA("ProximityPrompt")
            if ProximityPrompt then
                local wP = child:GetAttribute("Cost") or ow(ProximityPrompt, 0)
                local wP_1 = o8() - wP >= wO_1 and pL(ProximityPrompt)
                if wP_1 then
                    task.wait(0.5)
                end
            end
        end
    end
end
function fns.fn54(b7, b8, b9)
    local sd = b9 - b7
    local Magnitude = sd.Magnitude
    if Magnitude < 1 then
        return false
    end
    local sf = pO(pk, b7, { sd.Unit * (Magnitude + 4) }, 0.5)[1]
    return sf ~= nil and sf.taggedZombie == b8
end
function fns.fn69(eA, eB, eC, eD, eE)
    local tC = oU(eA, eB, eC, eD, eE)
    if not o2("Wallbang") then
        return tC
    end
    local tD = px(eB, eC)
    if tD then
        return { hits = { tD }, hitWall = false, endpoint = tD.position }
    end
    return tC
end
function fns.worker6()
    while not Library.Unloaded do
        task.wait(0.1)
        if not o2("InstantCollect") then
            continue
        end
        local wl = pq()
        local wm = pK()
        if not wl or not wm then
            continue
        end
        local wn_1 = oi("CollectKinds")
        local wo_1 = oI("CollectRange", 40)
        for k, v in wl do
            local wl_1 = false
            for k, v2 in pB do
                if wn_1[k] and v.kind == v2 then
                    wl_1 = true
                    break
                end
            end
            if wl_1 and v.model and v.model.Parent then
                if (v.base - wm.Position).Magnitude <= wo_1 then
                    v.magnetStart = os.clock()
                    v.pos = wm.Position
                    v.model:PivotTo(CFrame.new(wm.Position))
                end
            end
        end
    end
end
function fns.fn81(e6, e7, e8, e9)
    if not o2("InstantReload") then
        return PlayReload(e6, e7, e8, e9)
    end
    e8()
    e9()
end
function fns.onRscripts()
    oD(pf, "Copied Rscripts profile to clipboard")
end
function fns.onInputBegan()
    pj = tick()
end
function fns.fn111(fc, fd, fe, ff)
    if not o2("InstantReload") then
        return on(fc, fd, fe, ff)
    end
    local tW = 1
    while tW <= fd do
        fe()
        tW += 1
    end
    ff()
end
function fns.fn143(aT, aU)
    local match = string.match
    local rg = aT.ObjectText or ""
    local rh = match(rg, "%d+")
    local rf_1 = tonumber(rh) or aU
    return rf_1
end
function fns.worker()
    while not Library.Unloaded do
        task.wait(2)
        if o2("AntiAfk") then
            local xq = tick() - pj
            local xr = tick() - pe
            if xq >= 300 and xr >= 60 then
                pcall(oS)
            else
                if xq < 300 and xr >= 300 then
                    pcall(oS)
                end
            end
        end
    end
end
function fns.fn168()
    local Character = pk.Character
    local q_ = Character and Character:FindFirstChild("HumanoidRootPart")
    return q_
end
function fns.fn185()
    local ud_1
    local uc_1
    if identifyexecutor then
        ud_1, uc_1 = identifyexecutor()
        local ue = ud_1 ~= ""
        local uf = type(ud_1) == "string" and ue
        if uf then
            local ue_1 = type(uc_1) == "string" and uc_1 ~= "" and ud_1 .. " " .. uc_1
            oA = ue_1 or ud_1
        end
    end
end
function fns.fn201()
    if not Toggles.WalkSpeedEnabled.Value then
        local v5 = pu()
        if v5 then
            v5.WalkSpeed = 16
        end
    end
end
function fns.onHeartbeat()
    if Library.Unloaded then
        return
    end
    local uC = math.rad(oI("SilentFov", 60) / 2)
    if o2("SilentAim") then
        if not of(pm, uC) then
            pm = oE(uC)
        end
    else
        pm = nil
    end
    if not o2("KillAura") then
        ps = nil
        oH(nil)
        return
    end
    local uH = if not of(ps, nil) then 1 else 0
    if uH == 1 then
        ps = oE(nil, true)
    end
    if not ps then
        oH(nil)
        return
    end
    if o_ ~= ps.model then
        oH(ps.model)
    end
    local attr = ps.model:GetAttribute("Hp")
    local uD = typeof(attr) == "number" and typeof(oW) == "number" and attr < oW
    if uD then
        oW = attr
        oQ = 0
        oO = nil
    elseif attr ~= oW then
        oW = attr
        oQ = 0
        oO = nil
    end
    local uC_2 = oQ >= pg and oO and os.clock() - oO >= pb
    if uC_2 then
        o1[ps.model] = os.clock() + o6
        ps = oE(nil, true)
        local uD_1 = ps and ps.model or nil
        oH(uD_1)
        if not ps then
            return
        end
    end
    if WeaponController._holstered or not WeaponController._weaponName then
        return
    end
    if WeaponController:_canShoot() then
        WeaponController:_shoot()
        if o_ == ps.model then
            oQ += 1
            local uC_5 = oO or os.clock()
            oO = uC_5
        end
    else
        local uC_6 = o2("AuraAutoReload") and WeaponController._ammo <= 0 and not WeaponController._reloading
        if uC_6 then
            WeaponController:Reload()
        end
    end
end
function fns.fn234(fx)
    local DiscordGroup = fx:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = om })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = om })
end
function fns.fn284()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    pe = tick()
end
function fns.fn360(aa, ab)
    return string.format('<font color="%s">%s</font>', ab, aa)
end
function fns.fn391(dp, dq)
    local sV
    local sW = o2("KillAura") and ps and ps.model.Parent
    if sW then
        sV = ps
    else
        local sW_1 = o2("SilentAim") and pm and pm.model.Parent
        if sW_1 then
            sV = pm
        end
    end
    if sV then
        local sW_2 = o4(sV.model)
        local Position = dq.Position
        if (sW_2 - Position).Magnitude > 1 then
            return CFrame.lookAt(Position, sW_2, dq.UpVector)
        end
        return pA(dp, dq)
    end
    return pA(dp, dq)
end
function fns.fn392(eT)
    local tH_1
    local tG_1
    if not o2("RapidFire") then
        return _canShoot(eT)
    end
    local _lastShotTime = eT._lastShotTime
    local tL = if os.clock() - _lastShotTime < oI("RapidFireDelay", 0.05) then 1 else 0
    if tL == 1 then
        return false
    end
    eT._lastShotTime = -math.huge
    tG_1, tH_1 = pcall(_canShoot, eT)
    eT._lastShotTime = _lastShotTime
    if not tG_1 then
        error(tH_1, 0)
    end
    return tH_1
end
function fns.onInputChanged(gq)
    local UserInputType = gq.UserInputType
    local ux = UserInputType == Enum.UserInputType.MouseMovement
    local uB = if ux then 1 else 0
    local uz = 1141 * uB + 292 * (1 - uB)
    local uA = 2134 * uB + 1445 * (1 - uB)
    if not ((uz * 638 + uA * 3711 + uz * uA) % 16777213 == 11082126) then
        ux = UserInputType == Enum.UserInputType.Gamepad1
    end
    if ux then
        pj = tick()
    end
end
function fns.worker7()
    while not Library.Unloaded do
        task.wait(0.25)
        local wh = ps or pm
        local wi = wh
        if wh then
            wh = wi.model.Name
        end
        local wj = wh or "None"
        local wi_1 = wi and pn or o7
        Label2:SetText(pJ("Target", wj, wi_1))
        local format = string.format
        local wi_2 = WeaponController._ammo or 0
        local wj_1 = WeaponController._reserve or 0
        Label3:SetText(pJ("Ammo", format("%d / %d", wi_2, wj_1), pc))
        Label4:SetText(pJ("Points", tostring(o8()), pn))
    end
end
function fns.worker3()
    while not Library.Unloaded do
        task.wait(0.5)
        if not o2("AutoBuyAmmo") then
            continue
        end
        local wY = WeaponController._reserve or 0
        if wY > oI("AmmoThreshold", 60) then
            continue
        end
        local _weaponName = WeaponController._weaponName
        local wZ = oi("AmmoSources")
        local w_ = oI("AmmoPointsReserve", 0)
        local w0 = false
        if wZ["Wall Weapon"] and _weaponName then
            local Actions = Workspace:FindFirstChild("Actions")
            local w2 = Actions and Actions:FindFirstChild("Wall Weapons")
            if w2 then
                for i, child in w2:GetChildren() do
                    local ProximityPrompt = child:FindFirstChildWhichIsA("ProximityPrompt")
                    local w2_1 = ProximityPrompt and child:GetAttribute("Gun") == _weaponName and string.find(ProximityPrompt.ActionText, "Ammo")
                    if w2_1 then
                        if o8() - ow(ProximityPrompt, 0) >= w_ then
                            w0 = pL(ProximityPrompt, true)
                            if w0 then
                                task.wait(0.5)
                                break
                            end
                        end
                    end
                end
            end
        end
        local w1_4 = (WeaponController._ammo or 0) <= 0
        if w1_4 then
            w1_4 = (WeaponController._reserve or 0) <= 0
        end
        local wY_4 = w1_4
        local w1_5 = not o2("AmmoBoxOnlyEmpty") or wY_4
        local wY_5 = not w0
        if wY_5 then
            wY_5 = wZ["Ammo Box"]
        end
        if wY_5 and w1_5 then
            local wY_6 = od(AmmoBox.ModelTag)
            local wZ_2 = wY_6 and wY_6:GetAttribute("State") == "Idle"
            if wZ_2 then
                local AmmoBoxPrompt = wY_6:FindFirstChild("AmmoBoxPrompt", true)
                local wY_7 = AmmoBoxPrompt and AmmoBoxPrompt:IsA("ProximityPrompt")
                if wY_7 then
                    local xc = if o8() - ow(AmmoBoxPrompt, AmmoBox.DefaultCost) >= w_ then 1 else 0
                    if xc == 1 then
                        pL(AmmoBoxPrompt, true)
                        task.wait(1)
                    end
                end
            end
        end
    end
end
function fns.fn451(ax)
    local qV = Options[ax]
    return qV and qV.Value or {}
end
function fns.fn486(cr)
    o_ = cr
    local sh = cr and cr:GetAttribute("Hp")
    oW = sh or nil
    oQ = 0
    oO = nil
end
function fns.worker8()
    local wf_1
    while not Library.Unloaded do
        task.wait(1)
        local we = math.floor(os.clock() - pP)
        if we < 60 then
            wf_1 = we .. "s"
        elseif we < 3600 then
            wf_1 = string.format("%dm %ds", we // 60, we % 60)
        else
            wf_1 = string.format("%dh %dm", we // 3600, we % 3600 // 60)
        end
        Label:SetText(pJ("Session time", wf_1, pc))
    end
end
function fns.fn507(am)
    local qP = Toggles[am]
    return qP ~= nil and qP.Value == true
end
local function fn559(ho)
    local highlight = Instance.new("Highlight")
    highlight.FillTransparency = 0.7
    highlight.OutlineTransparency = 0
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.Adornee = ho
    highlight.Parent = folder
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Size = UDim2.fromOffset(200, 40)
    billboardGui.StudsOffsetWorldSpace = Vector3.new(0, 3.5, 0)
    billboardGui.AlwaysOnTop = true
    billboardGui.MaxDistance = math.huge
    local va = ho:FindFirstChild("Head") or ho.PrimaryPart or ho:FindFirstChildWhichIsA("BasePart")
    billboardGui.Adornee = va
    billboardGui.Parent = folder
    local textLabel = Instance.new("TextLabel")
    textLabel.BackgroundTransparency = 1
    textLabel.Size = UDim2.fromScale(1, 1)
    textLabel.Font = Enum.Font.GothamBold
    textLabel.TextSize = 13
    textLabel.TextStrokeTransparency = 0.4
    textLabel.RichText = true
    textLabel.Parent = billboardGui
    local vb = { highlight = highlight, billboard = billboardGui, label = textLabel }
    po[ho] = vb
    return vb
end
local function fn577(en, eo, ep, eq, er)
    local tt = oZ(en, eo, ep, eq, er)
    if not o2("Wallbang") then
        return tt
    end
    for k, v in ep do
        local tu = px(eo, v)
        if tu then
            tt[k] = tu
        end
    end
    return tt
end
local function fn590(ee, ef)
    local tq = oa(ee, ef)
    if not tq then
        return nil
    end
    local tr = oM(tq)
    if not tr then
        return nil
    end
    return {
        position = tr.Position,
        normal = -ef.Unit,
        instance = tr,
        hitBlock = false,
        taggedZombie = tq,
        isHead = tr.Name == "Head"
    }
end
local function fn595(T, U)
    if setclipboard then
        setclipboard(T)
    elseif toclipboard then
        toclipboard(T)
    end
    Library:Notify(U)
end
local function fn644(aQ)
    local rd = aQ.Parent
    while rd do
        if rd:IsA("Attachment") then
            return rd.WorldPosition
        end
        if rd:IsA("BasePart") then
            return rd.Position
        end
        if rd:IsA("Model") then
            return rd:GetPivot().Position
        end
        rd = rd.Parent
    end
    return nil
end
local function fn653()
    local s0 = o2("KillAura") and ps and pG(ps.model)
    if s0 then
        return ps.model
    end
    local s0_1 = o2("SilentAim") and pm and pG(pm.model)
    if s0_1 then
        return pm.model
    end
    return nil
end
local function fn667()
    if not Toggles.ThirdPerson.Value then
        pk.CameraMinZoomDistance = CameraMinZoomDistance
        pk.CameraMode = CameraMode
    end
end
local function fn668()
    local Character = pk.Character
    local q2 = Character and Character:FindFirstChildOfClass("Humanoid")
    return q2
end
local function worker5()
    while not Library.Unloaded do
        task.wait(0.3)
        local wM = if not o2("AutoMysteryBox") then 1 else 0
        if wM == 1 then
            continue
        end
        local wD = od(MysteryBox.ModelTag)
        if not wD then
            continue
        end
        local MysteryBoxPrompt = wD:FindFirstChild("MysteryBoxPrompt", true)
        local wF = not MysteryBoxPrompt or not MysteryBoxPrompt:IsA("ProximityPrompt")
        if wF then
            continue
        end
        local attr2 = wD:GetAttribute("State")
        local wG = wD:GetAttribute("UserId") == pk.UserId
        if attr2 == "Grab" and wG then
            local attr = wD:GetAttribute("RollWeapon")
            local wD_1 = oi("BoxWeapons")
            local wH_1 = attr ~= ""
            local wI = typeof(attr) == "string" and wH_1
            if wI then
                local wH_2 = wD_1[attr] == true
                local wD_2 = wH_2 or o2("BoxTakeAny")
                if wD_2 then
                    pL(MysteryBoxPrompt)
                    local wD_3 = wH_2 and o2("BoxStopWhenObtained")
                    if wD_3 then
                        Toggles.AutoMysteryBox:SetValue(false)
                        Library:Notify("Got " .. attr .. ", stopped auto buying")
                    end
                    task.wait(1)
                end
            end
        elseif attr2 == "Idle" then
            local wD_4 = ow(MysteryBoxPrompt, MysteryBox.DefaultCost)
            if o8() - wD_4 >= oI("BoxReserve", 0) then
                pL(MysteryBoxPrompt)
                task.wait(0.75)
            end
        end
    end
end
local function onHeartbeat2()
    local uI = Library.Unloaded or not o2("KnifeKillAura")
    if uI then
        return
    end
    local _weaponName = MeleeController._weaponName
    local uJ = _weaponName and Melee[_weaponName]
    local uI_2 = uJ
    if uJ then
        uJ = uI_2.Stats
    end
    if uJ then
        uJ = uI_2.Stats.Light
    end
    local uI_3 = uJ
    local CurrentCamera = Workspace.CurrentCamera
    local uK = pK()
    if not uI_3 or not CurrentCamera or not uK then
        return
    end
    if os.clock() - MeleeController._lastAttackTime < uI_3.Cooldown then
        return
    end
    local uL_2 = nil
    local uM_1 = math.huge
    local uN_1 = nil
    for k, v in LightweightNpcsClientModule.npcRecords do
        local instance = v.instance
        if pG(instance) then
            local uP = o4(instance)
            local Magnitude = (uP - uK.Position).Magnitude
            if Magnitude <= uI_3.Range and Magnitude < uM_1 then
                if ol(CurrentCamera.CFrame.Position, instance, uP) then
                    uN_1 = instance
                    uL_2 = uP
                    uM_1 = Magnitude
                end
            end
        end
    end
    if not uN_1 then
        return
    end
    local attr = uN_1:GetAttribute("npcId")
    if typeof(attr) ~= "number" then
        return
    end
    MeleeController._lastAttackTime = os.clock()
    Blink.melee.Attack.Fire({
        Timestamp = Workspace:GetServerTimeNow(),
        Origin = CFrame.lookAt(CurrentCamera.CFrame.Position, uL_2, CurrentCamera.CFrame.UpVector),
        Heavy = false,
        Tagged = { ["1"] = attr }
    })
end
local function fn747(b1)
    local sb_2
    local sa_2
    local r9 = if o2("AuraHeadshots") then 1 else 0
    if r9 == 1 then
        local Head = b1:FindFirstChild("Head", true)
        local r5 = Head and Head:IsA("BasePart")
        if r5 then
            return Head
        end
        local r4_2 = b1.PrimaryPart
        if not ((sa_2 * 3069 + sb_2 * 1866 + sa_2 * sb_2) % 16777213 == 6591970) then
            r4_2 = b1:FindFirstChildWhichIsA("BasePart", true)
        end
        return r4_2
    end
    local r4_3 = b1.PrimaryPart
    local sc_2 = if r4_3 then 1 else 0
    sa_2 = 1412 * sc_2 + 3799 * (1 - sc_2)
    sb_2 = 689 * sc_2 + 1658 * (1 - sc_2)
    if not ((sa_2 * 3069 + sb_2 * 1866 + sa_2 * sb_2) % 16777213 == 6591970) then
        r4_3 = b1:FindFirstChildWhichIsA("BasePart", true)
    end
    return r4_3
end
local function fn785()
    if not Toggles.Fly.Value then
        local v3 = pu()
        if v3 then
            v3.PlatformStand = false
        end
    end
end
local function fn809()
    oD(pl, "Copied Discord invite to clipboard")
end
local function onUnload()
    Library:Unload()
end
local function fn833(ar, as)
    local qS = Options[ar]
    local qT = qS and tonumber(qS.Value)
    return qT or as
end
local function onCopyJoinScript_JobID()
    oD(string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, pM), "Copied join script to clipboard")
end
local function fn867()
    pE.AdjustAim = pA
    if oV then
        debug.setupvalue(WeaponController._shoot, oV, oZ)
    end
    if oR then
        debug.setupvalue(WeaponController._shoot, oR, oU)
    end
    WeaponController._canShoot = _canShoot
    WeaponController._startShootLoop = _startShootLoop
    ViewModelController.PlayReload = PlayReload
    ViewModelController.PlayShellReload = on
    pk.CameraMinZoomDistance = CameraMinZoomDistance
    pk.CameraMode = CameraMode
    local v8 = pu()
    if v8 then
        v8.PlatformStand = false
        v8.WalkSpeed = 16
    end
    for k in o9 do
        if k.Parent then
            k.CanCollide = true
        end
    end
    o0()
    folder:Destroy()
    connection5:Disconnect()
    connection6:Disconnect()
    connection7:Disconnect()
    connection3:Disconnect()
    connection4:Disconnect()
    connection:Disconnect()
    connection2:Disconnect()
    print("Zombie[Beta] unloaded")
end
local function fn896()
    Library.ScreenGui.Parent = pk:WaitForChild("PlayerGui")
end
local function onRenderStepped(h7)
    if Library.Unloaded then
        return
    end
    if o2("WalkSpeedEnabled") then
        local vI_1 = pu()
        if vI_1 then
            vI_1.WalkSpeed = oI("WalkSpeed", 32)
        end
    end
    if o2("NoClip") then
        local Character = pk.Character
        if Character then
            for i, descendant in Character:GetDescendants() do
                local vI_3 = descendant:IsA("BasePart") and descendant.CanCollide
                if vI_3 then
                    descendant.CanCollide = false
                    o9[descendant] = true
                end
            end
        end
    elseif next(o9) then
        for k in o9 do
            if k.Parent then
                k.CanCollide = true
            end
        end
        table.clear(o9)
    end
    if o2("Fly") then
        local vI_4 = pK()
        local vJ = pu()
        local CurrentCamera = Workspace.CurrentCamera
        if vI_4 and vJ and CurrentCamera then
            vJ.PlatformStand = true
            local vJ_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                vJ_1 = vJ_1 + CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                vJ_1 = vJ_1 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                vJ_1 = vJ_1 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                vJ_1 = vJ_1 + CurrentCamera.CFrame.RightVector
            end
            local v2 = if UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
            if v2 == 1 then
                vJ_1 = vJ_1 + Vector3.yAxis
            end
            local vQ = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
            if vQ == 1 then
                vJ_1 = vJ_1 - Vector3.yAxis
            end
            vI_4.AssemblyLinearVelocity = Vector3.zero
            if vJ_1.Magnitude > 0 then
                vI_4.CFrame = vI_4.CFrame + vJ_1.Unit * oI("FlySpeed", 60) * h7
            end
        end
    end
    if o2("ThirdPerson") then
        local vI_5 = oI("ThirdPersonDistance", 12)
        if pk.CameraMode ~= Enum.CameraMode.Classic then
            pk.CameraMode = Enum.CameraMode.Classic
        end
        if pk.CameraMinZoomDistance ~= vI_5 then
            pk.CameraMinZoomDistance = vI_5
        end
    end
end
local function fn942(bX)
    if o2("AuraHeadshots") then
        local Head = bX:FindFirstChild("Head", true)
        local r2 = Head and Head:IsA("BasePart")
        if r2 then
            return Head.Position
        end
        return bX:GetPivot().Position
    end
    return bX:GetPivot().Position
end
local function worker2()
    while not Library.Unloaded do
        task.wait(oI("GearUpgradeDelay", 0.75))
        if not o2("AutoUpgradeGears") then
            continue
        end
        local xd = appStore.getAccounts()[tostring(pk.UserId)]
        if not xd then
            continue
        end
        local xe = loadoutStore.getLoadout()
        local xg = xd.WeaponLevels or {}
        local xf_1 = oI("GearUpgradeMax", weaponUpgrades.MaxLevel)
        local xg_1 = oI("GearUpgradeReserve", 0)
        local xh = {}
        for k, v in { xe.Slot1, xe.Slot2 } do
            local xe_1 = typeof(v) ~= "string" or v == "" or xh[v]
            if not xe_1 then
                xh[v] = true
                local xe_2 = weaponUpgrades.levelOf(xg, v)
                local xi = xe_2 < xf_1 and weaponUpgrades.costFor(xe_2)
                local xe_3 = xi or nil
                local xi_1 = xe_3
                if xe_3 then
                    xe_3 = o8() - xi_1 >= xg_1
                end
                if xe_3 then
                    Blink.weapon.Upgrade.Fire(v)
                    break
                end
            end
        end
    end
end
local function onJumpRequest()
    local vD = Library.Unloaded or not o2("InfJump")
    if vD then
        return
    end
    local vD_1 = pu()
    if vD_1 then
        vD_1:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end
local function fn977(bQ)
    if not bQ or not bQ.Parent then
        return false
    elseif CollectionService:HasTag(bQ, Tags.Friendly) then
        return false
    else
        local attr = bQ:GetAttribute("Hp")
        local r_ = typeof(attr) ~= "number" or attr > 0
        return r_
    end
end
local function fn985()
    for k in po do
        ph(k)
    end
end
local function fn1079(cy, cz)
    local sk = not cy
    local sk_4
    local st = if sk then 1 else 0
    local sr = 2471 * st + 914 * (1 - st)
    local ss = 2459 * st + 1078 * (1 - st)
    if not ((sr * 1234 + ss * 1730 + sr * ss) % 16777213 == 13379473) then
        sk = not pG(cy.model)
    end
    if sk then
        return false
    end
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return false
    end
    local Position = CurrentCamera.CFrame.Position
    local sm = o4(cy.model)
    local sn = sm - Position
    local Magnitude = sn.Magnitude
    local sp = Magnitude <= 1 or Magnitude > oI("AuraRange", 250)
    if sp then
        return false
    elseif cz then
        local sp_1 = CurrentCamera.CFrame.LookVector:Dot(sn.Unit)
        local sk_2 = math.acos(math.clamp(sp_1, -1, 1))
        if sk_2 > cz then
            return false
        end
        cy.angle = sk_2
        local sk_3 = o2("AuraWallCheck") and not o2("Wallbang") and not ol(Position, cy.model, sm)
        if sk_4 then
            return false
        end
        cy.point = sm
        cy.distance = Magnitude
        return true
    else
        sk_4 = o2("AuraWallCheck") and not o2("Wallbang") and not ol(Position, cy.model, sm)
        if sk_4 then
            return false
        end
        cy.point = sm
        cy.distance = Magnitude
        return true
    end
end
local function onHeartbeat3(hy)
    if Library.Unloaded then
        return
    end
    n8 += hy
    if n8 < 0.1 then
        return
    end
    n8 = 0
    if not o2("ZombieEsp") then
        if next(po) then
            o0()
        end
        return
    end
    local vd = pK()
    if not vd then
        o0()
        return
    end
    local ve = Options.EspColor and Options.EspColor.Value
    local vf = ve or Color3.fromRGB(255, 60, 60)
    local vf_1 = oI("EspRange", 500)
    local vg = {}
    for k, v in LightweightNpcsClientModule.npcRecords do
        local instance = v.instance
        if pG(instance) then
            local Position = instance:GetPivot().Position
            local Magnitude = (Position - vd.Position).Magnitude
            if Magnitude <= vf_1 then
                vg[instance] = true
                local vi_1 = po[instance] or oK(instance)
                vi_1.highlight.Enabled = o2("EspHighlight")
                vi_1.highlight.FillColor = vf
                vi_1.highlight.OutlineColor = vf
                local vi_2 = {}
                if o2("EspName") then
                    table.insert(vi_2, instance.Name)
                end
                if o2("EspHealth") then
                    local attr2 = instance:GetAttribute("Hp")
                    local attr = instance:GetAttribute("MaxHp")
                    if typeof(attr2) == "number" then
                        local insert = table.insert
                        local vo = typeof(attr) == "number" and "/" .. attr
                        local vm_1 = vo or ""
                        insert(vi_2, string.format("%d%s", attr2, vm_1))
                    end
                end
                if o2("EspDistance") then
                    table.insert(vi_2, string.format("%dm", Magnitude))
                end
                vi_1.label.Text = table.concat(vi_2, "  ")
                vi_1.label.TextColor3 = vf
                vi_1.billboard.Enabled = #vi_2 > 0
            end
        end
    end
    for k in po do
        if not vg[k] then
            ph(k)
        end
    end
end
local function fn1098(dK, dL)
    local Magnitude2 = dL.Magnitude
    if Magnitude2 <= 1 then
        return nil
    end
    local s6 = dL / Magnitude2
    local s7 = oB()
    if s7 then
        local s8_1 = o4(s7)
        local s9_1 = (s8_1 - dK):Dot(s6)
        if s9_1 > 0 and s9_1 <= Magnitude2 + 4 then
            return s7
        end
        local s7_1 = math.huge
        local s8_3 = nil
        local s9_2 = math.huge
        for k, v in LightweightNpcsClientModule.npcRecords do
            local instance = v.instance
            if pG(instance) then
                local tb_1 = o4(instance)
                local tc_1 = tb_1 - dK
                local tb_2 = tc_1:Dot(s6)
                if tb_2 > 0 and tb_2 <= Magnitude2 + 4 then
                    local Magnitude = (tc_1 - s6 * tb_2).Magnitude
                    local tc_2 = Magnitude <= 6
                    if tc_2 then
                        local te_1 = Magnitude < s7_1
                        if not te_1 then
                            te_1 = Magnitude == s7_1 and tb_2 < s9_2
                        end
                        tc_2 = te_1
                    end
                    if tc_2 then
                        s8_3 = instance
                        s7_1 = Magnitude
                        s9_2 = tb_2
                    end
                end
            end
        end
        return s8_3
    end
    local s7_2 = math.huge
    local s8_4 = nil
    local s9_3 = math.huge
    for k, v in LightweightNpcsClientModule.npcRecords do
        local instance = v.instance
        if pG(instance) then
            local tb_3 = o4(instance)
            local tc_3 = tb_3 - dK
            local tb_4 = tc_3:Dot(s6)
            if tb_4 > 0 and tb_4 <= Magnitude2 + 4 then
                local Magnitude = (tc_3 - s6 * tb_4).Magnitude
                local tc_4 = Magnitude <= 6
                if tc_4 then
                    local te_2 = Magnitude < s7_2
                    if not te_2 then
                        te_2 = Magnitude == s7_2 and tb_4 < s9_3
                    end
                    tc_4 = te_2
                end
                if tc_4 then
                    s8_4 = instance
                    s7_2 = Magnitude
                    s9_3 = tb_4
                end
            end
        end
    end
    return s8_4
end
local function fn1107()
    local leaderstats = pk:FindFirstChild("leaderstats")
    local q5 = leaderstats and leaderstats:FindFirstChild("Points")
    local q4_1 = q5
    if q5 then
        q5 = q4_1.Value
    end
    local q4_2 = q5
    local rc = if q4_2 then 1 else 0
    local ra = 2092 * rc + 1726 * (1 - rc)
    local rb = 562 * rc + 3226 * (1 - rc)
    if not ((ra * 3957 + rb * 57 + ra * rb) % 16777213 == 9485782) then
        q4_2 = 0
    end
    return q4_2
end
local function fn1112()
    local rA_2
    local ry_1
    local rz_1, rz_2
    if pv then
        return pv
    end
    local rx = {}
    for k, v in {
        Constants:WaitForChild("Drops"),
        Constants:WaitForChild("PlaceIds"),
        Constants:WaitForChild("Sounds"),
        Constants:WaitForChild("WeaponSystem"),
        Shared:WaitForChild("Utils"):WaitForChild("sounds"),
        ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Blink"),
        Client:WaitForChild("LightweightNpcs"):WaitForChild("LightweightNpcsClientModule")
    } do
        ry_1, rz_1 = pcall(require, v)
        local rA_1 = ry_1 and typeof(rz_1) == "table"
        if rA_1 then
            rx[rz_1] = true
        end
    end
    local ry_2 = nil
    local rQ = 1
    while rQ <= 24 do
        local rR = rQ
        rz_2, rA_2 = pcall(debug.getupvalue, DropController.start, rR)
        if not rz_2 then
            break
        end
        local rz_3 = typeof(rA_2) == "table" and not rx[rA_2]
        if rz_3 then
            for k, v in rA_2 do
                local rz_4 = typeof(v) == "table" and v.kind ~= nil and v.model ~= nil
                if rz_4 then
                    pv = rA_2
                    return pv
                end
            end
            if ry_2 == nil then
                ry_2 = rA_2
            else
                ry_2 = false
            end
        end
        rQ += 1
    end
    if ry_2 then
        pv = ry_2
    end
    return pv
end
local function fn1200(ad, ae, af)
    return string.format("<b>%s</b> %s %s", ad, oc("-", "#5a6070"), oc(ae, af))
end
AmmoBox = nil
connection3 = nil
n8 = nil
Label = nil
oa = nil
MysteryBox = nil
oc = nil
od = nil
connection2 = nil
of = nil
Melee = nil
oi = nil
Label4 = nil
ol = nil
om = nil
on = nil
Label3 = nil
LightweightNpcsClientModule = nil
PlayReload = nil
Label2 = nil
loadoutStore = nil
_startShootLoop = nil
ow = nil
connection = nil
appStore = nil
_canShoot = nil
oA = nil
oB = nil
DropController = nil
oD = nil
oE = nil
ViewModelController = nil
Options = nil
oH = nil
oI = nil
oK = nil
connection6 = nil
oM = nil
Toggles = nil
oO = nil
MeleeController = nil
oQ = nil
oR = nil
oS = nil
WeaponController = nil
oU = nil
oV = nil
oW = nil
local og, oJ
connection7 = nil
Constants = nil
oZ = nil
o_ = nil
o0 = nil
o1 = nil
o2 = nil
Shared = nil
o4 = nil
Library = nil
o6 = nil
o7 = nil
o8 = nil
o9 = nil
Client = nil
pb = nil
pc = nil
CameraMinZoomDistance = nil
pe = nil
pf = nil
pg = nil
ph = nil
CameraMode = nil
pj = nil
pk = nil
pl = nil
pm = nil
pn = nil
po = nil
connection5 = nil
pq = nil
Workspace = nil
ps = nil
folder = nil
pu = nil
pv = nil
CollectionService = nil
px = nil
Blink = nil
connection4 = nil
pA = nil
pB = nil
VirtualUser = nil
weaponUpgrades = nil
pE = nil
UserInputService = nil
pG = nil
Tags = nil
pJ = nil
local wallWeaponGate
pK = nil
pL = nil
pM = nil
ReplicatedStorage = nil
pO = nil
pP = nil
ReplicatedStorage, UserInputService, VirtualUser, CollectionService, Workspace, pk = nil, nil, nil, nil, nil, nil
local xF_1 = game:GetService("Players")
ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
CollectionService = game:GetService("CollectionService")
Workspace = game:GetService("Workspace")
pk = xF_1.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return pk:WaitForChild("PlayerGui")
    end
end
Client, Shared, Constants, WeaponController, MeleeController, ViewModelController, DropController, appStore, loadoutStore, LightweightNpcsClientModule, Melee, MysteryBox, AmmoBox, pO, wallWeaponGate, weaponUpgrades, Blink, pl, pf, Library, Toggles, Options, pn, pc, o7, oD, om, oc, pJ, o2, oI, oi, pK, pu, o8, oJ, ow, og, pL = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Client = ReplicatedStorage:WaitForChild("Client")
Shared = ReplicatedStorage:WaitForChild("Shared")
local xF_30 = Client:WaitForChild("Controllers")
Constants = Shared:WaitForChild("Constants")
WeaponController = require(xF_30:WaitForChild("WeaponController"))
MeleeController = require(xF_30:WaitForChild("MeleeController"))
local xF_6 = require(xF_30:WaitForChild("AimAssistController"))
ViewModelController = require(xF_30:WaitForChild("ViewModelController"))
DropController = require(xF_30:WaitForChild("DropController"))
appStore = require(Client:WaitForChild("Stores"):WaitForChild("appStore"))
loadoutStore = require(Client:WaitForChild("Stores"):WaitForChild("loadoutStore"))
LightweightNpcsClientModule = require(Client:WaitForChild("LightweightNpcs"):WaitForChild("LightweightNpcsClientModule"))
local xF_18 = require(Constants:WaitForChild("WeaponSystem"))
Melee = require(Constants:WaitForChild("Melee"))
local xF_32 = require(Constants:WaitForChild("Drops"))
MysteryBox = require(Constants:WaitForChild("MysteryBox"))
AmmoBox = require(Constants:WaitForChild("AmmoBox"))
pO = require(Shared:WaitForChild("Utils"):WaitForChild("castRays"))
local xF_35 = require(Shared:WaitForChild("Utils"):WaitForChild("castPierce"))
wallWeaponGate = require(Shared:WaitForChild("Utils"):WaitForChild("wallWeaponGate"))
weaponUpgrades = require(Shared:WaitForChild("Utils"):WaitForChild("weaponUpgrades"))
Blink = require(ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Blink"))
local xF_22 = "Zombie[Beta]"
pl = "https://discord.gg/ehKVq7pf7v"
pf = "https://rscripts.net/@Ouroboros"
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
pcall(fn896)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
oD = fn595
om = fn809
oc = fns.fn360
pJ = fn1200
pn = "#7fd47f"
local xF_37 = "#6ec1ff"
pc = "#e8a34d"
o7 = "#8b93a3"
o2 = fns.fn507
oI = fn833
oi = fns.fn451
pK = fns.fn168
pu = fn668
o8 = fn1107
oJ = fn644
ow = fns.fn143
og = function(aX)
    local Enabled = aX.Enabled
    aX.Enabled = true
    pcall(function()
        fireproximityprompt(aX)
    end)
    aX.Enabled = Enabled
end
pL = function(a0, a1)
    local rj, rk, rl
    rj = pK()
    if not rj then
        return false
    end
    rl = oJ(a0)
    if not rl then
        return false
    end
    local rm = math.max(a0.MaxActivationDistance - 2, 4)
    if (rj.Position - rl).Magnitude <= rm then
        og(a0)
        return true
    end
    local rm_1 = not a1
    if rm_1 ~= false then
        rm_1 = not o2("TeleportToBuy")
    end
    if rm_1 then
        return false
    end
    local Character = pk.Character
    local CFrame2 = rj.CFrame
    rk = rl + Vector3.new(0, 4, 0)
    local ro = a0.Parent and a0.Parent:IsA("Attachment")
    if ro then
        local ro_1 = wallWeaponGate.outwardNormal(rl)
        if ro_1 then
            rk = rl + ro_1 * 4 + Vector3.new(0, 2, 0)
        end
    end
    local ro_2 = pcall(function()
        rj.CFrame = CFrame.lookAt(rk, rl)
        task.wait(0.3)
        og(a0)
        task.wait(0.25)
    end)
    if rj.Parent and pk.Character == Character then
        rj.CFrame = CFrame2
    end
    return ro_2
end
local xF_10 = {}
for k, v in MysteryBox.Pool do
    table.insert(xF_10, v.Weapon)
end
pB, pv, Tags, ps, pm, pg, pb, o6, o1, o_, oW, oQ, oO, pq, pG, o4, oM, ol, oH, of, oE = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
table.sort(xF_10)
pB = { Gems = xF_32.KindGem, Ammo = xF_32.KindAmmo, Crates = xF_32.KindCrate }
pv = nil
pq = fn1112
Tags = xF_18.Tags
pG = fn977
o4 = fn942
oM = fn747
ol = fns.fn54
ps = nil
pm = nil
pg = 5
pb = 0.75
o6 = 3
o1 = setmetatable({}, { __mode = "k" })
o_ = nil
oW = nil
oQ = 0
oO = nil
oH = fns.fn486
of = fn1079
oE = function(cO, cP)
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return nil
    end
    local Position = CurrentCamera.CFrame.Position
    local LookVector = CurrentCamera.CFrame.LookVector
    local sy_1 = oI("AuraRange", 250)
    local sB = o2("AuraWallCheck") and not o2("Wallbang")
    local sC = {}
    for k, v in LightweightNpcsClientModule.npcRecords do
        local instance = v.instance
        local sF = cP and o1[instance] or nil
        local sE_1 = sF
        if sF then
            sF = sE_1 <= os.clock()
        end
        if sF then
            o1[instance] = nil
            sE_1 = nil
        end
        local sF_1 = not sE_1
        if sF_1 ~= false then
            sF_1 = pG(instance)
        end
        if sF_1 then
            local sE_2 = o4(instance)
            local sF_2 = sE_2 - Position
            local Magnitude = sF_2.Magnitude
            if Magnitude <= sy_1 and Magnitude > 1 then
                local sH_1 = math.acos(math.clamp(LookVector:Dot(sF_2.Unit), -1, 1))
                if not cO or sH_1 <= cO then
                    table.insert(sC, { model = instance, point = sE_2, distance = Magnitude, angle = sH_1 })
                end
            end
        end
    end
    table.sort(sC, function(df, dg)
        if cO then
            return df.angle < dg.angle
        end
        return df.distance < dg.distance
    end)
    for k, v in sC do
        local sy_2 = not sB or ol(Position, v.model, v.point)
        if sy_2 then
            return v
        end
    end
    return nil
end
xF_1 = WeaponController.AimAssistController or xF_6
pE, pA, oZ, oU, oV, oR, oB, oa, px, xF_3, xF_32 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
xF_30 = 2
repeat
    xF_18 = (xF_30 * 3 + 0) % 4 + 1
    if xF_18 <= 2 then
        if xF_18 <= 1 then
            xF_6 = (vector.create((xF_30 * 4 + 3) % 11 + 1, (xF_30 * 8 + 7) % 13 + 1, (xF_30 * 4 + 9) % 17 + 1))
            xF_39 = (vector.create((xF_30 * 5 + 9) % 11 + 1, (xF_30 * 2 + 5) % 13 + 1, (xF_30 * 1 + 6) % 17 + 1))
            xF_25 = (vector.create((xF_30 * 1 + 7) % 5 + 1, (xF_30 * 2 + 6) % 7 + 1, (xF_30 * 5 + 4) % 9 + 1))
            if math.abs((vector.angle(xF_6, xF_39, xF_25))) - math.abs((vector.angle(xF_39, xF_6, xF_25))) == 0 then
                xF_3 = fn577
            else
                oB = fn577
            end
            xF_30 = (xF_30 + 15) % 32
        else
            xF_6 = {
                "nmjpyak",
                "mcga",
                "wapi",
                "qjddyq",
                "rbc",
                "jtctqjup",
                "evi",
                "shturnzziaq",
                "ajpnpccsyyha",
                "fpauptt",
                "opx",
                "jicewsmcgkc"
            }
            if xF_6[(xF_30 * 30 + 32) % 12 + 1] <= xF_6[(xF_30 * 30 + 32) % 12 + 1] then
                xF_32 = fns.fn69
                oV = nil
                oR = nil
            else
                oR = fns.fn69
                xF_32 = nil
                oV = nil
            end
            xF_30 = (xF_30 + 3) % 32
        end
    elseif xF_18 <= 3 then
        xF_18 = (vector.create((xF_30 * 4 + 3) % 11 + 1, (xF_30 * 5 + 1) % 13 + 1, (xF_30 * 4 + 7) % 17 + 1))
        xF_6 = (vector.create((xF_30 * 5 + 9) % 11 + 1, (xF_30 * 4 + 13) % 13 + 1, (xF_30 * 6 + 3) % 17 + 1))
        xF_39 = (vector.create((xF_30 * 6 + 6) % 11 + 1, (xF_30 * 8 + 10) % 13 + 1, (xF_30 * 8 + 12) % 17 + 1))
        xF_25 = (vector.create((xF_30 * 2 + 5) % 5 + 1, (xF_30 * 5 + 6) % 7 + 1, (xF_30 * 4 + 3) % 9 + 1))
        if vector.dot(vector.cross(xF_18, (vector.cross(xF_6, xF_39))), xF_25) == vector.dot(xF_6 * vector.dot(xF_18, xF_39) - xF_39 * vector.dot(xF_18, xF_6), xF_25) then
            pE = xF_1
            pA = pE.AdjustAim
            pE.AdjustAim = fns.fn391
            oB = fn653
            oa = fn1098
            px = fn590
        else
            oa = oB
            px = oa.AdjustAim
            oa.AdjustAim = fns.fn391
            pA = fn653
            pE = fn1098
            xF_1 = fn590
        end
        xF_30 = (xF_30 + 27) % 32
    else
        if (xF_30 * 3 + 6) * 9 % 4 == ((xF_30 * 3 + 6) * 9 + 8) % 4 then
            oZ = pO
            oU = xF_35
        else
            oU = xF_35
            pO = oZ
        end
        xF_30 = (xF_30 + 27) % 32
    end
until (xF_30 * 9 + 26) % 32 == 20
local qC = 1
while qC <= 40 do
    local qD = qC
    xF_1, xF_30 = pcall(debug.getupvalue, WeaponController._shoot, qD)
    if not xF_1 then
        break
    end
    if xF_30 == pO then
        oV = qD
        debug.setupvalue(WeaponController._shoot, qD, xF_3)
    elseif xF_30 == xF_35 then
        oR = qD
        debug.setupvalue(WeaponController._shoot, qD, xF_32)
    end
    qC += 1
end
_canShoot, _startShootLoop, PlayReload, on, xF_6, od, xF_18 = nil, nil, nil, nil, nil, nil, nil
_canShoot = WeaponController._canShoot
_startShootLoop = WeaponController._startShootLoop
PlayReload = ViewModelController.PlayReload
if (xF_18 and not od or (xF_18 or xF_18)) and (not od and xF_18 or (not xF_6 or od)) and not ((xF_18 and not od or (xF_18 or xF_18)) and (not od and xF_18 or (not xF_6 or od))) then
    od = WeaponController.PlayShellReload
    ViewModelController._canShoot = fns.fn392
    ViewModelController._startShootLoop = function(e_)
        if not o2("RapidFire") then
            return _startShootLoop(e_)
        end
        if e_._shootingThread then
            return
        end
        e_._shootingThread = task.spawn(function()
            while e_._activated do
                if e_:_canShoot() then
                    e_:_shoot()
                elseif e_._ammo <= 0 and not e_._reloading then
                    e_:Reload()
                end
                task.wait(math.max(oI("RapidFireDelay", 0.05), 0.01))
            end
            e_._shootingThread = nil
        end)
    end
    WeaponController.PlayReload = fns.fn81
    WeaponController.PlayShellReload = fns.fn111
    on = fns.fn4
else
    on = ViewModelController.PlayShellReload
    WeaponController._canShoot = fns.fn392
    WeaponController._startShootLoop = function(e_)
        if not o2("RapidFire") then
            return _startShootLoop(e_)
        end
        if e_._shootingThread then
            return
        end
        e_._shootingThread = task.spawn(function()
            while e_._activated do
                if e_:_canShoot() then
                    e_:_shoot()
                elseif e_._ammo <= 0 and not e_._reloading then
                    e_:Reload()
                end
                task.wait(math.max(oI("RapidFireDelay", 0.05), 0.01))
            end
            e_._shootingThread = nil
        end)
    end
    ViewModelController.PlayReload = fns.fn81
    ViewModelController.PlayShellReload = fns.fn111
    od = fns.fn4
end
xF_1 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = "https://discord.gg/ehKVq7pf7v | Zombie[Beta]",
    Icon = 18657887261,
    NotifySide = "Right",
    ShowCustomCursor = false
})
xF_6 = {
    Info = xF_1:AddTab("Info", "info"),
    Combat = xF_1:AddTab("Combat", "crosshair"),
    Loot = xF_1:AddTab("Loot", "gem"),
    Shop = xF_1:AddTab("Shop", "shopping-cart"),
    Player = xF_1:AddTab("Player", "user"),
    Settings = xF_1:AddTab("Settings", "settings")
}
xF_18 = fns.fn234
for k, v in xF_6 do
    xF_18(v)
end
oA, xF_1, xF_32, Label, pP, pM, xF_3 = nil, nil, nil, nil, nil, nil, nil
xF_30 = 7
repeat
    xF_18 = (xF_30 * 2 + 2) % 3 + 1
    if xF_18 <= 2 then
        if xF_18 <= 1 then
            if (xF_30 * 2 + 8) * 16 % 3 == ((xF_30 * 2 + 8) * 16 + 0) % 3 then
                xF_3 = #pM > 18
            else
                pM = #xF_3 > 18
            end
            xF_30 = (xF_30 + 11) % 12
        else
            if (xF_1 or xF_30) and (xF_3 or not xF_1) and (not pM and xF_30 or not xF_3 and not xF_30) or not ((xF_1 or xF_30) and (xF_3 or not xF_1) and (not pM and xF_30 or not xF_3 and not xF_30)) then
                oA = "Unknown"
                pcall(fns.fn185)
                xF_1 = xF_6.Info:AddLeftGroupbox("Account", "circle-user")
                xF_1:AddLabel(pJ("User", pk.Name, pn), true)
                xF_1:AddLabel(pJ("Status", "Keyless", pn), true)
                xF_1:AddLabel(pJ("Executor", oA, pn), true)
                xF_32 = xF_6.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                xF_32:AddLabel(oc(xF_22 .. " [" .. tostring(game.PlaceId) .. "]", xF_37), true)
                xF_32:AddLabel(pJ("Place ID", tostring(game.PlaceId), xF_37), true)
                Label = xF_32:AddLabel(pJ("Session time", "0s", pc), true)
                pP = os.clock()
            else
                pJ = "Unknown"
                pcall(fns.fn185)
                pk = (nil):AddLeftGroupbox("Account", "circle-user")
                pk:AddLabel(xF_1("User", oc.Name, Label), true)
                pk:AddLabel(xF_1("Status", "Keyless", Label), true)
                pk:AddLabel(xF_1("Executor", pJ, Label), true)
                xF_22 = (nil):AddLeftGroupbox("Game Info", "gamepad-2")
                xF_22:AddLabel(oA(xF_32 .. " [" .. tostring(game.PlaceId) .. "]", xF_6), true)
                xF_22:AddLabel(xF_1("Place ID", tostring(game.PlaceId), xF_6), true)
                pP = xF_22:AddLabel(xF_1("Session time", "0s", xF_37), true)
                pc = os.clock()
            end
            xF_30 = (xF_30 + 2) % 12
        end
    else
        xF_18 = {
            "yrjahxjtwnyw",
            "gbfjxsvk",
            "blwvx",
            "epiamzbmhx",
            "mpbyeuuknjk",
            "awxzy",
            "mdrzr",
            "higyqazmne",
            "bvcpcfrpkvdp",
            "bhiptht",
            "mjbzrakv",
            "suvllwbnlel",
            "zpesqoazkun"
        }
        if xF_18[(xF_30 * 30 + 59) % 13 + 1] < xF_18[(xF_30 * 30 + 59) % 13 + 1] then
            xF_32 = tostring(game.JobId)
        else
            pM = tostring(game.JobId)
        end
        xF_30 = (xF_30 + 2) % 12
    end
until (xF_30 * 11 + 10) % 12 == 0
if xF_3 then
    xF_1 = 2
    repeat
        xF_30 = { "xraniud", "jwqhhfoyiqe", "enkukxouf", "jxvhocpwkre", "fccs", "lrkx", "hxzcga" }
        local yt = xF_1
        xF_18 = xF_30[yt % 7 + 1]
        local qz = if xF_18:len() <= xF_18:reverse():rep(yt % 3 + 2):len() then 1 else 0
        if qz == 1 then
            xF_3 = string.sub(pM, 1, 18) .. "..."
        else
            pM = string.sub(xF_3, 1, 18) .. "..."
        end
        xF_1 = (xF_1 + 0) % 4
    until (xF_1 * 3 + 1) % 4 == 3
end
xF_1 = xF_3 or pM
ScriptsGroup, SocialsGroup, SilentAimGroup, WeaponModsGroup, Label2, Label3, Label4, xF_30, GearUpgradesGroup, MovementGroup, pj, pe, connection, connection2, connection3, connection4, folder, po, n8, connection5, CameraMode, CameraMinZoomDistance, o9, connection6, connection7, oS, ph, o0, oK = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local xF_19 = xF_1
xF_32:AddLabel(pJ("Server", xF_19, o7), true)
xF_32:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
local OuroborosHubGroup = xF_6.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
if (not CameraMinZoomDistance and not connection3 or (connection3 or not SocialsGroup)) and ((SilentAimGroup or not connection3) and (SocialsGroup or GearUpgradesGroup)) and ((connection3 or GearUpgradesGroup or (not SilentAimGroup or not SilentAimGroup)) and (connection3 or SilentAimGroup or (not SilentAimGroup or connection3))) or not ((not CameraMinZoomDistance and not connection3 or (connection3 or not SocialsGroup)) and ((SilentAimGroup or not connection3) and (SocialsGroup or GearUpgradesGroup)) and ((connection3 or GearUpgradesGroup or (not SilentAimGroup or not SilentAimGroup)) and (connection3 or SilentAimGroup or (not SilentAimGroup or connection3)))) then
    OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = om })
    ScriptsGroup = xF_6.Info:AddRightGroupbox("Scripts", "package")
else
    ScriptsGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    ScriptsGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    ScriptsGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    ScriptsGroup:AddButton({ Text = "Copy Discord Invite", Func = OuroborosHubGroup })
    xF_6 = om.Info:AddRightGroupbox("Scripts", "package")
end
ScriptsGroup:AddLabel(oc("Included in this hub", o7), true)
ScriptsGroup:AddLabel(oc(xF_22, xF_37), true)
local FeaturesGroup = xF_6.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(oc("Kill Aura", xF_37), true)
FeaturesGroup:AddLabel(oc("Silent Aim", xF_37), true)
FeaturesGroup:AddLabel(oc("Zombie ESP", xF_37), true)
FeaturesGroup:AddLabel(oc("Instant Collect Loot", xF_37), true)
FeaturesGroup:AddLabel(oc("Loot Filters", pc), true)
FeaturesGroup:AddLabel(oc("Auto Buy Mystery Box", pc), true)
FeaturesGroup:AddLabel(oc("Auto Buy Area", pn), true)
FeaturesGroup:AddLabel(oc("Auto Buy Ammo", pn), true)
FeaturesGroup:AddLabel(oc("Player Movement", o7), true)
SocialsGroup = xF_6.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = om })
SocialsGroup:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
local FaqGroup = xF_6.Info:AddRightGroupbox("FAQ", "circle-help")
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
local KillAuraGroup = xF_6.Combat:AddLeftGroupbox("Kill Aura", "crosshair")
KillAuraGroup:AddToggle("KillAura", { Text = "Kill Aura", Default = false })
KillAuraGroup:AddToggle("AuraAutoReload", { Text = "Auto Reload", Default = true })
KillAuraGroup:AddToggle("KnifeKillAura", { Text = "Knife Kill Aura", Default = false })
SilentAimGroup = xF_6.Combat:AddLeftGroupbox("Silent Aim", "target")
if (not SilentAimGroup and FaqGroup and (not FaqGroup or FaqGroup) or (SilentAimGroup or not SilentAimGroup) and (SilentAimGroup and FaqGroup)) and (SilentAimGroup and not SilentAimGroup or not SilentAimGroup and not FaqGroup or (not FaqGroup and not FaqGroup or SilentAimGroup and not SilentAimGroup)) or (FaqGroup and SilentAimGroup or FaqGroup and not FaqGroup or not SilentAimGroup and not FaqGroup and (not FaqGroup and SilentAimGroup) or not SilentAimGroup and FaqGroup and (not FaqGroup and SilentAimGroup) and ((FaqGroup or not SilentAimGroup) and (SilentAimGroup or FaqGroup))) or not ((not SilentAimGroup and FaqGroup and (not FaqGroup or FaqGroup) or (SilentAimGroup or not SilentAimGroup) and (SilentAimGroup and FaqGroup)) and (SilentAimGroup and not SilentAimGroup or not SilentAimGroup and not FaqGroup or (not FaqGroup and not FaqGroup or SilentAimGroup and not SilentAimGroup)) or (FaqGroup and SilentAimGroup or FaqGroup and not FaqGroup or not SilentAimGroup and not FaqGroup and (not FaqGroup and SilentAimGroup) or not SilentAimGroup and FaqGroup and (not FaqGroup and SilentAimGroup) and ((FaqGroup or not SilentAimGroup) and (SilentAimGroup or FaqGroup)))) then
    SilentAimGroup:AddToggle("SilentAim", { Text = "Silent Aim", Default = false })
    SilentAimGroup:AddSlider("SilentFov", { Text = "FOV", Default = 60, Min = 5, Max = 360, Rounding = 0, Suffix = " deg" })
    WeaponModsGroup = xF_6.Combat:AddRightGroupbox("Weapon Mods", "zap")
else
    WeaponModsGroup:AddToggle("SilentAim", { Text = "Silent Aim", Default = false })
    WeaponModsGroup:AddSlider("SilentFov", { Suffix = " deg", Text = "FOV", Default = 60, Rounding = 0, Min = 5, Max = 360 })
    xF_6 = SilentAimGroup.Combat:AddRightGroupbox("Weapon Mods", "zap")
end
WeaponModsGroup:AddToggle("InstantReload", { Text = "Instant Reload", Default = false })
WeaponModsGroup:AddToggle("RapidFire", { Text = "Rapid Fire", Default = false })
WeaponModsGroup:AddToggle("Wallbang", { Text = "Wallbang", Default = false })
WeaponModsGroup:AddSlider("RapidFireDelay", { Text = "Shot Delay", Default = 0.05, Min = 0.01, Max = 0.25, Rounding = 2, Suffix = "s" })
local AimSettingsGroup = xF_6.Combat:AddLeftGroupbox("Aim Settings", "settings-2")
AimSettingsGroup:AddSlider("AuraRange", { Text = "Range", Default = 250, Min = 20, Max = 500, Rounding = 0, Suffix = " studs" })
AimSettingsGroup:AddToggle("AuraHeadshots", { Text = "Aim Head", Default = true })
AimSettingsGroup:AddToggle("AuraWallCheck", { Text = "Wall Check", Default = true })
xF_39 = xF_6.Combat:AddRightGroupbox("Zombie ESP", "eye")
xF_39:AddToggle("ZombieEsp", { Text = "Zombie ESP", Default = false }):AddColorPicker("EspColor", { Default = Color3.fromRGB(255, 60, 60), Title = "ESP Color" })
xF_39:AddToggle("EspHighlight", { Text = "Highlight", Default = true })
xF_39:AddToggle("EspName", { Text = "Name", Default = true })
xF_39:AddToggle("EspHealth", { Text = "Health", Default = true })
xF_39:AddToggle("EspDistance", { Text = "Distance", Default = true })
xF_39:AddSlider("EspRange", { Text = "ESP Range", Default = 500, Min = 50, Max = 2000, Rounding = 0, Suffix = " studs" })
xF_35 = xF_6.Combat:AddRightGroupbox("Status", "activity")
Label2 = xF_35:AddLabel(pJ("Target", "None", o7), true)
Label3 = xF_35:AddLabel(pJ("Ammo", "0 / 0", pc), true)
Label4 = xF_35:AddLabel(pJ("Points", "0", pn), true)
xF_18 = xF_6.Loot:AddLeftGroupbox("Instant Collect", "gem")
xF_18:AddToggle("InstantCollect", { Text = "Instant Collect Loot", Default = false })
xF_18:AddDropdown("CollectKinds", { Text = "Collect", Values = { "Gems", "Ammo", "Crates" }, Default = { "Gems" }, Multi = true })
xF_18:AddSlider("CollectRange", { Text = "Max Range", Default = 40, Min = 10, Max = 300, Rounding = 0, Suffix = " studs" })
xF_3 = xF_6.Shop:AddLeftGroupbox("Mystery Box", "box")
if (not KillAuraGroup and ph and (connection7 or ph) or (ph or connection4)) and (not MovementGroup or false or false or (KillAuraGroup and not connection4 or connection4)) and not ((not KillAuraGroup and ph and (connection7 or ph) or (ph or connection4)) and (not MovementGroup or false or false or (KillAuraGroup and not connection4 or connection4))) then
    xF_6:AddToggle("AutoMysteryBox", { Text = "Auto Buy Mystery Box", Default = false })
    xF_6:AddDropdown("BoxWeapons", { Multi = true, Default = {}, Text = "Wanted Weapons", Values = xF_3 })
    xF_6:AddToggle("BoxTakeAny", { Text = "Take Any Weapon", Default = false })
    xF_6:AddToggle("BoxStopWhenObtained", { Text = "Stop After Getting Wanted", Default = true })
    xF_6:AddInput("BoxReserve", { Text = "Points Reserve", Numeric = true, Default = "0", Finished = true })
    xF_30.Shop:AddRightGroupbox("Area", "door-open")
else
    xF_3:AddToggle("AutoMysteryBox", { Text = "Auto Buy Mystery Box", Default = false })
    xF_3:AddDropdown("BoxWeapons", { Text = "Wanted Weapons", Values = xF_10, Default = {}, Multi = true })
    xF_3:AddToggle("BoxTakeAny", { Text = "Take Any Weapon", Default = false })
    xF_3:AddToggle("BoxStopWhenObtained", { Text = "Stop After Getting Wanted", Default = true })
    xF_3:AddInput("BoxReserve", { Text = "Points Reserve", Default = "0", Numeric = true, Finished = true })
    xF_30 = xF_6.Shop:AddRightGroupbox("Area", "door-open")
end
xF_30:AddToggle("AutoBuyArea", { Text = "Auto Buy Area", Default = false })
xF_30:AddInput("AreaReserve", { Text = "Points Reserve", Default = "0", Numeric = true, Finished = true })
xF_30:AddSlider("AreaDelay", { Text = "Delay", Default = 3, Min = 0.5, Max = 15, Rounding = 1, Suffix = "s" })
local AmmoGroup = xF_6.Shop:AddLeftGroupbox("Ammo", "package-plus")
AmmoGroup:AddToggle("AutoBuyAmmo", { Text = "Auto Buy Ammo", Default = false })
AmmoGroup:AddDropdown("AmmoSources", {
    Text = "Sources",
    Values = { "Wall Weapon", "Ammo Box" },
    Default = { "Wall Weapon" },
    Multi = true
})
AmmoGroup:AddToggle("AmmoBoxOnlyEmpty", { Text = "Ammo Box Only When Empty", Default = true })
AmmoGroup:AddSlider("AmmoThreshold", { Text = "Buy Below Reserve", Default = 60, Min = 0, Max = 500, Rounding = 0 })
AmmoGroup:AddInput("AmmoPointsReserve", { Text = "Points Reserve", Default = "0", Numeric = true, Finished = true })
local ReachGroup = xF_6.Shop:AddRightGroupbox("Reach", "move")
ReachGroup:AddToggle("TeleportToBuy", { Text = "Teleport To Buy", Default = false })
GearUpgradesGroup = xF_6.Shop:AddRightGroupbox("Gear Upgrades", "chevrons-up")
GearUpgradesGroup:AddToggle("AutoUpgradeGears", { Text = "Auto Upgrade Gears", Default = false })
GearUpgradesGroup:AddSlider("GearUpgradeMax", { Text = "Maximum Level", Default = 50, Min = 2, Max = 50, Rounding = 0 })
GearUpgradesGroup:AddInput("GearUpgradeReserve", { Text = "Points Reserve", Default = "0", Numeric = true, Finished = true })
GearUpgradesGroup:AddSlider("GearUpgradeDelay", { Text = "Upgrade Delay", Default = 0.75, Min = 0.25, Max = 3, Rounding = 2, Suffix = "s" })
MovementGroup = xF_6.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
local FlyGroup = xF_6.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
local CameraGroup = xF_6.Player:AddLeftGroupbox("Camera", "camera")
CameraGroup:AddToggle("ThirdPerson", { Text = "Force Third Person", Default = false })
CameraGroup:AddSlider("ThirdPersonDistance", { Text = "Camera Distance", Default = 12, Min = 5, Max = 40, Rounding = 0, Suffix = " studs" })
local MenuGroup = xF_6.Settings:AddLeftGroupbox("Menu", "wrench")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
pj = tick()
pe = tick()
pcall(function()
    for i, v in ipairs(getconnections(pk.Idled)) do
        local ut = v
        pcall(function()
            ut:Disable()
        end)
    end
end)
oS = fns.fn284
connection = UserInputService.InputBegan:Connect(fns.onInputBegan)
connection2 = UserInputService.InputChanged:Connect(fns.onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
Library.ToggleKeybind = Options.MenuKeybind
connection3 = RunService.Heartbeat:Connect(fns.onHeartbeat)
connection4 = RunService.Heartbeat:Connect(onHeartbeat2)
folder = Instance.new("Folder")
folder.Name = "OuroborosEsp"
folder.Parent = pk:WaitForChild("PlayerGui")
po = {}
ph = fns.fn26
o0 = fn985
oK = fn559
n8 = 0
connection5 = RunService.Heartbeat:Connect(onHeartbeat3)
CameraMode = pk.CameraMode
CameraMinZoomDistance = pk.CameraMinZoomDistance
o9 = {}
connection6 = UserInputService.JumpRequest:Connect(onJumpRequest)
connection7 = RunService.RenderStepped:Connect(onRenderStepped)
do
    Toggles.Fly:OnChanged(fn785)
    Toggles.WalkSpeedEnabled:OnChanged(fns.fn201)
    Toggles.ThirdPerson:OnChanged(fn667)
    Library:OnUnload(fn867)
    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder("OuroborosHub")
    ThemeManager:SaveDefault("Mint")
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
    SaveManager:SetFolder("OuroborosHub/ZombiesArena")
    SaveManager:BuildConfigSection(xF_6.Settings)
    ThemeManager:ApplyToTab(xF_6.Settings)
    ThemeManager:LoadDefault()
    SaveManager:LoadAutoloadConfig()
    task.spawn(fns.worker8)
    task.spawn(fns.worker7)
    task.spawn(fns.worker6)
    task.spawn(worker5)
    task.spawn(fns.worker4)
    task.spawn(fns.worker3)
    task.spawn(worker2)
    task.spawn(fns.worker)
    Library:Notify("Zombie[Beta] loaded")
end
