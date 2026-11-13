local fns = {}
local Nu_1, Nu_2, Nu_4, Nu_6, Nu_7, Nu_8, Nu_9, Nu_10, Nu_11, Nu_13, Nu_14, LocalPlayer, Nu_17, Nu_19, Nu_20, Nu_22, Nu_23, Nu_24, Nu_26, Nu_29, Nu_32, Nu_34, Nu_37, Nu_40, Nu_43, Nu_46, Nu_49, Nu_52, Nu_55, Nu_58, Nu_61, QueueGroup
Nu_1 = nil
Nu_4 = nil
Nu_6 = nil
Nu_7 = nil
Nu_9 = nil
Nu_10 = nil
Nu_11 = nil
Nu_13 = nil
Nu_14 = nil
LocalPlayer = nil
Nu_19 = nil
Nu_20 = nil
Nu_22 = nil
Nu_24 = nil
local xw
local yV
local xV
local zj
local yj
local xj
local xI
local y6
local x6
local yv
local xv
local yU
local xU
local zi
local yi
local xi
local yH
local xH
local y5
local yu
local xu
local yT
local connection6
local zh
local yh
local xh
local xG
local y4
local yt
local xt
local yS
local xS
local zg
local yg
local xg
local yF
local y3
local connection4
local ys
local xs
local connection3
local yf
local yE
local xE
local Library
local yr
local xr
local Toggles
local xQ
local ze
local ye
local xe
local yD
local xD
local y1
local connection2
local yP
local xP
local zd
local yd
local yC
local connection5
local y0
local x0
local yp
local xp
local yO
local zc
local yc
local yB
local xB
local y_
local x_
local connection
local xo
local xN
local zb
local xA
local yZ
local yn
local xn
local yM
local xM
local za
local ya
local yz
local xz
local yY
local xY
local CFrame2
local xm
local xL
local y9
local yy
local yX
local xX
local yl
local xl
function fns.fn32()
    if not Toggles.KillAuraVisualizer.Value then
        yH.clear()
    end
end
function fns.fn36()
    xI.step(math.huge)
end
function fns.fn39()
    if Toggles.Noclip.Value then
        return
    end
    for k in xM do
        if k.Parent then
            k.CanCollide = true
        end
    end
    table.clear(xM)
end
function fns.fn43(qM, qN, qO, qP)
    local part = Instance.new("Part")
    part.Name = qM
    part.Anchored = true
    part.CanCollide = false
    part.CanQuery = false
    part.CanTouch = false
    part.CastShadow = false
    part.Material = Enum.Material.Neon
    part.Color = qO
    part.Size = qN
    if qP then
        part.Shape = qP
    end
    part.Parent = yH.folder
    return part
end
function fns.fn76(hG, hH)
    local Fs_1, Fs_2, Fs_3
    local Fr = yF()
    local Fr_1, Fr_2, Fr_3
    if not Fr then
        return false
    end
    if (Fr.Position - hH.Position).Magnitude > Nu_4.MAX_PICKUP_DISTANCE then
        xm(hH)
        task.wait(0.1)
    end
    Fr_1, Fs_1 = pcall(hG)
    if Fr_1 and Fs_1 == true then
        return true
    end
    zb()
    task.wait(0.08)
    Fr_2, Fs_2 = pcall(hG)
    if Fr_2 and Fs_2 == true then
        return true
    end
    xm(hH)
    task.wait(0.12)
    Fr_3, Fs_3 = pcall(hG)
    return Fr_3 and Fs_3 == true
end
function fns.onCharacterAdded(pf)
    local Humanoid = pf:WaitForChild("Humanoid", 10)
    if Humanoid then
        zj(Humanoid)
    end
end
function fns.worker6()
    while not Library.Unloaded do
        local M9 = 0.05
        local Na = zg()
        local Na_2
        local Nb = not yt and y3("AutoTpCarAfterBoss")
        local Nc = Nb and Nu_9
        local Nc_1
        if Nc and not Na then
            pcall(xP)
        end
        Nu_9 = Na
        local Na_1 = not yt
        local Nb_2 = false
        if Na_1 then
            Na_1 = y3("AutoAvoidFeathers")
        end
        if Na_1 then
            M9 = 0.03
            Na_2, Nc_1 = pcall(Nu_14)
            Nb_2 = Na_2 and Nc_1 == true
        end
        local Na_3 = not yt and y3("AutoOrbitBoss") and not Nb_2
        if Na_3 then
            local Nb_3 = (y3("AutoAvoidFeathers"))
            if Nb_3 then
                local Nc_2 = xN() or xI.featherEvacUntil > os.clock()
                Nb_3 = Nc_2
            end
            Na_3 = not Nb_3
        end
        if Na_3 then
            pcall(y_)
            M9 = 0.03
        end
        task.wait(M9)
    end
end
function fns.fn103()
    local Character = LocalPlayer.Character
    local Ak = Character and Character:FindFirstChild("HumanoidRootPart")
    return Ak
end
function fns.onJumpRequest()
    local KE = Library.Unloaded
    local KI = if KE then 1 else 0
    local KG = 3175 * KI + 3868 * (1 - KI)
    local KH = 2049 * KI + 3167 * (1 - KI)
    if not ((KG * 3886 + KH * 803 + KG * KH) % 16777213 == 3711759) then
        KE = not y3("InfJump")
    end
    if KE then
        return
    end
    local KE_1 = yj()
    if KE_1 then
        KE_1:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end
function fns.fn142(aR, aS)
    local As = yM[aR]
    local As_1 = As and As.Value
    if typeof(As_1) == "number" then
        return As_1
    end
    return aS
end
function fns.worker8()
    while not Library.Unloaded do
        task.wait(0.35)
        if y3("AutoBuyWeaponUpgrades") then
            pcall(y9)
        end
        if y3("AutoBuyPetUpgrades") then
            pcall(yn)
        end
    end
end
function fns.fn177()
    local Cv = yO()
    if not Cv then
        return
    end
    xm(CFrame.new(Cv.Position + Vector3.new(0, 5, 0)))
end
function fns.fn191()
    if xI.localAmmo ~= nil then
        xI.localAmmo = math.max(xI.localAmmo - 1, 0)
    end
    xI.shotsSinceRequest = xI.shotsSinceRequest + 1
end
function fns.fn203(ck)
    local Bt
    local Bu = math.huge
    local Bv
    for i, v in ipairs(zc:GetTagged(Nu_4.GROUND_COLLECTIBLE_TAG)) do
        local Bw = v:IsA("Model") and v.Parent
        if Bw then
            local Bw_1 = ze(v)
            if Bw_1 then
                local Magnitude = (Bw_1 - ck).Magnitude
                if Magnitude < Bu then
                    Bu = Magnitude
                    Bt = v
                    Bv = Bw_1
                end
            end
        end
    end
    return Bt, Bv, Bu
end
function fns.onRenderStepped(pp)
    if Library.Unloaded then
        return
    end
    if y3("WalkSpeedEnabled") then
        Nu_19(yj())
    end
    if y3("Noclip") then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in Character:GetDescendants() do
                local KM_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if KM_2 then
                    descendant.CanCollide = false
                    xM[descendant] = true
                end
            end
        end
    elseif next(xM) then
        for k in xM do
            if k.Parent then
                k.CanCollide = true
            end
        end
        table.clear(xM)
    end
    if y3("Fly") then
        local KM_3 = yF()
        local KN = yj()
        local CurrentCamera = yP.CurrentCamera
        if KM_3 and KN and CurrentCamera then
            KN.PlatformStand = true
            local KN_1 = Vector3.zero
            if y1:IsKeyDown(Enum.KeyCode.W) then
                KN_1 = KN_1 + CurrentCamera.CFrame.LookVector
            end
            if y1:IsKeyDown(Enum.KeyCode.S) then
                KN_1 = KN_1 - CurrentCamera.CFrame.LookVector
            end
            if y1:IsKeyDown(Enum.KeyCode.A) then
                KN_1 = KN_1 - CurrentCamera.CFrame.RightVector
            end
            local K3 = if y1:IsKeyDown(Enum.KeyCode.D) then 1 else 0
            if K3 == 1 then
                KN_1 = KN_1 + CurrentCamera.CFrame.RightVector
            end
            if y1:IsKeyDown(Enum.KeyCode.Space) then
                KN_1 = KN_1 + Vector3.yAxis
            end
            if y1:IsKeyDown(Enum.KeyCode.LeftControl) then
                KN_1 = KN_1 - Vector3.yAxis
            end
            KM_3.AssemblyLinearVelocity = Vector3.zero
            if KN_1.Magnitude > 0 then
                KM_3.CFrame = KM_3.CFrame + KN_1.Unit * x0("FlySpeed", 80) * pp
            end
        end
    end
end
function fns.fn241(q)
    local Ac_1
    local Ab_1
    Ab_1, Ac_1 = pcall(q)
    return Ab_1 and Ac_1 or nil
end
function fns.fn260()
    if not Toggles.PredictionVisualizer.Value then
        yH.hideLeads()
    end
end
function fns.fn284()
    return require(zh.Instance.Modules.Main_Game.DuckController.Settings)
end
function fns.fn296(ri)
    local Mw = os.clock()
    if Mw - yH.lastCollectAt >= 0.1 then
        yH.lastCollectAt = Mw
        local Mw_2 = yM.KillAuraRange and yM.KillAuraRange.Value or 250
        local Mx_2 = y3("AutoShootNearest") and not y3("KillAura")
        if Mx_2 then
            Mw_2 = math.huge
        end
        yH.targets = xL(ri.Position, Mw_2, false)
    end
    local Mw_3 = 0
    local Mx_3 = math.min(#yH.targets, yH.LEAD_MARKERS)
    local ME = 1
    while ME <= Mx_3 do
        local part = yH.targets[ME].part
        if part.Parent then
            Mw_3 += 1
            local My_1 = yH.ensureLead(Mw_3)
            local Position = part.Position
            local MA = xI.position(part)
            My_1.actual.Transparency = 0.35
            My_1.actual.CFrame = CFrame.new(Position)
            if (MA - Position).Magnitude < 0.15 then
                My_1.predicted.Transparency = 1
                My_1.line.Transparency = 1
            else
                My_1.predicted.Transparency = 0.2
                My_1.predicted.CFrame = CFrame.new(MA)
                My_1.line.Transparency = 0.35
                yH.drawLine(My_1.line, Position, MA, 0.12)
            end
        end
        ME += 1
    end
    local Mx_6 = Mw_3 + 1
    local My_2 = #yH.leads
    local MJ = Mx_6
    while MJ <= My_2 do
        local Mw_4 = yH.leads[MJ]
        Mw_4.actual.Transparency = 1
        Mw_4.predicted.Transparency = 1
        Mw_4.line.Transparency = 1
        MJ += 1
    end
end
function fns.onInputChanged(oQ)
    local UserInputType = oQ.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        xr = tick()
    end
end
function fns.fn324()
    return require(zh.Instance.Modules.Main_Game.DuckController.Data.Ducks)
end
function fns.worker7()
    while not Library.Unloaded do
        task.wait(0.2)
        local Ng = not yt and y3("AutoGrabDeposit")
        if Ng then
            pcall(xV)
        end
        if y3("AutoSellDucks") then
            pcall(xv)
        end
        if y3("AutoSkipDay") then
            pcall(y5)
        end
        if y3("AutoBuyTrader") then
            pcall(Nu_22.step)
        end
    end
end
function fns.fn345()
    local Et_1 = yM.KillAuraRange and yM.KillAuraRange.Value or 250
    xI.step(Et_1)
end
function fns.fn351()
    return require(zh:WaitForChild("UmePointer", 10).Value)
end
function fns.fn388()
    if not Toggles.Fly.Value then
        local K4 = yj()
        if K4 then
            K4.PlatformStand = false
        end
    end
end
function fns.fn389(eK)
    local Dh = 0
    local Di = y3("AngryDucksFirst") and eK.angry
    if Di then
        Dh = 4
    end
    local Di_1 = y3("BossesFirst") and eK.isBoss
    if Di_1 then
        Dh = Dh + 2
    end
    return Dh
end
function fns.fn392(dR)
    local CB = os.clock()
    local CC = xI.velocitySamples[dR]
    local Position = dR.Position
    local CE = dR.AssemblyLinearVelocity
    if CE.Magnitude < 0.1 and CC then
        local CF_1 = CB - CC.t
        if CF_1 > 0.008 and CF_1 < 0.5 then
            CE = (Position - CC.p) / CF_1
        else
            local CF_2 = CC.v
            local CK = if CF_2 then 1 else 0
            local CI = 1626 * CK + 3484 * (1 - CK)
            local CJ = 3133 * CK + 1130 * (1 - CK)
            if not ((CI * 155 + CJ * 1535 + CI * CJ) % 16777213 == 10155443) then
                CF_2 = Vector3.zero
            end
            CE = CF_2
        end
    end
    xI.velocitySamples[dR] = { p = Position, t = CB, v = CE }
    return CE
end
function fns.fn395()
    local FY = false
    local FZ = {}
    for k, v in pairs(xG("TraderTotems")) do
        local F_ = v and Nu_22.idByLabel[k]
        if F_ then
            FZ[F_] = true
            FY = true
        end
    end
    if not FY then
        return nil
    end
    return FZ
end
function fns.fn408(dl)
    local Cg = xL(dl, math.huge, true)
    if #Cg == 0 then
        return nil
    end
    return Cg[1]
end
function fns.fn413(qg, qh)
    local Lz = qg ~= ""
    local LA = type(qg) == "string" and Lz
    if LA then
        return qg
    end
    return qh
end
function fns.fn426(m2)
    local DiscordGroup = m2:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = yh })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = yh })
end
function fns.fn427(gx)
    local Name = gx.Name
    return Name == xI.FEATHER_WARNING_PART_NAME or Name == xI.FEATHER_FALLING_NAME or Name == xI.LASER_WARNING_PART_NAME
end
function fns.fn450()
    local EC = yF()
    if not EC then
        return false
    elseif Nu_13() then
        return false
    else
        local ED = xs(EC.Position)
        if not ED then
            return false
        end
        local EF = yM.BossOrbitRadius and yM.BossOrbitRadius.Value or 18
        local EG = yM.BossOrbitHeight and yM.BossOrbitHeight.Value or 8
        local EH = yM.BossOrbitSpeed and yM.BossOrbitSpeed.Value or 1.5
        local EH_1 = os.clock() * EH
        local Position = ED.part.Position
        local ED_1 = Vector3.new(math.cos(EH_1) * EF, EG, math.sin(EH_1) * EF)
        local EE_2 = Position + ED_1
        EC.AssemblyLinearVelocity = Vector3.zero
        EC.AssemblyAngularVelocity = Vector3.zero
        EC.CFrame = CFrame.new(EE_2, Position)
        return true
    end
end
function fns.fn467(aY)
    local Ay = yF()
    if not Ay then
        return false
    end
    Ay.AssemblyLinearVelocity = Vector3.zero
    Ay.AssemblyAngularVelocity = Vector3.zero
    Ay.CFrame = aY
    task.wait()
    Ay.CFrame = aY * CFrame.new(1, 0, 0)
    Ay.AssemblyLinearVelocity = Vector3.new(3, 0, 0)
    task.wait(0.05)
    Ay.CFrame = aY
    Ay.AssemblyLinearVelocity = Vector3.zero
    Ay.AssemblyAngularVelocity = Vector3.zero
    return true
end
function fns.fn485()
    local TargetPriority = yM.TargetPriority
    return TargetPriority ~= nil and TargetPriority.Value == "Most Cash"
end
function fns.fn506()
    yE(yu, "Copied Discord invite to clipboard")
