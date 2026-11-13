local Du_1
local su
local tb
local sT
local rT
local sA
local sh
local StartFishing
local rZ
local st
local Library
local Toggles
local rS
local sz
local sg
local PerformRebirth
local sF
local s3
local ss
local sR
local rR
local FishingZones
local tf
local sf
local rX
local sE
local sl
local s2
local r2
local Options
local sr
local s8
local Client
local sQ
local rQ
local te
local se
local sW
local rW
local sD
local sk
local s1
local sJ
local r7
local GetRebirthInfo
local sw
local td
local Rarities
local sC
local r0
local sI
local s6
local r6
local sO
local sv
local sc
local Click
local rU
local s_
local r_
local so
local r5
local rN
local function fn2(ar, as)
    return string.format('<font color="%s">%s</font>', as, ar)
end
local function fn62()
    local Character = rS.Character
    local tN = Character and Character:FindFirstChildOfClass("Humanoid")
    return tN
end
local function fn113()
    local wP = sg()
    local wQ = wP and wP:GetPivot().Position
    local wR = wQ
    if not wR then
        local wQ_1 = sk() and sk().Position
        wR = wQ_1
    end
    local wQ_2 = wR
    if not wQ_2 then
        return false
    end
    local wR_1 = sz.targetZone
    local wS = not wR_1 or not wR_1.Parent or not rU(wR_1)
    if wS then
        wR_1 = sW(wQ_2)
        sz.targetZone = wR_1
    end
    if not wR_1 then
        return false
    elseif not wP then
        return false
    elseif r2(wR_1, wP:GetPivot().Position, 10) then
        return true
    else
        sw(wR_1.Position)
        task.wait(0.25)
        local wP_1 = sg()
        local wQ_3 = wP_1 ~= nil and r2(wR_1, wP_1:GetPivot().Position, 10)
        return wQ_3
    end
end
local function fn144()
    local u9 = sC()
    local va = u9 and u9.owned_boats
    local vb = {}
    if type(va) == "table" then
        for k, v in va do
            local va_1 = v == true and type(k) == "string"
            if va_1 then
                table.insert(vb, k)
            end
        end
    end
    table.sort(vb)
    if #vb == 0 then
        local va_2 = u9 and u9.selected_boat_skin
        local va_3 = va_2 ~= ""
        local vc_1 = type(va_2) == "string" and va_3
        if vc_1 then
            table.insert(vb, va_2)
        else
            table.insert(vb, "Speedboat")
        end
    end
    return vb
end
local function fn145()
    if st.folder and st.folder.Parent then
        return st.folder
    end
    local OuroborosPoolEsp = r6:FindFirstChild("OuroborosPoolEsp")
    if OuroborosPoolEsp then
        OuroborosPoolEsp:Destroy()
    end
    local folder = Instance.new("Folder")
    folder.Name = "OuroborosPoolEsp"
    folder.Parent = r6
    st.folder = folder
    return folder
end
local function fn154(ef)
    local ww_1
    local wv_1
    local wu = sE()
    if not wu then
        return nil
    end
    ww_1, wv_1 = nil, nil
    for i, child in wu:GetChildren() do
        local wu_1 = child:IsA("BasePart") and rU(child)
        if wu_1 then
            local wu_2 = sA(child)
            local wx = Rarities.rank(wu_2) or 0
            local wy = wx * 100000 - (child.Position - ef).Magnitude
            if not wv_1 or wy > wv_1 then
                ww_1 = child
                wv_1 = wy
            end
        end
    end
    return ww_1
end
local function fn174()
    local w8_1
    s8()
    local w6 = select(1, rX())
    local w7 = s3(w6)
    local w7_2
    if w7 then
        if not rT() then
            rW()
        end
        if rT() then
            sw(w7 + Vector3.new(0, 0, -10))
            task.wait(0.25)
            rW()
        else
            rN(w7)
            task.wait(0.25)
        end
    end
    se("dump_boat", {})
    task.wait(0.25)
    se("dump_boat", {})
    sz.lastDeposit = os.clock()
    local w7_1 = r_("AutoEquipBest") and s1()
    if w7_1 then
        se("aquarium_equip_best", {})
        sz.lastEquipBest = os.clock()
    end
    if r_("AutoCollectCash") then
        w7_2, w8_1 = rX()
        local w7_3 = w8_1 and w8_1.income_pending
        local w7_4 = s6(w6)
        local w6_1 = type(w7_3) == "number" and w7_3 >= 1
        if w6_1 and w7_4 then
            local w6_2 = sT()
            if w6_2 then
                w6_2.Sit = false
            end
            task.wait(0.2)
            rN(w7_4)
            sz.lastCollectCash = os.clock()
            task.wait(0.8)
        end
    end
    rW()
    sz.targetZone = nil
end
local function fn176()
    local Character = rS.Character
    local tQ = Character and Character:FindFirstChild("HumanoidRootPart")
    return tQ
end
local function fn214()
    local uq_1, uq_3
    local uo = sQ("BoatController")
    local uo_5
    local up = uo and uo.isPiloting
    local up_1, up_3
    if up then
        up_1, uq_1 = pcall(uo.isPiloting)
        if up_1 then
            return uq_1 == true
        end
        sT()
        if not uo_5 then
            return false
        end
        while true do
            if uq_3 then
                if up_3:GetAttribute("OwnerUserId") == rS.UserId then
                    return true
                end
                continue
            end
            break
        end
        return false
    end
    local uo_4 = sT()
    up_3 = uo_4 and uo_4.SeatPart
    uo_5 = up_3
    if not uo_5 then
        return false
    end
    while true do
        uq_3 = up_3 and up_3 ~= r6
        if uq_3 then
            if up_3:GetAttribute("OwnerUserId") == rS.UserId then
                return true
            end
            up_3 = up_3.Parent
            continue
        end
        break
    end
    return false
end
local function fn282()
    local SelectedBoat = Options.SelectedBoat
    local vo = SelectedBoat and SelectedBoat.Value
    local vo_1 = vo ~= ""
    local vp = type(vo) == "string" and vo_1
    if vp then
        return vo
    end
    local vn_2 = s_()
    return vn_2[1]
end
local function fn289(bW)
    local world = r6:FindFirstChild("world")
    local uS = world and world:FindFirstChild("plots")
    if not uS or bW == nil then
        return nil
    end
    return uS:FindFirstChild(tostring(bW))
end
local function worker4()
    local zg_1
    while not Library.Unloaded do
        local zf = r_("AutoCollectCash") and not r_("AutoFish") and not rT() and not sz.fishing and os.clock() - sz.lastCollectCash >= 1.25
        local zf_1
        if zf then
            zg_1, zf_1 = rX()
            local zh = zf_1 and zf_1.income_pending
            local zh_1 = type(zh) == "number" and zh >= 1
            if zh_1 then
                local zf_3 = s6(zg_1)
                if zf_3 then
                    sz.lastCollectCash = os.clock()
                    rN(zf_3)
                end
            end
        end
        task.wait(0.4)
    end
end
local function fn300()
    local t5_1
    local t4_1
    t4_1, t5_1 = pcall(function()
        return Client:GetReplion("PlayerData")
    end)
    if t4_1 and t5_1 then
        return t5_1.Data
    end
    return nil
end
local function fn321(fO, fP)
    local xp_1
    local xo_1
    xp_1, xo_1 = nil, nil
    for k, v in r0:GetTagged("Npc") do
        local xq = v.Parent and v:GetAttribute("NpcType") == "RoguePirate"
        if xq then
            local xq_1 = v:IsA("Model") and v:GetPivot().Position
            local xr = xq_1 or nil
            if typeof(xr) == "Vector3" then
                local Magnitude = (xr - fO).Magnitude
                if Magnitude <= fP and (not xo_1 or Magnitude < xo_1) then
                    xp_1 = v
                    xo_1 = Magnitude
                end
            end
        end
    end
    return xp_1, xo_1
end
local function fn334(aN)
    local tS = sk()
    local tT = not tS
    local tX = if tT then 1 else 0
    local tV = 1062 * tX + 2066 * (1 - tX)
    local tW = 1582 * tX + 3509 * (1 - tX)
    if not ((tV * 2754 + tW * 8 + tV * tW) % 16777213 == 4617488) then
        tT = typeof(aN) ~= "Vector3"
    end
    if tT then
        return false
    end
    tS.CFrame = CFrame.new(aN)
    tS.AssemblyLinearVelocity = Vector3.zero
    return true
end
local function fn343(d5)
    local wm = FishingZones.getAll()[d5.Name]
    local wn = wm and type(wm.Rarity) == "string"
    if wn then
        return wm.Rarity
    end
    return (d5.Name:gsub("Zone", ""))
