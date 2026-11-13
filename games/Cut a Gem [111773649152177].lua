local fns = {}
local ActionsGroup, AutoRebirthGroup, MineAccessGroup, CodesGroup, AutoBuyGeodesGroup, AutoPlaceItemsGroup, AC_47
local pY
local pF
local qm
local pm
local p3
local qL
local pL
local qs
local ps
local p9
local o9
local pR
local qy
local PlayerData
local qf
local pf
local pX
local qE
local pE
local ql
local pl
local p2
local qK
local pK
local qr
local pr
local p8
local o8
local pQ
local qx
local px
local qe
local pe
local qD
local pD
local qk
local pk
local p1
local qJ
local pJ
local qq
local pq
local p7
local Options
local pP
local qw
local pw
local qd
local pd
local pV
local codesLoop
local PickaxeConfig
local qj
local pj
local p0
local qI
local MineConfig
local qp
local pp
local GemConfig
local o6
local pO
local qv
local pv
local qc
local Toggles
local pU
local qB
local pB
local qi
local pi
local p_
local qH
local pH
local LocalPlayer
local po
local p5
local qN
local RebirthConfig
local qu
local pu
local qb
local pb
local pT
local VirtualUser
local pA
local qh
local ph
local pZ
local qG
local pG
local connection2
local pn
local p4
local connection
local pM
local qt
local Library
local qa
local pa
local pS
local qz
local pz
local qg
local pg
function fns.autoCollectGemsLoop()
    while not Library.Unloaded do
        if Toggles.AutoCollectGems.Value then
            pcall(pm)
        end
        local z6 = Options.CollectLoopDelay.Value or 0.2
        task.wait(z6)
    end
end
function fns.fn21()
    local yX_1
    local yW_1
    local yT = qa()
    if not yT then
        return
    end
    local yU = pa()
    if not yU then
        return
    end
    local yV = pA()
    if yV then
        qy(yV)
    end
    yX_1, yW_1 = nil, nil
    for i, v in ipairs(pe(yT)) do
        local Magnitude = (v:GetPivot().Position - yU.Position).Magnitude
        if not yX_1 or Magnitude < yW_1 then
            yX_1, yW_1 = v, Magnitude
        end
    end
    if not yX_1 then
        return
    end
    while true do
        if Toggles.AutoMine.Value and not Library.Unloaded and yX_1.Parent then
            local attr = yX_1:GetAttribute("Health")
            if attr and attr <= 0 then
                break
            elseif not p4(yX_1) then
                break
            else
                pU:Fire({ rock = yX_1 })
                local wait = task.wait
                local yU_2 = Options.SwingDelay.Value or 0.35
                wait(yU_2)
                continue
            end
        else
            break
        end
    end
    local attr = yX_1:GetAttribute("Health")
    local yU_3 = Toggles.MineNotify.Value
    if yU_3 then
        local yV_2 = not yX_1.Parent
        if not yV_2 then
            yV_2 = attr and attr <= 0
        end
        yU_3 = yV_2
    end
    if yU_3 then
        Library:Notify(("Mined %s"):format(tostring(yX_1:GetAttribute("NodeName"))))
    end
end
function fns.fn27()
    if setclipboard then
        setclipboard(qK)
    elseif toclipboard then
        toclipboard(qK)
    end
    Library:Notify("Copied Discord invite to clipboard")
end
function fns.fn46(a2)
    local Character = LocalPlayer.Character
    local sc = Character and Character:FindFirstChildOfClass("Humanoid")
    local sd = sc
    if sc then
        sc = a2
    end
    if not sc then
        return false
    elseif a2.Parent == Character then
        return true
    else
        sd:EquipTool(a2)
        task.wait(0.15)
        return a2.Parent == Character
    end
end
function fns.fn68()
    local xu = pw()
    local xv = xu and xu:FindFirstChild("Slots")
    local Data = PlayerData.Data
    if not (xv and Data) then
        return
    end
    local xw_1 = Data.SlotsOwned
    local xA = if xw_1 then 1 else 0
    local xy = 779 * xA + 908 * (1 - xA)
    local xz = 2669 * xA + 1985 * (1 - xA)
    if not ((xy * 3393 + xz * 2628 + xy * xz) % 16777213 == 11736430) then
        xw_1 = 0
    end
    local xv_2 = xw_1
    qw:Fire({ slot = xv_2 + 1 })
    if Toggles.BuySlotUpgrades.Value then
        for i, child in ipairs(xv:GetChildren()) do
            local attr = child:GetAttribute("SlotIndex")
            if attr then
                qq:Fire({ slot = attr })
                local wait = task.wait
                local xv_3 = Options.ActionDelay.Value or 0.2
                wait(xv_3)
            end
        end
    end
end
function fns.onBuyDarkGeodes(jj)
    o9(jj, pj)
