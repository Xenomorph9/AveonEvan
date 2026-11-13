local fns = {}
local yV_6, yV_8, yV_10, ShopGroup, MenuGroup, yV_27, yV_29, yV_30, yV_32
local nG
local op
local n4
local oQ
local Displays
local LocalPlayer
local nt
local UpgradeConfig
local oW
local connection
local oD
local nz
local og
local o1
local nY
local oJ
local nF
local oo
local n3
local oP
local nL
local ow
local ns
local n9
local oV
local nR
local oC
local ny
local of
local o0
local nX
local oI
local nE
local om
local o6
local n2
local oO
local nK
local ov
local nr
local n8
local oU
local Planters
local oB
local nx
local oe
local o_
local Options
local VirtualUser
local nD
local ol
local o5
local n1
local oN
local nJ
local ou
local n7
local oT
local nP
local oA
local nw
local ReplicaController
local oZ
local nV
local oG
local nC
local oj
local o4
local oM
local nI
local ot
local Library
local oS
local nO
local oz
local nv
local oc
local CollectionService
local nU
local oF
local nB
local oi
local o3
local n_
local oL
local nH
local oq
local EquipmentConfig
local oR
local nN
local oy
local nu
local ob
local oX
local nT
local Workspace
local connection2
local Knit
local o2
local Toggles
local oK
function fns.fn4()
    for i, v in ipairs(ou) do
        if ov("BuyDecorItems", v) then
            if n9("DecorShop", v, 1) then
                task.wait(0.15)
                return
            end
        end
    end
end
function fns.worker3()
    while not Library.Unloaded do
        if oc("AutoHarvest") then
            pcall(n4)
        end
        if oc("AutoPlantSeeds") then
            pcall(oX)
        end
        if oc("AutoStockFlowers") then
            pcall(oQ)
        end
        if oc("AutoCraftBouquets") then
            pcall(nN)
        end
        if oc("AutoPlaceBouquets") then
            pcall(oM)
        end
        if oc("AutoCheckout") then
            pcall(oT)
        end
        task.wait(nX("FarmDelay", 0.35))
    end
end
function fns.fn16()
    local uR = ob()
    local uS = uR and uR:GetAttribute("ShopOpen") == true
    if uS then
        return
    end
    if oF then
        pcall(function()
            nv(oF:ToggleShopOpen())
        end)
    end
end
function fns.fn29(eN)
    local tV_1
    local tS = eN
    local tT = {}
    if tS then
        tS = eN:FindFirstChild("Objects")
    end
    local tU = tS
    local tU_1
    if not tU then
        return tT
    end
    for i, child in ipairs(tU:GetChildren()) do
        if child:IsA("Model") then
            local Position = child:GetPivot().Position
            tU_1, tV_1 = oI(child)
            table.insert(tT, { position = Position, radius = math.max(tU_1, tV_1) * 0.55 })
        end
    end
    return tT
end
function fns.fn46(ab)
    local pV = {}
    if not ab then
        return pV
    end
    for i, child in ipairs(ab:GetChildren()) do
        table.insert(pV, child.Name)
    end
    table.sort(pV)
    return pV
end
function fns.fn55()
    for i, v in ipairs(ns) do
        if ov("BuySeedItems", v) then
            if n9("SeedShop", v, 1) then
                task.wait(0.15)
                return
            end
        end
    end
end
function fns.fn70(fE, fF, fG, fH)
    local uK = 0
    local uK_1
    local uL = fF:FindFirstChild(fE)
    local uL_2
    if uL then
        local uM_1 = (tonumber(uL:GetAttribute("Price")))
        local uQ = if uM_1 then 1 else 0
        local uO = 543 * uQ + 3321 * (1 - uQ)
        local uP = 799 * uQ + 3193 * (1 - uQ)
        if not ((uO * 972 + uP * 3579 + uO * uP) % 16777213 == 3821274) then
            uM_1 = 0
        end
        uK = uM_1
    end
    local uL_1 = uK > 0 and oP() < uK
    if uL_1 then
        return false
    end
    uK_1, uL_2 = oC(fE, fF, fG, fH)
    if not uK_1 then
        return false
    end
    local uM_2 = nv(o3:Place(fE, uK_1, "Furniture", {}))
    if uM_2 == true then
        if uL_2 then
            o2[uL_2] = nil
        end
        task.wait(0.2)
        return true
    end
    if uL_2 then
        o2[uL_2] = true
    end
    return false
end
function fns.fn81(aF, aG)
    return string.format('<font color="%s">%s</font>', aG, aF)
end
function fns.worker2()
    while not Library.Unloaded do
        task.wait(2)
        if oc("AntiAfk") then
            local yG = tick() - ow
            local yH = tick() - ot
            if yG >= 300 and yH >= 60 then
                pcall(n8)
            else
                if yG < 300 and yH >= 300 then
                    pcall(n8)
                end
            end
        end
    end
