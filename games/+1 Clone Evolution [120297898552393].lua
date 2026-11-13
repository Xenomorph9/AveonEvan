local r2
local ro
local rK
local rr
local rN
local q8
local rQ
local rx
local rb
local re
local rW
local rA
local rh
local rD
local rk
local r1
local rn
local rJ
local CoreGui
local rM
local q7
local rP
local rw
local rS
local ra
local rz
local rV
local rg
local rY
local rC
local rj
local r0
local rF
local rI
local q6
local rs
local rO
local LocalPlayer
local rv
local rR
local rc
local ry
local rU
local rX
local r_
local rl
local rH
local function fn86(eB)
    for i, descendant in ipairs(eB:GetDescendants()) do
        local vY = descendant:IsA("BasePart") and descendant.Name == "Tube"
        if vY then
            return descendant
        end
    end
    return nil
end
local function fn88()
    if not rl(firetouchinterest) then
        rQ.CloneStatus = "Your executor cannot fire touch pads"
        return
    end
    if not rb() then
        rQ.CloneStatus = "Waiting for your character"
        return
    end
    local Map = rW:FindFirstChild("Map")
    local v6 = Map and Map:FindFirstChild("CloneSpots")
    if not v6 then
        rQ.CloneStatus = "Clone spots are not loaded"
        return
    end
    local v6_1 = {}
    local gmatch = string.gmatch
    local v8 = rK("OwnedCloneTypes") or ""
    for k in gmatch(tostring(v8), "[^,]+") do
        v6_1[k] = true
    end
    local v7_1 = rh()
    local v8_1 = {}
    for i, child in ipairs(v6:GetChildren()) do
        local attr = child:GetAttribute("CloneType")
        local v9 = tonumber(child:GetAttribute("WinCost"))
        local wa = type(attr) == "string" and v9 and not v6_1[attr] and v9 <= v7_1
        if wa then
            local wa_1 = rO(child)
            if wa_1 then
                table.insert(v8_1, { name = attr, cost = v9, tube = wa_1 })
            end
        end
    end
    if #v8_1 == 0 then
        rQ.CloneStatus = "No affordable clone left to buy"
        return
    end
    table.sort(v8_1, function(e_, e0)
        return e_.cost < e0.cost
    end)
    local name = nil
    for i, v in ipairs(v8_1) do
        local v6_2 = not rc() or rR.stopped
        if v6_2 then
            return
        end
        if rM(v.tube) then
            task.wait(0.3)
            name = v.name
        end
    end
    if name then
        rQ.CloneStatus = "Bought " .. name
        return
    end
    rQ.CloneStatus = "Clone purchase was rejected"
end
local function fn118(bQ)
    if not rl(firetouchinterest) then
        return false
    end
    local t6 = rb()
    if not t6 or not bQ or not bQ.Parent then
        return false
    end
    local t7_1 = pcall(firetouchinterest, t6, bQ, 0)
    if not t7_1 then
        return false
    end
    task.wait(0.06)
    pcall(firetouchinterest, t6, bQ, 1)
    return true
end
local function fn129(gv)
    if gv then
        rQ.PetStatus = "Starting"
        rz(rD, q6)
    else
        rw(rD)
        rQ.PetStatus = "Idle"
    end
end
local function fn140(gn)
    if gn then
        rQ.HatchStatus = "Starting"
        rz(rH, r2)
    else
        rw(rH)
        rQ.HatchStatus = "Idle"
    end
end
local function fn184(aG)
    local Packages = r_:FindFirstChild("Packages")
    local s2 = Packages and Packages:FindFirstChild("Knit")
    local s1_1 = s2
    if s2 then
        s2 = s1_1:FindFirstChild("Services")
    end
    local s1_2 = s2
    if s2 then
        s2 = s1_2:FindFirstChild(aG)
    end
    local s1_3 = s2
    if s2 then
        s2 = s1_3:FindFirstChild("RF")
    end
    local s1_4 = s2
    if s1_4 then
        return rs(s1_4)
    end
    return nil
end
local function fn191(gh)
    if gh then
        rQ.CloneStatus = "Starting"
        rz(rR, ro)
    else
        rw(rR)
        rQ.CloneStatus = "Idle"
    end
end
local function fn284()
    rw(rj)
    rw(re)
    rw(ra)
    rw(r1)
    rw(rY)
    rw(rR)
    rw(rH)
    rw(rD)
end
local function fn291()
    return not rA.Unloaded
end
local function fn302(dR)
    local multiplier
    local index
    index, multiplier = nil, nil
    for i, v in ipairs(rP()) do
        if dR[v.index] == true and (not multiplier or v.multiplier > multiplier) then
            index, multiplier = v.index, v.multiplier
        end
    end
    return index, multiplier
end
local function fn420(dM)
    for i, v in ipairs(rP()) do
        if v.index == dM then
            return v.multiplier
        end
    end
    return nil
end
local function fn423(gc)
    local w_ = gc == rC
    local w0 = type(gc) ~= "string" or w_
    if w0 then
        rY.pad = nil
        return
    end
    local w__1 = tonumber(string.match(gc, "%d+"))
    local w0_1 = w__1 and math.floor(w__1)
    local w__2 = w0_1 or nil
    rY.pad = w__2
end
local function worker()
    local tx_1
    local tw_1
    tw_1, tx_1 = pcall(rV)
    if not tw_1 then
        q8.ready = true
        warn("[Ouroboros] game load failed: " .. tostring(tx_1))
    end
end
local function fn477()
    if not rl(firetouchinterest) then
        rQ.PlateStatus = "Your executor cannot fire touch pads"
        return
    end
    if not rb() then
        rQ.PlateStatus = "Waiting for your character"
        return
    end
    local clamp = math.clamp
    local uD_1
    local floor = math.floor
    local uF = tonumber(re.stage) or 1
    local uF_1
    local uE_1 = clamp(floor(uF), 1, rF)
    uD_1, uF_1 = rv(q8.cloneRF, "GetUnlockedZoneIndex")
    local uG = uD_1 and type(uF_1) == "number" and uE_1 >= uF_1
    if uG then
        rQ.PlateStatus = "Beat stage " .. tostring(uE_1) .. " first"
        return
    end
    local uD_2 = q7(uE_1)
    if not uD_2 then
        rQ.PlateStatus = "Stage " .. tostring(uE_1) .. " has no win plates loaded"
        return
    end
    local uF_2 = re.lastWins or rh()
    for i, v in ipairs(uD_2) do
        local uD_3 = not rc() or re.stopped
        if uD_3 then
            return
        end
        rM(v)
    end
    task.wait(0.75)
    local uD_4 = rh()
    re.lastWins = uD_4
    local uF_3 = uD_4 - uF_2
    if uF_3 > 0 then
        rQ.PlateStatus = string.format("Stage %d paid %s wins", uE_1, rr(uF_3))
        return
    end
    rQ.PlateStatus = "Stage " .. tostring(uE_1) .. " plates are already claimed"
end
local function fn501()
    return CoreGui
end
local function fn536()
    local tf_1
    local tg_1
    tf_1, tg_1 = rv(q8.petRF, "GetEggs")
    local th = not tf_1 or type(tg_1) ~= "table"
    if th then
        return nil
    end
    local tf_2 = {}
    for k, v in pairs(tg_1) do
        local tg_2 = type(v) == "table" and v.Robux ~= true and v.Currency == "Wins"
        if tg_2 then
            local tg_3 = tonumber(v.Cost) or 0
            local th_1 = type(v.DisplayName) == "string" and v.DisplayName
            local ti = th_1 or k
            tf_2[k] = { Cost = tg_3, DisplayName = ti }
        end
    end
    if next(tf_2) == nil then
        return nil
    end
    return tf_2
end
local function fn541(fV)
    if fV then
        rQ.ClickStatus = "Starting"
        rz(ra, rU)
    else
        rw(ra)
        rQ.ClickStatus = "Idle"
    end
