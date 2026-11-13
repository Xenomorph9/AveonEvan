local fns = {}
local Eq_2, Eq_4, Eq_5, Eq_6, Eq_8, Eq_16, Eq_26, RewardsGroup, Eq_46, Eq_55
Eq_2 = nil
Eq_4 = nil
Eq_5 = nil
Eq_8 = nil
local tG
local r4
local sM
local tt
local rM
local st
local ta
local sS
local tz
local sz
local Fishing
local sY
local tF
local sF
local rF
local sm
local s3
local r3
local UpgradesConfig
local ts
local rL
local ss
local s9
local r9
local sR
local ty
local rR
local sy
local tf
local sf
local sX
local rX
local sE
local rE
local tl
local s2
local sl
local r2
local sK
local rK
local sr
local s8
local PlayerData
local r8
local sQ
local rQ
local sx
local te
local se
local sW
local rW
local CodesConfig
local Bait
local rD
local sk
local s1
local r1
local sJ
local tD
local rJ
local sq
local s7
local r7
local sP
local Options
local rP
local sw
local Fish
local sd
local sV
local Toggles
local rV
local sC
local s0
local r0
local sI
local tp
local sp
local FishingObjects
local AutoFishing
local rI
local Events
local sO
local sv
local tc
local ThrowCinematic
local CollectionService
local tB
local Library
local sB
local rO
local si
local s_
local r_
local sH
local to
local so
local s5
local r5
local sN
local rN
local sb
local rT
local th
local tA
local sh
local FishSchool
function fns.fn16()
    return r9("CollectFindTypes")
end
function fns.fn69()
    Library.ScreenGui.Parent = sJ
end
function fns.onRedeemCode()
    local Bc_1
    local Bb_1
    local Ba = Options.CodeText and Options.CodeText.Value
    Bb_1, Bc_1 = sX(Ba)
    Library:Notify(Bc_1)
end
function fns.fn76(bg, bh, ...)
    local u0 = Events.Client(bg)
    local u1 = bh or 5
    return u0:Invoke(u1, ...)
end
function fns.fn103(ce)
    if not ce or not ce.special then
        return false
    end
    if ce.caught or ce.escaped or ce.fighting then
        return false
    end
    if not ce.model or not ce.model.Parent or not ce.model.PrimaryPart then
        return false
    elseif rQ("AutoCollectFinds") then
        return r3(ce)
    else
        local vG_3 = rQ("AutoCollectFish") and not s1()
        return vG_3
    end
end
function fns.fn114(b7)
    local vE = sQ(tD(b7)) and st(tc(b7))
    return vE
end
function fns.fn120()
    if not rQ("AutoBuyUpgrades") then
        return
    end
    if os.clock() - sk < 0.75 then
        return
    end
    sk = os.clock()
    r_()
end
function fns.fn122(ar, as)
    local uK = ar.Price
    local uP = if uK then 1 else 0
    local uN = 3543 * uP + 1814 * (1 - uP)
    local uO = 2479 * uP + 1730 * (1 - uP)
    if not ((uN * 3933 + uO * 3343 + uN * uO) % 16777213 == 14227800) then
        uK = 0
    end
    if uK ~= (as.Price or 0) then
        return (ar.Price or 0) < (as.Price or 0)
    end
    return ar.Name < as.Name
end
function fns.fn126(bk)
    local u3 = Options[bk] and Options[bk].Value
    if type(u3) ~= "table" then
        return nil
    end
    local u3_1 = false
    local u5 = {}
    for k, v in u3 do
        local u4_1 = v == true and type(k) == "string"
        if u4_1 then
            u5[k] = true
            u3_1 = true
        end
    end
    if not u3_1 then
        return nil
    end
    return u5
end
function fns.worker()
    while not Library.Unloaded do
        pcall(sK)
        pcall(tp)
        pcall(s2)
        pcall(sI)
        pcall(sp)
        pcall(si)
        local Bj = rQ("AutoUseBait") or rQ("AutoUseBestBait")
        local Bk = Bj and not rQ("AutoPerfectFishing")
        if Bk then
            pcall(s5)
        end
        task.wait(0.15)
    end
end
function fns.fn138(g5)
    if type(g5) ~= "string" then
        return false, "Enter a code first"
    end
    g5 = string.match(g5, "^%s*(.-)%s*$")
    if g5 == "" then
        return false, "Enter a code first"
    elseif tB(g5) then
        return false, "Already redeemed"
    else
        local zw = pcall(sF, "Codes", g5)
        if not zw then
            return false, "Failed to send code"
        end
        return true, "Sent " .. g5
    end
end
function fns.fn150(bW)
    if type(bW) ~= "table" then
        return "None"
    end
    local vu = type(bW.mutation) == "string" and bW.mutation ~= ""
    if vu then
        return bW.mutation
    end
    local vu_1 = type(bW.pendingMutation) == "string" and bW.pendingMutation ~= ""
    if vu_1 then
        return bW.pendingMutation
    end
    return "None"
end
function fns.fn195(aR, aS)
    return string.format('<font color="%s">%s</font>', aS, aR)
end
function fns.fn209(c_)
    local wb_1
    local v8 = c_.model and c_.model.PrimaryPart
    if not v8 then
        return rI, rI
    end
    local wa = ThrowCinematic.Sub and ThrowCinematic.Sub.FishSchool or FishSchool
    local v8_2 = wa
    if wa then
        wa = v8_2.CatchBandScale
    end
    local v8_3 = wa or 1
    if c_.catchHalf then
        wb_1 = c_.catchHalf * v8_3
    else
        wb_1 = v8.Size * 0.5 * v8_3
    end
    return math.max(wb_1.X, rI), math.max(wb_1.Y, rI)
end
function fns.fn216(d3)
    rV = d3
    if AutoFishing then
        AutoFishing.DrivingThrow = d3
    end
end
function fns.fn236(dY)
    local wN = 0
    if type(dY) ~= "table" then
        return 0
    end
    for k, v in dY do
        if sV(v) then
            wN += 1
        end
    end
    return wN
end
function fns.onBuyBestRodNow()
    if sC() then
        Library:Notify("Bought best affordable rod")
    else
        Library:Notify("No affordable rod")
    end
end
function fns.fn312(aK, aL)
    if setclipboard then
        setclipboard(aK)
    elseif toclipboard then
        toclipboard(aK)
    end
    Library:Notify(aL)
end
function fns.fn316()
    local yz = sS()
    if not yz then
        return false
    end
    local BaitShop = yz.BaitShop
    local yC = BaitShop and BaitShop.Stock or {}
    local yB_1 = yz.Cash or 0
    local yz_1 = nil
    for k, v in tl do
        local yB_2 = (so(yC, v.Name))
        if yB_2 then
            yB_2 = (v.Price or 0) <= yB_1
        end
        if yB_2 then
            local yB_3 = not yz_1
            if not yB_3 then
                yB_3 = (v.Price or 0) > (yz_1.Price or 0)
            end
            if yB_3 then
                yz_1 = v
            end
        end
    end
    if not yz_1 then
        return false
    end
    return pcall(sF, "BaitShop", "Buy", yz_1.Name)
end
function fns.fn323(dD, dE)
    local wC_1
    local wy = math.huge
    local wz
    for k, v in dD do
        if sY(v, dE) then
            local PrimaryPart = v.model.PrimaryPart
            local wA_1
            local wB = PrimaryPart.Position.Y
            wA_1, wC_1 = rP(v)
            local wA_2 = dE <= wB + wC_1 + 1
            local wC_2 = math.abs(wB - dE)
            local wD = wC_2 - (v.markerScore or 0) * 0.01
            if not wA_2 then
                wD += 100
            end
            if wD < wy then
                wy = wD
                wz = v
            end
        end
    end
    return wz
end
function fns.fn414()
    local xy = sS()
    if not xy then
        return false
    end
    local xz = xy.PlaytimeGiftStage or 0
    local Stages = sv.Stages
    if type(Stages) ~= "table" then
        return false
    end
    local xB = Stages[xz]
    local xF = if xB then 1 else 0
    local xD = 3785 * xF + 43 * (1 - xF)
    local xE = 3344 * xF + 3002 * (1 - xF)
    if not ((xD * 2839 + xE * 1008 + xD * xE) % 16777213 == 9996194) then
        xB = Stages[tostring(xz)]
    end
    if not xB then
        return false
    end
    return (xy.Stats and xy.Stats.SecondsPlayed or 0) >= (xy.PlaytimeGiftReadyAt or 0)
end
function fns.fn459()
    if not rQ("AutoSell") then
        return
    end
    if os.clock() - sy < 2 then
        return
    end
    sy = os.clock()
    sw()
end
function fns.fn470()
    if not rQ("AutoBuyBestRod") then
        return
    end
    local Az = if os.clock() - sm < 2 then 1 else 0
    if Az == 1 then
        return
    end
    sm = os.clock()
    sC()