end
local function fn366(eY)
    local wU = sc(eY)
    if not wU then
        return nil
    end
    local wV = wU:FindFirstChild("SpawnPoint") or wU:FindFirstChild("Spawn")
    local wU_1 = wV
    if wV then
        wV = wU_1:IsA("BasePart")
    end
    if wV then
        return wU_1.Position + Vector3.new(0, 4, 0)
    end
    local wV_1 = wU_1 and wU_1:IsA("Model")
    if wV_1 then
        return wU_1:GetPivot().Position + Vector3.new(0, 4, 0)
    end
    return nil
end
local function fn378(gr)
    local xZ = FishingZones.getAll()[gr.Name]
    local x_ = xZ and typeof(xZ.Color) == "Color3"
    if x_ then
        return xZ.Color
    end
    local x__1 = xZ and xZ.Rarity
    local xZ_1 = x__1
    if x__1 then
        x__1 = Rarities.solidColor
    end
    if x__1 then
        local x__2 = Rarities.solidColor(xZ_1)
        if typeof(x__2) == "Color3" then
            return x__2
        end
        return Color3.fromRGB(80, 180, 255)
    end
    return Color3.fromRGB(80, 180, 255)
end
local function fn389()
    if not Toggles.AutoFish.Value then
        s8()
        sz.farmPhase = "idle"
        sz.targetZone = nil
    end
end
local function fn402()
    return sF
end
local function fn439()
    local uI = sC()
    local uJ = uI and uI.boat_cargo
    local uI_1 = uJ
    if uJ then
        uJ = uI_1.capacity
    end
    local uI_2 = uJ
    if type(uI_2) == "number" then
        return uI_2
    end
    return 0
end
local function fn463()
    local uO = sC()
    local uP = uO and uO.inventory
    local uP_1 = type(uP) == "table" and next(uP) ~= nil
    return uP_1
end
local function fn464()
    local uy = sC()
    local uz = uy and uy.boat_cargo
    local uy_1 = uz
    if uz then
        uz = uy_1.items
    end
    local uy_2 = uz
    if type(uy_2) ~= "table" then
        return 0
    end
    local uz_1 = 0
    for k in uy_2 do
        uz_1 += 1
    end
    return uz_1
end
local function worker6()
    while not Library.Unloaded do
        sv()
        local zz = r_("FishingPoolEsp") and 0.15
        local zA = zz or 0.5
        task.wait(zA)
    end
end
local function fn519(gB)
    local x4 = FishingZones.getAll()[gB.Name]
    local x5 = x4 and type(x4.DisplayName) == "string"
    if x5 then
        return x4.DisplayName
    end
    return gB.Name
end
local function fn529()
    local ud_1
    local ub = sQ("PlotController")
    local uc = ub and ub.getMyPlot
    local uc_1
    if uc then
        ud_1, uc_1 = ub.getMyPlot()
        return ud_1, uc_1
    end
    local UserId = rS.UserId
    for k, v in Client:GetReplions() do
        local Data = v.Data
        local ud_2 = type(Data) == "table" and Data.owner_id == UserId and Data.slot_id ~= nil
        if ud_2 then
            return tostring(Data.slot_id), Data
        end
    end
    return nil, nil
end
local function worker3()
    while not Library.Unloaded do
        local zd = r_("AutoEquipBest") and not r_("AutoFish") and os.clock() - sz.lastEquipBest >= 2
        if zd then
            if s1() then
                sz.lastEquipBest = os.clock()
                se("aquarium_equip_best", {})
            end
        end
        task.wait(0.5)
    end
end
local function fn538(ce)
    local u3 = sc(ce)
    if not u3 then
        return nil
    end
    local DropOffArea = u3:FindFirstChild("DropOffArea")
    local u3_1 = DropOffArea and DropOffArea:IsA("BasePart")
    if u3_1 then
        return DropOffArea.Position + Vector3.new(0, 4, 0)
    end
    return nil
end
local function onOnClientEvent(hD)
    if type(hD) ~= "table" then
        return
    end
    local yG = hD.phase == "catch"
    local yK = if yG then 1 else 0
    local yI = 3803 * yK + 1072 * (1 - yK)
    local yJ = 1230 * yK + 4027 * (1 - yK)
    if not ((yI * 2496 + yJ * 328 + yI * yJ) % 16777213 == 14573418) then
        yG = hD.phase == "ended"
    end
    if yG then
        sz.fishing = false
    end
end
local function fn560()
    local wG = sg()
    if not wG then
        return false
    end
    local Position = wG:GetPivot().Position
    local wG_1 = sE()
    if not wG_1 then
        return FishingZones.findZoneForPosition(Position) ~= nil
    end
    for i, child in wG_1:GetChildren() do
        local wG_2 = child:IsA("BasePart") and rU(child) and r2(child, Position, 10)
        if wG_2 then
            return true
        end
    end
    return false
end
local function fn566()
    local Boats = r6:FindFirstChild("Boats")
    if not Boats then
        return nil
    end
    local vv = tb()
    local vw
    for i, child in Boats:GetChildren() do
        if child:GetAttribute("OwnerUserId") == rS.UserId then
            local vu_1 = vv and child:GetAttribute("BoatType") == vv
            if vu_1 then
                return child
            end
            vw = vw or child
        end
    end
    return vw
end
local function onCharacterAdded(hB)
    so(hB)
end
local function fn602(cR)
    if not cR then
        return nil
    end
    local Seat = cR:FindFirstChild("Seat")
    local vF = Seat and Seat:IsA("VehicleSeat")
    if vF then
        return Seat
    end
    return cR:FindFirstChildWhichIsA("VehicleSeat", true)
end
local function fn639()
    if sz.fishing then
        pcall(function()
            sO:FireServer()
        end)
    end
    sz.fishing = false
    sz.fishingStartedAt = nil
end
local function fn679(ak, al)
    if setclipboard then
        setclipboard(ak)
    elseif toclipboard then
        toclipboard(ak)
    end
    Library:Notify(al)
end
local function fn681(au, av, aw)
    return string.format("<b>%s</b> %s %s", au, s2("-", "#5a6070"), s2(av, aw))
end
local function fn709(aS)
    local t__1
    local PlayerScripts = rS:FindFirstChild("PlayerScripts")
    local tZ = PlayerScripts and PlayerScripts:FindFirstChild("Client")
    local tZ_1
    local tY_1 = tZ
    if tZ then
        tZ = tY_1:FindFirstChild("Main")
    end
    local tY_2 = tZ
    if tZ then
        tZ = tY_2:FindFirstChild("Controllers")
    end
    local tY_3 = tZ
    if tZ then
        tZ = tY_3:FindFirstChild(aS)
    end
    local tY_4 = tZ
    if not tY_4 then
        return nil
    end
    tZ_1, t__1 = pcall(require, tY_4)
    if tZ_1 then
        return t__1
    end
    return nil
end
local function worker5()
    while not Library.Unloaded do
        if r_("AutoLevelUp") then
            r5()
        end
        task.wait(1.5)
    end
end
local function fn738()
    local FishZones = Options.FishZones
    local wb = FishZones and FishZones.Value
    if type(wb) ~= "table" then
        return nil
    end
    local wb_1 = false
    for k, v in wb do
        if v then
            wb_1 = true
            break
        end
    end
    if not wb_1 then
        return nil
    end
    return wb
end
local function fn739(ea)
    local ws = rZ()
    if not ws then
        return true
    end
    return ws[sA(ea)] == true
end
local function fn764()
    local world = r6:FindFirstChild("world")
    local v8 = world and world:FindFirstChild("fishing_zones")
    return v8
end
local function fn800()
    if not Toggles.FishingPoolEsp.Value then
        rR()
    end
end
local function worker2()
    while not Library.Unloaded do
        local y9 = r_("AutoDepositLoot") and not r_("AutoFish")
        if y9 then
            local y9_1 = rQ()
            local za = sh()
            local zb = za > 0 and y9_1 >= za
            local zb_1 = y9_1 > 0
            if zb_1 then
                local y9_2 = zb or os.clock() - sz.lastDeposit >= 2.5
                zb_1 = y9_2
            end
            if zb_1 then
                sJ()
            end
        end
        task.wait(0.35)
    end
end
local function fn821()
    ss(su, "Copied Discord invite to clipboard")
end
local function fn836(az)
    if Library.Unloaded then
        return false
    end
    local tJ = Toggles[az]
    return tJ ~= nil and tJ.Value == true
end
local function fn912(dL, dM, dN)
    local v2 = dL.CFrame:PointToObjectSpace(dM)
    local v3 = dL.Size * 0.5
    local v4 = dN or 8
    local v4_1 = math.abs(v2.X) <= v3.X and math.abs(v2.Z) <= v3.Z and math.abs(v2.Y) <= v3.Y + v4
    return v4_1