end
function fns.fn511(fG)
    local D3 = yF()
    if not D3 then
        return
    end
    local D4 = xI.weaponState()
    if not D4 then
        return
    end
    local D5 = xI.ammo(D4)
    y6(D4, D5)
    if D5 <= 0 or D4.Reloading then
        return
    end
    local D6_1 = os.clock()
    local D7 = Nu_7(D4)
    if D6_1 - xn < D7 then
        return
    end
    local D4_1 = xL(D3.Position, fG, false)
    if #D4_1 == 0 then
        return
    end
    local D8 = math.min(#D4_1, xI.VELOCITY_SAMPLE_LIMIT)
    local Ef = 1
    while Ef <= D8 do
        local Eg = Ef
        xI.trackVelocity(D4_1[Eg].part)
        Ef += 1
    end
    local D8_1 = math.clamp(math.floor((D6_1 - xn) / D7), 1, xI.MAX_SHOTS_PER_TICK)
    local D8_2 = math.min(D8_1, D5, #D4_1)
    local D5_1 = xI.origin(D3)
    local Ek = 1
    while Ek <= D8_2 do
        local D3_1 = ys(D4_1, D5_1)
        if not D3_1 then
            break
        end
        local D6_2 = xI.position(D3_1.part)
        xE(D5_1, D6_2)
        xI.consume()
        xn = os.clock()
        xI.lastOrigin, xI.lastPart, xI.lastAim, xI.lastFiredAt = D5_1, D3_1.part, D6_2, xn
        for i, v in ipairs(D4_1) do
            if v == D3_1 then
                table.remove(D4_1, i)
                break
            end
        end
        Ek += 1
    end
end
function fns.fn542(lF)
    local Ig = {}
    if type(lF) ~= "table" then
        return Ig
    end
    for k, v in pairs(lF) do
        local Ih = type(v) == "table" and type(v.Id) == "string"
        if Ih then
            Ig[v.Id] = true
        end
    end
    return Ig
end
function fns.fn590(kR)
    local RootPart = kR:FindFirstChild("RootPart")
    local Hy = RootPart and RootPart:IsA("BasePart")
    if Hy then
        return RootPart
    end
    local Hx_1 = kR.PrimaryPart or kR:FindFirstChildWhichIsA("BasePart", true)
    return Hx_1
end
function fns.fn591()
    local GV = xG("PetUpgrades")
    local GW = yU()
    local GX = not GW or not GW.Dog or type(GW.Dog.Stats) ~= "table"
    if GX then
        return
    end
    local UUID = GW.Dog.UUID
    local GY = y3("PrioritizeDexterity") and GV.Dexterity
    if GY then
        if xD(GW, UUID, "Dexterity") then
            return
        end
    end
    for k, v in pairs(GV) do
        local GV_1 = v and xD(GW, UUID, k)
        if GV_1 then
            return
        end
    end
end
function fns.fn601(gN)
    local EZ = xs(gN.Position)
    local EZ_1 = EZ and EZ.part.Position or gN.Position
    local EZ_2 = yS()
    local E0 = Vector3.zero
    local E1 = 0
    if EZ_2 then
        for i, child in ipairs(EZ_2:GetChildren()) do
            local EZ_3 = nil
            local E2_1 = child:IsA("BasePart") and Nu_11(child)
            if E2_1 then
                EZ_3 = child.Position
            else
                local E2_2 = child:IsA("Model") and child.Name == xI.FEATHER_FALLING_NAME
                if E2_2 then
                    EZ_3 = child:GetPivot().Position
                end
            end
            if EZ_3 then
                E0 = E0 + EZ_3
                E1 += 1
            end
        end
    end
    local E0_1 = E1 > 0 and E0 / E1 or EZ_1
    local E0_2 = Vector3.new(gN.Position.X - E0_1.X, 0, gN.Position.Z - E0_1.Z)
    if E0_2.Magnitude < 0.05 then
        E0_2 = Vector3.new(gN.Position.X - EZ_1.X, 0, gN.Position.Z - EZ_1.Z)
    end
    if E0_2.Magnitude < 0.05 then
        E0_2 = Vector3.new(1, 0, 0)
    end
    local Unit = E0_2.Unit
    local E0_3 = xI.FEATHER_ESCAPE_BASE + x0("FeatherAvoidMargin", 20)
    local E3 = yM.BossOrbitHeight and yM.BossOrbitHeight.Value or 8
    local E3_1 = Vector3.new(E0_1.X, EZ_1.Y, E0_1.Z) + Unit * E0_3 + Vector3.new(0, E3, 0)
    return CFrame.new(E3_1, EZ_1)
end
function fns.fn603()
    local CrateType = yM.CrateType
    return Nu_1[CrateType and CrateType.Value] or "Dogs_Crate"
end
function fns.fn622()
    local CurrentCamera = yP.CurrentCamera
    if not CurrentCamera then
        return
    end
    yV:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    yV:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    xl = tick()
end
function fns.fn628(p7, p8, p9, qa, qb)
    local Lw = Nu_6.ensure(p7, qa)
    Lw.anchor.CFrame = CFrame.new(p8)
    Lw.label.Text = p9
    Lw.label.TextColor3 = qa
    if qb and qb.Parent then
        if not Lw.highlight then
            local highlight = Instance.new("Highlight")
            highlight.FillTransparency = 0.65
            highlight.OutlineTransparency = 0
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.Parent = Nu_6.folder
            Lw.highlight = highlight
        end
        Lw.highlight.Adornee = qb
        Lw.highlight.FillColor = qa
        Lw.highlight.OutlineColor = qa
    elseif Lw.highlight then
        Lw.highlight:Destroy()
        Lw.highlight = nil
    end
    Nu_6.seen[p7] = true
end
function fns.fn637()
    if yH.range then
        yH.range.Transparency = 1
    end
    if yH.targetLine then
        yH.targetLine.Transparency = 1
    end
    if yH.targetHighlight then
        yH.targetHighlight.Adornee = nil
    end
    yH.hideLeads()
end
function fns.fn638(ak, al)
    if setclipboard then
        setclipboard(ak)
    elseif toclipboard then
        toclipboard(ak)
    end
    Library:Notify(al)
end
function fns.fn663(d7)
    return d7.Position + Vector3.new(0, 1.5, 0)
end
function fns.fn673()
    for k in Nu_6.objects do
        if not Nu_6.seen[k] then
            Nu_6.release(k)
        end
    end
    table.clear(Nu_6.seen)
end
function fns.fn674()
    local FI = xt()
    if not FI then
        return
    end
    local FJ = tonumber(FI.StorageCount) or 0
    if FJ <= 0 then
        return
    end
    pcall(function()
        xS.DuckController.SellDucks()
    end)
end
function fns.fn675()
    local LQ = if not y3("DuckEsp") then 1 else 0
    if LQ == 1 then
        if next(Nu_6.objects) then
            Nu_6.clearAll()
        end
        return
    end
    local LF = xA()
    local LG = yS()
    if LG then
        for i, child in ipairs(LG:GetChildren()) do
            if child:IsA("Model") then
                local LG_1 = string.find(child.Name, "DuckController_Client_", 1, true) == 1
                local LH = string.find(child.Name, "BossController_Client_", 1, true) == 1
                if LG_1 or LH then
                    local LI_1 = Nu_4 and child:FindFirstChild(Nu_4.HITBOX_NAME)
                    local LJ = LI_1
                    if LI_1 then
                        LI_1 = LJ:IsA("BasePart")
                    end
                    if LI_1 then
                        LI_1 = LJ.Position
                    end
                    local LJ_1 = LI_1 or ze(child)
                    if LJ_1 then
                        local LJ_2 = false
                        local LK_1 = LH and "Boss" or "Duck"
                        if LG_1 then
                            local LG_2 = tonumber(string.match(child.Name, "_(%d+)$"))
                            local LL_1 = LG_2 and LF[LG_2]
                            if LL_1 then
                                LJ_2 = LL_1.Angry == true or LL_1.AngryActive == true
                                local displayName = Nu_6.displayName
                                local LM = LL_1.AssetName or LL_1.DuckId
                                LK_1 = displayName(LM, "Duck")
                            end
                        end
                        local LG_4 = Nu_6.COLOR_FLYING
                        if LH then
                            LG_4 = Nu_6.COLOR_BOSS
                            LK_1 = "Boss"
                        elseif LJ_2 then
                            LG_4 = Nu_6.COLOR_ANGRY
                            LK_1 = LK_1 .. " [Angry]"
                        end
                        Nu_6.draw(child.Name, LJ_1, LK_1, LG_4, child)
                    end
                end
            end
        end
    end
    if Nu_4 then
        for i, v in ipairs(zc:GetTagged(Nu_4.GROUND_COLLECTIBLE_TAG)) do
            local LF_1 = v:IsA("Model") and v.Parent
            if LF_1 then
                local LF_2 = ze(v)
                if LF_2 then
                    Nu_6.draw("landed_" .. v.Name, LF_2, "Landed Duck", Nu_6.COLOR_LANDED, v)
                end
            end
        end
    end
    Nu_6.clearUnused()
end
function fns.fn680()
    local Cy_1
    local Cx_1
    Cx_1, Cy_1 = pcall(function()
        return game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()
    end)
    local Cz = not Cx_1 or type(Cy_1) ~= "number"
    if Cz then
        return 0.05
    end
    return math.clamp(Cy_1 / 2000, 0, 0.4)
end
function fns.fn684()
    local ER = yS()
    if not ER then
        return false
    end
    for i, child in ipairs(ER:GetChildren()) do
        local ER_1 = child:IsA("BasePart") and Nu_11(child)
        if ER_1 then
            return true
        end
        local ER_2 = child:IsA("Model") and child.Name == xI.FEATHER_FALLING_NAME
        if ER_2 then
            return true
        end
    end
    return false
end
function fns.fn691()
    for i, v in ipairs(yH.leads) do
        v.actual.Transparency = 1
        v.predicted.Transparency = 1
        v.line.Transparency = 1
    end
end
function fns.fn693()
    local AE = yS() and yS():FindFirstChild(Nu_4.FREEZER_FOLDER_NAME)
    if not AE then
        return nil
    end
    for i, child in ipairs(AE:GetChildren()) do
        local AE_1 = child:IsA("Model") and child:GetAttribute(Nu_4.FREEZER_OWNER_ATTRIBUTE) == LocalPlayer.UserId
        if AE_1 then
            return child
        end
    end
    return nil
end
function fns.fn697(cV, cW, cX)
    local B4_1
    local B3_1
    local BY = yS()
    if not BY then
        return {}
    end
    local BZ = not cX
    if BZ ~= false then
        BZ = xA()
    end
    local B_ = BZ
    local B9 = if B_ then 1 else 0
    local B7 = 3647 * B9 + 3724 * (1 - B9)
    local B8 = 2011 * B9 + 1751 * (1 - B9)
    if not ((B7 * 3308 + B8 * 4023 + B7 * B8) % 16777213 == 10711433) then
        B_ = nil
    end
    local BZ_1 = {}
    local B0 = B_
    for i, child in ipairs(BY:GetChildren()) do
        if child:IsA("Model") then
            local BY_1 = string.find(child.Name, "DuckController_Client_", 1, true) == 1
            local B__1 = string.find(child.Name, "BossController_Client_", 1, true) == 1
            if B__1 or BY_1 and not cX then
                local B1_2 = child:FindFirstChild(Nu_4.HITBOX_NAME)
                local B2_1 = B1_2 and B1_2:IsA("BasePart")
                if B2_1 then
                    local Magnitude = (B1_2.Position - cV).Magnitude
                    if Magnitude <= cW then
                        B3_1, B4_1 = false, 0
                        if BY_1 and B0 then
                            local BY_2 = tonumber(string.match(child.Name, "_(%d+)$"))
                            local B5_1 = BY_2 and B0[BY_2]
                            if B5_1 then
                                B3_1 = B5_1.Angry == true or B5_1.AngryActive == true
                                local B5_3 = B5_1.AssetName or B5_1.DuckId
                                B4_1 = yf(B5_3)
                            end
                        end
                        table.insert(BZ_1, { part = B1_2, dist = Magnitude, isBoss = B__1, angry = B3_1, cash = B4_1 })
                    end
                end
            end
        end
    end
    table.sort(BZ_1, function(di, dj)
        return di.dist < dj.dist
    end)
    return BZ_1
end
function fns.fn700()
    local Fe = yF()
    if not Fe then
        xI.featherEvacUntil = 0
        return false
    end
    local Ff = os.clock()
    local Fg = Nu_24()
    if Fg then
        local Fg_1 = x0("FeatherAvoidHold", 10)
        if xI.featherEvacUntil <= Ff then
            xI.featherEvacUntil = Ff + Fg_1
        else
            xI.featherEvacUntil = math.max(xI.featherEvacUntil, Ff + xI.FEATHER_CLEAR_BUFFER)
        end
    end
    if Ff >= xI.featherEvacUntil then
        return false
    end
    local Ff_1 = xH(Fe)
    Fe.AssemblyLinearVelocity = Vector3.zero
    Fe.AssemblyAngularVelocity = Vector3.zero
    Fe.CFrame = Ff_1
    return true
end
function fns.fn707()
    local MM = y3("KillAuraVisualizer")
    local MN = y3("PredictionVisualizer")
    if not (MM or MN) then
        if yH.active then
            yH.active = false
            yH.clear()
        end
        return
    end
    local MO_1 = yF()
    if not MO_1 then
        yH.clear()
        return
    end
    yH.active = true
    if MM then
        yH.auraStep(MO_1)
    elseif yH.range then
        yH.range.Transparency = 1
        yH.targetLine.Transparency = 1
        yH.targetHighlight.Adornee = nil
    end
    if MN then
        yH.predictionStep(MO_1)
    else
        yH.hideLeads()
    end
end
function fns.fn732(aE)
    local Ag = Toggles[aE]
    return Ag ~= nil and Ag.Value == true
end
function fns.fn736()
    local A0_1
    local A__1
    A__1, A0_1 = pcall(function()
        return xS.Network.Invoke("Upgrades_GetState")
    end)
    local A1 = A__1 and type(A0_1) == "table"
    if A1 then
        return A0_1
    end
    return nil
end
function fns.fn754(ma, mb)
    local IL = tonumber(ma.Price) or 0
    local IM = 0
    local IN = IL
    if type(mb) == "table" then
        local IL_1 = mb[ma.Id]
        if type(IL_1) == "table" then
            local max = math.max
            local IP = tonumber(IL_1.Price) or 0
            IN = max(IN, IP)
            IM = yC[IL_1.Rarity] or 0
        end
    end
    return IN * 10 + IM
end
function fns.fn755()
    local A4_1
    local A3_1
    A3_1, A4_1 = pcall(function()
        return xS.Network.Invoke("WeaponController_GetState")
    end)
    local A5 = A3_1 and type(A4_1) == "table"
    if A5 then
        return A4_1
    end
    return nil
end
function fns.worker4()
    while not Library.Unloaded do
        task.wait(0.05)
        if y3("AutoRetreatLowHP") then
            pcall(xU)
        elseif yt then
            if CFrame2 then
                pcall(xm, CFrame2)
            end
            yt = false
            CFrame2 = nil
        end
    end
end
function fns.onInputBegan()
    xr = tick()
end
function fns.fn805()
    for i, v in ipairs(xw()) do
        local attr = v:GetAttribute("Queue_State")
        local HZ = tonumber(v:GetAttribute("Queue_PlayersIn")) or 0
        if (attr == "Idle" or attr == nil) and HZ <= 0 then
            return v
        end
    end
    local HY_3 = xw()
    return HY_3[1]
end
function fns.fn814(ar, as)
    return string.format('<font color="%s">%s</font>', as, ar)
end
function fns.worker2()
    while not Library.Unloaded do
        task.wait(0.03)
        pcall(yH.step)
    end
end
function fns.fn837(ld)
    local HH
    local HI = -1
    for i, v in ipairs(xw()) do
        local attr = v:GetAttribute("Queue_State")
        local HK = tonumber(v:GetAttribute("Queue_PartySize")) or 0
        local HK_1 = tonumber(v:GetAttribute("Queue_PlayersIn")) or 0
        local HK_2 = v:GetAttribute("Queue_Mode") or "Normal"
        if attr == "Party" and HK > 0 and HK_1 < HK then
            if ld == nil or HK_2 == ld then
                if HK_1 > HI then
                    HH = v
                    HI = HK_1
                end
            end
        end
    end
    return HH
end
function fns.fn860(rf)
    local Mu = yH.leads[rf]
    if Mu then
        return Mu
    end
    local Mu_1 = {
        actual = yH.part("LeadActual", Vector3.one * 1.1, yH.COLOR_ACTUAL, Enum.PartType.Ball),
        predicted = yH.part("LeadPredicted", Vector3.one * 1.4, yH.COLOR_PREDICTED, Enum.PartType.Ball),
        line = yH.part("LeadLine", Vector3.one, yH.COLOR_PREDICTED)
    }
    yH.leads[rf] = Mu_1
    return Mu_1
end
function fns.fn862(b7)
    local Bk = yM[b7]
    local Bk_1 = Bk and Bk.Value
    if typeof(Bk_1) ~= "table" then
        return {}
    end
    return Bk_1
end
function fns.fn870(bX, bY, bZ)
    if not bZ or bZ.Price == nil then
        return false
    end
    local Bf_1 = tonumber(bZ.Level) or 0
    local Bf_2 = tonumber(bZ.MaxLevel)
    local Bh = Nu_10.WEAPONS[bX]
    if Bh and Bh[bY] and Bh[bY].Infinite == true then
        return true
    elseif Bf_2 == nil then
        return true
    else
        return Bf_1 < Bf_2
    end
end
function fns.fn906()
    local F9_1
    local F8_1
    F8_1, F9_1 = pcall(function()
        return xS.Network.Invoke(Nu_22.STATE_FUNCTION)
    end)
    local Ga = F8_1 and type(F9_1) == "table"
    if Ga then
        return F9_1
    end
    return nil
end
function fns.fn939()
    if not Toggles.DuckEsp.Value then
        Nu_6.clearAll()
    end
end
function fns.fn951()
    local AU_1
    local AT_1
    AT_1, AU_1 = pcall(function()
        return xS.Network.Invoke(Nu_4.STATE_FUNCTION)
    end)
    local AV = AT_1 and type(AU_1) == "table"
    if AV then
        return AU_1
    end
    return nil
end
function fns.fn963()
    return require(zh.Instance.Modules.Main_Game.Upgrades.Settings)
end
function fns.fn972()
    for k in Nu_6.objects do
        Nu_6.release(k)
    end
    table.clear(Nu_6.seen)
end
function fns.fn996()
    return require(zh.Instance.Modules.Main_Game.BossController.Settings)
end
function fns.fn998()
    if not yr or not xS then
        return
    end
    local H8_1 = y3("AutoCreateMap")
    local H9_1 = y3("AutoJoinMap")
    local Ia = not H9_1
    local Ib = not H8_1
    if Ib ~= false then
        Ib = Ia
    end
    if Ib then
        return
    end
    local Ia_1 = os.clock()
    if Ia_1 - ye < 1.25 then
        return
    end
    local Ib_1 = yz()
    if H9_1 then
        local H9_2 = zd(Ib_1) or zd(nil)
        if H9_2 then
            ye = Ia_1
            yB(H9_2)
            return
        end
    end
    if H8_1 then
        if yl and yg then
            ye = Ia_1
            yc()
            return
        end
        local H8_3 = yd()
        if H8_3 then
            ye = Ia_1
            yB(H8_3)
            task.wait(0.4)
            if yl and yg then
                yc()
            end
        end
    end
end
function fns.fn1005()
    local Ew = xt()
    local Ex = Ew ~= nil and type(Ew.HeldDuckId) == "string" and Ew.HeldDuckId ~= ""
    return Ex
end
function fns.fn1010()
    local QueueDifficulty = yM.QueueDifficulty
    local Hf = QueueDifficulty and QueueDifficulty.Value
    local Hf_1 = Hf ~= ""
    local Hg = type(Hf) == "string" and Hf_1
    if Hg then
        return Hf
    end
    return "Normal"
end
function fns.fn1019(p0, p1)
    local Lr = Nu_6.objects[p0]
    if Lr then
        return Lr
    end
    local part = Instance.new("Part")
    part.Name = "EspAnchor"
    part.Anchored = true
    part.CanCollide = false
    part.CanQuery = false
    part.CanTouch = false
    part.Transparency = 1
    part.Size = Vector3.new(0.2, 0.2, 0.2)
    part.Parent = Nu_6.folder
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "EspLabel"
    billboardGui.AlwaysOnTop = true
    billboardGui.Size = UDim2.fromOffset(180, 28)
    billboardGui.StudsOffset = Vector3.new(0, 2.4, 0)
    billboardGui.Adornee = part
    billboardGui.Parent = part
    local textLabel = Instance.new("TextLabel")
    textLabel.Name = "Text"
    textLabel.BackgroundTransparency = 1
    textLabel.Size = UDim2.fromScale(1, 1)
    textLabel.Font = Enum.Font.GothamBold
    textLabel.TextSize = 13
    textLabel.TextStrokeTransparency = 0.4
    textLabel.TextColor3 = p1
    textLabel.Parent = billboardGui
    local Lr_1 = { anchor = part, billboard = billboardGui, label = textLabel, highlight = nil }
    Nu_6.objects[p0] = Lr_1
    return Lr_1
end
function fns.fn1020()
    local Fm = yF()
    if not Fm then
        yt = false
        CFrame2 = nil
        return
    end
    local Fn = yi()
    if not Fn then
        return
    end
    local Fo = x0("RetreatBelowPercent", 10) / 100
    local Fp = x0("ReturnAbovePercent", 50) / 100
    if Fp < Fo then
        Fp = Fo
    end
    if not yt then
        if not (Fn <= Fo) then
            return
        end
        CFrame2 = Fm.CFrame
        yt = true
    end
    if Fn >= Fp then
        if CFrame2 then
            xm(CFrame2)
        end
        yt = false
        CFrame2 = nil
        return
    end
    local Fo_1 = CFrame2 and CFrame2.Position or Fm.Position
    xm(CFrame.new(Vector3.new(Fo_1.X, Fo_1.Y + yy, Fo_1.Z)))
end
function fns.fn1035(cd)
    if not cd then
        return nil
    elseif cd:IsA("BasePart") then
        return cd.Position
    elseif cd:IsA("Model") then
        local Bn = cd:FindFirstChild(Nu_4.ROOT_PART_NAME) or cd.PrimaryPart
        local Bs = if Bn then 1 else 0
        local Bq = 3751 * Bs + 1217 * (1 - Bs)
        local Br = 511 * Bs + 3973 * (1 - Bs)
        if not ((Bq * 3513 + Br * 3986 + Bq * Br) % 16777213 == 353657) then
            Bn = cd:FindFirstChildWhichIsA("BasePart", true)
        end
        local Bo = Bn
        if Bn then
            Bn = Bo.Position
        end
        return Bn
    else
        return nil
    end
end
function fns.fn1042()
    local BP = os.clock() - xI.snapshotFetchedAt >= xI.SNAPSHOT_REFRESH and not xI.snapshotFetching
    if BP then
        xI.snapshotFetching = true
        task.spawn(function()
            local BG_1
            local BF_1
            BF_1, BG_1 = pcall(function()
                return xS.Network.Invoke(Nu_4.SNAPSHOT_FUNCTION)
            end)
            local BH = BF_1
            local BF_2 = {}
            if BH then
                BH = type(BG_1) == "table"
            end
            if BH then
                for k, v in pairs(BG_1) do
                    local BG_2 = type(v) == "table" and v.Id ~= nil
                    if BG_2 then
                        BF_2[v.Id] = v
                    end
                end
            end
            xI.snapshotCache = BF_2
            xI.snapshotFetchedAt = os.clock()
            xI.snapshotFetching = false
        end)
    end
    return xI.snapshotCache
end
function fns.fn1045(qS, qT, qU, qV)
    local L7 = qU - qT
    local Magnitude = L7.Magnitude
    if Magnitude < 0.05 then
        qS.Transparency = 1
        return
    end
    qS.Size = Vector3.new(qV, qV, Magnitude)
    qS.CFrame = CFrame.lookAt(qT + L7 * 0.5, qU)
end
function fns.fn1061()
    local Character = LocalPlayer.Character
    local Aq = Character and Character:FindFirstChildOfClass("Humanoid")
    return Aq
end
function fns.fn1062()
    local AA = yF()
    if not AA then
        return
    end
    AA.CFrame = AA.CFrame * CFrame.new(0.75, 0, 0)
    AA.AssemblyLinearVelocity = Vector3.new(2, 0, 0)
    task.wait(0.05)
    AA.AssemblyLinearVelocity = Vector3.zero
end
function fns.fn1067(d9, ea)
    local CS = ea - d9
    if CS.Magnitude < 0.05 then
        return
    end
    xu += 1
    xS.Network.Fire("WeaponController_Shoot", d9, CS.Unit, xu, yP:GetServerTimeNow())
end
function fns.fn1069()
    local Ci = yS()
    if not Ci then
        return false
    end
    for i, child in ipairs(Ci:GetChildren()) do
        local Ci_1 = child:IsA("Model") and string.find(child.Name, "BossController_Client_", 1, true) == 1
        if Ci_1 then
            return true
        end
    end
    return false
end
function fns.fn1077()
    local Jj = hookfunction ~= nil
    local Jk = hookmetamethod ~= nil
    local Jl = getrawmetatable ~= nil
    local Jm = setrawmetatable ~= nil
    local Jn = getgc ~= nil
    local Jo = getgenv ~= nil
    local Jp = getreg ~= nil
    local Jq = getconnections ~= nil
    local Jr = firesignal ~= nil
    local Js = getcallbackvalue ~= nil
    local Jt = setclipboard ~= nil
    local Ju = getcustomasset ~= nil
    local Jv = getnamecallmethod ~= nil
    local Jw = isexecutorclosure ~= nil
    local Jx = fireproximityprompt ~= nil
    local Jy = firetouchinterest ~= nil
    local Jz = WebSocket ~= nil
    local JA = readfile ~= nil
    local JB = writefile ~= nil
    local JD = (request or http_request) ~= nil
    local JF = (debug and debug.getupvalues) ~= nil
    local JH = (debug and debug.setupvalue) ~= nil
    local JI = 0
    local JJ = { Jj, Jk, Jl, Jm, Jn, Jo, Jp, Jq, Jr, Js, Jt, Ju, Jv, Jw, Jx, Jy, Jz, JA, JB, JD, JF, JH }
    for i, v in ipairs(JJ) do
        if v then
            JI += 1
        end
    end
    local Jj_1 = JI / #JJ
    if Jj_1 >= 0.9 then
        return x6("Full Support", xj)
    elseif Jj_1 >= 0.6 then
        return x6("Half Support", zi)
    else
        return x6("Low Support", za)
    end
end
function fns.fn1083(d_)
    local Position = d_.Position
    local CR = if not y3("PredictMovement") then 1 else 0
    if CR == 1 then
        return Position
    end
    local CM = xI.trackVelocity(d_)
    if CM.Magnitude < 0.1 then
        return Position
    end
    local CN = CM * (xI.halfPing() * x0("PredictionStrength", 1))
    local CM_1 = math.max(d_.Size.Magnitude, 8)
    if CN.Magnitude > CM_1 then
        CN = CN.Unit * CM_1
    end
    return Position + CN
end
function fns.worker5()
    while not Library.Unloaded do
        task.wait(0.05)
        if not yt then
            if y3("KillAura") then
                pcall(xQ)
            elseif y3("AutoShootNearest") then
                pcall(xo)
            end
        end
    end
end
function fns.fn1088()
    local C6 = os.clock() - xI.weaponFetchedAt >= xI.WEAPON_REFRESH and not xI.weaponFetching
    if C6 then
        xI.weaponFetching = true
        xI.shotsSinceRequest = 0
        task.spawn(function()
            local C2 = yp()
            if C2 then
                xI.weaponCache = C2
                local C4 = tonumber(C2.Ammo) or 0
                xI.localAmmo = math.max(C4 - xI.shotsSinceRequest, 0)
            end
            xI.weaponFetchedAt = os.clock()
            xI.weaponFetching = false
        end)
    end
    return xI.weaponCache
end
function fns.onUnload()
    Library:Unload()
end
function fns.fn1125(eg, eh)
    if not eg then
        return
    end
    if eg.Reloading then
        return
    end
    local CU = eg.Stats and tonumber(eg.Stats.AmmoCount)
    local CV = CU or 0
    local CV_1 = eh > 0
    local CZ = if CV_1 then 1 else 0
    local CX = 2997 * CZ + 1959 * (1 - CZ)
    local CY = 1042 * CZ + 1400 * (1 - CZ)
    if not ((CX * 459 + CY * 2944 + CX * CY) % 16777213 == 7566145) then
        CV_1 = CV <= 0
    end
    if CV_1 then
        return
    end
    local CU_2 = eg.Stats and tonumber(eg.Stats.ReloadSpeed)
    local CV_2 = CU_2 or 1
    local CV_3 = os.clock()
    if CV_3 - xI.lastReloadAt < math.max(CV_2, 0.35) then
        return
    end
    xI.lastReloadAt = CV_3
    xg += 1
    xS.Network.Fire("WeaponController_Reload", xg)
end
function fns.fn1140(iM, iN)
    if iM.rank ~= iN.rank then
        return iM.rank > iN.rank
    end
    return iM.label < iN.label
end
function fns.fn1173()
    local Fi = yj()
    if not Fi then
        return nil
    end
    local MaxHealth = Fi.MaxHealth
    if not MaxHealth or MaxHealth <= 0 then
        return nil
    end
    return Fi.Health / MaxHealth
end
function fns.fn1200()
    return Nu_24()
end
function fns.fn1203()
    return xS and xS.Dirs and xS.Dirs.UmeWorkspace
end
function fns.fn1206()
    local Queue = yP:FindFirstChild("Queue")
    if not Queue then
        return {}
    end
    local Hp = {}
    for i, child in ipairs(Queue:GetChildren()) do
        local Ho_1 = child:IsA("Model") and child:GetAttribute("Queue_ZoneId") ~= nil
        if Ho_1 then
            table.insert(Hp, child)
        end
    end
    return Hp
end
function fns.worker3()
    while not Library.Unloaded do
        task.wait(2)
        if y3("AntiAfk") then
            xe()
            local M3 = tick() - xr
            local M4 = tick() - xl
            if M3 >= 300 and M4 >= 60 then
                pcall(yT)
            else
                if M3 < 300 and M4 >= 300 then
                    pcall(yT)
                end
            end
        end
    end
end
function fns.fn1243()
    if Toggles.WalkSpeedEnabled.Value then
        Nu_19(yj())
    end
end
function fns.fn1247()
    if not y3("AutoOrbitBoss") then
        return false
    end
    local EM = yF()
    if not EM then
        return false
    end
    return xs(EM.Position) ~= nil
end
function fns.fn1252(bg)
    if not bg then
        return nil
    end
    local AQ = bg:FindFirstChild(Nu_4.FREEZER_INTERACT_PART_NAME, true)
    local AR = AQ and AQ:IsA("BasePart") and AQ:GetAttribute(Nu_4.FREEZER_INTERACT_ATTRIBUTE) == true
    if AR then
        return AQ
    end
    return nil
end
function fns.fn1253(oZ)
    if not oZ then
        return
    end
    local Kx = x0("WalkSpeed", 50)
    if oZ.WalkSpeed == Kx then
        return
    end
    xX = true
    oZ.WalkSpeed = Kx
    xX = false
end
function fns.fn1257()
    local GB = xG("WeaponUpgrades")
    local GC = yU()
    local GD = not GC or not GC.Weapon or type(GC.Weapon.Stats) ~= "table"
    if GD then
        return
    end
    local GD_1 = GC.Dog and GC.Dog.UUID
    local WeaponId = GC.Weapon.WeaponId
    for k, v in pairs(GB) do
        if v then
            local GB_1 = Nu_20[k]
            local GF = GB_1 and GC.Weapon.Stats[GB_1]
            local GG = GB_1 and yv(WeaponId, GB_1, GF) and xp(GF.Price)
            if GG then
                x_("Weapon", GB_1, GD_1)
                return
            end
        end
    end
end
function fns.fn1290(jX, jY, jZ)
    local GP = yX[jZ]
    local GQ = GP and jX.Dog.Stats[GP]
    if not GQ then
        return false
    end
    local GQ_1 = tonumber(GQ.Level) or 0
    local GQ_2 = tonumber(GQ.MaxLevel)
    local GQ_3 = GQ_2 == nil or GQ_1 < GQ_2
    local GS_1 = GQ_3 and xp(GQ.Price)
    if GS_1 then
        x_("Dog", GP, jY)
        return true
    end
    return false
end
function fns.fn1292(pU)
    local Lc = Nu_6.objects[pU]
    if not Lc then
        return
    end
    if Lc.highlight then
        Lc.highlight:Destroy()
    end
    if Lc.anchor then
        Lc.anchor:Destroy()
    end
    Nu_6.objects[pU] = nil
end
function fns.fn1312()
    connection:Disconnect()
    connection2:Disconnect()
    connection4:Disconnect()
    connection5:Disconnect()
    connection6:Disconnect()
    if connection3 then
        connection3:Disconnect()
        connection3 = nil
    end
    for k in xM do
        if k.Parent then
            k.CanCollide = true
        end
    end
    table.clear(xM)
    Nu_6.clearAll()
    Nu_6.folder:Destroy()
    yH.folder:Destroy()
    local MW = yj()
    if MW then
        MW.PlatformStand = false
    end
end
function fns.fn1341()
    return math.clamp(math.floor(x0("QueueMaxPlayers", 1)), 1, 5)
end
function fns.fn1344(q1)
    if not yH.range then
        yH.range = yH.part("AuraRange", Vector3.one, yH.COLOR_RANGE, Enum.PartType.Ball)
        yH.range.Material = Enum.Material.ForceField
        yH.targetLine = yH.part("TargetLine", Vector3.one, yH.COLOR_TARGET)
        yH.targetHighlight = Instance.new("Highlight")
        yH.targetHighlight.FillTransparency = 0.55
        yH.targetHighlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        yH.targetHighlight.FillColor = yH.COLOR_TARGET
        yH.targetHighlight.OutlineColor = yH.COLOR_TARGET
        yH.targetHighlight.Parent = yH.folder
    end
    local Ml_1 = yM.KillAuraRange and yM.KillAuraRange.Value or 250
    local Mm_1 = y3("AutoShootNearest") and not y3("KillAura")
    if Mm_1 then
        Ml_1 = 0
    end
    local Mm_2 = math.clamp(Ml_1 * 2, 1, 2000)
    local range = yH.range
    local Ml_2 = Ml_1 > 0 and 0.9
    local Mt = if Ml_2 then 1 else 0
    local Mr = 559 * Mt + 1146 * (1 - Mt)
    local Ms = 2224 * Mt + 1853 * (1 - Mt)
    if not ((Mr * 604 + Ms * 1879 + Mr * Ms) % 16777213 == 5759748) then
        Ml_2 = 1
    end
    range.Transparency = Ml_2
    yH.range.Size = Vector3.new(Mm_2, Mm_2, Mm_2)
    yH.range.CFrame = CFrame.new(q1.Position)
    local lastPart = xI.lastPart
    local Mm_3 = xI.lastFiredAt and os.clock() - xI.lastFiredAt < 0.35 and lastPart and lastPart.Parent and xI.lastOrigin
    if Mm_3 then
        yH.targetLine.Transparency = 0.25
        local drawLine = yH.drawLine
        local targetLine = yH.targetLine
        local lastOrigin = xI.lastOrigin
        local Mp = xI.lastAim or lastPart.Position
        drawLine(targetLine, lastOrigin, Mp, 0.18)
        yH.targetHighlight.Adornee = lastPart.Parent
    else
        yH.targetLine.Transparency = 1
        yH.targetHighlight.Adornee = nil
    end
end
function fns.fn1347(es)
    local C_ = es.Stats and tonumber(es.Stats.AttackSpeed)
    local C0 = C_ or 0.2
    local C0_1 = math.max(x0("FireRateBoost", 3), 1)
    return math.max(C0 / C0_1, 0.03)
end
function fns.fn1351(kW)
    local HA = y0(kW)
    if not HA then
        return false
    end
    return xm(HA.CFrame + Vector3.new(0, 4, 0))
end
function fns.fn1394(au, av, aw)
    return string.format("<b>%s</b> %s %s", au, x6("-", "#5a6070"), x6(av, aw))
end
function fns.fn1397(eZ, e_, e0)
    local Dp = e_ - eZ
    if Dp.Magnitude < 0.05 then
        return 0
    end
    local Unit = Dp.Unit
    local Dq = 0
    for i, v in ipairs(e0) do
        local Dr = v.part.Position - eZ
        local Ds = Dr:Dot(Unit)
        if Ds > 0 and (Dr - Unit * Ds).Magnitude <= xI.MULTIHIT_LINE_RADIUS then
            Dq = Dq + 1
        end
    end
    return Dq
end
function fns.fn1400()
    return require(zh.Instance.Modules.Main_Game.WanderingTrader.Data.Totems)
end
function fns.fn1407()
    local FL = xY()
    local FM = not FL
    local FQ = if FM then 1 else 0
    local FO = 3526 * FQ + 1743 * (1 - FQ)
    local FP = 1147 * FQ + 1101 * (1 - FQ)
    if not ((FO * 1455 + FP * 2569 + FO * FP) % 16777213 == 12121295) then
        FM = FL.Available ~= true
    end
    if FM then
        return
    end
    local Players = FL.Players
    if type(Players) == "table" then
        for i, v in ipairs(Players) do
            if v.UserId == LocalPlayer.UserId and v.Voted == true then
                return
            end
        end
    end
    xS.Network.Fire("BossController_SkipVoteCast")
end
function fns.worker9()
    while not Library.Unloaded do
        task.wait(0.5)
        local Nj = y3("AutoCreateMap") or y3("AutoJoinMap")
        if Nj then
            pcall(xz)
        end
        local Nn = if y3("AutoBuyWeapons") then 1 else 0
        if Nn == 1 then
            pcall(xB)
        end
        if y3("AutoEquipBestWeapon") then
            pcall(yZ)
        end
        if y3("AutoOpenCrates") then
            pcall(y4)
        end
    end
end
local function fn1432(cP)
    if not (xh and cP) then
        return 0
    end
    local BR_1 = xh[cP]
    if not BR_1 then
        return 0
    end
    local BS = tonumber(BR_1.Coins) or 0
    local BS_1 = (tonumber(BR_1.Health))
    local BX = if BS_1 then 1 else 0
    local BV = 2698 * BX + 2029 * (1 - BX)
    local BW = 1193 * BX + 217 * (1 - BX)
    if not ((BV * 6 + BW * 1365 + BV * BW) % 16777213 == 4863347) then
        BS_1 = 1
    end
    local BR_2 = BS_1
    if BR_2 <= 0 then
        BR_2 = 1
    end
    return BS / BR_2
end
local function fn1444(fa, fb)
    local DI_1
    local DH_1
    local DG_1
    local DF_1
    local DB = yY()
    local DC = y3("SkipBlockedTargets")
    local DD = y3("MultiHitAim")
    local DE
    if DC then
        DE = { LocalPlayer.Character }
        for i, v in ipairs(fa) do
            DE[#DE + 1] = v.part.Parent
        end
    end
    DI_1, DH_1, DF_1, DG_1 = nil, nil, nil, nil
    for i, v in ipairs(fa) do
        local DJ = DC and not ya(fb, v.part.Position, DE)
        if not DJ then
            local DJ_1 = yD(v)
            local DK = DD and i <= xI.MULTIHIT_ANCHOR_LIMIT
            local DL = DK and xi(fb, v.part.Position, fa)
            local DK_1 = DL or 0
            local DL_1 = DB
            if DL_1 then
                DL_1 = v.cash
            end
            local DK_2 = DL_1 or -v.dist
            local DK_3 = DI_1 == nil or DJ_1 > DH_1
            if not DK_3 then
                DK_3 = DJ_1 == DH_1 and DK_1 > DF_1
            end
            if not DK_3 then
                DK_3 = DJ_1 == DH_1 and DK_1 == DF_1 and DK_2 > DG_1
            end
            if DK_3 then
                DI_1, DH_1, DF_1, DG_1 = v, DJ_1, DK_1, DK_2
            end
        end
    end
    return DI_1
end
local function worker()
    while not Library.Unloaded do
        task.wait(0.15)
        pcall(Nu_6.step)
    end
end
local function fn1473(eQ, eR, eS)
    local Dk = eR - eQ
    local Magnitude = Dk.Magnitude
    if Magnitude < 0.05 then
        return true
    end
    local Dm = RaycastParams.new()
    Dm.FilterType = Enum.RaycastFilterType.Exclude
    Dm.FilterDescendantsInstances = eS
    Dm.IgnoreWater = true
    local Dn = yP:Raycast(eQ, Dk, Dm)
    if not Dn then
        return true
    end
    return Dn.Distance >= Magnitude - 2
end
local function fn1478()
    return require(zh.Instance.Modules.Main_Game.WanderingTrader.Settings)
end
local function fn1483()
    local A8_1
    local A7_1
    A7_1, A8_1 = pcall(function()
        return xS.Network.Invoke("BossController_GetSkipVoteState")
    end)
    local A9 = A7_1 and type(A8_1) == "table"
    if A9 then
        return A8_1
    end
    return nil
end
local function fn1514(eC)
    if xI.localAmmo ~= nil then
        return xI.localAmmo
    end
    local Db = tonumber(eC.Ammo) or 0
    return Db
end
xe = nil
xg = nil
xh = nil
xi = nil
xj = nil
Nu_14 = nil
xl = nil
xm = nil
xn = nil
xo = nil
xp = nil
xr = nil
xs = nil
xt = nil
xu = nil
xv = nil
xw = nil
Nu_10 = nil
xz = nil
xA = nil
xB = nil
connection5 = nil
xD = nil
xE = nil
xG = nil
xH = nil
xI = nil
Nu_19 = nil
Nu_4 = nil
xL = nil
xM = nil
xN = nil
xP = nil
xQ = nil
connection3 = nil
xS = nil
connection6 = nil
xU = nil
xV = nil
xX = nil
xY = nil
local xc, xd, xf, xq, xy, xF, xO, xW, xZ
x_ = nil
x0 = nil
connection2 = nil
connection4 = nil
x6 = nil
Nu_22 = nil
Nu_7 = nil
ya = nil
yc = nil
yd = nil
ye = nil
yf = nil
yg = nil
yh = nil
yi = nil
yj = nil
yl = nil
CFrame2 = nil
yn = nil
connection = nil
yp = nil
yr = nil
ys = nil
yt = nil
yu = nil
yv = nil
Nu_24 = nil
Nu_9 = nil
yy = nil
yz = nil
yB = nil
yC = nil
yD = nil
yE = nil
yF = nil
yH = nil
LocalPlayer = nil
Nu_1 = nil
yM = nil
local x2, x4, x5, x9, yb, yk, yq, yA, yG, yI, yL
yO = nil
yP = nil
Toggles = nil
yS = nil
yT = nil
yU = nil
yV = nil
Nu_11 = nil
yX = nil
yY = nil
yZ = nil
y_ = nil
y0 = nil
y1 = nil
Library = nil
y3 = nil
y4 = nil
y5 = nil
y6 = nil
Nu_20 = nil
Nu_6 = nil
y9 = nil
za = nil
zb = nil
zc = nil
zd = nil
ze = nil
zg = nil
zh = nil
zi = nil
zj = nil
Nu_13 = nil
local yN, yR, zf
yN = nil
yR = nil
zf = nil
xc, zh, zc, Nu_58, y1, yV, yR, yP, LocalPlayer, yA, yu, yq, yk, xS, Nu_4, Nu_10, xh, Nu_46, Nu_49, Nu_20, Nu_2, yX, Nu_17, Nu_29, Nu_1, yC, Nu_55, Nu_37 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Nu_64 = 109
repeat
    Nu_40 = (Nu_64 * 9 + 13) % 14 + 1
    if Nu_40 <= 7 then
        if Nu_40 <= 4 then
            if Nu_40 <= 2 then
                if Nu_40 <= 1 then
                    if (Nu_64 * 2 + 5) * 13 % 3 == ((Nu_64 * 2 + 5) * 13 + 6) % 3 then
                        xc = game:GetService("Players")
                    else
                        yR = game:GetService("Players")
                    end
                    Nu_64 = (Nu_64 + 39) % 112
                else
                    Nu_32 = { "wygbq", "wwkc", "jgnybtezif", "owoe", "ujze", "penpqqwtmlm", "gwmhbrtsjba", "aqvtjt" }
                    local Qd = Nu_64
                    Nu_23 = Nu_32[Qd % 8 + 1]
                    if Nu_23:len() <= Nu_23:gsub("(.)", "%1%1", Qd % 3 % 2 + 1):len() then
                        zh = game:GetService("ReplicatedStorage")
                    else
                        Nu_2 = game:GetService("ReplicatedStorage")
                    end
                    Nu_64 = (Nu_64 + 67) % 112
                end
            elseif Nu_40 <= 3 then
                if Nu_64 * 128329291 + 10 + 3 >= Nu_64 * 128329291 + 10 + 3 + 5 then
                    Nu_58 = game:GetService("CollectionService")
                    zc = game:GetService("RunService")
                else
                    zc = game:GetService("CollectionService")
                    Nu_58 = game:GetService("RunService")
                end
                Nu_64 = (Nu_64 + 39) % 112
            else
                Nu_32 = {
                    "ywgkyxfshbm",
                    "dwddfetxe",
                    "bbpvpizu",
                    "zgjw",
                    "jvecouoocmb",
                    "nhmwswwo",
                    "dowq",
                    "evx",
                    "kxqe",
                    "oovmt",
                    "ibittqxkauq",
                    "izkz",
                    "clyton",
                    "bbpvxo",
                    "jxt"
                }
                if Nu_32[(Nu_64 * 85 + 69) % 15 + 1] < Nu_32[(Nu_64 * 85 + 69) % 15 + 1] then
                    yV = game:GetService("UserInputService")
                    xc = game:GetService("VirtualUser")
                    yP = game:GetService("TeleportService")
                    y1 = game:GetService("Workspace")
                    yR = LocalPlayer.LocalPlayer
                else
                    y1 = game:GetService("UserInputService")
                    yV = game:GetService("VirtualUser")
                    yR = game:GetService("TeleportService")
                    yP = game:GetService("Workspace")
                    LocalPlayer = xc.LocalPlayer
                end
                Nu_64 = (Nu_64 + 53) % 112
            end
        elseif Nu_40 <= 6 then
            if Nu_40 <= 5 then
                if Nu_64 * 14945725 + 6 + 2 >= Nu_64 * 14945725 + 6 + 2 + 1 then
                    yk = "Catch 1 Billion Ducks"
                else
                    yA = "Catch 1 Billion Ducks"
                end
                Nu_64 = (Nu_64 + 67) % 112
            else
                Nu_32 = (vector.create((Nu_64 * 3 + 5) % 11 + 1, (Nu_64 * 3 + 6) % 13 + 1, (Nu_64 * 11 + 14) % 17 + 1))
                Nu_23 = (vector.create((Nu_64 * 2 + 2) % 11 + 1, (Nu_64 * 8 + 9) % 13 + 1, (Nu_64 * 3 + 1) % 17 + 1))
                local P7 = vector.cross(Nu_32, Nu_23)
                local P8 = vector.dot(Nu_32, Nu_23)
                if vector.dot(P7, P7) + P8 * P8 == vector.dot(Nu_32, Nu_32) * vector.dot(Nu_23, Nu_23) then
                    yu = "https://discord.gg/synapsex"
                else
                    zc = "https://discord.gg/synapsex"
                end
                Nu_64 = (Nu_64 + 109) % 112
            end
        else
            local Pn = bit32.rrotate(bit32.bxor(bit32.lrotate(Nu_64, 12), string.byte(tostring(Nu_58))), 3)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Pn, 1339598103), 3141145271), (bit32.bxor(bit32.band(Pn, 2955369192), 2531728142))), 3141145271), 2531728142) == Pn then
                yq = "https://rscripts.net/@Ouroboros"
                yk = "https://ouroboros-hub-rbx.web.app/"
            else
                yk = "https://rscripts.net/@Ouroboros"
                yq = "https://ouroboros-hub-rbx.web.app/"
            end
            Nu_64 = (Nu_64 + 95) % 112
        end
    elseif Nu_40 <= 11 then
        if Nu_40 <= 9 then
            if Nu_40 <= 8 then
                if (yP and not yk or (not yP or zh)) and (not yk or zh or yX and not zh) or not ((yP and not yk or (not yP or zh)) and (not yk or zh or yX and not zh)) then
                    Nu_37 = fns.fn241
                else
                    Nu_49 = fns.fn241
                end
                Nu_64 = (Nu_64 + 53) % 112
            else
                Nu_32 = (vector.create((Nu_64 * 5 + 3) % 11 + 1, (Nu_64 * 8 + 3) % 13 + 1, (Nu_64 * 8 + 7) % 17 + 1))
                local Qt = vector.floor(Nu_32) + vector.ceil(Nu_32 * -1)
                if vector.dot(Qt, Qt) == 3 then
                    Nu_37 = Nu_10(fns.fn351)
                    xS = Nu_10(fns.fn284)
                    Nu_4 = Nu_10(fns.fn963)
                else
                    xS = Nu_37(fns.fn351)
                    Nu_4 = Nu_37(fns.fn284)
                    Nu_10 = Nu_37(fns.fn963)
                end
                Nu_64 = (Nu_64 + 67) % 112
            end
        elseif Nu_40 <= 10 then
            Nu_32 = (vector.create((Nu_64 * 3 + 5) % 11 + 1, (Nu_64 * 7 + 13) % 13 + 1, (Nu_64 * 1 + 2) % 17 + 1))
            Nu_23 = (vector.create((Nu_64 * 1 + 2) % 11 + 1, (Nu_64 * 11 + 9) % 13 + 1, (Nu_64 * 12 + 11) % 17 + 1))
            Nu_8 = (vector.create((Nu_64 * 3 + 2) % 11 + 1, (Nu_64 * 8 + 9) % 13 + 1, (Nu_64 * 8 + 8) % 17 + 1))
            Nu_61 = (vector.create((Nu_64 * 5 + 1) % 5 + 1, (Nu_64 * 5 + 1) % 7 + 1, (Nu_64 * 5 + 7) % 9 + 1))
            if vector.dot(vector.cross(Nu_32, (vector.cross(Nu_23, Nu_8))), Nu_61) == vector.dot(Nu_23 * vector.dot(Nu_32, Nu_8) - Nu_8 * vector.dot(Nu_32, Nu_23), Nu_61) + 3 then
                Nu_37 = xh(fns.fn324)
            else
                xh = Nu_37(fns.fn324)
            end
            Nu_64 = (Nu_64 + 25) % 112
        else
            Nu_32 = (vector.create((Nu_64 * 6 + 5) % 11 + 1, (Nu_64 * 6 + 12) % 13 + 1, (Nu_64 * 13 + 11) % 17 + 1))
            Nu_23 = (vector.create((Nu_64 * 1 + 7) % 11 + 1, (Nu_64 * 5 + 5) % 13 + 1, (Nu_64 * 5 + 13) % 17 + 1))
            Nu_8 = (vector.create((Nu_64 * 2 + 2) % 5 + 1, (Nu_64 * 4 + 5) % 7 + 1, (Nu_64 * 1 + 3) % 9 + 1))
            if math.abs((vector.angle(Nu_32, Nu_23, Nu_8))) - math.abs((vector.angle(Nu_23, Nu_32, Nu_8))) == 0 then
                Nu_46 = Nu_37(fns.fn996)
            else
                Nu_37 = Nu_46(fns.fn996)
            end
            Nu_64 = (Nu_64 + 67) % 112
        end
    elseif Nu_40 <= 13 then
        if Nu_40 <= 12 then
            Nu_40 = {
                "iczzrtkcabx",
                "cmdtxy",
                "mfnk",
                "pjbujojvfzg",
                "zlnmvu",
                "mjnfn",
                "syfwgrna",
                "ahbridadgroo",
                "atd",
                "sqjzfsf",
                "ookewvwnold",
                "pbfkgepq",
                "mmxyxmweg",
                "llnnqxg",
                "zerrfma",
                "xyvtor"
            }
            if Nu_40[(Nu_64 * 47 + 69) % 16 + 1] <= Nu_40[(Nu_64 * 47 + 69) % 16 + 1] then
                Nu_49 = { "Damage", "Reload Speed", "Ammo Count" }
                Nu_20 = { Damage = "Damage", ["Reload Speed"] = "ReloadSpeed", ["Ammo Count"] = "AmmoCount" }
                Nu_2 = { "Speed", "Strength", "Dexterity" }
                yX = { Speed = "Speed", Strength = "Strength", Dexterity = "Dexterity" }
                Nu_17 = { "Normal", "Hardcore" }
            else
                Nu_20 = { "Damage", "Reload Speed", "Ammo Count" }
                Nu_49 = { ["Reload Speed"] = "ReloadSpeed", Damage = "Damage", ["Ammo Count"] = "AmmoCount" }
                Nu_17 = { "Dexterity", "Speed", "Strength" }
                Nu_2 = { Speed = "Speed", Strength = "Strength", Dexterity = "Dexterity" }
                yX = { "Normal", "Hardcore" }
            end
            Nu_64 = (Nu_64 + 39) % 112
        else
            if Nu_64 * 9761339 + 7 + 2 <= Nu_64 * 9761339 + 7 + 2 + 1 then
                Nu_29 = { "Dog Crate", "Basic Military Crate" }
                Nu_1 = { ["Dog Crate"] = "Dogs_Crate", ["Basic Military Crate"] = "Basic_Military_Crate" }
                yC = { Common = 1, Uncommon = 2, Rare = 3, Epic = 4, Legendary = 5, Mythic = 6, Secret = 7, Premium = 8 }
            else
                Nu_1 = { "Dog Crate", "Basic Military Crate" }
                yC = { ["Dog Crate"] = "Dogs_Crate", ["Basic Military Crate"] = "Basic_Military_Crate" }
                Nu_29 = { Premium = 8, Legendary = 5, Rare = 3, Mythic = 6, Epic = 4, Common = 1, Secret = 7, Uncommon = 2 }
            end
            Nu_64 = (Nu_64 + 109) % 112
        end
    else
        if Nu_64 * 80641707 + 7 + 7 >= Nu_64 * 80641707 + 7 + 7 + 2 then
            zh = (Nu_55:FindFirstChild("Instance"))
        else
            Nu_55 = (zh:FindFirstChild("Instance"))
        end
        Nu_64 = (Nu_64 + 53) % 112
    end