end
function fns.onRenderStepped(j6)
    if Library.Unloaded then
        return
    end
    pcall(rF, j6)
end
function fns.fn490()
    local Character = sP.Character
    local uZ = Character and Character:FindFirstChild("HumanoidRootPart")
    return uZ
end
function fns.fn492(fZ, f_)
    local yt = type(fZ) ~= "table" or type(f_) ~= "string"
    if yt then
        return 0
    end
    local yt_1 = fZ[f_]
    if type(yt_1) == "number" then
        return yt_1
    end
    local yt_2 = fZ[string.gsub(f_, " Bait$", " Orb")]
    if type(yt_2) == "number" then
        return yt_2
    end
    return 0
end
function fns.fn514()
    return sJ
end
function fns.fn534()
    rD()
    r4()
end
function fns.fn536()
    local x7 = sS()
    if not (x7 and x7.Inventory) then
        return nil
    end
    local x8_1 = -1
    local Name
    for k, v in x7.Inventory do
        if v.Type == "Bait" then
            if (v.Data and v.Data.Amount or 1) > 0 then
                local x7_3 = Bait:Get(v.Name, true)
                local x7_4 = x7_3 and x7_3.Price or 0
                if x7_4 > x8_1 then
                    x8_1 = x7_4
                    Name = v.Name
                end
            end
        end
    end
    return Name
end
function fns.fn544(f3, f4)
    if type(f3) ~= "table" then
        return true
    end
    local yv = f3[f4]
    local yw = f3[string.gsub(f4, " Bait$", " Orb")]
    local yx = type(yv) ~= "number" and type(yw) ~= "number"
    if yx then
        return true
    end
    return sO(f3, f4) > 0
end
function fns.onSellAllFish()
    if sw() then
        Library:Notify("Sold fish")
    else
        Library:Notify("No fish to sell")
    end
end
function fns.fn546(bE)
    local vi = type(bE) ~= "table" or not bE.special
    if vi then
        return nil
    end
    local vi_1 = FishingObjects:Get(bE.name, true)
    return vi_1 and vi_1.Type or nil
end
function fns.fn556()
    return PlayerData:Get()
end
function fns.fn585(gY)
    local zt = sS()
    local zu = zt and zt.Codes
    if type(zu) ~= "table" then
        return false
    end
    local zu_1 = CodesConfig.Normalize(gY)
    return zu[zu_1] == true
end
function fns.fn649(b3)
    local vB = th()
    if not vB then
        return true
    end
    return vB[b3 or "None"] == true
end
function fns.fn670()
    local An = if os.clock() - r2 < 2 then 1 else 0
    if An == 1 then
        return false
    end
    local Ah = tf()
    if not Ah then
        return false
    end
    local Ai = rW()
    if not Ai then
        return false
    end
    if (Ah.Position - Ai.Position).Magnitude < 10 and Fishing.CanThrow then
        return true
    end
    r2 = os.clock()
    Ah.CFrame = Ai
    Ah.AssemblyLinearVelocity = Vector3.zero
    return true
end
function fns.fn675()
    if os.clock() - rO < 1.25 then
        return
    end
    local xG = sS()
    if not xG then
        return
    end
    local xH = false
    local xI = rQ("AutoClaimBigFish") and rJ()
    if xI then
        sF("NextDayReward")
        xH = true
    end
    if rQ("AutoClaimFreeRewards") then
        if xG.IsInGroup == true and xG.IsGroupRewardClaimed ~= true then
            sF("GroupReward")
            xH = true
        end
        if te() then
            sF("PlaytimeGift", "Claim")
            xH = true
        end
    end
    if xH then
        rO = os.clock()
    end
end
function fns.fn677()
    local yP = sS()
    if not yP then
        return false
    end
    local yR = yP.Rods or {}
    local yR_1 = yP.Cash or 0
    local yP_1 = nil
    for k, v in sE do
        local yR_2 = not yR[v.Name]
        if yR_2 ~= false then
            yR_2 = (v.Price or 0) <= yR_1
        end
        if yR_2 then
            local yR_3 = not yP_1
            if not yR_3 then
                yR_3 = (v.Price or 0) > (yP_1.Price or 0)
            end
            if yR_3 then
                yP_1 = v
            end
        end
    end
    if not yP_1 then
        return false
    end
    local yQ_2 = pcall(sF, "RodShop", "Buy", yP_1.Name)
    if yQ_2 then
        task.wait(0.2)
        pcall(sF, "RodShop", "Equip", yP_1.Name)
        task.wait(0.1)
        s9()
    end
    return yQ_2
end
function fns.fn742(dg, dh)
    local wp_1
    local wo_1
    local wt = if not sV(dg) then 1 else 0
    if wt == 1 then
        return false
    end
    local PrimaryPart = dg.model.PrimaryPart
    wo_1, wp_1 = rP(dg)
    return math.abs(dh - PrimaryPart.Position.Y) <= wp_1 + rN
end
function fns.fn758()
    local Character = sP.Character
    local uW = Character and Character:FindFirstChildOfClass("Humanoid")
    return uW
end
function fns.fn759()
    local zC_1
    local zB_1
    zB_1, zC_1 = pcall(ss, "SellAll", 5, "Fish")
    return zB_1 and zC_1 and zC_1.Amount and zC_1.Amount > 0
end
function fns.fn762(bK)
    local vl = Eq_2()
    if not vl then
        return true
    end
    local vm = sz(bK)
    if type(vm) ~= "string" then
        return false
    end
    return vl[vm] == true
end
function fns.fn773()
    local xZ = sS()
    local xZ_1 = xZ and xZ.ActiveBaits
    if type(xZ_1) ~= "table" then
        return false
    end
    for k, v in xZ_1 do
        local xZ_2 = tonumber(v) or 0
        if xZ_2 > 0 then
            return true
        end
    end
    return false
end
function fns.fn789()
    local AI = if not rQ("AutoUseBait") then 1 else 0
    if AI == 1 then
        return
    end
    if os.clock() - r8 < 0.75 then
        return
    end
    if sN() then
        return
    end
    local AC = Options.UseBaitName and Options.UseBaitName.Value
    local AC_1 = AC == ""
    local AE = type(AC) ~= "string" or AC_1
    if AE then
        return
    end
    if rK(AC) then
        r8 = os.clock()
    end
end
function fns.fn826()
    local zX = 0
    local zY = 0
    local zZ
    local zZ_4
    local z_
    for k, v in CollectionService:GetTagged("Throw") do
        if v:IsDescendantOf(s_) then
            for i, descendant in v:GetDescendants() do
                if descendant:IsA("BasePart") then
                    if descendant.Size.Y <= 1 then
                        local z0_1 = descendant.Size.X * descendant.Size.Z
                        if z0_1 > zY then
                            zY = z0_1
                            zZ = descendant
                        end
                    else
                        local z0_2 = descendant.Size.X * descendant.Size.Y * descendant.Size.Z
                        if z0_2 > zX then
                            zX = z0_2
                            z_ = descendant
                        end
                    end
                end
            end
        end
    end
    local zY_1 = zZ or z_
    if not zY_1 then
        local Map = s_:FindFirstChild("Map")
        local zZ_1 = Map and Map:FindFirstChild("ThrowGuide")
        local zX_3 = zZ_1
        if zZ_1 then
            zZ_1 = zX_3:IsA("BasePart")
        end
        if zZ_1 then
            return zX_3.CFrame * CFrame.new(0, 5, -25)
        end
        return nil
    end
    local zX_4 = zY_1.Position + Vector3.new(0, math.max(zY_1.Size.Y * 0.5, 1) + 3, 0)
    local Map = s_:FindFirstChild("Map")
    local zZ_2 = Map and Map:FindFirstChild("ThrowGuide")
    local zY_3 = zZ_2
    if zZ_2 then
        zZ_2 = zY_3.CFrame.LookVector * Vector3.new(1, 0, 1)
    end
    local zY_4 = zZ_2 or Vector3.new(0, 0, -1)
    if zY_4.Magnitude < 0.001 then
        zZ_4 = Vector3.new(0, 0, -1)
    else
        zZ_4 = zY_4.Unit
    end
    return CFrame.lookAt(zX_4, zX_4 + zZ_4)
end
function fns.fn836()
    return rK(sd())
end
function fns.fn854()
    local xr = sS()
    if not xr or xr.IsNextDayRewardClaimed == true then
        return false
    end
    local xs_1 = xr.NextDayRewardAt or 0
    local xs_2 = sB.WaitSeconds or 0
    if xs_1 == 0 then
        return false
    end
    return math.max(xs_2 - (sq() - xs_1), 0) <= 0
end
function fns.fn861()
    local zl = false
    for k, v in tA() do
        if sW(v) then
            zl = true
            task.wait(0.15)
        end
    end
    return zl
end
function fns.fn867()
    if not rQ("AutoUseBestBait") then
        return
    end
    if os.clock() - r8 < 0.75 then
        return
    end
    if sN() then
        return
    end
    if s3() then
        r8 = os.clock()
    end
