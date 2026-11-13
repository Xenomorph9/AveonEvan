local fns = {}
local tQ_8, tQ_18
local PurchaseWeaponCrate
local mv
local lv
local mc
local mU
local lU
local GetBlockShopStocks
local connection
local mi
local l_
local Label
local lH
local mo
local l5
local mN
local lN
local mu
local lu
local mb
local mT
local GetWeaponShopStocks
local mh
local lZ
local mG
local lG
local GetOwnedModels
local l4
local VirtualUser
local lM
local mt
local SetAutoWave
local ma
local mS
local lS
local mz
local lz
local mg
local lY
local mF
local l3
local mL
local lL
local ms
local l9
local mR
local lR
local my
local ly
local mf
local lX
local LocalPlayer
local lE
local ml
local l2
local mK
local lK
local GetBlockInventory
local l8
local mQ
local lQ
local mx
local lx
local me
local mW
local lW
local mD
local lD
local mk
local l1
local mJ
local lJ
local mq
local l7
local mP
local lP
local GetHealthShopStocks
local EquipLastWeaponRequest
local Library
local mV
local lV
local mC
local ToggleWaveState
local mj
local Options
local Workspace
local lI
local mp
local Toggles
local connection2
function fns.fn19()
    local rt = os.clock()
    if rt - l2 < (Options.KillAuraDelay and Options.KillAuraDelay.Value or 0.35) then
        return
    end
    local rv_1 = Options.KillAuraRange and Options.KillAuraRange.Value or 30
    local rv_2 = l8(rv_1)
    if #rv_2 == 0 then
        return
    end
    local ru_4 = l_()
    local rw = l5()
    if not (ru_4 and rw) then
        return
    end
    local rx_1 = rv_2[1]
    rw.AssemblyLinearVelocity = Vector3.zero
    rw.AssemblyAngularVelocity = Vector3.zero
    rw.CFrame = CFrame.new(rx_1.part.Position + Vector3.new(0, 2.5, 0))
    ru_4:Activate()
    if firetouchinterest then
        local rv_3 = ru_4:FindFirstChild("Blade") or ru_4:FindFirstChild("Handle")
        local ru_5 = rv_3
        if rv_3 then
            rv_3 = ru_5:IsA("BasePart")
        end
        if rv_3 then
            pcall(firetouchinterest, ru_5, rx_1.part, 0)
            pcall(firetouchinterest, ru_5, rx_1.part, 1)
        end
    end
    l2 = rt
end
function fns.fn31(eB, eC)
    if not eC then
        return false
    end
    local OwnerPlot = eB:FindFirstChild("OwnerPlot")
    local q8 = OwnerPlot and OwnerPlot:IsA("ObjectValue")
    if q8 then
        return OwnerPlot.Value == eC
    end
    return true
end
function fns.fn35(ao)
    local nW = Toggles[ao]
    return nW ~= nil and nW.Value == true
end
function fns.fn44(cO, cP, cQ, cR, cS, cT)
    local pC_1
    local Pathway = cO:FindFirstChild("Pathway")
    local pB = Pathway and Pathway:IsA("Folder")
    local pB_1
    if not pB then
        return false
    end
    pC_1, pB_1 = lX(cQ, cT)
    local part = Instance.new("Part")
    part.Size = Vector3.new(pC_1 * mi, math.max(1, cQ.Y), pB_1 * mi)
    part.CFrame = lz(cP, cQ, cR, cS, cT)
    part.Anchored = true
    part.CanCollide = false
    part.CanQuery = true
    part.Transparency = 1
    part.Parent = Workspace
    local pB_2 = OverlapParams.new()
    pB_2.FilterType = Enum.RaycastFilterType.Include
    pB_2.FilterDescendantsInstances = { Pathway }
    local pA_1 = #Workspace:GetPartsInPart(part, pB_2) > 0
    part:Destroy()
    return pA_1
end
function fns.onOnClientEvent3(bv)
    if type(bv) == "table" then
        mo = bv
    end
end
function fns.fn73()
    local result = GetBlockShopStocks:InvokeServer()
    if type(result) == "table" then
        mz = result
    end
end
function fns.fn79(cj)
    local pk = mU(cj)
    if not pk then
        return Vector3.new(mi, 6, mi)
    end
    local PlacementBox = pk:FindFirstChild("PlacementBox")
    local pm = PlacementBox and PlacementBox:IsA("BasePart")
    if pm then
        return PlacementBox.Size
    end
    local PrimaryPart = pk.PrimaryPart
    if PrimaryPart then
        return PrimaryPart.Size
    end
    return Vector3.new(mi, 6, mi)
end
function fns.fn88()
    local sn = os.clock()
    if sn - lY < (Options.PlaceTurretDelay and Options.PlaceTurretDelay.Value or 0.65) then
        return
    end
    local so_2 = not mj("AutoPlaceTurrets") or l9
    if so_2 then
        return
    end
    local so_3 = lP()
    if not so_3 then
        return
    end
    lH()
    local sp_1 = Options.PlaceTurretList and Options.PlaceTurretList.Value
    local sq = l1(sp_1)
    local floor = math.floor
    local ss = Options.PlaceTurretRotation and Options.PlaceTurretRotation.Value or 0
    local sp_3 = floor(ss / 90 + 0.5) % 4
    for i, v in ipairs(mV) do
        local sr_1 = sq[v] and mc(v) > 0
        if sr_1 then
            local sr_2 = lv(so_3, v, sp_3)
            if sr_2 then
                lI:FireServer(v, sr_2, so_3)
                lY = sn
                task.defer(lH)
                return
            end
        end
    end
end
function fns.fn126()
    local rY = os.clock()
    if rY - lN < 0.5 then
        return
    end
    if not mj("AutoBuyCrates") then
        return
    end
    local rZ = Options.AutoBuyCrateList and Options.AutoBuyCrateList.Value
    local r_ = l1(rZ)
    local rZ_1 = l4()
    for i, v in ipairs(lZ) do
        if r_[v] then
            local r0 = tonumber(mv[v]) or 0
            local r0_1 = lU[v]
            if r0 > 0 and r0_1 and rZ_1 >= r0_1 then
                PurchaseWeaponCrate:FireServer(v)
                lN = rY
                return
            end
        end
    end
