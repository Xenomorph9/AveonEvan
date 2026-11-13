local rF
local r3
local rL
local ss
local rs
local r9
local rR
local ry
local sf
local rX
local rE
local sl
local r2
local rK
local sr
local rr
local r8
local rQ
local rx
local rW
local rD
local rJ
local sq
local rq
local rP
local sw
local rw
local sd
local rV
local rC
local sj
local r0
local sp
local rp
local r6
local rO
local sv
local rv
local sc
local LocalPlayer
local rB
local si
local r_
local rH
local so
local ro
local r5
local rN
local su
local ru
local sb
local rT
local rA
local sh
local rZ
local rG
local sn
local rn
local r4
local rM
local st
local rt
local sa
local rS
local rz
local sg
local rY
local function worker2()
    while not rF.Unloaded do
        if rY.Enabled.BestPets then
            sa:FireServer("EquipBest")
            task.wait(2.2)
        else
            task.wait(0.5)
        end
    end
end
local function fn41()
    return math.floor(r8(sl(), "Rebirths"))
end
local function fn68()
    return LocalPlayer:FindFirstChild("NumericStats")
end
local function worker5()
    while not rF.Unloaded do
        local xf = rY.Enabled.Train and not rv()
        if xf then
            local xf_1 = rT[rY.TrainLabel]
            if r9(xf_1) then
                if ro() ~= xf_1.Index then
                    local xg = ss(ro())
                    if xg and xg.Index ~= xf_1.Index then
                        r6()
                        task.wait(0.35)
                        if rF.Unloaded or not rY.Enabled.Train then
                            continue
                        end
                        so(xf_1)
                        task.wait(0.45)
                        continue
                    end
                    so(xf_1)
                    task.wait(0.45)
                    continue
                end
                task.wait(0.6)
                continue
            end
            task.wait(0.4)
            continue
        end
        task.wait(0.3)
    end
end
local function fn93()
    while not rF.Unloaded do
        if rY.Enabled.Rebirth then
            local xn = rN.GetRebirthLevel(rW())
            if rD() >= xn then
                rp:FireServer()
                task.wait(1.2)
            else
                task.wait(0.45)
            end
        else
            task.wait(0.4)
        end
    end
end
local function fn115(fC)
    local wt_1
    local wu_1, wu_4
    if not fC then
        return false
    elseif ro() == fC.Index then
        return true
    else
        wu_1, wt_1 = rP(fC)
        local wv = not wu_1
        if wv ~= false then
            wv = wt_1
        end
        if wv then
            ry(sj(wt_1))
            rJ(wt_1)
            task.wait(0.35)
            if rF.Unloaded then
                return false
            end
            local wu_2 = select(1, rP(fC))
            if not wu_1 then
                return false
            end
            sr(wu_2)
            task.wait(0.15)
            if rF.Unloaded then
                return false
            end
            local wt_2 = rz(wu_2)
            local wu_3 = wt_2 and ro() ~= fC.Index
            if wu_4 then
                rM(wt_2)
            end
            return true
        elseif not wu_1 then
            return false
        else
            sr(wu_1)
            task.wait(0.15)
            if rF.Unloaded then
                return false
            end
            local wt_3 = rz(wu_1)
            wu_4 = wt_3 and ro() ~= fC.Index
            if wu_4 then
                rM(wt_3)
            end
            return true
        end
    end
end
local function fn122()
    local PunchEscapePersonalWalls = r3:FindFirstChild("PunchEscapePersonalWalls")
    local uw = PunchEscapePersonalWalls and rB(PunchEscapePersonalWalls)
    local uv_1 = uw
    local uA = if uv_1 then 1 else 0
    local uy = 226 * uA + 1256 * (1 - uA)
    local uz = 2764 * uA + 3661 * (1 - uA)
    if not ((uy * 1717 + uz * 2434 + uy * uz) % 16777213 == 7740282) then
        uv_1 = nil
    end
    return uv_1
end
local function fn138(P)
    return type(P) == "function"
end
local function worker()
    while not rF.Unloaded do
        local xw = rY.Enabled.Lucky and not rv()
        if xw then
            local xw_1 = sb[rY.LuckyLabel]
            local LuckyAmount = rY.LuckyAmount
            local xy = xw_1 and not su()
            if xy then
                local xy_1 = rE.GetWinsCost(xw_1.Station, LuckyAmount)
                local xz = sc()
                local xA = tonumber(xy_1) or math.huge
                if xz >= xA then
                    sh:FireServer(xw_1.Station, "Wins", LuckyAmount)
                    task.wait(0.35)
                end
            end
            task.wait(0.45)
        else
            task.wait(0.4)
        end
    end
end
local function fn191(aR, aS)
    local ty = aR and aR:FindFirstChild(aS)
    local tz = ty
    if ty then
        ty = tonumber(tz.Value)
    end
    local tz_1 = ty
    local tD = if tz_1 then 1 else 0
    local tB = 827 * tD + 2572 * (1 - tD)
    local tC = 3421 * tD + 3136 * (1 - tD)
    if not ((tB * 1491 + tC * 3155 + tB * tC) % 16777213 == 14855479) then
        tz_1 = 0
    end
    return tz_1
end
local function fn203(eD)
    if not eD then
        return false
    elseif eD.GamePassId then
        return sn(eD.GamePassId)
    else
        return rW() >= eD.Rebirths
    end
end
local function fn207()
    while not rF.Unloaded do
        local xd = rY.Enabled.Click and not rv()
        if xd then
            rS()
            task.wait(0.08)
        else
            task.wait(0.2)
        end
    end
end
local function fn217()
    local v7 = sc()
    for i, v in ipairs(rN.Auras) do
        local v8 = type(v) == "table" and not r_(i)
        if v8 then
            local v8_1 = tonumber(v.Cost) or 0
            if v8_1 <= v7 then
                return i
            end
            return nil
        end
    end
end
local function fn219(ch)
    local uo_1
    local un_1
    local um_1
    un_1, um_1, uo_1 = sg()
    local um_2 = uo_1 and ch and ch:IsA("BasePart")
    if not um_2 then
        return false
    end
    if sd then
        pcall(sd, ch, uo_1, 1)
        pcall(sd, ch, uo_1, 0)
    end
    return true
end
local function fn222(c3)
    local uO, uQ, uR, uT, uV, uW
    local uN = 10
    while true do
        local uN_1 = 4321 - uN
        do
            if uN_1 < 4314 then
                if uN_1 < 4312 then
                    if uN_1 < 4311 then
                        if uN_1 < 4309 then
                            if uN_1 < 2892 then
                                break
                            elseif uN_1 < 4308 then
                                break
                            else
                                uN = if not rV(uR, uW) then 3 else 1
                            end
                        elseif uN_1 < 4310 then
                            break
                        elseif uN_1 == 4310 then
                            uV += 1
                            uN = 8
                        else
                            uN = 4313
                            continue
                        end
                    else
                        uQ = 1
                        uO = c3
                        uN = 4
                    end
                elseif uN_1 < 4313 then
                    uW = uV
                    uN = 13
                else
                    uN = if uV <= uT then 9 else 7
                end
            elseif uN_1 < 4320 then
                if uN_1 < 4319 then
                    if uN_1 < 4316 then
                        if uN_1 < 4315 then
                            uN = 0
                        elseif uN_1 == 4315 then
                            uR = uQ
                            uN = 2
                        else
                            uN = 4312
                            continue
                        end
                    elseif uN_1 < 4317 then
                        uN = 12
                    elseif uN_1 < 4318 then
                        uN = if uQ <= uO then 6 else 5
                    elseif uN_1 == 4318 then
                        return rw(uR, uW), uR, uW
                    else
                        uN = 4320
                        continue
                    end
                elseif uN_1 == 4319 then
                    uV = 1
                    uT = rQ
                    uN = 8
                else
                    uN = 4308
                    continue
                end
            elseif uN_1 < 4321 then
                if uN_1 == 4320 then
                    uN = 11
                else
                    uN = 4317
                    continue
                end
            elseif uN_1 < 5427 then
                if uN_1 == 4321 then
                    uQ += 1
                    uN = 4
                else
                    break
                end
            else
                break
            end
        end
    end