end
function fns.fn895()
    local A3 = Options.AutoFavourite and Options.AutoFavourite.Value
    local A3_1 = A3 ~= ""
    local A5 = type(A3) == "string" and A3_1
    if A5 then
        pcall(sF, "Lock", "AutoLock", A3)
    end
end
function fns.fn909(bd, ...)
    return Events.Client(bd):Fire(true, ...)
end
function fns.fn943(bQ)
    if type(bQ) ~= "table" then
        return nil
    end
    local vr = type(bQ.rarity) == "string" and bQ.rarity ~= ""
    if vr then
        return bQ.rarity
    elseif type(bQ.name) == "string" then
        local vr_1 = Fish:Get(bQ.name, true)
        local vs = vr_1 and type(vr_1.Rarity) == "string"
        if vs then
            bQ.rarity = vr_1.Rarity
            return vr_1.Rarity
        end
        return nil
    else
        return nil
    end
end
function fns.fn958(ea)
    if not rR() then
        if not ThrowCinematic.Active then
            r0 = nil
            sf(false)
        end
        return
    end
    if not ThrowCinematic.Active then
        r0 = nil
        sf(false)
        return
    end
    sf(true)
    local w0 = ThrowCinematic.Sub and ThrowCinematic.Sub.CatchMinigame
    local w1 = w0
    if w0 then
        w0 = w1.IsActive
    end
    if w0 then
        w0 = w1:IsActive()
    end
    if w0 then
        return
    end
    local w0_1 = not ThrowCinematic.Catchable or ThrowCinematic.CatchWindowOver
    local xk = if w0_1 then 1 else 0
    local xi = 466 * xk + 2682 * (1 - xk)
    local xj = 3500 * xk + 3210 * (1 - xk)
    if not ((xi * 691 + xj * 1770 + xi * xj) % 16777213 == 8148006) then
        w0_1 = ThrowCinematic.ReelRequested
    end
    if w0_1 then
        return
    end
    ThrowCinematic.AimLocked = true
    local w1_1 = ThrowCinematic.Sub and ThrowCinematic.Sub.FishSchool or FishSchool
    local w0_3 = w1_1
    if w1_1 then
        w1_1 = w0_3.Fish
    end
    local w2 = w1_1
    local HangPoint = ThrowCinematic.HangPoint
    local ActiveLanding = ThrowCinematic.ActiveLanding
    if not (w2 and HangPoint and ActiveLanding) then
        return
    end
    if ThrowCinematic:GetBaitCapacity() <= 0 then
        ThrowCinematic:RequestReel()
        return
    end
    local w4_1 = sH(w2)
    if w4_1 <= 0 then
        local w4_2 = rQ("AutoStopWhenEmpty") and #w2 > 0
        if w4_2 then
            ThrowCinematic.LastFishAboveAt = 0
            ThrowCinematic:RequestReel()
        end
        return
    end
    r0 = Eq_8(w2, HangPoint.Y)
    local w2_1 = r0
    if not w2_1 then
        return
    end
    local PrimaryPart = w2_1.model.PrimaryPart
    if not PrimaryPart then
        return
    end
    local Map = s_:FindFirstChild("Map")
    local w6 = Map and Map:FindFirstChild("ThrowGuide")
    local w5_2 = w6
    if w6 then
        w6 = w5_2.CFrame.LookVector
    end
    local w5_3 = w6 or Vector3.new(0, 0, -1)
    local w5_4 = s0(w2_1, ea)
    local w7 = Eq_4(w5_4, ActiveLanding, w5_3)
    local w8 = ThrowCinematic.AimOffset or 0
    local w8_1 = w7 - w8
    local w7_1 = r1(w2_1, HangPoint.Y)
    local w2_2 = w7_1 or math.abs(w8_1) <= 4
    local xa = w2_2 and 1
    local w2_3 = xa or math.clamp(ea * 34, 0, 1)
    ThrowCinematic.AimOffset = w8 + w8_1 * w2_3
    local w2_4 = math.abs(HangPoint.Y - w5_4.Y) <= 8
    if w7_1 or w2_4 then
        local w1_4 = Vector3.new(ActiveLanding.X, w5_4.Y, ActiveLanding.Z) + w5_3 * ThrowCinematic.AimOffset
        ThrowCinematic.HangPoint = w1_4
        ThrowCinematic.BaitTarget = w1_4
        ThrowCinematic.LastFishAboveAt = os.clock()
        local ActiveBait = ThrowCinematic.ActiveBait
        if ActiveBait and ActiveBait.Parent then
            ActiveBait.CFrame = CFrame.new(w1_4)
            ThrowCinematic.LastBaitWrite = w1_4
        end
        ta(w0_3, w1_4)
        ta(w0_3, w5_4)
        ta(w0_3, PrimaryPart.Position)
    end
end
function fns.fn962(aU, aV, aW)
    return string.format("<b>%s</b> %s %s", aU, sx("-", "#5a6070"), sx(aV, aW))
end
function fns.fn976(ji)
    local DiscordGroup = ji:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = sM })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = sM })
end
function fns.onBuyBestBaitNow()
    if rL() then
        Library:Notify("Bought best affordable bait")
    else
        Library:Notify("No affordable bait")
    end
end
function fns.fn1037(aZ)
    local uS = Toggles[aZ]
    return uS ~= nil and uS.Value == true
end
function fns.fn1039(hk)
    local zO = Fishing:HUD()
    local zP = zO and zO.GetHookSteps and zO:GetHookSteps()
    local zP_1 = zP or 21
    if zP_1 < 2 then
        return false
    end
    local zO_2 = 1 + hk * (zP_1 - 1)
    return zO_2 >= 9 and zO_2 < 12
end
function fns.fn1043(b_)
    local vw = to()
    if not vw then
        return true
    elseif type(b_) ~= "string" then
        return false
    else
        return vw[b_] == true
    end
end
function fns.fn1050()
    if not rQ("AutoPerfectFishing") then
        return
    end
    if sR then
        return
    end
    if ThrowCinematic.Active or Fishing.Charging then
        sf(true)
        return
    end
    if rV then
        sf(false)
        se = os.clock() + 1
        return
    end
    if os.clock() < se then
        return
    end
    if Fishing:UIOwnsScreen() then
        return
    end
    sR = true
    task.spawn(function()
        local AX_1
        local AW_1
        AX_1, AW_1 = pcall(function()
            if not Fishing.CanThrow then
                rX()
                task.wait(0.4)
            end
            local AM = rQ("AutoUseBait") or rQ("AutoUseBestBait")
            if AM then
                s5()
                task.wait(0.15)
            end
            local AQ = 1
            while AQ <= 5 do
                local AM_1 = s9() and Fishing:IsRodHeld()
                if AM_1 then
                    break
                end
                task.wait(0.1)
                AQ += 1
            end
            if not Fishing:IsRodHeld() then
                return
            end
            if not Fishing:CanStartThrow() then
                if not Fishing.CanThrow then
                    rX()
                end
                return
            end
            if ThrowCinematic:GetBaitCapacity() <= 0 then
                if rQ("AutoSell") then
                    sw()
                    task.wait(0.25)
                end
                if ThrowCinematic:GetBaitCapacity() <= 0 then
                    return
                end
            end
            sf(true)
            Fishing:StartHook()
            if not Fishing.Charging then
                task.wait(0.2)
                if Fishing:CanStartThrow() then
                    Fishing:StartHook()
                end
            end
            if not Fishing.Charging then
                sf(false)
                return
            end
            s8()
        end)
        sR = false
        if not AX_1 then
            sf(false)
        end
    end)
end
function fns.fn1053(dv, dw)
    local Position = dv.model.PrimaryPart.Position
    local dir = dv.dir
    local ww = typeof(dir) ~= "Vector3" or dir.Magnitude < 0.001
    if ww then
        return Position
    end
    local ww_1 = math.clamp(dw, 0, 0.05) * 28
    return Position + dir.Unit * ww_1
end
function fns.fn1067()
    local yi = sS()
    local yj_1 = yi and yi.RodEquipped or "Wooden Rod"
    local Character = sP.Character
    local yk = Character and Character:FindFirstChildOfClass("Humanoid")
    if not yk then
        return false
    end
    local Tool = Character:FindFirstChildOfClass("Tool")
    if Tool and Tool.Name == yj_1 then
        return true
    end
    local Backpack = sP:FindFirstChild("Backpack")
    local yk_2 = Backpack and Backpack:FindFirstChild(yj_1)
    local yj_2 = yk_2 and yk_2:IsA("Tool")
    if yj_2 then
        yk:EquipTool(yk_2)
        return true
    end
    return AutoFishing:EquipRod()
end
function fns.fn1081(co)
    if not co or co.caught or co.escaped or co.fighting then
        return false
    end
    if not co.model or not co.model.Parent or not co.model.PrimaryPart then
        return false
    elseif co.special then
        return tF(co)
    elseif not rQ("AutoCollectFish") then
        return false
    else
        return sb(co)
    end