end
function fns.fn132(dG, dH, dI)
    local ql_1
    local Base = dG:FindFirstChild("Base")
    local qi = Base and Base:IsA("BasePart")
    if not qi then
        return nil
    end
    local qi_1 = ms(dH)
    local qj = dI
    local qj_1
    local qt = if qj then 1 else 0
    local qr = 3489 * qt + 3361 * (1 - qt)
    local qs = 3418 * qt + 2354 * (1 - qt)
    if not ((qr * 2826 + qs * 2623 + qr * qs) % 16777213 == 13973517) then
        qj = 0
    end
    local qk = qj
    qj_1, ql_1 = lX(qi_1, qk)
    local qm = math.floor(Base.Size.X / mi)
    local qn = math.floor(Base.Size.Z / mi)
    local qo = {}
    local qp = qm - qj_1
    local qw = 0
    while qw <= qp do
        local qx = qw
        local qj_2 = qn - ql_1
        local qB = 0
        while qB <= qj_2 do
            local qC = qB
            if not l7(dG, Base, qi_1, qx, qC, qk) then
                local qj_3 = not my(dG, Base, qi_1, qx, qC, qk) and mK(dG, Base, qi_1, qx, qC, qk)
                if qj_3 then
                    table.insert(qo, { x = qx, z = qC })
                end
            end
            qB += 1
        end
        qw += 1
    end
    if #qo == 0 then
        return nil
    end
    local qj_4 = qo[math.random(1, #qo)]
    return lz(Base, qi_1, qj_4.x, qj_4.z, qk)
end
function fns.fn148(ed, ee)
    if ee == "Damage" then
        return mJ[ed] or 0
    elseif ee == "DPS" then
        local qP_2 = mJ[ed]
        local qV_1 = if qP_2 then 1 else 0
        local qT_1 = 2230 * qV_1 + 1664 * (1 - qV_1)
        local qU_1 = 410 * qV_1 + 3172 * (1 - qV_1)
        if not ((qT_1 * 2530 + qU_1 * 1218 + qT_1 * qU_1) % 16777213 == 7055580) then
            qP_2 = 0
        end
        local qR = mF[ed] or 1
        return qP_2 / math.max(qR, 0.01)
    else
        local qP_3 = mP[ed]
        local qV_2 = if qP_3 then 1 else 0
        local qT_2 = 584 * qV_2 + 1152 * (1 - qV_2)
        local qU_2 = 2840 * qV_2 + 1490 * (1 - qV_2)
        if not ((qT_2 * 1795 + qU_2 * 900 + qT_2 * qU_2) % 16777213 == 5262840) then
            qP_3 = 0
        end
        return qP_3
    end
end
local function fn151(g4)
    local DiscordGroup = g4:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = lJ })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = lJ })
end
local function fn182()
    local s6 = os.clock()
    if s6 - lG < 1 then
        return
    end
    if not mj("AutoStartFight") then
        return
    end
    if l9 then
        return
    end
    EquipLastWeaponRequest:FireServer()
    ToggleWaveState:FireServer()
    lG = s6
end
local function fn190()
    return LocalPlayer:WaitForChild("PlayerGui")
end
local function worker3()
    while not Library.Unloaded do
        task.wait(0.05)
        if mj("KillAura") then
            pcall(lD)
        end
    end
end
local function fn233(at)
    local nZ = {}
    if type(at) ~= "table" then
        return nZ
    end
    for k, v in pairs(at) do
        if v then
            nZ[k] = true
        end
    end
    return nZ
end
local function fn238()
    local Character = LocalPlayer.Character
    if not Character then
        return nil
    end
    local Tool2 = Character:FindFirstChildOfClass("Tool")
    if Tool2 then
        return Tool2
    end
    local Backpack = LocalPlayer:FindFirstChild("Backpack")
    if not Backpack then
        return nil
    end
    local Tool = Backpack:FindFirstChildOfClass("Tool")
    if Tool then
        Tool.Parent = Character
        return Tool
    end
    pcall(function()
        EquipLastWeaponRequest:FireServer()
    end)
    task.wait(0.15)
    return Character:FindFirstChildOfClass("Tool")
end
local function fn270(dm, dn, dp, dq, dr, ds)
    local pW_1
    local pV_1
    pV_1, pW_1 = lX(dp, ds)
    local pX = math.floor(dn.Size.X / mi)
    local pY = math.floor(dn.Size.Z / mi)
    local pZ = dq + pV_1 - 1
    local p3 = dq
    while p3 <= pZ do
        local p4 = p3
        local pV_2 = dr + pW_1 - 1
        local p8 = dr
        while p8 <= pV_2 do
            local p9 = p8
            for i, v in ipairs({ { -1, 0 }, { 1, 0 }, { 0, -1 }, { 0, 1 } }) do
                local pV_3 = p4 + v[1]
                local pZ_1 = p9 + v[2]
                if pV_3 >= 0 and pZ_1 >= 0 and pV_3 < pX and pZ_1 < pY then
                    if l7(dm, dn, Vector3.new(mi, dp.Y, mi), pV_3, pZ_1, 0) then
                        return true
                    end
                end
            end
            p8 += 1
        end
        p3 += 1
    end
    return false
end
local function worker2()
    while not Library.Unloaded do
        task.wait(2)
        if mj("AntiAfk") then
            local tC = tick() - mh
            local tD = tick() - mb
            if tC >= 300 and tD >= 60 then
                pcall(lV)
            else
                if tC < 300 and tD >= 300 then
                    pcall(lV)
                end
            end
        end
    end
end
local function fn279()
    local sa = os.clock()
    if sa - lL < 0.5 then
        return
    end
    if not mj("AutoBuyPlushies") then
        return
    end
    mN()
    local sb = Options.AutoBuyPlushieList and Options.AutoBuyPlushieList.Value
    local sc = l1(sb)
    local sb_1 = l4()
    for i, v in ipairs(lu) do
        if sc[v] and not mf[v] then
            local sd_1 = tonumber(mo[v]) or 0
            local sd_2 = mW[v]
            if sd_1 > 0 and sd_2 and sb_1 >= sd_2 then
                lM:FireServer(v)
                lL = sa
                task.defer(mN)
                return
            end
        end
    end
end
local function fn281()
    local Character = LocalPlayer.Character
    local o4 = Character and Character:FindFirstChild("HumanoidRootPart")
    return o4
end
local function fn327()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local oJ = leaderstats and leaderstats:FindFirstChild("Cash")
    local oI_1 = oJ
    if oJ then
        oJ = tonumber(oI_1.Value)
    end
    return oJ or 0