until (Nu_64 * 97 + 17) % 112 == 48
if Nu_55 then
    Nu_64 = 2
    repeat
        if (Nu_64 * 2 + 5) * 4 % 3 == ((Nu_64 * 2 + 5) * 4 + 3) % 3 then
            Nu_55 = zh.Instance:FindFirstChild("Modules")
        else
            zh = Nu_55.Instance:FindFirstChild("Modules")
        end
        Nu_64 = (Nu_64 + 1) % 4
    until (Nu_64 * 1 + 1) % 4 == 0
end
if Nu_55 then
    Nu_64 = 3
    repeat
        Nu_40 = (vector.create((Nu_64 * 3 + 4) % 11 + 1, (Nu_64 * 2 + 8) % 13 + 1, (Nu_64 * 7 + 1) % 17 + 1))
        Nu_32 = (vector.create((Nu_64 * 6 + 4) % 11 + 1, (Nu_64 * 9 + 4) % 13 + 1, (Nu_64 * 4 + 16) % 17 + 1))
        local PV = vector.cross(Nu_40, Nu_32)
        local PW = vector.dot(Nu_40, Nu_32)
        if vector.dot(PV, PV) + PW * PW == vector.dot(Nu_40, Nu_40) * vector.dot(Nu_32, Nu_32) then
            Nu_55 = zh.Instance.Modules:FindFirstChild("Main_Lobby") ~= nil
        else
            zh = Nu_55.Instance.Modules:FindFirstChild("Main_Lobby") ~= nil
        end
        Nu_64 = (Nu_64 + 1) % 4
    until (Nu_64 * 1 + 2) % 4 == 2