end
function fns.worker()
    local ys_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local yr = math.floor(os.clock() - om)
        if yr < 60 then
            ys_1 = yr .. "s"
        elseif yr < 3600 then
            ys_1 = string.format("%dm %ds", yr // 60, yr % 60)
        else
            ys_1 = string.format("%dh %dm", yr // 3600, yr % 3600 // 60)
        end
        o1:SetText(oS("Session time", ys_1, oi))
    end
end
function fns.fn133(ek)
    return string.format("%.1f:%.1f", ek.X, ek.Z)
end
function fns.fn164()
    local yb = tonumber(n7("PlaceDisplayRotation", "0")) or 0
    local yb_1 = nX("PlaceDisplaySpacing", 4)
    for i, v in ipairs(oB) do
        if ov("PlaceDisplayItems", v) then
            if n3(v, Displays, yb, yb_1) then
                return
            end
        end
    end
end
function fns.fn172()
    local yl_1
    local yk_1
    if identifyexecutor then
        yl_1, yk_1 = identifyexecutor()
        local ym = yl_1 ~= ""
        local yn = type(yl_1) == "string" and ym
        if yn then
            local ym_1 = type(yk_1) == "string" and yk_1 ~= "" and yl_1 .. " " .. yk_1
            nO = ym_1 or yl_1
        end
    end
end
function fns.fn174()
    local sf = ob()
    local sg = {}
    if not sf then
        return sg
    end
    for i, v in ipairs(CollectionService:GetTagged("FlowerDisplay")) do
        if v:IsDescendantOf(sf) then
            table.insert(sg, v)
        end
    end
    return sg
end
function fns.onInputBegan()
    ow = tick()
end
function fns.onUnload()
    Library:Unload()
end
function fns.fn211(gm)
    local vz = tonumber(gm:GetAttribute("Max")) or 8
    local vA = 0
    for k, v in pairs(gm:GetAttributes()) do
        local vz_1 = type(k) == "string" and k:sub(1, 6) == "Stock_" and typeof(v) == "number"
        if vz_1 then
            vA = vA + v
        end
    end
    return vA < vz
end
function fns.fn248()
    local sA = ob()
    if not sA then
        return nil
    end
    for i, v in ipairs(CollectionService:GetTagged("CraftTable")) do
        if v:IsDescendantOf(sA) then
            return v
        end
    end
end
function fns.fn274()
    print("Unloaded!")
end
function fns.fn304()
    for i, v in ipairs(nH()) do
        if nK(v) then
            local vJ
            for i, v in ipairs(oL) do
                if ov("StockFlowerItems", v) then
                    vJ = o5(v)
                    if vJ then
                        break
                    end
                end
            end
            if not vJ then
                vJ = o5(nil)
                local vK_1 = vJ and not ov("StockFlowerItems", vJ.Name)
                if vK_1 then
                    vJ = nil
                end
            end
            local vK_2 = vJ and oz(vJ)
            if vK_2 then
                local vJ_1 = nv(ny:StockFlower(v))
                if vJ_1 == true then
                    task.wait(0.1)
                    return
                end
            end
        end
    end
end
function fns.fn306()
    local r6 = ob()
    local r7 = {}
    if not r6 then
        return r7
    end
    for i, v in ipairs(CollectionService:GetTagged("Planter")) do
        if v:IsDescendantOf(r6) then
            table.insert(r7, v)
        end
    end
    return r7
end
function fns.fn314(bg, bh)
    local qp = nD(bg)
    if not oV(qp) then
        return bh
    end
    local qq
    for k, v in pairs(qp) do
        if v then
            local qp_1 = tonumber(k)
            if qp_1 ~= nil then
                local qr = qq == nil or qp_1 < tonumber(qq)
                if qr then
                    qq = k
                end
            else
                local qp_2 = qq == nil or tostring(k) < tostring(qq)
                if qp_2 then
                    qq = k
                end
            end
        end
    end
    return qq or bh
end
function fns.fn315(aR)
    local p6 = Toggles[aR]
    return p6 ~= nil and p6.Value == true
end
function fns.fn324(ba, bb)
    local qn = nD(ba)
    if not oV(qn) then
        return true
    end
    return qn[bb] == true
end
function fns.fn352()
    nU(op, "Copied Discord invite to clipboard")
end
function fns.fn366(cs)
    local Character = LocalPlayer.Character
    if Character then
        for i, child in ipairs(Character:GetChildren()) do
            local ru_1 = (child:IsA("Tool"))
            if ru_1 then
                local rv_1 = child:GetAttribute("SeedType") == cs or child.Name == cs
                ru_1 = rv_1
            end
            if ru_1 then
                return child
            end
        end
    end
    local Backpack = LocalPlayer:FindFirstChild("Backpack")
    if not Backpack then
        return nil
    end
    for i, child in ipairs(Backpack:GetChildren()) do
        local ru_3 = (child:IsA("Tool"))
        if ru_3 then
            local rv_2 = child:GetAttribute("SeedType") == cs or child.Name == cs
            ru_3 = rv_2
        end
        if ru_3 then
            return child
        end
    end
end
function fns.fn394()
    local qO = nP()
    return qO and qO.Data
end
function fns.fn398(e5)
    local ue = ob()
    if not ue then
        return nil
    end
    local uf = ue:FindFirstChild("Building") and ue.Building:FindFirstChild("BuildArea")
    if not uf then
        return nil
    elseif e5 == "Planter" then
        return uf:FindFirstChild("Farm")
    else
        return uf:FindFirstChild("Floor1")
    end
end
function fns.fn401(eY, eZ, e_)
    local t2 = Vector3.new(eY.X, 0, eY.Z)
    for i, v in ipairs(eZ) do
        local Magnitude = (t2 - Vector3.new(v.position.X, 0, v.position.Z)).Magnitude
        if Magnitude < math.max(e_, v.radius) then
            return true
        end
    end
    return false
end
local function fn434()
    local Character = LocalPlayer.Character
    local rc = Character and Character:FindFirstChild("HumanoidRootPart")
    return rc
end
local function fn435()
    for i, v in ipairs(n2()) do
        local uX = tonumber(v:GetAttribute("Slots")) or 1
        local u9 = 1
        while u9 <= uX do
            local vb = u9
            local attr3 = v:GetAttribute("Slot_" .. vb .. "_Seed")
            local attr2 = v:GetAttribute("Slot_" .. vb .. "_Ready")
            local attr = v:GetAttribute("Slot_" .. vb .. "_Locked")
            local u_ = not attr
            if u_ ~= false then
                u_ = attr3
            end
            if u_ then
                u_ = attr3 ~= ""
            end
            if u_ then
                u_ = attr2
            end
            if u_ then
                u_ = ov("HarvestSeedItems", attr3)
            end
            if u_ then
                local uX_2 = nv(nB:Harvest(v, vb))
                if uX_2 == true then
                    task.wait(0.1)
                    return
                end
            end
            u9 += 1
        end
    end
end
local function fn449()
    oD()
    local wO = ob()
    if not wO then
        return
    end
    local wP = wO:FindFirstChild("Building") and wO.Building:FindFirstChild("Register")
    if not wP then
        return
    end
    local CheckoutPrompt = wP:FindFirstChild("CheckoutPrompt", true)
    if not CheckoutPrompt or not CheckoutPrompt.Enabled then
        return
    end
    if CheckoutPrompt.ActionText ~= "Checkout" then
        return
    end
    local wO_3 = nR()
    local Parent = CheckoutPrompt.Parent
    local wR = wO_3 and Parent and Parent:IsA("BasePart")
    if wR then
        if (wO_3.Position - Parent.Position).Magnitude > 12 then
            wO_3.CFrame = Parent.CFrame + Vector3.new(0, 3, 0)
            task.wait(0.15)
        end
    end
    o0(CheckoutPrompt)
end
local function fn450()
    for i, v in ipairs(n2()) do
        local vc = tonumber(v:GetAttribute("Slots")) or 1
        local vq = 1
        while vq <= vc do
            local vr = vq
            local attr2 = v:GetAttribute("Slot_" .. vr .. "_Seed")
            local attr = v:GetAttribute("Slot_" .. vr .. "_Locked")
            local ve = not attr
            local vg = not attr2 or attr2 == ""
            local vc_2 = ve
            if ve ~= false then
                vc_2 = vg
            end
            if vc_2 then
                for i, v2 in ipairs(ns) do
                    if ov("PlantSeedItems", v2) then
                        local vc_3 = of(v2)
                        local vd_2 = vc_3 and oz(vc_3)
                        if vd_2 then
                            local vc_4 = nv(nB:PlantSeed(v, v2, vr))
                            if vc_4 == true then
                                task.wait(0.1)
                                return
                            end
                        end
                    end
                end
            end
            vq += 1
        end
    end
end
local function worker5()
    while not Library.Unloaded do
        if oc("AutoBuyPlanters") then
            pcall(nT)
        end
        if oc("AutoBuyDisplays") then
            pcall(oK)
        end
        if oc("AutoPlacePlanters") then
            pcall(n1)
        end
        if oc("AutoPlaceDisplays") then
            pcall(o6)
        end
        task.wait(nX("BuildDelay", 0.45))
    end
end
local function fn487(dX, dY)
    if not nr then
        return nil
    end
    local to = nv(nr:GetShopStock(dX))
    if type(to) ~= "table" then
        return nil
    end
    for i, v in ipairs(to) do
        local to_1 = type(v) == "table" and v.Name == dY
        if to_1 then
            return i, v
        end
    end
end
local function fn496()
    local Plots = Workspace:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    local q0 = Plots:FindFirstChild(LocalPlayer.Name .. "Plot")
    if q0 then
        return q0
    end
    for i, child in ipairs(Plots:GetChildren()) do
        if child:GetAttribute("Owner") == LocalPlayer.Name then
            return child
        end
    end
end
local function fn497(fb, fc, fd, fe)
    local uk = fc:FindFirstChild(fb)
    local um = fc == Planters and "Planter" or "Display"
    local ul_1 = nt(um)
    local um_1 = ob()
    local un = uk and ul_1
    local un_1
    local uo = un and um_1
    local uo_1
    if not uo then
        return nil
    end
    uo_1, un_1 = oI(uk)
    local uk_1 = oA(um_1)
    local um_2 = math.max(uo_1, un_1) * 0.5 + 0.5
    local max = math.max
    local floor = math.floor
    local ur = tonumber(fe) or math.ceil(um_2 + 1)
    local us = max(1, floor(ur))
    local up_1 = ul_1.Size.X * 0.5 - um_2
    local uq_1 = ul_1.Size.Z * 0.5 - um_2
    if up_1 < 0 or uq_1 < 0 then
        return nil
    end
    local uC = -up_1
    while us > 0 and uC <= up_1 or us <= 0 and uC >= up_1 do
        local uD = uC
        local uH = -uq_1
        while us > 0 and uH <= uq_1 or us <= 0 and uH >= uq_1 do
            local uI = uH
            local um_6 = ul_1.CFrame:PointToWorldSpace(Vector3.new(uD, 0, uI))
            local up_2 = oe(um_6, ul_1, uo_1, un_1, fd)
            local um_7 = oZ(up_2)
            local ur_1 = not o2[um_7] and nz(ul_1, up_2) and not nV(up_2, uk_1, us - 0.25)
            if ur_1 then
                local ur_2 = CFrame.new(up_2)
                local Angles = CFrame.Angles
                local uv = tonumber(fd) or 0
                local ut_1 = ur_2 * Angles(0, math.rad(uv), 0)
                return ut_1, um_7
            end
            uH += us
        end
        uC += us
    end
end
local function fn500(ay, az)
    if setclipboard then
        setclipboard(ay)
    elseif toclipboard then
        toclipboard(ay)
    end
    Library:Notify(az)
end
local function fn507(a1)
    local qc = Options[a1]
    return qc and qc.Value or {}
end
local function worker4()
    while not Library.Unloaded do
        if oc("AutoBuySeeds") then
            pcall(n_)
        end
        if oc("AutoBuySupplies") then
            pcall(nJ)
        end
        if oc("AutoBuyDecorations") then
            pcall(nI)
        end
        if oc("AutoBuyUpgrades") then
            pcall(oW)
        end
        if oc("AutoHireStaff") then
            pcall(nx)
        end
        task.wait(nX("ShopDelay", 0.5))
    end
end
local function onCopyJoinScript_JobID()
    local yp = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, oU)
    if setclipboard then
        setclipboard(yp)
    elseif toclipboard then
        toclipboard(yp)
    end
    Library:Notify("Copied join script to clipboard")
end
local function fn558(eG, eH)
    local tN = eG.CFrame:PointToObjectSpace(eH)
    local tO = eG.Size.X * 0.5
    local tP = eG.Size.Z * 0.5
    local tQ = math.abs(tN.X) <= tO - 0.5 and math.abs(tN.Z) <= tP - 0.5
    return tQ
end
local function fn560(d5, d6, d7)
    local tx_1
    local tw_1
    tx_1, tw_1 = oO(d5, d6)
    if not tx_1 then
        return false
    elseif tw_1.Locked then
        return false
    else
        local ty = tonumber(tw_1.Stock) or 0
        local ty_1 = tonumber(tw_1.Cost) or 0
        if ty <= 0 then
            return false
        end
        local ty_2 = ty_1 > 0 and oP() < ty_1
        if ty_2 then
            return false
        end
        local tw_3 = d7 or 1
        local ty_3 = nv(nr:BuyItem(d5, tx_1, tw_3))
        return ty_3 == true
    end
end
local function fn579()
    local qU = nw()
    local qV = qU and typeof(qU.Cash) == "number"
    if qV then
        return qU.Cash
    end
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local qV_1 = leaderstats and leaderstats:FindFirstChild("Cash")
    local qU_2 = qV_1
    if qV_1 then
        qV_1 = tonumber(qU_2.Value)
    end
    return qV_1 or 0
end
local function fn583()
    if not ny then
        return
    end
    for i, v in ipairs(oN()) do
        if nE(v) then
            local wr
            for i, v in ipairs(oq) do
                if ov("PlaceBouquetItems", v) then
                    wr = oo(v)
                    if wr then
                        break
                    end
                end
            end
            if not wr then
                wr = oo(nil)
                if wr then
                    local attr = wr:GetAttribute("Container")
                    local wt = attr and not ov("PlaceBouquetItems", attr)
                    if wt then
                        wr = nil
                    end
                end
            end
            local ws_2 = wr and oz(wr)
            if ws_2 then
                local wr_1 = nv(ny:BulkStockArrangement(v))
                if wr_1 ~= true then
                    wr_1 = nv(ny:StockArrangement(v))
                end
                if wr_1 == true then
                    task.wait(0.15)
                    return
                end
            end
        end
    end
end
local function fn606()
    local xm = nv(o_:GetApplicants())
    if type(xm) ~= "table" then
        return
    end
    local xn = nv(o_:GetStaffLimits())
    local xo = nv(o_:GetMyStaff())
    local xp = type(xn) == "table"
    if xp then
        xp = xn.limits or xn
    end
    local xq_2 = xp or {}
    for i, v in ipairs(ol) do
        if ov("HireStaffItems", v) then
            local xp_1 = 0
            local xq_3 = type(xo) == "table" and type(xo[v]) == "table"
            if xq_3 then
                for k in pairs(xo[v]) do
                    xp_1 = xp_1 + 1
                end
            end
            local xq_4 = tonumber(xq_2[v]) or 0
            if xp_1 < xq_4 then
                local xp_2 = xm[v]
                if type(xp_2) == "table" then
                    local xq_5 = #xp_2
                    local xF = 1
                    while xF <= xq_5 do
                        local xG = xF
                        local xp_3 = nv(o_:HireApplicant(v, xG))
                        if xp_3 == true then
                            task.wait(0.3)
                            return
                        end
                        xF += 1
                    end
                end
            end
        end
    end
end
local function fn618()
    for k, v in pairs(ReplicaController._replicas) do
        local qG = type(v.Data) == "table" and v.Data.Cash ~= nil
        if qG then
            return v
        end
    end
end
local function fn636()
    local x2 = tonumber(n7("PlacePlanterRotation", "0")) or 0
    local x2_1 = nX("PlacePlanterSpacing", 4)
    for i, v in ipairs(oG) do
        if ov("PlacePlanterItems", v) then
            if n3(v, Planters, x2, x2_1) then
                return
            end
        end
    end
end
local function fn644()
    local xU = tonumber(n7("BuyDisplayRotation", "0")) or 0
    local xU_1 = nX("BuyDisplaySpacing", 4)
    for i, v in ipairs(oB) do
        if ov("BuyDisplayItems", v) then
            if n3(v, Displays, xU, xU_1) then
                return
            end
        end
    end
end
local function fn650()
    if not oy then
        return
    end
    local vY = og()
    if not vY then
        return
    end
    local vZ = nL()
    if #vZ == 0 then
        return
    end
    local v_ = nY()
    for i, v in ipairs(oq) do
        if ov("CraftBouquetItems", v) then
            local v0 = nF:FindFirstChild(v)
            local v1 = v0 and tonumber(v0:GetAttribute("requiredLevel"))
            if v_ >= (v1 or 1) then
                local v1_2 = v0 and tonumber(v0:GetAttribute("maxFlowers"))
                local v0_1 = v1_2
                local v6 = if v0_1 then 1 else 0
                local v4 = 2109 * v6 + 1049 * (1 - v6)
                local v5 = 1888 * v6 + 906 * (1 - v6)
                if not ((v4 * 584 + v5 * 477 + v4 * v5) % 16777213 == 6114024) then
                    v0_1 = 1
                end
                local v1_3 = {}
                local v2_1 = v0_1
                local v0_2 = math.min(v2_1, #vZ)
                local wf = 1
                while wf <= v0_2 do
                    local wg = wf
                    table.insert(v1_3, vZ[wg])
                    wf += 1
                end
                if #v1_3 > 0 then
                    local v0_3 = nv(oy:StartArranging(vY))
                    if v0_3 ~= true then
                        return
                    end
                    local v0_4 = false
                    local v2_2 = {}
                    for i, v in ipairs(v1_3) do
                        local v1_4 = nv(oy:ReserveFlower(v))
                        if v1_4 == true then
                            table.insert(v2_2, v)
                        else
                            v0_4 = true
                            break
                        end
                    end
                    if v0_4 or #v2_2 == 0 then
                        pcall(function()
                            nv(oy:CancelArranging())
                        end)
                        return
                    end
                    local v0_5 = { container = v, accents = {}, flowers = v2_2 }
                    local v1_6 = nv(oy:FinishArranging(v0_5))
                    if v1_6 ~= true then
                        pcall(function()
                            nv(oy:CancelArranging())
                        end)
                        return
                    end
                    task.wait(0.2)
                    return
                end
            end
        end
    end
end
local function fn653()
    local xI = (tonumber(n7("BuyPlanterRotation", "0")))
    local xN = if xI then 1 else 0
    local xL = 3696 * xN + 3451 * (1 - xN)
    local xM = 2239 * xN + 4032 * (1 - xN)
    if not ((xL * 911 + xM * 2839 + xL * xM) % 16777213 == 1221708) then
        xI = 0
    end
    local xJ = xI
    local xI_1 = nX("BuyPlanterSpacing", 4)
    for i, v in ipairs(oG) do
        if ov("BuyPlanterItems", v) then
            if n3(v, Planters, xJ, xI_1) then
                return
            end
        end
    end
end
local function fn662(aW, aX)
    local p9 = Options[aW]
    local qa = p9 and tonumber(p9.Value)
    return qa or aX
end
local function onInputChanged(j7)
    local UserInputType = j7.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        ow = tick()
    end
end
local function fn702()
    connection:Disconnect()
    connection2:Disconnect()
end
local function fn709(a6)
    for k, v in pairs(a6) do
        if v then
            return true
        end
    end
    return false
end
local function fn729(aI, aJ, aK)
    return string.format("<b>%s</b> %s %s", aI, nu("-", "#5a6070"), nu(aJ, aK))
end
local function fn742()
    for i, v in ipairs(o4) do
        if ov("BuySupplyItems", v) then
            if n9("SupplyShop", v, 1) then
                task.wait(0.15)
                return
            end
        end
    end
end
local function fn758()
    local w9 = nw()
    local xa = oP()
    if ov("BuyUpgradeItems", "Advertising") then
        local xb_1 = w9 and w9.Upgrades and tonumber(w9.Upgrades.Advertising)
        local xc_1 = xb_1 or 0
        local Advertising = UpgradeConfig.Advertising
        local xd_1 = Advertising
        if xd_1 then
            xd_1 = not Advertising.maxLevel or xc_1 < Advertising.maxLevel
        end
        if xd_1 then
            local xd_2 = Advertising.cost and Advertising.cost(xc_1)
            if xa >= (xd_2 or 0) then
                local xb_4 = nv(oR:Purchase("Advertising"))
                if xb_4 == true then
                    task.wait(0.2)
                    return
                end
            end
        end
    end
    if ov("BuyUpgradeItems", "Backpack") then
        local xb_5 = nv(oR:Purchase("Backpack"))
        if xb_5 == true then
            task.wait(0.2)
            return
        end
    end
    if ov("BuyUpgradeItems", "Craft Table") then
        local xb_6 = w9 and w9.EquipmentLevels and tonumber(w9.EquipmentLevels.CraftTable)
        local w9_1 = xb_6 or 1
        local w9_2 = EquipmentConfig.GetUpgradeCostForEquipment("CraftTable", w9_1)
        if w9_2 and xa >= w9_2 then
            local w9_3 = nv(oJ:UpgradeEquipment("CraftTable"))
            if w9_3 == true then
                task.wait(0.2)
                return
            end
        end
    end
    local w9_4 = nv(o3:GetExpansionData())
    if type(w9_4) ~= "table" then
        return
    end
    local xi = if ov("BuyUpgradeItems", "Shop Expansion") then 1 else 0
    if xi == 1 then
        local xb_9 = ob() and ob():GetAttribute("BuildingLevel")
        local xc_4 = tonumber(xb_9) or 1
        local xc_5 = xc_4 + 1
        local xb_11 = w9_4.Shop and w9_4.Shop[xc_5]
        local xd_3 = xb_11
        if xb_11 then
            xb_11 = tonumber(xd_3.cost)
        end
        local xe_2 = xb_11 or 0
        local xb_12 = xd_3
        if xb_12 then
            xb_12 = xa >= xe_2
        end
        if xb_12 then
            local xb_13 = nv(o3:PurchaseExpansion("Shop", xc_5))
            if xb_13 == true then
                task.wait(0.25)
                return
            end
        end
    end
    if ov("BuyUpgradeItems", "Farm Expansion") then
        local xb_14 = ob() and ob():GetAttribute("FarmLevel")
        local xc_6 = tonumber(xb_14) or 1
        local xc_7 = xc_6 + 1
        local xb_16 = w9_4.Farm and w9_4.Farm[xc_7]
        local w9_5 = xb_16
        if xb_16 then
            xb_16 = tonumber(w9_5.cost)
        end
        local xd_5 = xb_16 or 0
        local xb_17 = w9_5
        if xb_17 then
            xb_17 = xa >= xd_5
        end
        if xb_17 then
            local w9_7 = nv(o3:PurchaseExpansion("Farm", xc_7))
            if w9_7 == true then
                task.wait(0.25)
                return
            end
        end
    end
end
local function fn777()
    local sI = nw()
    local sJ = sI and tonumber(sI.Level)
    return sJ or 1
end
local function fn801()
    nB = Knit.GetService("GrowingService")
    ny = Knit.GetService("FlowerDisplayService")
    nr = Knit.GetService("ShopService")
    o3 = Knit.GetService("PlacementService")
    o_ = Knit.GetService("StaffService")
    oR = Knit.GetService("UpgradeService")
    oJ = Knit.GetService("EquipmentService")
    oF = Knit.GetService("CustomerService")
    oy = Knit.GetService("ArrangementService")
end
local function fn827(dR)
    local tk = tonumber(dR:GetAttribute("Max")) or 8
    local Arrangements = dR:FindFirstChild("_Arrangements")
    local tm = Arrangements and #Arrangements:GetChildren()
    return (tm or 0) < tk
end
local function onRscripts()
    nU(oj, "Copied Rscripts profile to clipboard")
end
local function fn835(jf)
    local DiscordGroup = jf:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = nG })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = nG })