end
local function fn915(gG, gH, gI)
    local gK = sI()
    local part = Instance.new("Part")
    part.Name = "PoolMarker"
    part.Anchored = true
    part.CanCollide = false
    part.CanQuery = false
    part.CanTouch = false
    part.CastShadow = false
    part.Material = Enum.Material.Neon
    part.Size = Vector3.new(2.4, 2.4, 2.4)
    part.Shape = Enum.PartType.Ball
    part.Color = gH
    part.Transparency = 0.25
    part.CFrame = CFrame.new(gG.Position + Vector3.new(0, 6, 0))
    part.Parent = gK
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "Label"
    billboardGui.AlwaysOnTop = true
    billboardGui.Size = UDim2.fromOffset(160, 36)
    billboardGui.StudsOffset = Vector3.new(0, 3.5, 0)
    billboardGui.MaxDistance = 4000
    billboardGui.Parent = part
    local textLabel = Instance.new("TextLabel")
    textLabel.Name = "Text"
    textLabel.BackgroundTransparency = 1
    textLabel.Size = UDim2.fromScale(1, 1)
    textLabel.Font = Enum.Font.GothamBold
    textLabel.TextSize = 16
    textLabel.TextColor3 = gH
    textLabel.TextStrokeTransparency = 0.2
    textLabel.Text = gI
    textLabel.Parent = billboardGui
    return part
end
local function fn920()
    local yy_1
    local yx = os.clock()
    local yx_1
    if yx - sz.lastLevelUp < 3 then
        return
    end
    sz.lastLevelUp = yx
    yx_1, yy_1 = pcall(function()
        return GetRebirthInfo:InvokeServer()
    end)
    local yz = not yx_1 or type(yy_1) ~= "table"
    local yD = if yz then 1 else 0
    local yB = 2970 * yD + 2209 * (1 - yD)
    local yC = 2022 * yD + 2393 * (1 - yD)
    if not ((yB * 1925 + yC * 3876 + yB * yC) % 16777213 == 2782649) then
        yz = yy_1.can_rebirth ~= true
    end
    if yz then
        return
    end
    if yy_1.fish_in_boat == true then
        sJ()
        task.wait(0.4)
    end
    pcall(function()
        PerformRebirth:InvokeServer()
    end)
end
local function onOnClientEvent2()
    sz.fishing = false
    local yL = r_("AutoFish") or r_("AutoDepositLoot")
    if yL then
        sJ()
    end
end
local function fn1013()
    local w2 = select(1, rX())
    local w3 = td(w2)
    if w3 then
        rN(w3)
        return true
    end
    return false
end
local function fn1028(b1)
    local uV = sc(b1)
    if not uV then
        return nil
    end
    local AquariumStages = uV:FindFirstChild("AquariumStages")
    if not AquariumStages then
        return nil
    end
    for i, child in AquariumStages:GetChildren() do
        local CollectModel = child:FindFirstChild("CollectModel")
        local uW_1 = CollectModel and CollectModel:FindFirstChild("CollectArea")
        local uV_2 = uW_1
        if uW_1 then
            uW_1 = uV_2:IsA("BasePart")
        end
        if uW_1 then
            return uV_2.Position + Vector3.new(0, 3, 0)
        end
        local Collect = child:FindFirstChild("Collect")
        local uW_2 = Collect and Collect:IsA("BasePart")
        if uW_2 then
            return Collect.Position + Vector3.new(0, 3, 0)
        end
    end
    return nil
end
local function worker()
    local y3_1
    local y2_1
    while not Library.Unloaded do
        y3_1, y2_1 = pcall(function()
            if not r_("AutoFish") then
                if sz.fishing then
                    s8()
                end
                sz.farmPhase = "idle"
                task.wait(0.2)
                return
            end
            if not rT() then
                sz.farmPhase = "board"
                if sz.fishing then
                    s8()
                end
                if not rW() then
                    task.wait(0.35)
                    return
                end
            end
            local yW = sh()
            local yW_5
            local yX = rQ()
            local yX_3
            if yW > 0 and yX >= yW then
                sz.farmPhase = "deposit"
                sJ()
                task.wait(0.45)
                return
            end
            if sz.fishing then
                sz.farmPhase = "fish"
                local yW_1 = sz.fishingStartedAt or os.clock()
                sz.fishingStartedAt = yW_1
                if os.clock() - yW_1 > 40 then
                    s8()
                    task.wait(0.2)
                    return
                end
                local yW_2 = os.clock()
                local yX_2 = sR()
                if yW_2 - sz.lastFishClick >= yX_2 then
                    sz.lastFishClick = yW_2
                    pcall(function()
                        Click:FireServer()
                    end)
                end
                task.wait(0.03)
                return
            end
            sz.farmPhase = "travel"
            if not sl() then
                sr()
                rW()
                task.wait(0.15)
            end
            local yW_3 = os.clock()
            if yW_3 - sz.lastFishStart < 0.55 then
                task.wait(0.05)
                return
            end
            sz.lastFishStart = yW_3
            local yW_4 = not rT() and not rW()
            if yW_4 then
                task.wait(0.3)
                return
            end
            yW_5, yX_3 = pcall(function()
                return StartFishing:InvokeServer()
            end)
            local yY_1 = yW_5 and type(yX_3) == "table" and yX_3.ok
            if yY_1 then
                sz.fishing = true
                sz.fishingStartedAt = os.clock()
                sz.farmPhase = "fish"
                sz.lastFishClick = 0
            else
                local yY_2 = yW_5 and type(yX_3) == "table" and yX_3.reason == "cargo_full"
                if yY_2 then
                    sJ()
                else
                    local yY_3 = yW_5 and type(yX_3) == "table" and yX_3.reason == "not_in_zone"
                    if yY_3 then
                        sz.targetZone = nil
                        sr()
                        rW()
                        task.wait(0.2)
                    else
                        local yY_4 = yW_5 and type(yX_3) == "table"
                        if yY_4 then
                            yY_4 = yX_3.reason == "no_boat" or yX_3.reason == "not_in_boat"
                        end
                        if yY_4 then
                            s8()
                            r7()
                            rW()
                            task.wait(0.35)
                        else
                            task.wait(0.3)
                        end
                    end
                end
            end
        end)
        if not y3_1 then
            sz.fishing = false
            sz.fishingStartedAt = nil
            sz.farmPhase = "error"
            task.wait(0.5)
        end
    end
end
local function pirateAttackRangeLoop()
    while not Library.Unloaded do
        local y5 = r_("AutoAttackPirates") and not sz.fishing and rS:GetAttribute("InSafeZone") ~= true
        if y5 then
            local y5_1 = sk()
            if y5_1 then
                local y7 = Options.PirateAttackRange and Options.PirateAttackRange.Value or 320
                local y7_1 = sD(y5_1.Position, y7)
                if y7_1 then
                    local y5_2 = os.clock()
                    if y5_2 - sz.lastAttack >= 0.18 then
                        sz.lastAttack = y5_2
                        sf()
                    end
                elseif sz.attackHolding then
                    local y5_3 = sQ("HUDController")
                    if y5_3 and y5_3.endUse then
                        pcall(y5_3.endUse)
                    end
                    sz.attackHolding = false
                end
            end
            task.wait(0.05)
        else
            if sz.attackHolding then
                local y5_4 = sQ("HUDController")
                if y5_4 and y5_4.endUse then
                    pcall(y5_4.endUse)
                end
                sz.attackHolding = false
            end
            task.wait(0.2)
        end
    end
end
local function fn1217()
    sz.targetZone = nil
    if r_("FishingPoolEsp") then
        rR()
    end
end
local function fn1227(hN)
    local DiscordGroup = hN:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = tf })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = tf })
end
rN = nil
GetRebirthInfo = nil
rQ = nil
rR = nil
rS = nil
rT = nil
rU = nil
rW = nil
rX = nil
PerformRebirth = nil
rZ = nil
r_ = nil
r0 = nil
r2 = nil
r5 = nil
r6 = nil
r7 = nil
Client = nil
sc = nil
Rarities = nil
se = nil
sf = nil
sg = nil
sh = nil
sk = nil
sl = nil
so = nil
sr = nil
ss = nil
st = nil
su = nil
sv = nil
sw = nil
FishingZones = nil
local rM, rO, rV, r1, r3, Spawn, r9, CollectReward, sb, si, sj, sm, PlotInteraction, sp, IndexConfig, sx
sz = nil
sA = nil
sC = nil
sD = nil
sE = nil
sF = nil
sI = nil
sJ = nil
Options = nil
sO = nil
sQ = nil
sR = nil
Toggles = nil
sT = nil
Click = nil
sW = nil
StartFishing = nil
s_ = nil
s1 = nil
s2 = nil
s3 = nil
local s5
s6 = nil
s8 = nil
Library = nil
tb = nil
td = nil
te = nil
tf = nil
local sB, sG, sL, sM, sN, HttpService, VirtualUser, SaveManager, s0, ThemeManager, s7, s9, tc, tj, tk
local ti_3
sB = nil
sG = nil
local FishingConfig
sL = nil
sM = nil
sN = nil
HttpService = nil
VirtualUser = nil
local Common
SaveManager = nil
s0 = nil
ThemeManager = nil
s7 = nil
s9 = nil
tc = nil
local BaseGroup, tp, FishingState
if not game:IsLoaded() then
    game.Loaded:Wait()