end
local function fn542()
    local u5 = q8.padConfig and q8.padConfig.Pads
    local u6 = {}
    if type(u5) ~= "table" then
        return u6
    end
    for k, v in pairs(u5) do
        local u5_1 = tonumber(k)
        local u7_1 = u5_1 and type(v) == "table"
        if u7_1 then
            local insert = table.insert
            local u8 = tonumber(v.Multiplier) or 1
            insert(u6, { index = u5_1, multiplier = u8, rebirths = tonumber(v.Rebirths), robux = v.GamePass == true })
        end
    end
    table.sort(u6, function(dJ, dK)
        return dJ.index < dK.index
    end)
    return u6
end
local function fn543()
    local Character = LocalPlayer.Character
    local sO = Character and Character:FindFirstChild("HumanoidRootPart")
    local sN_1 = sO
    local sS = if sN_1 then 1 else 0
    local sQ = 1906 * sS + 2947 * (1 - sS)
    local sR = 2672 * sS + 1396 * (1 - sS)
    if not ((sQ * 579 + sR * 834 + sQ * sR) % 16777213 == 8424854) then
        sN_1 = nil
    end
    return sN_1
end
local function fn548(ai)
    local sJ = tonumber(ai) or 0
    ai = sJ
    local sJ_1 = 1
    local sK = { "", "K", "M", "B", "T", "Qa", "Qi", "Sx", "Sp", "Oc", "No", "Dc" }
    while ai >= 1000 and sJ_1 < 12 do
        ai = ai / 1000
        sJ_1 += 1
    end
    if sJ_1 == 1 then
        return string.format("%d", ai)
    end
    return string.format("%.2f%s", ai, sK[sJ_1])
end
local function fn559()
    local tG = {}
    local tH = {}
    for i, v in ipairs(rx) do
        if q8.eggs == nil or q8.eggs[v] then
            table.insert(tH, v)
            tG[v] = true
        end
    end
    if q8.eggs then
        local tI_2 = {}
        for k in pairs(q8.eggs) do
            if not tG[k] then
                table.insert(tI_2, k)
            end
        end
        table.sort(tI_2, function(bE, bF)
            return (q8.eggs[bE].Cost or 0) < (q8.eggs[bF].Cost or 0)
        end)
        for i, v in ipairs(tI_2) do
            table.insert(tH, v)
        end
    end
    return tH
end
local function fn570(f6)
    if f6 then
        rQ.TrainStatus = "Starting"
        rz(rY, rN)
    else
        rw(rY)
        rQ.TrainStatus = "Idle"
    end
end
local function fn572(aB)
    local sZ_1
    local sY_1
    if not aB then
        return nil
    end
    sY_1, sZ_1 = pcall(require, aB)
    local s_ = sY_1 and type(sZ_1) == "table"
    if s_ then
        return sZ_1
    end
    return nil
end
local function fn626(bK)
    local t0 = q8.eggs and q8.eggs[bK]
    local t1 = t0
    if t0 then
        t0 = tonumber(t1.Cost)
    end
    return t0 or nil
end
local function fn658(V)
    local sH = typeof(cloneref) == "function" and typeof(V) == "Instance"
    if sH then
        return cloneref(V)
    end
    return V
end
local function fn671(fL)
    if fL then
        re.lastWins = nil
        rQ.PlateStatus = "Starting"
        rz(re, rS)
    else
        rw(re)
        rQ.PlateStatus = "Idle"
    end
end
local function fn699(cA)
    local Stages = rW:FindFirstChild("Stages")
    local uu = Stages and Stages:FindFirstChild("Stage" .. tostring(cA))
    local ut_1 = uu
    if uu then
        uu = ut_1:FindFirstChild("Buttons")
    end
    local ut_2 = uu
    if not ut_2 then
        return nil
    end
    local uu_1 = {}
    for i, child in ipairs(ut_2:GetChildren()) do
        local TouchPart = child:FindFirstChild("TouchPart")
        local uv = TouchPart and TouchPart:IsA("BasePart") and TouchPart:GetAttribute("WinAmount") ~= nil and not string.match(child.Name, "^%d+x")
        if uv then
            table.insert(uu_1, TouchPart)
        end
    end
    if #uu_1 == 0 then
        return nil
    end
    table.sort(uu_1, function(cM, cN)
        local uq = tonumber(cM:GetAttribute("WinAmount")) or 0
        local ur = tonumber(cN:GetAttribute("WinAmount")) or 0
        return uq < ur
    end)
    return uu_1
end
local function fn748(fF)
    if fF then
        rj.target = nil
        rQ.StageStatus = "Starting"
        rz(rj, rn)
    else
        rw(rj)
        rQ.StageStatus = "Idle"
    end
end
local function fn767()
    local uk_1, uk_2
    local uj_1, uj_2
    local cloneRF = q8.cloneRF
    if not cloneRF then
        rQ.StageStatus = "Stage service unavailable"
        return
    end
    local ui = rj.target
    if type(ui) ~= "number" then
        uj_1, uk_1 = rv(cloneRF, "GetUnlockedZoneIndex")
        local ul_1 = not uj_1
        local up_1 = if ul_1 then 1 else 0
        local un_1 = 283 * up_1 + 1245 * (1 - up_1)
        local uo_1 = 3068 * up_1 + 2274 * (1 - up_1)
        if not ((un_1 * 3087 + uo_1 * 3167 + un_1 * uo_1) % 16777213 == 11458221) then
            ul_1 = type(uk_1) ~= "number"
        end
        if ul_1 then
            rQ.StageStatus = "Could not read stage progress"
            return
        end
        ui = math.floor(uk_1)
    end
    if ui > rF then
        rj.target = nil
        rQ.StageStatus = "Every stage is cleared"
        task.wait(3)
        return
    end
    local ui_1 = math.max(1, ui)
    uj_2, uk_2 = rv(cloneRF, "CompleteStage", ui_1)
    local uh_1 = not uj_2 or type(uk_2) ~= "table"
    if uh_1 then
        rj.target = nil
        rQ.StageStatus = "Stage " .. tostring(ui_1) .. " did not answer"
        return
    end
    local uh_2 = tonumber(uk_2.UnlockedZoneIndex)
    if uk_2.Success then
        if uk_2.AlreadyCompleted then
            local max = math.max
            local ul_2 = uh_2 or ui_1
            rj.target = max(ul_2, ui_1) + 1
            rQ.StageStatus = "Stage " .. tostring(ui_1) .. " was already cleared"
            return
        end
        local uj_4 = uh_2 or ui_1 + 1
        rj.target = uj_4
        local format = string.format
        local ul_3 = uk_2.Reward
        local up_2 = if ul_3 then 1 else 0
        local un_2 = 2628 * up_2 + 1598 * (1 - up_2)
        local uo_2 = 3713 * up_2 + 3138 * (1 - up_2)
        if not ((un_2 * 2175 + uo_2 * 3233 + un_2 * uo_2) % 16777213 == 10700580) then
            ul_3 = 0
        end
        rQ.StageStatus = format("Cleared stage %d for %s wins", ui_1, rr(ul_3))
        return
    end
    rj.target = uh_2
    rQ.StageStatus = "Stage " .. tostring(ui_1) .. " is still locked"
end
local function fn794(Y)
    return type(Y) == "function"
end
local function fn802()
    local wE_1
    local wD_1
    local petRF = q8.petRF
    if not petRF then
        rQ.PetStatus = "Pet service unavailable"
        return
    end
    wD_1, wE_1 = rv(petRF, "EquipBestPets")
    local wC_1 = not wD_1 or type(wE_1) ~= "table" or not wE_1.Success
    if wC_1 then
        rQ.PetStatus = "Equip was rejected"
        return
    end
    local wC_2 = type(wE_1.EquippedPetIds) == "table" and #wE_1.EquippedPetIds
    local wD_2 = wC_2
    local wJ = if wD_2 then 1 else 0
    local wH = 1604 * wJ + 1484 * (1 - wJ)
    local wI = 3455 * wJ + 3707 * (1 - wJ)
    if not ((wH * 1230 + wI * 2431 + wH * wI) % 16777213 == 15913845) then
        wD_2 = 0
    end
    local wC_3 = wD_2
    local format = string.format
    local wF = wC_3 == 1 and "" or "s"
    rQ.PetStatus = format("Equipped %d pet%s", wC_3, wF)