end
local function fn837(cn)
    local ro = nC()
    if not (ro and cn) then
        return false
    elseif cn.Parent == LocalPlayer.Character then
        return true
    else
        ro:EquipTool(cn)
        task.wait(0.15)
        return cn.Parent == LocalPlayer.Character
    end
end
local function fn842(et, eu, ev, ew, ex)
    local tI = math.max(1, math.round(ev))
    local tJ = math.max(1, math.round(ew))
    local tK = tonumber(ex) or 0
    local tL = tK % 360
    if tL == 90 or tL == 270 or tL == -90 or tL == -270 then
        tI, tJ = tJ, tI
    end
    local tK_2 = tI / 2 % 1
    local tI_1 = tJ / 2 % 1
    local tJ_1 = eu.Position.Y + eu.Size.Y / 2
    return Vector3.new(math.floor((et.X - tK_2) / 1 + 0.5) * 1 + tK_2, tJ_1, math.floor((et.Z - tI_1) / 1 + 0.5) * 1 + tI_1)
end
local function fn843()
    local so = ob()
    local sp = {}
    if not so then
        return sp
    end
    for i, v in ipairs(CollectionService:GetTagged("ArrangementDisplay")) do
        if v:IsDescendantOf(so) then
            table.insert(sp, v)
        end
    end
    return sp