end
rM, Du_1, s7, s0, VirtualUser, HttpService, sF, sx, sp, sb, r6, r0, rS, te = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Du_2 = 4
repeat
    local ti_1 = (Du_2 * 5 + 4) % 8 + 1
    if ti_1 <= 4 then
        if ti_1 <= 2 then
            if ti_1 <= 1 then
                tj = (vector.create((Du_2 * 2 + 7) % 11 + 1, (Du_2 * 1 + 5) % 13 + 1, (Du_2 * 15 + 13) % 17 + 1))
                local EG = vector.floor(tj) + vector.ceil(tj * -1)
                if vector.dot(EG, EG) == 5 then
                    sF = game:GetService("Players")
                else
                    rM = game:GetService("Players")
                end
                Du_2 = (Du_2 + 29) % 32
            else
                if (Du_2 * 2 + 5) * 7 % 3 == ((Du_2 * 2 + 5) * 7 + 5) % 3 then
                    s7 = game:GetService("ReplicatedStorage")
                    s0 = game:GetService("RunService")
                    Du_1 = game:GetService("UserInputService")
                else
                    Du_1 = game:GetService("ReplicatedStorage")
                    s7 = game:GetService("RunService")
                    s0 = game:GetService("UserInputService")
                end
                Du_2 = (Du_2 + 13) % 32
            end
        elseif ti_1 <= 3 then
            if Du_2 * 40053199 + 6 + 1 >= Du_2 * 40053199 + 6 + 1 + 4 then
                s0 = game:GetService("VirtualUser")
            else
                VirtualUser = game:GetService("VirtualUser")
            end
            Du_2 = (Du_2 + 21) % 32
        else
            local E_ = bit32.rrotate(bit32.bxor(bit32.lrotate(Du_2, 1), string.byte(tostring(VirtualUser))), 12)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(E_, 3758216959), 539275380), (bit32.bxor(bit32.band(E_, 536750336), 32183503))), 539275380), 32183503) ~= E_ then
                r0 = game:GetService("HttpService")
            else
                HttpService = game:GetService("HttpService")
            end
            Du_2 = (Du_2 + 13) % 32
        end
    elseif ti_1 <= 6 then
        if ti_1 <= 5 then
            tj = {
                "jueshnzerbyx",
                "scwzkrxfvkd",
                "iel",
                "aeespuhkvcv",
                "nuh",
                "fju",
                "yzrwqna",
                "oehsgefmpte",
                "iplhgymunn",
                "tstiyzf",
                "unftbhbwb",
                "adudvvqdhaa",
                "ctzhk",
                "pqfsermw",
                "jbwegavw",
                "pxrtlounghw"
            }
            if tj[(Du_2 * 16 + 12) % 16 + 1] < tj[(Du_2 * 16 + 12) % 16 + 1] then
                sx = game:GetService("CoreGui")
                sb = game:GetService("GuiService")
                r6 = game:GetService("TeleportService")
                sp = game:GetService("Lighting")
                sF = game:GetService("Workspace")
            else
                sF = game:GetService("CoreGui")
                sx = game:GetService("GuiService")
                sp = game:GetService("TeleportService")
                sb = game:GetService("Lighting")
                r6 = game:GetService("Workspace")
            end
            Du_2 = (Du_2 + 5) % 32
        else
            tj = {
                "ebpfiurmcw",
                "cjiaehkgn",
                "kpsmdo",
                "zbwrqd",
                "hwkwph",
                "wuzpr",
                "eqstxwz",
                "idwnc",
                "apblw",
                "lcrdeavcgeg"
            }
            local Fl = Du_2
            tk = tj[Fl % 10 + 1]
            if tk:len() >= tk:reverse():rep(Fl % 3 + 2):len() then
                rS = game:GetService("CollectionService")
            else
                r0 = game:GetService("CollectionService")
            end
            Du_2 = (Du_2 + 21) % 32
        end
    elseif ti_1 <= 7 then
        local ti_2 = (vector.create((Du_2 * 3 + 4) % 11 + 1, (Du_2 * 1 + 8) % 13 + 1, (Du_2 * 2 + 11) % 17 + 1))
        tj = (vector.create((Du_2 * 6 + 4) % 11 + 1, (Du_2 * 7 + 13) % 13 + 1, (Du_2 * 12 + 15) % 17 + 1))
        local Fo = vector.dot(ti_2, tj)
        if Fo * Fo >= vector.dot(ti_2, ti_2) * vector.dot(tj, tj) + 1 then
            rM = rS.LocalPlayer
        else
            rS = rM.LocalPlayer
        end
        Du_2 = (Du_2 + 29) % 32
    else
        local F1 = bit32.rrotate(bit32.bxor(bit32.lrotate(Du_2, 21), string.byte(tostring(r0))), 9)
        if bit32.bxor(bit32.lrotate(bit32.bxor(F1, 1392245887), 22), 534036223) == bit32.lrotate(F1, 22) then
            te = fn402
        else
            s7 = fn402
        end
        Du_2 = (Du_2 + 13) % 32
    end
until (Du_2 * 9 + 29) % 32 == 17
if getgenv then
    s5, ti_3 = nil, nil
    Du_2 = 1
    repeat
        tj = (Du_2 * 1 + 1) % 2 + 1
        if tj <= 1 then
            tj = (vector.create((Du_2 * 2 + 6) % 11 + 1, (Du_2 * 5 + 2) % 13 + 1, (Du_2 * 11 + 4) % 17 + 1))
            tk = (vector.create((Du_2 * 5 + 3) % 11 + 1, (Du_2 * 9 + 10) % 13 + 1, (Du_2 * 2 + 12) % 17 + 1))
            local FK = vector.cross(tj, tk)
            local FL = vector.dot(tj, tk)
            if vector.dot(FK, FK) + FL * FL == vector.dot(tj, tj) * vector.dot(tk, tk) then
                getgenv().gethui = te
                s5 = getgenv().__OuroborosFishingWarsLib
            else
                getgenv().gethui = s5
                te = getgenv().__OuroborosFishingWarsLib
            end
            Du_2 = (Du_2 + 7) % 8
        else
            tj = (vector.create((Du_2 * 2 + 4) % 11 + 1, (Du_2 * 9 + 1) % 13 + 1, (Du_2 * 12 + 14) % 17 + 1))
            local EZ = vector.floor(tj) + vector.ceil(tj * -1)
            if vector.dot(EZ, EZ) == 0 then
                ti_3 = s5
            else
                s5 = ti_3
            end
            Du_2 = (Du_2 + 3) % 8
        end
    until (Du_2 * 3 + 7) % 8 == 0
    if ti_3 then
        ti_3 = s5.Unload
    end
    if ti_3 then
        pcall(function()
            s5:Unload()
        end)
    end
end
pcall(function()
    gethui = te
end)
if setthreadidentity then
    setthreadidentity(8)
end
sB, su, sj, r9, r3, rV, rO, tc, s9, Common, tj, FishingConfig, FishingZones, IndexConfig, Rarities, Client, tp, StartFishing, Click, sO, FishingState, PlotInteraction, CollectReward, Spawn, PerformRebirth, GetRebirthInfo, Library, ThemeManager, SaveManager = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
sB = "Fishing Wars"
su = "https://discord.gg/ehKVq7pf7v"
sj = "https://rscripts.net/@Ouroboros"
r9 = "https://ouroboros-hub-rbx.web.app/"
r3 = "#7fd47f"
rV = "#6ec1ff"
rO = "#e8a34d"
tc = "#8b93a3"
s9 = "#e05a5a"
tk = Du_1:WaitForChild("Network")
Common = Du_1:WaitForChild("Common")
if (not FishingState or GetRebirthInfo) and (not GetRebirthInfo or not tk) and (not FishingState and GetRebirthInfo or (not GetRebirthInfo or sj)) and ((sj or GetRebirthInfo) and (GetRebirthInfo and not Click) or (not tk or false or tk and not GetRebirthInfo)) or (not GetRebirthInfo and not FishingState or (not tk or false)) and (not Click and FishingState or GetRebirthInfo and not tk) and (not tk or false or false and FishingState or (tk or false or (sj or not Click))) or not ((not FishingState or GetRebirthInfo) and (not GetRebirthInfo or not tk) and (not FishingState and GetRebirthInfo or (not GetRebirthInfo or sj)) and ((sj or GetRebirthInfo) and (GetRebirthInfo and not Click) or (not tk or false or tk and not GetRebirthInfo)) or (not GetRebirthInfo and not FishingState or (not tk or false)) and (not Click and FishingState or GetRebirthInfo and not tk) and (not tk or false or false and FishingState or (tk or false or (sj or not Click)))) then
    tj = Du_1:WaitForChild("Packages")