end
yr, yl, yg, ye, x9, x4, xZ = nil, nil, nil, nil, nil, nil, nil
yr = Nu_55
yl = nil
yg = false
ye = 0
x9 = 0
x4 = 0
xZ = 0
Nu_32 = xS and xS.Network
if Nu_32 then
    pcall(function()
        xS.Network.Fired("Queue_OpenPartyQueue", function(V, W)
            yl = V
            yg = W ~= false
        end)
        xS.Network.Fired("Queue_ClosePartyQueue", function()
            yl = nil
            yg = false
        end)
    end)
end
Library, Toggles, yM, xj, xd, zi, zf, za, xI, xu, xn, xg, yE, yh, x6, xO, y3, yF, yj, x0, xm, zb, yS, yG, xW, xt, yU, yp, xY, xp, yv, xG, ze, yL, xA, yf, xL, xs, zg, yO, xP, xE, y6, Nu_7, yY, yD, ya, xi, ys, xQ, xo, Nu_13, y_, xF = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
Nu_32 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
Nu_40 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
yM = Library.Options
yE = fns.fn638
yh = fns.fn506
x6 = fns.fn814
xO = fns.fn1394
xj = "#7fd47f"
xd = "#6ec1ff"
zi = "#e8a34d"
zf = "#8b93a3"
za = "#e05a5a"
y3 = fns.fn732
yF = fns.fn103
yj = fns.fn1061
x0 = fns.fn142
xm = fns.fn467
zb = fns.fn1062
yS = fns.fn1203
yG = fns.fn693
xW = fns.fn1252
xt = fns.fn951
yU = fns.fn736
yp = fns.fn755
xY = fn1483
xp = function(bL)
    local Bc_1, Bc_2
    local Bb_1, Bb_2
    if bL == nil then
        return false
    end
    Bb_1, Bc_1 = pcall(function()
        return xS.Currency.HasEnough("Cash", tostring(bL))
    end)
    if Bb_1 then
        return Bc_1 == true
    end
    Bb_2, Bc_2 = pcall(function()
        return xS.Currency.Get("Cash")
    end)
    if not Bb_2 then
        return false
    end
    local Bb_3 = tonumber(Bc_2) or 0
    local Bb_4 = tonumber(bL) or 0
    return Bb_3 >= Bb_4