end
local function fn850()
    local Character = LocalPlayer.Character
    local rf = Character and Character:FindFirstChildOfClass("Humanoid")
    return rf
end
local function fn882()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    ot = tick()
end
nr = nil
ns = nil
nt = nil
nu = nil
nv = nil
nw = nil
nx = nil
ny = nil
nz = nil
connection2 = nil
nB = nil
nC = nil
nD = nil
nE = nil
nF = nil
nG = nil
nH = nil
nI = nil
nJ = nil
nK = nil
nL = nil
Displays = nil
nN = nil
nO = nil
nP = nil
Planters = nil
nR = nil
connection = nil
nT = nil
nU = nil
nV = nil
Options = nil
nX = nil
nY = nil
Toggles = nil
n_ = nil
n1 = nil
n2 = nil
n3 = nil
n4 = nil
EquipmentConfig = nil
Library = nil
n7 = nil
n8 = nil
n9 = nil
UpgradeConfig = nil
ob = nil
oc = nil
ReplicaController = nil
local Flowers
oe = nil
of = nil
og = nil
Knit = nil
oi = nil
oj = nil
ol = nil
om = nil
oo = nil
op = nil
oq = nil
ot = nil
ou = nil
ov = nil
ow = nil
LocalPlayer = nil
oy = nil
oz = nil
oA = nil
oB = nil
oC = nil
oD = nil
Workspace = nil
oF = nil
oG = nil
VirtualUser = nil
oI = nil
oJ = nil
oK = nil
oL = nil
oM = nil
oN = nil
oO = nil
oP = nil
oQ = nil
oR = nil
oS = nil
oT = nil
oU = nil
oV = nil
oW = nil
oX = nil
CollectionService = nil
oZ = nil
o_ = nil
o0 = nil
o1 = nil
o2 = nil
o3 = nil
o4 = nil
o5 = nil
o6 = nil
CollectionService, VirtualUser, Workspace, LocalPlayer, op, oj, Knit, ReplicaController, UpgradeConfig, EquipmentConfig, Flowers, yV_6, Planters, Displays, yV_29, nF, nB, ny, nr, o3, o_, oR, oJ, oF, oy, yV_27 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local yV_13 = game:GetService("Players")
local yV_4 = game:GetService("ReplicatedStorage")
CollectionService = game:GetService("CollectionService")
local UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
Workspace = game:GetService("Workspace")
LocalPlayer = yV_13.LocalPlayer
local yV_18 = "My Flower Shop"
op = "https://discord.gg/ehKVq7pf7v"
oj = "https://rscripts.net/@Ouroboros"
Knit = require(yV_4:WaitForChild("Packages"):WaitForChild("Knit"))
ReplicaController = require(yV_4:WaitForChild("ReplicaController"))
UpgradeConfig = require(yV_4:WaitForChild("Shared"):WaitForChild("UpgradeConfig"))
if ((o_ and ny or (not Workspace or o_)) and ((not o_ or yV_13) and (Workspace and yV_29)) or (yV_29 and not yV_29 or (ny or UserInputService) or not Workspace and not ny and (not Workspace and not Workspace))) and not ((o_ and ny or (not Workspace or o_)) and ((not o_ or yV_13) and (Workspace and yV_29)) or (yV_29 and not yV_29 or (ny or UserInputService) or not Workspace and not ny and (not Workspace and not Workspace))) then
    yV_4 = require(EquipmentConfig:WaitForChild("Shared"):WaitForChild("EquipmentConfig"))