end
local function fn283()
    while not rF.Unloaded do
        local w9 = if not rv() then 1 else 0
        if w9 == 1 then
            task.wait(0.25)
            continue
        end
        local clamp = math.clamp
        local floor = math.floor
        local w5 = tonumber(rY.Stage) or 1
        local w4_1 = clamp(floor(w5), 1, rL)
        local w3_1 = r5(w4_1)
        if w3_1 then
            local w5_1 = rr(w3_1)
            if w5_1 then
                ry(w5_1)
            end
            local w5_2 = rF.Unloaded
            local xc = if w5_2 then 1 else 0
            local xa = 3076 * xc + 3291 * (1 - xc)
            local xb = 2176 * xc + 3492 * (1 - xc)
            if not ((xa * 1180 + xb * 2984 + xa * xb) % 16777213 == 39027) then
                w5_2 = not rv()
            end
            if w5_2 then
                continue
            end
            rR(w3_1.Position)
            local wait = task.wait
            local w5_3 = rN.PunchInterval or 0.5
            wait(w5_3)
            continue
        end
        si(w4_1)
        task.wait(0.45)
    end
end
local function fn295()
    return LocalPlayer:FindFirstChild("PlayerStats")
end
local function fn303()
    return math.floor(r8(rn(), "Level"))
end
local function fn324(eH)
    local vO = rN.GetWorldForFist(eH) or 1
    local vO_1 = sq(vO)
    local vQ = vO_1 and vO_1:FindFirstChild("Fists")
    local vO_2 = vQ
    if vQ then
        vQ = vO_2:FindFirstChild("Fist " .. tostring(eH))
    end
    local vO_3 = vQ
    if vQ then
        vQ = vO_3:IsA("BasePart")
    end
    if vQ then
        return vO_3
    end
    local vO_4 = sq(1)
    local vQ_1 = vO_4 and vO_4:FindFirstChild("Fists")
    local vO_5 = vQ_1
    if vQ_1 then
        vQ_1 = vO_5:FindFirstChild("Fist " .. tostring(eH))
    end
    local vO_6 = vQ_1
    if vQ_1 then
        vQ_1 = vO_6:IsA("BasePart")
    end
    if vQ_1 then
        return nil, vO_6.Position + sf(vO)
    end
end
local function fn330()
    sp:FireServer()
end
local function fn356()
    local wA = ss(ro())
    if not wA then
        return
    end
    local wB = select(1, rP(wA))
    local wA_1 = rz(wB)
    if wA_1 then
        rM(wA_1)
    end
end
local function fn381(ei)
    if not ei then
        return nil
    end
    local vz = sq(ei.World)
    local vA = vz and vz:FindFirstChild("Train")
    local vz_1 = vA
    if vA then
        vA = vz_1:FindFirstChild("Train" .. tostring(ei.LocalIndex))
    end
    local vz_2 = vA
    if vA then
        vA = vz_2:IsA("BasePart")
    end
    if vA then
        return vz_2
    end
    local vz_3 = sq(1)
    local vA_1 = vz_3 and vz_3:FindFirstChild("Train")
    local vz_4 = vA_1
    if vA_1 then
        vA_1 = vz_4:FindFirstChild("Train" .. tostring(ei.LocalIndex))
    end
    local vz_5 = vA_1
    if vA_1 then
        vA_1 = vz_5:IsA("BasePart")
    end
    if vA_1 then
        return nil, vz_5.Position + sf(ei.World)
    end
end
local function fn382()
    for k, v in r0 do
        pcall(task.cancel, v)
    end
end
local function fn438(M)
    local tw = typeof(cloneref) == "function" and typeof(M) == "Instance"
    if tw then
        return cloneref(M)
    end
    return M
end
local function fn449(e3)
    local OwnedAuras = LocalPlayer:FindFirstChild("OwnedAuras")
    return rA(OwnedAuras, "Aura" .. tostring(e3))
end
local function fn511(aX, aY)
    local tE = aX and aX:FindFirstChild(aY)
    local tF = tE
    if tE then
        tE = tF.Value == true
    end
    return tE
end
local function fn518(ex)
    local vC = ex and ex:FindFirstChild("AFKPrompt")
    return vC
end
local function fn551()
    return r8(sl(), "Wins")
end
local function worker4()
    while not rF.Unloaded do
        if rY.Enabled.BuyAura then
            local xp = ru()
            if xp then
                st:FireServer("AuraWins", xp)
                task.wait(0.8)
            else
                task.wait(0.6)
            end
        else
            task.wait(0.4)
        end
    end
end
local function fn591(da)
    if not da then
        return nil
    end
    local Size = da.Size
    local uZ = da.CFrame.RightVector
    if Size.Z >= Size.X then
        uZ = da.CFrame.LookVector
    end
    local uY_1 = sq(1)
    local u_ = uY_1 and uY_1:FindFirstChild("Train")
    local uY_2 = u_
    if u_ then
        u_ = uY_2:FindFirstChild("Train1")
    end
    local uY_3 = u_
    if u_ then
        u_ = uY_3:IsA("BasePart")
    end
    if u_ then
        local u__1 = Vector3.new(uY_3.Position.X - da.Position.X, 0, uY_3.Position.Z - da.Position.Z)
        local uY_4 = u__1.Magnitude > 0.1 and uZ:Dot(u__1.Unit) < 0
        if uY_4 then
            uZ = -uZ
        end
    end
    return sj(da.Position + uZ.Unit * 8)
end
local function fn597()
    local vh_1
    local vg_1
    local vf_1
    vg_1, vf_1, vh_1 = sg()
    if not vh_1 then
        return false
    end
    local vf_2 = rZ()
    if vf_2 then
        local vg_2 = (tonumber(rN.MaximumWallPunchDistance))
        local vm = if vg_2 then 1 else 0
        local vk = 761 * vm + 3912 * (1 - vm)
        local vl = 1592 * vm + 51 * (1 - vm)
        if not ((vk * 3726 + vl * 2226 + vk * vl) % 16777213 == 7590790) then
            vg_2 = 90
        end
        local vi = vg_2
        for i, child in vf_2:GetChildren() do
            local vf_3 = child:IsA("BasePart") and child:GetAttribute("PersonalWall") == true and child.CanQuery and child.Transparency < 1
            if vf_3 then
                local WallStatus = child:FindFirstChild("WallStatus")
                local vg_3 = WallStatus and WallStatus:IsA("SurfaceGui") and WallStatus.Enabled and (child.Position - vh_1.Position).Magnitude <= vi
                if vg_3 then
                    return rR(child.Position)
                end
            end
        end
    end
    return rR(vh_1.Position + vh_1.CFrame.LookVector * 12)
end
local function fn625(gl)
    local wZ = tonumber(gl)
    if wZ == 1 or wZ == 3 or wZ == 6 then
        rY.LuckyAmount = wZ
    end
end
local function fn642(gi)
    if sb[gi] then
        rY.LuckyLabel = gi
    end
end
local function fn644(cL, cM)
    local uB = rZ()
    local uC = uB and uB:FindFirstChild("Stage" .. tostring(cL) .. "Wall" .. tostring(cM))
    local uB_1 = uC
    if uC then
        uC = uB_1:IsA("BasePart")
    end
    if uC then
        return uB_1
    end
end
local function fn717(b1)
    local Character = LocalPlayer.Character
    local uf = RaycastParams.new()
    uf.FilterType = Enum.RaycastFilterType.Exclude
    if Character then
        uf.FilterDescendantsInstances = { Character }
    end
    local ue_1 = b1.Y + 8
    local ug = r3:Raycast(Vector3.new(b1.X, ue_1, b1.Z), Vector3.new(0, -80, 0), uf)
    if ug then
        return ug.Position + Vector3.new(0, 3, 0)
    end
    return Vector3.new(b1.X, b1.Y, b1.Z)
end
local function fn732()
    return rY.Enabled.Farm == true and not rF.Unloaded
end
local function fn742(f3, f4)
    local wM = f4 == true
    if f3 == "Train" and rY.Enabled.Train and not wM then
        r6()
    end
    rY.Enabled[f3] = wM
