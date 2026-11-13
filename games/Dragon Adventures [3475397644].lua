local fns = {}
local GX_1, GX_2, GX_4, MenuGroup, GX_7, GX_9, GX_10, GX_15
GX_1 = nil
GX_4 = nil
GX_7 = nil
GX_9 = nil
GX_10 = nil
local tx
local uW
local tW
local tD
local vk
local uk
local u1
local t1
local uJ
local tJ
local u7
local uq
local Options
local tP
local uw
local tw
local Toggles
local uC
local t0
local vp
local up
local u6
local tI
local t6
local uO
local Library
local uc
local uU
local tU
local uB
local vi
local tB
local ui
local u_
local Id2
local uH
local vo
local uo
local u5
local t5
local tN
local uu
local vb
local ub
local uT
local tT
local CollectionService
local uh
local uZ
local tZ
local vn
local un
local t4
local tM
local ut
local ua
local tS
local uz
local vg
local ug
local tz
local uF
local vm
local tF
local t3
local uL
local tL
local LocalPlayer
local uR
local uy
local ty
local uf
local tX
local Workspace
local vl
local ul
local Remotes
local vr
function fns.fn11()
    local xw = {}
    local xx = os.clock()
    local xy = t0()
    local xz = xy and xy.Position
    for k, v in CollectionService:GetTagged("CountdownItem") do
        local xz_1 = v:IsA("Attachment") and v:GetAttribute("Type") == "Water" and v.Parent
        if xz_1 then
            if xx >= (vl[v] or 0) then
                local WorldPosition = v.WorldPosition
                local xA_1 = #xw + 1
                local xC = xz and (xz - WorldPosition).Magnitude or 0
                local xB_1 = tonumber(v:GetAttribute("RespawnTime")) or 60
                xw[xA_1] = { Attachment = v, Position = WorldPosition, Distance = xC, RespawnTime = xB_1 }
            end
        end
    end
    table.sort(xw, function(dc, dd)
        return dc.Distance < dd.Distance
    end)
    return xw
end
function fns.fn19(au, av)
    return string.format('<font color="%s">%s</font>', av, au)
end
function fns.fn43(lK)
    local DiscordGroup = lK:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = t5 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = t5 })
end
function fns.fn88(bg, bh)
    if typeof(bg) ~= "Vector3" then
        return false
    end
    bh = bh or 14
    local wt = 1
    while true do
        if not (wt <= 3) then
            local wo_1 = t0()
            return wo_1 ~= nil and (wo_1.Position - bg).Magnitude <= bh + 10
        end
        local wo_2 = t0()
        if wo_2 and (wo_2.Position - bg).Magnitude <= bh then
            return true
        end
        if not GX_1(bg) then
            break
        end
        task.wait(0.1)
        wt += 1
    end
    return false
end
function fns.fn96()
    local AC = tM and type(tM.OpenMainFrame) == "function"
    if AC then
        return tM
    elseif type(getgc) ~= "function" then
        return nil
    else
        for k, v in getgc(true) do
            local AC_1 = type(v) == "table" and type(rawget(v, "OpenMainFrame")) == "function" and type(rawget(v, "CloseMainFrame")) == "function" and rawget(v, "AddFrame") ~= nil
            if AC_1 then
                tM = v
                return tM
            end
        end
        return tM
    end
end
function fns.fn200()
    tP = tP >= #tw and 1 or tP + 1
end
function fns.fn202()
    local Character = LocalPlayer.Character
    local v3 = Character and Character:FindFirstChildOfClass("Humanoid")
    return v3
end
function fns.fn208(k0)
    if un() ~= nil then
        return false
    end
    local Dz = ub(k0)
    if not Dz then
        return false
    end
    local DA = t1()
    if not DA or (DA - Dz).Magnitude > 35 then
        tD(Dz)
        task.wait(0.2)
    end
    if os.clock() - uJ < 1.75 then
        return true
    end
    uJ = os.clock()
    return vm(k0.Id, true)
end
function fns.fn210(aV, aW)
    local v8 = Options[aV]
    local v8_1 = v8 and v8.Value
    if typeof(v8_1) == "number" then
        return v8_1
    end
    return aW
end
function fns.worker()
    while not Library.Unloaded do
        pcall(tU)
        task.wait(0.2)
    end
end
function fns.fn217(iJ, iK)
    local CoreMarker = iJ.CoreMarker
    local Ca = typeof(CoreMarker) == "Instance" and CoreMarker:IsA("BasePart")
    if Ca then
        return math.clamp(CoreMarker.Size.Y / 25, 0, 1)
    end
    local B9_1 = type(iJ.SpawnTime) == "number" and type(iJ.DespawnTime) == "number" and iJ.DespawnTime > 0
    if B9_1 then
        return math.clamp((iK - iJ.SpawnTime) / iJ.DespawnTime, 0, 1)
    end
    return 0
end
function fns.fn263(gp)
    local Interactions = Workspace:FindFirstChild("Interactions")
    local z_ = Interactions and Interactions:FindFirstChild("SolsticeEvent")
    local zZ_1 = z_
    if z_ then
        z_ = zZ_1:FindFirstChild(gp.Zone)
    end
    local zZ_2 = z_
    if z_ then
        z_ = zZ_2:FindFirstChild("StartZone")
    end
    local zZ_3 = z_
    if not zZ_3 then
        return nil
    end
    local z__1 = -1
    local z0
    for i, descendant in zZ_3:GetDescendants() do
        local zZ_4 = descendant:IsA("BasePart") and descendant.Name ~= "NotEnough" and descendant.Name ~= "CountdownPart"
        if zZ_4 then
            local zZ_5 = descendant.Size.X * descendant.Size.Y * descendant.Size.Z
            if zZ_5 > z__1 then
                z__1 = zZ_5
                z0 = descendant
            end
        end
    end
    return z0 and z0.Position
end
function fns.fn287(an, ao)
    if setclipboard then
        setclipboard(an)
    elseif toclipboard then
        toclipboard(an)
    end
    Library:Notify(ao)
end
function fns.fn345()
    local Aj = uT()
    local Ak = Aj and rawget(Aj, "Minigame")
    local Ak_1 = Ak ~= ""
    local Al = type(Ak) == "string" and Ak_1
    if Al then
        return Ak
    end
    return nil