else
    EquipmentConfig = require(yV_4:WaitForChild("Shared"):WaitForChild("EquipmentConfig"))
end
local yV_25 = yV_4:WaitForChild("Assets")
Flowers = yV_25:WaitForChild("Flowers")
local yV_17 = yV_25:WaitForChild("Seeds")
if (false and yV_17 or yV_17 and false) and (o3 and false and (false and o3)) and not ((false and yV_17 or yV_17 and false) and (o3 and false and (false and o3))) then
    yV_25 = yV_6:WaitForChild("Supplies")
else
    yV_6 = yV_25:WaitForChild("Supplies")
end
local yV_2 = yV_25:WaitForChild("Objects")
Planters = yV_2:WaitForChild("Planters")
Displays = yV_2:WaitForChild("Displays")
yV_29 = yV_2:WaitForChild("Decor")
if (not yV_29 or yV_18 or not yV_17 and yV_13 or not yV_13 and not yV_29 and (yV_18 and not yV_13)) and (yV_17 or not yV_13 or (yV_29 or not yV_29) or (not yV_29 and yV_18 or yV_18 and not yV_17)) and not ((not yV_29 or yV_18 or not yV_17 and yV_13 or not yV_13 and not yV_29 and (yV_18 and not yV_13)) and (yV_17 or not yV_13 or (yV_29 or not yV_29) or (not yV_29 and yV_18 or yV_18 and not yV_17))) then
    yV_27:WaitForChild("Arrangements")
    nF = fn801
else
    nF = yV_25:WaitForChild("Arrangements")
    yV_27 = fn801
end
yV_13 = pcall(yV_27)
if not yV_13 then
    yV_2 = os.clock()
    while os.clock() - yV_2 < 10 do
        yV_13 = pcall(yV_27)
        if yV_13 then
            break
        end
        task.wait(0.25)
    end
end
ns, o4 = nil, nil
local yV_15 = fns.fn46
ns = yV_15(yV_17)
o4 = {}
for i, v in ipairs(yV_15(yV_6)) do
    if v ~= "Lock" then
        table.insert(o4, v)
    end
end
oL, oG, oB, ou, oq, ol, Library, Toggles, Options, oi, o2, nU, nG, nu, oS, oc, nX, nD, oV, ov, n7, nv, nP, nw, oP, ob, nR, nC, o0, oz, of, o5, n2, nH, oN, og, nY, nL, oo, nE, oO, n9, oZ, oI, oe, nz, oA, nV, nt, oC, n3, oD, n4, oX, nK, oQ, nN, oM, nI, oT, n_, nJ, oW, nx, nT, oK, n1, o6 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
oL = yV_15(Flowers)
oG = yV_15(Planters)
oB = yV_15(Displays)
ou = yV_15(yV_29)
oq = yV_15(nF)
if (o6 and o6 or not o6 and not oG) and (not o6 or not o6 or o6 and not oG) and ((oG or oG) and (o6 and o6) or (not o6 or not o6 or (not o6 or o6))) and not ((o6 and o6 or not o6 and not oG) and (not o6 or not o6 or o6 and not oG) and ((oG or oG) and (o6 and o6) or (not o6 or not o6 or (not o6 or o6)))) then
    yV_30 = { "Gardener", "Cashier" }
    ol = { "Advertising", "Craft Table", "Shop Expansion", "Farm Expansion", "Backpack" }
    yV_8 = { "225", "0", "315", "135", "45", "180", "270", "90" }