end
local function fn340(fv, fw, fx)
    local rC = l4()
    for i, v in ipairs(fv) do
        if fx[v] then
            local rD = tonumber(mz[v]) or 0
            local rD_1 = fw[v]
            if rD > 0 and rD_1 and rC >= rD_1 then
                lS:FireServer(v)
                return true
            end
        end
    end
    return false
end
local function fn364()
    if not mj("AutoWave") then
        return
    end
    SetAutoWave:FireServer(true)
end
local function fn371(cr, cs)
    local pr = cs or 0
    local pr_1 = cr.X
    local pt = cr.Z
    if pr % 2 == 1 then
        pr_1, pt = pt, pr_1
    end
    return math.max(1, math.floor(pr_1 / mi + 0.5)), math.max(1, math.floor(pt / mi + 0.5))
end
local function fn374(eu)
    local q1 = not eu
    local q6 = if q1 then 1 else 0
    local q4 = 868 * q6 + 3286 * (1 - q6)
    local q5 = 1735 * q6 + 217 * (1 - q6)
    if not ((q4 * 3561 + q5 * 1477 + q4 * q5) % 16777213 == 7159523) then
        q1 = not eu.Parent
    end
    if q1 then
        return false
    elseif eu:GetAttribute("IsDead") then
        return false
    else
        local Humanoid = eu:FindFirstChildOfClass("Humanoid")
        if Humanoid and Humanoid.Health <= 0 then
            return false
        end
        local attr = eu:GetAttribute("Health")
        local q2_1 = typeof(attr) == "number" and attr <= 0
        if q2_1 then
            return false
        end
        return true
    end
end
local function fn393()
    local oQ_1
    local oP_1
    oP_1, oQ_1 = pcall(function()
        return GetOwnedModels:InvokeServer()
    end)
    local oR = oP_1 and type(oQ_1) == "table"
    if oR then
        mf = {}
        for i, v in ipairs(oQ_1) do
            mf[v] = true
        end
    end
    return mf
end
local function fn410(aM, aN)
    return (mP[aM] or 0) < (mP[aN] or 0)
end
local function fn417(c1, c2, c3, c4, c5, c6, c7)
    local pJ_1
    local pI_1
    pI_1, pJ_1 = lX(c3, c6)
    local part = Instance.new("Part")
    part.Size = Vector3.new(pI_1 * mi * 0.92, math.max(1, c3.Y * 0.92), pJ_1 * mi * 0.92)
    part.CFrame = lz(c2, c3, c4, c5, c6)
    part.Anchored = true
    part.CanCollide = false
    part.CanQuery = true
    part.Transparency = 1
    part.Parent = Workspace
    local pI_2 = OverlapParams.new()
    pI_2.FilterDescendantsInstances = { part }
    local pJ_2 = false
    for i, v in ipairs(Workspace:GetPartsInPart(part, pI_2)) do
        if v.Name == "PlotHealth" then
            pJ_2 = true
            break
        else
            local Model = v:FindFirstAncestorOfClass("Model")
            local pL = Model and Model:GetAttribute("IsPlacedItem")
            if pL and Model ~= c7 then
                pJ_2 = true
                break
            end
        end
    end
    part:Destroy()
    return pJ_2
end
local function fn418()
    connection:Disconnect()
    connection2:Disconnect()
end
local function fn433(V, W)
    if setclipboard then
        setclipboard(V)
    elseif toclipboard then
        toclipboard(V)
    end
    Library:Notify(W)
end
local function onUnload()
    Library:Unload()
end
local function fn444(cb)
    local Turrets = mT:FindFirstChild("Turrets")
    local pf = Turrets and Turrets:FindFirstChild(cb)
    if pf then
        return pf
    end
    local New_Turrets = mT:FindFirstChild("New Turrets")
    local pf_1 = New_Turrets and New_Turrets:FindFirstChild(cb)
    return pf_1
end
local function fn457(cy, cz, cA, cB, cC)
    local px_1
    local pw_1
    local pv = cy.Size / 2
    pw_1, px_1 = lX(cz, cC)
    local py = -pv.X + cA * mi + pw_1 * mi / 2
    local pw_2 = -pv.Z + cB * mi + px_1 * mi / 2
    local px_2 = pv.Y + cz.Y / 2
    local pv_1 = cy.CFrame * CFrame.new(py, px_2, pw_2)
    local pw_3 = cC or 0
    if pw_3 ~= 0 then
        pv_1 = pv_1 * CFrame.Angles(0, math.rad(pw_3 * 90), 0)
    end
    return pv_1
end
local function onOnClientEvent5(bz)
    l9 = bz == true
end
local function fn487()
    local oM_1
    local oL_1
    oL_1, oM_1 = pcall(function()
        return GetBlockInventory:InvokeServer()
    end)
    local oN = oL_1 and type(oM_1) == "table"
    if oN then
        mk = oM_1
    end
    return mk
end
local function fn514()
    lW(mp, "Copied Discord invite to clipboard")
end
local function fn518(d2)
    local qE = {}
    for i, child in ipairs(d2:GetChildren()) do
        local qF = child:IsA("Model") and child:GetAttribute("IsPlacedItem")
        if qF then
            local attr = child:GetAttribute("PlacedType")
            local qG = lK[child.Name]
            local qH = attr == "Turrets"
            if not qH then
                qH = qG and qG.Type == "Turrets"
            end
            if qH then
                table.insert(qE, child)
            end
        end
    end
    return qE
end
local function onInputChanged(hZ)
    local UserInputType = hZ.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        mh = tick()
    end