else
    tj:WaitForChild("Packages")
end
FishingConfig = require(Common:WaitForChild("FishingConfig"))
FishingZones = require(Common:WaitForChild("FishingZones"))
IndexConfig = require(Common:WaitForChild("IndexConfig"))
Rarities = require(Common:WaitForChild("Rarities"))
Client = require(tj:WaitForChild("Replion")).Client
local ti_4 = tk:WaitForChild("Fishing")
Du_2 = tk:WaitForChild("Plot")
if ((not SaveManager or SaveManager) and (not SaveManager or SaveManager) and (not SaveManager or not SaveManager or (false or not SaveManager)) or (SaveManager and not SaveManager and (SaveManager and false) or (false or (rV or not SaveManager)))) and ((rV and not SaveManager or not SaveManager and false) and ("#6ec1ff" and (not SaveManager and rV)) and ("#6ec1ff" and (SaveManager or SaveManager) or (SaveManager or SaveManager or (SaveManager or not SaveManager)))) or not (((not SaveManager or SaveManager) and (not SaveManager or SaveManager) and (not SaveManager or not SaveManager or (false or not SaveManager)) or (SaveManager and not SaveManager and (SaveManager and false) or (false or (rV or not SaveManager)))) and ((rV and not SaveManager or not SaveManager and false) and ("#6ec1ff" and (not SaveManager and rV)) and ("#6ec1ff" and (SaveManager or SaveManager) or (SaveManager or SaveManager or (SaveManager or not SaveManager))))) then
    tp = tk:WaitForChild("Index")
else
    tk = tp:WaitForChild("Index")
end
local tn = tk:WaitForChild("Shipwright")
local tl = tk:WaitForChild("Rebirth")
StartFishing = ti_4:WaitForChild("StartFishing")
if PlotInteraction or PlotInteraction or ti_4 and not FishingState or (false or not FishingConfig or not FishingConfig and ti_4) or ((not ti_4 or FishingState) and (PlotInteraction or Du_2) or (not FishingConfig or Du_2) and (not Du_2 and false)) or not (PlotInteraction or PlotInteraction or ti_4 and not FishingState or (false or not FishingConfig or not FishingConfig and ti_4) or ((not ti_4 or FishingState) and (PlotInteraction or Du_2) or (not FishingConfig or Du_2) and (not Du_2 and false))) then
    Click = ti_4:WaitForChild("Click")
    sO = ti_4:WaitForChild("CancelFishing")
else
    sO = Click:WaitForChild("Click")
    ti_4 = Click:WaitForChild("CancelFishing")
end
FishingState = ti_4:WaitForChild("FishingState")
local tq = ti_4:WaitForChild("CargoFull")
PlotInteraction = Du_2:WaitForChild("PlotInteraction")
CollectReward = tp:WaitForChild("CollectReward")
Spawn = tn:WaitForChild("Spawn")
PerformRebirth = tl:WaitForChild("PerformRebirth")
GetRebirthInfo = tl:WaitForChild("GetRebirthInfo")
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
if getgenv then
    getgenv().__OuroborosFishingWarsLib = Library
end
Toggles, Options, sz, st, ss, tf, s2, sM, r_, sT, sk, rN, sQ, sC, rX, rT, rQ, sh, s1, sc, s6, s3, se, s_, tb, sg, sG, r7, rW, sw, r2, sE, rZ, sA, rU, sW, sl, sr, td, si, s8, sJ, sR, sD, sf, sI, rR, sm, sL, r1, sv, r5, so = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Toggles = Library.Toggles
Options = Library.Options
sz = {
    fishing = false,
    farmPhase = "idle",
    fishingStartedAt = nil,
    lastFishStart = 0,
    lastFishClick = 0,
    lastDeposit = 0,
    lastEquipBest = 0,
    lastCollectCash = 0,
    lastClaimIndex = 0,
    lastAttack = 0,
    lastSpawn = 0,
    lastBoard = 0,
    lastMove = 0,
    lastLevelUp = 0,
    lastBoatList = 0,
    attackHolding = false,
    targetZone = nil
}
st = { folder = nil, markers = {}, drawings = {} }
ss = fn679
tf = fn821
s2 = fn2
sM = fn681
r_ = fn836
sT = fn62
sk = fn176
rN = fn334
sQ = fn709
sC = fn300
rX = fn529
rT = fn214
rQ = fn464
sh = fn439
s1 = fn463
if (sT and not s1 or not s1 and s1) and (not sT or s1 or sT and not s1) and (s1 or not sT or (s1 or not s1) or (s1 or sT) and (s1 and not sT)) and not ((sT and not s1 or not s1 and s1) and (not sT or s1 or sT and not s1) and (s1 or not sT or (s1 or not s1) or (s1 or sT) and (s1 and not sT))) then
    s6 = fn289
    sc = fn1028
else
    sc = fn289
    s6 = fn1028
end
s3 = fn538
se = function(ck, cl)
    pcall(function()
        local u7 = cl or {}
        PlotInteraction:FireServer(ck, u7)
    end)
end
s_ = fn144
tb = fn282
sg = fn566
sG = fn602
r7 = function()
    local vI = sg()
    if vI and vI.Parent then
        return vI
    end
    local vI_1 = os.clock()
    if vI_1 - sz.lastSpawn < 2 then
        return nil
    end
    sz.lastSpawn = vI_1
    local vH = tb()
    if not vH then
        return nil
    end
    local vI_2 = sQ("BoatController")
    if vI_2 and vI_2.requestSpawn then
        pcall(vI_2.requestSpawn, vH)
    else
        pcall(function()
            Spawn:InvokeServer(vH)
        end)
    end
    task.wait(0.6)
    return sg()
end
rW = function()
    local vN
    local vL
    vL = nil
    vN = nil
    local vO = r7()
    if not vO then
        return false
    end
    local vT = if rT() then 1 else 0
    if vT == 1 then
        return true
    end
    local vP = os.clock()
    if vP - sz.lastBoard < 0.45 then
        return false
    end
    sz.lastBoard = vP
    vL = sT()
    local vM = sk()
    vN = sG(vO)
    if not vL or not vN then
        return false
    end
    pcall(function()
        vL.Sit = false
    end)
    task.wait()
    if vM then
        pcall(function()
            vM.CFrame = vN.CFrame * CFrame.new(0, 3, 0)
            vM.AssemblyLinearVelocity = Vector3.zero
            vM.AssemblyAngularVelocity = Vector3.zero
        end)
        task.wait(0.1)
    end
    pcall(function()
        vN:Sit(vL)
    end)
    task.wait(0.35)
    if rT() then
        return true
    end
    if vM then
        pcall(function()
            vM.CFrame = vN.CFrame * CFrame.new(0, 1.5, 0)
        end)
        task.wait(0.1)
    end
    pcall(function()
        vN:Sit(vL)
    end)
    task.wait(0.35)
    return rT()
end
sw = function(dv)
    local vU
    vU = nil
    if typeof(dv) ~= "Vector3" then
        return false
    end
    vU = sg()
    if not vU then
        return false
    end
    local vV = os.clock()
    if vV - sz.lastMove < 0.15 then
        return true
    end
    sz.lastMove = vV
    local vV_1 = rT()
    local vW = pcall(function()
        vU:PivotTo(CFrame.new(dv + Vector3.new(0, 3, 0)))
    end)
    if vW then
        local vX_1 = vU.PrimaryPart or vU:FindFirstChild("Chassis") or vU:FindFirstChild("Hitbox")
        local vY = vX_1
        if vX_1 then
            vX_1 = vY:IsA("BasePart")
        end
        if vX_1 then
            vY.AssemblyLinearVelocity = Vector3.zero
            vY.AssemblyAngularVelocity = Vector3.zero
        end
    end
    local vX_2 = vV_1 and not rT()
    if vX_2 then
        rW()
    end
    return vW