end
function fns.fn350()
    local wA = {}
    if type(filtergc) ~= "function" then
        return wA
    end
    local wB = filtergc("table", { KeyValuePairs = { NodeType = "Eggs" } }, false)
    if type(wB) ~= "table" then
        return wA
    end
    local wC = t0()
    local wD = wC and wC.Position
    for k, v in wB do
        if vi(v) then
            local wD_1 = wD and (wD - v.NodePosition).Magnitude or 0
            wA[#wA + 1] = { Node = v, Distance = wD_1, NodeId = tostring(v.NestValue.Value) }
        end
    end
    table.sort(wA, function(bN, bO)
        return bN.Distance < bO.Distance
    end)
    return wA
end
function fns.fn379()
    local Bi = tF and type(tF._getButtonFromInstance) == "function"
    if Bi then
        return tF
    elseif type(getgc) ~= "function" then
        return nil
    else
        for k, v in getgc(true) do
            local Bi_1 = type(v) == "table" and type(rawget(v, "RegisterClick")) == "function" and type(rawget(v, "_getButtonFromInstance")) == "function" and type(rawget(v, "new")) == "function"
            if Bi_1 then
                tF = v
                return tF
            end
        end
        return tF
    end
end
local function fn404()
    local Interactions = Workspace:FindFirstChild("Interactions")
    local CL = Interactions and Interactions:FindFirstChild("Nodes")
    local CK_1 = CL
    if CL then
        CL = CK_1:FindFirstChild("WhackAMoleEggs")
    end
    return CL
end
local function fn412(bq)
    if type(bq) ~= "table" then
        return false
    end
    local ww = type(bq._startHarvest) ~= "function" or type(bq._localBoost) ~= "function"
    if ww then
        return false
    end
    if not bq.NodeModel or not bq.NodeModel.Parent then
        return false
    end
    if not bq.HarvestedValue or bq.HarvestedValue.Value then
        return false
    end
    local NestValue = bq.NestValue
    local wx = typeof(NestValue) ~= "Instance" or not NestValue:IsA("IntValue") or NestValue.Value == 0
    if wx then
        return false
    end
    local Settings = LocalPlayer:FindFirstChild("Settings")
    local wy = Settings and Settings:FindFirstChild("CurrentEggs")
    if not wy or NestValue.Parent ~= wy then
        return false
    end
    return typeof(bq.NodePosition) == "Vector3"
end
local function fn436()
    local BZ_4
    task.wait(0.35)
    local BX = up()
    local BX_4
    if not BX then
        return false
    end
    local CloseButton = BX:FindFirstChild("CloseButton")
    local BY_2
    local BX_1 = os.clock() + 6
    while true do
        if not (os.clock() < BX_1) then
            local BX_2 = os.clock() + 3
            while os.clock() < BX_4 do
                if BZ_4 then
                    GX_7(CloseButton)
                    task.wait(0.25)
                    break
                end
                task.wait(0.1)
            end
            if uw() then
                local BX_3 = tz()
                if BY_2 then
                    pcall(BX_3.End)
                    task.wait(0.25)
                end
            end
            return not uw()
        end
        local BZ_2 = Library.Unloaded or not GX_9("AutoPlayCarnival")
        if BZ_2 then
            break
        end
        local BZ_3 = tB()
        if #BZ_3 == 0 then
            BX_4 = os.clock() + 3
            while os.clock() < BX_4 do
                BZ_4 = CloseButton and CloseButton.Visible
                if BZ_4 then
                    GX_7(CloseButton)
                    task.wait(0.25)
                    break
                end
                task.wait(0.1)
            end
            if uw() then
                local BX_5 = tz()
                BY_2 = BX_5 and type(BX_5.End) == "function"
                if BY_2 then
                    pcall(BX_5.End)
                    task.wait(0.25)
                end
            end
            return not uw()
        end
        for k, v in BZ_3 do
            GX_7(v)
            task.wait(0.35)
        end
        task.wait(0.15)
    end
    return false
end
local function fn470()
    local zB = GX_4()
    local zC = zB and zB.CurrentDragon
    local zC_1 = type(zC) == "table" and zC.PrimaryPart
    if zC_1 then
        return zC
    end
    return nil
end
local function worker3()
    while not Library.Unloaded do
        pcall(uC)
        task.wait(0.15)
    end
end
local function fn492()
    local AN = tJ and type(tJ.End) == "function"
    if AN then
        return tJ
    elseif type(getgc) ~= "function" then
        return nil
    else
        for k, v in getgc(true) do
            local AN_1 = type(v) == "table" and type(rawget(v, "End")) == "function" and type(rawget(v, "Start")) == "function"
            if AN_1 then
                local AN_2 = debug.getinfo(v.Start)
                local AO = AN_2 and (AN_2.short_src or AN_2.source)
                local AO_1 = type(AO) == "string" and string.find(AO, "MinigameReward", 1, true)
                if AO_1 then
                    tJ = v
                    return tJ
                end
            end
        end
        return tJ
    end
end
local function fn538()
    local Character = LocalPlayer.Character
    local v6 = Character and Character:FindFirstChild("HumanoidRootPart")
    return v6
end
local function fn543()
    if not GX_9("AutoPlayCarnival") then
        if uZ then
            uz()
        end
        return false
    end
    local DF = uk()
    if not DF then
        return false
    elseif os.clock() < uF then
        vn(false)
        uZ = true
        return true
    else
        local DK = if uw() then 1 else 0
        if DK == 1 then
            uZ = true
            vn(false)
            local DG_1 = os.clock()
            if uB <= 0 then
                uB = DG_1 + 0.85
                return true
            elseif DG_1 < uB then
                return true
            else
                local Id = DF.Id
                ul(Id)
                table.clear(uo)
                uB = 0
                uF = os.clock() + 1
                uJ = 0
                if u1() then
                    uH()
                    vm(Id, false)
                end
                return true
            end
        else
            uB = 0
            local DG_3 = un()
            if DG_3 == "CatchObject" then
                uZ = true
                vn(false)
                ug()
                return true
            elseif DG_3 == "WhackAMole" then
                uZ = true
                uR()
                return true
            elseif u_() < ty then
                vn(false)
                uZ = false
                return false
            else
                uZ = true
                vn(false)
                tx(DF)
                return true
            end
        end
    end
end
local function fn602()
    local DD = uk()
    vn(false)
    uZ = false
    uF = 0
    uB = 0
    ua = {}
    t3 = 0
    ui = 0
    Id2 = nil
    tP = 1
    table.clear(uo)
    table.clear(uu)
    if un() == nil then
        if u1() then
            vm("CatchObject", false)
            vm("WhackAMole", false)
        elseif DD then
            vm(DD.Id, false)
        end
    end
end
local function fn631()
    local AX = up()
    if not AX then
        return false
    end
    local AY = tX()
    if AY and AY.MainFrameOpen == AX then
        return true
    end
    local AY_1 = AX.AbsolutePosition.X + AX.AbsoluteSize.X * 0.5
    local AZ_1 = AX.AbsolutePosition.Y + AX.AbsoluteSize.Y * 0.5
    local CurrentCamera = Workspace.CurrentCamera
    local A0 = CurrentCamera and CurrentCamera.ViewportSize
    local A__1 = A0
    if A0 then
        A0 = AX.AbsoluteSize.X > 80
    end
    if A0 then
        A0 = AX.AbsoluteSize.Y > 80
    end
    if A0 then
        A0 = AY_1 > 0
    end
    if A0 then
        A0 = AZ_1 > 0
    end
    if A0 then
        A0 = AY_1 < A__1.X
    end
    if A0 then
        A0 = AZ_1 < A__1.Y
    end
    if A0 then
        return true
    end
    return false
end
local function fn642()
    local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
    local AA = PlayerGui and PlayerGui:FindFirstChild("MinigamesGui")
    local Az_1 = AA
    if AA then
        AA = Az_1:FindFirstChild("RewardFrame")
    end
    return AA
end
local function fn700()
    local Interactions = Workspace:FindFirstChild("Interactions")
    local xn = Interactions and Interactions:FindFirstChild("SolsticeEvent")
    local xm_1 = xn
    if xn then
        xn = xm_1:FindFirstChild("WaterWell")
    end
    local xm_2 = xn
    if xn then
        xn = xm_2:FindFirstChild("WaterWellModel")
    end
    local xm_3 = xn
    if not xm_3 then
        return nil
    end
    local CollectPart = xm_3:FindFirstChild("CollectPart")
    local xo = CollectPart and CollectPart:IsA("BasePart")
    if xo then
        return CollectPart.Position
    end
    local InteractPart = xm_3:FindFirstChild("InteractPart")
    local xo_1 = InteractPart and InteractPart:IsA("BasePart")
    if xo_1 then
        return InteractPart.Position
    elseif xm_3:IsA("Model") then
        return xm_3:GetPivot().Position
    else
        return nil
    end
end
local function fn728(aH)
    if Library.Unloaded then
        return false
    end
    local v_ = Toggles[aH]
    return v_ ~= nil and v_.Value == true
end
local function fn732(jD)
    local CN = uy()
    local CO = not CN
    local CT = if CO then 1 else 0
    local CR = 1417 * CT + 1830 * (1 - CT)
    local CS = 2416 * CT + 2193 * (1 - CT)
    if not ((CR * 1873 + CS * 3330 + CR * CS) % 16777213 == 14122793) then
        CO = typeof(jD) ~= "Instance"
    end
    if CO then
        return false
    end
    CN.ForceBreathTarget = jD
    tS = jD
    local CO_1 = tI()
    if CO_1 then
        CO_1.DragonBreathAttackPart = jD
    end
    local Breath = CN.Breath
    local CN_1 = type(Breath) == "table" and Breath.FakeMouse
    if CN_1 then
        local CurrentCamera = Workspace.CurrentCamera
        if CurrentCamera then
            local CP = CurrentCamera:WorldToViewportPoint(jD.Position)
            if CP.Z > 0 then
                Breath.FakeMouse.OverridePosition = Vector2.new(CP.X, CP.Y)
            end
        end
    end
    return true
end
local function fn739()
    local DY = hookfunction ~= nil
    local DZ = hookmetamethod ~= nil
    local D_ = getrawmetatable ~= nil
    local D0 = setrawmetatable ~= nil
    local D1 = getgc ~= nil
    local D2 = getgenv ~= nil
    local D3 = getreg ~= nil
    local D4 = getconnections ~= nil
    local D5 = firesignal ~= nil
    local D6 = getcallbackvalue ~= nil
    local D7 = setclipboard ~= nil
    local D8 = getcustomasset ~= nil
    local D9 = getnamecallmethod ~= nil
    local Ea = isexecutorclosure ~= nil
    local Eb = fireproximityprompt ~= nil
    local Ec = firetouchinterest ~= nil
    local Ed = WebSocket ~= nil
    local Ee = readfile ~= nil
    local Ef = writefile ~= nil
    local Eh = (request or http_request) ~= nil
    local Ej = (debug and debug.getupvalues) ~= nil
    local El = (debug and debug.setupvalue) ~= nil
    local Em = 0
    local En = { DY, DZ, D_, D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, Ea, Eb, Ec, Ed, Ee, Ef, Eh, Ej, El }
    for i, v in ipairs(En) do
        if v then
            Em += 1
        end
    end
    local DY_1 = Em / #En
    if DY_1 >= 0.9 then
        return tT("Full Support", vo)
    elseif DY_1 >= 0.6 then
        return tT("Half Support", u7)
    else
        return tT("Low Support", uW)
    end
end
local function onOnClientEvent()
    local DX = if not GX_9("AutoSunflower") then 1 else 0
    if DX == 1 then
        return
    end
    vb = true
    task.delay(0.7, function()
        local DS = Library.Unloaded or not GX_9("AutoSunflower")
        if DS then
            return
        end
        pcall(u6)
    end)
end
local function fn745(a1, a2)
    local wb = Options[a1]
    local wd = wb and wb.Value
    if wd == nil and wb then
        local wc_2 = wb.Text
        local wh = if wc_2 then 1 else 0
        local wf = 2612 * wh + 1878 * (1 - wh)
        local wg = 2354 * wh + 2762 * (1 - wh)
        if not ((wf * 3488 + wg * 3548 + wf * wg) % 16777213 == 6834083) then
            wc_2 = wb.CurrentValue
        end
        wd = wc_2
    end
    local wb_1 = wd or ""
    local wc_3 = tonumber(tostring(wb_1):match("%-?%d+%.?%d*"))
    if wc_3 then
        return wc_3
    end
    return a2
end
local function fn767()
    local Data = LocalPlayer:FindFirstChild("Data")
    if not Data then
        return nil
    end
    local w9 = Data:FindFirstChild("SolsticeEvent" .. os.date("%Y"))
    if w9 then
        return w9
    end
    local w9_1 = 0
    local xa
    for i, child in Data:GetChildren() do
        local w8_1 = tonumber(string.match(child.Name, "^SolsticeEvent(%d+)$"))
        if w8_1 and w8_1 >= w9_1 then
            w9_1 = w8_1
            xa = child
        end
    end
    return xa
end
local function fn800()
    local zK = uy()
    if zK and zK.PrimaryPart then
        return zK.PrimaryPart.Position
    end
    local zK_1 = t0()
    return zK_1 and zK_1.Position
end
local function fn844()
    local CI_1
    local CG = tW and rawget(tW, "FireDistance") ~= nil
    if CG then
        return tW
    end
    local CG_1 = uy()
    local CH = CG_1 and CG_1.Breath
    local CH_2
    local CH_1 = type(CH) == "table" and type(CH._canKeepAutoTarget) == "function" and type(debug) == "table" and type(debug.getupvalue) == "function"
    if CH_1 then
        CH_2, CI_1 = pcall(debug.getupvalue, CH._canKeepAutoTarget, 1)
        local CG_3 = CH_2 and type(CI_1) == "table" and rawget(CI_1, "FireDistance") ~= nil
        if CG_3 then
            tW = CI_1
            return tW
        end
        return tW
    end
    return tW
end
local function fn850()
    local Du = vg()
    local Dv = Du[1]
    local Du_1 = not Dv or typeof(Dv.Part) ~= "Instance"
    if Du_1 then
        vn(false)
        return
    end
    local Du_2 = t1()
    if (Du_2 and (Du_2 - Dv.Position).Magnitude or 999) > 18 or Id2 ~= Dv.Id then
        local Dw_2 = Du_2 and Vector3.new(Du_2.X - Dv.Position.X, 0, Du_2.Z - Dv.Position.Z)
        local Du_3 = Dw_2 or Vector3.new(0, 0, 1)
        local Dw_3 = Du_3
        if Dw_3.Magnitude < 1 then
            Dw_3 = Vector3.new(0, 0, 1)
        end
        tD(Dv.Position + Dw_3.Unit * 10, Dv.Position)
        Id2 = Dv.Id
    else
        t6(Dv.Position)
    end
    uf(Dv.Part)
    vn(true)
end
local function fn889(df, dg)
    local xK = os.clock()
    local xM = xK + (dg or 0.85)
    while os.clock() < xM do
        local xK_1 = u_()
        if xK_1 > df then
            return xK_1
        end
        task.wait(0.05)
    end
    return u_()
end
local function fn905(ba)
    local wl = t0()
    local wm = not wl or typeof(ba) ~= "Vector3"
    if wm then
        return false
    end
    local wm_1 = CFrame.new(ba + Vector3.new(0, 5, 0))
    wl.AssemblyLinearVelocity = Vector3.zero
    wl.AssemblyAngularVelocity = Vector3.zero
    wl.CFrame = wm_1
    return true
end
local function fn979()
    local Ab = uO and rawget(uO, "HadIntro") ~= nil
    if Ab then
        return uO
    elseif type(getgc) ~= "function" then
        return nil
    else
        for k, v in getgc(true) do
            local Ab_1 = type(v) == "table" and type(rawget(v, "Set")) == "function" and rawget(v, "HadIntro") ~= nil
            if Ab_1 then
                uO = v
                return uO
            end
        end
        return uO
    end
end
local function fn1024()
    local CarnivalGame = Options.CarnivalGame
    return CarnivalGame ~= nil and CarnivalGame.Value == "Do Both in Order"
end
local function fn1081()
    uq(uh, "Copied Discord invite to clipboard")
end
local function fn1112()
    if uZ then
        return
    end
    if not GX_9("AutoCollectEggs") then
        return
    end
    if type(filtergc) ~= "function" then
        return
    end
    if not tZ then
        tZ = Remotes:FindFirstChild("CollectEggRemote")
    end
    if not tZ then
        return
    end
    local w5 = uc()
    local w6 = w5[1]
    if not w6 then
        return
    end
    if ut(w6) then
        task.wait(tN("EggCollectDelay", 0.35))
    else
        task.wait(0.25)
    end
end
local function fn1124()
    if uU and uU.CurrentDragon ~= nil then
        return uU
    elseif type(getgc) ~= "function" then
        return nil
    else
        for k, v in getgc(true) do
            if type(v) == "table" then
                local zs_1 = rawget(v, "CurrentDragon")
                local zt = type(zs_1) == "table" and zs_1.PrimaryPart and rawget(v, "ActionValues") ~= nil
                if zt then
                    uU = v
                    return uU
                end
            end
        end
        return uU
    end
end
local function fn1137()
    if GX_9("AutoCollectWaterEssence") then
        return true
    end
    local xO = GX_9("EssenceIfCantAfford") and GX_9("AutoPlayCarnival") and u_() < ty
    return xO
end
local function fn1153()
    local xj = GX_10()
    local xk = xj and xj:FindFirstChild("WaterEssence")
    local xj_1 = xk
    if xk then
        xk = tonumber(xj_1.Value)
    end
    return xk or 0
end
local function fn1154()
    local A8 = {}
    local A9 = up()
    local Ba = A9 and A9:FindFirstChild("RewardsFrame")
    if not Ba then
        return A8
    end
    for i, child in Ba:GetChildren() do
        local A9_2 = child:IsA("GuiObject") and child.Name ~= "Default" and child.Visible
        if A9_2 then
            local ClaimButton = child:FindFirstChild("ClaimButton", true)
            local Ba_1 = ClaimButton and ClaimButton:IsA("GuiButton") and ClaimButton.Visible and ClaimButton.AbsoluteSize.X > 2 and ClaimButton.AbsoluteSize.Y > 2
            if Ba_1 then
                A8[#A8 + 1] = ClaimButton
            end
        end
    end
    return A8
end
local function worker2()
    while not Library.Unloaded do
        pcall(vk)
        task.wait(0.05)
    end
end
local function fn1209()
    if uZ then
        return
    end
    local yZ = tL()
    local y_ = GX_9("AutoSunflower")
    local y0 = not y_
    local y1 = not yZ
    if y1 ~= false then
        y1 = y0
    end
    if y1 then
        return
    end
    local y0_1 = y_ and u6()
    if y0_1 then
        return
    end
    local y0_2 = y_ and t4()
    if y0_2 then
        return
    end
    if yZ then
        vp()
    end
end
local function fn1285(ak)
    if ak then
        uL[#uL + 1] = ak
    end
    return ak
end
local function fn1290(ax, ay, az)
    return string.format("<b>%s</b> %s %s", ax, tT("-", "#5a6070"), tT(ay, az))
end
local function fn1294()
    local yl = {}
    local ym = os.time()
    local yn = u_()
    local yo = t0()
    local yp = yo and yo.Position
    local yp_1 = Workspace:FindFirstChildOfClass("Terrain") or Workspace.Terrain
    for i, child in yp_1:GetChildren() do
        local yp_2 = child.Name == "SolsticeFlower" and child:IsA("Attachment")
        if yp_2 then
            local StepsCompleted = child:FindFirstChild("StepsCompleted")
            local NextStart = child:FindFirstChild("NextStart")
            local yr = StepsCompleted and StepsCompleted:IsA("ValueBase")
            if yr then
                local MaxSteps = StepsCompleted:FindFirstChild("MaxSteps")
                local WaterPerUse = StepsCompleted:FindFirstChild("WaterPerUse")
                local yt = tonumber(StepsCompleted.Value) or 0
                local yp_4 = MaxSteps
                if yp_4 then
                    yp_4 = tonumber(MaxSteps.Value)
                end
                local yr_2 = yp_4 or 0
                local yp_5 = WaterPerUse
                if yp_5 then
                    yp_5 = tonumber(WaterPerUse.Value)
                end
                local yr_3 = yp_5 or 50
                local yp_6 = NextStart
                if yp_6 then
                    yp_6 = tonumber(NextStart.Value)
                end
                if yr_2 > 0 and yt < yr_2 and (yp_6 or 0) <= ym and yn >= yr_3 then
                    local WorldPosition = child.WorldPosition
                    local yq_4 = #yl + 1
                    local yv = yp and (yp - WorldPosition).Magnitude or 0
                    yl[yq_4] = {
                        Attachment = child,
                        Distance = yv,
                        Steps = yt,
                        MaxSteps = yr_2,
                        Cost = yr_3,
                        Position = WorldPosition
                    }
                end
            end
        end
    end
    table.sort(yl, function(eE, eF)
        if eE.Steps ~= eF.Steps then
            return eE.Steps > eF.Steps
        end
        return eE.Distance < eF.Distance
    end)
    return yl
end
local function fn1304()
    local CarnivalGame = Options.CarnivalGame
    local zj_1 = CarnivalGame and CarnivalGame.Value or "Star Catchers"
    if zj_1 == "Do Both in Order" then
        return vr[tw[tP] or tw[1]]
    end
    return vr[zj_1] or vr["Star Catchers"]
end
tw = nil
tx = nil
ty = nil
tz = nil
tB = nil
tD = nil
tF = nil
tI = nil
tJ = nil
tL = nil
tM = nil
tN = nil
tP = nil
GX_10 = nil
tS = nil
tT = nil
tU = nil
tW = nil
tX = nil
tZ = nil
Id2 = nil
t0 = nil
t1 = nil
Remotes = nil
t3 = nil
t4 = nil
t5 = nil
t6 = nil
GX_7 = nil
ua = nil
ub = nil
uc = nil
uf = nil
ug = nil
uh = nil
local Players, tA, tE, tG, tH, tK, tO, tR, tV, tY, t7, t9, ud, ue
ui = nil
uk = nil
ul = nil
un = nil
uo = nil
up = nil
uq = nil
GX_1 = nil
LocalPlayer = nil
ut = nil
uu = nil
uw = nil
uy = nil
uz = nil
CollectionService = nil
uB = nil
uC = nil
Workspace = nil
uF = nil
uH = nil
uJ = nil
uL = nil
uO = nil
Options = nil
GX_9 = nil
uR = nil
uT = nil
uU = nil
Toggles = nil
uW = nil
uZ = nil
u_ = nil
u1 = nil
local uj, um, uv, ux, uD, uG, CoreGui, uK, uM, TeleportService, GuiService, uX, uY, SaveManager, u2, u3, u4
u5 = nil
u6 = nil
u7 = nil
GX_4 = nil
vb = nil
Library = nil
vg = nil
vi = nil
vk = nil
vl = nil
vm = nil
vn = nil
vo = nil
vp = nil
vr = nil
local u9, va, vd, ve, vf, vh, vj
u9 = nil
va = nil
vd = nil
ve = nil
vf = nil
vh = nil
vj = nil
Players, vj, u9, u4, uY, GuiService, TeleportService, CoreGui, Workspace, CollectionService, LocalPlayer, um, uh, ud, t9, Remotes, tZ, tV, tR, tO, tH, tE, vl, vb, u5, uZ, uU, uO, uJ, uF, uB, uu, uo, ui, ue, ua, t3, Id2, tW, tS, tP, tM, tJ, tF, ty, tw, vr, MenuGroup, Library, SaveManager, Toggles, Options, uL, vo, vf, u7, u2, uW, vd, uG, uq, t5, tT, tK, GX_9, uj, t0, tN, vh, GX_1, tY, vi, uc, va, ut, uC, GX_10, u_, uv, tA, t7, tL, vp, tG, u6, t4, tU, u1, uH, uk, GX_4, uy, t1, tD, ub, uT, un, vm, up, tX, tz, uw, tB, uD, GX_7, ul, uM, ug, tI, uK, uf, vn, t6, vg, uR, tx, uz, vk = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
if (Toggles or false or not Toggles and false) and ((Toggles or vp) and (false or Toggles)) and (Toggles or Toggles or (false or not Toggles) or false and (vp or not Toggles)) or not ((Toggles or false or not Toggles and false) and ((Toggles or vp) and (false or Toggles)) and (Toggles or Toggles or (false or not Toggles) or false and (vp or not Toggles))) then
    vj = game:GetService("RunService")
    u9 = game:GetService("UserInputService")
    u4 = game:GetService("VirtualUser")
    uY = game:GetService("HttpService")
else
    u9 = game:GetService("RunService")
    vj = game:GetService("UserInputService")
    uY = game:GetService("VirtualUser")
    u4 = game:GetService("HttpService")
end
GuiService = game:GetService("GuiService")
TeleportService = game:GetService("TeleportService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
CollectionService = game:GetService("CollectionService")
LocalPlayer = Players.LocalPlayer
um = "Dragon Adventures"
uh = "https://discord.gg/ehKVq7pf7v"
ud = "https://rscripts.net/@Ouroboros"
t9 = "https://ouroboros-hub-rbx.web.app/"
Remotes = ReplicatedStorage:WaitForChild("Remotes")
tZ = Remotes:FindFirstChild("CollectEggRemote")
tV = Remotes:FindFirstChild("CollectWaterWellRemote")
tR = Remotes:FindFirstChild("GrabItemRemote")
tO = Remotes:FindFirstChild("UseItemOnFlowerRemote")
local GX_30 = Remotes:FindFirstChild("FlowerDropsRemote")
tH = Remotes:FindFirstChild("MinigameQueueRemote")
tE = Remotes:FindFirstChild("GetCatchObjectRemote")
Remotes:FindFirstChild("WhackAMoleHitRemote")
local GX_24 = Remotes:FindFirstChild("GetMinigameRewardRemote")
Remotes:FindFirstChild("EndMinigameRewardsRemote")
vl = {}
vb = false
u5 = 0
uZ = false
uU = nil
uO = nil
uJ = 0
uF = 0
uB = 0
uu = {}
uo = {}
ui = 0
ue = false
ua = {}
t3 = 0
Id2 = nil
tW = nil
tS = nil
tP = 1
tM = nil
if (ub and not vb or vb and vb) and (not MenuGroup or ub or vb and not vb) or (vb or vb or ub and false) and (not MenuGroup and not vb or (MenuGroup or ty)) or not ((ub and not vb or vb and vb) and (not MenuGroup or ub or vb and not vb) or (vb or vb or ub and false) and (not MenuGroup and not vb or (MenuGroup or ty))) then
    tJ = nil
    tF = nil
    ty = 75
else
    ty = nil
    tJ = nil
    tF = 75
end
tw = { "Star Catchers", "Sun Smasher" }
vr = {
    ["Star Catchers"] = { Id = "CatchObject", Zone = "CatchObject" },
    ["Sun Smasher"] = { Id = "WhackAMole", Zone = "WhackAMoleMinigame" }
}
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
uL = {}
uG = fn1285
uq = fns.fn287
t5 = fn1081
tT = fns.fn19
tK = fn1290
vo = "#7fd47f"
vf = "#6ec1ff"
u7 = "#e8a34d"
u2 = "#8b93a3"
uW = "#e05a5a"
GX_9 = fn728
uj = fns.fn202
t0 = fn538
tN = fns.fn210
vh = fn745
GX_1 = fn905
if not uw and not uU and (not tX or vg) and ((uw or not tX) and (not vg and not uU)) or ((vg or uO) and (not tX and not vg) or not uU and not uw and (uO and not vg)) or (not uO or vg or (uw or vg)) and (vg and not tX and (uO and not uU)) and (not tX and uO or (not uO or uw) or (uw or uO) and (not uw or not uw)) or not (not uw and not uU and (not tX or vg) and ((uw or not tX) and (not vg and not uU)) or ((vg or uO) and (not tX and not vg) or not uU and not uw and (uO and not vg)) or (not uO or vg or (uw or vg)) and (vg and not tX and (uO and not uU)) and (not tX and uO or (not uO or uw) or (uw or uO) and (not uw or not uw))) then
    tY = fns.fn88
else
    u1 = fns.fn88
end
vi = fn412
uc = fns.fn350
va = function(bQ)
    local wM_1
    local wL_1
    if not tZ then
        tZ = Remotes:FindFirstChild("CollectEggRemote")
    end
    if not tZ then
        return false
    end
    wL_1, wM_1 = pcall(function()
        return tZ:InvokeServer(bQ)
    end)
    return wL_1 and wM_1 == true
end
ut = function(bY)
    local Node
    Node = nil
    local wT_4
    Node = bY.Node
    if not vi(Node) then
        return false
    end
    local wX = if not GX_1(Node.NodePosition) then 1 else 0
    if wX == 1 then
        return false
    end
    task.wait(0.2)
    local wR = Library.Unloaded or not GX_9("AutoCollectEggs")
    if wR then
        return false
    end
    local wR_1 = pcall(function()
        Node:_startHarvest()
    end)
    if not wR_1 then
        return false
    end
    task.wait(0.85)
    local wR_2 = tonumber(Node.RequiredBoosts) or 3
    local wR_3 = wR_2 + 2
    local w2 = 1
    while w2 <= wR_3 do
        local wR_4 = Library.Unloaded or not GX_9("AutoCollectEggs")
        if wR_4 then
            return false
        end
        if Node.HarvestedValue and Node.HarvestedValue.Value then
            break
        end
        pcall(function()
            Node:_localBoost(true)
        end)
        task.wait(0.08)
        w2 += 1
    end
    local wR_6 = os.clock() + 4
    local wS_1 = false
    while os.clock() < wR_6 do
        local wT_1 = Library.Unloaded or not GX_9("AutoCollectEggs")
        if wT_1 then
            return false
        end
        if Node.HarvestedValue and Node.HarvestedValue.Value then
            if va(bY.NodeId) then
                wS_1 = true
                break
            end
            local wT_3 = not Node.NodeModel or not Node.NodeModel.Parent or Node.NodeModel:GetAttribute("Hiding")
            if wT_4 then
                wS_1 = true
                break
            end
            task.wait(0.1)
            continue
        end
        wT_4 = not Node.NodeModel or not Node.NodeModel.Parent or Node.NodeModel:GetAttribute("Hiding")
        if wT_4 then
            wS_1 = true
            break
        end
        task.wait(0.1)
    end
    local wT_5 = wS_1
    if not wT_5 then
        wT_5 = Node.HarvestedValue and Node.HarvestedValue.Value == true
    end
    return wT_5
end
uC = fn1112
GX_10 = fn767
u_ = fn1153
uv = fn700
if (vm and not t7 and (vm or uf) and (not vm and not vm and (not tS and not GX_24)) or not vm and not GX_24 and (GX_24 and not vm) and (not tS and not vr and (not vm or not t7)) or (not vr or not vm) and (tS and not vr) and (not tS or vr or (uf or t7)) and ((t7 and not vr or not vm and t7) and (not GX_24 or not tS or (vm or vm)))) and not (vm and not t7 and (vm or uf) and (not vm and not vm and (not tS and not GX_24)) or not vm and not GX_24 and (GX_24 and not vm) and (not tS and not vr and (not vm or not t7)) or (not vr or not vm) and (tS and not vr) and (not tS or vr or (uf or t7)) and ((t7 and not vr or not vm and t7) and (not GX_24 or not tS or (vm or vm)))) then
    vm = fns.fn11
else
    tA = fns.fn11
end
t7 = fn889
tL = fn1137
vp = function()
    local xU = GX_9("AutoCollectWaterEssence")
    local xU_4
    local xV = GX_9("EssenceIfCantAfford") and GX_9("AutoPlayCarnival") and u_() < ty
    local xV_1 = not xV
    local xX = not xU
    local xX_8
    if xX ~= false then
        xX = xV_1
    end
    if xX then
        return false
    end
    local xV_2 = math.floor(vh("WaterEssenceGrabAmount", 0))
    if xV_2 < 0 then
        xV_2 = 0
    end
    local xX_1 = xU and xV_2 > 0
    local xY = xX_1
    if xX_1 then
        xX_1 = u5 >= xV_2
    end
    if xX_1 then
        if Toggles.AutoCollectWaterEssence and Toggles.AutoCollectWaterEssence.Value then
            Toggles.AutoCollectWaterEssence:SetValue(false)
            Library:Notify(("Grabbed %d Water Essence orbs"):format(u5))
        end
        if not xV then
            return false
        end
        local xY_1 = false
        if not tR then
            tR = Remotes:FindFirstChild("GrabItemRemote")
        end
        if tR then
            local xX_3 = tA()
            local xZ_1 = math.min(#xX_3, 8)
            for i = 1, xZ_1 do
                if Library.Unloaded then
                    return false
                end
                local xZ_2 = not xV
                local x__1 = not xU
                if x__1 ~= false then
                    x__1 = xZ_2
                end
                if x__1 then
                    return false
                end
                local xZ_3 = xU and not GX_9("AutoCollectWaterEssence")
                if xZ_3 and not xV then
                    return false
                end
                local xT = xX_3[i]
                if not (not xT.Attachment or not xT.Attachment.Parent) then
                    local ye_1 = 1
                    while ye_1 <= 3 do
                        if Library.Unloaded then
                            return false
                        end
                        local x__3 = u_()
                        if not tY(xT.Position, 12) then
                            break
                        end
                        task.wait(0.08)
                        pcall(function()
                            tR:FireServer(xT.Attachment)
                        end)
                        task.wait(0.06)
                        pcall(function()
                            tR:FireServer(xT.Attachment)
                        end)
                        local x0_2 = t7(x__3, 0.7)
                        if x0_2 > x__3 then
                            vl[xT.Attachment] = os.clock() + xT.RespawnTime
                            if xU or xY_1 then
                                u5 += 1
                            end
                            task.wait(tN("WaterEssenceDelay", 0.5))
                            return true
                        end
                        task.wait(0.12)
                        ye_1 += 1
                    end
                    vl[xT.Attachment] = os.clock() + 1.25
                end
            end
        end
        if not tV then
            tV = Remotes:FindFirstChild("CollectWaterWellRemote")
        end
        if tV then
            local xV_3 = not xV
            local xX_4 = not xU
            if xX_4 ~= false then
                xX_4 = xV_3
            end
            if xX_4 then
                return false
            end
            local xV_4 = xU and not GX_9("AutoCollectWaterEssence")
            if xX_8 then
                return false
            end
            local xU_2 = uv()
            if xU_4 then
                tY(xU_2, 14)
                task.wait(0.15)
            end
            pcall(function()
                tV:InvokeServer()
            end)
            task.wait(tN("WaterEssenceDelay", 0.5))
            return true
        end
        return false
    end
    if not tR then
        tR = Remotes:FindFirstChild("GrabItemRemote")
    end
    if tR then
        local xX_6 = tA()
        local xZ_5 = math.min(#xX_6, 8)
        for i = 1, xZ_5 do
            if Library.Unloaded then
                return false
            end
            if xY and u5 >= xV_2 then
                break
            else
                local xZ_7 = not xV
                local x__5 = not xU
                if x__5 ~= false then
                    x__5 = xZ_7
                end
                if x__5 then
                    return false
                end
                local xZ_8 = xU and not GX_9("AutoCollectWaterEssence")
                if xZ_8 and not xV then
                    return false
                end
                local xT = xX_6[i]
                if not (not xT.Attachment or not xT.Attachment.Parent) then
                    local ye_2 = 1
                    while ye_2 <= 3 do
                        if Library.Unloaded then
                            return false
                        end
                        if xY and u5 >= xV_2 then
                            break
                        end
                        local x__8 = u_()
                        if not tY(xT.Position, 12) then
                            break
                        end
                        task.wait(0.08)
                        pcall(function()
                            tR:FireServer(xT.Attachment)
                        end)
                        task.wait(0.06)
                        pcall(function()
                            tR:FireServer(xT.Attachment)
                        end)
                        local x0_4 = t7(x__8, 0.7)
                        if x0_4 > x__8 then
                            vl[xT.Attachment] = os.clock() + xT.RespawnTime
                            if xU or xY then
                                u5 += 1
                            end
                            task.wait(tN("WaterEssenceDelay", 0.5))
                            if xY and u5 >= xV_2 then
                                if Toggles.AutoCollectWaterEssence and Toggles.AutoCollectWaterEssence.Value then
                                    Toggles.AutoCollectWaterEssence:SetValue(false)
                                    Library:Notify(("Grabbed %d Water Essence orbs"):format(u5))
                                end
                                return true
                            end
                            return true
                        end
                        task.wait(0.12)
                        ye_2 += 1
                    end
                    vl[xT.Attachment] = os.clock() + 1.25
                end
            end
        end
    end
    if xY and u5 >= xV_2 then
        return false
    elseif xY then
        return false
    else
        if not tV then
            tV = Remotes:FindFirstChild("CollectWaterWellRemote")
        end
        if tV then
            local xV_5 = not xV
            local xX_7 = not xU
            if xX_7 ~= false then
                xX_7 = xV_5
            end
            if xX_7 then
                return false
            end
            local xV_6 = xU and not GX_9("AutoCollectWaterEssence")
            xX_8 = xV_6 and not xV
            if xX_8 then
                return false
            end
            xU_4 = uv()
            if xU_4 then
                tY(xU_4, 14)
                task.wait(0.15)
            end
            pcall(function()
                tV:InvokeServer()
            end)
            task.wait(tN("WaterEssenceDelay", 0.5))
            return true
        end
        return false
    end
end
tG = fn1294
u6 = function()
    local yI = if not GX_9("AutoSunflower") then 1 else 0
    if yI == 1 then
        return false
    elseif type(filtergc) ~= "function" then
        return false
    else
        local yD = filtergc("table", { Keys = { "GetCallback", "ItemModel" } }, false)
        if type(yD) ~= "table" then
            return false
        end
        local yE = 0
        for k, v in yD do
            local yO = v
            local yD_1 = Library.Unloaded or not GX_9("AutoSunflower")
            if yD_1 then
                break
            end
            local yD_2 = yO.NeverDespawn and not yO.GotDrop and type(yO._getDrop) == "function"
            if yD_2 then
                local yD_3 = pcall(function()
                    yO:_getDrop()
                end)
                if yD_3 then
                    yE += 1
                    if yE >= 8 then
                        break
                    end
                end
            end
        end
        if yE > 0 then
            vb = false
            task.wait(0.55)
            return true
        end
        return false
    end
end
t4 = function()
    local yS_1
    local yR_1
    if not GX_9("AutoSunflower") then
        return false
    end
    if not tO then
        tO = Remotes:FindFirstChild("UseItemOnFlowerRemote")
    end
    if not tO then
        return false
    end
    local yQ = tG()
    local yP = yQ[1]
    if not yP then
        return false
    elseif not GX_1(yP.Position) then
        return false
    else
        task.wait(0.2)
        local yQ_1 = Library.Unloaded or not GX_9("AutoSunflower")
        if yQ_1 then
            return false
        elseif u_() < yP.Cost then
            return false
        else
            local Steps = yP.Steps
            yR_1, yS_1 = pcall(function()
                return tO:InvokeServer(yP.Attachment)
            end)
            if not (yR_1 and yS_1) then
                task.wait(0.25)
                return false
            end
            task.wait(tN("SunflowerDelay", 0.45))
            local StepsCompleted = yP.Attachment:FindFirstChild("StepsCompleted")
            local yS_2 = StepsCompleted and StepsCompleted:FindFirstChild("MaxSteps")
            local yT_1 = StepsCompleted
            if yT_1 then
                yT_1 = tonumber(StepsCompleted.Value)
            end
            local yR_3 = yT_1
            local yY = if yR_3 then 1 else 0
            local yW = 4014 * yY + 732 * (1 - yY)
            local yX = 2604 * yY + 3089 * (1 - yY)
            if not ((yW * 2796 + yX * 800 + yW * yX) % 16777213 == 6981587) then
                yR_3 = Steps
            end
            local yQ_3 = yS_2
            local yS_3 = yR_3
            if yQ_3 then
                yQ_3 = tonumber(yS_2.Value)
            end
            local yQ_4 = yQ_3 or yP.MaxSteps
            if yQ_4 > 0 and yS_3 >= yQ_4 then
                vb = true
                task.wait(0.65)
                u6()
            end
            return true
        end
    end
end
tU = fn1209
u1 = fn1024
uH = fns.fn200
uk = fn1304
GX_4 = fn1124
uy = fn470
t1 = fn800
tD = function(f9, ga)
    if typeof(f9) ~= "Vector3" then
        return false
    end
    local zS = f9 + Vector3.new(0, 4, 0)
    local zQ = CFrame.new(zS)
    if typeof(ga) == "Vector3" then
        zQ = CFrame.lookAt(zS, Vector3.new(ga.X, zS.Y, ga.Z))
    end
    local zT = false
    local zR = uy()
    if zR and zR.PrimaryPart then
        zR.PrimaryPart.AssemblyLinearVelocity = Vector3.zero
        zR.PrimaryPart.AssemblyAngularVelocity = Vector3.zero
        local zU_1 = type(zR.MoverClass) == "table" and type(zR.MoverClass.SetPosition) == "function"
        if zU_1 then
            pcall(function()
                zR.MoverClass:SetPosition(zS)
            end)
        end
        if typeof(zR.DragonModel) == "Instance" then
            pcall(function()
                zR.DragonModel:PivotTo(zQ)
            end)
        else
            zR.PrimaryPart.CFrame = zQ
        end
        zT = true
    end
    local zU_2 = t0()
    if zU_2 then
        zU_2.AssemblyLinearVelocity = Vector3.zero
        zU_2.AssemblyAngularVelocity = Vector3.zero
        zU_2.CFrame = zQ
        zT = true
    end
    return zT
end
ub = fns.fn263
uT = fn979
un = fns.fn345
vm = function(g0, g1)
    local Ar_1
    local Aq_1
    if not tH then
        tH = Remotes:FindFirstChild("MinigameQueueRemote")
    end
    if not tH then
        return false
    end
    Aq_1, Ar_1 = pcall(function()
        return tH:InvokeServer(g0, g1)
    end)
    if not Aq_1 then
        return false
    elseif g1 then
        return Ar_1 == true
    else
        return true
    end
end
up = fn642
tX = fns.fn96
tz = fn492
uw = fn631
tB = fn1154
uD = fns.fn379
GX_7 = function(h1)
    local Bt_1, Bt_2
    local Bs_1, Bs_2
    if not h1 then
        return
    end
    local Br = uD()
    if Br then
        Bs_1, Bt_1 = pcall(function()
            return Br:_getButtonFromInstance(h1)
        end)
        local Bu_1 = Bs_1 and type(Bt_1) == "table" and type(Bt_1.OnClick) == "table"
        if Bu_1 then
            for k, v in Bt_1.OnClick do
                if type(v) == "function" then
                    pcall(v)
                end
            end
        end
    end
    pcall(function()
        if typeof(h1.Activate) == "function" then
            h1:Activate()
        end
    end)
    if firesignal then
        pcall(function()
            firesignal(h1.MouseButton1Click)
        end)
        pcall(function()
            firesignal(h1.Activated)
        end)
    end
    if getconnections then
        for k, v in { "MouseButton1Click", "Activated", "MouseButton1Down" } do
            Bs_2, Bt_2 = pcall(getconnections, h1[v])
            local Bu_2 = Bs_2 and type(Bt_2) == "table"
            if Bu_2 then
                for k, v in Bt_2 do
                    local BW = v
                    pcall(function()
                        BW:Fire()
                    end)
                end
            end
        end
    end
end
ul = fn436
uM = fns.fn217
ug = function()
    local Cp_1
    local Co_1
    if not tE then
        tE = Remotes:FindFirstChild("GetCatchObjectRemote")
    end
    local Ch = not tE or type(filtergc) ~= "function"
    if Ch then
        return
    end
    if os.clock() - ui < 0.1 then
        return
    end
    ui = os.clock()
    local Ch_1 = filtergc("table", { Keys = { "Id", "StarType", "Claimed", "ImpactPos", "StartPos", "CoreMarker" } }, false)
    if type(Ch_1) ~= "table" then
        return
    end
    local Ci = Workspace:GetServerTimeNow()
    local Cj = t0()
    local Ck = Cj and Cj.Position
    local Cl = {}
    for k, v in Ch_1 do
        local CA = v
        if not (type(CA) ~= "table") then
            if not (CA.StarType ~= "Good") then
                if not (CA.Claimed or CA.Id == nil or uo[CA.Id]) then
                    if not (not CA.Model or not CA.Model.Parent) then
                        local ImpactPos = CA.ImpactPos
                        if not (typeof(ImpactPos) ~= "Vector3") then
                            local Ck_1 = uM(CA, Ci)
                            if not (Ck_1 < 0.985) then
                                local Cn
                                Co_1, Cp_1 = pcall(function()
                                    return CA.Model:GetPivot().Position
                                end)
                                if Co_1 and Cp_1 then
                                    Cn = Cp_1.Y
                                end
                                if not (Cn and Cn - ImpactPos.Y > 10) then
                                    local Co_3 = Ck and (Ck - ImpactPos).Magnitude or 0
                                    Cl[#Cl + 1] = { Star = CA, Id = CA.Id, Impact = ImpactPos, Fill = Ck_1, Distance = Co_3 }
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    table.sort(Cl, function(jf, jg)
        if math.abs(jf.Fill - jg.Fill) > 0.005 then
            return jf.Fill > jg.Fill
        end
        return jf.Distance < jg.Distance
    end)
    local Cg = Cl[1]
    if not Cg or not Cj then
        return
    end
    Cj.AssemblyLinearVelocity = Vector3.zero
    Cj.AssemblyAngularVelocity = Vector3.zero
    Cj.CFrame = CFrame.new(Cg.Impact + Vector3.new(0, 3, 0))
    task.wait(0.05)
    local CD = 1
    while CD <= 3 do
        pcall(function()
            tE:FireServer(Cg.Id)
        end)
        task.wait(0.04)
        CD += 1
    end
    uo[Cg.Id] = true
    Cg.Star.Claimed = true
end
tI = fn844
uK = fn404
uf = fn732
vn = function(jQ)
    local CV = uy()
    if not CV then
        ue = false
        return false
    end
    local Breath = CV.Breath
    if jQ then
        if type(CV._setAttack) == "function" then
            pcall(function()
                CV:_setAttack(true, "Fire")
            end)
        else
            CV.WantsBreath = true
        end
        ue = true
        return true
    end
    CV.ForceBreathTarget = nil
    tS = nil
    local CW = tI()
    if CW then
        CW.DragonBreathAttackPart = nil
    end
    if type(Breath) == "table" then
        Breath.AutoTarget = nil
        if Breath.FakeMouse then
            Breath.FakeMouse.OverridePosition = nil
        end
    end
    if type(CV._setAttack) == "function" then
        pcall(function()
            CV:_setAttack(false, "Fire")
        end)
    else
        CV.WantsBreath = false
        local CW_1 = type(Breath) == "table" and type(Breath.Stop) == "function"
        if CW_1 then
            pcall(function()
                Breath:Stop()
            end)
        end
    end
    ue = false
    Id2 = nil
    return true
end
t6 = function(j3)
    if typeof(j3) ~= "Vector3" then
        return false
    end
    local C2 = t1()
    if not C2 then
        return false
    end
    local C1 = CFrame.lookAt(C2, Vector3.new(j3.X, C2.Y, j3.Z))
    local C0 = uy()
    if C0 and C0.PrimaryPart then
        C0.PrimaryPart.AssemblyLinearVelocity = Vector3.zero
        C0.PrimaryPart.AssemblyAngularVelocity = Vector3.zero
        if typeof(C0.DragonModel) == "Instance" then
            pcall(function()
                C0.DragonModel:PivotTo(C1)
            end)
        else
            C0.PrimaryPart.CFrame = C1
        end
    end
    local C2_2 = t0()
    if C2_2 then
        C2_2.CFrame = C1
    end
    return true
end
vg = function()
    local C9 = os.clock()
    if C9 - t3 < 0.12 and #ua > 0 then
        local Da_1 = {}
        for k, v in ua do
            local Part = v.Part
            local Dc_1 = typeof(Part) == "Instance" and Part.Parent
            if Dc_1 then
                local Dead = Part:FindFirstChild("Dead")
                local Dd = Dead and Dead:IsA("BoolValue") and Dead.Value
                if not Dd then
                    v.Position = Part.Position
                    Da_1[#Da_1 + 1] = v
                end
            end
        end
        ua = Da_1
        local C7 = t1()
        if C7 then
            table.sort(ua, function(ks, kt)
                return (C7 - ks.Position).Magnitude < (C7 - kt.Position).Magnitude
            end)
        end
        return ua
    end
    t3 = C9
    local C9_1 = {}
    local Da_2 = uK()
    if Da_2 then
        for i, child in Da_2:GetChildren() do
            if child.Name == "WhackAMoleEgg" then
                local PrimaryPart = child.PrimaryPart
                if typeof(PrimaryPart) == "Instance" then
                    local Dead = PrimaryPart:FindFirstChild("Dead")
                    local Dc_3 = Dead and Dead:IsA("BoolValue") and Dead.Value
                    if not Dc_3 then
                        C9_1[#C9_1 + 1] = { Id = tostring(child), Position = PrimaryPart.Position, Part = PrimaryPart, Model = child }
                    end
                end
            end
        end
    end
    ua = C9_1
    local C8 = t1()
    if C8 then
        table.sort(ua, function(kF, kG)
            return (C8 - kF.Position).Magnitude < (C8 - kG.Position).Magnitude
        end)
    end
    return ua
end
uR = fn850
if (ue and tM and (not tM or not uG) or (not ue and tM or (not ue or not ue))) and (uG and ue and (tM or not uG) or (not ue or tM or (not ue or not ue))) and ((not tM or not ue) and (not tM and not tM) or (uG and ue or (tM or ue)) or (not tM or ue) and (ue or not uG) and ((uG or tM) and (not ue or tM))) or not ((ue and tM and (not tM or not uG) or (not ue and tM or (not ue or not ue))) and (uG and ue and (tM or not uG) or (not ue or tM or (not ue or not ue))) and ((not tM or not ue) and (not tM and not tM) or (uG and ue or (tM or ue)) or (not tM or ue) and (ue or not uG) and ((uG or tM) and (not ue or tM)))) then
    tx = fns.fn208
else
    vg = fns.fn208
end
uz = fn602
vk = fn543
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = uh, Copyable = true }, "|", um },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
vd = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gamepad-2"),
    Solstice = Window:AddTab("Solstice", "sun"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in vd do
    if k ~= "Info" then
        fns.fn43(v)
    end
end
GX_2, GX_15 = nil, nil
if (GX_15 or 5) and (GX_2 and not GX_15) or GX_2 and 5 and 5 or not ((GX_15 or 5) and (GX_2 and not GX_15) or GX_2 and 5 and 5) then
    GX_2 = vd.Main:AddLeftGroupbox("Eggs", "egg")
else
    vd = GX_2.Main:AddLeftGroupbox("Eggs", "egg")
end
if (GX_2 or false or (GX_2 or not GX_2) or (GX_2 or GX_2 and false)) and (not GX_15 and not GX_2 or not GX_15 or false) or (GX_15 or not GX_2 and not GX_2) and 10 and ((GX_15 and GX_2 or not GX_15 and not GX_2) and (GX_2 or 10)) or not ((GX_2 or false or (GX_2 or not GX_2) or (GX_2 or GX_2 and false)) and (not GX_15 and not GX_2 or not GX_15 or false) or (GX_15 or not GX_2 and not GX_2) and 10 and ((GX_15 and GX_2 or not GX_15 and not GX_2) and (GX_2 or 10))) then
    GX_2:AddToggle("AutoCollectEggs", { Text = "Auto Collect Eggs", Default = false })
    GX_2:AddSlider("EggCollectDelay", { Text = "Collect Delay", Default = 0.35, Min = 0.1, Max = 3, Rounding = 2 })
    GX_15 = vd.Solstice:AddLeftGroupbox("Solstice", "sun")
else
    GX_15:AddToggle("AutoCollectEggs", { Text = "Auto Collect Eggs", Default = false })
    GX_15:AddSlider("EggCollectDelay", { Default = 0.35, Text = "Collect Delay", Rounding = 2, Min = 0.1, Max = 3 })
    vd = GX_2.Solstice:AddLeftGroupbox("Solstice", "sun")
end
GX_15:AddToggle("AutoCollectWaterEssence", { Text = "Auto Collect Water Essence", Default = false })
GX_15:AddInput("WaterEssenceGrabAmount", {
    Text = "Grab Amount",
    Default = "0",
    Numeric = true,
    Finished = false,
    Placeholder = "0 = unlimited"
})
GX_15:AddSlider("WaterEssenceDelay", { Text = "Collect Delay", Default = 0.5, Min = 0.2, Max = 5, Rounding = 2 })
GX_15:AddDivider("Sunflower")
GX_15:AddToggle("AutoSunflower", { Text = "Auto Sunflower", Default = false })
GX_15:AddSlider("SunflowerDelay", { Text = "Sunflower Delay", Default = 0.45, Min = 0.2, Max = 5, Rounding = 2 })
GX_15:AddDivider("Carnival")
GX_15:AddToggle("AutoPlayCarnival", { Text = "Auto Play Carnival", Default = false })
GX_15:AddDropdown("CarnivalGame", {
    Text = "Carnival Game",
    Values = { "Star Catchers", "Sun Smasher", "Do Both in Order" },
    Default = 1
})
GX_15:AddToggle("EssenceIfCantAfford", { Text = "Essence If Can't Afford", Default = false })
GX_15:AddSlider("CarnivalDelay", { Text = "Carnival Delay", Default = 0.6, Min = 0.2, Max = 10, Rounding = 1 })
if Toggles.AutoCollectWaterEssence then
    Toggles.AutoCollectWaterEssence:OnChanged(function()
        if Toggles.AutoCollectWaterEssence.Value then
            u5 = 0
        end
    end)
end
GX_24 = 1
repeat
    GX_15 = {
        "oafi",
        "yegimsmax",
        "ttydnt",
        "vkvkucwazvb",
        "mrety",
        "xyg",
        "bmtyicnz",
        "kpimasfg",
        "lbofpbfsnw",
        "gqtxotewjg",
        "oaguyw"
    }
    local JG = GX_24
    GX_2 = GX_15[JG % 11 + 1]
    if GX_2:len() <= GX_2:reverse():rep(JG % 3 + 2):len() then
        task.spawn(worker3)
        task.spawn(worker2)
        task.spawn(fns.worker)
    else
        task.spawn(worker3)
        task.spawn(worker2)
        task.spawn(fns.worker)
    end
    GX_24 = (GX_24 + 3) % 4
until (GX_24 * 3 + 0) % 4 == 0
if not GX_30 then
    GX_30 = Remotes:FindFirstChild("FlowerDropsRemote")
end
if GX_30 then
    GX_24 = 2
    repeat
        local J0 = bit32.rrotate(bit32.bxor(bit32.lrotate(GX_24, 25), string.byte(tostring(GX_24))), 18)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(J0, 3731275047), 1451231993), (bit32.bxor(bit32.band(J0, 563692248), 2845273679))), 1451231993), 2845273679) == J0 then
            uG(GX_30.OnClientEvent:Connect(onOnClientEvent))
        else
            GX_30(uG.OnClientEvent:Connect(onOnClientEvent))
        end
        GX_24 = (GX_24 + 3) % 8
    until (GX_24 * 3 + 0) % 8 == 7
end
u3, uX, ux, ve = nil, nil, nil, nil
ve = fn739
GX_15 = function()
    local EN
    local EJ
    EJ = nil
    EN = nil
    local Label3, EL, EM, Label, Label2
    EN = "Unknown"
    pcall(function()
        local Ew_1
        local Ev_1
        if identifyexecutor then
            Ew_1, Ev_1 = identifyexecutor()
            local Ex = Ew_1 ~= ""
            local Ey = type(Ew_1) == "string" and Ex
            if Ey then
                local Ex_1 = type(Ev_1) == "string" and Ev_1 ~= "" and Ew_1 .. " " .. Ev_1
                local Ev_2 = Ex_1
                local EC = if Ev_2 then 1 else 0
                local EA = 2175 * EC + 3821 * (1 - EC)
                local EB = 3389 * EC + 3458 * (1 - EC)
                if not ((EA * 3754 + EB * 3918 + EA * EB) % 16777213 == 12036914) then
                    Ev_2 = Ew_1
                end
                EN = Ev_2
            end
        end
    end)
    local EQ = ve()
    EJ = os.clock()
    EM = function()
        local ED = math.floor(os.clock() - EJ)
        if ED < 60 then
            return ED .. "s"
        elseif ED < 3600 then
            return string.format("%dm %ds", ED // 60, ED % 60)
        else
            return string.format("%dh %dm", ED // 3600, ED % 3600 // 60)
        end
    end
    local UserGroup = vd.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(tK("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, vo), true)
    UserGroup:AddLabel(tK("UserId", tostring(LocalPlayer.UserId), vf), true)
    UserGroup:AddLabel(tK("Executor", EN .. "  " .. EQ, vo), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(tK("Session", EM(), u7), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            uq(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            uq("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = vd.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(tK("Game", um, vf), true)
    Label2 = SessionGroup:AddLabel(tK("Players", "0/0", vo), true)
    EL = tostring(game.JobId)
    local ER_1 = #EL > 18 and string.sub(EL, 1, 18) .. "..."
    local ER_2 = ER_1 or EL
    SessionGroup:AddLabel(tK("Job", ER_2, u2), true)
    Label = SessionGroup:AddLabel(tK("Ping", "0 ms", u7), true)
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
            uq(EL, "Copied Job ID")
        end
    })
    task.spawn(function()
        local EG_1
        local EF_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(tK("Session", EM(), u7))
            Label2:SetText(tK("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), vo))
            EF_1, EG_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local EF_2 = EF_1 and EG_1 .. " ms" or "n/a"
            Label:SetText(tK("Ping", EF_2, u7))
        end
    end)
    local SocialsGroup = vd.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = t5 })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            uq(ud, "Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            uq(t9, "Copied website link")
        end
    })
end
GX_15()
local function GX_18()
    local connection
    local MovementGroup = vd.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = vd.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local function nk(nl)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not nl)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not nl
            end
        end)
        if not nl then
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
    local function ny(nz)
        if not nz:IsA("ProximityPrompt") then
            return
        end
        nz.HoldDuration = 0
        nz.MaxActivationDistance = 50
        nz.RequiresLineOfSight = false
    end
    connection = nil
    uG(vj.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = LocalPlayer.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local E1_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if E1_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end))
    uG(u9.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local Fc_1 = uj()
            if Fc_1 then
                Fc_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end))
    local CurrentCamera = Workspace.CurrentCamera
    uG(vj.RenderStepped:Connect(function(nW)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local Fe_1 = uj()
            if Fe_1 then
                Fe_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local Fe_3 = t0()
            local Ff = uj()
            if Fe_3 and Ff then
                Ff.PlatformStand = true
                local Ff_1 = Vector3.zero
                if u9:IsKeyDown(Enum.KeyCode.W) then
                    Ff_1 += CurrentCamera.CFrame.LookVector
                end
                local Fk = if u9:IsKeyDown(Enum.KeyCode.S) then 1 else 0
                if Fk == 1 then
                    Ff_1 -= CurrentCamera.CFrame.LookVector
                end
                if u9:IsKeyDown(Enum.KeyCode.A) then
                    Ff_1 -= CurrentCamera.CFrame.RightVector
                end
                if u9:IsKeyDown(Enum.KeyCode.D) then
                    Ff_1 += CurrentCamera.CFrame.RightVector
                end
                if u9:IsKeyDown(Enum.KeyCode.Space) then
                    Ff_1 += Vector3.new(0, 1, 0)
                end
                if u9:IsKeyDown(Enum.KeyCode.LeftControl) then
                    Ff_1 -= Vector3.new(0, 1, 0)
                end
                Fe_3.AssemblyLinearVelocity = Vector3.zero
                if Ff_1.Magnitude > 0 then
                    Fe_3.CFrame = Fe_3.CFrame + Ff_1.Unit * Options.FlySpeed.Value * nW
                end
            end
        end
    end))
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local Fl = uj()
            if Fl then
                Fl.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local Fn = uj()
            if Fn then
                Fn.WalkSpeed = 16
            end
        end
    end)
    Toggles.AntiGameplayPause:OnChanged(function()
        nk(Toggles.AntiGameplayPause.Value)
    end)
    nk(true)
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in Workspace:GetDescendants() do
                pcall(ny, descendant)
            end
            connection = Workspace.DescendantAdded:Connect(function(oq)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(ny, oq)
                end
            end)
            uG(connection)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                nk(true)
            end
        end
    end)
    return nk, function()
        if connection then
            connection:Disconnect()
            connection = nil
        end
    end
end
u3, uX = GX_18()
local function GX_28(oD)
    local oE = 0
    local oF = tick()
    oD:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = oD:AddLabel("AFK triggers: 0")
    local function oH()
        local CurrentCamera = Workspace.CurrentCamera
        if not CurrentCamera then
            return
        end
        u4:CaptureController()
        u4:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        oE += 1
        oF = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. oE)
        end)
    end
    local connection = LocalPlayer.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(oH)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local FF = Toggles.AntiAfk.Value and tick() - oF >= 60
            if FF then
                pcall(oH)
            end
        end
    end)
    oD:AddButton({
        Text = "Unload UI",
        Func = function()
            Library:Unload()
        end
    })
    return connection