end
local function fn756()
    local PlayerScripts = LocalPlayer:FindFirstChild("PlayerScripts")
    local wH = PlayerScripts and PlayerScripts:FindFirstChild("LuckyBlockCinematicClient")
    local wG_1 = wH
    if wH then
        wH = wG_1:GetAttribute("Busy") == true
    end
    return wH
end
local function fn766()
    return math.floor(r8(rn(), "AFKPad"))
end
local function fn770(eA)
    local vF = (tonumber(eA))
    local vJ = if vF then 1 else 0
    local vH = 1050 * vJ + 1044 * (1 - vJ)
    local vI = 3134 * vJ + 4093 * (1 - vJ)
    if not ((vH * 2326 + vI * 3628 + vH * vI) % 16777213 == 325939) then
        vF = 0
    end
    eA = math.floor(vF)
    if eA < 1 then
        return nil
    end
    return r2[eA]
end
local function fn799(dF)
    local vb = sc()
    local vc = os.clock() + 8
    while true do
        local vd = not rF.Unloaded and rv() and os.clock() < vc
        if not vd then
            return sc() > vb
        end
        if not rq(dF) then
            return false
        end
        local vd_1 = sw(dF)
        if vd_1 then
            sr(vd_1)
        else
            local vd_2 = rw(dF, rQ)
            if vd_2 then
                rJ(vd_2.Position + Vector3.new(-12, 0, 0))
            end
        end
        if sc() > vb then
            break
        end
        task.wait(0.2)
    end
    return true
end
local function fn828()
    local Character = LocalPlayer.Character
    local tI = Character and Character:FindFirstChildOfClass("Humanoid")
    local tJ = Character
    if tJ then
        tJ = Character:FindFirstChild("HumanoidRootPart")
    end
    local tI_1 = Character
    local tL = tJ
    if tI_1 then
        tI_1 = tI
    end
    if tI_1 then
        tI_1 = tL
    end
    if tI_1 then
        tI_1 = tI.Health > 0
    end
    if tI_1 then
        return Character, tI, tL
    end
end
local function fn884(dp)
    local u7 = rN.GetWorldForStage(dp)
    local u8 = sq(u7)
    local u7_1 = u8
    if u7_1 then
        local u9 = u8:FindFirstChild("Destructable walls") or u8:FindFirstChild("Destructable Walls")
        u7_1 = u9
    end
    local u8_1 = u7_1
    if u7_1 then
        u7_1 = u8_1:FindFirstChild("Stage" .. tostring(dp))
    end
    local u8_2 = u7_1
    if u7_1 then
        u7_1 = u8_2:FindFirstChild("WinPart")
    end
    local u8_3 = u7_1
    if not u8_3 then
        return nil
    end
    local u7_2 = u8_3:FindFirstChild("x1 Win") or u8_3:FindFirstChildWhichIsA("BasePart")
    return u7_2
end
local function fn888(cu)
    local ut_1
    local us_1
    if typeof(cu) ~= "Vector3" then
        return false
    elseif ro() > 0 then
        return false
    else
        us_1, ut_1 = sg()
        if not ut_1 or ut_1.Health <= 0 then
            return false
        end
        local us_3 = tonumber(rN.PunchInterval) or 0.5
        local us_4 = os.clock()
        if us_4 - rY.LastPunch < us_3 then
            return false
        end
        rY.LastPunch = us_4
        rt:FireServer(cu)
        return true
    end
end
local function fn906()
    local vV = sc()
    local vW
    local vX = -1
    for k, v in rN.Fists do
        local vY = type(k) == "number" and type(v) == "table" and not sv(k)
        if vY then
            local vY_1 = tonumber(v.Cost) or 0
            local vY_2 = tonumber(v.Power) or 0
            if vY_1 <= vV and vY_2 > vX then
                vX = vY_2
                vW = k
            end
        end
    end
    return vW
end
local function fn909(cp)
    local uq = cp and cp:IsA("BasePart")
    if not uq then
        return false
    end
    ry(cp.Position + Vector3.new(0, 3, 0))
    rX(cp)
    return true
end
local function fn941()
    return { Stages = rG, Train = rO, Lucky = r4, LuckyAmounts = rs }
end
local function fn955(cT, cU)
    local uE = rw(cT, cU)
    if not uE then
        return true
    end
    return uE.Transparency >= 1 and uE.CanQuery == false
end
local function fn1025()
    rY.Enabled.Click = false
    rY.Enabled.Farm = false
    rY.Enabled.Rebirth = false
    rY.Enabled.Train = false
    rY.Enabled.BuyAura = false
    rY.Enabled.BuyPower = false
    rY.Enabled.BestPets = false
    rY.Enabled.Lucky = false
end
local function fn1044(cZ)
    local uK = 1
    local uI = rQ
    while uK <= uI do
        local uL = uK
        if not rV(cZ, uL) then
            return false
        end
        uK += 1
    end
    return true
end
local function fn1046(eZ)
    local OwnedFists = LocalPlayer:FindFirstChild("OwnedFists")
    return rA(OwnedFists, "Fist" .. tostring(eZ))
end
local function fn1049(bQ)
    local WorldOffset = rN.WorldOffset
    local max = math.max
    local t7 = tonumber(bQ) or 1
    local t5_1 = max(1, math.floor(t7)) - 1
    if typeof(WorldOffset) == "Vector3" then
        return WorldOffset * t5_1
    end
    return Vector3.new(0, 0, 2500 * t5_1)
end
local function fn1067(gf)
    if rT[gf] then
        rY.TrainLabel = gf
    end
end
local function worker3()
    local xs_1
    local xt_1
    while not rF.Unloaded do
        local xr = rY.Enabled.BuyPower and not rv()
        if xr then
            local xr_1 = rx()
            if xr_1 then
                xt_1, xs_1 = rK(xr_1)
                local xu = not xt_1
                if xu ~= false then
                    xu = xs_1
                end
                if xu then
                    ry(sj(xs_1))
                    rJ(xs_1)
                    task.wait(0.4)
                    if rF.Unloaded then
                        break
                    end
                    local xt_2 = select(1, rK(xr_1))
                    if xt_1 then
                        sr(xt_2)
                        local xr_2 = rH(xt_2, "FistPrompt", 2)
                        rM(xr_2)
                    end
                    task.wait(0.9)
                    continue
                end
                if xt_1 then
                    sr(xt_1)
                    local xr_3 = rH(xt_1, "FistPrompt", 2)
                    rM(xr_3)
                end
                task.wait(0.9)
                continue
            end
            task.wait(0.7)
            continue
        end
        task.wait(0.4)
    end
end
local function fn1075(b9)
    local uk_1
    local uj_1
    local ui_1
    ui_1, uk_1, uj_1 = sg()
    local ui_2 = uj_1 and typeof(b9) == "Vector3"
    if not ui_2 then
        return false
    end
    rJ(b9)
    uj_1.CFrame = CFrame.new(b9)
    uj_1.AssemblyLinearVelocity = Vector3.zero
    if uk_1 then
        uk_1:ChangeState(Enum.HumanoidStateType.Running)
    end
    return true
end
local function fn1081(f9)
    local wU = rC[f9] or tonumber(f9)
    if type(wU) == "number" then
        rY.Stage = math.clamp(math.floor(wU), 1, rL)
    end