end
local function fn831(f0)
    if f0 then
        rQ.RebirthStatus = "Starting"
        rz(r1, rg)
    else
        rw(r1)
        rQ.RebirthStatus = "Idle"
    end
end
local function fn839()
    q8.cloneRF = ry("CloneClickService")
    q8.rebirthRF = ry("RebirthService")
    q8.petRF = ry("PetService")
    q8.eggs = rI()
    local Shared = r_:FindFirstChild("Shared")
    local tr = Shared and Shared:FindFirstChild("TargetPracticeConfig")
    q8.padConfig = r0(tr)
    local tq_1 = {}
    if not q8.cloneRF then
        table.insert(tq_1, "stages")
    end
    if not q8.rebirthRF then
        table.insert(tq_1, "rebirth")
    end
    if not q8.petRF then
        table.insert(tq_1, "pets")
    end
    if not q8.padConfig then
        table.insert(tq_1, "punching bags")
    end
    if not rl(firetouchinterest) then
        table.insert(tq_1, "touch pads")
    end
    q8.missing = tq_1
    q8.ready = true
end
local function fn878(ch)
    ch.stopped = true
    local uf = ch.generation or 0
    ch.generation = uf + 1
end
local function fn885(gt)
    local w7 = gt ~= ""
    local w8 = type(gt) == "string" and w7
    if w8 then
        rH.egg = gt
    end
end
local function fn955()
    gethui = rX
end
local function fn993()
    local uX_1, uX_3
    local uW_1, uW_5
    local rebirthRF = q8.rebirthRF
    if not rebirthRF then
        rQ.RebirthStatus = "Rebirth service unavailable"
        return
    end
    uW_1, uX_1 = rv(rebirthRF, "GetRebirthInfo")
    local uY = not uW_1
    local u1 = if uY then 1 else 0
    local u_ = 386 * u1 + 111 * (1 - u1)
    local u0 = 519 * u1 + 3563 * (1 - u1)
    if not ((u_ * 3117 + u0 * 1269 + u_ * u0) % 16777213 == 2062107) then
        uY = type(uX_1) ~= "table"
    end
    if uY then
        rQ.RebirthStatus = "Could not read rebirth progress"
        return
    end
    if uX_1.AtCap then
        rQ.RebirthStatus = "Rebirths are capped"
        return
    end
    if not uX_1.CanRebirth then
        local uW_2 = tonumber(uX_1.CurrentLevel) or 0
        local uW_3 = tonumber(uX_1.LevelRequired) or 0
        rQ.RebirthStatus = string.format("Level %d of %d", uW_2, uW_3)
        return
    end
    local uW_4 = rv(rebirthRF, "Rebirth")
    if not uW_4 then
        rQ.RebirthStatus = "Rebirth was rejected"
        return
    end
    rj.target = nil
    uW_5, uX_3 = rv(rebirthRF, "GetRebirthInfo")
    local uV_1 = uW_5 and type(uX_3) == "table" and tonumber(uX_3.RebirthCount)
    local uW_6 = uV_1 or nil
    local uV_2 = uW_6
    if uW_6 then
        uW_6 = "Rebirth " .. tostring(uV_2)
    end
    local uV_3 = uW_6 or "Rebirthed"
    rQ.RebirthStatus = uV_3
end
local function fn1025()
    local sW = tonumber(rK("PadWins")) or 0
    return sW
end
local function fn1129()
    local petRF = q8.petRF
    if not petRF then
        rQ.HatchStatus = "Pet service unavailable"
        return
    end
    local egg = rH.egg
    local wv = egg == ""
    local wv_2
    local ww = type(egg) ~= "string" or wv
    local ww_2
    if ww then
        rQ.HatchStatus = "Pick an egg first"
        return
    end
    local wv_1 = rk(egg)
    local ww_1 = rh()
    if wv_1 and ww_1 < wv_1 then
        rQ.HatchStatus = string.format("%s needs %s wins", egg, rr(wv_1))
        return
    end
    wv_2, ww_2 = rv(petRF, "OpenEgg", egg, 1)
    local wt_1 = not wv_2 or type(ww_2) ~= "table"
    if wt_1 then
        rQ.HatchStatus = "Hatch was rejected"
        return
    end
    if ww_2.Success then
        local wt_2 = type(ww_2.Pets) == "table" and ww_2.Pets
        local wv_4 = (wt_2 or {})[1]
        local wt_4 = type(wv_4) == "table"
        if wt_4 then
            local wx_2 = wv_4.DisplayName
            local wB_1 = if wx_2 then 1 else 0
            local wz_1 = 1382 * wB_1 + 3617 * (1 - wB_1)
            local wA_1 = 9 * wB_1 + 792 * (1 - wB_1)
            if not ((wz_1 * 2138 + wA_1 * 3612 + wz_1 * wA_1) % 16777213 == 2999662) then
                wx_2 = wv_4.ModelName
            end
            if not wx_2 then
                wx_2 = wv_4.Key
            end
            wt_4 = wx_2
        end
        local wv_5 = wt_4
        local wB_2 = if wv_5 then 1 else 0
        local wz_2 = 462 * wB_2 + 2668 * (1 - wB_2)
        local wA_2 = 1007 * wB_2 + 1286 * (1 - wB_2)
        if not ((wz_2 * 501 + wA_2 * 3461 + wz_2 * wA_2) % 16777213 == 4181923) then
            wv_5 = nil
        end
        local wt_5 = wv_5
        if wv_5 then
            wv_5 = "Hatched " .. tostring(wt_5)
        end
        local wt_6 = wv_5 or "Hatched a " .. egg .. " egg"
        rQ.HatchStatus = wt_6
        return
    end
    if ww_2.Reason == "StorageFull" then
        rQ.HatchStatus = "Pet storage is full"
        return
    end
    local wt_7 = ww_2.Reason or "unknown"
    rQ.HatchStatus = "Hatch failed: " .. tostring(wt_7)
end
local function fn1203(fR)
    local wM = tonumber(tostring(fR):match("%d+"))
    local wP = wM or 1
    re.stage = math.clamp(math.floor(wP), 1, rF)
    re.lastWins = nil
end
local function fn1227()
    local uT_1
    local uS_1
    local cloneRF = q8.cloneRF
    if not cloneRF then
        rQ.ClickStatus = "Click service unavailable"
        return
    end
    uS_1, uT_1 = rv(cloneRF, "Click")
    if not uS_1 then
        rQ.ClickStatus = "Click was rejected"
        return
    end
    local uR_1 = type(uT_1) == "table" and tonumber(uT_1.power)
    if uR_1 then
        rQ.ClickStatus = "Power " .. rr(uT_1.power)
        return
    end
    rQ.ClickStatus = "Clicking"
end
q6 = nil
q7 = nil
q8 = nil
LocalPlayer = nil
ra = nil
rb = nil
rc = nil
re = nil
rg = nil
rh = nil
rj = nil
rk = nil
rl = nil
rn = nil
ro = nil
CoreGui = nil
rr = nil
rs = nil
rv = nil
rw = nil
rx = nil
ry = nil
rz = nil
rA = nil
rC = nil
rD = nil
rF = nil
rH = nil
rI = nil
rJ = nil
rK = nil
rM = nil
rN = nil
rO = nil
rP = nil
rQ = nil
rR = nil
rS = nil
local Players, Workspace, rf, Lighting, TeleportService, rp, rt, GuiService, HttpService, VirtualUser, rG, UserInputService
rU = nil
rV = nil
rW = nil
rX = nil
rY = nil
r_ = nil
r0 = nil
r1 = nil
r2 = nil
local RunService, rZ
local r4_1
local sd = if not game:IsLoaded() then 1 else 0
if sd == 1 then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, Workspace, LocalPlayer, rX = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local r5 = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
game:GetService("CollectionService")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local r6 = "OuroborosCloneEvolution"
rX = fn501
if getgenv then
    getgenv().gethui = rX