end
MenuGroup = vd.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
ux = GX_28(MenuGroup)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(vd.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/DragonAdventures")
local GX_26 = SaveManager:BuildConfigSection(vd.Settings)
SaveManager:LoadAutoloadConfig()
GX_2 = function(o7)
    local function o8(o9, pa)
        local FI_1 = (o9 == "Toggle" and Toggles or Options)[pa]
        local FH_2 = type(FI_1) == "table" and FI_1.Type == o9
        return FH_2 and FI_1 or nil
    end
    local function pi(pj, pk)
        local Type = pk.Type
        if Type == "Toggle" then
            return { idx = pj, type = "Toggle", value = pk.Value == true }
        elseif Type == "Slider" then
            return { idx = pj, type = "Slider", value = tostring(pk.Value) }
        elseif Type == "Dropdown" then
            return { idx = pj, type = "Dropdown", multi = pk.Multi == true, value = pk.Value }
        elseif Type == "Input" then
            local FP = pk.Value or ""
            return { idx = pj, type = "Input", text = tostring(FP) }
        elseif Type == "ColorPicker" then
            return { idx = pj, type = "ColorPicker", value = pk.Value:ToHex(), transparency = pk.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = pj,
                type = "KeyPicker",
                mode = pk.Mode,
                key = pk.Value,
                modifiers = pk.Modifiers,
                toggled = pk.Toggled
            }
        else
            return nil
        end
    end
    local function pm()
        local FV = {}
        for k, v in { Toggles, Options } do
            for k, v in v do
                local FW = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if FW then
                    local FW_1 = pi(k, v)
                    if FW_1 then
                        FV[#FV + 1] = FW_1
                    end
                end
            end
        end
        table.sort(FV, function(pu, pv)
            if pu.type ~= pv.type then
                return pu.type < pv.type
            end
            return pu.idx < pv.idx
        end)
        return { objects = FV }
    end
    local function pw(px)
        local Ge
        Ge = nil
        local Gf = type(px) ~= "table" or type(px.idx) ~= "string" or type(px.type) ~= "string" or SaveManager.Ignore[px.idx]
        if Gf then
            return false
        end
        Ge = o8(px.type, px.idx)
        if not Ge then
            return false
        end
        local Gf_1 = pcall(function()
            if px.type == "Input" then
                if type(px.text) ~= "string" then
                    return
                end
                Ge:SetValue(px.text)
            elseif px.type == "ColorPicker" then
                Ge:SetValueRGB(Color3.fromHex(px.value), px.transparency)
            elseif px.type == "KeyPicker" then
                Ge:SetValue({ px.key, px.mode, px.modifiers })
                if px.mode == "Toggle" and px.toggled ~= nil then
                    Ge.Toggled = px.toggled
                    Ge:Update()
                end
            else
                Ge:SetValue(px.value)
            end
        end)
        return Gf_1
    end
    o7:AddDivider()
    o7:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    o7:AddButton("Export Config to Clipboard", function()
        local Gi_1
        local Gh_1
        Gh_1, Gi_1 = pcall(uY.JSONEncode, uY, pm())
        if not Gh_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local Gh_2 = setclipboard
        local Gn = if Gh_2 then 1 else 0
        local Gl = 2221 * Gn + 1232 * (1 - Gn)
        local Gm = 3404 * Gn + 2209 * (1 - Gn)
        if not ((Gl * 550 + Gm * 768 + Gl * Gm) % 16777213 == 11396106) then
            Gh_2 = toclipboard
        end
        local Gj = Gh_2
        local Gh_3 = type(Gj) ~= "function" or not pcall(Gj, Gi_1)
        if Gh_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    o7:AddButton("Import Config from ClipboardText", function()
        local Gq_1
        local Go = Options.SaveManager_ImportSource.Value or ""
        local Go_1
        local Gp = tostring(Go):match("^%s*(.-)%s*$")
        if Gp == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        Go_1, Gq_1 = pcall(uY.JSONDecode, uY, Gp)
        local Gp_1 = not Go_1
        local Gx = if Gp_1 then 1 else 0
        local Gv = 287 * Gx + 1829 * (1 - Gx)
        local Gw = 2789 * Gx + 1727 * (1 - Gx)
        if not ((Gv * 3219 + Gw * 979 + Gv * Gw) % 16777213 == 4454727) then
            Gp_1 = type(Gq_1) ~= "table"
        end
        local Gx_1 = if Gp_1 then 1 else 0
        local Gv_1 = 840 * Gx_1 + 527 * (1 - Gx_1)
        local Gw_1 = 2737 * Gx_1 + 2453 * (1 - Gx_1)
        if not ((Gv_1 * 1576 + Gw_1 * 895 + Gv_1 * Gw_1) % 16777213 == 6072535) then
            Gp_1 = type(Gq_1.objects) ~= "table"
        end
        if Gp_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local Go_2 = 0
        for k, v in Gq_1.objects do
            if pw(v) then
                Go_2 += 1
            end
        end
        if Go_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local Gq_2 = Go_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(Go_2, Gq_2), 6)
    end)
end
GX_2(GX_26)
Library:OnUnload(function()
    if uZ then
        uz()
    end
    u3(false)
    uX()
    if ux then
        ux:Disconnect()
    end
    for k, v in uL do
        local GO = v
        pcall(function()
            GO:Disconnect()
        end)
    end
    table.clear(uL)
    local GE = uj()
    if GE then
        GE.PlatformStand = false
        GE.WalkSpeed = 16
    end
end)