end
function fns.fn109(br)
    local sl = {}
    local Character = LocalPlayer.Character
    for i, v in ipairs({ LocalPlayer:FindFirstChild("Backpack"), Character }) do
        if v then
            for i, child in ipairs(v:GetChildren()) do
                local sm_1 = child:IsA("Tool") and child:GetAttribute(br) ~= nil
                if sm_1 then
                    sl[#sl + 1] = child
                end
            end
        end
    end
    return sl
end
function fns.fn124()
    local uU = Options.GemDestination.Value == "Table" and qz()
    local uV = uU or pG()
    if #uV == 0 then
        return
    end
    local uV_1 = 1
    for i, v in ipairs(qu("GemName")) do
        if p_(v) then
            local uW = uV[uV_1]
            if not uW then
                return
            end
            uV_1 += 1
            local uX = qb(uW, v) and Toggles.PlaceGemNotify.Value
            if uX then
                Library:Notify(("Placed %s"):format(v.Name))
            end
        end
    end
end
function fns.onBuyGeodes(jg)
    o9(jg, pl)
end
function fns.fn171()
    local ty_1
    local tx_1
    local tv = qu("GeodeName")
    local Value = Options.InsertMode.Value
    ty_1, tx_1 = nil, nil
    for i, v in ipairs(tv) do
        local attr = v:GetAttribute("GeodeName")
        local tz = p9[attr] or 0
        if not (Value == "Selected Geodes" and not pd[attr]) then
            if not ty_1 then
                ty_1, tx_1 = v, tz
            elseif Value == "Lowest Tier" then
                if tz < tx_1 then
                    ty_1, tx_1 = v, tz
                end
            elseif tz > tx_1 then
                ty_1, tx_1 = v, tz
            end
        end
    end
    return ty_1
end
function fns.fn184()
    pb:Fire()
    local wi = pX("ItemStock")
    local wj = tonumber(Options.ItemReserve.Value) or 0
    for i, v in ipairs(pV) do
        local wj_1 = pg[v]
        if wj_1 then
            wj_1 = (wi[v] or 0) > 0
        end
        if wj_1 then
            local wj_2 = pP[v] or 0
            if qt() - wj_2 >= wj then
                pf:Fire({ category = pL[v], name = v })
                if Toggles.ItemNotify.Value then
                    Library:Notify(("Bought %s"):format(v))
                end
                local wait = task.wait
                local wl_3 = Options.ActionDelay.Value or 0.2
                wait(wl_3)
            end
        end
    end
end
function fns.fn188(fd)
    local Bases = fd:FindFirstChild("Bases")
    local Data = PlayerData.Data
    local wv = Bases
    local ww = {}
    if wv then
        wv = Data
    end
    if wv then
        wv = Data.Bases
    end
    if not wv then
        return ww
    end
    for k, v in pairs(Data.Bases) do
        local wu_1 = Bases:FindFirstChild(v)
        local wv_1 = wu_1 and wu_1:IsA("BasePart")
        if wv_1 then
            ww[#ww + 1] = wu_1
        end
    end
    return ww
end
function fns.fn192()
    if LocalPlayer:GetAttribute("InMine") then
        return
    end
    local yK = pw()
    local yL = yK and yK:FindFirstChild("Mine")
    if not yL then
        return
    end
    for i, descendant in ipairs(yL:GetDescendants()) do
        local yK_2 = descendant:IsA("ProximityPrompt") and descendant.Name == "MineInteract" and descendant.Enabled
        if yK_2 then
            o8(descendant)
            return
        end
    end
end
function fns.fn215()
    local vh = pw()
    local vi = vh and vh:FindFirstChild("Bin")
    local vh_1 = vi
    if vi then
        vi = vh_1:FindFirstChild("Discard")
    end
    local vh_2 = vi
    if vi then
        vi = vh_2:FindFirstChild("DiscardPrompt")
    end
    local vh_3 = vi
    if not vh_3 then
        return
    end
    local vi_1 = Options.DiscardMaxPurity.Value
    local vn = if vi_1 then 1 else 0
    local vl = 1508 * vn + 1899 * (1 - vn)
    local vm = 1202 * vn + 215 * (1 - vn)
    if not ((vl * 3988 + vm * 3276 + vl * vm) % 16777213 == 11764272) then
        vi_1 = 0
    end
    local vj = vi_1 / 100
    for i, v in ipairs(qu("GemName")) do
        local vi_2 = v:GetAttribute("Purity") or 1
        if vi_2 < vj then
            qb(vh_3, v)
        end
    end
end
function fns.autoBuyPickaxeLoop()
    while not Library.Unloaded do
        if Toggles.AutoBuyPickaxe.Value or Toggles.AutoEquipPickaxe.Value then
            pcall(pz)
        end
        local wait = task.wait
        local z3 = Options.PickaxeLoopDelay.Value or 5
        wait(z3)
    end
end
function fns.fn225(hz)
    local yt = {}
    local Value = Options.MineRockType.Value
    for i, descendant in ipairs(hz:GetDescendants()) do
        local yv = descendant:IsA("Model") and descendant:GetAttribute("NodeName")
        if yv then
            local attr = descendant:GetAttribute("Health")
            if not attr or attr > 0 then
                local yv_2 = pH(descendant)
                if Value == "All Rocks" or Value == "Sparkle Only" == yv_2 then
                    yt[#yt + 1] = descendant
                end
            end
        end
    end
    return yt
end
function fns.fn235()
    pF:Fire()
    local zf = tonumber(Options.PickaxeReserve.Value) or 0
    if Toggles.AutoBuyPickaxe.Value then
        for i, v in ipairs(PickaxeConfig.List) do
            local zf_1 = v.price or 0
            local zf_2 = not pq[v.name] and qt() - zf_1 >= zf
            if zf_2 then
                pO:Fire({ name = v.name })
                if Toggles.PickaxeNotify.Value then
                    local zf_3 = v.display or v.name
                    Library:Notify(("Bought %s"):format(zf_3))
                end
                local wait = task.wait
                local zh_2 = Options.ActionDelay.Value or 0.2
                wait(zh_2)
            end
        end
    end
    if Toggles.AutoEquipPickaxe.Value then
        local zf_5 = nil
        for i, v in ipairs(PickaxeConfig.List) do
            local zg_1 = pq[v.name]
            if zg_1 then
                zg_1 = not zf_5 or (v.damage or 0) > (zf_5.damage or 0)
            end
            if zg_1 then
                zf_5 = v
            end
        end
        if zf_5 and pn ~= zf_5.name then
            pK:Fire({ name = zf_5.name })
        end
    end
end
function fns.antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local Ax = tick() - pR
            local Ay = tick() - pM
            if Ax >= 300 and Ay >= 60 then
                pcall(po)
            else
                if Ax < 300 and Ay >= 300 then
                    pcall(po)
                end
            end
        end
    end
end
function fns.onBuyItems(jz)
    o9(jz, pg)
end
function fns.fn293(fo, fp)
    local wE = {}
    for i, v in ipairs(qs) do
        local wF_1 = fo:FindFirstChild(v)
        if wF_1 then
            wE[#wE + 1] = wF_1
        end
    end
    local wF_2 = OverlapParams.new()
    wF_2.FilterType = Enum.RaycastFilterType.Include
    wF_2.FilterDescendantsInstances = wE
    local wE_1 = fp - Vector3.new(0.4, 0.4, 0.4)
    if wE_1.X <= 0 or wE_1.Z <= 0 then
        return nil
    end
    for i, v in ipairs(qG(fo)) do
        local wG_1 = v.Position.Y + v.Size.Y / 2 + fp.Y / 2
        local wH = v.Position.X - v.Size.X / 2 + fp.X / 2
        local wI = v.Position.X + v.Size.X / 2 - fp.X / 2
        local wJ = v.Position.Z - v.Size.Z / 2 + fp.Z / 2
        local wK = v.Position.Z + v.Size.Z / 2 - fp.Z / 2
        if wH <= wI and wJ <= wK then
            local wL_1 = wH
            while wL_1 <= wI do
                local wH_1 = wJ
                while wH_1 <= wK do
                    local wM = CFrame.new(wL_1, wG_1, wH_1)
                    if #workspace:GetPartBoundsInBox(wM, wE_1, wF_2) == 0 then
                        return wM
                    end
                    wH_1 += 2
                end
                wL_1 += 2
            end
        end
    end
    return nil
end
function fns.fn297()
    local tR = pw()
    local tS = tR and tR:FindFirstChild("PlacedGrinders")
    if not tS then
        return
    end
    for i, child in ipairs(tS:GetChildren()) do
        local GemSpawn = child:FindFirstChild("GemSpawn")
        local tS_1 = GemSpawn and GemSpawn:FindFirstChild("PickPrompt")
        if tS_1 then
            local attr = GemSpawn:GetAttribute("RolledGem")
            local tU = GemSpawn:GetAttribute("RolledPurity") or 0
            local tU_1 = qb(tS_1) and Toggles.CollectNotify.Value
            if tU_1 then
                Library:Notify(("Collected %s at %d%% purity"):format(tostring(attr), math.floor(tU * 100)))
            end
        end
    end
end
function fns.fn304()
    local u7 = pS()
    local u8 = 1
    for i, v in ipairs(qu("GemName")) do
        local u9 = u7[u8]
        if not u9 then
            return
        end
        u8 += 1
        qb(u9, v)
    end
end
function fns.autoPlaytimePadLoop()
    while not Library.Unloaded do
        pcall(pv)
        if Toggles.AutoPlaytimePad.Value then
            pcall(p3)
        end
        local Av = Options.RewardLoopDelay.Value or 15
        task.wait(Av)
    end
end
function fns.fn346()
    local x0 = pw()
    local x1 = x0 and x0:FindFirstChild("Playtime")
    if not x1 then
        return
    end
    for i, descendant in ipairs(x1:GetDescendants()) do
        local x0_2 = descendant:IsA("ProximityPrompt") and descendant.Name == "PlaytimeClaimPrompt" and descendant.Enabled
        if x0_2 then
            qb(descendant)
        end
    end
end
function fns.fn349()
    local v5 = pw()
    local v6 = v5 and v5:FindFirstChild("Slots")
    if not v6 then
        return
    end
    local v6_1 = Options.SlotMargin.Value or 10
    for i, child in ipairs(v6:GetChildren()) do
        local attr = child:GetAttribute("SlotIndex")
        if attr then
            if child:GetAttribute("SlotMargin") ~= v6_1 then
                qm:Fire({ slot = attr, margin = v6_1 })
                local wait = task.wait
                local v8 = Options.ActionDelay.Value or 0.2
                wait(v8)
            end
            local Value = Toggles.SlotAutoSell.Value
            if child:GetAttribute("SlotAutoSell") == true ~= Value then
                qj:Fire({ slot = attr })
                local wait = task.wait
                local v6_4 = Options.ActionDelay.Value or 0.2
                wait(v6_4)
            end
        end
    end
end
function fns.fn361()
    for i, v in ipairs(px()) do
        local tI = pi()
        if not tI then
            return
        end
        local tJ = qb(v, tI) and Toggles.InsertNotify.Value
        if tJ then
            Library:Notify(("Grinding %s"):format(tI:GetAttribute("GeodeName")))
        end
    end
end
function fns.fn368(a8, a9)
    if not (a8 and a8.Parent) then
        return false
    end
    local sf_1 = pa()
    if not sf_1 then
        return false
    end
    local CFrame2 = sf_1.CFrame
    local Parent = a8.Parent
    local si = Parent:IsA("BasePart") and Parent.Position
    local sj = si or Parent:GetPivot().Position
    local sh_1 = false
    if (sf_1.Position - sj).Magnitude > a8.MaxActivationDistance - 2 then
        sf_1.CFrame = CFrame.new(sj + Vector3.new(0, 4, 0))
        sh_1 = true
        task.wait(0.2)
    end
    local si_2 = a9 and not qy(a9)
    if si_2 then
        if sh_1 and Toggles.ReturnAfterAction.Value then
            sf_1.CFrame = CFrame2
        end
        return false
    end
    if not (a8.Parent and a8.Enabled) then
        if sh_1 and Toggles.ReturnAfterAction.Value then
            sf_1.CFrame = CFrame2
        end
        return false
    end
    fireproximityprompt(a8)
    local wait = task.wait
    local sj_1 = Options.ActionDelay.Value or 0.2
    wait(sj_1)
    if sh_1 and Toggles.ReturnAfterAction.Value then
        sf_1.CFrame = CFrame2
    end
    return true
end
function fns.fn373()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    pM = tick()
end
function fns.autoPlaceItemsLoop()
    while not Library.Unloaded do
        if Toggles.AutoPlaceItems.Value then
            pcall(p5)
        end
        local Am = Options.PlaceItemLoopDelay.Value or 3
        task.wait(Am)
    end
end
function fns.fn384()
    if Toggles.AutoSpin.Value then
        qc:Fire()
    end
    if Toggles.AutoDaily.Value then
        p8:Fire()
    end
    if Toggles.AutoPlaytime.Value then
        p0:Fire()
    end
    local xP = Toggles.AutoGroupReward.Value and LocalPlayer:GetAttribute("GroupRewardClaimed") ~= true
    if xP then
        pZ:Fire()
    end
end
function fns.fn394()
    local t8 = pw()
    local t9 = t8 and t8:FindFirstChild("Conveyer")
    local t8_1 = t9
    if t9 then
        t9 = t8_1:FindFirstChild("Spawns")
    end
    local t8_2 = {}
    local ua = t9
    if not ua then
        return t8_2
    end
    for i, child in ipairs(ua:GetChildren()) do
        local ProximityPrompt = child:FindFirstChildWhichIsA("ProximityPrompt")
        if ProximityPrompt and ProximityPrompt.Enabled then
            t8_2[#t8_2 + 1] = ProximityPrompt
        end
    end
    return t8_2
end
function fns.fn404()
    local y7 = qa()
    if not y7 then
        return
    end
    if #pe(y7) > 0 then
        return
    end
    for i, descendant in ipairs(y7:GetDescendants()) do
        local y7_1 = descendant:IsA("ProximityPrompt") and descendant.Enabled
        if y7_1 then
            o8(descendant)
            return
        end
    end
end
function fns.onInputChanged(jX)
    local UserInputType = jX.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        pR = tick()
    end
end
function fns.fn494(aA, aB)
    table.clear(aB)
    for k, v in aA do
        if v then
            aB[k] = true
        end
    end
end
function fns.autoBuyBasesLoop()
    while not Library.Unloaded do
        if Toggles.AutoBuyBases.Value then
            pcall(ql)
        end
        if Toggles.AutoBuySlots.Value then
            pcall(pE)
        end
        local Ap = Options.ExpandLoopDelay.Value or 10
        task.wait(Ap)
    end
end
function fns.fn502()
    return qu("Pickaxe")[1]
end
function fns.fn509()
    Library.ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
function fns.onInsertGeodes(jn)
    o9(jn, pd)
end
function fns.fn525()
    local vu = pw()
    local vv = vu and vu:FindFirstChild("Slots")
    local Data = PlayerData.Data
    local vw = Data and Data.ConveyorGems and Data.ConveyorGems.belt
    if not (vv and vw) then
        return
    end
    for i, child in ipairs(vv:GetChildren()) do
        local Spawn = child:FindFirstChild("Spawn")
        local vw_2 = Spawn and not Spawn:FindFirstChild("PlacedGem")
        if vw_2 then
            for k in pairs(vw) do
                local vu_3 = tick()
                if vu_3 - (pJ[k] or 0) > 3 then
                    pJ[k] = tick()
                    qJ:Fire({ plot = LocalPlayer:GetAttribute("PlotName"), slot = child.Name, id = k })
                    break
                end
            end
        end
    end
end
function fns.fn551()
    local w4_1
    local w_ = pw()
    if not w_ then
        return
    end
    for i, v in ipairs(qu("ItemCategory")) do
        local attr = v:GetAttribute("ItemCategory")
        local w1 = v:GetAttribute("StackBase") or v.Name
        local w1_1 = qH:FindFirstChild(attr)
        local w3 = w1_1 and w1_1:FindFirstChild(w1)
        local w3_1
        if w3 then
            w3_1, w4_1 = w3:GetBoundingBox()
            local w1_3 = pY(w_, w4_1)
            if w1_3 then
                o6:Fire({ cframe = w1_3, itemName = w1, folderName = attr })
                if Toggles.PlaceItemNotify.Value then
                    Library:Notify(("Placed %s"):format(w1))
                end
                local wait = task.wait
                local w1_4 = Options.ActionDelay.Value or 0.2
                wait(w1_4)
            end
        end
    end
end
function fns.fn554()
    local xf = pw()
    local xg = xf and xf:FindFirstChild("BaseStands")
    if not xg then
        return
    end
    for i, child in ipairs(xg:GetChildren()) do
        for i, descendant in ipairs(child:GetDescendants()) do
            local xf_2 = descendant:IsA("ProximityPrompt") and descendant.Name == "BuyBasePrompt" and descendant.Enabled
            if xf_2 then
                qb(descendant)
            end
        end
    end
end
local function fn600()
    ph:Fire()
    local th = pX("DarkGeodeStock")
    local ti = tonumber(Options.GeodeReserve.Value) or 0
    for i, v in ipairs(qe) do
        local ti_1 = pj[v]
        if ti_1 then
            ti_1 = (th[v] or 0) > 0
        end
        if ti_1 then
            local ti_2 = p1[v] or 0
            if qt() - ti_2 >= ti then
                pk:Fire({ name = v })
                if Toggles.GeodeNotify.Value then
                    Library:Notify(("Bought %s"):format(v))
                end
                local wait = task.wait
                local tk_3 = Options.ActionDelay.Value or 0.2
                wait(tk_3)
            end
        end
    end
end
local function fn616()
    local vV_1
    local vS = pw()
    if not vS then
        return
    end
    for i, descendant in ipairs(workspace:GetDescendants()) do
        local vT = descendant:IsA("Model") and descendant.Name == "Buyer" and descendant:GetAttribute("OwnerUserId") == LocalPlayer.UserId
        if vT then
            if descendant:GetAttribute("NegotiateActive") then
                local vT_1 = descendant:GetAttribute("Offer") or 0
                local Value = Options.NegotiateMode.Value
                if Value == "Accept All" then
                    vV_1 = true
                elseif Value == "Minimum Amount" then
                    local vT_3 = tonumber(Options.NegotiateMinAmount.Value) or 0
                    vV_1 = vT_1 >= vT_3
                else
                    local vT_4 = qd(vS, descendant:GetAttribute("SlotName"))
                    local vW = vT_4 and pT(vT_4)
                    local vW_1 = vW or 0
                    vV_1 = vW_1 > 0 and vT_1 / vW_1 * 100 >= (Options.NegotiateMinRatio.Value or 100)
                end
                if vV_1 or Toggles.NegotiateReject.Value then
                    qD:Fire({ rig = descendant, accept = vV_1 })
                    if Toggles.NegotiateNotify.Value then
                        local vV_2 = vV_1 and "Accepted" or "Rejected"
                        Library:Notify(("%s offer of $%d"):format(vV_2, vT_1))
                    end
                    local wait = task.wait
                    local vU_1 = Options.ActionDelay.Value or 0.2
                    wait(vU_1)
                end
            end
        end
    end
end
local function fn619(i2)
    local DiscordGroup = i2:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = qE })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = qE })
end
local function fn627()
    local s1, s2, s3, te, tf, tg
    pp:Fire()
    local sX = pX("GeodeStock")
    local sY = tonumber(Options.GeodeReserve.Value) or 0
    local sY_1 = Options.GeodeBuyAmount.Value
    local s7 = if sY_1 then 1 else 0
    local s5 = 1986 * s7 + 519 * (1 - s7)
    local s6 = 373 * s7 + 1658 * (1 - s7)
    if not ((s5 * 2118 + s6 * 2462 + s5 * s6) % 16777213 == 5865452) then
        sY_1 = 1
    end
    local s_ = sY_1
    local sY_2 = Toggles.GeodeOnlyWhenFree.Value and math.min(s_, #px())
    local s0 = sY_2 or s_
    local sY_3 = 0
    local s__1 = s0
    local s9 = false
    for i, v in ipairs(qi) do
        local s8 = 17
        while true do
            if s8 < 13 then
                if s8 < 6 then
                    if s8 < 3 then
                        if s8 < 1 then
                            s0 = 0
                            s8 = 14
                        elseif s8 < 2 then
                            s8 = if (te * 2807 + tf * 240 + te * tf) % 16777213 == 1228620 then 14 else 0
                        else
                            s8 = 25
                        end
                    elseif s8 < 4 then
                        tf = 923 * tg + 1813 * (1 - tg)
                        s8 = 1
                    elseif s8 < 5 then
                        s2 = 0
                        s8 = 7
                    else
                        s2 = sY_3 < s__1
                        s8 = if s2 then 8 else 19
                    end
                elseif s8 < 9 then
                    if s8 < 7 then
                        s8 = 5
                    elseif s8 < 8 then
                        s3 = s2
                        s8 = if qt() - s3 < sY then 20 else 22
                    else
                        s2 = s0 < s1
                        s8 = 19
                    end
                elseif s8 < 11 then
                    if s8 < 10 then
                        s0 = s1 > 0
                        s8 = 23
                    else
                        s9 = true
                        s8 = 24
                    end
                elseif s8 < 12 then
                    s2(s3)
                    s8 = 21
                else
                    s0 = 0
                    s8 = 6
                end
            elseif s8 < 20 then
                if s8 < 16 then
                    if s8 < 14 then
                        s3 = 0.2
                        s8 = 11
                    elseif s8 < 15 then
                        s1 = s0
                        s0 = pl[v]
                        s8 = if s0 then 9 else 23
                    else
                        s2 = task.wait
                        s3 = Options.ActionDelay.Value
                        s8 = if s3 then 11 else 13
                    end
                elseif s8 < 18 then
                    if s8 < 17 then
                        s2 = p1[v]
                        s8 = if s2 then 7 else 4
                    else
                        s0 = sX[v]
                        tg = if s0 then 1 else 0
                        te = 270 * tg + 2075 * (1 - tg)
                        s8 = 3
                    end
                elseif s8 < 19 then
                    s8 = 2
                else
                    s8 = if s2 then 16 else 18
                end
            elseif s8 < 23 then
                if s8 < 21 then
                    s8 = 2
                elseif s8 < 22 then
                    s8 = 6
                else
                    ps:Fire({ name = v })
                    sY_3 += 1
                    s0 += 1
                    s8 = if Toggles.GeodeNotify.Value then 26 else 15
                end
            elseif s8 < 25 then
                if s8 < 24 then
                    s8 = if s0 then 12 else 25
                else
                    break
                end
            elseif s8 < 26 then
                s8 = 24
            else
                Library:Notify(("Bought %s"):format(v))
                s8 = 15
            end
        end
        if s9 then
            break
        end
    end
end
local function onUnload()
    Library:Unload()
end
local function fn668()
    local Data = PlayerData.Data
    local rS_1 = Data and Data.Cash
    local rX = if rS_1 then 1 else 0
    local rV = 38 * rX + 2841 * (1 - rX)
    local rW = 2364 * rX + 3063 * (1 - rX)
    if not ((rV * 1764 + rW * 3492 + rV * rW) % 16777213 == 8411952) then
        rS_1 = 0
    end
    return rS_1
end
local function fn672(g7)
    if type(g7) ~= "table" then
        return
    end
    if type(g7.owned) == "table" then
        pq = g7.owned
    end
    if type(g7.equipped) == "string" then
        pn = g7.equipped
    end
end
local function autoDeliverGemsLoop()
    while not Library.Unloaded do
        if Toggles.AutoDeliverGems.Value then
            pcall(pD)
        end
        task.wait(0.25)
    end
end
local function autoRebirthLoop()
    while not Library.Unloaded do
        if Toggles.AutoRebirth.Value then
            pcall(qk)
        end
        local As = Options.RebirthLoopDelay.Value or 10
        task.wait(As)
    end
end
local function fn748()
    local Character = LocalPlayer.Character
    local r9 = Character and Character:FindFirstChild("HumanoidRootPart")
    return r9
end
local function fn754()
    local zE_1
    local zD_1
    if identifyexecutor then
        zE_1, zD_1 = identifyexecutor()
        local zF = zE_1 ~= ""
        local zG = type(zE_1) == "string" and zF
        if zG then
            local zF_1 = type(zD_1) == "string" and zD_1 ~= "" and zE_1 .. " " .. zD_1
            qL = zF_1 or zE_1
        end
    end
end
local function fn764(hJ)
    local yH_1
    local yG_1
    local yF = pa()
    if not yF then
        return false
    end
    yH_1, yG_1 = hJ:GetBoundingBox()
    local yI = yH_1.Position + Vector3.new(0, yG_1.Y / 2 + 3, 0)
    if (yF.Position - yI).Magnitude > 1 then
        yF.CFrame = CFrame.new(yI)
    end
    return true
end
local function fn769()
    local yi = pw()
    local attr = LocalPlayer:GetAttribute("InMine")
    if not (yi and attr) then
        return nil
    end
    local yk_1 = yi:FindFirstChild(attr)
    local yi_1 = yk_1 and yk_1:IsA("Model")
    return yi_1 and yk_1 or nil
end
local function fn783(bA)
    local attr2 = bA:GetAttribute("Value")
    if attr2 then
        return attr2
    end
    local ComputeValue = GemConfig.ComputeValue
    local attr = bA:GetAttribute("GemName")
    local sC = bA:GetAttribute("Kg") or 0
    local sD = bA:GetAttribute("Purity") or 1
    local sE = bA:GetAttribute("RadMult") or 1
    return ComputeValue(attr, sC, sD, sE)
end
local function fn786()
    local sJ = pw()
    local sK = sJ and sJ:FindFirstChild("PlacedGrinders")
    local sJ_1 = {}
    if not sK then
        return sJ_1
    end
    for i, child in ipairs(sK:GetChildren()) do
        local GemSpawn = child:FindFirstChild("GemSpawn")
        local sL_1 = GemSpawn and GemSpawn:FindFirstChild("ProximityPrompt")
        local sM = sL_1
        if sL_1 then
            sL_1 = not child:GetAttribute("Grinding")
        end
        if sL_1 then
            sL_1 = not GemSpawn:FindFirstChild("PickPrompt")
        end
        if sL_1 then
            sJ_1[#sJ_1 + 1] = sM
        end
    end
    return sJ_1
end
local function fn792()
    local xH = qg()
    if xH >= (Options.RebirthMaxLevel.Value or #RebirthConfig.Rebirths) then
        return
    end
    local xI_1 = RebirthConfig.GetNext(xH)
    if not xI_1 then
        return
    end
    local xJ = qt()
    if xJ < (xI_1.price or math.huge) then
        return
    end
    qh:Fire()
    if Toggles.RebirthNotify.Value then
        Library:Notify(("Rebirthed to %d"):format(xH + 1))
    end
end
local function fn799()
    local Data = PlayerData.Data
    return Data and Data.Rebirths or 0
end
local function autoMineLoop()
    while not Library.Unloaded do
        if Toggles.AutoMine.Value then
            if Toggles.AutoEnterMine.Value then
                pcall(pr)
            end
            pcall(qv)
            if Toggles.AutoLeaveMine.Value then
                pcall(p7)
            end
        end
        local z0 = Options.MineLoopDelay.Value or 0.5
        task.wait(z0)
    end
end
local function autoBuyGeodesLoop()
    while not Library.Unloaded do
        if Toggles.AutoBuyGeodes.Value then
            pcall(qp)
        end
        if Toggles.AutoBuyDarkGeodes.Value then
            pcall(qr)
        end
        local zV = Options.GeodeLoopDelay.Value or 3
        task.wait(zV)
    end
end
local function onInputBegan()
    pR = tick()
end
local function onRedeemCodes()
    task.spawn(codesLoop)
end
local function autoInsertGeodesLoop()
    while not Library.Unloaded do
        if Toggles.AutoInsertGeodes.Value then
            pcall(p2)
        end
        local zY = Options.InsertLoopDelay.Value or 1
        task.wait(zY)
    end
end
local function fn902()
    local uE = pw()
    local uF = uE and uE:FindFirstChild("PlacedDisplays")
    local uE_1 = {}
    if not uF then
        return uE_1
    end
    for i, child in ipairs(uF:GetChildren()) do
        for i, descendant in ipairs(child:GetDescendants()) do
            local uF_1 = descendant:IsA("ProximityPrompt") and descendant.Name == "DisplayGemPrompt" and descendant.Enabled
            if uF_1 then
                uE_1[#uE_1 + 1] = descendant
            end
        end
    end
    return uE_1
end
local function fn932(cR)
    local t2 = (Options.SellMinPurity.Value or 0) / 100
    local t1_1 = tonumber(Options.SellMinValue.Value) or 0
    local t1_2 = cR:GetAttribute("Purity") or 0
    if t1_2 < t2 then
        return false
    end
    local t1_3 = cR:GetAttribute("Value") or 0
    if t1_3 < t1_1 then
        return false
    end
    return true
end
local function autoDiscardGemsLoop()
    while not Library.Unloaded do
        if Toggles.AutoDiscardGems.Value then
            pcall(qI)
        end
        if Toggles.AutoDisplayGems.Value then
            pcall(pB)
        end
        if Toggles.AutoPlaceGems.Value then
            pcall(qN)
        end
        local z9 = Options.PlaceGemLoopDelay.Value or 1
        task.wait(z9)
    end
end
local function fn979()
    local ui = pw()
    local uj = ui and ui:FindFirstChild("PlacedTables")
    local ui_1 = {}
    if not uj then
        return ui_1
    end
    for i, child in ipairs(uj:GetChildren()) do
        for i, descendant in ipairs(child:GetDescendants()) do
            local uj_1 = descendant:IsA("ProximityPrompt") and descendant.Name == "PlaceGemPrompt" and descendant.Enabled
            if uj_1 then
                ui_1[#ui_1 + 1] = descendant
            end
        end
    end
    return ui_1
end
local function fn1002()
    local Value = Toggles.GlobalAutoSell.Value
    if LocalPlayer:GetAttribute("AutoSell") == true ~= Value then
        qB:Fire({ enabled = Value })
    end
end
local function fn1008()
    connection:Disconnect()
    connection2:Disconnect()
    print("Cut a Gem unloaded")
end
local function autoNegotiateLoop()
    while not Library.Unloaded do
        if Toggles.AutoNegotiate.Value then
            pcall(pu)
        end
        if Toggles.ApplySlotSettings.Value then
            pcall(pQ)
            pcall(qx)
        end
        local Ad = Options.NegotiateLoopDelay.Value
        local Ah = if Ad then 1 else 0
        local Af = 1889 * Ah + 830 * (1 - Ah)
        local Ag = 801 * Ah + 689 * (1 - Ah)
        if not ((Af * 1058 + Ag * 151 + Af * Ag) % 16777213 == 3632602) then
            Ad = 1
        end
        task.wait(Ad)
    end
end
local function fn1027(hs)
    local Get = MineConfig.Get
    local yq = hs:GetAttribute("MineName") or ""
    local yr = Get(yq)
    local yq_1 = yr and yr.RockHealth
    local yp_2 = yq_1 ~= nil and hs:GetAttribute("MaxHealth") == yq_1.Sparkle
    return yp_2
end
local function fn1034(em, en)
    local vL = em and em:FindFirstChild("Slots")
    local vM = vL
    if vL then
        local vN = en or ""
        vL = vM:FindFirstChild(vN)
    end
    local vM_1 = vL
    if vL then
        vL = vM_1:FindFirstChild("Spawn")
    end
    local vM_2 = vL
    if vL then
        vL = vM_2:FindFirstChild("PlacedGem")
    end
    return vL
end
local function fn1038(hb)
    local ya = pa()
    if not (ya and hb.Parent) then
        return false
    end
    local Parent = hb.Parent
    local yc = Parent:IsA("BasePart") and Parent.Position
    local yd = yc or Parent:GetPivot().Position
    if (ya.Position - yd).Magnitude > hb.MaxActivationDistance - 2 then
        ya.CFrame = CFrame.new(yd + Vector3.new(0, 4, 0))
        task.wait(0.2)
    end
    fireproximityprompt(hb)
    local wait = task.wait
    local yb_3 = Options.ActionDelay.Value or 0.2
    wait(yb_3)
    return true
end
local function fn1086(aN)
    local Data = PlayerData.Data
    return Data and Data[aN] or {}
end
local function autoBuyItemsLoop()
    while not Library.Unloaded do
        if Toggles.AutoBuyItems.Value then
            pcall(qf)
        end
        local Aj = Options.ItemLoopDelay.Value or 5
        task.wait(Aj)
    end
end
local function fn1118()
    local Map = workspace:FindFirstChild("Map")
    local r5 = Map and Map:FindFirstChild("Plots")
    local attr = LocalPlayer:GetAttribute("PlotName")
    if not (r5 and attr) then
        return nil
    end
    return r5:FindFirstChild(attr)
end
o6 = nil
Options = nil
o8 = nil
o9 = nil
pa = nil
pb = nil
Toggles = nil
pd = nil
pe = nil
pf = nil
pg = nil
ph = nil
pi = nil
pj = nil
pk = nil
pl = nil
pm = nil
pn = nil
po = nil
pp = nil
pq = nil
pr = nil
ps = nil
Library = nil
pu = nil
pv = nil
pw = nil
px = nil
PlayerData = nil
pz = nil
pA = nil
pB = nil
PickaxeConfig = nil
pD = nil
pE = nil
pF = nil
pG = nil
pH = nil
MineConfig = nil
pJ = nil
pK = nil
pL = nil
pM = nil
RebirthConfig = nil
pO = nil
pP = nil
pQ = nil
pR = nil
pS = nil
pT = nil
pU = nil
pV = nil
pX = nil
pY = nil
pZ = nil
p_ = nil
p0 = nil
p1 = nil
p2 = nil
p3 = nil
p4 = nil
p5 = nil
GemConfig = nil
p7 = nil
p8 = nil
p9 = nil
qa = nil
qb = nil
qc = nil
qd = nil
qe = nil
qf = nil
qg = nil
qh = nil
qi = nil
qj = nil
qk = nil
ql = nil
qm = nil
connection2 = nil
LocalPlayer = nil
qp = nil
qq = nil
qr = nil
qs = nil
qt = nil
qu = nil
qv = nil
qw = nil
qx = nil
qy = nil
qz = nil
VirtualUser = nil
qB = nil
codesLoop = nil
qD = nil
qE = nil
qG = nil
local pW, qF
qH = nil
qI = nil
qJ = nil
qK = nil
qL = nil
connection = nil
qN = nil
qH, VirtualUser, LocalPlayer = nil, nil, nil
local AC_8 = game:GetService("Players")
qH = game:GetService("ReplicatedStorage")
local AC_25 = game:GetService("ReplicatedFirst")
VirtualUser = game:GetService("VirtualUser")
local UserInputService = game:GetService("UserInputService")
LocalPlayer = AC_8.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return LocalPlayer:WaitForChild("PlayerGui")
    end
end
AC_47, GemConfig, RebirthConfig, MineConfig, PickaxeConfig, PlayerData, ps, pp, pk, ph, pf, pb, o6, qJ, qD, qB, qw, qq, qm, qj, qh, qc, p8, p0, pZ, pW, pU, pO, pK, pF, Library, Toggles, Options, qK, qs, qi, qe, p9, p1, qE = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if ((pf or not pf) and (not pf or pK) or qj and not pK and (qj and pK) or (pK and pf or pK and not qD or (pf or pf or (qj or not pf)))) and ((qD or not pf or (not qj or pK) or (qj and not pf or (qj or not qD))) and (not pf and qj and (not qj and not qj) or (not pK or qD) and (not qD and qj))) and not (((pf or not pf) and (not pf or pK) or qj and not pK and (qj and pK) or (pK and pf or pK and not qD or (pf or pf or (qj or not pf)))) and ((qD or not pf or (not qj or pK) or (qj and not pf or (qj or not qD))) and (not pf and qj and (not qj and not qj) or (not pK or qD) and (not qD and qj)))) then
    qH = require(AC_47:WaitForChild("Packages"):WaitForChild("BridgeNet2"))
else
    AC_47 = require(qH:WaitForChild("Packages"):WaitForChild("BridgeNet2"))
end
local AC_16 = require(qH.Shared.GeodeConfig)
GemConfig = require(qH.Shared.GemConfig)
local AC_14 = require(qH.Shared.GrinderConfig)
local AC_28 = require(qH.Shared.DisplayTableConfig)
local AC_44 = require(qH.Shared.TotemsConfig)
local AC_41 = require(qH.Shared.DisplayConfig)
RebirthConfig = require(qH.Shared.RebirthConfig)
MineConfig = require(qH.Shared.MineConfig)
PickaxeConfig = require(qH.Shared.PickaxeConfig)
PlayerData = require(AC_25.Modules.PlayerData)
ps = AC_47.ReferenceBridge("BuyGeode")
pp = AC_47.ReferenceBridge("RequestStock")
pk = AC_47.ReferenceBridge("BuyDarkGeode")
ph = AC_47.ReferenceBridge("RequestDarkStock")
pf = AC_47.ReferenceBridge("BuyItem")
pb = AC_47.ReferenceBridge("RequestItemStock")
o6 = AC_47.ReferenceBridge("PlaceItem")
qJ = AC_47.ReferenceBridge("ConveyorReached")
qD = AC_47.ReferenceBridge("NegotiateResponse")
if (not AC_44 and AC_44 and (not AC_47 or not AC_44) or (AC_47 or not AC_44) and (AC_44 or not AC_44)) and ((AC_44 or not AC_47 or AC_44 and AC_44) and ((not AC_47 or AC_47) and (not AC_47 or AC_47))) or (not AC_47 and AC_47 and (AC_47 and AC_47) or (AC_44 or AC_44 or (not AC_47 or not AC_47)) or (not AC_47 or not AC_47) and (not AC_44 or AC_47) and (AC_47 and not AC_44 and (AC_47 or not AC_47))) or not ((not AC_44 and AC_44 and (not AC_47 or not AC_44) or (AC_47 or not AC_44) and (AC_44 or not AC_44)) and ((AC_44 or not AC_47 or AC_44 and AC_44) and ((not AC_47 or AC_47) and (not AC_47 or AC_47))) or (not AC_47 and AC_47 and (AC_47 and AC_47) or (AC_44 or AC_44 or (not AC_47 or not AC_47)) or (not AC_47 or not AC_47) and (not AC_44 or AC_47) and (AC_47 and not AC_44 and (AC_47 or not AC_47)))) then
    qB = AC_47.ReferenceBridge("AutoSellToggle")
    qw = AC_47.ReferenceBridge("BuySlot")
    qq = AC_47.ReferenceBridge("BuySlotUpgrade")
    qm = AC_47.ReferenceBridge("SetSlotMargin")
else
    AC_47 = qB.ReferenceBridge("AutoSellToggle")
    qm = qB.ReferenceBridge("BuySlot")
    qw = qB.ReferenceBridge("BuySlotUpgrade")
    qq = qB.ReferenceBridge("SetSlotMargin")
end
qj = AC_47.ReferenceBridge("ToggleSlotAuto")
qh = AC_47.ReferenceBridge("RebirthDo")
qc = AC_47.ReferenceBridge("SpinDo")
p8 = AC_47.ReferenceBridge("DailyClaim")
p0 = AC_47.ReferenceBridge("PlaytimeClaim")
pZ = AC_47.ReferenceBridge("GroupRewardClaim")
pW = AC_47.ReferenceBridge("RedeemCode")
pU = AC_47.ReferenceBridge("MineSwing")
pO = AC_47.ReferenceBridge("PickaxeBuy")
if (Toggles and not pk or Toggles and Library or (not pk or not Toggles or not Toggles and pk)) and ((Toggles and not pk or (not Library or not Library)) and ((Toggles or not Toggles) and (not Toggles and not pk))) and not ((Toggles and not pk or Toggles and Library or (not pk or not Toggles or not Toggles and pk)) and ((Toggles and not pk or (not Library or not Library)) and ((Toggles or not Toggles) and (not Toggles and not pk)))) then
    pF.ReferenceBridge("PickaxeEquip")
    pK = pF.ReferenceBridge("PickaxeSync")
else
    pK = AC_47.ReferenceBridge("PickaxeEquip")
    pF = AC_47.ReferenceBridge("PickaxeSync")
end
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
pcall(fns.fn509)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
qK = "https://discord.gg/ehKVq7pf7v"
qE = fns.fn27
qs = { "PlacedGrinders", "PlacedTables", "PlacedTotems", "PlacedDisplays" }
local AC_49 = { "Grinders", "Tables", "Totems", "Displays" }
local AC_33 = { Grinders = AC_14, Tables = AC_28, Totems = AC_44, Displays = AC_41 }
qi = {}
qe = {}
p9 = {}
p1 = {}
for i, v in ipairs(AC_16.GetAll()) do
    AC_8 = v.name
    AC_41 = v.tier
    local AC_36 = if AC_41 then 1 else 0
    local AC_21 = 2414 * AC_36 + 1253 * (1 - AC_36)
    local AC_3 = 491 * AC_36 + 449 * (1 - AC_36)
    if not ((AC_21 * 2339 + AC_3 * 436 + AC_21 * AC_3) % 16777213 == 7045696) then
        AC_41 = 0
    end
    p9[AC_8] = AC_41
    AC_8 = v.name
    AC_41 = v.price or 0
    p1[AC_8] = AC_41
    if v.Dark then
        qe[#qe + 1] = v.name
    elseif not v.ExcludeShop then
        qi[#qi + 1] = v.name
    end
end
pV, pP, pL = nil, nil, nil
AC_8 = 1
repeat
    if AC_8 * 84554681 + 12 + 4 <= AC_8 * 84554681 + 12 + 4 + 6 then
        pV = {}
        pP = {}
        pL = {}
    else
        pP = {}
        pL = {}
        pV = {}
    end
    AC_8 = (AC_8 + 6) % 8
until (AC_8 * 3 + 1) % 8 == 6
for i, v in ipairs(AC_49) do
    for i, v2 in ipairs(AC_33[v].GetAll()) do
        if not v2.ExcludeShop then
            pV[#pV + 1] = v2.name
            AC_8 = v2.name
            AC_41 = v2.price or 0
            pP[AC_8] = AC_41
            pL[v2.name] = v
        end
    end
end
pl, pj, pg, pd, pJ, qF, pq, pn, o9, qt, qg, pX, pw, pa, qy, qb, qu, pT, px, qp, qr, pi, p2, pm, p_, pG, qz, pS, qN, pB, qI, pD, qd, pu, pQ, qx, qf, qG, pY, p5, ql, pE, qk, pv, codesLoop, p3, o8, qa, pH, pe, p4, pA, pr, qv, p7, pz, AC_25 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if (pz or pi or (pn or qb) or (not pz or not pn) and (pi and pz)) and (pi and pz and (not pn or pi) and ((not pi or pn) and (pn or not pi))) or not ((pz or pi or (pn or qb) or (not pz or not pn) and (pi and pz)) and (pi and pz and (not pn or pi) and ((not pi or pn) and (pn or not pi)))) then
    pl = {}
    pj = {}
    pg = {}
else
    pg = {}
    pl = {}
    pj = {}
end
pd = {}
o9 = fns.fn494
qt = fn668
qg = fn799
pX = fn1086
pw = fn1118
pa = fn748
qy = fns.fn46
qb = fns.fn368
qu = fns.fn109
pT = fn783
px = fn786
qp = fn627
qr = fn600
pi = fns.fn171
p2 = fns.fn361
pm = fns.fn297
p_ = fn932
pG = fns.fn394
qz = fn979
pS = fn902
qN = fns.fn124
pB = fns.fn304
qI = fns.fn215
pJ = {}
pD = fns.fn525
qd = fn1034
pu = fn616
pQ = fns.fn349
qx = fn1002
qf = fns.fn184
qG = fns.fn188
pY = fns.fn293
p5 = fns.fn551
if not pw and qv and (not pj and not pS) and (pj or pS or (AC_25 or not pw)) and ((qv and qv or (pw or not pj)) and (AC_25 and not pw or (pw or not AC_25))) and not (not pw and qv and (not pj and not pS) and (pj or pS or (AC_25 or not pw)) and ((qv and qv or (pw or not pj)) and (AC_25 and not pw or (pw or not AC_25)))) then
    pd = fns.fn554
else
    ql = fns.fn554
end
pE = fns.fn68
qk = fn792
pv = fns.fn384
qF = {}
codesLoop = function()
    local xR = Options.Codes.Value
    local xW = if xR then 1 else 0
    local xU = 769 * xW + 1771 * (1 - xW)
    local xV = 157 * xW + 3103 * (1 - xW)
    if not ((xU * 727 + xV * 908 + xU * xV) % 16777213 == 822352) then
        xR = ""
    end
    local xS = xR
    for k in xS:gmatch("[^,%s]+") do
        local x_ = k
        if not qF[x_] then
            qF[x_] = true
            pcall(function()
                pW:InvokeServerAsync({ code = x_ })
            end)
            task.wait(0.5)
        end
    end
end
p3 = fns.fn346
pq = {}
pn = PickaxeConfig.Default
pF:Connect(fn672)
pF:Fire()
o8 = fn1038
qa = fn769
pH = fn1027
pe = fns.fn225
p4 = fn764
pA = fns.fn502
pr = fns.fn192
qv = fns.fn21
p7 = fns.fn404
pz = fns.fn235
AC_8 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = "https://discord.gg/ehKVq7pf7v | Cut a Gem",
    Icon = 18657887261,
    NotifySide = "Right",
    Size = UDim2.fromOffset(900, 640),
    ShowCustomCursor = false
})
Library.ShowCustomCursor = false
AC_44 = {
    Info = AC_8:AddTab("Info", "info"),
    Grinding = AC_8:AddTab("Grinding", "gem"),
    Mining = AC_8:AddTab("Mining", "pickaxe"),
    Selling = AC_8:AddTab("Selling", "banknote"),
    Shop = AC_8:AddTab("Shop", "shopping-cart"),
    Progress = AC_8:AddTab("Progress", "trending-up"),
    Settings = AC_8:AddTab("Settings", "settings")
}
AC_25 = fn619
for k, v in AC_44 do
    AC_25(v)
end
qL, AutoBuyGeodesGroup, MineAccessGroup, AutoPlaceItemsGroup, AutoRebirthGroup, CodesGroup, ActionsGroup, pR, pM, connection, connection2, po = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
AC_8 = AC_44.Info:AddLeftGroupbox("Basic Info", "circle-user")
qL = "Unknown"
pcall(fn754)
AC_8:AddLabel("Executor: " .. qL, true)
AC_8:AddLabel("Game: Cut a Gem", true)
AC_8:AddLabel("Player: " .. LocalPlayer.Name, true)
AC_8:AddLabel("Status: Keyless", true)
local OuroborosHubGroup = AC_44.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = qE })
local FaqGroup = AC_44.Info:AddRightGroupbox("FAQ", "circle-help")
if (not qL or AutoRebirthGroup or AutoRebirthGroup and not qL) and ((qL or not CodesGroup) and (not qL and MineAccessGroup)) and not ((not qL or AutoRebirthGroup or AutoRebirthGroup and not qL) and ((qL or not CodesGroup) and (not qL and MineAccessGroup))) then
    AC_44:AddLabel("Where do I get a good config?", true)
    AC_44:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
    AC_44:AddLabel("How do I import / export configs?", true)
    AC_44:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
    AC_44:AddLabel("How do I report bugs?", true)
    AC_44:AddLabel("Join the Discord and post it in the bugs channel.", true)
    AC_44:AddLabel("How do I make suggestions?", true)
    AC_44:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
    AC_44:AddLabel("How do I get help or updates?", true)
    AC_44:AddLabel("Join the Discord, updates and support are posted there first.", true)
    AutoBuyGeodesGroup.Grinding:AddLeftGroupbox("Auto Buy Geodes", "package")
else
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
    AutoBuyGeodesGroup = AC_44.Grinding:AddLeftGroupbox("Auto Buy Geodes", "package")
end
AutoBuyGeodesGroup:AddToggle("AutoBuyGeodes", { Text = "Auto Buy Geodes", Default = false })
AutoBuyGeodesGroup:AddDropdown("BuyGeodes", { Text = "Geodes To Buy", Values = qi, Default = {}, Multi = true, Callback = fns.onBuyGeodes })
AutoBuyGeodesGroup:AddToggle("AutoBuyDarkGeodes", { Text = "Auto Buy Dark Geodes", Default = false })
AutoBuyGeodesGroup:AddDropdown("BuyDarkGeodes", {
    Text = "Dark Geodes To Buy",
    Values = qe,
    Default = {},
    Multi = true,
    Callback = fns.onBuyDarkGeodes
})
AutoBuyGeodesGroup:AddToggle("GeodeOnlyWhenFree", { Text = "Only Buy For Free Grinders", Default = true })
AutoBuyGeodesGroup:AddSlider("GeodeBuyAmount", { Text = "Max Buys Per Cycle", Default = 3, Min = 1, Max = 25, Rounding = 0 })
AutoBuyGeodesGroup:AddInput("GeodeReserve", {
    Text = "Keep Cash Reserve",
    Default = "0",
    Numeric = true,
    Finished = false,
    ClearTextOnFocus = false
})
AutoBuyGeodesGroup:AddToggle("GeodeNotify", { Text = "Notify On Buy", Default = false })
AutoBuyGeodesGroup:AddSlider("GeodeLoopDelay", { Text = "Loop Delay", Default = 3, Min = 0.5, Max = 30, Rounding = 1 })
AC_33 = AC_44.Grinding:AddRightGroupbox("Auto Grind", "cog")
AC_33:AddToggle("AutoInsertGeodes", { Text = "Auto Put Geodes In Grinders", Default = false })
AC_33:AddDropdown("InsertMode", {
    Text = "Geode Priority",
    Values = { "Highest Tier", "Lowest Tier", "Selected Geodes" },
    Default = "Highest Tier",
    Multi = false
})
AC_33:AddDropdown("InsertGeodes", { Text = "Geodes To Grind", Values = qi, Default = {}, Multi = true, Callback = fns.onInsertGeodes })
AC_33:AddToggle("InsertNotify", { Text = "Notify On Grind Start", Default = false })
AC_33:AddSlider("InsertLoopDelay", { Text = "Loop Delay", Default = 1, Min = 0.2, Max = 20, Rounding = 1 })
AC_49 = AC_44.Grinding:AddRightGroupbox("Auto Collect", "hand")
AC_49:AddToggle("AutoCollectGems", { Text = "Auto Collect Gems At Perfect Purity", Default = false })
AC_49:AddToggle("CollectNotify", { Text = "Notify On Collect", Default = false })
AC_49:AddSlider("CollectLoopDelay", { Text = "Loop Delay", Default = 0.2, Min = 0.05, Max = 5, Rounding = 2 })
AC_16 = AC_44.Mining:AddLeftGroupbox("Auto Mine", "mountain")
AC_16:AddToggle("AutoMine", { Text = "Auto Mine Rocks", Default = false })
AC_16:AddDropdown("MineRockType", {
    Text = "Rocks To Mine",
    Values = { "All Rocks", "Sparkle Only", "Normal Only" },
    Default = "All Rocks",
    Multi = false
})
AC_16:AddSlider("SwingDelay", { Text = "Swing Delay", Default = 0.35, Min = 0.05, Max = 2, Rounding = 2 })
AC_16:AddToggle("MineNotify", { Text = "Notify On Rock Break", Default = false })
AC_16:AddSlider("MineLoopDelay", { Text = "Loop Delay", Default = 0.5, Min = 0.1, Max = 10, Rounding = 1 })
MineAccessGroup = AC_44.Mining:AddRightGroupbox("Mine Access", "door-open")
MineAccessGroup:AddToggle("AutoEnterMine", { Text = "Auto Take Elevator Down", Default = false })
MineAccessGroup:AddToggle("AutoLeaveMine", { Text = "Auto Leave When Mine Is Empty", Default = false })
AC_47 = AC_44.Mining:AddRightGroupbox("Pickaxe", "axe")
AC_47:AddToggle("AutoBuyPickaxe", { Text = "Auto Buy Pickaxes", Default = false })
AC_47:AddToggle("AutoEquipPickaxe", { Text = "Auto Equip Best Pickaxe", Default = false })
AC_47:AddInput("PickaxeReserve", {
    Text = "Keep Cash Reserve",
    Default = "0",
    Numeric = true,
    Finished = false,
    ClearTextOnFocus = false
})
AC_47:AddToggle("PickaxeNotify", { Text = "Notify On Buy", Default = false })
AC_47:AddSlider("PickaxeLoopDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
AC_14 = AC_44.Selling:AddLeftGroupbox("Auto Place Gems", "move-right")
AC_14:AddToggle("AutoPlaceGems", { Text = "Auto Place Gems", Default = false })
AC_14:AddDropdown("GemDestination", { Text = "Destination", Values = { "Conveyor", "Table" }, Default = "Conveyor", Multi = false })
AC_14:AddSlider("SellMinPurity", { Text = "Minimum Purity", Default = 0, Min = 0, Max = 100, Rounding = 0, Suffix = "%" })
AC_14:AddInput("SellMinValue", {
    Text = "Minimum Value",
    Default = "0",
    Numeric = true,
    Finished = false,
    ClearTextOnFocus = false
})
AC_14:AddToggle("AutoDeliverGems", { Text = "Instant Conveyor Delivery", Default = false })
AC_14:AddToggle("PlaceGemNotify", { Text = "Notify On Place", Default = false })
AC_14:AddSlider("PlaceGemLoopDelay", { Text = "Loop Delay", Default = 1, Min = 0.2, Max = 20, Rounding = 1 })
AC_28 = AC_44.Selling:AddRightGroupbox("Auto Negotiate", "handshake")
AC_28:AddToggle("AutoNegotiate", { Text = "Auto Answer Buyers", Default = false })
AC_28:AddDropdown("NegotiateMode", {
    Text = "Accept When",
    Values = { "Minimum Ratio", "Minimum Amount", "Accept All" },
    Default = "Minimum Ratio",
    Multi = false
})
AC_28:AddSlider("NegotiateMinRatio", { Text = "Minimum Offer Ratio", Default = 100, Min = 10, Max = 300, Rounding = 0, Suffix = "%" })
AC_28:AddInput("NegotiateMinAmount", {
    Text = "Minimum Offer Amount",
    Default = "0",
    Numeric = true,
    Finished = false,
    ClearTextOnFocus = false
})
AC_28:AddToggle("NegotiateReject", { Text = "Reject Bad Offers", Default = true })
AC_28:AddToggle("NegotiateNotify", { Text = "Notify On Answer", Default = false })
AC_28:AddSlider("NegotiateLoopDelay", { Text = "Loop Delay", Default = 1, Min = 0.2, Max = 20, Rounding = 1 })
AC_41 = AC_44.Selling:AddLeftGroupbox("Slots", "layout-grid")
AC_41:AddToggle("ApplySlotSettings", { Text = "Apply Slot Settings", Default = false })
AC_41:AddToggle("SlotAutoSell", { Text = "Slot Auto Sell", Default = false })
AC_41:AddSlider("SlotMargin", { Text = "Slot Margin", Default = 10, Min = 0, Max = 100, Rounding = 0, Suffix = "%" })
AC_41:AddToggle("GlobalAutoSell", { Text = "Game Auto Sell", Default = false })
local AutoDiscardGroup = AC_44.Selling:AddRightGroupbox("Auto Discard", "trash-2")
AutoDiscardGroup:AddToggle("AutoDiscardGems", { Text = "Auto Discard Gems", Default = false })
AutoDiscardGroup:AddSlider("DiscardMaxPurity", { Text = "Discard Below Purity", Default = 20, Min = 0, Max = 100, Rounding = 0, Suffix = "%" })
local AutoBuyItemsGroup = AC_44.Shop:AddLeftGroupbox("Auto Buy Items", "store")
if ((not pR or pR) and (not pR or not AC_49) or (not AC_41 or not AC_49) and (AC_41 or not AC_41)) and ((AC_41 or not AC_41) and (AC_49 and not pR) and ((AC_49 or not AC_41) and (AC_49 or AC_41))) and not (((not pR or pR) and (not pR or not AC_49) or (not AC_41 or not AC_49) and (AC_41 or not AC_41)) and ((AC_41 or not AC_41) and (AC_49 and not pR) and ((AC_49 or not AC_41) and (AC_49 or AC_41)))) then
    AutoPlaceItemsGroup:AddToggle("AutoBuyItems", { Text = "Auto Buy Items", Default = false })
    AutoPlaceItemsGroup:AddDropdown("BuyItems", { Text = "Items To Buy", Multi = true, Values = AC_44, Callback = fns.onBuyItems, Default = {} })
    AutoPlaceItemsGroup:AddInput("ItemReserve", {
        Numeric = true,
        Default = "0",
        Finished = false,
        Text = "Keep Cash Reserve",
        ClearTextOnFocus = false
    })
    AutoPlaceItemsGroup:AddToggle("ItemNotify", { Text = "Notify On Buy", Default = false })
    AutoPlaceItemsGroup:AddSlider("ItemLoopDelay", { Min = 1, Rounding = 1, Max = 60, Text = "Loop Delay", Default = 5 })
    pV.Shop:AddRightGroupbox("Auto Place Items", "hammer")
else
    AutoBuyItemsGroup:AddToggle("AutoBuyItems", { Text = "Auto Buy Items", Default = false })
    AutoBuyItemsGroup:AddDropdown("BuyItems", { Text = "Items To Buy", Values = pV, Default = {}, Multi = true, Callback = fns.onBuyItems })
    AutoBuyItemsGroup:AddInput("ItemReserve", {
        Text = "Keep Cash Reserve",
        Default = "0",
        Numeric = true,
        Finished = false,
        ClearTextOnFocus = false
    })
    AutoBuyItemsGroup:AddToggle("ItemNotify", { Text = "Notify On Buy", Default = false })
    AutoBuyItemsGroup:AddSlider("ItemLoopDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
    AutoPlaceItemsGroup = AC_44.Shop:AddRightGroupbox("Auto Place Items", "hammer")
end
AutoPlaceItemsGroup:AddToggle("AutoPlaceItems", { Text = "Auto Place Owned Items", Default = false })
AutoPlaceItemsGroup:AddToggle("PlaceItemNotify", { Text = "Notify On Place", Default = false })
AutoPlaceItemsGroup:AddSlider("PlaceItemLoopDelay", { Text = "Loop Delay", Default = 3, Min = 0.5, Max = 30, Rounding = 1 })
local AutoExpandGroup = AC_44.Shop:AddRightGroupbox("Auto Expand", "maximize")
if not connection2 and ActionsGroup and (not connection2 or ActionsGroup) and ((not connection2 or pM) and (pM or not pM)) and not (not connection2 and ActionsGroup and (not connection2 or ActionsGroup) and ((not connection2 or pM) and (pM or not pM))) then
    AC_44:AddToggle("AutoBuyBases", { Text = "Auto Buy Bases", Default = false })
    AC_44:AddToggle("AutoBuySlots", { Text = "Auto Buy Slots", Default = false })
    AC_44:AddToggle("BuySlotUpgrades", { Text = "Auto Buy Slot Upgrades", Default = false })
    AC_44:AddSlider("ExpandLoopDelay", { Default = 10, Text = "Loop Delay", Min = 1, Max = 60, Rounding = 1 })
    AutoRebirthGroup.Progress:AddLeftGroupbox("Auto Rebirth", "refresh-cw")
else
    AutoExpandGroup:AddToggle("AutoBuyBases", { Text = "Auto Buy Bases", Default = false })
    AutoExpandGroup:AddToggle("AutoBuySlots", { Text = "Auto Buy Slots", Default = false })
    AutoExpandGroup:AddToggle("BuySlotUpgrades", { Text = "Auto Buy Slot Upgrades", Default = false })
    AutoExpandGroup:AddSlider("ExpandLoopDelay", { Text = "Loop Delay", Default = 10, Min = 1, Max = 60, Rounding = 1 })
    AutoRebirthGroup = AC_44.Progress:AddLeftGroupbox("Auto Rebirth", "refresh-cw")
end
AutoRebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
AutoRebirthGroup:AddSlider("RebirthMaxLevel", {
    Text = "Max Rebirth Level",
    Default = #RebirthConfig.Rebirths,
    Min = 1,
    Max = #RebirthConfig.Rebirths,
    Rounding = 0
})
AutoRebirthGroup:AddToggle("RebirthNotify", { Text = "Notify On Rebirth", Default = true })
AutoRebirthGroup:AddSlider("RebirthLoopDelay", { Text = "Loop Delay", Default = 10, Min = 1, Max = 60, Rounding = 1 })
local AutoRewardsGroup = AC_44.Progress:AddRightGroupbox("Auto Rewards", "gift")
AutoRewardsGroup:AddToggle("AutoSpin", { Text = "Auto Free Spin", Default = false })
AutoRewardsGroup:AddToggle("AutoDaily", { Text = "Auto Daily Gift", Default = false })
AutoRewardsGroup:AddToggle("AutoPlaytime", { Text = "Auto Playtime Rewards", Default = false })
AutoRewardsGroup:AddToggle("AutoPlaytimePad", { Text = "Auto Claim Playtime Pad", Default = false })
AutoRewardsGroup:AddToggle("AutoGroupReward", { Text = "Auto Group Reward", Default = false })
AutoRewardsGroup:AddSlider("RewardLoopDelay", { Text = "Loop Delay", Default = 15, Min = 5, Max = 120, Rounding = 0 })
local IndexGroup = AC_44.Progress:AddLeftGroupbox("Index", "book-open")
IndexGroup:AddToggle("AutoDisplayGems", { Text = "Auto Display Gems", Default = false })
CodesGroup = AC_44.Progress:AddRightGroupbox("Codes", "ticket")
CodesGroup:AddInput("Codes", {
    Text = "Codes",
    Default = "PRETTYGAME, 1KLIKES, 100KVISITS",
    Finished = false,
    ClearTextOnFocus = false
})
CodesGroup:AddButton({ Text = "Redeem Codes", Func = onRedeemCodes })
local MenuGroup = AC_44.Settings:AddLeftGroupbox("Menu", "wrench")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
ActionsGroup = AC_44.Settings:AddRightGroupbox("Actions", "move")
ActionsGroup:AddToggle("ReturnAfterAction", { Text = "Return After Teleport", Default = true })
ActionsGroup:AddSlider("ActionDelay", { Text = "Action Delay", Default = 0.2, Min = 0.05, Max = 2, Rounding = 2 })
pR = tick()
pM = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local zO = v
        pcall(function()
            zO:Disable()
        end)
    end
end)
po = fns.fn373
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(fns.onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
Library.ToggleKeybind = Options.MenuKeybind
Library:OnUnload(fn1008)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Mint")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/CutAGem")
SaveManager:BuildConfigSection(AC_44.Settings)
ThemeManager:ApplyToTab(AC_44.Settings)
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
task.spawn(autoBuyGeodesLoop)
task.spawn(autoInsertGeodesLoop)
task.spawn(autoMineLoop)
task.spawn(fns.autoBuyPickaxeLoop)
task.spawn(fns.autoCollectGemsLoop)
task.spawn(autoDiscardGemsLoop)
task.spawn(autoDeliverGemsLoop)
task.spawn(autoNegotiateLoop)
task.spawn(autoBuyItemsLoop)
task.spawn(fns.autoPlaceItemsLoop)
task.spawn(fns.autoBuyBasesLoop)
task.spawn(autoRebirthLoop)
task.spawn(fns.autoPlaytimePadLoop)
task.spawn(fns.antiAfkLoop)
Library:Notify("Cut a Gem loaded")