end
yv = fns.fn870
xG = fns.fn862
ze = fns.fn1035
yL = fns.fn203
xI = {
    SNAPSHOT_REFRESH = 0.5,
    WEAPON_REFRESH = 0.25,
    MAX_SHOTS_PER_TICK = 6,
    MULTIHIT_LINE_RADIUS = 6,
    MULTIHIT_ANCHOR_LIMIT = 40,
    VELOCITY_SAMPLE_LIMIT = 15,
    snapshotCache = {},
    snapshotFetchedAt = -math.huge,
    snapshotFetching = false,
    weaponCache = nil,
    weaponFetchedAt = -math.huge,
    weaponFetching = false,
    localAmmo = nil,
    shotsSinceRequest = 0,
    lastReloadAt = -math.huge,
    velocitySamples = setmetatable({}, { __mode = "k" })
}
xA = fns.fn1042
yf = fn1432
xL = fns.fn697
xs = fns.fn408
zg = fns.fn1069
yO = function()
    local Cq
    Cq = nil
    local Cr = yS() and yS():FindFirstChild("GameMap")
    local Cr_1
    local Cs = Cr
    local Cs_2
    if Cr then
        Cr = Cs:FindFirstChild("SelectedMap")
    end
    local Cs_1 = Cr
    if Cr then
        Cr = Cs_1:FindFirstChild("truck", true)
    end
    Cq = Cr
    if not Cq then
        return nil
    end
    Cr_1, Cs_2 = pcall(function()
        return Cq:GetPivot()
    end)
    return Cr_1 and Cs_2 or nil
end
xP = fns.fn177
xu = 0
xn = 0
xg = 0
xI.halfPing = fns.fn680
xI.trackVelocity = fns.fn392
xI.position = fns.fn1083
xI.origin = fns.fn663
xE = fns.fn1067
y6 = fns.fn1125
Nu_7 = fns.fn1347
xI.weaponState = fns.fn1088
xI.ammo = fn1514
xI.consume = fns.fn191
yY = fns.fn485
yD = fns.fn389
ya = fn1473
xi = fns.fn1397
ys = fn1444
xI.step = fns.fn511
xQ = fns.fn345
xo = fns.fn36
Nu_13 = fns.fn1005
y_ = fns.fn450
xF = fns.fn1247
xI.FEATHER_WARNING_PART_NAME = "BossController_FeatherWarning"
xI.FEATHER_FALLING_NAME = "BossController_FallingFeather"
xI.LASER_WARNING_PART_NAME = "BossController_LaserWarning"
Nu_64 = Nu_46 and Nu_46.FEATHER_WARNING_PLAYER_OFFSET_MAX
Nu_55 = Nu_64 or 100
Nu_64 = Nu_46 and Nu_46.FEATHER_WARNING_FINAL_DIAMETER
Nu_23 = Nu_64 or 36
Nu_64 = 3
repeat
    Nu_8 = {
        "cstlfhqggt",
        "taiunmiuoxq",
        "zanbykqeht",
        "slqxjoyc",
        "bqo",
        "ipxnhogc",
        "ruafxpumiei",
        "olxk",
        "kkqygtitqm"
    }
    local QI = Nu_64
    Nu_61 = Nu_8[QI % 9 + 1]
    if Nu_61:len() >= Nu_61:gsub("(.)", "%1%1", QI % 3 % 2 + 1):len() then
        xI.FEATHER_ESCAPE_BASE = Nu_55 + Nu_23 * 0.5 + 40
    else
        xI.FEATHER_ESCAPE_BASE = Nu_55 + Nu_23 * 0.5 + 40
    end
    Nu_64 = (Nu_64 + 0) % 4
until (Nu_64 * 3 + 3) % 4 == 0
Nu_64 = Nu_46 and Nu_46.FEATHER_FALL_DELAY_MAX
Nu_55 = Nu_64 or 1.5
Nu_64 = Nu_46 and Nu_46.FEATHER_FALL_DURATION_MAX
Nu_46 = Nu_64 or 0.8
yy, yt, CFrame2, Nu_22, Nu_11, Nu_24, xN, xH, Nu_14, yi, xU, yN, xV, xv, y5 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
xI.FEATHER_CLEAR_BUFFER = Nu_55 + Nu_46 + 0.5
xI.featherEvacUntil = 0
Nu_11 = fns.fn427
Nu_24 = fns.fn684
xN = fns.fn1200
xH = fns.fn601
Nu_14 = fns.fn700
yy = 900
yt = false
CFrame2 = nil
yi = fns.fn1173
xU = fns.fn1020
yN = fns.fn76
xV = function()
    local Fz, FA
    local FB = yF()
    if not FB then
        return
    end
    local FC = xt()
    local FC_4
    if not FC then
        return
    end
    local FD = type(FC.HeldDuckId) == "string" and FC.HeldDuckId ~= ""
    if FD then
        local FC_2 = yG()
        FA = xW(FC_2)
        if not FA then
            return
        end
        yN(function()
            return xS.Network.Invoke(Nu_4.DEPOSIT_FUNCTION, FA)
        end, FA.CFrame + Vector3.new(0, 3, 0))
        return
    end
    if xF() then
        return
    end
    local FC_3 = (y3("AutoAvoidFeathers"))
    if FC_3 then
        local FD_1 = xI.featherEvacUntil > os.clock() or xN()
        FC_3 = FD_1
    end
    if FC_3 then
        return
    end
    Fz, FC_4 = yL(FB.Position)
    if not (Fz and FC_4) then
        return
    end
    yN(function()
        return xS.Network.Invoke(Nu_4.PICKUP_FUNCTION, Fz)
    end, CFrame.new(FC_4 + Vector3.new(0, 3, 0)))
end
xv = fns.fn674
if ((xU or yN or (yi or xU)) and (not xv and not yN or xU and not xU) and (not yi and not xU or (not yi or not xv or (xv or not Nu_14))) or (yN and not yi and (not xv and not xU) or (yN or xU) and (not xU and yN))) and not ((xU or yN or (yi or xU)) and (not xv and not yN or xU and not xU) and (not yi and not xU or (not yi or not xv or (xv or not Nu_14))) or (yN and not yi and (not xv and not xU) or (yN or xU) and (not xU and yN))) then
    xv = fns.fn1407
else
    y5 = fns.fn1407