end
rn = nil
ro = nil
rp = nil
rq = nil
rr = nil
rs = nil
rt = nil
ru = nil
rv = nil
rw = nil
rx = nil
ry = nil
rz = nil
rA = nil
rB = nil
rC = nil
rD = nil
rE = nil
rF = nil
rG = nil
rH = nil
rJ = nil
rK = nil
rL = nil
rM = nil
rN = nil
rO = nil
rP = nil
rQ = nil
rR = nil
rS = nil
rT = nil
LocalPlayer = nil
rV = nil
rW = nil
rX = nil
rY = nil
rZ = nil
r_ = nil
r0 = nil
r2 = nil
r3 = nil
r4 = nil
r5 = nil
r6 = nil
r8 = nil
local Players, rI, r1, r7
r9 = nil
sa = nil
sb = nil
sc = nil
sd = nil
sf = nil
sg = nil
sh = nil
si = nil
sj = nil
sl = nil
sn = nil
so = nil
sp = nil
sq = nil
sr = nil
ss = nil
st = nil
su = nil
sv = nil
sw = nil
local se, sk, sm, sx, sD, sE, sF, sG
local sC_1, sC_2
local sz_1, sz_7
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, sC_1, sk, se, r7, r3, LocalPlayer, rF, sm, rB, sx = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
if ((not sC_1 and sC_1 and (not se and se) or sC_1 and sC_1 and (rF and not rF)) and (se and not rF and (sC_1 and not sC_1) and (not se or not se or (se or not se))) or (not se or not rF) and (not rF and not se) and (not rF and rF or (sC_1 or se)) and ((not se or not sC_1) and (not se or rF) and (se or not se or (not rF or not se)))) and not ((not sC_1 and sC_1 and (not se and se) or sC_1 and sC_1 and (rF and not rF)) and (se and not rF and (sC_1 and not sC_1) and (not se or not se or (se or not se))) or (not se or not rF) and (not rF and not se) and (not rF and rF or (sC_1 or se)) and ((not se or not sC_1) and (not se or rF) and (se or not se or (not rF or not se)))) then
    r7 = game:GetService("ReplicatedStorage")
    se = game:GetService("RunService")
    sC_2 = game:GetService("HttpService")
    r3 = game:GetService("MarketplaceService")
    sk = game:GetService("Workspace")
else
    sC_2 = game:GetService("ReplicatedStorage")
    sk = game:GetService("RunService")
    se = game:GetService("HttpService")
    r7 = game:GetService("MarketplaceService")
    r3 = game:GetService("Workspace")
end
LocalPlayer = Players.LocalPlayer
local function sy(l)
    local tl
    local tm
    local tk
    tk = nil
    tl = nil
    tm = nil
    local tn = l ~= ""
    local to = type(l) == "string" and tn
    assert(to, "A namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    tk = getgenv()
    assert(type(tk) == "table", "getgenv did not return a table")
    local tn_1 = tk[l]
    if tn_1 ~= nil then
        local to_1 = type(tn_1) == "table" and type(tn_1.Unload) == "function"
        assert(to_1, "Namespace is occupied")
        tn_1.Unload()
        assert(tk[l] == nil, "Previous instance did not release its namespace")
    end
    tl = {}
    tm = { State = {}, Unloaded = false }
    tm.Track = function(r)
        assert(type(r) == "function", "Cleanup must be callable")
        if tm.Unloaded then
            r()
        else
            table.insert(tl, r)
        end
        return r
    end
    tm.Unload = function()
        local ta_1
        local s9_1
        if tm.Unloaded then
            return
        end
        tm.Unloaded = true
        local s7 = {}
        local te = #tl
        local td = -1
        while false and te <= 1 or true and te >= 1 do
            local tf = te
            local s8_1 = table.remove(tl, tf)
            s9_1, ta_1 = pcall(s8_1)
            if not s9_1 then
                table.insert(s7, tostring(ta_1))
            end
            te += td
        end
        table.clear(tm.State)
        if #s7 > 0 then
            error("Cleanup incomplete: " .. table.concat(s7, "; "), 0)
        end
        if tk[l] == tm then
            tk[l] = nil
        end
    end
    tk[l] = tm
    return tm
end
sm = function(E, F)
    local tu = type(E) == "table" and type(E.Track) == "function"
    assert(tu, "FeatureAPI required")
    local tu_1 = type(F) == "table" and type(F.OnUnload) == "function"
    assert(tu_1, "UI library required")
    assert(type(F.Unload) == "function", "UI unload required")
    E.Track(function()
        if not F.Unloaded then
            F:Unload()
        end
    end)
    F:OnUnload(function()
        E.Unload()
    end)
end
rF = sy("OuroborosSlashPerClick")
rB = fn438
sx = fn138
local sB = sx(firetouchinterest) and firetouchinterest
local sy_1 = sB or nil
sd = nil
sd = sy_1
local sA = sx(fireproximityprompt) and fireproximityprompt
local sy_2 = sA or nil
r1, sB, rN, rI, rE, sz_1, rt, rp, st, sp, sh, sa, rY, rQ, rL, rG, rC = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
sA = 7
repeat
    sD = (sA * 8 + 2) % 9 + 1
    if sD <= 5 then
        if sD <= 3 then
            if sD <= 2 then
                if sD <= 1 then
                    sE = (vector.create((sA * 2 + 1) % 11 + 1, (sA * 8 + 1) % 13 + 1, (sA * 8 + 7) % 17 + 1))
                    sF = (vector.create((sA * 5 + 1) % 11 + 1, (sA * 7 + 7) % 13 + 1, (sA * 6 + 5) % 17 + 1))
                    sG = (vector.create((sA * 5 + 7) % 11 + 1, (sA * 8 + 10) % 13 + 1, (sA * 1 + 10) % 17 + 1))
                    if vector.dot(vector.cross(sE, sF), sG) == vector.dot(vector.cross(sF, sG), sE) then
                        sz_1 = rB(sB:WaitForChild("PunchEscapeRemotes"))
                        rt = rB(sz_1:WaitForChild("PunchRequest"))
                        rp = rB(sz_1:WaitForChild("RebirthRequest"))
                        st = rB(sz_1:WaitForChild("PurchaseRequest"))
                        sp = rB(sz_1:WaitForChild("WallSyncRequest"))
                    else
                        st = sp(rB:WaitForChild("PunchEscapeRemotes"))
                        sz_1 = sp(st:WaitForChild("PunchRequest"))
                        rt = sp(st:WaitForChild("RebirthRequest"))
                        rp = sp(st:WaitForChild("PurchaseRequest"))
                        sB = sp(st:WaitForChild("WallSyncRequest"))
                    end
                    sA = (sA + 8) % 36
                else
                    if (not rp or not sA or (st or not sA)) and ((not rG or rp) and (sA and not rp)) and not ((not rp or not sA or (st or not sA)) and ((not rG or rp) and (sA and not rp))) then
                        rY = sa(rB:WaitForChild("LuckyBlockOpenRequest"))
                        sh = sa(rB:WaitForChild("PetInventoryAction"))
                        pcall(fn330)
                        sB = rQ.State
                        sB.Enabled = {
                            BuyAura = false,
                            Lucky = false,
                            Farm = false,
                            BestPets = false,
                            Rebirth = false,
                            BuyPower = false,
                            Click = false,
                            Train = false
                        }
                        sB.Stage = 1
                        sB.TrainLabel = nil
                        sB.LuckyLabel = nil
                        sB.LuckyAmount = 1
                        sB.LastStream = 0
                        sB.LastPunch = 0
                        sB.PassCache = {}
                        rF = 10
                    else
                        sh = rB(sB:WaitForChild("LuckyBlockOpenRequest"))
                        sa = rB(sB:WaitForChild("PetInventoryAction"))
                        pcall(fn330)
                        rY = rF.State
                        rY.Enabled = {
                            Click = false,
                            Farm = false,
                            Rebirth = false,
                            Train = false,
                            BuyAura = false,
                            BuyPower = false,
                            BestPets = false,
                            Lucky = false
                        }
                        rY.Stage = 1
                        rY.TrainLabel = nil
                        rY.LuckyLabel = nil
                        rY.LuckyAmount = 1
                        rY.LastStream = 0
                        rY.LastPunch = 0
                        rY.PassCache = {}
                        rQ = 10
                    end
                    sA = (sA + 35) % 36
                end
            else
                sE = (vector.create((sA * 7 + 1) % 11 + 1, (sA * 11 + 4) % 13 + 1, (sA * 8 + 6) % 17 + 1))
                local CV = vector.floor(sE) + vector.ceil(sE * -1)
                if vector.dot(CV, CV) == 3 then
                    rN = #rL.Walls
                else
                    rL = #rN.Walls
                end
                sA = (sA + 35) % 36
            end
        elseif sD <= 4 then
            if (not sB and not sh or (not r1 or sp)) and ((not r1 or sB) and (not sh and sz_1)) and (sB and sB and (not sB or not sh) or not r1 and sp and (not sz_1 or sB)) or not ((not sB and not sh or (not r1 or sp)) and ((not r1 or sB) and (not sh and sz_1)) and (sB and sB and (not sB or not sh) or not r1 and sp and (not sz_1 or sB))) then
                rG = {}
                rC = {}
            else
                rC = {}
                rG = {}
            end
            sA = (sA + 8) % 36
        else
            if (sA * 1 + 4) * 9 % 4 == ((sA * 1 + 4) * 9 + 13) % 4 then
                sy_2 = r1
            else
                r1 = sy_2
            end
            sA = (sA + 26) % 36
        end
    elseif sD <= 7 then
        if sD <= 6 then
            sE = {
                "jaokf",
                "omflfrrqdv",
                "ctufdzfvmoe",
                "zbpqfn",
                "lqfsozzllci",
                "cferun",
                "rxukro",
                "oud",
                "wiwmcbpij",
                "nazn",
                "zta",
                "ofsraiccw"
            }
            local DI = sA
            sF = sE[DI % 12 + 1]
            if sF:len() <= sF:reverse():rep(DI % 3 + 2):len() then
                sB = rB(sC_2)
            else
                sC_2 = sB(rB)
            end
            sA = (sA + 8) % 36
        else
            sE = {
                "uqzmxubf",
                "itkrmm",
                "vzvevx",
                "ppblchgkdfp",
                "vriqtohsl",
                "srvth",
                "fcfb",
                "nnax",
                "zxhcz",
                "qqleaapx",
                "kkga",
                "qifvuymhonx",
                "ogjecgqrre"
            }
            if sE[(sA * 70 + 27) % 13 + 1] < sE[(sA * 70 + 27) % 13 + 1] then
                rB = require(sB(rN:WaitForChild("PunchEscapeConfig")))
            else
                rN = require(rB(sB:WaitForChild("PunchEscapeConfig")))
            end
            sA = (sA + 17) % 36
        end
    elseif sD <= 8 then
        sD = {
            "aeaqdrasoxy",
            "ivx",
            "mhuoxmq",
            "jmqaionyehj",
            "qav",
            "hxknm",
            "ukwhqt",
            "nvm",
            "cbrtzgnp",
            "wnrimen",
            "tcsrnrgdis",
            "eqmr"
        }
        local Dp = sA
        sE = sD[Dp % 12 + 1]
        if sE:len() <= sE:reverse():rep(Dp % 3 + 2):len() then
            rI = require(rB(sB:WaitForChild("PunchEscapeWorlds")))
        else
            sB = require(rI(rB:WaitForChild("PunchEscapeWorlds")))
        end
        sA = (sA + 35) % 36
    else
        local CW = bit32.rrotate(bit32.bxor(bit32.lrotate(sA, 24), string.byte(tostring(r1))), 28)
        if bit32.bxor(bit32.lrotate(bit32.bxor(CW, 3687292124), 2), 1864266611) ~= bit32.lrotate(CW, 2) then
            sB = require(rE(rB:WaitForChild("LuckyBlockConfig")))
        else
            rE = require(rB(sB:WaitForChild("LuckyBlockConfig")))
        end
        sA = (sA + 35) % 36
    end
until (sA * 29 + 32) % 36 == 10
local sT = 1
local sR = rL
while sT <= sR do
    local sU = sT
    local sy_3 = rN.Walls[sU]
    local sz_2 = type(sy_3) == "table" and sy_3.StageName
    local sy_4 = sz_2 or nil
    local sz_3 = sy_4
    if sy_4 then
        sy_4 = ("%* %*"):format(sU, sz_3)
    end
    local sz_4 = sy_4 or ("Stage %*"):format(sU)
    table.insert(rG, sz_4)
    rC[sz_4] = sU
    sT += 1
end
r2, rT, rO = nil, nil, nil
local sz_5 = 0
repeat
    local DB = bit32.rrotate(bit32.bxor(bit32.lrotate(sz_5, 27), string.byte(tostring(rT))), 2)
    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(DB, 2063984339), 2174364610), (bit32.bxor(bit32.band(DB, 2230982956), 1372050722))), 2174364610), 1372050722) ~= DB then
        rO = {}
        r2 = {}
        rT = {}
    else
        r2 = {}
        rT = {}
        rO = {}
    end
    sz_5 = (sz_5 + 1) % 4