end
r2 = fn912
sE = fn764
Du_1 = { "Common", "Rare", "Legendary", "Mythical", "Secret" }
rZ = fn738
sA = fn343
rU = fn739
sW = fn154
sl = fn560
sr = fn113
td = fn366
si = fn1013
s8 = fn639
if sI or not st or sm and st or sm and not sI and (sm and st) or not (sI or not st or sm and st or sm and not sI and (sm and st)) then
    sJ = fn174
    sR = function()
        local xg
        local xi_2
        local xh_2
        xg = false
        pcall(function()
            local ShopConfig = require(Common.ShopConfig)
            xg = ShopConfig.ownsEntry(rS, "AutoFishingPlus") == true
        end)
        xh_2, xi_2 = pcall(function()
            return FishingConfig.clickCooldown(xg)
        end)
        local xj = xh_2 and type(xi_2) == "number" and xi_2 > 0
        if xj then
            return xi_2
        end
        return 0.12
    end
else
    sR = fn174
    sJ = function()
        local xg
        local xi_1
        local xh_1
        xg = false
        pcall(function()
            local ShopConfig = require(Common.ShopConfig)
            xg = ShopConfig.ownsEntry(rS, "AutoFishingPlus") == true
        end)
        xh_1, xi_1 = pcall(function()
            return FishingConfig.clickCooldown(xg)
        end)
        local xj = xh_1 and type(xi_1) == "number" and xi_1 > 0
        if xj then
            return xi_1
        end
        return 0.12
    end
end
sD = fn321
sf = function()
    local xB = sQ("HUDController")
    if not xB then
        return false
    elseif rS:GetAttribute("InSafeZone") == true then
        if sz.attackHolding and xB.endUse then
            pcall(xB.endUse)
            sz.attackHolding = false
        end
        return false
    else
        if xB.equipFirstWeapon then
            pcall(xB.equipFirstWeapon)
        end
        if xB.beginUse then
            pcall(xB.beginUse)
            sz.attackHolding = true
        end
        task.defer(function()
            if Library.Unloaded then
                return
            end
            if xB.endUse then
                pcall(xB.endUse)
            end
            sz.attackHolding = false
        end)
        return true
    end
end
sI = fn145
rR = function()
    for k, v in st.drawings do
        local xS = v
        pcall(function()
            xS.Visible = false
            xS:Remove()
        end)
    end
    table.clear(st.drawings)
    for k, v in st.markers do
        local xY = v
        pcall(function()
            xY:Destroy()
        end)
    end
    table.clear(st.markers)
    if st.folder then
        pcall(function()
            st.folder:Destroy()
        end)
        st.folder = nil
    end
end
sm = fn378
sL = fn519
r1 = fn915
sv = function()
    if not r_("FishingPoolEsp") then
        local x7_1 = next(st.markers) or st.folder
        if x7_1 then
            rR()
        end
        return
    end
    local x7_2 = sE()
    local x8 = sk() and sk().Position
    if not x7_2 or not x8 then
        return
    end
    local x8_2 = {}
    for i, child in x7_2:GetChildren() do
        local x7_3 = child:IsA("BasePart") and rU(child)
        if x7_3 then
            x8_2[child] = true
            local x7_4 = sm(child)
            local ya_1 = sL(child)
            local yb = math.floor((child.Position - x8).Magnitude + 0.5)
            local yc = st.markers[child]
            if not yc or not yc.Parent then
                local yc_1 = r1(child, x7_4, (("%* [%*m]"):format(ya_1, yb)))
                st.markers[child] = yc_1
            else
                yc.Color = x7_4
                yc.CFrame = CFrame.new(child.Position + Vector3.new(0, 6, 0))
                local yd_1 = yc:FindFirstChild("Label") and yc.Label:FindFirstChild("Text")
                if yd_1 then
                    yd_1.Text = (("%* [%*m]"):format(ya_1, yb))
                    yd_1.TextColor3 = x7_4
                end
            end
        end
    end
    for k, v in st.markers do
        local yw = v
        if not x8_2[k] then
            pcall(function()
                yw:Destroy()
            end)
            st.markers[k] = nil
        end
    end
end
r5 = fn920
so = function(hq)
    task.defer(function()
        local yE = Library.Unloaded or not r_("AutoReturnOnDeath")
        if yE then
            return
        end
        task.wait(0.35)
        if rS.Character == hq then
            si()
        end
    end)
end
if rS.Character then
    so(rS.Character)
end
sN = nil
rS.CharacterAdded:Connect(onCharacterAdded)
FishingState.OnClientEvent:Connect(onOnClientEvent)
tq.OnClientEvent:Connect(onOnClientEvent2)
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = su, Copyable = true }, "|", sB },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
Window:SetGlow(true, { Color = Color3.fromRGB(242, 154, 196), Radius = 24, Transparency = 0.3 })
sN = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "fish"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
tj = fn1227
for k, v in sN do
    if k ~= "Info" then
        tj(v)
    end
end
BaseGroup, tk = nil, nil
Du_2 = sN.Main:AddLeftGroupbox("Fishing", "fish")
tq = s_()
Du_2:AddDropdown("SelectedBoat", { Text = "Boat", Values = tq, Default = tq[1] })
Du_2:AddDropdown("FishZones", { Text = "Zones", Values = Du_1, Default = Du_1, Multi = true, AllowEmpty = true })
Du_2:AddToggle("AutoFish", { Text = "Auto Fish", Default = false })
local CombatGroup = sN.Main:AddRightGroupbox("Combat", "swords")
if (tk or not tk) and (tk or tk) and (not Du_2 and tk or (Du_2 or tk)) or not ((tk or not tk) and (tk or tk) and (not Du_2 and tk or (Du_2 or tk))) then
    CombatGroup:AddToggle("AutoAttackPirates", { Text = "Auto Attack Pirates", Default = false })
    CombatGroup:AddSlider("PirateAttackRange", { Text = "Attack Range", Default = 320, Min = 80, Max = 700, Rounding = 0 })
    BaseGroup = sN.Main:AddLeftGroupbox("Base", "house")
else
    BaseGroup:AddToggle("AutoAttackPirates", { Text = "Auto Attack Pirates", Default = false })
    BaseGroup:AddSlider("PirateAttackRange", { Text = "Attack Range", Max = 700, Rounding = 0, Default = 320, Min = 80 })
    sN = CombatGroup.Main:AddLeftGroupbox("Base", "house")