end
Nu_22 = {
    SETTINGS = Nu_37(fn1478),
    TOTEMS = Nu_37(fns.fn1400),
    DAYS = { 5, 10, 15, 20, 30, 40, 50 },
    labels = {},
    idByLabel = {},
    lastBuyAt = 0
}
Nu_64 = Nu_22.SETTINGS and Nu_22.SETTINGS.STATE_FUNCTION
Nu_55 = Nu_64 or "WanderingTrader_GetState"
Nu_22.STATE_FUNCTION = Nu_55
Nu_64 = Nu_22.SETTINGS and Nu_22.SETTINGS.PURCHASE_FUNCTION
Nu_55 = Nu_64 or "WanderingTrader_Purchase"
Nu_46 = nil
Nu_64 = 0
repeat
    local P9 = bit32.rrotate(bit32.bxor(bit32.lrotate(Nu_64, 15), string.byte(tostring(Nu_46))), 28)
    if bit32.bxor(bit32.lrotate(bit32.bxor(P9, 2764153730), 16), 2743248065) == bit32.lrotate(P9, 16) then
        Nu_22.PURCHASE_FUNCTION = Nu_55
        Nu_46 = Nu_22.SETTINGS
    else
        Nu_22.PURCHASE_FUNCTION = Nu_22
        Nu_55 = Nu_46.SETTINGS
    end
    Nu_64 = (Nu_64 + 3) % 4
until (Nu_64 * 3 + 1) % 4 == 2
if Nu_46 then
    Nu_64 = 5
    repeat
        Nu_55 = (vector.create((Nu_64 * 5 + 9) % 11 + 1, (Nu_64 * 6 + 1) % 13 + 1, (Nu_64 * 8 + 9) % 17 + 1))
        Nu_37 = (vector.create((Nu_64 * 1 + 5) % 11 + 1, (Nu_64 * 3 + 1) % 13 + 1, (Nu_64 * 12 + 1) % 17 + 1))
        local Qf = vector.cross(Nu_55, Nu_37)
        local Qg = vector.dot(Nu_55, Nu_37)
        if vector.dot(Qf, Qf) + Qg * Qg == vector.dot(Nu_55, Nu_55) * vector.dot(Nu_37, Nu_37) then
            Nu_46 = type(Nu_22.SETTINGS.TRADER_DAYS) == "table"
        else
            Nu_22 = type(Nu_46.SETTINGS.TRADER_DAYS) == "table"
        end
        Nu_64 = (Nu_64 + 1) % 8
    until (Nu_64 * 5 + 6) % 8 == 4
end
if Nu_46 then
    Nu_64 = 1
    repeat
        Nu_55 = {
            "mckxmbba",
            "wgmuhg",
            "car",
            "idhkxynlgii",
            "akzenciz",
            "obbswmnod",
            "mzmssbhl",
            "mexceq",
            "slktp",
            "mhifmxri",
            "ueq",
            "kaipxwsozg",
            "pawqjtffly",
            "vnytcnf"
        }
        if Nu_55[(Nu_64 * 29 + 102) % 14 + 1] < Nu_55[(Nu_64 * 29 + 102) % 14 + 1] then
            Nu_22.DAYS = Nu_22.SETTINGS.TRADER_DAYS
        else
            Nu_22.DAYS = Nu_22.SETTINGS.TRADER_DAYS
        end
        Nu_64 = (Nu_64 + 3) % 4
    until (Nu_64 * 1 + 0) % 4 == 0
end
Nu_55 = {}
if type(Nu_22.TOTEMS) == "table" then
    for k, v in pairs(Nu_22.TOTEMS) do
        if type(v) == "table" then
            Nu_64 = yC[v.Rarity] or 0
            Nu_46 = Nu_64
            Nu_64 = string.format
            Nu_37 = v.Name or k
            Nu_23 = v.Price or "?"
            Nu_8 = Nu_64("%s (%s)", Nu_37, tostring(Nu_23))
            Nu_64 = table.insert
            Nu_37 = v.Id
            local Nu_25 = if Nu_37 then 1 else 0
            local Nu_42 = 182 * Nu_25 + 3651 * (1 - Nu_25)
            local Nu_33 = 2184 * Nu_25 + 2959 * (1 - Nu_25)
            if not ((Nu_42 * 3469 + Nu_33 * 778 + Nu_42 * Nu_33) % 16777213 == 2727998) then
                Nu_37 = k
            end
            Nu_64(Nu_55, { label = Nu_8, id = Nu_37, rank = Nu_46 })
        end
    end
end
table.sort(Nu_55, fns.fn1140)
for i, v in ipairs(Nu_55) do
    table.insert(Nu_22.labels, v.label)
    Nu_22.idByLabel[v.label] = v.id