else
    ol = { "Gardener", "Cashier" }
    yV_8 = { "Advertising", "Shop Expansion", "Farm Expansion", "Backpack", "Craft Table" }
    yV_30 = { "0", "45", "90", "135", "180", "225", "270", "315" }
end
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
yV_17 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
yV_27 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
nU = fn500
nG = fns.fn352
nu = fns.fn81
oS = fn729
local yV_20 = "#7fd47f"
local yV_31 = "#6ec1ff"
oi = "#e8a34d"
local yV_19 = "#8b93a3"
oc = fns.fn315
nX = fn662
nD = fn507
oV = fn709
ov = fns.fn324
n7 = fns.fn314
nv = function(bs)
    local qz
    local qA
    local qB
    local qC
    local qD = typeof(bs) == "table" and bs.andThen
    if qD then
        qA, qz, qC, qB = nil, nil, nil, nil
        bs:andThen(function(by, bz, bA)
            qA = true
            qz, qC, qB = by, bz, bA
        end):catch(function(bF)
            qA = true
            qz, qC = false, tostring(bF)
        end)
        local qD_1 = os.clock()
        while true do
            local qE = not qA and os.clock() - qD_1 < 8
            if qE then
                task.wait(0.05)
                continue
            end
            break
        end
        return qz, qC, qB
    end
    return bs
end
nP = fn618
nw = fns.fn394
oP = fn579
ob = fn496
nR = fn434
nC = fn850
o0 = function(cj)
    if not cj then
        return false
    elseif fireproximityprompt then
        return pcall(function()
            local rh = cj.HoldDuration or 0
            fireproximityprompt(cj, rh)
        end)
    else
        return pcall(function()
            cj:InputHoldBegin()
            local rl = cj.HoldDuration or 0
            task.wait(math.max(0.05, rl))
            cj:InputHoldEnd()
        end)
    end
end
oz = fn837
of = fns.fn366
o5 = function(cH)
    local function rS(cJ)
        if not cJ:IsA("Tool") then
            return false
        elseif not Flowers:FindFirstChild(cJ.Name) then
            return false
        else
            if cH and cH ~= "" then
                return cJ.Name == cH
            end
            return true
        end
    end
    local Character = LocalPlayer.Character
    if Character then
        for i, child in ipairs(Character:GetChildren()) do
            if rS(child) then
                return child
            end
        end
    end
    local Backpack = LocalPlayer:FindFirstChild("Backpack")
    if not Backpack then
        return nil
    end
    for i, child in ipairs(Backpack:GetChildren()) do
        if rS(child) then
            return child
        end
    end
end
n2 = fns.fn306
nH = fns.fn174
oN = fn843
og = fns.fn248
nY = fn777
nL = function()
    local dq = {}
    local function dr(ds)
        if not ds then
            return
        end
        for i, child in ipairs(ds:GetChildren()) do
            local sL = child:IsA("Tool") and Flowers:FindFirstChild(child.Name)
            if sL then
                local sL_1 = tonumber(child:GetAttribute("Count")) or 1
                local sL_2 = math.max(1, sL_1)
                local sW = 1
                while sW <= sL_2 do
                    table.insert(dq, child.Name)
                    sW += 1
                end
            end
        end
    end
    dr(LocalPlayer:FindFirstChild("Backpack"))
    dr(LocalPlayer.Character)
    return dq
end
oo = function(dD)
    local function s5(dF)
        local sZ = not dF:IsA("Tool")
        local s4 = if sZ then 1 else 0
        local s2 = 1417 * s4 + 2995 * (1 - s4)
        local s3 = 2499 * s4 + 3738 * (1 - s4)
        if not ((s2 * 55 + s3 * 2158 + s2 * s3) % 16777213 == 9011860) then
            sZ = not dF:GetAttribute("IsArrangement")
        end
        if sZ then
            return false
        end
        local attr = dF:GetAttribute("Container")
        if dD and dD ~= "" then
            return attr == dD
        end
        return true
    end
    local Character = LocalPlayer.Character
    if Character then
        for i, child in ipairs(Character:GetChildren()) do
            if s5(child) then
                return child
            end
        end
    end
    local Backpack = LocalPlayer:FindFirstChild("Backpack")
    if not Backpack then
        return nil
    end
    for i, child in ipairs(Backpack:GetChildren()) do
        if s5(child) then
            return child
        end
    end
end
nE = fn827
oO = fn487
n9 = fn560
o2 = {}
oZ = fns.fn133
oI = function(em)
    local tG_1
    local tF_1
    local tE_1
    if not em then
        return 2, 2
    elseif em.PrimaryPart then
        return em.PrimaryPart.Size.X, em.PrimaryPart.Size.Z
    else
        tF_1, tE_1, tG_1 = pcall(function()
            return em:GetBoundingBox()
        end)
        local tE_2 = tF_1 and typeof(tG_1) == "Vector3"
        if tE_2 then
            return tG_1.X, tG_1.Z
        end
        return 2, 2
    end
end
oe = fn842
nz = fn558
oA = fns.fn29
nV = fns.fn401
nt = fns.fn398
oC = fn497
n3 = fns.fn70
oD = fns.fn16
n4 = fn435
oX = fn450
nK = fns.fn211
oQ = fns.fn304
nN = fn650
oM = fn583
nI = fns.fn4
oT = fn449
n_ = fns.fn55
nJ = fn742
oW = fn758
nx = fn606
nT = fn653
oK = fn644
n1 = fn636
o6 = fns.fn164
yV_25 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = op, Copyable = true }, "|", yV_18 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
yV_6 = {
    Info = yV_25:AddTab("Info", "info"),
    Main = yV_25:AddTab("Main", "flower-2"),
    Settings = yV_25:AddTab("Settings", "settings")
}
yV_6.Farm = yV_6.Main:AddSubTab("Farm", "sprout")
yV_6.Shop = yV_6.Main:AddSubTab("Shop", "shopping-cart")
yV_6.Build = yV_6.Main:AddSubTab("Build", "hammer")
yV_4 = fn835
for k, v in yV_6 do
    if v ~= yV_6.Main then
        yV_4(v)
    end