until (sz_5 * 1 + 2) % 4 == 3
for i, v in ipairs(rN.Training) do
    local sy_6 = rN.GetWorldForTraining(i) or 1
    sA = v.GamePassId and "Gamepass"
    if not sA then
        local sy_8 = tonumber(v.Rebirths) or 0
        sA = ("%* Rebirths"):format(sy_8)
    end
    local sy_9 = sA
    sA = (("W%* x%* (%*)"):format(sy_6, tostring(v.Multiplier), sy_9))
    local sy_10 = (i - 1) % 9 + 1
    sB = tonumber(v.Multiplier) or 1
    local sC_3 = tonumber(v.Rebirths) or 0
    sD = {
        Index = i,
        Label = sA,
        World = sy_6,
        LocalIndex = sy_10,
        Multiplier = sB,
        Rebirths = sC_3,
        GamePassId = tonumber(v.GamePassId)
    }
    table.insert(r2, sD)
    rT[sA] = sD
    table.insert(rO, sA)
end
sB, sb, r4, sz_7 = nil, nil, nil, nil
local sy_11 = 2
repeat
    sA = (sy_11 * 1 + 0) % 2 + 1
    if sA <= 1 then
        if sy_11 * 132227479 + 1 + 5 >= sy_11 * 132227479 + 1 + 5 + 1 then
            sB.TrainLabel = sb[1]
            rO = {}
            r4 = {}
            rY = {}
        else
            rY.TrainLabel = rO[1]
            sB = {}
            sb = {}
            r4 = {}
        end
        sy_11 = (sy_11 + 7) % 16
    else
        local DF = bit32.rrotate(bit32.bxor(bit32.lrotate(sy_11, 21), string.byte(tostring(r4))), 5)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(DF, 639275029), 1376913347), (bit32.bxor(bit32.band(DF, 3655692266), 4127884482))), 1376913347), 4127884482) == DF then
            sz_7 = { "Lucky Block", "Super Lucky Block", "Mega Lucky Block" }
        else
            r4 = { "Mega Lucky Block", "Lucky Block", "Super Lucky Block" }
        end
        sy_11 = (sy_11 + 5) % 16
    end
until (sy_11 * 1 + 9) % 16 == 7
local s3 = 1
while s3 <= 12 do
    local s4 = s3
    local sy_12 = math.floor((s4 - 1) / 3) + 1
    sA = (s4 - 1) % 3 + 1
    local sC_4 = (("W%* %*"):format(sy_12, sz_7[sA]))
    sD = { Station = s4, Label = sC_4, World = sy_12, Tier = sA }
    table.insert(sB, sD)
    sb[sC_4] = sD
    table.insert(r4, sC_4)
    s3 += 1
end
rs, r0, rn, sl, r8, rA, sc, rW, rD, ro, sg, rv, sn, sq, sf, rJ, sj, ry, rX, sr, rR, rZ, rw, rV, rq, r5, rr, sw, si, rS, rH, rP, rz, ss, r9, rK, sv, r_, rx, ru, rM, so, r6, su = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
rY.LuckyLabel = r4[1]
rs = { "1", "3", "6" }
rn = fn295
sl = fn68
r8 = fn191
rA = fn511
sc = fn551
rW = fn41
rD = fn303
ro = fn766
sg = fn828
rv = fn732
sn = function(bq)
    local tT_1
    local tS = type(bq) ~= "number" or bq <= 0
    local tS_2
    if tS then
        return false
    end
    local tS_1 = rY.PassCache[bq]
    if tS_1 ~= nil then
        return tS_1
    end
    tS_2, tT_1 = pcall(function()
        return r7:UserOwnsGamePassAsync(LocalPlayer.UserId, bq)
    end)
    if tS_2 then
        rY.PassCache[bq] = tT_1 == true
        return tT_1 == true
    end
    return false