end
Nu_64, xy, Nu_37, Nu_46, Nu_61, Nu_8, x_, y9, xD, yn, xf, yz, yb, x2, xw, y0, yB, yc, zd, yd, xz, x5, xB, xq, yZ, y4, Nu_23 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Nu_55 = 29
repeat
    Nu_52 = (Nu_55 * 3 + 2) % 10 + 1
    if Nu_52 <= 5 then
        if Nu_52 <= 3 then
            if Nu_52 <= 2 then
                if Nu_52 <= 1 then
                    Nu_43 = {
                        "oewc",
                        "lxbrn",
                        "wzbfa",
                        "pfarkbtwhe",
                        "cshobjqoy",
                        "nudvcwr",
                        "fjqisdriaj",
                        "hzmmkic",
                        "vpcpqqx",
                        "zdu",
                        "ipzmztaykq"
                    }
                    local PT = Nu_55
                    Nu_34 = Nu_43[PT % 11 + 1]
                    if Nu_34:len() <= Nu_34:gsub("(.)", "%1%1", PT % 3 % 2 + 1):len() then
                        xD = fns.fn1290
                        yn = fns.fn591
                        xf = function(km)
                            local G9_4, G9_5
                            local G8_4, G8_5
                            if km == nil then
                                return false
                            end
                            G8_4, G9_4 = pcall(function()
                                return xS.Currency.HasEnough("Feathers", tostring(km))
                            end)
                            if G8_4 then
                                return G9_4 == true
                            end
                            G8_5, G9_5 = pcall(function()
                                return xS.Currency.Get("Feathers")
                            end)
                            if not G8_5 then
                                return false
                            end
                            local G8_6 = tonumber(G9_5) or 0
                            local G9_6 = tonumber(km) or 0
                            return G8_6 >= G9_6
                        end
                    else
                        yn = fns.fn1290
                        xf = fns.fn591
                        xD = function(km)
                            local G9_1, G9_2
                            local G8_1, G8_2
                            if km == nil then
                                return false
                            end
                            G8_1, G9_1 = pcall(function()
                                return xS.Currency.HasEnough("Feathers", tostring(km))
                            end)
                            if G8_1 then
                                return G9_1 == true
                            end
                            G8_2, G9_2 = pcall(function()
                                return xS.Currency.Get("Feathers")
                            end)
                            if not G8_2 then
                                return false
                            end
                            local G8_3 = tonumber(G9_2) or 0
                            local G9_3 = tonumber(km) or 0
                            return G8_3 >= G9_3
                        end
                    end
                    Nu_55 = (Nu_55 + 37) % 40
                else
                    Nu_43 = (vector.create((Nu_55 * 5 + 2) % 11 + 1, (Nu_55 * 11 + 7) % 13 + 1, (Nu_55 * 14 + 2) % 17 + 1))
                    Nu_34 = (vector.create((Nu_55 * 3 + 7) % 11 + 1, (Nu_55 * 5 + 13) % 13 + 1, (Nu_55 * 11 + 2) % 17 + 1))
                    Nu_26 = (vector.create((Nu_55 * 4 + 6) % 11 + 1, (Nu_55 * 6 + 12) % 13 + 1, (Nu_55 * 9 + 9) % 17 + 1))
                    if vector.dot(vector.cross(Nu_43, Nu_34), Nu_26) == vector.dot(vector.cross(Nu_34, Nu_26), Nu_43) + 1 then
                        x2 = fns.fn1010
                        xw = fns.fn1341
                        yb = fns.fn603
                        yz = fns.fn1206
                    else
                        yz = fns.fn1010
                        yb = fns.fn1341
                        x2 = fns.fn603
                        xw = fns.fn1206
                    end
                    Nu_55 = (Nu_55 + 37) % 40
                end
            else
                if (Nu_55 * 2 + 3) * 10 % 3 == ((Nu_55 * 2 + 3) * 10 + 7) % 3 then
                    yc = fns.fn590
                    zd = fns.fn1351
                    y0 = function()
                        if not yl or not yg then
                            return false
                        end
                        local HC = yz()
                        local HD = yb()
                        if xS.Queue then
                            pcall(function()
                                xS.Queue.ChooseMode(HC)
                            end)
                            pcall(function()
                                xS.Queue.ChooseSize(HD)
                            end)
                            pcall(function()
                                xS.Queue.CreateParty()
                            end)
                            return true
                        end
                        xS.Network.Fire("Queue_ChooseMode", yl, HC)
                        xS.Network.Fire("Queue_ChooseSize", yl, HD)
                        xS.Network.Fire("Queue_CreateParty", yl, HD)
                        return true
                    end
                    yB = fns.fn837
                else
                    y0 = fns.fn590
                    yB = fns.fn1351
                    yc = function()
                        if not yl or not yg then
                            return false
                        end
                        local HC = yz()
                        local HD = yb()
                        if xS.Queue then
                            pcall(function()
                                xS.Queue.ChooseMode(HC)
                            end)
                            pcall(function()
                                xS.Queue.ChooseSize(HD)
                            end)
                            pcall(function()
                                xS.Queue.CreateParty()
                            end)
                            return true
                        end
                        xS.Network.Fire("Queue_ChooseMode", yl, HC)
                        xS.Network.Fire("Queue_ChooseSize", yl, HD)
                        xS.Network.Fire("Queue_CreateParty", yl, HD)
                        return true
                    end
                    zd = fns.fn837
                end
                Nu_55 = (Nu_55 + 17) % 40
            end
        elseif Nu_52 <= 4 then
            local PC = bit32.rrotate(bit32.bxor(bit32.lrotate(Nu_55, 14), string.byte(tostring(yZ))), 4)
            if bit32.bxor(bit32.lrotate(bit32.bxor(PC, 3427258077), 22), 3077771763) ~= bit32.lrotate(PC, 22) then
                xB = fns.fn805
                yd = fns.fn998
                xz = fns.fn542
                x5 = function()
                    local It_3
                    local Is_3
                    local Iq_4
                    local Ir_5
                    if not xS or not xS.Weapons then
                        return
                    end
                    local Ip_2 = os.clock()
                    if Ip_2 - x9 < 1 then
                        return
                    end
                    Iq_4, Ir_5 = pcall(function()
                        return xS.Weapons.GetCatalog()
                    end)
                    Is_3, It_3 = pcall(function()
                        return xS.Weapons.GetOwned()
                    end)
                    local Iu = Iq_4 and type(Ir_5) == "table"
                    if not (Iu and Is_3) then
                        return
                    end
                    local Iq_6 = x5(It_3)
                    local Is_4 = {}
                    for k, v in pairs(Ir_5) do
                        if type(v) == "table" then
                            local Ir_6 = v.Id or k
                            local Ir_7 = v.PurchaseType == "Feathers" and v.AvailableForPurchase ~= false and type(Ir_6) == "string" and not Iq_6[Ir_6]
                            if Ir_7 then
                                local insert = table.insert
                                local Iu_2 = tonumber(v.Price) or 0
                                insert(Is_4, { id = Ir_6, price = Iu_2 })
                            end
                        end
                    end
                    table.sort(Is_4, function(l2, l3)
                        return l2.price < l3.price
                    end)
                    for i, v in ipairs(Is_4) do
                        local IK = v
                        if xf(IK.price) then
                            x9 = Ip_2
                            pcall(function()
                                xS.Weapons.Buy(IK.id)
                            end)
                            return
                        end
                    end
                end
            else
                yd = fns.fn805
                xz = fns.fn998
                x5 = fns.fn542
                xB = function()
                    local It_1
                    local Is_1
                    local Iq_1
                    local Ir_1
                    if not xS or not xS.Weapons then
                        return
                    end
                    local Ip_1 = os.clock()
                    if Ip_1 - x9 < 1 then
                        return
                    end
                    Iq_1, Ir_1 = pcall(function()
                        return xS.Weapons.GetCatalog()
                    end)
                    Is_1, It_1 = pcall(function()
                        return xS.Weapons.GetOwned()
                    end)
                    local Iu = Iq_1 and type(Ir_1) == "table"
                    if not (Iu and Is_1) then
                        return
                    end
                    local Iq_3 = x5(It_1)
                    local Is_2 = {}
                    for k, v in pairs(Ir_1) do
                        if type(v) == "table" then
                            local Ir_2 = v.Id or k
                            local Ir_3 = v.PurchaseType == "Feathers" and v.AvailableForPurchase ~= false and type(Ir_2) == "string" and not Iq_3[Ir_2]
                            if Ir_3 then
                                local insert = table.insert
                                local Iu_1 = tonumber(v.Price) or 0
                                insert(Is_2, { id = Ir_2, price = Iu_1 })
                            end
                        end
                    end
                    table.sort(Is_2, function(l2, l3)
                        return l2.price < l3.price
                    end)
                    for i, v in ipairs(Is_2) do
                        local IK = v
                        if xf(IK.price) then
                            x9 = Ip_1
                            pcall(function()
                                xS.Weapons.Buy(IK.id)
                            end)
                            return
                        end
                    end
                end
            end
            Nu_55 = (Nu_55 + 37) % 40
        else
            Nu_43 = (vector.create((Nu_55 * 7 + 8) % 11 + 1, (Nu_55 * 5 + 1) % 13 + 1, (Nu_55 * 13 + 15) % 17 + 1))
            Nu_34 = (vector.create((Nu_55 * 6 + 2) % 11 + 1, (Nu_55 * 8 + 13) % 13 + 1, (Nu_55 * 14 + 7) % 17 + 1))
            local Qp = vector.cross(Nu_43, Nu_34)
            local Qq = vector.dot(Nu_43, Nu_34)
            if vector.dot(Qp, Qp) + Qq * Qq == vector.dot(Nu_43, Nu_43) * vector.dot(Nu_34, Nu_34) + 5 then
                yZ = fns.fn754
                xq = function()
                    local IR
                    local IV_5
                    local IU_6, IU_7
                    if not xS or not xS.Weapons then
                        return
                    end
                    local IT_2 = os.clock()
                    if IT_2 - x4 < 1.5 then
                        return
                    end
                    IU_6, IV_5 = pcall(function()
                        return xS.Weapons.GetOwned()
                    end)
                    local IW = IU_6 and type(IV_5) == "table"
                    local IW_3
                    if not IW then
                        return
                    end
                    IU_7, IW_3 = pcall(function()
                        return xS.Weapons.GetCatalog()
                    end)
                    local IU_8 = IU_7 and IW_3 or nil
                    IR = nil
                    pcall(function()
                        IR = xS.Weapons.GetEquippedUUID()
                    end)
                    local IU_9 = -1
                    local UUID
                    for k, v in pairs(IV_5) do
                        local IV_6 = type(v) == "table" and type(v.UUID) == "string"
                        if IV_6 then
                            local IV_7 = xq(v, IU_8)
                            if IV_7 > IU_9 then
                                IU_9 = IV_7
                                UUID = v.UUID
                            end
                        end
                    end
                    if UUID and UUID ~= IR then
                        x4 = IT_2
                        pcall(function()
                            xS.Weapons.Equip(UUID)
                        end)
                    end
                end
            else
                xq = fns.fn754
                yZ = function()
                    local IR
                    local IV_1
                    local IU_1, IU_2
                    if not xS or not xS.Weapons then
                        return
                    end
                    local IT_1 = os.clock()
                    if IT_1 - x4 < 1.5 then
                        return
                    end
                    IU_1, IV_1 = pcall(function()
                        return xS.Weapons.GetOwned()
                    end)
                    local IW = IU_1 and type(IV_1) == "table"
                    local IW_1
                    if not IW then
                        return
                    end
                    IU_2, IW_1 = pcall(function()
                        return xS.Weapons.GetCatalog()
                    end)
                    local IU_3 = IU_2 and IW_1 or nil
                    IR = nil
                    pcall(function()
                        IR = xS.Weapons.GetEquippedUUID()
                    end)
                    local IU_4 = -1
                    local UUID
                    for k, v in pairs(IV_1) do
                        local IV_2 = type(v) == "table" and type(v.UUID) == "string"
                        if IV_2 then
                            local IV_3 = xq(v, IU_3)
                            if IV_3 > IU_4 then
                                IU_4 = IV_3
                                UUID = v.UUID
                            end
                        end
                    end
                    if UUID and UUID ~= IR then
                        x4 = IT_1
                        pcall(function()
                            xS.Weapons.Equip(UUID)
                        end)
                    end
                end
            end
            Nu_55 = (Nu_55 + 7) % 40
        end
    elseif Nu_52 <= 8 then
        if Nu_52 <= 7 then
            if Nu_52 <= 6 then
                if (Nu_55 * 3 + 4) * 9 % 4 == ((Nu_55 * 3 + 4) * 9 + 4) % 4 then
                    y4 = function()
                        local I7, I8
                        local I9 = not xS
                        local Jf = if I9 then 1 else 0
                        local Jd = 2554 * Jf + 460 * (1 - Jf)
                        local Je = 1318 * Jf + 3337 * (1 - Jf)
                        if not ((Jd * 3445 + Je * 2821 + Jd * Je) % 16777213 == 15882780) then
                            I9 = not xS.Gacha
                        end
                        if I9 then
                            return
                        end
                        local I9_2 = os.clock()
                        if I9_2 - xZ < 2 then
                            return
                        end
                        I8 = false
                        pcall(function()
                            I8 = xS.Gacha.IsAnimating() == true
                        end)
                        if I8 then
                            return
                        end
                        I7 = x2()
                        local Ja = xS.G_Gacha and xS.G_Gacha.Definitions
                        local Jb = Ja
                        if Ja then
                            Ja = Jb[I7]
                        end
                        local Jb_2 = Ja
                        local Ja_2 = type(Jb_2) ~= "table" or Jb_2.Currency ~= "Feathers"
                        if Ja_2 then
                            return
                        end
                        if not xf(Jb_2.Price) then
                            return
                        end
                        xZ = I9_2
                        pcall(function()
                            xS.Gacha.BuyCrateWithFeathers(I7, 1)
                        end)
                    end
                else
                    xq = function()
                        local I7, I8
                        local I9 = not xS
                        local Jf = if I9 then 1 else 0
                        local Jd = 2554 * Jf + 460 * (1 - Jf)
                        local Je = 1318 * Jf + 3337 * (1 - Jf)
                        if not ((Jd * 3445 + Je * 2821 + Jd * Je) % 16777213 == 15882780) then
                            I9 = not xS.Gacha
                        end
                        if I9 then
                            return
                        end
                        local I9_1 = os.clock()
                        if I9_1 - xZ < 2 then
                            return
                        end
                        I8 = false
                        pcall(function()
                            I8 = xS.Gacha.IsAnimating() == true
                        end)
                        if I8 then
                            return
                        end
                        I7 = x2()
                        local Ja = xS.G_Gacha and xS.G_Gacha.Definitions
                        local Jb = Ja
                        if Ja then
                            Ja = Jb[I7]
                        end
                        local Jb_1 = Ja
                        local Ja_1 = type(Jb_1) ~= "table" or Jb_1.Currency ~= "Feathers"
                        if Ja_1 then
                            return
                        end
                        if not xf(Jb_1.Price) then
                            return
                        end
                        xZ = I9_1
                        pcall(function()
                            xS.Gacha.BuyCrateWithFeathers(I7, 1)
                        end)
                    end
                end
                Nu_55 = (Nu_55 + 7) % 40
            else
                if Nu_55 * 10615157 + 6 + 5 >= Nu_55 * 10615157 + 6 + 5 + 2 then
                    yA = Nu_64:CreateWindow({
                        CornerRadius = 0,
                        Footer = { "|", { Text = Library, Copyable = true }, yu },
                        NotifySide = "Right",
                        Title = "Ouroboros Hub",
                        Icon = 12645376577,
                        ShowCustomCursor = false
                    })
                else
                    Nu_64 = Library:CreateWindow({
                        Title = "Ouroboros Hub",
                        Footer = { { Text = yu, Copyable = true }, "|", yA },
                        Icon = 12645376577,
                        NotifySide = "Right",
                        ShowCustomCursor = false,
                        CornerRadius = 0
                    })
                end
                Nu_55 = (Nu_55 + 7) % 40
            end
        else
            if ((not yb and yB or (not yB or not yB)) and (not xD and yb and (x5 and not yn)) or (yB or yn or (not yb or not yb)) and (not x5 and x5 and (yB and x5)) or ((not xD or not xD) and (not xD or yB) or (not yb and not xD or (not yb or not xD)) or (x5 or xD) and (not yn or not xD) and (not yb and x5 or (not yB or yb)))) and not ((not yb and yB or (not yB or not yB)) and (not xD and yb and (x5 and not yn)) or (yB or yn or (not yb or not yb)) and (not x5 and x5 and (yB and x5)) or ((not xD or not xD) and (not xD or yB) or (not yb and not xD or (not yb or not xD)) or (x5 or xD) and (not yn or not xD) and (not yb and x5 or (not yB or yb)))) then
                Nu_64 = {
                    Info = xy:AddTab("Info", "info"),
                    Main = xy:AddTab("Main", "gamepad-2"),
                    Player = xy:AddTab("Player", "user"),
                    Lobby = xy:AddTab("Lobby", "door-open"),
                    Settings = xy:AddTab("Settings", "settings")
                }
            else
                xy = {
                    Info = Nu_64:AddTab("Info", "info"),
                    Main = Nu_64:AddTab("Main", "gamepad-2"),
                    Lobby = Nu_64:AddTab("Lobby", "door-open"),
                    Player = Nu_64:AddTab("Player", "user"),
                    Settings = Nu_64:AddTab("Settings", "settings")
                }
            end
            Nu_55 = (Nu_55 + 17) % 40
        end
    elseif Nu_52 <= 9 then
        local Ql = bit32.rrotate(bit32.bxor(bit32.lrotate(Nu_55, 31), string.byte(tostring(xq))), 3)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Ql, 355668833), 1839667727), (bit32.bxor(bit32.band(Ql, 3939298462), 2454438349))), 1839667727), 2454438349) ~= Ql then
            Nu_46 = Nu_23.Main:AddSubTab("Combat", "crosshair")
            xy = Nu_23.Main:AddSubTab("Farm", "bird")
            Nu_8 = Nu_23.Main:AddSubTab("Upgrades", "sparkles")
            Nu_37 = Nu_23.Main:AddSubTab("Visuals", "eye")
            Nu_61 = fns.fn426
        else
            Nu_37 = xy.Main:AddSubTab("Combat", "crosshair")
            Nu_46 = xy.Main:AddSubTab("Farm", "bird")
            Nu_61 = xy.Main:AddSubTab("Upgrades", "sparkles")
            Nu_8 = xy.Main:AddSubTab("Visuals", "eye")
            Nu_23 = fns.fn426
        end
        Nu_55 = (Nu_55 + 17) % 40
    else
        if Nu_55 * 57212051 + 13 + 3 <= Nu_55 * 57212051 + 13 + 3 + 1 then
            Nu_22.wantedIds = fns.fn395
            Nu_22.getState = fns.fn906
            Nu_22.step = function()
                local Gc
                local Gi_2
                local Gd = os.clock()
                if Gd - Nu_22.lastBuyAt < 1 then
                    return
                end
                local Ge = Nu_22.getState()
                local Gf = not Ge
                local Gq = if Gf then 1 else 0
                local Go = 2308 * Gq + 1686 * (1 - Gq)
                local Gp = 2018 * Gq + 781 * (1 - Gq)
                if not ((Go * 2152 + Gp * 3209 + Go * Gp) % 16777213 == 16100122) then
                    Gf = Ge.Active ~= true
                end
                if not Gf then
                    Gf = Ge.CanOpen ~= true
                end
                if Gf then
                    return
                end
                if type(Ge.Offers) ~= "table" then
                    return
                end
                local Gf_3 = type(Ge.GlobalLocks) == "table" and Ge.GlobalLocks
                local Gg = {}
                local Gh = Gf_3
                local Gh_2
                local Gq_2 = if Gh then 1 else 0
                local Go_2 = 2396 * Gq_2 + 3243 * (1 - Gq_2)
                local Gp_2 = 2243 * Gq_2 + 1831 * (1 - Gq_2)
                if not ((Go_2 * 2160 + Gp_2 * 2447 + Go_2 * Gp_2) % 16777213 == 16038209) then
                    Gh = Gg
                end
                local Gf_4 = Gh
                local Gg_2 = Nu_22.wantedIds()
                Gc, Gh_2, Gi_2 = nil, nil, nil
                local Gt = 1
                while Gt <= 3 do
                    local Gv = Gt
                    local Gj = Ge.Offers[Gv]
                    local Gk = type(Gj) == "table" and Gj.Id and Gj.Locked ~= true and Gf_4[Gj.Id] ~= true
                    if Gk then
                        if Gg_2 == nil or Gg_2[Gj.Id] then
                            local Gk_6 = tonumber(Gj.Price) or 0
                            if hasFeathers(Gk_6) then
                                local Gk_7 = yC[Gj.Rarity] or 0
                                if Gc == nil or Gk_7 > Gh_2 or Gk_7 == Gh_2 and Gk_6 > Gi_2 then
                                    Gc, Gh_2, Gi_2 = Gv, Gk_7, Gk_6
                                end
                            end
                        end
                    end
                    Gt += 1
                end
                if not Gc then
                    return
                end
                Nu_22.lastBuyAt = Gd
                pcall(function()
                    return xS.Network.Invoke(Nu_22.PURCHASE_FUNCTION, Gc)
                end)
            end
            x_ = function(jt, ju, jv)
                local Gx_2
                local Gw_2
                Gw_2, Gx_2 = pcall(function()
                    return xS.Network.Invoke("Upgrades_Purchase", jt, ju, jv)
                end)
                return Gw_2 and Gx_2 == true
            end
            y9 = fns.fn1257
        else
            y9.wantedIds = fns.fn395
            y9.getState = fns.fn906
            y9.step = function()
                local Gc
                local Gi_1
                local Gd = os.clock()
                if Gd - Nu_22.lastBuyAt < 1 then
                    return
                end
                local Ge = Nu_22.getState()
                local Gf = not Ge
                local Gq = if Gf then 1 else 0
                local Go = 2308 * Gq + 1686 * (1 - Gq)
                local Gp = 2018 * Gq + 781 * (1 - Gq)
                if not ((Go * 2152 + Gp * 3209 + Go * Gp) % 16777213 == 16100122) then
                    Gf = Ge.Active ~= true
                end
                if not Gf then
                    Gf = Ge.CanOpen ~= true
                end
                if Gf then
                    return
                end
                if type(Ge.Offers) ~= "table" then
                    return
                end
                local Gf_1 = type(Ge.GlobalLocks) == "table" and Ge.GlobalLocks
                local Gg = {}
                local Gh = Gf_1
                local Gh_1
                local Gq_1 = if Gh then 1 else 0
                local Go_1 = 2396 * Gq_1 + 3243 * (1 - Gq_1)
                local Gp_1 = 2243 * Gq_1 + 1831 * (1 - Gq_1)
                if not ((Go_1 * 2160 + Gp_1 * 2447 + Go_1 * Gp_1) % 16777213 == 16038209) then
                    Gh = Gg
                end
                local Gf_2 = Gh
                local Gg_1 = Nu_22.wantedIds()
                Gc, Gh_1, Gi_1 = nil, nil, nil
                local Gt = 1
                while Gt <= 3 do
                    local Gv = Gt
                    local Gj = Ge.Offers[Gv]
                    local Gk = type(Gj) == "table" and Gj.Id and Gj.Locked ~= true and Gf_2[Gj.Id] ~= true
                    if Gk then
                        if Gg_1 == nil or Gg_1[Gj.Id] then
                            local Gk_2 = tonumber(Gj.Price) or 0
                            if hasFeathers(Gk_2) then
                                local Gk_3 = yC[Gj.Rarity] or 0
                                if Gc == nil or Gk_3 > Gh_1 or Gk_3 == Gh_1 and Gk_2 > Gi_1 then
                                    Gc, Gh_1, Gi_1 = Gv, Gk_3, Gk_2
                                end
                            end
                        end
                    end
                    Gt += 1
                end
                if not Gc then
                    return
                end
                Nu_22.lastBuyAt = Gd
                pcall(function()
                    return xS.Network.Invoke(Nu_22.PURCHASE_FUNCTION, Gc)
                end)
            end
            Nu_22 = function(jt, ju, jv)
                local Gx_1
                local Gw_1
                Gw_1, Gx_1 = pcall(function()
                    return xS.Network.Invoke("Upgrades_Purchase", jt, ju, jv)
                end)
                return Gw_1 and Gx_1 == true
            end
            x_ = fns.fn1257
        end
        Nu_55 = (Nu_55 + 17) % 40
    end
until (Nu_55 * 27 + 20) % 40 == 3
for k, v in xy do
    Nu_64 = k ~= "Main"
    Nu_55 = k ~= "Info" and Nu_64
    if Nu_55 then
        Nu_23(v)
    end
end
QueueGroup, Nu_43, Nu_52, xr, xl, connection, connection2, xX, connection3, xM, connection4, connection5, connection6, Nu_6, yH, Nu_9, yI, xe, yT, Nu_19, zj = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if ((connection5 and QueueGroup or (connection6 or connection5)) and (not connection6 and not connection5 and (yT and QueueGroup)) and ((xl or not xl) and (connection5 or yT) or (not QueueGroup and not connection6 or connection6 and connection6)) or (not QueueGroup and connection5 or (not connection5 or yT) or (not QueueGroup or connection6) and (not QueueGroup and xl) or (not QueueGroup or connection6 or yT and not connection6) and (connection5 and yT or not xl and not xl))) and not ((connection5 and QueueGroup or (connection6 or connection5)) and (not connection6 and not connection5 and (yT and QueueGroup)) and ((xl or not xl) and (connection5 or yT) or (not QueueGroup and not connection6 or connection6 and connection6)) or (not QueueGroup and connection5 or (not connection5 or yT) or (not QueueGroup or connection6) and (not QueueGroup and xl) or (not QueueGroup or connection6 or yT and not connection6) and (connection5 and yT or not xl and not xl))) then
    yI(Nu_23)
    yI(Nu_37)
    yI(Nu_46)
    yI(Nu_61)
    Nu_8 = fns.fn1077
else
    Nu_23(Nu_37)
    Nu_23(Nu_46)
    Nu_23(Nu_61)
    Nu_23(Nu_8)
    yI = fns.fn1077