end
function fns.onUseBestBaitNow()
    if sN() then
        Library:Notify("Bait uses still remaining")
        return
    end
    local Be = sd()
    if rK(Be) then
        Library:Notify("Used " .. tostring(Be))
    else
        Library:Notify("No bait in inventory")
    end
end
function fns.fn1090()
    local zI = Fishing:HUD()
    local zJ = zI and zI.GetHookSteps and zI:GetHookSteps()
    local zI_1 = zJ
    local zN = if zI_1 then 1 else 0
    local zL = 1662 * zN + 1933 * (1 - zN)
    local zM = 2277 * zN + 1219 * (1 - zN)
    if not ((zL * 1080 + zM * 2294 + zL * zM) % 16777213 == 10802772) then
        zI_1 = 21
    end
    local zJ_1 = zI_1
    if zJ_1 < 2 then
        return 0.5
    end
    return math.clamp(9.5 / (zJ_1 - 1), 0, 1)
end
function fns.fn1102()
    return r9("CollectRarities")
end
function fns.fn1115(fR)
    local yq = fR == ""
    local yr = type(fR) ~= "string" or yq
    if yr then
        return false
    end
    if ThrowCinematic.Active or Fishing.Charging then
        return false
    end
    local yq_2 = tt(fR)
    if not yq_2 then
        return false
    end
    local yr_1 = pcall(sF, "ConsumeBait", yq_2)
    if yr_1 then
        s9()
    end
    return yr_1