end
nO, yV_13, yV_15, o1, oU, yV_25 = nil, nil, nil, nil, nil, nil
yV_2 = 8
repeat
    yV_4 = (yV_2 * 2 + 0) % 3 + 1
    if yV_4 <= 2 then
        if yV_4 <= 1 then
            local Ah = bit32.rrotate(bit32.bxor(bit32.lrotate(yV_2, 30), string.byte(tostring(o1))), 24)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Ah, 738081225), 359194013), (bit32.bxor(bit32.band(Ah, 3556886070), 1512109426))), 359194013), 1512109426) == Ah then
                yV_25 = #oU > 18
            else
                oU = #yV_25 > 18
            end
            yV_2 = (yV_2 + 2) % 24
        else
            yV_4 = (vector.create((yV_2 * 3 + 9) % 11 + 1, (yV_2 * 2 + 11) % 13 + 1, (yV_2 * 6 + 8) % 17 + 1))
            yV_29 = (vector.create((yV_2 * 4 + 3) % 11 + 1, (yV_2 * 9 + 5) % 13 + 1, (yV_2 * 9 + 5) % 17 + 1))
            yV_10 = (vector.create((yV_2 * 5 + 7) % 11 + 1, (yV_2 * 6 + 5) % 13 + 1, (yV_2 * 14 + 6) % 17 + 1))
            yV_32 = (vector.create((yV_2 * 1 + 2) % 11 + 1, (yV_2 * 1 + 13) % 13 + 1, (yV_2 * 2 + 14) % 17 + 1))
            if vector.dot(vector.cross(yV_4, yV_29), (vector.cross(yV_10, yV_32))) == vector.dot(yV_4, yV_10) * vector.dot(yV_29, yV_32) - vector.dot(yV_4, yV_32) * vector.dot(yV_29, yV_10) + 1 then
                yV_18 = "Unknown"
                pcall(fns.fn172)
                yV_15 = (nil):AddLeftGroupbox("Account", "circle-user")
                yV_15:AddLabel(yV_6("User", oS.Name, LocalPlayer), true)
                yV_15:AddLabel(yV_6("Status", "Keyless", LocalPlayer), true)
                yV_15:AddLabel(yV_6("Executor", "Unknown", LocalPlayer), true)
                oi = (nil):AddLeftGroupbox("Game Info", "gamepad-2")
                oi:AddLabel(yV_13(nu .. " [" .. tostring(game.PlaceId) .. "]", o1), true)
                oi:AddLabel(yV_6("Place ID", tostring(game.PlaceId), o1), true)
                yV_20 = oi:AddLabel(yV_6("Session time", "0s", nO), true)
            else
                nO = "Unknown"
                pcall(fns.fn172)
                yV_13 = yV_6.Info:AddLeftGroupbox("Account", "circle-user")
                yV_13:AddLabel(oS("User", LocalPlayer.Name, yV_20), true)
                yV_13:AddLabel(oS("Status", "Keyless", yV_20), true)
                yV_13:AddLabel(oS("Executor", nO, yV_20), true)
                yV_15 = yV_6.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                yV_15:AddLabel(nu(yV_18 .. " [" .. tostring(game.PlaceId) .. "]", yV_31), true)
                yV_15:AddLabel(oS("Place ID", tostring(game.PlaceId), yV_31), true)
                o1 = yV_15:AddLabel(oS("Session time", "0s", oi), true)
            end
            yV_2 = (yV_2 + 11) % 24
        end
    else
        yV_4 = (vector.create((yV_2 * 6 + 8) % 11 + 1, (yV_2 * 5 + 5) % 13 + 1, (yV_2 * 15 + 2) % 17 + 1))
        yV_29 = (vector.create((yV_2 * 7 + 3) % 11 + 1, (yV_2 * 5 + 6) % 13 + 1, (yV_2 * 9 + 5) % 17 + 1))
        local z_ = vector.dot(yV_4, yV_29)
        if z_ * z_ >= vector.dot(yV_4, yV_4) * vector.dot(yV_29, yV_29) + 1 then
            o1 = tostring(game.JobId)
        else
            oU = tostring(game.JobId)
        end
        yV_2 = (yV_2 + 23) % 24
    end
until (yV_2 * 23 + 10) % 24 == 14
if yV_25 then
    yV_13 = 7
    repeat
        yV_2 = (vector.create((yV_13 * 5 + 7) % 11 + 1, (yV_13 * 3 + 12) % 13 + 1, (yV_13 * 2 + 14) % 17 + 1))
        local Aa = vector.floor(yV_2) + vector.ceil(yV_2 * -1)
        if vector.dot(Aa, Aa) == 0 then
            yV_25 = string.sub(oU, 1, 18) .. "..."
        else
            oU = string.sub(yV_25, 1, 18) .. "..."
        end
        yV_13 = (yV_13 + 7) % 8
    until (yV_13 * 3 + 5) % 8 == 7
end
yV_13 = yV_25
local pR = if yV_13 then 1 else 0
local pP = 1587 * pR + 2617 * (1 - pR)
local pQ = 1823 * pR + 2672 * (1 - pR)
if not ((pP * 3934 + pQ * 1227 + pP * pQ) % 16777213 == 11373180) then
    yV_13 = oU
end
om, yV_10, yV_29, yV_4, ShopGroup, MenuGroup, ow, ot, connection, connection2, n8 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local yV_1 = yV_13
yV_15:AddLabel(oS("Server", yV_1, yV_19), true)
yV_15:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
om = os.clock()
task.spawn(fns.worker)
local ScriptsGroup = yV_6.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(nu("Included in this hub", yV_19), true)
ScriptsGroup:AddLabel(nu(yV_18, yV_31), true)
yV_32 = yV_6.Info:AddRightGroupbox("Features", "list")
if ((yV_29 or not ShopGroup) and (not MenuGroup and not yV_4) or (MenuGroup or yV_29) and (yV_4 or n8) or (not MenuGroup or not ShopGroup) and (not n8 and not ShopGroup) and (not MenuGroup or not yV_4 or (not yV_4 or not yV_10)) or (not MenuGroup or not MenuGroup or MenuGroup and not yV_10) and (MenuGroup or yV_10 or ShopGroup and not yV_10) and ((yV_29 or MenuGroup) and (not MenuGroup or MenuGroup) or (n8 and not ShopGroup or MenuGroup and not yV_29))) and not ((yV_29 or not ShopGroup) and (not MenuGroup and not yV_4) or (MenuGroup or yV_29) and (yV_4 or n8) or (not MenuGroup or not ShopGroup) and (not n8 and not ShopGroup) and (not MenuGroup or not yV_4 or (not yV_4 or not yV_10)) or (not MenuGroup or not MenuGroup or MenuGroup and not yV_10) and (MenuGroup or yV_10 or ShopGroup and not yV_10) and ((yV_29 or MenuGroup) and (not MenuGroup or MenuGroup) or (n8 and not ShopGroup or MenuGroup and not yV_29))) then
    oi:AddLabel(yV_32("Auto Farm", nu), true)
    oi:AddLabel(yV_32("Auto Shop", yV_20), true)
    oi:AddLabel(yV_32("Auto Build", yV_10), true)
    oi:AddLabel(yV_32("Auto Craft", yV_19), true)
    yV_6 = (nil):AddRightGroupbox("Socials", "link")
else
    yV_32:AddLabel(nu("Auto Farm", yV_31), true)
    yV_32:AddLabel(nu("Auto Shop", oi), true)
    yV_32:AddLabel(nu("Auto Build", yV_19), true)
    yV_32:AddLabel(nu("Auto Craft", yV_20), true)
    yV_10 = yV_6.Info:AddRightGroupbox("Socials", "link")