end
local function worker()
    local tk_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local tj = math.floor(os.clock() - mg)
        if tj < 60 then
            tk_1 = tj .. "s"
        elseif tj < 3600 then
            tk_1 = string.format("%dm %ds", tj // 60, tj % 60)
        else
            tk_1 = string.format("%dh %dm", tj // 3600, tj % 3600 // 60)
        end
        Label:SetText(mR("Session time", tk_1, mu))
    end
end
local function fn540(eG)
    local rd = {}
    local ActiveEnemies = Workspace:FindFirstChild("ActiveEnemies")
    if not ActiveEnemies then
        return rd
    end
    local rf = lP()
    local rg = rf and rf:FindFirstChild("Base")
    local rg_1 = l5()
    if not rg_1 then
        return rd
    end
    local rj = Options.KillAuraPlotRange and Options.KillAuraPlotRange.Value or 120
    for i, child in ipairs(ActiveEnemies:GetChildren()) do
        local re_1 = child:IsA("Model") and mQ(child) and mt(child, rf)
        if re_1 then
            local re_2 = lx(child)
            if re_2 then
                local rj_1 = rg
                local rk = true
                if rj_1 then
                    rj_1 = rg:IsA("BasePart")
                end
                if rj_1 then
                    rk = (re_2.Position - rg.Position).Magnitude <= rj
                end
                local Magnitude = (re_2.Position - rg_1.Position).Magnitude
                if rk and Magnitude <= eG then
                    table.insert(rd, { enemy = child, part = re_2, dist = Magnitude })
                end
            end
        end
    end
    table.sort(rd, function(e3, e4)
        return e3.dist < e4.dist
    end)
    return rd
end
local function onCopyJoinScript_JobID()
    local th = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, mD)
    if setclipboard then
        setclipboard(th)
    elseif toclipboard then
        toclipboard(th)
    end
    Library:Notify("Copied join script to clipboard")
end
local function onOnClientEvent4(bx)
    if type(bx) == "table" then
        mk = bx
    end
end
local function onOnClientEvent(br)
    if type(br) == "table" then
        mz = br
    end
end
local function worker4()
    while not Library.Unloaded do
        task.wait(0.2)
        pcall(mL)
        pcall(lR)
        pcall(ma)
        pcall(mq)
        pcall(mx)
        pcall(mG)
    end
end
local function fn596(aP, aQ)
    return (mC[aP] or 0) < (mC[aQ] or 0)
end
local function fn603(ac, ad)
    return string.format('<font color="%s">%s</font>', ad, ac)
end
local function fn618()
    local result = GetHealthShopStocks:InvokeServer()
    if type(result) == "table" then
        mo = result
    end
end
local function fn659()
    local rN = os.clock()
    if rN - lQ < 0.35 then
        return
    end
    local rO = false
    if mj("AutoBuyTurrets") then
        local rP_1 = Options.AutoBuyTurretList and Options.AutoBuyTurretList.Value
        local rQ_1 = (l3(mV, mP, l1(rP_1)))
        local rU_1 = if rQ_1 then 1 else 0
        local rS = 3139 * rU_1 + 741 * (1 - rU_1)
        local rT = 60 * rU_1 + 1888 * (1 - rU_1)
        if not ((rS * 1348 + rT * 808 + rS * rT) % 16777213 == 4468192) then
            rQ_1 = rO
        end
        rO = rQ_1
    end
    local rU_2 = if mj("AutoBuyBlocks") then 1 else 0
    if rU_2 == 1 then
        local rP_2 = Options.AutoBuyBlockList and Options.AutoBuyBlockList.Value
        local rQ_2 = (l3(mS, mC, l1(rP_2)))
        local rX = if rQ_2 then 1 else 0
        local rV = 1971 * rX + 2953 * (1 - rX)
        local rW = 686 * rX + 1089 * (1 - rX)
        if not ((rV * 3682 + rW * 1846 + rV * rW) % 16777213 == 9875684) then
            rQ_2 = rO
        end
        rO = rQ_2
    end
    if rO then
        lQ = rN
        task.defer(lH)
    end
end
local function onInputBegan()
    mh = tick()
end
local function fn672()
    local result = GetBlockInventory:InvokeServer()
    if type(result) == "table" then
        mk = result
    end
end
local function fn674()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    mb = tick()
end
local function fn693(af, ag, ah)
    return string.format("<b>%s</b> %s %s", af, ly("-", "#5a6070"), ly(ag, ah))
end
local function fn698(er)
    local q_ = er.PrimaryPart or er:FindFirstChild("HumanoidRootPart") or er:FindFirstChild("Head") or er:FindFirstChildWhichIsA("BasePart")
    return q_
end
local function fn716(a3, a4)
    return (mW[a3] or 0) < (mW[a4] or 0)
end
local function fn717(aX, aY)
    return (lU[aX] or 0) < (lU[aY] or 0)
end
local function worker5()
    while not Library.Unloaded do
        task.wait(2)
        if mj("AutoWave") then
            pcall(me)
        end
    end
end
local function fn751()
    local Plots = Workspace:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    for i, child in ipairs(Plots:GetChildren()) do
        local o6_1 = child:IsA("Model") and child:GetAttribute("OwnerId") == LocalPlayer.UserId
        if o6_1 then
            return child
        end
    end
    return nil
end
local function fn752()
    local result = GetOwnedModels:InvokeServer()
    if type(result) == "table" then
        mf = {}
        for i, v in ipairs(result) do
            mf[v] = true
        end
    end
end
local function fn764()
    local result = GetWeaponShopStocks:InvokeServer()
    if type(result) == "table" then
        mv = result
    end
end
local function onRscripts()
    if setclipboard then
        setclipboard(ml)
    elseif toclipboard then
        toclipboard(ml)
    end
    Library:Notify("Copied Rscripts profile to clipboard")
end
local function fn786(bY)
    local oZ = (tonumber(mk[bY]))
    local o2 = if oZ then 1 else 0
    local o0 = 952 * o2 + 2750 * (1 - o2)
    local o1 = 3990 * o2 + 1835 * (1 - o2)
    if not ((o0 * 1865 + o1 * 2853 + o0 * o1) % 16777213 == 180217) then
        oZ = 0
    end
    return oZ
end
local function fn793()
    local td_1
    local tc_1
    if identifyexecutor then
        td_1, tc_1 = identifyexecutor()
        local te = td_1 ~= ""
        local tf = type(td_1) == "string" and te
        if tf then
            local te_1 = type(tc_1) == "string" and tc_1 ~= "" and td_1 .. " " .. tc_1
            lE = te_1 or td_1
        end
    end
end
local function onOnClientEvent2(bt)
    if type(bt) == "table" then
        mv = bt
    end
end
SetAutoWave = nil
lu = nil
lv = nil
EquipLastWeaponRequest = nil
lx = nil
ly = nil
lz = nil
connection = nil
ToggleWaveState = nil
lD = nil
lE = nil
lG = nil
lH = nil
lI = nil
lJ = nil
lK = nil
lL = nil
lM = nil
lN = nil
PurchaseWeaponCrate = nil
lP = nil
lQ = nil
lR = nil
lS = nil
lU = nil
lV = nil
lW = nil
lX = nil
lY = nil
lZ = nil
l_ = nil
Options = nil
l1 = nil
l2 = nil
l3 = nil
l4 = nil
l5 = nil
Toggles = nil
l7 = nil
l8 = nil
l9 = nil
ma = nil
mb = nil
mc = nil
Library = nil
me = nil
mf = nil
local lA, RemoveItemEvent, lT
mg = nil
mh = nil
mi = nil
mj = nil
mk = nil
ml = nil
GetOwnedModels = nil
mo = nil
mp = nil
mq = nil
GetBlockInventory = nil
ms = nil
mt = nil
mu = nil
mv = nil
GetHealthShopStocks = nil
mx = nil
my = nil
mz = nil
GetWeaponShopStocks = nil
GetBlockShopStocks = nil
mC = nil
mD = nil
LocalPlayer = nil
mF = nil
mG = nil
Label = nil
Workspace = nil
mJ = nil
mK = nil
mL = nil
VirtualUser = nil
mN = nil
connection2 = nil
mP = nil
mQ = nil
mR = nil
mS = nil
mT = nil
mU = nil
mV = nil
mW = nil
local mm
mm = nil
local SaveManager
mT, VirtualUser, Workspace, LocalPlayer = nil, nil, nil, nil
local tQ_5 = game:GetService("Players")
mT = game:GetService("ReplicatedStorage")
local tQ_24 = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
Workspace = game:GetService("Workspace")
LocalPlayer = tQ_5.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return LocalPlayer:WaitForChild("PlayerGui")
    end
end
mp, ml, mi, tQ_8, lS, PurchaseWeaponCrate, lM, lI, RemoveItemEvent, ToggleWaveState, EquipLastWeaponRequest, SetAutoWave, GetBlockShopStocks, GetWeaponShopStocks, GetHealthShopStocks, GetBlockInventory, GetOwnedModels, Library, SaveManager, Toggles, Options, mu, lK, lW, lJ, ly, mR, mj, l1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
gethui = fn190
local nd = "Defend Your Plushie TD"
mp = "https://discord.gg/ehKVq7pf7v"
ml = "https://rscripts.net/@Ouroboros"
mi = 4
if (not PurchaseWeaponCrate or mp or (PurchaseWeaponCrate or mp)) and (false or mp and PurchaseWeaponCrate) and (mp and PurchaseWeaponCrate or (not PurchaseWeaponCrate or not PurchaseWeaponCrate) or (false and not PurchaseWeaponCrate or false)) or not ((not PurchaseWeaponCrate or mp or (PurchaseWeaponCrate or mp)) and (false or mp and PurchaseWeaponCrate) and (mp and PurchaseWeaponCrate or (not PurchaseWeaponCrate or not PurchaseWeaponCrate) or (false and not PurchaseWeaponCrate or false))) then
    tQ_8 = mT:WaitForChild("Events")
else
    mT = tQ_8:WaitForChild("Events")
end
local tQ_17 = mT:WaitForChild("Functions")
local tQ_11 = require(mT.Modules.ItemConfigurations)
local tQ_2 = tQ_11.ItemConfigurations
local tQ_21 = require(mT.Modules.WeaponConfigurations)
local tQ_3 = require(mT.Modules.ModelConfigurations)
if not lM and not tQ_17 and (not tQ_17 or SaveManager) or (false or SaveManager) and (SaveManager or tQ_17) or (false or not tQ_17) and false and (not lM and false or (false or not SaveManager)) or not (not lM and not tQ_17 and (not tQ_17 or SaveManager) or (false or SaveManager) and (SaveManager or tQ_17) or (false or not tQ_17) and false and (not lM and false or (false or not SaveManager))) then
    lS = tQ_8:WaitForChild("PurchaseBlockItem")
    PurchaseWeaponCrate = tQ_8:WaitForChild("PurchaseWeaponCrate")
    lM = tQ_8:WaitForChild("PurchaseHealthUpgrade")
    lI = tQ_8:WaitForChild("PlaceItemEvent")
else
    tQ_8 = PurchaseWeaponCrate:WaitForChild("PurchaseBlockItem")
    lS = PurchaseWeaponCrate:WaitForChild("PurchaseWeaponCrate")
    lI = PurchaseWeaponCrate:WaitForChild("PurchaseHealthUpgrade")
    lM = PurchaseWeaponCrate:WaitForChild("PlaceItemEvent")
end
RemoveItemEvent = tQ_8:WaitForChild("RemoveItemEvent")
ToggleWaveState = tQ_8:WaitForChild("ToggleWaveState")
EquipLastWeaponRequest = tQ_8:WaitForChild("EquipLastWeaponRequest")
SetAutoWave = tQ_8:WaitForChild("SetAutoWave")
local m9 = tQ_8:WaitForChild("UpdateBlockStocks")
local m8 = tQ_8:WaitForChild("UpdateWeaponStocks")
local tQ_7 = tQ_8:WaitForChild("UpdateHealthStock")
local tQ_22 = tQ_8:WaitForChild("WaveStateChanged")
local BlockInventoryUpdated = tQ_8:WaitForChild("BlockInventoryUpdated")
GetBlockShopStocks = tQ_17:WaitForChild("GetBlockShopStocks")
GetWeaponShopStocks = tQ_17:WaitForChild("GetWeaponShopStocks")
GetHealthShopStocks = tQ_17:WaitForChild("GetHealthShopStocks")
GetBlockInventory = tQ_17:WaitForChild("GetBlockInventory")
GetOwnedModels = tQ_17:WaitForChild("GetOwnedModels")
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
lW = fn433
lJ = fn514
ly = fn603
mR = fn693
local nf = "#7fd47f"
local ne = "#6ec1ff"
mu = "#e8a34d"
local nc = "#8b93a3"
mj = fns.fn35
l1 = fn233
lK = {}
for k, v in pairs(tQ_2) do
    lK[k] = v
end
tQ_5 = {}
tQ_17 = tQ_11.LimitedItems or tQ_5
for k, v in pairs(tQ_17) do
    lK[k] = v
end
mV, mS, mP, mJ, mF, mC, tQ_17 = nil, nil, nil, nil, nil, nil, nil
tQ_5 = 2
repeat
    tQ_8 = (tQ_5 * 2 + 0) % 3 + 1
    if tQ_8 <= 2 then
        if tQ_8 <= 1 then
            tQ_8 = (vector.create((tQ_5 * 1 + 7) % 11 + 1, (tQ_5 * 4 + 5) % 13 + 1, (tQ_5 * 6 + 16) % 17 + 1))
            tQ_18 = (vector.create((tQ_5 * 3 + 1) % 11 + 1, (tQ_5 * 9 + 7) % 13 + 1, (tQ_5 * 1 + 11) % 17 + 1))
            tQ_2 = (vector.create((tQ_5 * 5 + 4) % 5 + 1, (tQ_5 * 1 + 6) % 7 + 1, (tQ_5 * 3 + 7) % 9 + 1))
            if math.abs((vector.angle(tQ_8, tQ_18, tQ_2))) - math.abs((vector.angle(tQ_18, tQ_8, tQ_2))) == 2 then
                tQ_17 = {}
                mC = { "Damage", "DPS", "Price" }
            else
                mC = {}
                tQ_17 = { "Price", "Damage", "DPS" }
            end
            tQ_5 = (tQ_5 + 5) % 12
        else
            if (tQ_5 * 2 + 4) * 13 % 3 == ((tQ_5 * 2 + 4) * 13 + 2) % 3 then
                mS = {}
                mP = {}
                mV = {}
            else
                mV = {}
                mS = {}
                mP = {}
            end
            tQ_5 = (tQ_5 + 11) % 12
        end
    else
        tQ_8 = (vector.create((tQ_5 * 1 + 9) % 11 + 1, (tQ_5 * 4 + 12) % 13 + 1, (tQ_5 * 5 + 17) % 17 + 1))
        tQ_18 = (vector.create((tQ_5 * 5 + 5) % 11 + 1, (tQ_5 * 5 + 12) % 13 + 1, (tQ_5 * 10 + 16) % 17 + 1))
        tQ_2 = (vector.create((tQ_5 * 2 + 5) % 5 + 1, (tQ_5 * 1 + 6) % 7 + 1, (tQ_5 * 3 + 2) % 9 + 1))
        if math.abs((vector.angle(tQ_8, tQ_18, tQ_2))) - math.abs((vector.angle(tQ_18, tQ_8, tQ_2))) == 0 then
            mJ = {}
            mF = {}
        else
            mF = {}
            mJ = {}
        end
        tQ_5 = (tQ_5 + 2) % 12
    end
until (tQ_5 * 7 + 8) % 12 == 4
for k, v in pairs(lK) do
    tQ_5 = type(v) == "table" and type(v.Price) == "number" and v.Price > 0
    if tQ_5 then
        if v.Type == "Turrets" then
            table.insert(mV, k)
            mP[k] = v.Price
            tQ_5 = v.Damage or 0
            mJ[k] = tQ_5
            tQ_5 = v.FireRate or 1
            mF[k] = tQ_5
        elseif v.Type == "Blocks" then
            table.insert(mS, k)
            mC[k] = v.Price
        end
    end
end
lZ, lU = nil, nil
tQ_5 = 2
repeat
    tQ_8 = {
        "mpf",
        "tgrhypsgqy",
        "jllqu",
        "sweyictin",
        "qnfxxihnb",
        "xrunsfw",
        "kzsbjb",
        "cckcvman",
        "jdklce",
        "juysmbzy"
    }
    local uI = tQ_5
    tQ_18 = tQ_8[uI % 10 + 1]
    if tQ_18:len() >= tQ_18:gsub("(.)", "%1%1", uI % 3 % 2 + 1):len() then
        table.sort(lU, fn410)
        table.sort(mV, fn596)
        mS = {}
        lZ = {}
    else
        table.sort(mV, fn410)
        table.sort(mS, fn596)
        lZ = {}
        lU = {}
    end
    tQ_5 = (tQ_5 + 7) % 8
until (tQ_5 * 3 + 7) % 8 == 2
tQ_5 = {}
tQ_8 = tQ_21.Crates or tQ_5
for k, v in pairs(tQ_8) do
    tQ_5 = type(v) == "table" and type(v.Price) == "number" and v.Price > 0
    if tQ_5 then
        table.insert(lZ, k)
        lU[k] = v.Price
    end
end
lu, mW = nil, nil
tQ_5 = 7
repeat
    tQ_8 = (vector.create((tQ_5 * 2 + 1) % 11 + 1, (tQ_5 * 11 + 1) % 13 + 1, (tQ_5 * 7 + 14) % 17 + 1))
    tQ_18 = (vector.create((tQ_5 * 5 + 4) % 11 + 1, (tQ_5 * 1 + 13) % 13 + 1, (tQ_5 * 5 + 16) % 17 + 1))
    tQ_2 = (vector.create((tQ_5 * 1 + 2) % 11 + 1, (tQ_5 * 11 + 4) % 13 + 1, (tQ_5 * 6 + 5) % 17 + 1))
    if vector.dot(vector.cross(tQ_8, tQ_18), tQ_2) == vector.dot(vector.cross(tQ_18, tQ_2), tQ_8) then
        table.sort(lZ, fn717)
        lu = {}
        mW = {}
    else
        table.sort(mW, fn717)
        lZ = {}
        lu = {}
    end
    tQ_5 = (tQ_5 + 2) % 8
until (tQ_5 * 7 + 5) % 8 == 4
for k, v in pairs(tQ_3) do
    tQ_5 = type(v) == "table" and type(v.Price) == "number" and v.Price > 0
    if tQ_5 then
        table.insert(lu, k)
        mW[k] = v.Price
    end
end
mz, mv, mo, mk, mf, l9, l2, lY, lT, lQ, lN, lL, lG, l4, lH, mN, mc, l5, lP, mU, ms, lX, lz, l7, my, mK, lv, lA, mm, l_, lx, mQ, mt, l8, lD, l3, mL, lR, ma, mq, mx, mG, me = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
table.sort(lu, fn716)
mz = {}
mv = {}
mo = {}
mk = {}
mf = {}
l9 = false
pcall(fns.fn73)
pcall(fn764)
pcall(fn618)
pcall(fn672)
pcall(fn752)
m9.OnClientEvent:Connect(onOnClientEvent)
m8.OnClientEvent:Connect(onOnClientEvent2)
tQ_7.OnClientEvent:Connect(fns.onOnClientEvent3)
BlockInventoryUpdated.OnClientEvent:Connect(onOnClientEvent4)
tQ_22.OnClientEvent:Connect(onOnClientEvent5)
l4 = fn327
lH = fn487
mN = fn393
mc = fn786
l5 = fn281
lP = fn751
mU = fn444
ms = fns.fn79
lX = fn371
lz = fn457
l7 = fns.fn44
my = fn417
mK = fn270
lv = fns.fn132
lA = fn518
mm = fns.fn148
l_ = fn238
lx = fn698
mQ = fn374
mt = fns.fn31
l8 = fn540
l2 = 0
lY = 0
lT = 0
lQ = 0
lN = 0
lL = 0
lG = 0
lD = fns.fn19
if (not l7 and not l7 and (l7 and 7) or (l7 or l7 or not l7 and mK)) and not (not l7 and not l7 and (l7 and 7) or (l7 or l7 or not l7 and mK)) then
    ma = fn340
    l3 = fn659
    mL = fns.fn126
    lR = fn279
else
    l3 = fn340
    mL = fn659
    lR = fns.fn126
    ma = fn279
end
mq = fns.fn88
mx = function()
    local sD
    local sE = os.clock()
    if sE - lT < (Options.ReplaceTurretDelay and Options.ReplaceTurretDelay.Value or 0.75) then
        return
    end
    local sE_1 = not mj("AutoReplaceTurrets") or l9
    if sE_1 then
        return
    end
    local sE_2 = lP()
    if not sE_2 then
        return
    end
    lH()
    local sF_2 = Options.ReplaceTargetList and Options.ReplaceTargetList.Value
    local sG_1 = l1(sF_2)
    local sF_3 = Options.ReplaceWithList and Options.ReplaceWithList.Value
    local sH = l1(sF_3)
    local sI = Options.ReplaceCompareMode and Options.ReplaceCompareMode.Value or "Price"
    local sF_5 = {}
    sD = sI
    for i, v in ipairs(mV) do
        local sI_1 = sH[v] and mc(v) > 0
        if sI_1 then
            table.insert(sF_5, v)
        end
    end
    if #sF_5 == 0 then
        return
    end
    table.sort(sF_5, function(gv, gw)
        return mm(gv, sD) > mm(gw, sD)
    end)
    local sH_1 = lA(sE_2)
    table.sort(sH_1, function(gC, gD)
        return mm(gC.Name, sD) < mm(gD.Name, sD)
    end)
    for i, v in ipairs(sH_1) do
        local Name = v.Name
        local PlacementBox = v:FindFirstChild("PlacementBox")
        local sJ = sG_1[Name] and PlacementBox and PlacementBox:IsA("BasePart")
        if sJ then
            local sJ_1 = mm(Name, sD)
            for i, v2 in ipairs(sF_5) do
                local sK = v2 ~= Name and mc(v2) > 0 and mm(v2, sD) > sJ_1
                if sK then
                    local CFrame = PlacementBox.CFrame
                    RemoveItemEvent:FireServer(v)
                    task.wait(0.45)
                    lI:FireServer(v2, CFrame, sE_2)
                    lT = os.clock()
                    task.defer(lH)
                    return
                end
            end
        end
    end
end
mG = fn182
me = fn364
tQ_5 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = mp, Copyable = true }, "|", nd },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
tQ_2 = {
    Info = tQ_5:AddTab("Info", "info"),
    Main = tQ_5:AddTab("Main", "shield"),
    Settings = tQ_5:AddTab("Settings", "settings")
}
tQ_18 = fn151
for k, v in tQ_2 do
    if v ~= tQ_2.Info then
        tQ_18(v)
    end