end
Nu_64 = function()
    local Kd
    local Ka
    Ka = nil
    Kd = nil
    local Label, Label2, Label3, Kf, Kg
    Ka = "Unknown"
    pcall(function()
        local JV_1
        local JU_1
        if identifyexecutor then
            JV_1, JU_1 = identifyexecutor()
            local JW = JV_1 ~= ""
            local JX = type(JV_1) == "string" and JW
            if JX then
                local JW_1 = type(JU_1) == "string" and JU_1 ~= "" and JV_1 .. " " .. JU_1
                Ka = JW_1 or JV_1
            end
        end
    end)
    local Kh = yI()
    Kd = os.clock()
    Kg = function()
        local J1 = math.floor(os.clock() - Kd)
        if J1 < 60 then
            return J1 .. "s"
        elseif J1 < 3600 then
            return string.format("%dm %ds", J1 // 60, J1 % 60)
        else
            return string.format("%dh %dm", J1 // 3600, J1 % 3600 // 60)
        end
    end
    local UserGroup = xy.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(xO("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, xj), true)
    UserGroup:AddLabel(xO("UserId", tostring(LocalPlayer.UserId), xd), true)
    UserGroup:AddLabel(xO("Executor", Ka .. "  " .. Kh, xj), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(xO("Session", Kg(), zi), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            yE(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            yE("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = xy.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(xO("Game", yA, xd), true)
    Label2 = SessionGroup:AddLabel(xO("Players", "0/0", xj), true)
    Kf = tostring(game.JobId)
    local Ki_1 = #Kf > 18 and string.sub(Kf, 1, 18) .. "..."
    local Ki_2 = Ki_1 or Kf
    SessionGroup:AddLabel(xO("Job", Ki_2, zf), true)
    Label = SessionGroup:AddLabel(xO("Ping", "0 ms", zi), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            yR:Teleport(game.PlaceId, LocalPlayer)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            yE(Kf, "Copied Job ID")
        end
    })
    task.spawn(function()
        local J4_1
        local J3_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(xO("Session", Kg(), zi))
            Label2:SetText(xO("Players", #xc:GetPlayers() .. "/" .. tostring(xc.MaxPlayers), xj))
            J3_1, J4_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local J3_2 = J3_1 and J4_1 .. " ms" or "n/a"
            Label:SetText(xO("Ping", J3_2, zi))
        end
    end)
    local SocialsGroup = xy.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = yh })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            yE(yq, "Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            yE(yk, "Copied website link")
        end
    })
    local FeaturesGroup = xy.Info:AddRightGroupbox("Features", "list")
    FeaturesGroup:AddLabel(x6("Lobby Queue", xd), true)
    FeaturesGroup:AddLabel(x6("Weapons / Crates", zi), true)
    FeaturesGroup:AddLabel(x6("Combat", xd), true)
    FeaturesGroup:AddLabel(x6("Auto Farm", zi), true)
    FeaturesGroup:AddLabel(x6("Auto Upgrades", xj), true)
    FeaturesGroup:AddLabel(x6("Visuals", zi), true)
    FeaturesGroup:AddLabel(x6("Player Movement", xd), true)
    FeaturesGroup:AddLabel(x6("Misc Utilities", zf), true)
end
Nu_64()
local CombatGroup = Nu_37:AddLeftGroupbox("Combat", "crosshair")
CombatGroup:AddToggle("KillAura", { Text = "Kill Aura", Default = false })
CombatGroup:AddSlider("KillAuraRange", { Text = "Kill Aura Range", Default = 250, Min = 50, Max = 10000, Rounding = 0 })
CombatGroup:AddToggle("AutoShootNearest", { Text = "Auto Shoot Nearest Duck", Default = false })
CombatGroup:AddSlider("FireRateBoost", { Text = "Fire Rate Boost", Default = 3, Min = 1, Max = 20, Rounding = 1 })
CombatGroup:AddToggle("PredictMovement", { Text = "Predict Duck Movement", Default = true })
CombatGroup:AddSlider("PredictionStrength", { Text = "Prediction Strength", Default = 1, Min = 0, Max = 2.5, Rounding = 2 })
CombatGroup:AddDropdown("TargetPriority", {
    Text = "Target Priority",
    Values = { "Nearest", "Most Cash" },
    Default = "Nearest",
    Multi = false
})
CombatGroup:AddToggle("AngryDucksFirst", { Text = "Angry Ducks First", Default = false })
CombatGroup:AddToggle("BossesFirst", { Text = "Bosses First", Default = false })
CombatGroup:AddToggle("SkipBlockedTargets", { Text = "Skip Blocked Targets", Default = false })
CombatGroup:AddToggle("MultiHitAim", { Text = "Multi-Hit Aim", Default = false })
local BossGroup = Nu_37:AddRightGroupbox("Boss", "shield")
BossGroup:AddToggle("AutoOrbitBoss", { Text = "Auto Orbit Boss Ducks", Default = false })
BossGroup:AddSlider("BossOrbitRadius", { Text = "Boss Orbit Radius", Default = 18, Min = 5, Max = 80, Rounding = 0 })
BossGroup:AddSlider("BossOrbitHeight", { Text = "Boss Orbit Height", Default = 8, Min = -10, Max = 250, Rounding = 0 })
BossGroup:AddSlider("BossOrbitSpeed", { Text = "Boss Orbit Speed", Default = 1.5, Min = 0.2, Max = 6, Rounding = 1 })
BossGroup:AddToggle("AutoAvoidFeathers", { Text = "Auto Avoid Boss Feathers", Default = false })
BossGroup:AddSlider("FeatherAvoidHold", { Text = "Feather Avoid Hold", Default = 10, Min = 3, Max = 20, Rounding = 1 })
BossGroup:AddSlider("FeatherAvoidMargin", { Text = "Feather Escape Extra", Default = 20, Min = 0, Max = 120, Rounding = 0 })
BossGroup:AddToggle("AutoTpCarAfterBoss", { Text = "Auto TP to Car After Boss", Default = false })
BossGroup:AddToggle("AutoRetreatLowHP", { Text = "Retreat to Safe Zone on Low HP", Default = false })
BossGroup:AddSlider("RetreatBelowPercent", { Text = "Retreat Below HP %", Default = 10, Min = 1, Max = 90, Rounding = 0 })
BossGroup:AddSlider("ReturnAbovePercent", { Text = "Return Above HP %", Default = 50, Min = 5, Max = 100, Rounding = 0 })
local FarmGroup = Nu_46:AddLeftGroupbox("Farm", "bird")
FarmGroup:AddToggle("AutoGrabDeposit", { Text = "Auto Grab / Deposit Ducks", Default = false })
FarmGroup:AddToggle("AutoSellDucks", { Text = "Auto Sell Ducks", Default = false })
FarmGroup:AddToggle("AutoSkipDay", { Text = "Auto Skip Day", Default = false })
local WeaponUpgradesGroup = Nu_61:AddLeftGroupbox("Weapon Upgrades", "swords")
WeaponUpgradesGroup:AddToggle("AutoBuyWeaponUpgrades", { Text = "Auto Buy Weapon Upgrades", Default = false })
WeaponUpgradesGroup:AddDropdown("WeaponUpgrades", {
    Text = "Weapon Upgrades",
    Values = Nu_49,
    Default = { "Damage", "Reload Speed", "Ammo Count" },
    Multi = true,
    AllowNull = true
})
local PetUpgradesGroup = Nu_61:AddRightGroupbox("Pet Upgrades", "paw-print")
PetUpgradesGroup:AddToggle("AutoBuyPetUpgrades", { Text = "Auto Buy Pet Upgrades", Default = false })
PetUpgradesGroup:AddToggle("PrioritizeDexterity", { Text = "Prioritize Dexterity", Default = false })
PetUpgradesGroup:AddDropdown("PetUpgrades", {
    Text = "Pet Upgrades",
    Values = Nu_2,
    Default = { "Speed", "Strength", "Dexterity" },
    Multi = true,
    AllowNull = true
})
local WanderingTraderGroup = Nu_61:AddLeftGroupbox("Wandering Trader", "store")
WanderingTraderGroup:AddLabel("Visits on day " .. table.concat(Nu_22.DAYS, " / "), true)
WanderingTraderGroup:AddToggle("AutoBuyTrader", { Text = "Auto Buy Totems", Default = false })
WanderingTraderGroup:AddDropdown("TraderTotems", { Text = "Totems", Values = Nu_22.labels, Default = {}, Multi = true, AllowNull = true })
WanderingTraderGroup:AddLabel("Nothing picked = buy any affordable totem", true)
local EspGroup = Nu_8:AddLeftGroupbox("ESP", "eye")
EspGroup:AddToggle("DuckEsp", { Text = "Duck ESP", Default = false })
EspGroup:AddToggle("KillAuraVisualizer", { Text = "Kill Aura Visualizer", Default = false })
EspGroup:AddToggle("PredictionVisualizer", { Text = "Prediction Visualizer", Default = false })
QueueGroup = xy.Lobby:AddLeftGroupbox("Queue", "users")
QueueGroup:AddToggle("AutoCreateMap", { Text = "Auto Create Map", Default = false })
QueueGroup:AddToggle("AutoJoinMap", { Text = "Auto Join Map", Default = false })
QueueGroup:AddDropdown("QueueDifficulty", { Text = "Difficulty", Values = Nu_17, Default = "Normal", Multi = false })
QueueGroup:AddSlider("QueueMaxPlayers", { Text = "Max Players", Default = 1, Min = 1, Max = 5, Rounding = 0 })
local WeaponsGroup = xy.Lobby:AddRightGroupbox("Weapons", "swords")
WeaponsGroup:AddToggle("AutoBuyWeapons", { Text = "Auto Buy Weapons", Default = false })
WeaponsGroup:AddToggle("AutoEquipBestWeapon", { Text = "Auto Equip Best Owned Weapon", Default = false })
Nu_26 = xy.Lobby:AddRightGroupbox("Crates", "gift")
if (zj or not connection5 or zj and zj or connection6 and connection5 and (false and connection6)) and ((not connection6 and false or false and connection6) and (false or not connection6 and not connection6)) or (not connection5 and zj or (false or connection5)) and ((not connection5 or not connection5) and (not connection5 or zj)) and (connection6 or not connection5 or (not connection6 or zj) or (connection6 or zj or zj and zj)) or not ((zj or not connection5 or zj and zj or connection6 and connection5 and (false and connection6)) and ((not connection6 and false or false and connection6) and (false or not connection6 and not connection6)) or (not connection5 and zj or (false or connection5)) and ((not connection5 or not connection5) and (not connection5 or zj)) and (connection6 or not connection5 or (not connection6 or zj) or (connection6 or zj or zj and zj))) then
    Nu_26:AddToggle("AutoOpenCrates", { Text = "Auto Open Crates", Default = false })
    Nu_26:AddDropdown("CrateType", { Text = "Crate", Values = Nu_29, Default = "Dog Crate", Multi = false })
    Nu_34 = xy.Player:AddLeftGroupbox("Movement", "person-standing")
    Nu_34:AddToggle("WalkSpeedEnabled", { Text = "Walkspeed", Default = false })
    Nu_34:AddSlider("WalkSpeed", { Text = "Walkspeed", Default = 50, Min = 16, Max = 500, Rounding = 0 })
    Nu_34:AddToggle("Noclip", { Text = "Noclip", Default = false })
    Nu_34:AddToggle("InfJump", { Text = "Inf Jump", Default = false })
    Nu_43 = xy.Player:AddRightGroupbox("Fly", "plane")
    Nu_52 = Nu_43:AddToggle("Fly", { Text = "Fly", Default = false })
    Nu_52:AddKeyPicker("FlyKeybind", { Default = "F", Text = "Fly", Mode = "Toggle", SyncToggleState = true })
    Nu_43:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 80, Min = 16, Max = 400, Rounding = 0 })
    Nu_55 = xy.Settings:AddLeftGroupbox("Menu", "menu")
    Nu_55:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = yM.MenuKeybind
    Nu_55:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    Nu_55:AddButton({ Text = "Unload", Func = fns.onUnload })
    Nu_32:SetLibrary(Library)
    Nu_32:SetFolder("OuroborosHub")
    Nu_32:SaveDefault("Evil Hello Kitty")
    Nu_32:ApplyToTab(xy.Settings)
    Nu_32:LoadDefault()
    Nu_40:SetLibrary(Library)
    Nu_40:IgnoreThemeSettings()
    Nu_40:SetIgnoreIndexes({ "MenuKeybind" })
    Nu_40:SetFolder("OuroborosHub/catch-1-billion-ducks")
    Nu_40:BuildConfigSection(xy.Settings)
    Nu_40:LoadAutoloadConfig()
    xr = tick()
else
    xr:AddToggle("AutoOpenCrates", { Text = "Auto Open Crates", Default = false })
    xr:AddDropdown("CrateType", { Default = "Dog Crate", Multi = false, Text = "Crate", Values = Nu_26 })
    yM = Nu_32.Player:AddLeftGroupbox("Movement", "person-standing")
    yM:AddToggle("WalkSpeedEnabled", { Text = "Walkspeed", Default = false })
    yM:AddSlider("WalkSpeed", { Max = 500, Rounding = 0, Default = 50, Text = "Walkspeed", Min = 16 })
    yM:AddToggle("Noclip", { Text = "Noclip", Default = false })
    yM:AddToggle("InfJump", { Text = "Inf Jump", Default = false })
    Nu_55 = Nu_32.Player:AddRightGroupbox("Fly", "plane")
    Nu_34 = Nu_55:AddToggle("Fly", { Text = "Fly", Default = false })
    Nu_34:AddKeyPicker("FlyKeybind", { Default = "F", SyncToggleState = true, Mode = "Toggle", Text = "Fly" })
    Nu_55:AddSlider("FlySpeed", { Rounding = 0, Max = 400, Default = 80, Min = 16, Text = "Fly Speed" })
    Nu_29 = Nu_32.Settings:AddLeftGroupbox("Menu", "menu")
    Nu_29:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Text = "Menu keybind", NoUI = true, Default = "RightShift" })
    Nu_40.ToggleKeybind = Nu_52.MenuKeybind
    Nu_29:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    Nu_29:AddButton({ Text = "Unload", Func = fns.onUnload })
    Nu_43:SetLibrary(Nu_40)
    Nu_43:SetFolder("OuroborosHub")
    Nu_43:SaveDefault("Evil Hello Kitty")
    Nu_43:ApplyToTab(Nu_32.Settings)
    Nu_43:LoadDefault()
    Library:SetLibrary(Nu_40)
    Library:IgnoreThemeSettings()
    Library:SetIgnoreIndexes({ "MenuKeybind" })
    Library:SetFolder("OuroborosHub/catch-1-billion-ducks")
    Library:BuildConfigSection(Nu_32.Settings)
    Library:LoadAutoloadConfig()
    xy = tick()
end
xl = tick()
xe = function()
    pcall(function()
        for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
            local Kr = v
            pcall(function()
                Kr:Disable()
            end)
        end
    end)
end
xe()
yT = fns.fn622
connection = y1.InputBegan:Connect(fns.onInputBegan)
connection2 = y1.InputChanged:Connect(fns.onInputChanged)
xX = false
connection3 = nil
xM = {}
Nu_19 = fns.fn1253
zj = function(o3)
    if connection3 then
        connection3:Disconnect()
        connection3 = nil
    end
    if not o3 then
        return
    end
    connection3 = o3:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
        local Kz = xX or Library.Unloaded or not y3("WalkSpeedEnabled")
        if Kz then
            return
        end
        Nu_19(o3)
    end)
    if y3("WalkSpeedEnabled") then
        Nu_19(o3)
    end
end
connection4 = LocalPlayer.CharacterAdded:Connect(fns.onCharacterAdded)
zj(yj())
connection5 = y1.JumpRequest:Connect(fns.onJumpRequest)
connection6 = Nu_58.RenderStepped:Connect(fns.onRenderStepped)
Toggles.Fly:OnChanged(fns.fn388)
Toggles.WalkSpeedEnabled:OnChanged(fns.fn1243)
Toggles.Noclip:OnChanged(fns.fn39)
Nu_6 = {}
Nu_6.COLOR_BOSS = Color3.fromRGB(255, 120, 80)
Nu_6.COLOR_ANGRY = Color3.fromRGB(255, 80, 90)
Nu_6.COLOR_FLYING = Color3.fromRGB(110, 195, 255)
Nu_6.COLOR_LANDED = Color3.fromRGB(120, 220, 140)
Nu_6.folder = Instance.new("Folder")
Nu_6.folder.Name = "OuroborosDuckEsp"
Nu_6.folder.Parent = yP
Nu_6.objects = {}
Nu_6.seen = {}
Nu_6.release = fns.fn1292
Nu_6.clearAll = fns.fn972
Nu_6.clearUnused = fns.fn673
Nu_6.ensure = fns.fn1019
Nu_6.draw = fns.fn628
Nu_6.duckDisplayName = fns.fn413
Nu_6.step = fns.fn675
yH = {
    COLOR_RANGE = Color3.fromRGB(120, 200, 255),
    COLOR_TARGET = Color3.fromRGB(255, 210, 90),
    COLOR_ACTUAL = Color3.fromRGB(255, 95, 95),
    COLOR_PREDICTED = Color3.fromRGB(120, 255, 150),
    LEAD_MARKERS = 10,
    leads = {},
    lastCollectAt = -math.huge,
    targets = {}
}
yH.folder = Instance.new("Folder")
yH.folder.Name = "OuroborosCombatViz"
yH.folder.Parent = yP
yH.part = fns.fn43
yH.drawLine = fns.fn1045
yH.hideLeads = fns.fn691
yH.clear = fns.fn637
yH.auraStep = fns.fn1344
yH.ensureLead = fns.fn860
yH.predictionStep = fns.fn296
yH.step = fns.fn707
Toggles.KillAuraVisualizer:OnChanged(fns.fn32)
Toggles.PredictionVisualizer:OnChanged(fns.fn260)
Toggles.DuckEsp:OnChanged(fns.fn939)
Library:OnUnload(fns.fn1312)
task.spawn(worker)
task.spawn(fns.worker2)
task.spawn(fns.worker3)
task.spawn(fns.worker4)
task.spawn(fns.worker5)
Nu_9 = false
task.spawn(fns.worker6)
task.spawn(fns.worker7)
task.spawn(fns.worker8)
task.spawn(fns.worker9)