end
BaseGroup:AddToggle("AutoDepositLoot", { Text = "Auto Deposit Loot", Default = false })
BaseGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
BaseGroup:AddToggle("AutoCollectCash", { Text = "Auto Collect Cash", Default = false })
BaseGroup:AddToggle("AutoClaimIndex", { Text = "Auto Claim Index", Default = false })
BaseGroup:AddToggle("AutoLevelUp", { Text = "Auto Level Up", Default = false })
BaseGroup:AddToggle("AutoReturnOnDeath", { Text = "Auto Return On Death", Default = false })
tl = sN.Main:AddRightGroupbox("Visuals", "eye")
tl:AddToggle("FishingPoolEsp", { Text = "Fishing Pool ESP", Default = false })
task.spawn(function()
    local yS = false
    repeat
        if not Library.Unloaded then
            local yV = if os.clock() - sz.lastBoatList >= 4 then 1 else 0
            if yV == 1 then
                sz.lastBoatList = os.clock()
                local yO = s_()
                local SelectedBoat = Options.SelectedBoat
                if SelectedBoat and SelectedBoat.SetValues then
                    pcall(function()
                        SelectedBoat:SetValues(yO)
                    end)
                end
            end
            task.wait(1)
        else
            yS = true
        end
    until yS
end)
task.spawn(worker)
task.spawn(pirateAttackRangeLoop)
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(function()
    while not Library.Unloaded do
        local zm = r_("AutoClaimIndex") and os.clock() - sz.lastClaimIndex >= 1.5
        if zm then
            sz.lastClaimIndex = os.clock()
            local zm_1 = sC()
            local zn = zm_1 and zm_1.index
            local zm_2 = zn
            if zn then
                zn = zm_2.unlocked
            end
            local zo = zm_2
            local zp = zn
            if zo then
                zo = zm_2.rewarded
            end
            local zm_3 = zo
            if type(zp) == "table" then
                for k, v in zp do
                    local zu = k
                    local zn_1 = v == true
                    if zn_1 then
                        local zo_1 = type(zm_3) ~= "table" or zm_3[zu] ~= true
                        zn_1 = zo_1
                    end
                    if zn_1 then
                        local zn_2 = IndexConfig.rewardFor(zu)
                        local zo_2 = type(zn_2) == "number" and zn_2 > 0
                        if zo_2 then
                            pcall(function()
                                CollectReward:InvokeServer(zu)
                            end)
                            task.wait(0.15)
                        end
                    end
                end
            end
        end
        task.wait(0.5)
    end
end)
task.spawn(worker5)
task.spawn(worker6)
Toggles.AutoFish:OnChanged(fn389)
Options.FishZones:OnChanged(fn1217)
Toggles.FishingPoolEsp:OnChanged(fn800)
tn = function()
    local AB
    local AC
    AB = nil
    AC = nil
    local Label2, Label3, Az, AA, Label
    local function AE()
        local zF = hookfunction ~= nil
        local zG = hookmetamethod ~= nil
        local zH = getrawmetatable ~= nil
        local zI = setrawmetatable ~= nil
        local zJ = getgc ~= nil
        local zK = getgenv ~= nil
        local zL = getreg ~= nil
        local zM = getconnections ~= nil
        local zN = firesignal ~= nil
        local zO = getcallbackvalue ~= nil
        local zP = setclipboard ~= nil
        local zQ = getcustomasset ~= nil
        local zR = getnamecallmethod ~= nil
        local zS = isexecutorclosure ~= nil
        local zT = fireproximityprompt ~= nil
        local zU = firetouchinterest ~= nil
        local zV = WebSocket ~= nil
        local zW = readfile ~= nil
        local zX = writefile ~= nil
        local zZ = (request or http_request) ~= nil
        local z0 = (debug and debug.getupvalues) ~= nil
        local z2 = (debug and debug.setupvalue) ~= nil
        local z3 = 0
        local z4 = { zF, zG, zH, zI, zJ, zK, zL, zM, zN, zO, zP, zQ, zR, zS, zT, zU, zV, zW, zX, zZ, z0, z2 }
        for i, v in ipairs(z4) do
            if v then
                z3 += 1
            end
        end
        local zF_1 = z3 / #z4
        if zF_1 >= 0.9 then
            return s2("Full Support", r3)
        elseif zF_1 >= 0.6 then
            return s2("Half Support", rO)
        else
            return s2("Low Support", s9)
        end
    end
    AB = "Unknown"
    pcall(function()
        local Ad_1
        local Ac_1
        if identifyexecutor then
            Ad_1, Ac_1 = identifyexecutor()
            local Ae = Ad_1 ~= ""
            local Af = type(Ad_1) == "string" and Ae
            if Af then
                local Ae_1 = type(Ac_1) == "string" and Ac_1 ~= "" and Ad_1 .. " " .. Ac_1
                AB = Ae_1 or Ad_1
            end
        end
    end)
    local AF = AE()
    AC = os.clock()
    Az = function()
        local An = math.floor(os.clock() - AC)
        if An < 60 then
            return An .. "s"
        elseif An < 3600 then
            return string.format("%dm %ds", An // 60, An % 60)
        else
            return string.format("%dh %dm", An // 3600, An % 3600 // 60)
        end
    end
    local UserGroup = sN.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = rS, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(sM("User", rS.DisplayName .. " @" .. rS.Name, r3), true)
    UserGroup:AddLabel(sM("UserId", tostring(rS.UserId), rV), true)
    UserGroup:AddLabel(sM("Executor", AB .. "  " .. AF, r3), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(sM("Session", Az(), rO), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            ss(rS.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            ss("https://www.roblox.com/users/" .. tostring(rS.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = sN.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(sM("Game", sB, rV), true)
    Label2 = SessionGroup:AddLabel(sM("Players", "0/0", r3), true)
    AA = tostring(game.JobId)
    local AF_1 = #AA > 18 and string.sub(AA, 1, 18) .. "..."
    local AF_2 = AF_1 or AA
    SessionGroup:AddLabel(sM("Job", AF_2, tc), true)
    Label = SessionGroup:AddLabel(sM("Ping", "0 ms", rO), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            sp:Teleport(game.PlaceId, rS)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            ss(AA, "Copied Job ID")
        end
    })
    task.spawn(function()
        local At_1
        local As_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(sM("Session", Az(), rO))
            Label2:SetText(sM("Players", #rM:GetPlayers() .. "/" .. tostring(rM.MaxPlayers), r3))
            As_1, At_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local As_2 = As_1 and At_1 .. " ms" or "n/a"
            Label:SetText(sM("Ping", As_2, rO))
        end
    end)
    local SocialsGroup = sN.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = tf })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            if setclipboard then
                setclipboard(sj)
            elseif toclipboard then
                toclipboard(sj)
            end
            Library:Notify("Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            ss(r9, "Copied website link")
        end
    })
end
tp = function()
    local connection
    connection = nil
    local Bm, CurrentCamera
    local MovementGroup = sN.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = sN.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    s7.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = rS.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local AI_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if AI_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    s0.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local AQ_1 = sT()
            if AQ_1 then
                AQ_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    CurrentCamera = r6.CurrentCamera
    s7.RenderStepped:Connect(function(lS)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local AY_1 = sT()
            local AZ_1 = Options.WalkSpeed and Options.WalkSpeed.Value
            local A__1 = AY_1
            if A__1 then
                A__1 = type(AZ_1) == "number"
            end
            if A__1 then
                AY_1.WalkSpeed = AZ_1
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local AY_3 = sk()
            local AZ_2 = sT()
            if AY_3 and AZ_2 then
                AZ_2.PlatformStand = true
                local AZ_3 = Vector3.zero
                if s0:IsKeyDown(Enum.KeyCode.W) then
                    AZ_3 += CurrentCamera.CFrame.LookVector
                end
                if s0:IsKeyDown(Enum.KeyCode.S) then
                    AZ_3 -= CurrentCamera.CFrame.LookVector
                end
                if s0:IsKeyDown(Enum.KeyCode.A) then
                    AZ_3 -= CurrentCamera.CFrame.RightVector
                end
                local A4 = if s0:IsKeyDown(Enum.KeyCode.D) then 1 else 0
                if A4 == 1 then
                    AZ_3 += CurrentCamera.CFrame.RightVector
                end
                if s0:IsKeyDown(Enum.KeyCode.Space) then
                    AZ_3 += Vector3.new(0, 1, 0)
                end
                local A7 = if s0:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
                if A7 == 1 then
                    AZ_3 -= Vector3.new(0, 1, 0)
                end
                AY_3.AssemblyLinearVelocity = Vector3.zero
                local A__3 = Options.FlySpeed and Options.FlySpeed.Value
                local A__4 = AZ_3.Magnitude > 0 and type(A__3) == "number"
                if A__4 then
                    AY_3.CFrame = AY_3.CFrame + AZ_3.Unit * A__3 * lS
                end
            end
        end
    end)
    if Toggles.Fly then
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                local A8 = sT()
                if A8 then
                    A8.PlatformStand = false
                end
            end
        end)
    end
    if Toggles.WalkSpeedEnabled then
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                local Ba = sT()
                if Ba then
                    Ba.WalkSpeed = 16
                end
            end
        end)
    end
    Bm = function(mi)
        if not mi:IsA("ProximityPrompt") then
            return
        end
        mi.HoldDuration = 0
        mi.MaxActivationDistance = 50
        mi.RequiresLineOfSight = false
    end
    connection = nil
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in r6:GetDescendants() do
                pcall(Bm, descendant)
            end
            connection = r6.DescendantAdded:Connect(function(mq)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(Bm, mq)
                end
            end)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    Library:OnUnload(function()
        if connection then
            connection:Disconnect()
        end
    end)
end
tk = function()
    local Label, C9, Da, Db, Dc, Dd, De, Df, Dg, Dh, connection, Dj, Dk, Dl, connection2
    local MenuGroup = sN.Settings:AddLeftGroupbox("Menu", "logs")
    Dd = 0
    Dj = tick()
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    Label = MenuGroup:AddLabel("AFK triggers: 0")
    De = function()
        local CurrentCamera = r6.CurrentCamera
        if not CurrentCamera then
            return
        end
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        Dd += 1
        Dj = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. Dd)
        end)
    end
    connection2 = rS.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(De)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local BA = Toggles.AntiAfk.Value and tick() - Dj >= 60
            if BA then
                pcall(De)
            end
        end
    end)
    MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3D", { Text = "Disable 3D Rendering", Default = false })
    MenuGroup:AddToggle("FpsBoost", { Text = "FPS Boost", Default = false })
    MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local ScriptGroup = sN.Settings:AddLeftGroupbox("Script", "terminal")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            Library:Unload()
        end
    })
    Dg = function(m_)
        pcall(function()
            sx:SetGameplayPausedNotificationEnabled(not m_)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = sF:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not m_
            end
        end)
        if not m_ then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(rS, "GameplayPaused", false)
            else
                rS.GameplayPaused = false
            end
        end)
    end
    Toggles.AntiGameplayPause:OnChanged(function()
        Dg(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                Dg(true)
            end
        end
    end)
    C9 = false
    Df = function()
        local JobId, PlaceId
        if C9 then
            return
        end
        C9 = true
        PlaceId, JobId = game.PlaceId, game.JobId
        local BM = pcall(function()
            sp:TeleportToPlaceInstance(PlaceId, JobId, rS)
        end)
        if not BM then
            pcall(function()
                sp:Teleport(PlaceId, rS)
            end)
        end
    end
    task.spawn(function()
        local RobloxPromptGui = sF:WaitForChild("RobloxPromptGui", 30)
        local BR = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
        if not BR then
            return
        end
        BR.ChildAdded:Connect(function(nz)
            if Library.Unloaded then
                return
            end
            if Toggles.AutoReconnect.Value and nz.Name == "ErrorPrompt" then
                Df()
            end
        end)
    end)
    sp.TeleportInitFailed:Connect(function()
        if Toggles.AutoReconnect.Value then
            C9 = false
            Df()
        end
    end)
    Toggles.Disable3D:OnChanged(function()
        pcall(function()
            s7:Set3dRenderingEnabled(not Toggles.Disable3D.Value)
        end)
    end)
    Dl = {
        ParticleEmitter = true,
        Trail = true,
        Smoke = true,
        Fire = true,
        Sparkles = true,
        Explosion = true,
        Beam = true
    }
    Dc = function(nR)
        if Dl[nR.ClassName] then
            pcall(function()
                nR.Enabled = false
            end)
        end
    end
    connection = nil
    Toggles.FpsBoost:OnChanged(function()
        if Toggles.FpsBoost.Value then
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
            end)
            pcall(function()
                sb.GlobalShadows = false
            end)
            pcall(function()
                sb.FogEnd = 9000000000
            end)
            for i, descendant in r6:GetDescendants() do
                pcall(Dc, descendant)
            end
            connection = r6.DescendantAdded:Connect(function(n5)
                if Toggles.FpsBoost.Value then
                    pcall(Dc, n5)
                end
            end)
        else
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Automatic
            end)
            pcall(function()
                sb.GlobalShadows = true
            end)
            if connection then
                connection:Disconnect()
                connection = nil
            end
        end
    end)
    Library:OnUnload(function()
        if connection2 then
            connection2:Disconnect()
        end
        Dg(false)
        pcall(function()
            s7:Set3dRenderingEnabled(true)
        end)
        if connection then
            connection:Disconnect()
        end
        s8()
        rR()
        if sz.attackHolding then
            local B5 = sQ("HUDController")
            if B5 and B5.endUse then
                pcall(B5.endUse)
            end
            sz.attackHolding = false
        end
        if getgenv then
            getgenv().__OuroborosFishingWarsLib = nil
        end
    end)
    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder("OuroborosHub")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    ThemeManager:ApplyToTab(sN.Settings)
    ThemeManager:LoadDefault()
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    SaveManager:SetFolder("OuroborosHub/FishingWars")
    local Dn_2 = SaveManager:BuildConfigSection(sN.Settings)
    Dk = function(ou, ov)
        local Cc = ou == "Toggle" and Toggles
        local Ch = if Cc then 1 else 0
        local Cf = 4037 * Ch + 639 * (1 - Ch)
        local Cg = 550 * Ch + 2712 * (1 - Ch)
        if not ((Cf * 3800 + Cg * 360 + Cf * Cg) % 16777213 == 981737) then
            Cc = Options
        end
        local Cc_1 = Cc[ov]
        local Cb_2 = type(Cc_1) == "table" and Cc_1.Type == ou
        return Cb_2 and Cc_1 or nil
    end
    Dh = function(oC, oD)
        local Type = oD.Type
        if Type == "Toggle" then
            return { idx = oC, type = "Toggle", value = oD.Value == true }
        elseif Type == "Slider" then
            return { idx = oC, type = "Slider", value = tostring(oD.Value) }
        elseif Type == "Dropdown" then
            return { idx = oC, type = "Dropdown", multi = oD.Multi == true, value = oD.Value }
        elseif Type == "Input" then
            local Cj = oD.Value or ""
            return { idx = oC, type = "Input", text = tostring(Cj) }
        elseif Type == "ColorPicker" then
            return { idx = oC, type = "ColorPicker", value = oD.Value:ToHex(), transparency = oD.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = oC,
                type = "KeyPicker",
                mode = oD.Mode,
                key = oD.Value,
                modifiers = oD.Modifiers,
                toggled = oD.Toggled
            }
        else
            return nil
        end
    end
    Da = function()
        local Cp = {}
        for k, v in { Toggles, Options } do
            for k, v in v do
                local Cq = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if Cq then
                    local Cq_1 = Dh(k, v)
                    if Cq_1 then
                        Cp[#Cp + 1] = Cq_1
                    end
                end
            end
        end
        table.sort(Cp, function(oQ, oR)
            if oQ.type ~= oR.type then
                return oQ.type < oR.type
            end
            return oQ.idx < oR.idx
        end)
        return { objects = Cp }
    end
    Db = function(oT)
        local CJ
        CJ = nil
        local CK = type(oT) ~= "table"
        local CO = if CK then 1 else 0
        local CM = 429 * CO + 490 * (1 - CO)
        local CN = 1512 * CO + 2966 * (1 - CO)
        if not ((CM * 3478 + CN * 48 + CM * CN) % 16777213 == 2213286) then
            CK = type(oT.idx) ~= "string"
        end
        if not CK then
            CK = type(oT.type) ~= "string"
        end
        local CO_1 = if CK then 1 else 0
        local CM_1 = 1957 * CO_1 + 721 * (1 - CO_1)
        local CN_1 = 2400 * CO_1 + 2061 * (1 - CO_1)
        if not ((CM_1 * 3489 + CN_1 * 1610 + CM_1 * CN_1) % 16777213 == 15388773) then
            CK = SaveManager.Ignore[oT.idx]
        end
        if CK then
            return false
        end
        CJ = Dk(oT.type, oT.idx)
        if not CJ then
            return false
        end
        local CK_1 = pcall(function()
            if oT.type == "Input" then
                if type(oT.text) ~= "string" then
                    return
                end
                CJ:SetValue(oT.text)
            elseif oT.type == "ColorPicker" then
                CJ:SetValueRGB(Color3.fromHex(oT.value), oT.transparency)
            elseif oT.type == "KeyPicker" then
                CJ:SetValue({ oT.key, oT.mode, oT.modifiers })
                if oT.mode == "Toggle" and oT.toggled ~= nil then
                    CJ.Toggled = oT.toggled
                    CJ:Update()
                end
            else
                CJ:SetValue(oT.value)
            end
        end)
        return CK_1
    end
    Dn_2:AddDivider()
    Dn_2:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    Dn_2:AddButton("Export Config to Clipboard", function()
        local CQ_1
        local CP_1
        CP_1, CQ_1 = pcall(HttpService.JSONEncode, HttpService, Da())
        if not CP_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local CP_2 = setclipboard
        local CV = if CP_2 then 1 else 0
        local CT = 3054 * CV + 1175 * (1 - CV)
        local CU = 1989 * CV + 1487 * (1 - CV)
        if not ((CT * 2876 + CU * 294 + CT * CU) % 16777213 == 15442476) then
            CP_2 = toclipboard
        end
        local CR = CP_2
        local CP_3 = type(CR) ~= "function" or not pcall(CR, CQ_1)
        if CP_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    Dn_2:AddButton("Import Config from ClipboardText", function()
        local CY_1
        local CW = Options.SaveManager_ImportSource.Value or ""
        local CW_1
        local CX = tostring(CW):match("^%s*(.-)%s*$")
        if CX == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        CW_1, CY_1 = pcall(HttpService.JSONDecode, HttpService, CX)
        local CX_1 = not CW_1 or type(CY_1) ~= "table"
        local C1 = if CX_1 then 1 else 0
        local C_ = 1195 * C1 + 530 * (1 - C1)
        local C0 = 1082 * C1 + 1177 * (1 - C1)
        if not ((C_ * 2443 + C0 * 2135 + C_ * C0) % 16777213 == 6522445) then
            CX_1 = type(CY_1.objects) ~= "table"
        end
        if CX_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local CW_2 = 0
        for k, v in CY_1.objects do
            if Db(v) then
                CW_2 += 1
            end
        end
        if CW_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local CY_2 = CW_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(CW_2, CY_2), 6)
    end)
    SaveManager:LoadAutoloadConfig()
    if Toggles.HideUiOnStart.Value then
        Library:Toggle(false)
    end
end
tn()
tp()
tk()