end
rA, r_, rW, rQ, rF, rC, rx, q8, r4_1, rf, rs, rl, rc, rr, rb, rK, rh, r0, ry, rv, rI, rV = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local r3 = 23
repeat
    local r7 = (r3 * 1 + 1) % 8 + 1
    if r7 <= 4 then
        if r7 <= 2 then
            if r7 <= 1 then
                if (rl and rQ or rQ and not rl or (rF or not rl) and (rl or false)) and ((rl or rF) and (rQ and not rl) and (false and rl or rQ and rF)) and not ((rl and rQ or rQ and not rl or (rF or not rl) and (rl or false)) and ((rl or rF) and (rQ and not rl) and (false and rl or rQ and rF))) then
                    pcall(fn955)
                    rW = function(u)
                        local st
                        local su
                        local ss
                        ss = nil
                        st = nil
                        su = nil
                        local sv = u ~= ""
                        local sw = type(u) == "string" and sv
                        assert(sw, "A namespace is required")
                        assert(type(getgenv) == "function", "getgenv is unavailable")
                        st = getgenv()
                        assert(type(st) == "table", "getgenv did not return a table")
                        local sv_2 = st[u]
                        if sv_2 ~= nil then
                            local sw_2 = type(sv_2) == "table" and type(sv_2.Unload) == "function"
                            assert(sw_2, "Namespace is occupied")
                            sv_2.Unload()
                            assert(st[u] == nil, "Previous instance did not release its namespace")
                        end
                        su = {}
                        ss = { State = {}, Unloaded = false }
                        ss.Track = function(A)
                            assert(type(A) == "function", "Cleanup must be callable")
                            if ss.Unloaded then
                                A()
                            else
                                table.insert(su, A)
                            end
                            return A
                        end
                        ss.Unload = function()
                            local si_2
                            local sh_2
                            if ss.Unloaded then
                                return
                            end
                            ss.Unloaded = true
                            local sf = {}
                            local sp = #su
                            local so = -1
                            while false and sp <= 1 or true and sp >= 1 do
                                local sq = sp
                                local sg_2 = table.remove(su, sq)
                                sh_2, si_2 = pcall(sg_2)
                                if not sh_2 then
                                    table.insert(sf, tostring(si_2))
                                end
                                sp += so
                            end
                            table.clear(ss.State)
                            if #sf > 0 then
                                error("Cleanup incomplete: " .. table.concat(sf, "; "), 0)
                            end
                            if st[u] == ss then
                                st[u] = nil
                            end
                        end
                        st[u] = ss
                        return ss
                    end
                else
                    pcall(fn955)
                    r4_1 = function(u)
                        local st
                        local su
                        local ss
                        ss = nil
                        st = nil
                        su = nil
                        local sv = u ~= ""
                        local sw = type(u) == "string" and sv
                        assert(sw, "A namespace is required")
                        assert(type(getgenv) == "function", "getgenv is unavailable")
                        st = getgenv()
                        assert(type(st) == "table", "getgenv did not return a table")
                        local sv_1 = st[u]
                        if sv_1 ~= nil then
                            local sw_1 = type(sv_1) == "table" and type(sv_1.Unload) == "function"
                            assert(sw_1, "Namespace is occupied")
                            sv_1.Unload()
                            assert(st[u] == nil, "Previous instance did not release its namespace")
                        end
                        su = {}
                        ss = { State = {}, Unloaded = false }
                        ss.Track = function(A)
                            assert(type(A) == "function", "Cleanup must be callable")
                            if ss.Unloaded then
                                A()
                            else
                                table.insert(su, A)
                            end
                            return A
                        end
                        ss.Unload = function()
                            local si_1
                            local sh_1
                            if ss.Unloaded then
                                return
                            end
                            ss.Unloaded = true
                            local sf = {}
                            local sp = #su
                            local so = -1
                            while false and sp <= 1 or true and sp >= 1 do
                                local sq = sp
                                local sg_1 = table.remove(su, sq)
                                sh_1, si_1 = pcall(sg_1)
                                if not sh_1 then
                                    table.insert(sf, tostring(si_1))
                                end
                                sp += so
                            end
                            table.clear(ss.State)
                            if #sf > 0 then
                                error("Cleanup incomplete: " .. table.concat(sf, "; "), 0)
                            end
                            if st[u] == ss then
                                st[u] = nil
                            end
                        end
                        st[u] = ss
                        return ss
                    end
                end
                r3 = (r3 + 9) % 32
            else
                local Dv = bit32.rrotate(bit32.bxor(bit32.lrotate(r3, 12), string.byte(tostring(rr))), 3)
                if bit32.bxor(bit32.lrotate(bit32.bxor(Dv, 3352683748), 20), 1313635678) ~= bit32.lrotate(Dv, 20) then
                    rx = function(N, O)
                        local sF = type(N) == "table" and type(N.Track) == "function"
                        assert(sF, "FeatureAPI required")
                        local sF_2 = type(O) == "table" and type(O.OnUnload) == "function"
                        assert(sF_2, "UI library required")
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
                else
                    rf = function(N, O)
                        local sF = type(N) == "table" and type(N.Track) == "function"
                        assert(sF, "FeatureAPI required")
                        local sF_1 = type(O) == "table" and type(O.OnUnload) == "function"
                        assert(sF_1, "UI library required")
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
                end
                r3 = (r3 + 9) % 32
            end
        elseif r7 <= 3 then
            if r3 * 41810633 + 9 + 6 <= r3 * 41810633 + 9 + 6 + 5 then
                rA = r4_1(r6)
            else
                r6 = rA(r4_1)
            end
            r3 = (r3 + 25) % 32
        else
            local r8_1 = {
                "gdwpjpmbp",
                "gwvq",
                "sply",
                "fcmb",
                "numnwbvz",
                "turikpi",
                "qkpxi",
                "downqa",
                "ykvgsdlid",
                "ydkdvl"
            }
            local Dr = r3
            local r9_1 = r8_1[Dr % 10 + 1]
            if r9_1:len() >= r9_1:reverse():rep(Dr % 3 + 2):len() then
                rW = fn658
                r_ = fn794
                rl = fn291
                r5 = rW(Workspace)
                rs = rW(rc)
            else
                rs = fn658
                rl = fn794
                rc = fn291
                r_ = rs(r5)
                rW = rs(Workspace)
            end
            r3 = (r3 + 1) % 32
        end
    elseif r7 <= 6 then
        if r7 <= 5 then
            local r8_2 = (vector.create((r3 * 5 + 5) % 11 + 1, (r3 * 8 + 12) % 13 + 1, (r3 * 10 + 12) % 17 + 1))
            local r9_2 = (vector.create((r3 * 1 + 6) % 11 + 1, (r3 * 9 + 7) % 13 + 1, (r3 * 3 + 2) % 17 + 1))
            local Dn = vector.dot(r8_2, r9_2)
            if Dn * Dn <= vector.dot(r8_2, r8_2) * vector.dot(r9_2, r9_2) then
                rQ = rA.State
                rQ.StageStatus = "Idle"
                rQ.PlateStatus = "Idle"
                rQ.ClickStatus = "Idle"
                rQ.RebirthStatus = "Idle"
                rQ.TrainStatus = "Idle"
                rQ.CloneStatus = "Idle"
                rQ.HatchStatus = "Idle"
                rQ.PetStatus = "Idle"
                rF = 25
            else
                rA = rF.State
                rA.StageStatus = "Idle"
                rA.PlateStatus = "Idle"
                rA.ClickStatus = "Idle"
                rA.RebirthStatus = "Idle"
                rA.TrainStatus = "Idle"
                rA.CloneStatus = "Idle"
                rA.HatchStatus = "Idle"
                rA.PetStatus = "Idle"
                rQ = 25
            end
            r3 = (r3 + 17) % 32
        else
            if (r3 * 2 + 5) * 16 % 3 == ((r3 * 2 + 5) * 16 + 4) % 3 then
                rr = "Best Unlocked"
                rC = { "Uncommon", "Legendary", "Epic", "Secret", "Mythic", "Common", "Rare" }
                rx = fn548
            else
                rC = "Best Unlocked"
                rx = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic", "Secret" }
                rr = fn548
            end
            r3 = (r3 + 1) % 32
        end
    elseif r7 <= 7 then
        local D7 = bit32.rrotate(bit32.bxor(bit32.lrotate(r3, 3), string.byte(tostring(q8))), 9)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(D7, 1130808591), 1532804195), (bit32.bxor(bit32.band(D7, 3164158704), 247987351))), 1532804195), 247987351) == D7 then
            rb = fn543
            rK = function(ar)
                local sU_2
                local sT_2
                sT_2, sU_2 = pcall(function()
                    return LocalPlayer:GetAttribute(ar)
                end)
                if sT_2 then
                    return sU_2
                end
                return nil
            end
            rh = fn1025
            q8 = {
                ready = false,
                cloneRF = nil,
                rebirthRF = nil,
                petRF = nil,
                eggs = nil,
                padConfig = nil,
                missing = {}
            }
        else
            q8 = fn543
            rh = function(ar)
                local sU_1
                local sT_1
                sT_1, sU_1 = pcall(function()
                    return LocalPlayer:GetAttribute(ar)
                end)
                if sT_1 then
                    return sU_1
                end
                return nil
            end
            rb = fn1025
            rK = {
                petRF = nil,
                rebirthRF = nil,
                ready = false,
                missing = {},
                padConfig = nil,
                cloneRF = nil,
                eggs = nil
            }
        end
        r3 = (r3 + 17) % 32
    else
        local r7_1 = { "fzbeudissco", "novxgrh", "hwhjhojbyr", "tsggzujx", "usgmcvuwz", "fvap", "kahgsycf" }
        local Dq = r3
        local r8_3 = r7_1[Dq % 7 + 1]
        local sd_1 = if r8_3:len() <= r8_3:reverse():rep(Dq % 3 + 2):len() then 1 else 0
        if sd_1 == 1 then
            r0 = fn572
            ry = fn184
            rv = function(aT, aU, ...)
                local s8
                local s7
                s7 = nil
                s8 = nil
                local ta_2
                if not aT then
                    return false, nil
                end
                s8 = aT:FindFirstChild(aU)
                local s9 = not s8
                local s9_2
                local te = if s9 then 1 else 0
                local tc = 1232 * te + 3356 * (1 - te)
                local td = 1756 * te + 1891 * (1 - te)
                if not ((tc * 2320 + td * 211 + tc * td) % 16777213 == 5392148) then
                    s9 = not s8:IsA("RemoteFunction")
                end
                if s9 then
                    return false, nil
                end
                s7 = table.pack(...)
                s9_2, ta_2 = pcall(function()
                    return s8:InvokeServer(table.unpack(s7, 1, s7.n))
                end)
                if not s9_2 then
                    return false, nil
                end
                return true, ta_2
            end
            rI = fn536
            rV = fn839
        else
            ry = fn572
            rv = fn184
            rV = function(aT, aU, ...)
                local s8
                local s7
                s7 = nil
                s8 = nil
                local ta_1
                if not aT then
                    return false, nil
                end
                s8 = aT:FindFirstChild(aU)
                local s9 = not s8
                local s9_1
                local te = if s9 then 1 else 0
                local tc = 1232 * te + 3356 * (1 - te)
                local td = 1756 * te + 1891 * (1 - te)
                if not ((tc * 2320 + td * 211 + tc * td) % 16777213 == 5392148) then
                    s9 = not s8:IsA("RemoteFunction")
                end
                if s9 then
                    return false, nil
                end
                s7 = table.pack(...)
                s9_1, ta_1 = pcall(function()
                    return s8:InvokeServer(table.unpack(s7, 1, s7.n))
                end)
                if not s9_1 then
                    return false, nil
                end
                return true, ta_1
            end
            r0 = fn536
            rI = fn839
        end
        r3 = (r3 + 17) % 32
    end