end
lE, tQ_8, tQ_21, Label, mD, tQ_11 = nil, nil, nil, nil, nil, nil
tQ_5 = 3
repeat
    tQ_18 = (tQ_5 * 2 + 1) % 3 + 1
    if tQ_18 <= 2 then
        if tQ_18 <= 1 then
            local uR = bit32.rrotate(bit32.bxor(bit32.lrotate(tQ_5, 29), string.byte(tostring(lE))), 6)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(uR, 3817444247), 1404073186), (bit32.bxor(bit32.band(uR, 477523048), 1196827280))), 1404073186), 1196827280) == uR then
                tQ_11 = #mD > 18
            else
                mD = #tQ_11 > 18
            end
            tQ_5 = (tQ_5 + 5) % 24
        else
            if (tQ_5 * 3 + 1) * 17 % 4 == ((tQ_5 * 3 + 1) * 17 + 15) % 4 then
                mR = "Unknown"
                pcall(fn793)
                nd = tQ_21.Info:AddLeftGroupbox("Account", "circle-user")
                nd:AddLabel(tQ_2("User", tQ_8.Name, LocalPlayer), true)
                nd:AddLabel(tQ_2("Status", "Keyless", LocalPlayer), true)
                nd:AddLabel(tQ_2("Executor", mR, LocalPlayer), true)
                mu = tQ_21.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                mu:AddLabel(nf(ly .. " [" .. tostring(game.PlaceId) .. "]", Label), true)
                mu:AddLabel(tQ_2("Place ID", tostring(game.PlaceId), Label), true)
                lE = mu:AddLabel(tQ_2("Session time", "0s", ne), true)
            else
                lE = "Unknown"
                pcall(fn793)
                tQ_8 = tQ_2.Info:AddLeftGroupbox("Account", "circle-user")
                tQ_8:AddLabel(mR("User", LocalPlayer.Name, nf), true)
                tQ_8:AddLabel(mR("Status", "Keyless", nf), true)
                tQ_8:AddLabel(mR("Executor", lE, nf), true)
                tQ_21 = tQ_2.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                tQ_21:AddLabel(ly(nd .. " [" .. tostring(game.PlaceId) .. "]", ne), true)
                tQ_21:AddLabel(mR("Place ID", tostring(game.PlaceId), ne), true)
                Label = tQ_21:AddLabel(mR("Session time", "0s", mu), true)
            end
            tQ_5 = (tQ_5 + 23) % 24
        end
    else
        if (tQ_5 * 2 + 3) * 16 % 3 == ((tQ_5 * 2 + 3) * 16 + 6) % 3 then
            mD = tostring(game.JobId)
        else
            tQ_8 = tostring(game.JobId)
        end
        tQ_5 = (tQ_5 + 17) % 24
    end