end
sq = function(bC)
    local tZ_1
    local tY_1
    tY_1, tZ_1 = pcall(function()
        return rI.GetRoot(bC)
    end)
    local t_ = tY_1 and typeof(tZ_1) == "Instance"
    if t_ then
        return rB(tZ_1)
    end
    local Worlds = r3:FindFirstChild("Worlds")
    local tZ_2 = Worlds and Worlds:FindFirstChild("World " .. tostring(bC))
    local tY_3 = tZ_2
    if tZ_2 then
        tZ_2 = rB(tY_3)
    end
    return tZ_2 or nil
end
sf = fn1049
rJ = function(bV)
    if typeof(bV) ~= "Vector3" then
        return
    end
    local t9 = os.clock()
    if t9 - rY.LastStream < 0.45 then
        return
    end
    rY.LastStream = t9
    pcall(function()
        LocalPlayer:RequestStreamAroundAsync(bV, 8)
    end)
end
sj = fn717
ry = fn1075
rX = fn219
sr = fn909
rR = fn888
rZ = fn122
rw = fn644
rV = fn955
rq = fn1044
r5 = fn222
rr = fn591
sw = fn884
si = fn799
rS = fn597
if (sl or not si or not su and si or sl and sl and (not su or si)) and (not sl and not su and (not si and not sl) or sl and not sl and (not sw and sl)) or (not sw or su) and (su or not sl) and ((not sw or not si) and (si and sl)) and (not sw and si and (sl and not sw) or (sw or not sl) and (sw or not si)) or not ((sl or not si or not su and si or sl and sl and (not su or si)) and (not sl and not su and (not si and not sl) or sl and not sl and (not sw and sl)) or (not sw or su) and (su or not sl) and ((not sw or not si) and (si and sl)) and (not sw and si and (sl and not sw) or (sw or not sl) and (sw or not si))) then
    rH = function(d9, ea, eb)
        local vw_2
        if not d9 then
            return nil
        end
        local vv = d9:FindFirstChild(ea)
        local vv_2
        if vv then
            return rB(vv)
        end
        vv_2, vw_2 = pcall(function()
            local vt = eb or 6
            return d9:WaitForChild(ea, vt)
        end)
        if vv_2 and vw_2 then
            return rB(vw_2)
        end
    end
    rP = fn381
    rz = fn518
    ss = fn770
    r9 = fn203
else
    ss = function(d9, ea, eb)
        local vw_1
        if not d9 then
            return nil
        end
        local vv = d9:FindFirstChild(ea)
        local vv_1
        if vv then
            return rB(vv)
        end
        vv_1, vw_1 = pcall(function()
            local vt = eb or 6
            return d9:WaitForChild(ea, vt)
        end)
        if vv_1 and vw_1 then
            return rB(vw_1)
        end
    end
    rz = fn381
    r9 = fn518
    rH = fn770
    rP = fn203
end
rK = fn324
sv = fn1046
r_ = fn449
rx = fn906
ru = fn217
rM = function(fv)
    local wl = not fv
    local wp = if wl then 1 else 0
    local wn = 1350 * wp + 539 * (1 - wp)
    local wo = 1183 * wp + 3197 * (1 - wp)
    if not ((wn * 1432 + wo * 2043 + wn * wo) % 16777213 == 5947119) then
        wl = not fv:IsA("ProximityPrompt")
    end
    if wl then
        return false
    elseif r1 then
        return pcall(r1, fv)
    else
        return pcall(function()
            fv:InputHoldBegin()
            task.wait(fv.HoldDuration)
            if rF.Unloaded then
                return
            end
            fv:InputHoldEnd()
        end)
    end