until (r3 * 13 + 9) % 32 == 20
rJ = nil
rJ = task.spawn(worker)
local r8_4 = os.clock() + 15
while true do
    local r3_1 = not q8.ready and rc() and os.clock() < r8_4
    if r3_1 then
        task.wait(0.1)
        continue
    end
    break
end
rA.Track(function()
    if coroutine.status(rJ) ~= "dead" then
        pcall(task.cancel, rJ)
    end
end)
rj, re, ra, r1, rY, rR, rH, rD, rp, rk, rM, rz, rw, rn, q7, rS, rU, rg, rP, rZ, rt, rG, rN, rO, ro, r2, q6 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
rp = fn559
rk = fn626
rM = fn118
rj = { interval = 0.4 }
re = { interval = 1.5, stage = 1 }
ra = { interval = 0.1 }
r1 = { interval = 5 }
rY = { interval = 0.3, pad = nil }
rR = { interval = 3 }
rH = { interval = 1, egg = rx[1] }
rD = { interval = 10 }
rz = function(b4, b5)
    local generation
    local ud = b4.generation or 0
    b4.generation = ud + 1
    b4.stopped = false
    generation = b4.generation
    task.spawn(function()
        local ua_1
        while true do
            local t9 = rc() and not b4.stopped and b4.generation == generation
            local t9_1
            if t9 then
                t9_1, ua_1 = pcall(b5)
                if not t9_1 then
                    warn("[Ouroboros] loop error: " .. tostring(ua_1))
                end
                local t9_2 = not rc() or b4.stopped or b4.generation ~= generation
                if t9_2 then
                    break
                end
                task.wait(b4.interval)
                continue
            end
            break
        end
    end)
end
rw = fn878
if (not r1 and not ra or (r1 or false) or false and (rz and not r1)) and ((not rR or not ra) and (not ra or false) or not r1 and ra and (not r1 and r1)) or not ((not r1 and not ra or (r1 or false) or false and (rz and not r1)) and ((not rR or not ra) and (not ra or false) or not r1 and ra and (not r1 and r1))) then
    rn = fn767
    q7 = fn699
else
    q7 = fn767
    rn = fn699
end
rS = fn477
rU = fn1227
rg = fn993
rP = fn542
rZ = fn420
rt = fn302
rG = function(d0)
    local vB
    vB = nil
    local AttackZone = rW:FindFirstChild("AttackZone")
    local vC_2
    local vD = AttackZone and AttackZone:FindFirstChild("TargetPractice" .. tostring(d0))
    local vD_2
    vB = vD
    if not vB then
        return nil
    end
    local Touch = vB:FindFirstChild("Touch")
    local vD_1 = Touch and Touch:IsA("BasePart")
    if vD_1 then
        return Touch.Position + Vector3.new(0, 4, 0)
    end
    vC_2, vD_2 = pcall(function()
        return vB:GetPivot().Position
    end)
    local vE = vC_2 and typeof(vD_2) == "Vector3"
    if vE then
        return vD_2 + Vector3.new(0, 4, 0)
    end
    return nil