until (tQ_5 * 23 + 1) % 24 == 1
if tQ_11 then
    tQ_5 = 3
    repeat
        tQ_8 = {
            "hvvvqoiq",
            "bifajftqqy",
            "bxew",
            "ehdu",
            "axva",
            "xodhbnz",
            "hovhujzluq",
            "wbkcjpylbfl",
            "lqzauuoh",
            "sxpwunqmt",
            "ahtbtpwuzuz",
            "nmexgztxe"
        }
        local uq = tQ_5
        tQ_18 = tQ_8[uq % 12 + 1]
        if tQ_18:len() >= tQ_18:gsub("(.)", "%1%1", uq % 3 % 2 + 1):len() then
            mD = string.sub(tQ_11, 1, 18) .. "..."
        else
            tQ_11 = string.sub(mD, 1, 18) .. "..."
        end
        tQ_5 = (tQ_5 + 1) % 4
    until (tQ_5 * 3 + 3) % 4 == 3
end
tQ_5 = tQ_11 or mD
mg, mh, mb, connection, connection2, lV = nil, nil, nil, nil, nil, nil
tQ_7 = tQ_5
tQ_21:AddLabel(mR("Server", tQ_7, nc), true)
tQ_21:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
mg = os.clock()
task.spawn(worker)
tQ_3 = tQ_2.Info:AddRightGroupbox("Scripts", "package")
tQ_3:AddLabel(ly("Included in this hub", nc), true)
tQ_3:AddLabel(ly(nd, ne), true)
tQ_11 = tQ_2.Info:AddRightGroupbox("Features", "list")
tQ_11:AddLabel(ly("Auto Buy", ne), true)
tQ_11:AddLabel(ly("Combat", mu), true)
tQ_11:AddLabel(ly("Placement", nf), true)
tQ_11:AddLabel(ly("Auto Replace", ne), true)
tQ_11:AddLabel(ly("Waves", nc), true)
tQ_18 = tQ_2.Info:AddRightGroupbox("Socials", "link")
tQ_18:AddButton({ Text = "Discord", Func = lJ })
tQ_18:AddButton({ Text = "Rscripts", Func = onRscripts })
tQ_8 = tQ_2.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
tQ_8:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
tQ_8:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
tQ_8:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
tQ_8:AddButton({ Text = "Copy Discord Invite", Func = lJ })
local FaqGroup = tQ_2.Info:AddRightGroupbox("FAQ", "circle-help")
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
local ShopGroup = tQ_2.Main:AddLeftGroupbox("Shop", "shopping-cart")
ShopGroup:AddToggle("AutoBuyTurrets", { Text = "Auto Buy Turrets", Default = false })
ShopGroup:AddDropdown("AutoBuyTurretList", { Text = "Turrets", Values = mV, Default = { "OldTurret" }, Multi = true, AllowNull = true })
ShopGroup:AddToggle("AutoBuyBlocks", { Text = "Auto Buy Blocks", Default = false })
ShopGroup:AddDropdown("AutoBuyBlockList", { Text = "Blocks", Values = mS, Default = { "CardboardBlock" }, Multi = true, AllowNull = true })
ShopGroup:AddToggle("AutoBuyPlushies", { Text = "Auto Buy Plushies", Default = false })
ShopGroup:AddDropdown("AutoBuyPlushieList", { Text = "Plushies", Values = lu, Default = { "Dog" }, Multi = true, AllowNull = true })
ShopGroup:AddToggle("AutoBuyCrates", { Text = "Auto Buy Crates", Default = false })
ShopGroup:AddDropdown("AutoBuyCrateList", { Text = "Crates", Values = lZ, Default = { "WoodCrate" }, Multi = true, AllowNull = true })
local CombatGroup = tQ_2.Main:AddLeftGroupbox("Combat", "swords")
CombatGroup:AddToggle("KillAura", { Text = "Kill Aura", Default = false })
CombatGroup:AddSlider("KillAuraRange", { Text = "Kill Aura Range", Default = 30, Min = 5, Max = 100, Rounding = 0 })
CombatGroup:AddSlider("KillAuraPlotRange", { Text = "Plot Range", Default = 120, Min = 40, Max = 300, Rounding = 0 })
CombatGroup:AddSlider("KillAuraDelay", { Text = "Kill Aura Delay", Default = 0.35, Min = 0.1, Max = 1.5, Rounding = 2 })
m9 = tQ_2.Main:AddRightGroupbox("Placement", "map-pin")
m9:AddToggle("AutoPlaceTurrets", { Text = "Auto Place Turrets Near Path", Default = false })
m9:AddDropdown("PlaceTurretList", { Text = "Place Turrets", Values = mV, Default = { "OldTurret" }, Multi = true, AllowNull = true })
m9:AddSlider("PlaceTurretDelay", { Text = "Place Delay", Default = 0.65, Min = 0.35, Max = 3, Rounding = 2 })
m9:AddSlider("PlaceTurretRotation", { Text = "Rotation", Default = 0, Min = 0, Max = 270, Rounding = 0 })
m9:AddToggle("AutoReplaceTurrets", { Text = "Auto Replace Turrets", Default = false })
m9:AddDropdown("ReplaceTargetList", { Text = "Replace Targets", Values = mV, Default = mV, Multi = true, AllowNull = true })
m9:AddDropdown("ReplaceWithList", { Text = "Replace With", Values = mV, Default = mV, Multi = true, AllowNull = true })
m9:AddDropdown("ReplaceCompareMode", { Text = "Compare By", Values = tQ_17, Default = "Price" })
m9:AddSlider("ReplaceTurretDelay", { Text = "Replace Delay", Default = 0.75, Min = 0.4, Max = 3, Rounding = 2 })
m8 = tQ_2.Main:AddRightGroupbox("Waves", "play")
m8:AddToggle("AutoStartFight", { Text = "Auto Start Fight", Default = false })
m8:AddToggle("AutoWave", {
    Text = "Auto Wave",
    Default = false,
    Callback = function(hG)
        pcall(function()
            SetAutoWave:FireServer(hG == true)
        end)
    end
})
tQ_22 = tQ_2.Settings:AddLeftGroupbox("Menu", "menu")
tQ_22:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
tQ_22:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
tQ_22:AddButton({ Text = "Unload", Func = onUnload })
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
ThemeManager:ApplyToTab(tQ_2.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/defend-your-plushie-td")
SaveManager:BuildConfigSection(tQ_2.Settings)
SaveManager:LoadAutoloadConfig()
mh = tick()
if (not CombatGroup and connection2 and (CombatGroup or connection2) or (not CombatGroup or CombatGroup) and (CombatGroup and mh)) and not (not CombatGroup and connection2 and (CombatGroup or connection2) or (not CombatGroup or CombatGroup) and (CombatGroup and mh)) then
    lV = tick()
    pcall(function()
        for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
            local tw = v
            pcall(function()
                tw:Disable()
            end)
        end
    end)
    mb = fn674
    tQ_24 = connection.InputBegan:Connect(onInputBegan)
else
    mb = tick()
    pcall(function()
        for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
            local tw = v
            pcall(function()
                tw:Disable()
            end)
        end
    end)
    lV = fn674
    connection = tQ_24.InputBegan:Connect(onInputBegan)
end
connection2 = tQ_24.InputChanged:Connect(onInputChanged)
Library:OnUnload(fn418)
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