end
function fns.fn1116(aH)
    if aH then
        ts[#ts + 1] = aH
    end
    return aH
end
local function fn1121()
    local vg = to() ~= nil or th() ~= nil
    return vg
end
local function fn1125(ak, al)
    if (ak.Price or 0) ~= (al.Price or 0) then
        return (ak.Price or 0) < (al.Price or 0)
    end
    return ak.Name < al.Name
end
local function fn1135()
    local wW = (rQ("AutoCollectFish"))
    local w_ = if wW then 1 else 0
    local wY = 968 * w_ + 676 * (1 - w_)
    local wZ = 2718 * w_ + 113 * (1 - w_)
    if not ((wY * 2102 + wZ * 1737 + wY * wZ) % 16777213 == 9386926) then
        wW = rQ("AutoCollectFinds")
    end
    return wW
end
local function fn1149(fa)
    local xK = sS()
    if not (xK and xK.Inventory) then
        return nil
    end
    for k, v in xK.Inventory do
        if v.Type == "Bait" and v.Name == fa then
            return k
        end
    end
    return nil
end
local function fn1155()
    return r9("CollectMutations")
end
local function fn1161(c8, c9)
    local wi_1
    local wh_1
    if not sV(c8) then
        return false
    end
    local PrimaryPart = c8.model.PrimaryPart
    wh_1, wi_1 = rP(c8)
    local wh_2 = PrimaryPart.Position.Y
    if c9 <= wh_2 + wi_1 + 1 then
        return true
    end
    return wh_2 < c9 and c9 - wh_2 <= rT
end
local function fn1175()
    local Av = if not rQ("AutoBuyBait") then 1 else 0
    if Av == 1 then
        return
    end
    if os.clock() - sr < 1 then
        return
    end
    sr = os.clock()
    rL()
end
local function fn1228()
    if not Fishing.Charging then
        return
    end
    local zU = os.clock() + 2
    while true do
        local zV = Fishing.Charging and os.clock() < zU
        if zV then
            local zV_1 = Fishing.HookT or 0
            if Eq_5(zV_1) then
                Fishing:StopHook()
                return
            end
            ty.RenderStepped:Wait()
            continue
        end
        break
    end
    if Fishing.Charging then
        Fishing.HookT = r7()
        Fishing:StopHook()
    end
end
local function fn1246(cE, cF)
    local vW_1
    if not sl() then
        return tG(cE, cF)
    end
    if not (cE.Fish and cE.Cinematic and cE.Cinematic.Catchable) then
        return
    end
    local vS_1 = cE.Cinematic:GetBaitCapacity()
    local vT = cE.Cinematic.Sub and cE.Cinematic.Sub.CatchMinigame
    for k, v in cE.Fish do
        local vT_1 = vS_1 <= cE.Cinematic:CaughtFishCount() and not v.special
        if not vT_1 then
            if not not sV(v) then
                local PrimaryPart = v.model.PrimaryPart
                local vV = PrimaryPart.CFrame:PointToObjectSpace(cF)
                if v.catchHalf then
                    vV -= v.catchOffset
                    vW_1 = v.catchHalf * (cE.CatchBandScale or 1)
                else
                    vW_1 = PrimaryPart.Size * 0.5 * (cE.CatchBandScale or 1)
                end
                local vT_3 = Vector3.new(math.max(vW_1.X, rI), math.max(vW_1.Y, rI), math.max(vW_1.Z, rI))
                local vW_2 = math.abs(vV.X) <= vT_3.X and math.abs(vV.Y) <= vT_3.Y and math.abs(vV.Z) <= vT_3.Z
                if vW_2 then
                    if v.special then
                        cE:CompleteGrab(v)
                    else
                        local vT_4 = vT and vT:Offer(v)
                        if not vT_4 then
                            cE:CompleteGrab(v)
                        end
                    end
                end
            end
        end
    end
end
local function fn1257()
    local vK = rQ("AutoCollectFinds") and not rQ("AutoCollectFish")
    if vK then
        return true
    end
    local vK_1 = rQ("AutoCollectFish") and s1()
    if vK_1 then
        return true
    end
    return false
end
local function onUseBaitNow()
    if sN() then
        Library:Notify("Bait uses still remaining")
        return
    end
    local Bg = Options.UseBaitName and Options.UseBaitName.Value
    if rK(Bg) then
        Library:Notify("Used " .. tostring(Bg))
    else
        Library:Notify("Bait not found")
    end
end
local function fn1266(gH)
    local zd = sS()
    if not zd then
        return false
    end
    local ze = UpgradesConfig[gH]
    if not ze then
        return false
    end
    local zg = zd.Upgrades and zd.Upgrades[gH] or 0
    if zg >= (ze.MaxLevel or 0) then
        return false
    end
    local ze_1 = UpgradesConfig.GetPrice(gH, zg)
    if (zd.Cash or 0) < (ze_1 or math.huge) then
        return false
    end
    return pcall(sF, "Upgrades", "Buy", gH)
end
local function fn1271()
    local y4 = Options.BuyUpgrades and Options.BuyUpgrades.Value
    if type(y4) ~= "table" then
        return sh
    end
    local y4_1 = {}
    for k, v in sh do
        if y4[v] then
            y4_1[#y4_1 + 1] = v
        end
    end
    if #y4_1 == 0 then
        return sh
    end
    return y4_1
end
local function fn1282()
    local Bn = hookfunction ~= nil
    local Bo = hookmetamethod ~= nil
    local Bp = getrawmetatable ~= nil
    local Bq = setrawmetatable ~= nil
    local Br = getgc ~= nil
    local Bs = getgenv ~= nil
    local Bt = getreg ~= nil
    local Bu = getconnections ~= nil
    local Bv = firesignal ~= nil
    local Bw = getcallbackvalue ~= nil
    local Bx = setclipboard ~= nil
    local By = getcustomasset ~= nil
    local Bz = getnamecallmethod ~= nil
    local BA = isexecutorclosure ~= nil
    local BB = fireproximityprompt ~= nil
    local BC = firetouchinterest ~= nil
    local BD = WebSocket ~= nil
    local BE = readfile ~= nil
    local BF = writefile ~= nil
    local BH = (request or http_request) ~= nil
    local BJ = (debug and debug.getupvalues) ~= nil
    local BL = (debug and debug.setupvalue) ~= nil
    local BM = 0
    local BN = { Bn, Bo, Bp, Bq, Br, Bs, Bt, Bu, Bv, Bw, Bx, By, Bz, BA, BB, BC, BD, BE, BF, BH, BJ, BL }
    for k, v in BN do
        if v then
            BM += 1
        end
    end
    local Bn_1 = BM / #BN
    if Bn_1 >= 0.9 then
        return sx("Full Support", rM)
    elseif Bn_1 >= 0.6 then
        return sx("Half Support", rE)
    else
        return sx("Low Support", tz)
    end
end
local function fn1300()
    s7(r5, "Copied Discord invite to clipboard")
end
local function fn1302(dq, dr, ds)
    return math.clamp(((dq - dr) * Vector3.new(1, 0, 1)):Dot(ds), -50, 50)
end
rD = nil
rE = nil
rF = nil
Eq_5 = nil
rI = nil
rJ = nil
rK = nil
rL = nil
rM = nil
rN = nil
rO = nil
rP = nil
rQ = nil
rR = nil
rT = nil
Library = nil
rV = nil
rW = nil
rX = nil
FishSchool = nil
r_ = nil
r0 = nil
r1 = nil
r2 = nil
r3 = nil
r4 = nil
r5 = nil
AutoFishing = nil
r7 = nil
r8 = nil
r9 = nil
sb = nil
ThrowCinematic = nil
sd = nil
se = nil
sf = nil
Fishing = nil
sh = nil
si = nil
sk = nil
sl = nil
sm = nil
Eq_8 = nil
so = nil
local rC, rH, rS, rY, sa, sj
sp = nil
sq = nil
sr = nil
ss = nil
st = nil
sv = nil
sw = nil
sx = nil
sy = nil
sz = nil
local sA
sB = nil
sC = nil
CodesConfig = nil
sE = nil
sF = nil
Eq_2 = nil
sH = nil
sI = nil
sJ = nil
sK = nil
UpgradesConfig = nil
sM = nil
sN = nil
sO = nil
sP = nil
sQ = nil
sR = nil
sS = nil
CollectionService = nil
sV = nil
sW = nil
sX = nil
sY = nil
s_ = nil
s0 = nil
s1 = nil
s2 = nil
s3 = nil
s5 = nil
FishingObjects = nil
s7 = nil
s8 = nil
s9 = nil
ta = nil
local su, sT, sZ, s4, tb
tc = nil
Fish = nil
te = nil
tf = nil
th = nil
Bait = nil
tl = nil
Eq_4 = nil
to = nil
tp = nil
PlayerData = nil
ts = nil
tt = nil
Events = nil
Options = nil
ty = nil
tz = nil
tA = nil
tB = nil
Toggles = nil
tD = nil
tF = nil
tG = nil
local tg, ti, tj, tm, tq, tu, tx, tE, tH, SaveManager
tg = nil
ti = nil
tj = nil
tm = nil
tq = nil
tu = nil
tx = nil
tE = nil
tH = nil
SaveManager = nil
rC, Eq_26, ty, tu, tq, tj, ti, tb, s4, s_, CollectionService, sP, sJ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Eq_34 = 17
repeat
    Eq_16 = (Eq_34 * 1 + 1) % 5 + 1
    if Eq_16 <= 3 then
        if Eq_16 <= 2 then
            if Eq_16 <= 1 then
                if Eq_34 * 116723943 + 11 + 1 <= Eq_34 * 116723943 + 11 + 1 + 1 then
                    tj = game:GetService("HttpService")
                    ti = game:GetService("GuiService")
                else
                    ti = game:GetService("HttpService")
                    tj = game:GetService("GuiService")
                end
                Eq_34 = (Eq_34 + 6) % 40
            else
                Eq_6 = {
                    "xlhbyh",
                    "ureelfyd",
                    "kybcfqy",
                    "mirkrw",
                    "sunmcmexxogs",
                    "kbbzjjp",
                    "zbwdyppodlak",
                    "gnlct",
                    "xlsfvzzblz",
                    "oqexknolp",
                    "pxdqdajv"
                }
                if Eq_6[(Eq_34 * 56 + 70) % 11 + 1] < Eq_6[(Eq_34 * 56 + 70) % 11 + 1] then
                    s4 = game:GetService("TeleportService")
                    s_ = game:GetService("CoreGui")
                    tb = game:GetService("Workspace")
                else
                    tb = game:GetService("TeleportService")
                    s4 = game:GetService("CoreGui")
                    s_ = game:GetService("Workspace")
                end
                Eq_34 = (Eq_34 + 36) % 40
            end
        else
            Eq_6 = {
                "julku",
                "etbtismw",
                "whoidkgqv",
                "gwwnkkwuhtj",
                "pgwobccuxgf",
                "klbmbpr",
                "efycelmvsttq",
                "vorby",
                "btcoueppwjl",
                "lnzc",
                "hunjug",
                "vlphm",
                "lkzqybmwfgd",
                "jbxmbvkqdekx",
                "krwrm"
            }
            if Eq_6[(Eq_34 * 5 + 68) % 15 + 1] < Eq_6[(Eq_34 * 5 + 68) % 15 + 1] then
                sJ = game:GetService("CollectionService")
                rC = CollectionService.LocalPlayer
                sP = rC:WaitForChild("PlayerGui")
            else
                CollectionService = game:GetService("CollectionService")
                sP = rC.LocalPlayer
                sJ = sP:WaitForChild("PlayerGui")
            end
            Eq_34 = (Eq_34 + 36) % 40
        end
    elseif Eq_16 <= 4 then
        Eq_16 = {
            "mdvtupccpof",
            "btheqw",
            "dvkya",
            "cnftgxdnyf",
            "fcnmeehddf",
            "kgfaksh",
            "hmn",
            "vqmwycntvn",
            "uvb",
            "prszqsz",
            "pnhpg",
            "kikjepem",
            "pthlmsjcdu",
            "lrsz",
            "acnssj"
        }
        if Eq_16[(Eq_34 * 61 + 20) % 15 + 1] <= Eq_16[(Eq_34 * 61 + 20) % 15 + 1] then
            rC = game:GetService("Players")
        else
            tb = game:GetService("Players")
        end
        Eq_34 = (Eq_34 + 31) % 40
    else
        if (Eq_34 * 3 + 7) * 21 % 4 == ((Eq_34 * 3 + 7) * 21 + 0) % 4 then
            Eq_26 = game:GetService("ReplicatedStorage")
            ty = game:GetService("RunService")
            tu = game:GetService("UserInputService")
            tq = game:GetService("VirtualUser")
        else
            ty = game:GetService("ReplicatedStorage")
            tq = game:GetService("RunService")
            Eq_26 = game:GetService("UserInputService")
            tu = game:GetService("VirtualUser")
        end
        Eq_34 = (Eq_34 + 21) % 40
    end
until (Eq_34 * 29 + 7) % 40 == 30
if getgenv then
    sA, Eq_16 = nil, nil
    Eq_34 = 10
    repeat
        Eq_6 = (Eq_34 * 1 + 0) % 2 + 1
        if Eq_6 <= 1 then
            Eq_6 = (vector.create((Eq_34 * 7 + 4) % 11 + 1, (Eq_34 * 4 + 9) % 13 + 1, (Eq_34 * 12 + 9) % 17 + 1))
            Eq_55 = (vector.create((Eq_34 * 7 + 1) % 11 + 1, (Eq_34 * 11 + 4) % 13 + 1, (Eq_34 * 4 + 1) % 17 + 1))
            local FB = vector.dot(Eq_6, Eq_55)
            if FB * FB <= vector.dot(Eq_6, Eq_6) * vector.dot(Eq_55, Eq_55) then
                getgenv().gethui = fns.fn514
                sA = getgenv().__OuroborosDeepFishingLib
            else
                getgenv().gethui = fns.fn514
                Eq_16 = getgenv().__OuroborosDeepFishingLib
            end
            Eq_34 = (Eq_34 + 9) % 16
        else
            Eq_6 = (vector.create((Eq_34 * 3 + 3) % 11 + 1, (Eq_34 * 8 + 2) % 13 + 1, (Eq_34 * 12 + 13) % 17 + 1))
            Eq_55 = (vector.create((Eq_34 * 4 + 6) % 11 + 1, (Eq_34 * 11 + 1) % 13 + 1, (Eq_34 * 8 + 4) % 17 + 1))
            Eq_46 = (vector.create((Eq_34 * 2 + 7) % 11 + 1, (Eq_34 * 7 + 10) % 13 + 1, (Eq_34 * 11 + 2) % 17 + 1))
            if vector.dot(vector.cross(Eq_6, Eq_55), Eq_46) == vector.dot(vector.cross(Eq_55, Eq_46), Eq_6) + 3 then
                sA = Eq_16
            else
                Eq_16 = sA
            end
            Eq_34 = (Eq_34 + 11) % 16
        end
    until (Eq_34 * 5 + 3) % 16 == 9
    if Eq_16 then
        Eq_16 = sA.Unload
    end
    if Eq_16 then
        pcall(function()
            sA:Unload()
        end)
    end
end
pcall(function()
    gethui = function()
        return sJ
    end
end)
if setthreadidentity then
    setthreadidentity(8)
end
sa, r5, rY, rS, rM, rH, rE, tE, tz, Events, PlayerData, Bait, Fish, FishingObjects, UpgradesConfig, CodesConfig, sB, sv, sq, Fishing, ThrowCinematic, AutoFishing, FishSchool = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
sa = "Deep Fishing"
r5 = "https://discord.gg/synapsex"
rY = "https://rscripts.net/@Ouroboros"
rS = "https://ouroboros-hub-rbx.web.app/"
rM = "#7fd47f"
rH = "#6ec1ff"
rE = "#e8a34d"
tE = "#8b93a3"
tz = "#e05a5a"
Events = require(Eq_26.Shared.Events)
PlayerData = require(Eq_26.Shared.PlayerData)
Bait = require(Eq_26.Shared.Content.Item.Bait)
local Eq_37 = require(Eq_26.Shared.Content.Item.Rod)
Fish = require(Eq_26.Shared.Content.Item.Fish)
FishingObjects = require(Eq_26.Shared.Content.FishingObjects)
Eq_6 = require(Eq_26.Shared.Config.AutoDeleteConfig)
Eq_55 = require(Eq_26.Shared.Modules.AutoDelete)
Eq_46 = require(Eq_26.Shared.Modules.Lock)
UpgradesConfig = require(Eq_26.Shared.Config.UpgradesConfig)
if (Eq_6 or (CodesConfig or 54)) and (not CodesConfig or 54 or (Eq_6 or 54)) and not ((Eq_6 or (CodesConfig or 54)) and (not CodesConfig or 54 or (Eq_6 or 54))) then
    sB = require(CodesConfig.Shared.Config.CodesConfig)
    sq = require(CodesConfig.Shared.Config.NextDayRewardConfig)
    require(CodesConfig.Shared.Config.PlaytimeGiftConfig)
    sv = require(CodesConfig.Shared.Utils.Common.TimeNow)
else
    CodesConfig = require(Eq_26.Shared.Config.CodesConfig)
    sB = require(Eq_26.Shared.Config.NextDayRewardConfig)
    sv = require(Eq_26.Shared.Config.PlaytimeGiftConfig)
    sq = require(Eq_26.Shared.Utils.Common.TimeNow)
end
Eq_34 = sP.PlayerScripts:WaitForChild("Client"):WaitForChild("Controllers")
Fishing = require(Eq_34:WaitForChild("Fishing"))
ThrowCinematic = require(Eq_34:WaitForChild("ThrowCinematic"))
AutoFishing = Fishing.AutoFishing
FishSchool = require(Eq_34:WaitForChild("ThrowCinematic"):WaitForChild("FishSchool"))
local Eq_28 = {}
for k, v in Eq_6.Rarities do
    Eq_28[#Eq_28 + 1] = v
end
Eq_34 = { "None" }
for k, v in Eq_55.MutationKeys() do
    Eq_34[#Eq_34 + 1] = v
end
tl = nil
Eq_55 = { "Scroll", "Chest", "Cage", "Junk" }
Eq_6 = Eq_46.Options()
tl = {}
Eq_16 = {}
for k, v in Bait:GetCollection() do
    tl[#tl + 1] = v
end
Eq_26 = 2
repeat
    local Gr = bit32.rrotate(bit32.bxor(bit32.lrotate(Eq_26, 26), string.byte(tostring(Eq_26))), 13)
    if bit32.bxor(bit32.lrotate(bit32.bxor(Gr, 1522611049), 22), 3663114316) == bit32.lrotate(Gr, 22) then
        table.sort(tl, fn1125)
    else
        table.sort(tl, fn1125)
    end
    Eq_26 = (Eq_26 + 2) % 8
until (Eq_26 * 3 + 7) % 8 == 3
for k, v in tl do
    Eq_16[#Eq_16 + 1] = v.Name
end
sE = {}
for k, v in Eq_37:GetCollection() do
    sE[#sE + 1] = v
end
table.sort(sE, fns.fn122)
sh = {}
for k, v in UpgradesConfig.Order do
    sh[#sh + 1] = v
end
Library, SaveManager, Toggles, Options = nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
pcall(fns.fn69)
Eq_37 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
if getgenv then
    getgenv().__OuroborosDeepFishingLib = Library
end
ts, rT, rN, rI, tm, s7, sM, sx, sj, rQ, tx, tf, sS, sF, ss, r9, to, th, s1, Eq_2, sz, r3, tD, tc, sQ, st, sb, tF, sV, sl = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
ts = {}
tm = fns.fn1116
s7 = fns.fn312
sM = fn1300
sx = fns.fn195
sj = fns.fn962
rQ = fns.fn1037
if (Eq_2 or not s1 or (s1 or Eq_2)) and (not s1 or s1 or (not s1 or s1)) and (s1 and not s1 or not s1 and not s1 or not s1 and s1 and (Eq_2 or s1)) and ((not Eq_2 and not s1 or not Eq_2 and s1 or (not s1 or not s1 or (not s1 or s1))) and ((s1 or s1) and (not Eq_2 and s1) or (not s1 or not Eq_2) and (not s1 or s1))) or not ((Eq_2 or not s1 or (s1 or Eq_2)) and (not s1 or s1 or (not s1 or s1)) and (s1 and not s1 or not s1 and not s1 or not s1 and s1 and (Eq_2 or s1)) and ((not Eq_2 and not s1 or not Eq_2 and s1 or (not s1 or not s1 or (not s1 or s1))) and ((s1 or s1) and (not Eq_2 and s1) or (not s1 or not Eq_2) and (not s1 or s1)))) then
    tx = fns.fn758
    tf = fns.fn490
else
    tf = fns.fn758
    tx = fns.fn490
end
sS = fns.fn556
sF = fns.fn909
ss = fns.fn76
if (not tD or not tD) and (ss or tD) and ((not tf or tD) and (not tD or tf)) and ((tD and not th or (not th or not tf)) and (th or not tD or not th and th)) and ((not tD or not ss) and (not tD or ss) or not tD and not th and (ss or tf) or ((tf or ss) and (th or not ss) or (not ss or th or (tf or not tf)))) or not ((not tD or not tD) and (ss or tD) and ((not tf or tD) and (not tD or tf)) and ((tD and not th or (not th or not tf)) and (th or not tD or not th and th)) and ((not tD or not ss) and (not tD or ss) or not tD and not th and (ss or tf) or ((tf or ss) and (th or not ss) or (not ss or th or (tf or not tf))))) then
    r9 = fns.fn126
    to = fns.fn1102
else
    to = fns.fn126
    r9 = fns.fn1102
end
if (false or not s1) and 1.25 and (not sM or rI or rI and not s1) or not ((false or not s1) and 1.25 and (not sM or rI or rI and not s1)) then
    th = fn1155
    s1 = fn1121
    Eq_2 = fns.fn16
    sz = fns.fn546
else
    sz = fn1155
    th = fn1121
    s1 = fns.fn16
    Eq_2 = fns.fn546
end
r3 = fns.fn762
tD = fns.fn943
tc = fns.fn150
sQ = fns.fn1043
st = fns.fn649
sb = fns.fn114
tF = fns.fn103
sV = fns.fn1081
sl = fn1257
rT = 18
rN = 6
rI = 1.25
Eq_46 = FishSchool._ouroOriginalTryGrab or FishSchool.TryGrab
tG, r0, rV, rO, sy, sr, sm, sk, se, r8, r2, sR, tH, rP, sY, r1, Eq_4, s0, Eq_8, ta, sH, sf, rR, rF, rJ, te, si, tt, sN, sd, s9, rK, s3, sO, so, rL, sC, tA, sW, r_, tB, sX, sw, r7, Eq_5, s8, rW, rX, tp, s2, sI, sp, r4, rD, s5, sK = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
tG = Eq_46
FishSchool._ouroOriginalTryGrab = tG
FishSchool.TryGrab = fn1246
r0 = nil
rV = false
rP = fns.fn209
sY = fn1161
r1 = fns.fn742
Eq_4 = fn1302
s0 = fns.fn1053
Eq_8 = fns.fn323
ta = function(dT, dU)
    if not (dT and dU) then
        return
    end
    pcall(function()
        dT:TryGrab(dU)
    end)
end
sH = fns.fn236
sf = fns.fn216
rR = fn1135
rF = fns.fn958
rO = 0
rJ = fns.fn854
if (r2 or not r4) and (r2 or not r4) and ((r4 or not r2) and (r4 and r4)) or not ((r2 or not r4) and (r2 or not r4) and ((r4 or not r2) and (r4 and r4))) then
    te = fns.fn414
    si = fns.fn675
    tt = fn1149
    sN = fns.fn773
    sd = fns.fn536
else
    si = fns.fn414
    tt = fns.fn675
    sd = fn1149
    te = fns.fn773
    sN = fns.fn536
end
s9 = fns.fn1067
rK = fns.fn1115
s3 = fns.fn836
sO = fns.fn492
so = fns.fn544
if (sX or r1 or (sX or rF) or (not r1 or rD) and (rF and sY) or (rF or sX) and (rD or rF) and (not sX or not sY or not rF and not sX) or (sY or not sY) and (not rF and rF) and (not sX and rD and (not sY and not sY)) and ((not sX or rD) and (rF or r1) and (not rF or not rD or (rF or rD)))) and not (sX or r1 or (sX or rF) or (not r1 or rD) and (rF and sY) or (rF or sX) and (rD or rF) and (not sX or not sY or not rF and not sX) or (sY or not sY) and (not rF and rF) and (not sX and rD and (not sY and not sY)) and ((not sX or rD) and (rF or r1) and (not rF or not rD or (rF or rD)))) then
    sC = fns.fn316
    rL = fns.fn677
else
    rL = fns.fn316
    sC = fns.fn677
end
tA = fn1271
sW = fn1266
r_ = fns.fn861
tB = fns.fn585
sX = fns.fn138
sw = fns.fn759
r7 = fns.fn1090
Eq_5 = fns.fn1039
s8 = fn1228
sy = 0
sr = 0
sm = 0
sk = 0
se = 0
r8 = 0
r2 = 0
rW = fns.fn826
rX = fns.fn670
tp = fns.fn459
s2 = fn1175
sI = fns.fn470
sp = fns.fn120
r4 = fns.fn867
rD = fns.fn789
s5 = fns.fn534
sR = false
sK = fns.fn1050
Eq_26 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = r5, Copyable = true }, "|", sa },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
tH = {
    Info = Eq_26:AddTab("Info", "info"),
    Main = Eq_26:AddTab("Main", "fish"),
    Player = Eq_26:AddTab("Player", "person-standing"),
    Settings = Eq_26:AddTab("Settings", "settings")
}
local Eq_10 = fns.fn976
for k, v in tH do
    if k ~= "Info" then
        Eq_10(v)
    end
end
Eq_46 = tH.Main:AddLeftGroupbox("Fishing", "fish")
Eq_46:AddToggle("AutoPerfectFishing", { Text = "Auto Perfect Fishing", Default = false })
Eq_46:AddToggle("AutoCollectFish", { Text = "Auto Collect Fish", Default = false })
Eq_46:AddToggle("AutoStopWhenEmpty", { Text = "Auto Stop When Empty", Default = true })
Eq_46:AddDropdown("CollectRarities", {
    Text = "Collect Rarities",
    Values = Eq_28,
    Multi = true,
    Searchable = true,
    AllowNull = true,
    Default = {}
})
Eq_46:AddDropdown("CollectMutations", {
    Text = "Collect Mutations",
    Values = Eq_34,
    Multi = true,
    Searchable = true,
    AllowNull = true,
    Default = {}
})
Eq_34 = sS() and sS().AutoLock
Eq_26 = Eq_34
local Eq_36 = if Eq_26 then 1 else 0
local Eq_54 = 324 * Eq_36 + 143 * (1 - Eq_36)
local Eq_45 = 3508 * Eq_36 + 1796 * (1 - Eq_36)
if not ((Eq_54 * 3336 + Eq_45 * 3238 + Eq_54 * Eq_45) % 16777213 == 13576360) then
    Eq_26 = "None"
end
RewardsGroup, sZ, sT, su, tg, Eq_10 = nil, nil, nil, nil, nil, nil
Eq_46:AddDropdown("AutoFavourite", { Text = "Auto Favourite", Values = Eq_6, Searchable = true, Default = Eq_26 })
Eq_46:AddDivider("Finds")
Eq_46:AddToggle("AutoCollectFinds", { Text = "Auto Collect Finds", Default = false })
Eq_46:AddDropdown("CollectFindTypes", {
    Text = "Find Types",
    Values = Eq_55,
    Multi = true,
    Searchable = true,
    AllowNull = true,
    Default = {}
})
if (sT or Eq_10) and (not Eq_10 or sT) or (sT or sT or (not Eq_10 or sT)) or not ((sT or Eq_10) and (not Eq_10 or sT) or (sT or sT or (not Eq_10 or sT))) then
    Options.AutoFavourite:OnChanged(fns.fn895)
    RewardsGroup = tH.Main:AddLeftGroupbox("Rewards", "gift")
else
    RewardsGroup.AutoFavourite:OnChanged(Options)
    tH = fns.fn895.Main:AddLeftGroupbox("Rewards", "gift")
end
RewardsGroup:AddToggle("AutoClaimBigFish", { Text = "Auto Claim Big Fish", Default = false })
RewardsGroup:AddToggle("AutoClaimFreeRewards", { Text = "Auto Claim Free Rewards", Default = false })
local SellGroup = tH.Main:AddLeftGroupbox("Sell", "circle-dollar-sign")
SellGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
SellGroup:AddButton({ Text = "Sell All Fish", Func = fns.onSellAllFish })
local ShopGroup = tH.Main:AddRightGroupbox("Shop", "shopping-bag")
ShopGroup:AddToggle("AutoBuyBait", { Text = "Auto Buy Best Bait", Default = false })
ShopGroup:AddButton({ Text = "Buy Best Bait Now", Func = fns.onBuyBestBaitNow })
ShopGroup:AddToggle("AutoBuyBestRod", { Text = "Auto Buy Best Rod", Default = false })
ShopGroup:AddButton({ Text = "Buy Best Rod Now", Func = fns.onBuyBestRodNow })
ShopGroup:AddDivider("Upgrades")
ShopGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
ShopGroup:AddDropdown("BuyUpgrades", { Text = "Upgrades", Values = sh, Multi = true, Searchable = true, AllowNull = true, Default = {} })
Eq_34 = tH.Main:AddRightGroupbox("Codes", "ticket")
Eq_34:AddInput("CodeText", { Text = "Code", Placeholder = "Enter code", Finished = true, AllowEmpty = true })
Eq_34:AddButton({ Text = "Redeem Code", Func = fns.onRedeemCode })
local BaitGroup = tH.Main:AddRightGroupbox("Bait", "package")
BaitGroup:AddToggle("AutoUseBestBait", { Text = "Auto Use Best Bait", Default = false })
BaitGroup:AddButton({ Text = "Use Best Bait Now", Func = fns.onUseBestBaitNow })
BaitGroup:AddDivider("Selected")
BaitGroup:AddToggle("AutoUseBait", { Text = "Auto Use Bait", Default = false })
BaitGroup:AddDropdown("UseBaitName", { Text = "Use Bait", Values = Eq_16, Searchable = true, AllowNull = true, Default = "" })
BaitGroup:AddButton({ Text = "Use Bait Now", Func = onUseBaitNow })
task.spawn(fns.worker)
tm(ty.RenderStepped:Connect(fns.onRenderStepped))
tg = fn1282
Eq_28 = function()
    local Cc
    local B9
    B9 = nil
    Cc = nil
    local B8, Label, Label2, Label3, Ce
    B9 = "Unknown"
    pcall(function()
        local BW_1
        local BV_1
        if identifyexecutor then
            BW_1, BV_1 = identifyexecutor()
            local BX = BW_1 ~= ""
            local BY = type(BW_1) == "string" and BX
            if BY then
                local BX_1 = type(BV_1) == "string" and BV_1 ~= "" and BW_1 .. " " .. BV_1
                B9 = BX_1 or BW_1
            end
        end
    end)
    local Cf = tg()
    Cc = os.clock()
    B8 = function()
        local B2 = math.floor(os.clock() - Cc)
        if B2 < 60 then
            return B2 .. "s"
        elseif B2 < 3600 then
            return string.format("%dm %ds", B2 // 60, B2 % 60)
        else
            return string.format("%dh %dm", B2 // 3600, B2 % 3600 // 60)
        end
    end
    local UserGroup = tH.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = sP, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(sj("User", sP.DisplayName .. " @" .. sP.Name, rM), true)
    UserGroup:AddLabel(sj("UserId", tostring(sP.UserId), rH), true)
    UserGroup:AddLabel(sj("Executor", B9 .. "  " .. Cf, rM), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(sj("Session", B8(), rE), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            s7(sP.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            s7("https://www.roblox.com/users/" .. tostring(sP.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = tH.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(sj("Game", sa, rH), true)
    Label2 = SessionGroup:AddLabel(sj("Players", "0/0", rM), true)
    Ce = tostring(game.JobId)
    local Cg_1 = #Ce > 18 and string.sub(Ce, 1, 18) .. "..."
    local Cg_2 = Cg_1 or Ce
    SessionGroup:AddLabel(sj("Job", Cg_2, tE), true)
    Label = SessionGroup:AddLabel(sj("Ping", "0 ms", rE), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            tb:Teleport(game.PlaceId, sP)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            s7(Ce, "Copied Job ID")
        end
    })
    task.spawn(function()
        local B5_1
        local B4_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(sj("Session", B8(), rE))
            Label2:SetText(sj("Players", #rC:GetPlayers() .. "/" .. tostring(rC.MaxPlayers), rM))
            B4_1, B5_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local B4_2 = B4_1 and B5_1 .. " ms" or "n/a"
            Label:SetText(sj("Ping", B4_2, rE))
        end
    end)
    local SocialsGroup = tH.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = sM })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            s7(rY, "Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            s7(rS, "Copied website link")
        end
    })
end
Eq_28()
local function Eq_52()
    local connection
    local MovementGroup = tH.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = tH.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local function lo(lp)
        pcall(function()
            ti:SetGameplayPausedNotificationEnabled(not lp)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = s4:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not lp
            end
        end)
        if not lp then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(sP, "GameplayPaused", false)
            else
                sP.GameplayPaused = false
            end
        end)
    end
    local function lC(lD)
        local Cq = if not lD:IsA("ProximityPrompt") then 1 else 0
        if Cq == 1 then
            return
        end
        lD.HoldDuration = 0
        lD.MaxActivationDistance = 50
        lD.RequiresLineOfSight = false
    end
    connection = nil
    tm(ty.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = sP.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local Cr_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if Cr_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end))
    tm(tu.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local CC_1 = tx()
            if CC_1 then
                CC_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end))
    local CurrentCamera = s_.CurrentCamera
    tm(ty.RenderStepped:Connect(function(l_)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local CE_1 = tx()
            if CE_1 then
                CE_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local CE_3 = tf()
            local CF = tx()
            if CE_3 and CF then
                CF.PlatformStand = true
                local CF_1 = Vector3.zero
                local CK = if tu:IsKeyDown(Enum.KeyCode.W) then 1 else 0
                if CK == 1 then
                    CF_1 += CurrentCamera.CFrame.LookVector
                end
                if tu:IsKeyDown(Enum.KeyCode.S) then
                    CF_1 -= CurrentCamera.CFrame.LookVector
                end
                if tu:IsKeyDown(Enum.KeyCode.A) then
                    CF_1 -= CurrentCamera.CFrame.RightVector
                end
                if tu:IsKeyDown(Enum.KeyCode.D) then
                    CF_1 += CurrentCamera.CFrame.RightVector
                end
                if tu:IsKeyDown(Enum.KeyCode.Space) then
                    CF_1 += Vector3.new(0, 1, 0)
                end
                local CN = if tu:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
                if CN == 1 then
                    CF_1 -= Vector3.new(0, 1, 0)
                end
                CE_3.AssemblyLinearVelocity = Vector3.zero
                if CF_1.Magnitude > 0 then
                    CE_3.CFrame = CE_3.CFrame + CF_1.Unit * Options.FlySpeed.Value * l_
                end
            end
        end
    end))
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local CO = tx()
            if CO then
                CO.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local CQ = tx()
            if CQ then
                CQ.WalkSpeed = 16
            end
        end
    end)
    Toggles.AntiGameplayPause:OnChanged(function()
        lo(Toggles.AntiGameplayPause.Value)
    end)
    lo(true)
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in s_:GetDescendants() do
                pcall(lC, descendant)
            end
            connection = s_.DescendantAdded:Connect(function(mt)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(lC, mt)
                end
            end)
            tm(connection)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if rQ("AntiGameplayPause") then
                lo(true)
            end
        end
    end)
    return lo, function()
        if connection then
            connection:Disconnect()
            connection = nil
        end
    end
end
sZ, sT = Eq_52()
local function Eq_22(mF)
    local mG = 0
    local mH = tick()
    mF:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = mF:AddLabel("AFK triggers: 0")
    local function mJ()
        local CurrentCamera = s_.CurrentCamera
        if not CurrentCamera then
            return
        end
        tq:CaptureController()
        tq:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        mG += 1
        mH = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. mG)
        end)
    end
    local connection = sP.Idled:Connect(function()
        if rQ("AntiAfk") then
            pcall(mJ)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local Dd = rQ("AntiAfk") and tick() - mH >= 60
            if Dd then
                pcall(mJ)
            end
        end
    end)
    mF:AddButton({
        Text = "Unload UI",
        Func = function()
            Library:Unload()
        end
    })
    return connection
end
local MenuGroup = tH.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
su = Eq_22(MenuGroup)
Eq_37:SetLibrary(Library)
Eq_37:SetFolder("OuroborosHub")
Eq_37:SaveDefault("Rosewater")
Eq_37:ApplyToTab(tH.Settings)
Eq_37:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/DeepFishing")
local Eq_58 = SaveManager:BuildConfigSection(tH.Settings)
SaveManager:LoadAutoloadConfig()
fns.fn895()
Eq_10 = function(m9)
    local function na(nb, nc)
        local Dg_1 = (nb == "Toggle" and Toggles or Options)[nc]
        local Df_2 = type(Dg_1) == "table" and Dg_1.Type == nb
        return Df_2 and Dg_1 or nil
    end
    local function nk(nl, nm)
        local Type = nm.Type
        if Type == "Toggle" then
            return { idx = nl, type = "Toggle", value = nm.Value == true }
        elseif Type == "Slider" then
            return { idx = nl, type = "Slider", value = tostring(nm.Value) }
        elseif Type == "Dropdown" then
            return { idx = nl, type = "Dropdown", multi = nm.Multi == true, value = nm.Value }
        elseif Type == "Input" then
            local Dn = nm.Value
            local Dr = if Dn then 1 else 0
            local Dp = 1019 * Dr + 1719 * (1 - Dr)
            local Dq = 3923 * Dr + 3259 * (1 - Dr)
            if not ((Dp * 430 + Dq * 1272 + Dp * Dq) % 16777213 == 9425763) then
                Dn = ""
            end
            return { idx = nl, type = "Input", text = tostring(Dn) }
        elseif Type == "ColorPicker" then
            return { idx = nl, type = "ColorPicker", value = nm.Value:ToHex(), transparency = nm.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = nl,
                type = "KeyPicker",
                mode = nm.Mode,
                key = nm.Value,
                modifiers = nm.Modifiers,
                toggled = nm.Toggled
            }
        else
            return nil
        end
    end
    local function no()
        local Dz = {}
        for k, v in { Toggles, Options } do
            for k, v in v do
                local DA = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if DA then
                    local DA_1 = nk(k, v)
                    if DA_1 then
                        Dz[#Dz + 1] = DA_1
                    end
                end
            end
        end
        table.sort(Dz, function(nw, nx)
            if nw.type ~= nx.type then
                return nw.type < nx.type
            end
            return nw.idx < nx.idx
        end)
        return { objects = Dz }
    end
    local function ny(nz)
        local DQ
        DQ = nil
        local DR = type(nz) ~= "table" or type(nz.idx) ~= "string" or type(nz.type) ~= "string" or SaveManager.Ignore[nz.idx]
        if DR then
            return false
        end
        DQ = na(nz.type, nz.idx)
        if not DQ then
            return false
        end
        local DR_1 = pcall(function()
            if nz.type == "Input" then
                if type(nz.text) ~= "string" then
                    return
                end
                DQ:SetValue(nz.text)
            elseif nz.type == "ColorPicker" then
                DQ:SetValueRGB(Color3.fromHex(nz.value), nz.transparency)
            elseif nz.type == "KeyPicker" then
                DQ:SetValue({ nz.key, nz.mode, nz.modifiers })
                if nz.mode == "Toggle" and nz.toggled ~= nil then
                    DQ.Toggled = nz.toggled
                    DQ:Update()
                end
            else
                DQ:SetValue(nz.value)
            end
        end)
        return DR_1
    end
    m9:AddDivider()
    m9:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    m9:AddButton("Export Config to Clipboard", function()
        local DU_1
        local DT_1
        DT_1, DU_1 = pcall(tj.JSONEncode, tj, no())
        if not DT_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local DT_2 = setclipboard or toclipboard
        local DT_3 = type(DT_2) ~= "function"
        local DZ = if DT_3 then 1 else 0
        local DX = 1283 * DZ + 2942 * (1 - DZ)
        local DY = 915 * DZ + 3891 * (1 - DZ)
        if not ((DX * 1318 + DY * 1438 + DX * DY) % 16777213 == 4180709) then
            DT_3 = not pcall(DT_2, DU_1)
        end
        if DT_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    m9:AddButton("Import Config from Clipboard Text", function()
        local D1_1
        local D_ = Options.SaveManager_ImportSource.Value or ""
        local D__1
        local D0 = tostring(D_):match("^%s*(.-)%s*$")
        if D0 == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        D__1, D1_1 = pcall(tj.JSONDecode, tj, D0)
        local D0_1 = not D__1 or type(D1_1) ~= "table" or type(D1_1.objects) ~= "table"
        if D0_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local D__2 = 0
        for k, v in D1_1.objects do
            if ny(v) then
                D__2 += 1
            end
        end
        if D__2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local D1_2 = D__2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(D__2, D1_2), 6)
    end)
end
Eq_10(Eq_58)
Library:OnUnload(function()
    sZ(false)
    sT()
    if su then
        su:Disconnect()
    end
    for k, v in ts do
        local Eg = v
        pcall(function()
            Eg:Disconnect()
        end)
    end
    table.clear(ts)
    if FishSchool._ouroOriginalTryGrab then
        FishSchool.TryGrab = FishSchool._ouroOriginalTryGrab
    end
    if AutoFishing then
        AutoFishing.DrivingThrow = false
    end
    local D9 = tx()
    if D9 then
        D9.PlatformStand = false
        D9.WalkSpeed = 16
    end
    local D9_1 = getgenv and getgenv().__OuroborosDeepFishingLib == Library
    if D9_1 then
        getgenv().__OuroborosDeepFishingLib = nil
    end
end)