end
rN = function()
    local vP_1
    local vM_1
    local vN_1, vN_3
    local cloneRF = q8.cloneRF
    if not cloneRF then
        rQ.TrainStatus = "Training service unavailable"
        return
    end
    vM_1, vN_1 = rv(cloneRF, "GetTargetPadAccess")
    local vO = not vM_1 or type(vN_1) ~= "table"
    local vO_1
    if vO then
        rQ.TrainStatus = "Could not read bag access"
        return
    end
    local vM_2 = rY.pad
    if vM_2 == nil then
        vM_2, vO_1 = rt(vN_1)
        if not vM_2 then
            rQ.TrainStatus = "No punching bag is unlocked yet"
            return
        end
    else
        vO_1 = rZ(vM_2)
        if vN_1[vM_2] ~= true then
            rQ.TrainStatus = string.format("Bag %d is locked", vM_2)
            return
        end
    end
    local vJ = rG(vM_2)
    if not vJ then
        rQ.TrainStatus = string.format("Bag %d is not loaded", vM_2)
        return
    end
    local vK = rb()
    if not vK then
        rQ.TrainStatus = "Waiting for your character"
        return
    end
    if (vK.Position - vJ).Magnitude > 8 then
        pcall(function()
            vK.CFrame = CFrame.new(vJ)
        end)
        rQ.TrainStatus = string.format("Moving onto bag %d", vM_2)
        task.wait(0.4)
        local vN_2 = not rc() or rY.stopped
        if vN_2 then
            return
        end
        vK = rb()
        if not vK then
            return
        end
    end
    vN_3, vP_1 = rv(cloneRF, "TargetFarmClick", vM_2)
    local vL_1 = not vN_3 or type(vP_1) ~= "table"
    if vL_1 then
        rQ.TrainStatus = "Training hit was rejected"
        return
    end
    if vP_1.Success then
        local format = string.format
        local vN_4 = vO_1 or 1
        local vO_2 = tostring(vN_4)
        local vQ = vP_1.clickAmount or 0
        rQ.TrainStatus = format("Bag %d x%s for %s power", vM_2, vO_2, rr(vQ))
        return
    end
    if vP_1.Reason == "NotAtPad" then
        rQ.TrainStatus = string.format("Lining up on bag %d", vM_2)
        return
    end
    if vP_1.Reason == "NeedsRebirths" then
        rQ.TrainStatus = string.format("Bag %d needs more rebirths", vM_2)
        return
    end
    local format = string.format
    local vN_5 = vP_1.Reason or "unknown"
    rQ.TrainStatus = format("Bag %d refused: %s", vM_2, tostring(vN_5))