end
so = fn115
r6 = fn356
su = fn756
rF.SetEnabled = fn742
rF.SetStage = fn1081
rF.SetTrain = fn1067
rF.SetLucky = fn642
rF.SetLuckyAmount = fn625
rF.Options = fn941
sG = fn283
sD = fn207
sE = fn93
rF.Track(fn1025)
r0 = {
    task.spawn(sG),
    task.spawn(sD),
    task.spawn(worker5),
    task.spawn(sE),
    task.spawn(worker4),
    task.spawn(worker3),
    task.spawn(worker2),
    task.spawn(worker)
}
rF.Track(fn382)
sA = function()
    local onDiscord
    local BW
    local BP
    onDiscord = nil
    BP = nil
    BW = nil
    local BJ, BK, Library, Toggles, TeleportService, SaveManager, UserInputService, BS, BT, ThemeManager, Options
    UserInputService = game:GetService("UserInputService")
    BJ = "+1 Slash Per Click"
    BP = "https://discord.gg/ehKVq7pf7v"
    BS = "https://ouroboros-hub-rbx.web.app/"
    BK = "https://rscripts.net/@Ouroboros"
    TeleportService = game:GetService("TeleportService")
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = Library.Toggles
    Options = Library.Options
    sm(rF, Library)
    BW = function(h7, h8)
        local xJ = sx(setclipboard) and setclipboard
        local xK = xJ
        if not xK then
            local xJ_1 = sx(toclipboard) and toclipboard
            xK = xJ_1 or nil
        end
        local xJ_2 = xK
        if not xJ_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local xK_1 = pcall(xJ_2, h7)
        if xK_1 then
            Library:Notify(h8)
        else
            Library:Notify("Failed to copy")
        end
    end
    onDiscord = function()
        BW(BP, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = BP, Copyable = true }, "|", BJ, "|", "v0.2" },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(true, { Color = Color3.fromRGB(242, 154, 196), Radius = 24, Transparency = 0.3 })
    BT = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "gamepad-2"),
        Shop = Window:AddTab("Shop", "shopping-cart"),
        Player = Window:AddTab("Player", "person-standing"),
        Settings = Window:AddTab("Settings", "settings")
    }
    local function BX_1(ip)
        local DiscordGroup = ip:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    for k, v in BT do
        if k ~= "Info" then
            BX_1(v)
        end
    end
    local BX_2 = rF.Options()
    local FarmGroup = BT.Main:AddLeftGroupbox("Farm", "trophy")
    FarmGroup:AddToggle("AutoFarm", {
        Text = "Auto Farm Stage",
        Default = false,
        Callback = function(iw)
            rF.SetEnabled("Farm", iw)
        end
    })
    FarmGroup:AddDropdown("FarmStage", {
        Text = "Stage",
        Values = BX_2.Stages,
        Default = 1,
        Callback = function(iy)
            rF.SetStage(iy)
        end
    })
    FarmGroup:AddToggle("AutoClick", {
        Text = "Auto Click",
        Default = false,
        Callback = function(iA)
            rF.SetEnabled("Click", iA)
        end
    })
    FarmGroup:AddToggle("AutoRebirth", {
        Text = "Auto Rebirth",
        Default = false,
        Callback = function(iC)
            rF.SetEnabled("Rebirth", iC)
        end
    })
    local TrainGroup = BT.Main:AddRightGroupbox("Train", "target")
    TrainGroup:AddToggle("AutoTrain", {
        Text = "Auto Train",
        Default = false,
        Callback = function(iF)
            rF.SetEnabled("Train", iF)
        end
    })
    TrainGroup:AddDropdown("TrainPad", {
        Text = "Dummy",
        Values = BX_2.Train,
        Default = 1,
        Callback = function(iH)
            rF.SetTrain(iH)
        end
    })
    local BuyGroup = BT.Shop:AddLeftGroupbox("Buy", "shopping-bag")
    BuyGroup:AddToggle("AutoBuyAura", {
        Text = "Auto Buy Aura",
        Default = false,
        Callback = function(iK)
            rF.SetEnabled("BuyAura", iK)
        end
    })
    BuyGroup:AddToggle("AutoBuyPower", {
        Text = "Auto Buy Best Power",
        Default = false,
        Callback = function(iM)
            rF.SetEnabled("BuyPower", iM)
        end
    })
    local EquipGroup = BT.Shop:AddLeftGroupbox("Equip", "backpack")
    EquipGroup:AddToggle("AutoBestPets", {
        Text = "Auto Equip Best Pet",
        Default = false,
        Callback = function(iP)
            rF.SetEnabled("BestPets", iP)
        end
    })
    local LuckyBlockGroup = BT.Shop:AddRightGroupbox("Lucky Block", "box")
    LuckyBlockGroup:AddToggle("AutoLucky", {
        Text = "Auto Open Lucky Block",
        Default = false,
        Callback = function(iS)
            rF.SetEnabled("Lucky", iS)
        end
    })
    LuckyBlockGroup:AddDropdown("LuckyBlock", {
        Text = "Lucky Block",
        Values = BX_2.Lucky,
        Default = 1,
        Callback = function(iU)
            rF.SetLucky(iU)
        end
    })
    LuckyBlockGroup:AddDropdown("LuckyAmount", {
        Text = "Amount",
        Values = BX_2.LuckyAmounts,
        Default = 1,
        Callback = function(iW)
            rF.SetLuckyAmount(iW)
        end
    })
    local function BX_3()
        local xZ
        local x3
        local x8
        local x0
        xZ = nil
        x0 = nil
        x3 = nil
        x8 = nil
        local Label3, x1, x2, Label, x5, x6, x7, x9, Label2
        x8 = function(i_)
            return (tostring(i_):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        x3 = function(i1, i2)
            return string.format('<font color="%s">%s</font>', i2, x8(i1))
        end
        x9 = function(i5, i6, i7)
            return string.format("<b>%s</b> %s %s", i5, x3("-", "#5a6070"), x3(i6, i7))
        end
        local yb = {}
        local yc = "#8b93a3"
        x1 = "#e8a34d"
        x6 = "#7fd47f"
        local yd = "#6ec1ff"
        if not sd then
            table.insert(yb, "firetouchinterest")
        end
        if not r1 then
            table.insert(yb, "fireproximityprompt")
        end
        local yf = #yb == 0 and "ready"
        local yj = if yf then 1 else 0
        local yh = 2770 * yj + 2492 * (1 - yj)
        local yi = 904 * yj + 1571 * (1 - yj)
        if not ((yh * 3776 + yi * 1645 + yh * yi) % 16777213 == 14450680) then
            yf = "limited: " .. table.concat(yb, ", ")
        end
        x7 = "Unknown"
        local yb_1 = yf
        pcall(function()
            local xO_1
            local xN_1
            if sx(identifyexecutor) then
                xO_1, xN_1 = identifyexecutor()
                local xP = xO_1 ~= ""
                local xQ = type(xO_1) == "string" and xP
                if xQ then
                    local xP_1 = type(xN_1) == "string" and xN_1 ~= "" and xO_1 .. " " .. xN_1
                    x7 = xP_1 or xO_1
                end
            end
        end)
        xZ = os.clock()
        x5 = function()
            local xS = math.floor(os.clock() - xZ)
            if xS < 60 then
                return xS .. "s"
            elseif xS < 3600 then
                return string.format("%dm %ds", xS // 60, xS % 60)
            else
                return string.format("%dh %dm", xS // 3600, xS % 3600 // 60)
            end
        end
        local UserGroup = BT.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(x9("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, x6), true)
        UserGroup:AddLabel(x9("UserId", tostring(LocalPlayer.UserId), yd), true)
        UserGroup:AddLabel(x9("Executor", x7 .. "  " .. yb_1, x6), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(x9("Session", x5(), x1), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                BW(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                BW("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = BT.Info:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(x9("Game", BJ, yd), true)
        Label2 = SessionGroup:AddLabel(x9("Players", "0/0", x6), true)
        x2 = tostring(game.JobId)
        local yd_1 = #x2 > 18 and string.sub(x2, 1, 18) .. "..."
        local ye_2 = yd_1 or x2
        SessionGroup:AddLabel(x9("Job", ye_2, yc), true)
        Label = SessionGroup:AddLabel(x9("Ping", "0 ms", x1), true)
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
                BW(x2, "Copied Job ID")
            end
        })
        x0 = task.spawn(function()
            local xV_1
            local xU_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(x9("Session", x5(), x1))
                Label2:SetText(x9("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), x6))
                xU_1, xV_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local xU_2 = xU_1 and xV_1 .. " ms" or "n/a"
                Label:SetText(x9("Ping", xU_2, x1))
            end
        end)
        rF.Track(function()
            if coroutine.status(x0) ~= "dead" then
                task.cancel(x0)
            end
        end)
        local SocialsGroup = BT.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                BW(BK, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                BW(BS, "Copied website link")
            end
        })
    end
    BX_3()
    local function BX_4()
        local kn
        local kl
        local ko
        local km
        local MovementGroup = BT.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = BT.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        kn = {}
        ko = {}
        kl = {}
        km = {}
        local kk = {}
        local function kp()
            for k, v in kl do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(kl)
        end
        local function kt()
            for k, v in km do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(km)
        end
        local function ky()
            for k, v in kn do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(kn)
        end
        local function kC(kD)
            local yI = if not kD:IsA("ProximityPrompt") then 1 else 0
            if yI == 1 then
                return
            end
            if ko[kD] == nil then
                ko[kD] = {
                    HoldDuration = kD.HoldDuration,
                    MaxActivationDistance = kD.MaxActivationDistance,
                    RequiresLineOfSight = kD.RequiresLineOfSight
                }
            end
            kD.HoldDuration = 0
            kD.MaxActivationDistance = 50
            kD.RequiresLineOfSight = false
        end
        local function kF()
            for k, v in ko do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(ko)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                ky()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                kt()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                kp()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in r3:QueryDescendants("ProximityPrompt") do
                    pcall(kC, v)
                end
            else
                kF()
            end
        end)
        table.insert(kk, r3.DescendantAdded:Connect(function(kY)
            if Toggles.InstantProximityPrompt.Value then
                kC(kY)
            end
        end))
        table.insert(kk, sk.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if kl[v] == nil then
                        kl[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(kk, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local zj = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and zj then
                zj:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(kk, sk.RenderStepped:Connect(function(li)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local zm = Character and Character:FindFirstChildOfClass("Humanoid")
            local zn = Character
            if zn then
                zn = Character:FindFirstChild("HumanoidRootPart")
            end
            local zl_1 = zn
            local CurrentCamera = r3.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and zm then
                if km[zm] == nil then
                    km[zm] = zm.WalkSpeed
                end
                zm.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and zl_1 and zm and CurrentCamera then
                if kn[zm] == nil then
                    kn[zm] = zm.PlatformStand
                end
                zm.PlatformStand = true
                local zn_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        zn_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        zn_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        zn_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        zn_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        zn_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        zn_4 -= Vector3.new(0, 1, 0)
                    end
                end
                zl_1.AssemblyLinearVelocity = Vector3.zero
                if zn_4.Magnitude > 0 then
                    zl_1.CFrame = zl_1.CFrame + zn_4.Unit * Options.FlySpeed.Value * li
                end
            end
        end))
        rF.Track(function()
            for k, v in kk do
                v:Disconnect()
            end
            kp()
            kt()
            ky()
            kF()
        end)
    end
    BX_4()
    local function BX_5()
        local lE
        local ml
        local Lighting = game:GetService("Lighting")
        local GuiService = game:GetService("GuiService")
        local CoreGui = game:GetService("CoreGui")
        local VirtualUser = game:GetService("VirtualUser")
        lE = {}
        local lD = {}
        local lF
        local lI = 0
        local lH = 0
        local lG = false
        local lJ = os.clock()
        local MenuGroup = BT.Settings:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        local Label = MenuGroup:AddLabel("AFK triggers: 0")
        local function lN()
            local CurrentCamera
            CurrentCamera = r3.CurrentCamera
            if not CurrentCamera then
                return
            end
            local zL = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.zero, CurrentCamera.CFrame)
            end)
            if not zL then
                return
            end
            lI += 1
            lJ = os.clock()
            Label:SetText("AFK triggers: " .. lI)
        end
        local function onAntiGameplayPause(lZ)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not lZ)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not lZ
                end
            end)
            if lZ then
                pcall(function()
                    if sx(sethiddenproperty) then
                        sethiddenproperty(LocalPlayer, "GameplayPaused", false)
                    else
                        LocalPlayer.GameplayPaused = false
                    end
                end)
            end
        end
        local function mc()
            for k, v in lE do
                local zV = k
                local zX = v
                if zV.Parent then
                    pcall(function()
                        zV.Enabled = zX
                    end)
                end
            end
            table.clear(lE)
            if lF then
                pcall(function()
                    settings().Rendering.QualityLevel = lF.Quality
                end)
                Lighting.GlobalShadows = lF.Shadows
                Lighting.FogEnd = lF.Fog
                lF = nil
            end
        end
        ml = { ParticleEmitter = true, Trail = true, Smoke = true, Fire = true, Sparkles = true, Beam = true }
        local function mm(mn)
            if ml[mn.ClassName] then
                if lE[mn] == nil then
                    lE[mn] = mn.Enabled
                end
                mn.Enabled = false
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true, Callback = onAntiGameplayPause })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(mq)
                pcall(function()
                    sk:Set3dRenderingEnabled(not mq)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(mv)
                if mv then
                    if not lF then
                        lF = {
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
                    for k, v in r3:QueryDescendants("ParticleEmitter,Trail,Smoke,Fire,Sparkles,Beam") do
                        pcall(mm, v)
                    end
                else
                    mc()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        onAntiGameplayPause(true)
        local ScriptGroup = BT.Settings:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        table.insert(lD, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                lN()
            end
        end))
        table.insert(lD, r3.DescendantAdded:Connect(function(mM)
            if Toggles.FpsBoost.Value then
                mm(mM)
            end
        end))
        local function mP(mQ)
            if lG or Library.Unloaded or not Toggles.AutoReconnect.Value then
                return
            end
            lG = true
            local Ad = lH
            local Ae_1 = pcall(function()
                if mQ then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not Ae_1 then
                lG = false
                if not mQ and Ad == lH then
                    task.delay(1.5, function()
                        if Ad == lH then
                            mP(true)
                        end
                    end)
                end
            end
        end
        table.insert(lD, TeleportService.TeleportInitFailed:Connect(function(m7)
            local Al
            if m7 == LocalPlayer and lG then
                lG = false
                Al = lH
                task.delay(3, function()
                    if Al == lH then
                        mP(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local Aq = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not Aq then
                return
            end
            table.insert(lD, Aq.ChildAdded:Connect(function(nm)
                if nm.Name == "ErrorPrompt" then
                    mP(false)
                end
            end))
        end)
        local nv = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    onAntiGameplayPause(true)
                end
                local At = Toggles.AntiAfk.Value and os.clock() - lJ >= 60
                if At then
                    lN()
                end
                task.wait(1)
            end
        end)
        rF.Track(function()
            lH += 1
            for k, v in lD do
                v:Disconnect()
            end
            pcall(task.cancel, nv)
            onAntiGameplayPause(false)
            mc()
            pcall(function()
                sk:Set3dRenderingEnabled(true)
            end)
        end)
    end
    BX_5()
    local function BX_6()
        local BD, BE, BF, BG
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("OuroborosHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(BT.Settings)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/SlashPerClick")
        local BH = SaveManager:BuildConfigSection(BT.Settings)
        BG = function(nN, nO)
            local AG_1 = (nN == "Toggle" and Toggles or Options)[nO]
            local AF_2 = type(AG_1) == "table" and AG_1.Type == nN
            return AF_2 and AG_1 or nil
        end
        BE = function(nX, nY)
            local Type = nY.Type
            if Type == "Toggle" then
                return { idx = nX, type = "Toggle", value = nY.Value == true }
            elseif Type == "Slider" then
                return { idx = nX, type = "Slider", value = tostring(nY.Value) }
            elseif Type == "Dropdown" then
                return { idx = nX, type = "Dropdown", multi = nY.Multi == true, value = nY.Value }
            elseif Type == "Input" then
                local AK = nY.Value or ""
                return { idx = nX, type = "Input", text = tostring(AK) }
            elseif Type == "ColorPicker" then
                return { idx = nX, type = "ColorPicker", value = nY.Value:ToHex(), transparency = nY.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = nX,
                    type = "KeyPicker",
                    mode = nY.Mode,
                    key = nY.Value,
                    modifiers = nY.Modifiers,
                    toggled = nY.Toggled
                }
            else
                return nil
            end
        end
        BD = function()
            local AT = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local AU = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if AU then
                        local AU_1 = BE(k, v)
                        if AU_1 then
                            AT[#AT + 1] = AU_1
                        end
                    end
                end
            end
            table.sort(AT, function(n7, n8)
                if n7.type ~= n8.type then
                    return n7.type < n8.type
                end
                return n7.idx < n8.idx
            end)
            return { objects = AT }
        end
        BF = function(oa)
            local Bc
            Bc = nil
            local Bd = type(oa) ~= "table" or type(oa.idx) ~= "string" or type(oa.type) ~= "string" or SaveManager.Ignore[oa.idx]
            if Bd then
                return false
            end
            Bc = BG(oa.type, oa.idx)
            if not Bc then
                return false
            end
            local Bd_1 = pcall(function()
                if oa.type == "Input" then
                    if type(oa.text) ~= "string" then
                        return
                    end
                    Bc:SetValue(oa.text)
                elseif oa.type == "ColorPicker" then
                    Bc:SetValueRGB(Color3.fromHex(oa.value), oa.transparency)
                elseif oa.type == "KeyPicker" then
                    Bc:SetValue({ oa.key, oa.mode, oa.modifiers })
                    if oa.mode == "Toggle" and oa.toggled ~= nil then
                        Bc.Toggled = oa.toggled
                        Bc:Update()
                    end
                else
                    Bc:SetValue(oa.value)
                end
            end)
            return Bd_1
        end
        BH:AddDivider()
        BH:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        BH:AddButton("Export Config to Clipboard", function()
            local Bg_1
            local Bf_1
            Bf_1, Bg_1 = pcall(se.JSONEncode, se, BD())
            if not Bf_1 then
                Library:Notify("Failed to encode the config")
                return
            end
            local Bf_2 = sx(setclipboard) and setclipboard
            local Bh = Bf_2
            local Bm = if Bh then 1 else 0
            local Bk = 3085 * Bm + 215 * (1 - Bm)
            local Bl = 11 * Bm + 1790 * (1 - Bm)
            if not ((Bk * 343 + Bl * 347 + Bk * Bl) % 16777213 == 1095907) then
                local Bf_3 = sx(toclipboard) and toclipboard
                Bh = Bf_3 or nil
            end
            local Bf_4 = Bh
            local Bh_1 = type(Bf_4) ~= "function" or not pcall(Bf_4, Bg_1)
            if Bh_1 then
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Config copied to clipboard", 6)
        end)
        BH:AddButton("Import Config from Clipboard Text", function()
            local Bp_1
            local Bn = Options.SaveManager_ImportSource.Value or ""
            local Bn_1
            local Bo = tostring(Bn):match("^%s*(.-)%s*$")
            if Bo == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #Bo > 262144 then
                Library:Notify("That config is too large")
                return
            end
            Bn_1, Bp_1 = pcall(se.JSONDecode, se, Bo)
            local Bo_1 = not Bn_1
            local Bw = if Bo_1 then 1 else 0
            local Bu = 184 * Bw + 2790 * (1 - Bw)
            local Bv = 3178 * Bw + 3403 * (1 - Bw)
            if not ((Bu * 3897 + Bv * 483 + Bu * Bv) % 16777213 == 2836774) then
                Bo_1 = type(Bp_1) ~= "table"
            end
            if not Bo_1 then
                Bo_1 = type(Bp_1.objects) ~= "table"
            end
            if Bo_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #Bp_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local Bn_2 = 0
            for i, v in ipairs(Bp_1.objects) do
                if BF(v) then
                    Bn_2 += 1
                end
            end
            if Bn_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local Bp_2 = Bn_2 == 1 and ""
            local Bt = if Bp_2 then 1 else 0
            local Br = 2775 * Bt + 1048 * (1 - Bt)
            local Bs = 3148 * Bt + 2987 * (1 - Bt)
            if not ((Br * 1094 + Bs * 1815 + Br * Bs) % 16777213 == 707957) then
                Bp_2 = "s"
            end
            Library:Notify(("Imported %d setting%s"):format(Bn_2, Bp_2), 6)
        end)
        SaveManager:LoadAutoloadConfig()
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    BX_6()
end
sA()