end
yV_10:AddButton({ Text = "Discord", Func = nG })
yV_10:AddButton({ Text = "Rscripts", Func = onRscripts })
yV_29 = yV_6.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
yV_29:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
yV_29:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
yV_29:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
yV_29:AddButton({ Text = "Copy Discord Invite", Func = nG })
yV_4 = yV_6.Info:AddRightGroupbox("FAQ", "circle-help")
yV_4:AddLabel("Where do I get a good config?", true)
yV_4:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
yV_4:AddLabel("How do I import / export configs?", true)
yV_4:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
yV_4:AddLabel("How do I report bugs?", true)
yV_4:AddLabel("Join the Discord and post it in the bugs channel.", true)
yV_4:AddLabel("How do I make suggestions?", true)
yV_4:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
yV_4:AddLabel("How do I get help or updates?", true)
yV_4:AddLabel("Join the Discord, updates and support are posted there first.", true)
yV_25 = yV_6.Farm:AddLeftGroupbox("Farm", "sprout")
yV_25:AddToggle("AutoPlantSeeds", { Text = "Auto Plant Seeds", Default = false })
yV_25:AddDropdown("PlantSeedItems", { Text = "Seeds", Values = ns, Default = {}, Multi = true, Searchable = true, AllowNull = true })
yV_25:AddToggle("AutoHarvest", { Text = "Auto Harvest", Default = false })
yV_25:AddDropdown("HarvestSeedItems", {
    Text = "Harvest seeds",
    Values = ns,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
yV_25:AddToggle("AutoStockFlowers", { Text = "Auto Stock Flowers", Default = false })
yV_25:AddDropdown("StockFlowerItems", { Text = "Flowers", Values = oL, Default = {}, Multi = true, Searchable = true, AllowNull = true })
yV_25:AddDivider("Bouquets")
yV_25:AddToggle("AutoCraftBouquets", { Text = "Auto Craft Bouquets", Default = false })
yV_25:AddDropdown("CraftBouquetItems", { Text = "Bouquets", Values = oq, Default = {}, Multi = true, Searchable = true, AllowNull = true })
yV_25:AddToggle("AutoPlaceBouquets", { Text = "Auto Place Bouquets", Default = false })
yV_25:AddDropdown("PlaceBouquetItems", {
    Text = "Place bouquets",
    Values = oq,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
yV_2 = yV_6.Farm:AddRightGroupbox("Checkout", "banknote")
yV_2:AddToggle("AutoCheckout", { Text = "Auto Checkout", Default = false })
yV_2:AddSlider("FarmDelay", { Text = "Farm delay", Default = 0.35, Min = 0.1, Max = 5, Rounding = 2, Suffix = "s" })
ShopGroup = yV_6.Shop:AddLeftGroupbox("Shop", "shopping-bag")
ShopGroup:AddToggle("AutoBuySeeds", { Text = "Auto Buy Seeds", Default = false })
ShopGroup:AddDropdown("BuySeedItems", { Text = "Seeds", Values = ns, Default = {}, Multi = true, Searchable = true, AllowNull = true })
ShopGroup:AddToggle("AutoBuySupplies", { Text = "Auto Buy Supplies", Default = false })
ShopGroup:AddDropdown("BuySupplyItems", { Text = "Supplies", Values = o4, Default = {}, Multi = true, Searchable = true, AllowNull = true })
ShopGroup:AddToggle("AutoBuyDecorations", { Text = "Auto Buy Decorations", Default = false })
ShopGroup:AddDropdown("BuyDecorItems", {
    Text = "Decorations",
    Values = ou,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
ShopGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
ShopGroup:AddDropdown("BuyUpgradeItems", {
    Text = "Upgrades",
    Values = yV_8,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
local StaffGroup = yV_6.Shop:AddRightGroupbox("Staff", "users")
StaffGroup:AddToggle("AutoHireStaff", { Text = "Auto Hire Staff", Default = false })
StaffGroup:AddDropdown("HireStaffItems", { Text = "Roles", Values = ol, Default = {}, Multi = true, Searchable = true, AllowNull = true })
StaffGroup:AddSlider("ShopDelay", { Text = "Shop delay", Default = 0.5, Min = 0.1, Max = 5, Rounding = 2, Suffix = "s" })
local BuyGroup = yV_6.Build:AddLeftGroupbox("Buy", "package-plus")
BuyGroup:AddToggle("AutoBuyPlanters", { Text = "Auto Buy Planters", Default = false })
BuyGroup:AddDropdown("BuyPlanterItems", { Text = "Planters", Values = oG, Default = {}, Multi = true, Searchable = true, AllowNull = true })
BuyGroup:AddDropdown("BuyPlanterRotation", {
    Text = "Planter rotation",
    Values = yV_30,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
BuyGroup:AddSlider("BuyPlanterSpacing", { Text = "Planter spacing", Default = 4, Min = 2, Max = 16, Rounding = 0 })
BuyGroup:AddToggle("AutoBuyDisplays", { Text = "Auto Buy Displays", Default = false })
BuyGroup:AddDropdown("BuyDisplayItems", { Text = "Displays", Values = oB, Default = {}, Multi = true, Searchable = true, AllowNull = true })
BuyGroup:AddDropdown("BuyDisplayRotation", {
    Text = "Display rotation",
    Values = yV_30,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
BuyGroup:AddSlider("BuyDisplaySpacing", { Text = "Display spacing", Default = 4, Min = 2, Max = 16, Rounding = 0 })
local PlaceGroup = yV_6.Build:AddRightGroupbox("Place", "move")
PlaceGroup:AddToggle("AutoPlacePlanters", { Text = "Auto Place Planters", Default = false })
PlaceGroup:AddDropdown("PlacePlanterItems", { Text = "Planters", Values = oG, Default = {}, Multi = true, Searchable = true, AllowNull = true })
PlaceGroup:AddDropdown("PlacePlanterRotation", {
    Text = "Planter rotation",
    Values = yV_30,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
PlaceGroup:AddSlider("PlacePlanterSpacing", { Text = "Planter spacing", Default = 4, Min = 2, Max = 16, Rounding = 0 })
PlaceGroup:AddToggle("AutoPlaceDisplays", { Text = "Auto Place Displays", Default = false })
PlaceGroup:AddDropdown("PlaceDisplayItems", { Text = "Displays", Values = oB, Default = {}, Multi = true, Searchable = true, AllowNull = true })
PlaceGroup:AddDropdown("PlaceDisplayRotation", {
    Text = "Display rotation",
    Values = yV_30,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
PlaceGroup:AddSlider("PlaceDisplaySpacing", { Text = "Display spacing", Default = 4, Min = 2, Max = 16, Rounding = 0 })
PlaceGroup:AddSlider("BuildDelay", { Text = "Build delay", Default = 0.45, Min = 0.1, Max = 5, Rounding = 2, Suffix = "s" })
MenuGroup = yV_6.Settings:AddLeftGroupbox("Menu", "settings")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", fns.onUnload)
Library:OnUnload(fns.fn274)
yV_17:SetLibrary(Library)
yV_17:SetFolder("OuroborosHub")
yV_17:SaveDefault("Monochrome")
yV_17:ApplyToTab(yV_6.Settings)
yV_17:LoadDefault()
yV_27:SetLibrary(Library)
yV_27:IgnoreThemeSettings()
yV_27:SetIgnoreIndexes({ "MenuKeybind" })
yV_27:SetFolder("OuroborosHub/MyFlowerShop")
yV_27:BuildConfigSection(yV_6.Settings)
yV_27:LoadAutoloadConfig()
ow = tick()
ot = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local yA = v
        pcall(function()
            yA:Disable()
        end)
    end
end)
n8 = fn882
connection = UserInputService.InputBegan:Connect(fns.onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
Library:OnUnload(fn702)
task.spawn(fns.worker2)
task.spawn(fns.worker3)
task.spawn(worker4)
task.spawn(worker5)
Library:Notify("My Flower Shop loaded")