end
rO = fn86
ro = fn88
r2 = fn1129
q6 = fn802
rj.SetEnabled = fn748
re.SetEnabled = fn671
re.SetStage = fn1203
ra.SetEnabled = fn541
r1.SetEnabled = fn831
rY.SetEnabled = fn570
rY.SetBag = fn423
rR.SetEnabled = fn191
rH.SetEnabled = fn140
rH.SetEgg = fn885
rD.SetEnabled = fn129
rA.Track(fn284)
local function r4_2()
    local B6
    local B5
    local onDiscord
    B5 = nil
    B6 = nil
    onDiscord = nil
    local BZ, Library, Toggles, B1, ThemeManager, B3, Options, SaveManager, B8
    B5 = "https://discord.gg/synapsex"
    B8 = "+1 Clone Evolution"
    B1 = "https://ouroboros-hub-rbx.web.app/"
    BZ = "https://rscripts.net/@Ouroboros"
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = Library.Toggles
    Options = Library.Options
    rf(rA, Library)
    B6 = function(gX, gY)
        local xe = rl(setclipboard) and setclipboard
        local xf = xe
        if not xf then
            local xe_1 = rl(toclipboard) and toclipboard
            xf = xe_1 or nil
        end
        local xe_2 = xf
        if not xe_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local xf_1 = pcall(xe_2, gX)
        if xf_1 then
            Library:Notify(gY)
        else
            Library:Notify("Failed to copy")
        end
    end
    onDiscord = function()
        B6(B5, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = B5, Copyable = true }, "|", B8, "|", "v0.4" },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    B3 = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "gamepad-2"),
        Player = Window:AddTab("Player", "person-standing"),
        Settings = Window:AddTab("Settings", "settings")
    }
    local function Ca_1(ha)
        local DiscordGroup = ha:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    for k, v in B3 do
        if k ~= "Info" then
            Ca_1(v)
        end
    end
    local function Cb()
        local xv
        xv = nil
        local Label2, Label7, Label3, Label8, Label5, Label, Label6, Label4
        local xw = {}
        local xG = 1
        local xE = rF
        while xG <= xE do
            local xH = xG
            table.insert(xw, "Stage " .. tostring(xH))
            xG += 1
        end
        local xx = { rC }
        for i, v in ipairs(rP()) do
            local xy_1 = ""
            if v.robux then
                xy_1 = " Robux"
            elseif v.rebirths then
                local format = string.format
                local rebirths = v.rebirths
                local xC = v.rebirths == 1 and "" or "s"
                xy_1 = format(" %d rebirth%s", rebirths, xC)
            end
            table.insert(xx, string.format("Bag %d  x%s%s", v.index, tostring(v.multiplier), xy_1))
        end
        local xy_2 = rp()
        local AutomationGroup = B3.Main:AddLeftGroupbox("Automation", "swords")
        Label8 = AutomationGroup:AddLabel(rQ.StageStatus, true)
        AutomationGroup:AddDivider()
        AutomationGroup:AddToggle("AutoStage", {
            Text = "Auto Farm Stage",
            Default = false,
            Tooltip = "Clears the next unlocked stage over and over, from stage 1 up to stage 25.",
            Callback = function(hA)
                rj.SetEnabled(hA)
            end
        })
        Label7 = AutomationGroup:AddLabel(rQ.PlateStatus, true)
        AutomationGroup:AddToggle("AutoWinPlate", {
            Text = "Auto Win Plate",
            Default = false,
            Tooltip = "Claims the free win plate of the stage below once that stage is cleared. Robux multiplier plates are left alone.",
            Callback = function(hF)
                re.SetEnabled(hF)
            end
        })
        AutomationGroup:AddDropdown("WinPlateStage", {
            Text = "Win Plate Stage",
            Values = xw,
            Default = xw[1],
            Multi = false,
            AllowNull = false,
            Tooltip = "Which stage the win plates are collected from.",
            Callback = function(hJ)
                re.SetStage(hJ)
            end
        })
        Label6 = AutomationGroup:AddLabel(rQ.ClickStatus, true)
        AutomationGroup:AddToggle("AutoClick", {
            Text = "Auto Click",
            Default = false,
            Tooltip = "Sends clicks to the server to build power and new clones.",
            Callback = function(hM)
                ra.SetEnabled(hM)
            end
        })
        Label5 = AutomationGroup:AddLabel(rQ.RebirthStatus, true)
        AutomationGroup:AddToggle("AutoRebirth", {
            Text = "Auto Rebirth",
            Default = false,
            Tooltip = "Rebirths as soon as your level meets the requirement.",
            Callback = function(hR)
                r1.SetEnabled(hR)
            end
        })
        local TrainingAndPetsGroup = B3.Main:AddRightGroupbox("Training and Pets", "sparkles")
        Label4 = TrainingAndPetsGroup:AddLabel(rQ.TrainStatus, true)
        TrainingAndPetsGroup:AddDivider()
        TrainingAndPetsGroup:AddToggle("AutoTrain", {
            Text = "Auto Train",
            Default = false,
            Tooltip = "Stands on a punching bag and hits it for multiplied power.",
            Callback = function(hX)
                rY.SetEnabled(hX)
            end
        })
        TrainingAndPetsGroup:AddDropdown("TrainBag", {
            Text = "Punching Bag",
            Values = xx,
            Default = xx[1],
            Multi = false,
            AllowNull = false,
            Tooltip = "Best Unlocked picks the highest multiplier your rebirths and passes allow.",
            Callback = function(h0)
                rY.SetBag(h0)
            end
        })
        Label3 = TrainingAndPetsGroup:AddLabel(rQ.CloneStatus, true)
        TrainingAndPetsGroup:AddToggle("AutoBuyClones", {
            Text = "Auto Buy Affordable Clones",
            Default = false,
            Tooltip = "Unlocks every clone tube you can already afford, cheapest first. Buying one also equips it.",
            Callback = function(h3)
                rR.SetEnabled(h3)
            end
        })
        Label2 = TrainingAndPetsGroup:AddLabel(rQ.HatchStatus, true)
        TrainingAndPetsGroup:AddToggle("AutoHatch", {
            Text = "Auto Hatch",
            Default = false,
            Tooltip = "Hatches the selected egg whenever you have the wins for it.",
            Callback = function(h8)
                rH.SetEnabled(h8)
            end
        })
        TrainingAndPetsGroup:AddDropdown("HatchEgg", {
            Text = "Egg to Hatch",
            Values = xy_2,
            Default = xy_2[1],
            Multi = false,
            AllowNull = false,
            Tooltip = "Only eggs that cost wins are listed. Robux eggs are left out.",
            Callback = function(ic)
                rH.SetEgg(ic)
            end
        })
        Label = TrainingAndPetsGroup:AddLabel(rQ.PetStatus, true)
        TrainingAndPetsGroup:AddToggle("AutoEquipBestPet", {
            Text = "Auto Equip Best Pet",
            Default = false,
            Tooltip = "Keeps your strongest owned pets equipped.",
            Callback = function(ig)
                rD.SetEnabled(ig)
            end
        })
        xv = task.spawn(function()
            while not Library.Unloaded do
                task.wait(0.4)
                pcall(function()
                    Label8:SetText(rQ.StageStatus)
                    Label7:SetText(rQ.PlateStatus)
                    Label6:SetText(rQ.ClickStatus)
                    Label5:SetText(rQ.RebirthStatus)
                    Label4:SetText(rQ.TrainStatus)
                    Label3:SetText(rQ.CloneStatus)
                    Label2:SetText(rQ.HatchStatus)
                    Label:SetText(rQ.PetStatus)
                end)
            end
        end)
        rA.Track(function()
            if coroutine.status(xv) ~= "dead" then
                task.cancel(xv)
            end
        end)
    end
    Cb()
    local function Ca_2()
        local x0
        local x5
        local x1
        local yc
        x0 = nil
        x1 = nil
        x5 = nil
        yc = nil
        local x2, x3, Label, x6, x7, x8, Label2, ya, Label3
        x1 = function(iK)
            return (tostring(iK):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        x0 = function(iM, iN)
            return string.format('<font color="%s">%s</font>', iN, x1(iM))
        end
        x7 = function(iQ, iR, iS)
            return string.format("<b>%s</b> %s %s", iQ, x0("-", "#5a6070"), x0(iR, iS))
        end
        local yd = "#6ec1ff"
        ya = "#e8a34d"
        x2 = "#7fd47f"
        local ye = "#8b93a3"
        local missing = q8.missing
        local yg = #missing == 0 and "ready"
        local yh = yg or "limited: " .. table.concat(missing, ", ")
        x6 = "Unknown"
        pcall(function()
            local xQ_1
            local xP_1
            if rl(identifyexecutor) then
                xQ_1, xP_1 = identifyexecutor()
                local xR = xQ_1 ~= ""
                local xS = type(xQ_1) == "string" and xR
                if xS then
                    local xR_1 = type(xP_1) == "string" and xP_1 ~= "" and xQ_1 .. " " .. xP_1
                    x6 = xR_1 or xQ_1
                end
            end
        end)
        yc = os.clock()
        x8 = function()
            local xU = math.floor(os.clock() - yc)
            if xU < 60 then
                return xU .. "s"
            elseif xU < 3600 then
                return string.format("%dm %ds", xU // 60, xU % 60)
            else
                return string.format("%dh %dm", xU // 3600, xU % 3600 // 60)
            end
        end
        local UserGroup = B3.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(x7("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, x2), true)
        UserGroup:AddLabel(x7("UserId", tostring(LocalPlayer.UserId), yd), true)
        UserGroup:AddLabel(x7("Executor", x6 .. "  " .. yh, x2), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(x7("Session", x8(), ya), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                B6(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                B6("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = B3.Info:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(x7("Game", B8, yd), true)
        Label2 = SessionGroup:AddLabel(x7("Players", "0/0", x2), true)
        x3 = tostring(game.JobId)
        local yd_1 = #x3 > 18 and string.sub(x3, 1, 18) .. "..."
        local yg_2 = yd_1 or x3
        SessionGroup:AddLabel(x7("Job", yg_2, ye), true)
        Label = SessionGroup:AddLabel(x7("Ping", "0 ms", ya), true)
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
                B6(x3, "Copied Job ID")
            end
        })
        x5 = task.spawn(function()
            local xX_1
            local xW_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(x7("Session", x8(), ya))
                Label2:SetText(x7("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), x2))
                xW_1, xX_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local xW_2 = xW_1 and xX_1 .. " ms" or "n/a"
                Label:SetText(x7("Ping", xW_2, ya))
            end
        end)
        rA.Track(function()
            if coroutine.status(x5) ~= "dead" then
                task.cancel(x5)
            end
        end)
        local SocialsGroup = B3.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                B6(BZ, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                B6(B1, "Copied website link")
            end
        })
    end
    Ca_2()
    local function Ca_3()
        local j6
        local j4
        local j7
        local j5
        local MovementGroup = B3.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = B3.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        j6 = {}
        local j3 = {}
        j5 = {}
        j7 = {}
        j4 = {}
        local function j8()
            for k, v in j4 do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(j4)
        end
        local function kc()
            for k, v in j5 do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(j5)
        end
        local function kg()
            for k, v in j6 do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(j6)
        end
        local function kk(kl)
            if not kl:IsA("ProximityPrompt") then
                return
            end
            if j7[kl] == nil then
                j7[kl] = {
                    HoldDuration = kl.HoldDuration,
                    MaxActivationDistance = kl.MaxActivationDistance,
                    RequiresLineOfSight = kl.RequiresLineOfSight
                }
            end
            kl.HoldDuration = 0
            kl.MaxActivationDistance = 50
            kl.RequiresLineOfSight = false
        end
        local function kn()
            for k, v in j7 do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(j7)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                kg()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                kc()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                j8()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                    pcall(kk, v)
                end
            else
                kn()
            end
        end)
        table.insert(j3, Workspace.DescendantAdded:Connect(function(kH)
            if Toggles.InstantProximityPrompt.Value then
                kk(kH)
            end
        end))
        table.insert(j3, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if j4[v] == nil then
                        j4[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(j3, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local zc = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and zc then
                zc:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(j3, RunService.RenderStepped:Connect(function(k2)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local zi = Character and Character:FindFirstChildOfClass("Humanoid")
            local zj = Character
            if zj then
                zj = Character:FindFirstChild("HumanoidRootPart")
            end
            local zh_1 = zj
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and zi then
                if j5[zi] == nil then
                    j5[zi] = zi.WalkSpeed
                end
                zi.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and zh_1 and zi and CurrentCamera then
                if j6[zi] == nil then
                    j6[zi] = zi.PlatformStand
                end
                zi.PlatformStand = true
                local zj_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        zj_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        zj_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        zj_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        zj_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        zj_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        zj_4 -= Vector3.new(0, 1, 0)
                    end
                end
                zh_1.AssemblyLinearVelocity = Vector3.zero
                if zj_4.Magnitude > 0 then
                    zh_1.CFrame = zh_1.CFrame + zj_4.Unit * Options.FlySpeed.Value * k2
                end
            end
        end))
        rA.Track(function()
            for k, v in j3 do
                v:Disconnect()
            end
            j8()
            kc()
            kg()
            kn()
        end)
    end
    Ca_3()
    local function Ca_4()
        local AC, AD, AE, AF, AG, AH, AI, AJ, AK, AL, Label, AN, AO, AP
        AN = {}
        AH = {}
        AE = nil
        AP = 0
        AF = 0
        AJ = false
        AK = os.clock()
        local MenuGroup = B3.Settings:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        AC = function()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local zy = not CurrentCamera or not rl(VirtualUser.CaptureController) or not rl(VirtualUser.ClickButton2)
            if zy then
                return false
            end
            local zy_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not zy_1 then
                return false
            end
            AF += 1
            AK = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. AF)
            end)
            return true
        end
        AL = function(lM)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not lM)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not lM
                end
            end)
            if not lM then
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
        AI = function(l1)
            local zE = l1.ClassName == "ParticleEmitter" or l1.ClassName == "Trail"
            local zI = if zE then 1 else 0
            local zG = 1959 * zI + 1097 * (1 - zI)
            local zH = 4091 * zI + 1225 * (1 - zI)
            if not ((zG * 1887 + zH * 1347 + zG * zH) % 16777213 == 444266) then
                zE = l1.ClassName == "Smoke"
            end
            if not zE then
                zE = l1.ClassName == "Fire"
            end
            if not zE then
                zE = l1.ClassName == "Sparkles"
            end
            if not zE then
                zE = l1.ClassName == "Explosion"
            end
            if not zE then
                zE = l1.ClassName == "Beam"
            end
            if zE then
                if AN[l1] == nil then
                    AN[l1] = l1.Enabled
                end
                pcall(function()
                    l1.Enabled = false
                end)
            end
        end
        AG = function()
            for k, v in AN do
                local zN = k
                local zP = v
                if zN.Parent then
                    pcall(function()
                        zN.Enabled = zP
                    end)
                end
            end
            table.clear(AN)
            if AE then
                pcall(function()
                    settings().Rendering.QualityLevel = AE.Quality
                end)
                Lighting.GlobalShadows = AE.Shadows
                Lighting.FogEnd = AE.Fog
                AE = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(mg)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not mg)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(ml)
                if ml then
                    if not AE then
                        AE = {
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
                        pcall(AI, v)
                    end
                else
                    AG()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        AL(true)
        local ScriptGroup = B3.Settings:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            AL(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            AL(true)
        end
        table.insert(AH, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                AC()
            end
        end))
        table.insert(AH, Workspace.DescendantAdded:Connect(function(mE)
            if Toggles.FpsBoost.Value then
                AI(mE)
            end
        end))
        AD = function(mI)
            if AJ or Library.Unloaded or not Toggles.AutoReconnect.Value then
                return
            end
            AJ = true
            local z7 = AP
            local z8_1 = pcall(function()
                if mI then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not z8_1 then
                AJ = false
                if not mI and z7 == AP then
                    task.delay(1.5, function()
                        if z7 == AP then
                            AD(true)
                        end
                    end)
                end
            end
        end
        table.insert(AH, TeleportService.TeleportInitFailed:Connect(function(m_)
            local Ai
            if m_ == LocalPlayer and AJ then
                AJ = false
                Ai = AP
                task.delay(3, function()
                    if Ai == AP then
                        AD(true)
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
            table.insert(AH, Aq.ChildAdded:Connect(function(ne)
                if ne.Name == "ErrorPrompt" then
                    AD(false)
                end
            end))
        end)
        AO = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    AL(true)
                end
                local At = Toggles.AntiAfk.Value and os.clock() - AK >= 60
                if At then
                    AC()
                end
                task.wait(1)
            end
        end)
        rA.Track(function()
            AP += 1
            for k, v in AH do
                v:Disconnect()
            end
            pcall(task.cancel, AO)
            AL(false)
            AG()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    Ca_4()
    local function Ca_5()
        local BN, BO, BP, BQ
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("OuroborosHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(B3.Settings)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/CloneEvolution")
        local BR = SaveManager:BuildConfigSection(B3.Settings)
        BN = function(nF, nG)
            local AT_1 = (nF == "Toggle" and Toggles or Options)[nG]
            local AS_2 = type(AT_1) == "table" and AT_1.Type == nF
            return AS_2 and AT_1 or nil
        end
        BP = function(nP, nQ)
            local Type = nQ.Type
            if Type == "Toggle" then
                return { idx = nP, type = "Toggle", value = nQ.Value == true }
            elseif Type == "Slider" then
                return { idx = nP, type = "Slider", value = tostring(nQ.Value) }
            elseif Type == "Dropdown" then
                return { idx = nP, type = "Dropdown", multi = nQ.Multi == true, value = nQ.Value }
            elseif Type == "Input" then
                local A_ = nQ.Value or ""
                return { idx = nP, type = "Input", text = tostring(A_) }
            elseif Type == "ColorPicker" then
                return { idx = nP, type = "ColorPicker", value = nQ.Value:ToHex(), transparency = nQ.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = nP,
                    type = "KeyPicker",
                    mode = nQ.Mode,
                    key = nQ.Value,
                    modifiers = nQ.Modifiers,
                    toggled = nQ.Toggled
                }
            else
                return nil
            end
        end
        BO = function()
            local A5 = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local A6 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if A6 then
                        local A6_1 = BP(k, v)
                        if A6_1 then
                            A5[#A5 + 1] = A6_1
                        end
                    end
                end
            end
            table.sort(A5, function(n_, n0)
                if n_.type ~= n0.type then
                    return n_.type < n0.type
                end
                return n_.idx < n0.idx
            end)
            return { objects = A5 }
        end
        BQ = function(n2)
            local Bp
            Bp = nil
            local Bq = type(n2) ~= "table" or type(n2.idx) ~= "string" or type(n2.type) ~= "string" or SaveManager.Ignore[n2.idx]
            if Bq then
                return false
            end
            Bp = BN(n2.type, n2.idx)
            if not Bp then
                return false
            end
            local Bq_1 = pcall(function()
                if n2.type == "Input" then
                    if type(n2.text) ~= "string" then
                        return
                    end
                    Bp:SetValue(n2.text)
                elseif n2.type == "ColorPicker" then
                    Bp:SetValueRGB(Color3.fromHex(n2.value), n2.transparency)
                elseif n2.type == "KeyPicker" then
                    Bp:SetValue({ n2.key, n2.mode, n2.modifiers })
                    if n2.mode == "Toggle" and n2.toggled ~= nil then
                        Bp.Toggled = n2.toggled
                        Bp:Update()
                    end
                else
                    Bp:SetValue(n2.value)
                end
            end)
            return Bq_1
        end
        BR:AddDivider()
        BR:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        BR:AddButton("Export Config to Clipboard", function()
            local Bt_1
            local Bs_1
            Bs_1, Bt_1 = pcall(HttpService.JSONEncode, HttpService, BO())
            if Bs_1 then
                local Bs_2 = rl(setclipboard) and setclipboard
                local Bu = Bs_2
                local Bz = if Bu then 1 else 0
                local Bx = 4083 * Bz + 1277 * (1 - Bz)
                local By = 1757 * Bz + 3574 * (1 - Bz)
                if not ((Bx * 2815 + By * 704 + Bx * By) % 16777213 == 3127191) then
                    local Bs_3 = rl(toclipboard) and toclipboard
                    Bu = Bs_3 or nil
                end
                local Bs_4 = Bu
                local Bu_1 = type(Bs_4) == "function" and pcall(Bs_4, Bt_1)
                if Bu_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        BR:AddButton("Import Config from Clipboard Text", function()
            local BC_1
            local BA = Options.SaveManager_ImportSource.Value or ""
            local BA_1
            local BB = tostring(BA):match("^%s*(.-)%s*$")
            if BB == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #BB > 262144 then
                Library:Notify("That config is too large")
                return
            end
            BA_1, BC_1 = pcall(HttpService.JSONDecode, HttpService, BB)
            local BB_1 = not BA_1 or type(BC_1) ~= "table" or type(BC_1.objects) ~= "table"
            if BB_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #BC_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local BA_2 = 0
            for i, v in ipairs(BC_1.objects) do
                if BQ(v) then
                    BA_2 += 1
                end
            end
            if BA_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local BC_2 = BA_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(BA_2, BC_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        if Options.WinPlateStage then
            re.SetStage(Options.WinPlateStage.Value)
        end
        if Options.TrainBag then
            rY.SetBag(Options.TrainBag.Value)
        end
        if Options.HatchEgg then
            rH.SetEgg(Options.HatchEgg.Value)
        end
        if Toggles.AutoStage then
            rj.SetEnabled(Toggles.AutoStage.Value)
        end
        if Toggles.AutoWinPlate then
            re.SetEnabled(Toggles.AutoWinPlate.Value)
        end
        if Toggles.AutoClick then
            ra.SetEnabled(Toggles.AutoClick.Value)
        end
        if Toggles.AutoRebirth then
            r1.SetEnabled(Toggles.AutoRebirth.Value)
        end
        if Toggles.AutoTrain then
            rY.SetEnabled(Toggles.AutoTrain.Value)
        end
        if Toggles.AutoBuyClones then
            rR.SetEnabled(Toggles.AutoBuyClones.Value)
        end
        if Toggles.AutoHatch then
            rH.SetEnabled(Toggles.AutoHatch.Value)
        end
        if Toggles.AutoEquipBestPet then
            rD.SetEnabled(Toggles.AutoEquipBestPet.Value)
        end
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    Ca_5()
end
r4_2()
