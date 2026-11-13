local tE_14, tE_17
local tE_22_1, tE_22_9
local VariationUtility
local nf
local mU
local mf
local ni
local mi
local nl
local m_
local ml
local Label
local mH
local mo
local m5
local l5
local mE
local m8
local l8
local mQ
local mx
local IngredientShopRemote
local mb
local mT
local connection
local mD
local mZ
local mG
local mn
local mJ
local l4
local m4
local na
local mS
local nd
local GridUtility
local mz
local ng
local mV
local mY
local mC
local connection2
local mF
local m0
local mI
local m3
local l6
local m9
local ms
local Options
local nc
local mR
local function fn23(bc)
    if mI.Unloaded then
        return false
    end
    local oH = mz[bc]
    return oH ~= nil and oH.Value == true
end
local function fn40()
    local Character = m5.Character
    local pa = Character and Character:FindFirstChildWhichIsA("Humanoid")
    return pa
end
local function fn53(br)
    local oU = mF(br, {})
    if typeof(oU) ~= "table" then
        return {}
    end
    local oV = {}
    for k, v in pairs(oU) do
        if v == true then
            oV[k] = true
        else
            local oU_1 = typeof(k) == "number" and typeof(v) == "string"
            if oU_1 then
                oV[v] = true
            end
        end
    end
    return oV
end
local function worker6()
    while not mI.Unloaded do
        task.wait(0.5)
        if mY("AutoBuySeeds") then
            pcall(nf)
            task.wait(mn("BuySeedsDelay", 0.4))
        end
    end
end
local function worker()
    local s2_1
    while true do
        task.wait(1)
        if mI.Unloaded then
            break
        end
        local s1 = math.floor(os.clock() - mJ)
        if s1 < 60 then
            s2_1 = s1 .. "s"
        elseif s1 < 3600 then
            s2_1 = string.format("%dm %ds", s1 // 60, s1 % 60)
        else
            s2_1 = string.format("%dh %dm", s1 // 3600, s1 % 3600 // 60)
        end
        Label:SetText(l5("Session time", s2_1, m3))
    end
end
local function onOnClientEvent(cl)
    if typeof(cl) ~= "table" then
        return
    end
    if cl.eventType == "placementSync" then
        mi(cl.items)
    elseif cl.eventType == "placementAdded" then
        local floorIndex = cl.floorIndex
        local pX_1 = mD(cl.center)
        local pY = mD(cl.size)
        if floorIndex and pX_1 and pY then
            local p__1 = ml[floorIndex] or {}
            ml[floorIndex] = p__1
            local pZ_2 = ml[floorIndex]
            local p__2 = cl.uid
            local p3 = if p__2 then 1 else 0
            local p1 = 3936 * p3 + 1825 * (1 - p3)
            local p2 = 276 * p3 + 1981 * (1 - p3)
            if not ((p1 * 1856 + p2 * 393 + p1 * p2) % 16777213 == 8500020) then
                p__2 = tostring(pX_1)
            end
            pZ_2[p__2] = { center = pX_1, size = pY }
        end
    elseif cl.eventType == "placementRemoved" then
        local floorIndex = cl.floorIndex
        if floorIndex and ml[floorIndex] and cl.uid then
            ml[floorIndex][cl.uid] = nil
        end
    end
end
local function fn102(aw, ax)
    return aw.price < ax.price
end
local function fn132(a0, a1)
    return string.format('<font color="%s">%s</font>', a1, a0)
end
local function fn136(gV)
    local DiscordGroup = gV:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = ms })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = ms })
end
local function fn139(dd)
    local qR = VariationUtility.parseName(dd.Name)
    local qS = mC[qR]
    return qS and (qS.sell_price or 0) or 0
end
local function fn147(a3, a4, a5)
    return string.format("<b>%s</b> %s %s", a3, mf("-", "#5a6070"), mf(a4, a5))
end
local function fn160(bC, bD)
    if not m4(bC) then
        return true
    end
    return l8(bC)[bD] == true
end
local function fn170()
    connection:Disconnect()
    connection2:Disconnect()
end
local function fn194(c0, c1, c2)
    local qB, qC, qD, qE, qH, qI, qJ, qK, qM, qN, qO, qP
    local qG = 9
    while true do
        local qG_1 = 6847 - qG
        do
            if qG_1 < 6840 then
                if qG_1 < 6837 then
                    if qG_1 < 6836 then
                        if qG_1 < 6835 then
                            if qG_1 == 6834 then
                                qG = 6
                            else
                                break
                            end
                        elseif qG_1 == 6835 then
                            qP = qO
                            qG = 1
                        else
                            qG = 7096
                            continue
                        end
                    elseif qG_1 == 6836 then
                        qO += qN
                        qG = 0
                    else
                        qG = 6841
                        continue
                    end
                elseif qG_1 < 6839 then
                    if qG_1 < 6838 then
                        return qB.Position
                    end
                    qB = math.floor(c0.Size.X / 2) - math.ceil(c2.X / 2)
                    qC = math.floor(c0.Size.Z / 2) - math.ceil(c2.Z / 2)
                    qD = math.max(1, math.floor(c2.X + 0.5))
                    qE = ni(c1)
                    qJ = -qB
                    qH = qB
                    qI = qD
                    qG = 3
                else
                    qG = 11
                end
            elseif qG_1 < 6847 then
                if qG_1 < 6844 then
                    if qG_1 < 6841 then
                        qB = -qC
                        qO = qB
                        qM = qC
                        qN = qD
                        qG = 0
                    elseif qG_1 < 6842 then
                        if qG_1 == 6841 then
                            qJ += qI
                            qG = 3
                        else
                            qG = 6847
                            continue
                        end
                    elseif qG_1 < 6843 then
                        return nil
                    elseif qG_1 == 6843 then
                        qK = qJ
                        qG = 7
                    else
                        qG = 6846
                        continue
                    end
                elseif qG_1 < 6845 then
                    if qG_1 == 6844 then
                        qG = if qI > 0 and qJ <= qH or qI <= 0 and qJ >= qH then 4 else 5
                    else
                        qG = 6842
                        continue
                    end
                elseif qG_1 < 6846 then
                    break
                else
                    qB = GridUtility.snapPosition(CFrame.new(qK, 0, qP), 1, c2)
                    qG = if GridUtility.validPlacement(qB, c2, c0.Size, qE) then 10 else 8
                end
            elseif qG_1 < 7096 then
                if qG_1 == 6847 then
                    qG = if qN > 0 and qO <= qM or qN <= 0 and qO >= qM then 12 else 13
                else
                    break
                end
            else
                break
            end
        end
    end
end
local function fn200(bn, bo)
    local oP = (tonumber(mF(bn, bo)))
    local oT = if oP then 1 else 0
    local oR = 1873 * oT + 3124 * (1 - oT)
    local oS = 2673 * oT + 3522 * (1 - oT)
    if not ((oR * 2417 + oS * 1394 + oR * oS) % 16777213 == 13259732) then
        oP = bo
    end
    return oP
end
local function fn206()
    local rr = mV()
    if not rr then
        return
    end
    local CrateStack = rr:FindFirstChild("CrateStack")
    local rr_1 = not CrateStack or not CrateStack:FindFirstChild("StackCrate")
    if rr_1 then
        return
    end
    local rr_2 = mH()
    if not rr_2 then
        return
    end
    local rt = CrateStack:FindFirstChild("Base") and CrateStack.Base:FindFirstChild("thing") and CrateStack.Base.thing:FindFirstChild("PickupPrompt")
    local rs_1 = rt
    if rt then
        rt = rs_1.Parent
    end
    if rt then
        rt = rs_1.Parent:IsA("BasePart")
    end
    if rt then
        rr_2.CFrame = rs_1.Parent.CFrame + Vector3.new(0, 3, 0)
        task.wait(0.12)
    end
    pcall(function()
        mS:FireServer({ event_type = "pickup" })
    end)
    task.wait(0.35)
    if na() then
        pcall(function()
            mS:FireServer({ event_type = "sell" })
        end)
    end
end
local function onRscripts()
    mE(mU, "Copied Rscripts profile to clipboard")
end
local function onInputBegan()
    nc = tick()
end
local function worker5()
    while not mI.Unloaded do
        task.wait(0.6)
        if mY("AutoBuyPets") then
            pcall(mb)
            task.wait(mn("BuyPetsDelay", 0.45))
        end
    end
end
local function fn334()
    local Character = m5.Character
    local o7 = Character and Character:FindFirstChild("HumanoidRootPart")
    return o7
end
local function fn350(b6)
    local pD_1
    local pC_1
    local pB_1
    if typeof(b6) == "Vector3" then
        return b6
    elseif typeof(b6) == "string" then
        pD_1, pB_1, pC_1 = string.match(b6, "([^,]+),%s*([^,]+),%s*([^,]+)")
        if pD_1 and pB_1 and pC_1 then
            return Vector3.new(tonumber(pD_1), tonumber(pB_1), tonumber(pC_1))
        end
        return nil
    else
        return nil
    end
end
local function fn356(bi, bj)
    local oK = Options[bi]
    if oK == nil then
        return bj
    end
    return oK.Value
end
local function fn363()
    mE(mZ, "Copied Discord invite to clipboard")
end
local function worker9()
    while not mI.Unloaded do
        task.wait(0.35)
        if mY("AutoCollectCrates") then
            pcall(mR)
            task.wait(mn("CollectCratesDelay", 0.75))
        end
    end
end
local function onCopyJoinScript_JobID()
    local hb = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, m0)
    mE(hb, "Copied join script to clipboard")
end
local function fn424()
    pcall(function()
        m_:FireServer({ eventType = "requestSync" })
    end)
end
local function worker11()
    while not mI.Unloaded do
        task.wait(2)
        if mY("AntiAfk") then
            local tv = tick() - nc
            local tw = tick() - m8
            if tv >= 300 and tw >= 60 then
                pcall(mQ)
            else
                if tv < 300 and tw >= 300 then
                    pcall(mQ)
                end
            end
        end
    end
end
local function fn461()
    local sY_1
    local sX_1
    if identifyexecutor then
        sY_1, sX_1 = identifyexecutor()
        local sZ = sY_1 ~= ""
        local s_ = type(sY_1) == "string" and sZ
        if s_ then
            local sZ_1 = type(sX_1) == "string" and sX_1 ~= "" and sY_1 .. " " .. sX_1
            l4 = sZ_1 or sY_1
        end
    end
end
local function fn493(aU, aV)
    if setclipboard then
        setclipboard(aU)
    elseif toclipboard then
        toclipboard(aU)
    end
    mI:Notify(aV)
end
local function fn525(cH)
    local qc = {}
    local qe = ml[cH] or {}
    for k, v in pairs(qe) do
        table.insert(qc, v)
    end
    return qc
end
local function fn541(am, an)
    if am.order == an.order then
        if am.price == an.price then
            return am.name < an.name
        end
        return am.price < an.price
    end
    return am.order < an.order
end
local function worker10()
    while not mI.Unloaded do
        task.wait(0.25)
        local s7 = mY("AutoCollectPlants") and not na()
        if s7 then
            pcall(mG)
            task.wait(mn("CollectPlantsDelay", 0.35))
        end
    end
end
local function fn549(cN)
    local qm = { m5.Backpack }
    if m5.Character then
        table.insert(qm, m5.Character)
    end
    for i, v in ipairs(qm) do
        for i, child in v:GetChildren() do
            local qm_1 = child:IsA("Tool") and child:GetAttribute("placeable") == true
            if qm_1 then
                local qm_2 = VariationUtility.parseName(child.Name)
                local qn = mC[qm_2] and mT(cN, qm_2)
                if qn then
                    return child, qm_2
                end
            end
        end
    end
    return nil
end
local function worker4()
    while not mI.Unloaded do
        task.wait(0.6)
        if mY("AutoBuyCosmetics") then
            pcall(mo)
            task.wait(mn("BuyCosmeticsDelay", 0.45))
        end
    end
end
local function worker8()
    while not mI.Unloaded do
        task.wait(0.35)
        local ta = mY("AutoPlaceSeeds") and not na()
        if ta then
            pcall(nl)
            task.wait(mn("PlaceSeedsDelay", 0.35))
        end
    end
end
local function fn608(bz)
    return next(l8(bz)) ~= nil
end
local function onInputChanged(iu)
    local UserInputType = iu.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        nc = tick()
    end
end
local function worker7()
    while not mI.Unloaded do
        task.wait(0.5)
        local tc = mY("AutoSell") and not na()
        if tc then
            pcall(l6)
            task.wait(mn("SellDelay", 1))
        end
    end
end
local function worker2()
    while not mI.Unloaded do
        task.wait(0.5)
        if mY("AutoBuyFloorUpgrades") then
            pcall(mx)
            task.wait(mn("FloorUpgradesDelay", 0.35))
        end
    end
end
local function fn666()
    local player_info = m5:FindFirstChild("player_info")
    local pd = player_info
    if pd then
        local pe = player_info:GetAttribute("Cash") or 0
        pd = pe
    end
    return pd or 0
end
local function worker3()
    while not mI.Unloaded do
        task.wait(0.75)
        if mY("AutoUpgradeFloor") then
            pcall(ng)
            task.wait(mn("UpgradeFloorDelay", 2))
        end
    end
end
local function fn688(cc)
    ml = {}
    if typeof(cc) ~= "table" then
        return
    end
    for k, v in cc do
        local floorIndex = v.floorIndex
        local pL = mD(v.center)
        local pM = mD(v.size)
        if floorIndex and pL and pM then
            local pO_1 = ml[floorIndex] or {}
            ml[floorIndex] = pO_1
            local pN_2 = ml[floorIndex]
            local pO_2 = v.uid or tostring(pL)
            pN_2[pO_2] = { center = pL, size = pM }
        end
    end
end
local function fn690()
    local Plots = m9:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    for i, child in Plots:GetChildren() do
        if child:GetAttribute("Owner_id") == m5.UserId then
            return child
        end
    end
    return nil
end
local function fn738()
    local CurrentCamera = m9.CurrentCamera
    if not CurrentCamera then
        return
    end
    nd:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    nd:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    m8 = tick()
end
local function fn742()
    local player_info = m5:FindFirstChild("player_info")
    local pk = player_info
    if pk then
        local pl = player_info:GetAttribute("OwnedFloors") or 1
        pk = pl
    end
    return pk or 1
end
local function fn758()
    local Character = m5.Character
    local po = Character ~= nil and Character:GetAttribute("CarryingCrates") == true
    return po
end
local function fn795(aG, aH)
    return aG.price < aH.price
end
local function onUnload()
    mI:Unload()
end
local function fn836()
    IngredientShopRemote:FireServer({ event_type = "request_shop_data" })
end
l4 = nil
l5 = nil
l6 = nil
l8 = nil
VariationUtility = nil
mb = nil
GridUtility = nil
mf = nil
connection2 = nil
mi = nil
ml = nil
mn = nil
mo = nil
ms = nil
Options = nil
mx = nil
mz = nil
connection = nil
mC = nil
mD = nil
mE = nil
mF = nil
mG = nil
mH = nil
mI = nil
mJ = nil
mQ = nil
mR = nil
local l7, ma, mc, me, GlobalVariables, mj, mk, mm, FloorUpgradeData, mq, mr, mt, CosmeticData, mw, my, mB, PlotServiceRemote, mL, mM, mN, mO, mP
mS = nil
mT = nil
mU = nil
mV = nil
mY = nil
mZ = nil
m_ = nil
m0 = nil
Label = nil
m3 = nil
m4 = nil
m5 = nil
m8 = nil
m9 = nil
na = nil
nc = nil
nd = nil
IngredientShopRemote = nil
nf = nil
ng = nil
ni = nil
nl = nil
local mW, mX, m1, CosmeticShopFunction, m7, nb, IngredientShopFunction, nj, nk, nr, ns, nt, nu, nv, nw, nx, ny, nz, nA, nB, nC, nD, nE
local nq_1
mW = nil
mX = nil
m1 = nil
CosmeticShopFunction = nil
m7 = nil
nb = nil
IngredientShopFunction = nil
nj = nil
nk = nil
local nF, nG, nH, MenuGroup
tE_14, nw, nj, nC, nd, m9, m5, nB, mZ, mU, nu, nt, ns, nq_1, tE_17, mC, ny, my, CosmeticData, FloorUpgradeData, mk, GlobalVariables, GridUtility, VariationUtility, l7, tE_22_1, nx, nv, IngredientShopFunction, IngredientShopRemote, nb, CosmeticShopFunction, m1, m_, mW, mS, mM, PlotServiceRemote, nr, mI, nA, nz, mz, Options, mq, mm = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local tE_7 = 172
repeat
    nD = (tE_7 * 17 + 9) % 26 + 1
    if nD <= 13 then
        if nD <= 7 then
            if nD <= 4 then
                if nD <= 2 then
                    if nD <= 1 then
                        nE = (vector.create((tE_7 * 6 + 3) % 11 + 1, (tE_7 * 5 + 1) % 13 + 1, (tE_7 * 9 + 15) % 17 + 1))
                        nF = (vector.create((tE_7 * 3 + 7) % 11 + 1, (tE_7 * 3 + 2) % 13 + 1, (tE_7 * 1 + 1) % 17 + 1))
                        nG = (vector.create((tE_7 * 1 + 1) % 5 + 1, (tE_7 * 2 + 4) % 7 + 1, (tE_7 * 2 + 2) % 9 + 1))
                        if math.abs((vector.angle(nE, nF, nG))) - math.abs((vector.angle(nF, nE, nG))) == 2 then
                            nw = nu:WaitForChild("Shared")
                        else
                            nu = nw:WaitForChild("Shared")
                        end
                        tE_7 = (tE_7 + 49) % 208
                    else
                        local u_ = bit32.rrotate(bit32.bxor(bit32.lrotate(tE_7, 13), string.byte(tostring(FloorUpgradeData))), 16)
                        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(u_, 3144364859), 1367870485), (bit32.bxor(bit32.band(u_, 1150602436), 4221475559))), 1367870485), 4221475559) == u_ then
                            nt = nu:WaitForChild("Modules")
                        else
                            nu = nt:WaitForChild("Modules")
                        end
                        tE_7 = (tE_7 + 153) % 208
                    end
                elseif nD <= 3 then
                    local us = bit32.rrotate(bit32.bxor(bit32.lrotate(tE_7, 18), string.byte(tostring(nj))), 3)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(us, 2575937333), 2350727182), (bit32.bxor(bit32.band(us, 1719029962), 3876301235))), 2350727182), 3876301235) ~= us then
                        nt = ns:WaitForChild("Data")
                    else
                        ns = nt:WaitForChild("Data")
                    end
                    tE_7 = (tE_7 + 127) % 208
                else
                    nE = { "csjfwiocagn", "juzqus", "mmojrxpng", "dzlj", "snjrdhru", "blnf", "vcaaiyaywk", "cbtwgnfryt" }
                    local ur = tE_7
                    nF = nE[ur % 8 + 1]
                    if nF:len() <= nF:reverse():rep(ur % 3 + 2):len() then
                        nq_1 = nt:WaitForChild("Utility")
                    else
                        nt = nq_1:WaitForChild("Utility")
                    end
                    tE_7 = (tE_7 + 101) % 208
                end
            elseif nD <= 6 then
                if nD <= 5 then
                    if tE_7 * 52236409 + 8 + 6 <= tE_7 * 52236409 + 8 + 6 + 5 then
                        tE_17 = nt:WaitForChild("Functions")
                    else
                        nt = tE_17:WaitForChild("Functions")
                    end
                    tE_7 = (tE_7 + 49) % 208
                else
                    if ((mC or not IngredientShopFunction) and (IngredientShopFunction and mC) or (IngredientShopFunction or mC) and (mC and IngredientShopFunction) or (IngredientShopFunction and not IngredientShopFunction or (not mC or not mC) or IngredientShopFunction and IngredientShopFunction and (IngredientShopFunction or IngredientShopFunction))) and ((IngredientShopFunction and mC or (not IngredientShopFunction or IngredientShopFunction)) and (IngredientShopFunction and not mC and (mC and IngredientShopFunction)) or (not mC or IngredientShopFunction or (IngredientShopFunction or mC)) and (not mC and mC or (not mC or not IngredientShopFunction))) or not (((mC or not IngredientShopFunction) and (IngredientShopFunction and mC) or (IngredientShopFunction or mC) and (mC and IngredientShopFunction) or (IngredientShopFunction and not IngredientShopFunction or (not mC or not mC) or IngredientShopFunction and IngredientShopFunction and (IngredientShopFunction or IngredientShopFunction))) and ((IngredientShopFunction and mC or (not IngredientShopFunction or IngredientShopFunction)) and (IngredientShopFunction and not mC and (mC and IngredientShopFunction)) or (not mC or IngredientShopFunction or (IngredientShopFunction or mC)) and (not mC and mC or (not mC or not IngredientShopFunction)))) then
                        mC = require(ns:WaitForChild("PlantData"))
                        ny = require(ns:WaitForChild("EggData"))
                    else
                        ns = require(ny:WaitForChild("PlantData"))
                        mC = require(ny:WaitForChild("EggData"))
                    end
                    tE_7 = (tE_7 + 153) % 208
                end
            else
                nE = (vector.create((tE_7 * 3 + 1) % 11 + 1, (tE_7 * 11 + 6) % 13 + 1, (tE_7 * 14 + 6) % 17 + 1))
                nF = (vector.create((tE_7 * 5 + 2) % 11 + 1, (tE_7 * 4 + 2) % 13 + 1, (tE_7 * 4 + 7) % 17 + 1))
                nG = (vector.create((tE_7 * 1 + 5) % 5 + 1, (tE_7 * 2 + 3) % 7 + 1, (tE_7 * 2 + 3) % 9 + 1))
                if math.abs((vector.angle(nE, nF, nG))) - math.abs((vector.angle(nF, nE, nG))) == 0 then
                    my = require(ns:WaitForChild("PetData"))
                    CosmeticData = require(ns:WaitForChild("CosmeticData"))
                else
                    ns = require(CosmeticData:WaitForChild("PetData"))
                    my = require(CosmeticData:WaitForChild("CosmeticData"))
                end
                tE_7 = (tE_7 + 127) % 208
            end
        elseif nD <= 10 then
            if nD <= 9 then
                if nD <= 8 then
                    nE = (vector.create((tE_7 * 1 + 9) % 11 + 1, (tE_7 * 9 + 1) % 13 + 1, (tE_7 * 15 + 10) % 17 + 1))
                    nF = (vector.create((tE_7 * 6 + 1) % 11 + 1, (tE_7 * 11 + 9) % 13 + 1, (tE_7 * 2 + 7) % 17 + 1))
                    local uN = vector.dot(nE, nF)
                    if uN * uN <= vector.dot(nE, nE) * vector.dot(nF, nF) then
                        FloorUpgradeData = require(ns:WaitForChild("FloorUpgradeData"))
                    else
                        ns = require(FloorUpgradeData:WaitForChild("FloorUpgradeData"))
                    end
                    tE_7 = (tE_7 + 101) % 208
                else
                    local vb = bit32.rrotate(bit32.bxor(bit32.lrotate(tE_7, 4), string.byte(tostring(nb))), 18)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(vb, 3567004289), 2417215562), (bit32.bxor(bit32.band(vb, 727963006), 523757744))), 2417215562), 523757744) == vb then
                        mk = require(ns:WaitForChild("FloorPriceData"))
                        GlobalVariables = require(ns:WaitForChild("GlobalVariables"))
                    else
                        ns = require(GlobalVariables:WaitForChild("FloorPriceData"))
                        mk = require(GlobalVariables:WaitForChild("GlobalVariables"))
                    end
                    tE_7 = (tE_7 + 205) % 208
                end
            else
                nE = (vector.create((tE_7 * 1 + 7) % 11 + 1, (tE_7 * 7 + 9) % 13 + 1, (tE_7 * 2 + 8) % 17 + 1))
                nF = (vector.create((tE_7 * 4 + 7) % 11 + 1, (tE_7 * 11 + 12) % 13 + 1, (tE_7 * 1 + 3) % 17 + 1))
                nG = (vector.create((tE_7 * 3 + 9) % 11 + 1, (tE_7 * 6 + 2) % 13 + 1, (tE_7 * 10 + 6) % 17 + 1))
                nH = (vector.create((tE_7 * 3 + 5) % 11 + 1, (tE_7 * 10 + 10) % 13 + 1, (tE_7 * 5 + 2) % 17 + 1))
                if vector.dot(vector.cross(nE, nF), (vector.cross(nG, nH))) == vector.dot(nE, nG) * vector.dot(nF, nH) - vector.dot(nE, nH) * vector.dot(nF, nG) + 4 then
                    l7 = require(GridUtility:WaitForChild("GridUtility"))
                    nq_1 = require(GridUtility:WaitForChild("VariationUtility"))
                    tE_17 = require(VariationUtility:WaitForChild("ResolvePlaceableTemplate"))
                else
                    GridUtility = require(nq_1:WaitForChild("GridUtility"))
                    VariationUtility = require(nq_1:WaitForChild("VariationUtility"))
                    l7 = require(tE_17:WaitForChild("ResolvePlaceableTemplate"))
                end
                tE_7 = (tE_7 + 101) % 208
            end
        elseif nD <= 12 then
            if nD <= 11 then
                nE = (vector.create((tE_7 * 6 + 7) % 11 + 1, (tE_7 * 11 + 9) % 13 + 1, (tE_7 * 13 + 3) % 17 + 1))
                nF = (vector.create((tE_7 * 7 + 9) % 11 + 1, (tE_7 * 2 + 13) % 13 + 1, (tE_7 * 12 + 16) % 17 + 1))
                nG = (vector.create((tE_7 * 6 + 4) % 11 + 1, (tE_7 * 4 + 3) % 13 + 1, (tE_7 * 13 + 8) % 17 + 1))
                if vector.dot(vector.cross(nE, nF), nG) == vector.dot(vector.cross(nF, nG), nE) then
                    tE_22_1 = nw:WaitForChild("Remotes")
                else
                    nw = tE_22_1:WaitForChild("Remotes")
                end
                tE_7 = (tE_7 + 127) % 208
            else
                local uv = bit32.rrotate(bit32.bxor(bit32.lrotate(tE_7, 24), string.byte(tostring(tE_22_1))), 27)
                if bit32.bxor(bit32.lrotate(bit32.bxor(uv, 2789495754), 2), 2568048426) == bit32.lrotate(uv, 2) then
                    nx = tE_22_1:WaitForChild("Events")
                else
                    tE_22_1 = nx:WaitForChild("Events")
                end
                tE_7 = (tE_7 + 23) % 208
            end
        else
            if (tE_7 * 1 + 5) * 21 % 4 == ((tE_7 * 1 + 5) * 21 + 4) % 4 then
                nv = tE_22_1:WaitForChild("Functions")
            else
                tE_22_1 = nv:WaitForChild("Functions")
            end
            tE_7 = (tE_7 + 153) % 208
        end
    elseif nD <= 20 then
        if nD <= 17 then
            if nD <= 15 then
                if nD <= 14 then
                    if tE_7 * 71033105 + 5 + 1 <= tE_7 * 71033105 + 5 + 1 + 1 then
                        IngredientShopFunction = nv:WaitForChild("IngredientShopFunction")
                        IngredientShopRemote = nx:WaitForChild("IngredientShopRemote")
                    else
                        nv = IngredientShopFunction:WaitForChild("IngredientShopFunction")
                        nx = IngredientShopRemote:WaitForChild("IngredientShopRemote")
                    end
                    tE_7 = (tE_7 + 179) % 208
                else
                    nE = {
                        "rpygaxaakm",
                        "pvhdtofnl",
                        "rthlsbuuwbr",
                        "fxlyoy",
                        "qpccly",
                        "kquvnbuqfln",
                        "dfjshmnzux",
                        "yuhikdhn",
                        "qdnsmaj",
                        "qjk",
                        "swoetf"
                    }
                    local uy = tE_7
                    nF = nE[uy % 11 + 1]
                    if nF:len() <= nF:gsub("(.)", "%1%1", uy % 3 % 2 + 1):len() then
                        nb = nv:WaitForChild("PetShopFunction")
                        CosmeticShopFunction = nv:WaitForChild("CosmeticShopFunction")
                        m1 = nv:WaitForChild("SellServiceRemoteFunction")
                    else
                        nv = CosmeticShopFunction:WaitForChild("PetShopFunction")
                        m1 = CosmeticShopFunction:WaitForChild("CosmeticShopFunction")
                        nb = CosmeticShopFunction:WaitForChild("SellServiceRemoteFunction")
                    end
                    tE_7 = (tE_7 + 75) % 208
                end
            elseif nD <= 16 then
                nE = (vector.create((tE_7 * 5 + 7) % 11 + 1, (tE_7 * 11 + 5) % 13 + 1, (tE_7 * 8 + 1) % 17 + 1))
                nF = (vector.create((tE_7 * 2 + 7) % 11 + 1, (tE_7 * 8 + 6) % 13 + 1, (tE_7 * 14 + 13) % 17 + 1))
                nG = (vector.create((tE_7 * 3 + 6) % 11 + 1, (tE_7 * 4 + 4) % 13 + 1, (tE_7 * 3 + 2) % 17 + 1))
                nH = (vector.create((tE_7 * 5 + 4) % 11 + 1, (tE_7 * 10 + 2) % 13 + 1, (tE_7 * 4 + 9) % 17 + 1))
                if vector.dot(vector.cross(nE, nF), (vector.cross(nG, nH))) == vector.dot(nE, nG) * vector.dot(nF, nH) - vector.dot(nE, nH) * vector.dot(nF, nG) then
                    m_ = nx:WaitForChild("GridPlacementRemoteEvent")
                    mW = nx:WaitForChild("FruitCollectionRemote")
                    mS = nx:WaitForChild("CrateStackRemote")
                else
                    nx = mW:WaitForChild("GridPlacementRemoteEvent")
                    mS = mW:WaitForChild("FruitCollectionRemote")
                    m_ = mW:WaitForChild("CrateStackRemote")
                end
                tE_7 = (tE_7 + 49) % 208
            else
                nE = { "bvve", "mlq", "hexfydhp", "srvbpzsf", "ytpzzpeuge", "qujwzvm", "dabf", "wwztvrbzat" }
                local ve = tE_7
                nF = nE[ve % 8 + 1]
                if nF:len() <= nF:reverse():rep(ve % 3 + 2):len() then
                    mM = nx:WaitForChild("FloorUpgradeRemote")
                    PlotServiceRemote = nx:WaitForChild("PlotServiceRemote")
                else
                    nx = PlotServiceRemote:WaitForChild("FloorUpgradeRemote")
                    mM = PlotServiceRemote:WaitForChild("PlotServiceRemote")
                end
                tE_7 = (tE_7 + 23) % 208
            end
        elseif nD <= 19 then
            if nD <= 18 then
                nE = (vector.create((tE_7 * 4 + 6) % 11 + 1, (tE_7 * 8 + 12) % 13 + 1, (tE_7 * 2 + 3) % 17 + 1))
                nF = (vector.create((tE_7 * 3 + 1) % 11 + 1, (tE_7 * 4 + 11) % 13 + 1, (tE_7 * 15 + 11) % 17 + 1))
                nG = (vector.create((tE_7 * 1 + 1) % 5 + 1, (tE_7 * 5 + 5) % 7 + 1, (tE_7 * 3 + 7) % 9 + 1))
                if math.abs((vector.angle(nE, nF, nG))) - math.abs((vector.angle(nF, nE, nG))) == 0 then
                    nr = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                else
                    nx = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                end
                tE_7 = (tE_7 + 101) % 208
            else
                nE = (vector.create((tE_7 * 7 + 7) % 11 + 1, (tE_7 * 10 + 2) % 13 + 1, (tE_7 * 7 + 11) % 17 + 1))
                nF = (vector.create((tE_7 * 2 + 1) % 11 + 1, (tE_7 * 7 + 7) % 13 + 1, (tE_7 * 4 + 8) % 17 + 1))
                nG = (vector.create((tE_7 * 1 + 1) % 5 + 1, (tE_7 * 2 + 6) % 7 + 1, (tE_7 * 5 + 4) % 9 + 1))
                if math.abs((vector.angle(nE, nF, nG))) - math.abs((vector.angle(nF, nE, nG))) == 0 then
                    mI = loadstring(game:HttpGet(nr .. "Library.lua"))()
                    nA = loadstring(game:HttpGet(nr .. "addons/ThemeManager.lua"))()
                    nz = loadstring(game:HttpGet(nr .. "addons/SaveManager.lua"))()
                    mz = mI.Toggles
                    Options = mI.Options
                else
                    nz = loadstring(game:HttpGet(Options .. "Library.lua"))()
                    nr = loadstring(game:HttpGet(Options .. "addons/ThemeManager.lua"))()
                    nA = loadstring(game:HttpGet(Options .. "addons/SaveManager.lua"))()
                    mI = nz.Toggles
                    mz = nz.Options
                end
                tE_7 = (tE_7 + 153) % 208
            end
        else
            nE = {
                "hwxcdkgr",
                "iuelfkywwvy",
                "yjsdgydafjj",
                "hgnioxzw",
                "uwxylqr",
                "kgdbcb",
                "ikjpgcnj",
                "vnkofhotk",
                "wwxxl",
                "ukdffmuff"
            }
            local ui = tE_7
            nF = nE[ui % 10 + 1]
            if nF:len() <= nF:gsub("(.)", "%1%1", ui % 3 % 2 + 1):len() then
                mq = {}
            else
                nd = {}
            end
            tE_7 = (tE_7 + 75) % 208
        end
    elseif nD <= 23 then
        if nD <= 22 then
            if nD <= 21 then
                nE = { "eyoinkqtabh", "cvgccocs", "iacjeas", "mbgg", "cbjffiqkif", "axkfqwbec", "xmevfzms" }
                local vc = tE_7
                nF = nE[vc % 7 + 1]
                if nF:len() >= nF:reverse():rep(vc % 3 + 2):len() then
                    mC = {}
                else
                    mm = {}
                end
                tE_7 = (tE_7 + 101) % 208
            else
                if (tE_7 * 2 + 9) * 16 % 3 == ((tE_7 * 2 + 9) * 16 + 3) % 3 then
                    tE_14 = game:GetService("Players")
                else
                    mI = game:GetService("Players")
                end
                tE_7 = (tE_7 + 75) % 208
            end
        else
            nE = (vector.create((tE_7 * 7 + 3) % 11 + 1, (tE_7 * 9 + 6) % 13 + 1, (tE_7 * 1 + 5) % 17 + 1))
            nF = (vector.create((tE_7 * 5 + 5) % 11 + 1, (tE_7 * 4 + 5) % 13 + 1, (tE_7 * 14 + 1) % 17 + 1))
            local uK = vector.cross(nE, nF)
            local uL = vector.dot(nE, nF)
            if vector.dot(uK, uK) + uL * uL == vector.dot(nE, nE) * vector.dot(nF, nF) + 4 then
                ny = game:GetService("ReplicatedStorage")
            else
                nw = game:GetService("ReplicatedStorage")
            end
            tE_7 = (tE_7 + 49) % 208
        end
    elseif nD <= 25 then
        if nD <= 24 then
            nD = {
                "ioiyhuig",
                "gaiqirhilf",
                "qnpwvwlqalxx",
                "xhlkzamrqh",
                "abrez",
                "hdcfnria",
                "mewx",
                "uelsro",
                "ivgt",
                "suq",
                "bdfcqpii",
                "jzkgxcogftj",
                "brtueewrsj",
                "zwqehmgpqjjv",
                "rilranvhdnkl",
                "gzuclpodwps"
            }
            if nD[(tE_7 * 45 + 73) % 16 + 1] <= nD[(tE_7 * 45 + 73) % 16 + 1] then
                nj = game:GetService("CollectionService")
                nC = game:GetService("UserInputService")
                nd = game:GetService("VirtualUser")
                m9 = game:GetService("Workspace")
            else
                m9 = game:GetService("CollectionService")
                nd = game:GetService("UserInputService")
                nj = game:GetService("VirtualUser")
                nC = game:GetService("Workspace")
            end
            tE_7 = (tE_7 + 23) % 208
        else
            nD = (vector.create((tE_7 * 4 + 9) % 11 + 1, (tE_7 * 11 + 13) % 13 + 1, (tE_7 * 9 + 12) % 17 + 1))
            nE = (vector.create((tE_7 * 3 + 1) % 11 + 1, (tE_7 * 3 + 6) % 13 + 1, (tE_7 * 9 + 13) % 17 + 1))
            nF = (vector.create((tE_7 * 1 + 3) % 11 + 1, (tE_7 * 6 + 10) % 13 + 1, (tE_7 * 3 + 3) % 17 + 1))
            nG = (vector.create((tE_7 * 4 + 2) % 5 + 1, (tE_7 * 4 + 3) % 7 + 1, (tE_7 * 2 + 2) % 9 + 1))
            if vector.dot(vector.cross(nD, (vector.cross(nE, nF))), nG) == vector.dot(nE * vector.dot(nD, nF) - nF * vector.dot(nD, nE), nG) then
                m5 = tE_14.LocalPlayer
                nB = "Build a Garden Tower"
                mZ = "https://discord.gg/ehKVq7pf7v"
            else
                tE_14 = m5.LocalPlayer
                mZ = "Build a Garden Tower"
                nB = "https://discord.gg/ehKVq7pf7v"
            end
            tE_7 = (tE_7 + 205) % 208
        end
    else
        nD = (vector.create((tE_7 * 4 + 3) % 11 + 1, (tE_7 * 5 + 4) % 13 + 1, (tE_7 * 3 + 9) % 17 + 1))
        nE = (vector.create((tE_7 * 5 + 5) % 11 + 1, (tE_7 * 10 + 2) % 13 + 1, (tE_7 * 11 + 5) % 17 + 1))
        nF = (vector.create((tE_7 * 6 + 4) % 11 + 1, (tE_7 * 11 + 12) % 13 + 1, (tE_7 * 15 + 4) % 17 + 1))
        nG = (vector.create((tE_7 * 3 + 5) % 5 + 1, (tE_7 * 1 + 3) % 7 + 1, (tE_7 * 3 + 7) % 9 + 1))
        if vector.dot(vector.cross(nD, (vector.cross(nE, nF))), nG) == vector.dot(nE * vector.dot(nD, nF) - nF * vector.dot(nD, nE), nG) then
            mU = "https://rscripts.net/@Ouroboros"
        else
            mW = "https://rscripts.net/@Ouroboros"
        end
        tE_7 = (tE_7 + 127) % 208
    end
until (tE_7 * 119 + 141) % 208 == 17
nD = {}
for k, v in pairs(mC) do
    tE_14 = typeof(v) == "table" and v.buy_price
    if tE_14 then
        local tE_22_2 = v.metadata
        if tE_22_2 then
            tE_7 = v.metadata.event or v.metadata.isRobux
            tE_22_2 = tE_7
        end
        tE_14 = not tE_22_2
    end
    if tE_14 then
        tE_14 = table.insert
        local tE_22_3 = v.buy_price
        tE_7 = v.rarity and v.rarity.order
        tE_17 = tE_7 or 0
        tE_14(nD, { name = k, price = tE_22_3, order = tE_17 })
    end
end
local tE_22_4 = 0
repeat
    tE_14 = {
        "oxvnqyasq",
        "jknjjnppbmm",
        "pnmtklkrg",
        "ywvfbmlxcvl",
        "luaiy",
        "zhtzpghbynu",
        "hqbofemdj",
        "nmcxcgt",
        "yhnhtmv"
    }
    local va = tE_22_4
    tE_7 = tE_14[va % 9 + 1]
    if tE_7:len() >= tE_7:reverse():rep(va % 3 + 2):len() then
        table.sort(nD, fn541)
    else
        table.sort(nD, fn541)
    end
    tE_22_4 = (tE_22_4 + 3) % 4
until (tE_22_4 * 1 + 3) % 4 == 2
for i, v in ipairs(nD) do
    table.insert(mq, v.name)
    mm[v.name] = v.price
end
mL = {}
mN = {}
tE_14 = {}
for k, v in pairs(ny) do
    local tE_22_5 = typeof(v) == "table" and v.Price
    if tE_22_5 then
        table.insert(tE_14, { name = k, price = v.Price })
    end
end
local tE_22_6 = 6
repeat
    tE_7 = {
        "epnoc",
        "ryko",
        "pnvfctzjnlgw",
        "arxeraobzf",
        "ajphzrhanh",
        "ehjrfdboiyr",
        "bbxzlt",
        "aaxcuahef",
        "cmyfo",
        "qhw",
        "skibcpgvbi",
        "lpey",
        "fbmrxv",
        "gqqcpiguv",
        "khhe"
    }
    if tE_7[(tE_22_6 * 5 + 24) % 15 + 1] < tE_7[(tE_22_6 * 5 + 24) % 15 + 1] then
        table.sort(tE_14, fn102)
    else
        table.sort(tE_14, fn102)
    end
    tE_22_6 = (tE_22_6 + 6) % 8
until (tE_22_6 * 5 + 1) % 8 == 5
for i, v in ipairs(tE_14) do
    table.insert(mN, v.name)
    mL[v.name] = v.price
end
me = {}
mj = {}
tE_14 = {}
for k, v in pairs(CosmeticData) do
    local tE_22_7 = typeof(v) == "table" and v.buy_price
    if tE_22_7 then
        table.insert(tE_14, { name = k, price = v.buy_price })
    end
end
table.sort(tE_14, fn795)
for i, v in ipairs(tE_14) do
    table.insert(mj, v.name)
    me[v.name] = v.price
end
m7 = {}
tE_14 = { "harvest", "growth", "double", "pet_slot" }
tE_14 = FloorUpgradeData.row_order or tE_14
for i, v in ipairs(tE_14) do
    tE_14 = FloorUpgradeData.upgrades[v]
    if tE_14 then
        table.insert(m7, tE_14.display)
    end
end
mO = {}
for k, v in pairs(FloorUpgradeData.upgrades) do
    mO[v.display] = k
end
m3, ml, mE, ms, mf, l5, mY, mF, mn, l8, m4, mT, mH, mt, mc, nk, na, mV, mD, mi, mB, mr, ni, mX, ma, mP, mw, mG, mR, l6, nf, nl, ng, mx, mb, mo = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
nr = { "Highest Market Price", "Closest", "Random" }
mE = fn493
ms = fn363
mf = fn132
l5 = fn147
tE_17 = "#7fd47f"
nt = "#6ec1ff"
m3 = "#e8a34d"
ns = "#8b93a3"
mY = fn23
mF = fn356
mn = fn200
l8 = fn53
if (false and not mi or false and not mi) and ((not mi or nr) and (mi or false)) or (not mi or nr or nr and nr) and (nr or nr or false) or not ((false and not mi or false and not mi) and ((not mi or nr) and (mi or false)) or (not mi or nr or nr and nr) and (nr or nr or false)) then
    m4 = fn608
    mT = fn160
else
    mT = fn608
    m4 = fn160
end
mH = fn334
mt = fn40
mc = fn666
nk = fn742
na = fn758
mV = fn690
mD = fn350
ml = {}
mi = fn688
m_.OnClientEvent:Connect(onOnClientEvent)
mB = fn424
mB()
mr = function(cy)
    local p9_1
    local p8 = VariationUtility.parseName(cy)
    local p8_1
    local p7 = l7(p8)
    if not p7 then
        return Vector3.new(4, 0.1, 4)
    elseif p7:IsA("BasePart") then
        return p7.Size
    elseif p7.PrimaryPart then
        return p7.PrimaryPart.Size
    else
        p8_1, p9_1 = pcall(function()
            return p7:GetExtentsSize()
        end)
        if p8_1 and p9_1 then
            return Vector3.new(p9_1.X, 0.1, p9_1.Z)
        end
        return Vector3.new(4, 0.1, 4)
    end
end
if (not mP and l8 or mP and not l8) and (mP and l8 or (l8 or l8)) and ((l8 or mP or not mP and not mP) and ((not l8 or not mP) and (not l8 or l8))) or not ((not mP and l8 or mP and not l8) and (mP and l8 or (l8 or l8)) and ((l8 or mP or not mP and not mP) and ((not l8 or not mP) and (not l8 or l8)))) then
    ni = fn525
    mX = fn549
else
    mX = fn525
    ni = fn549
end
ma = fn194
mP = fn139
mw = function(dk, dl)
    local q2 = mF("CollectPriority", "Highest Market Price")
    if q2 == "Random" then
        local q8 = #dk
        local q7 = -1
        while false and q8 <= 2 or true and q8 >= 2 do
            local q9 = q8
            local q3_1 = math.random(q9)
            dk[q9], dk[q3_1] = dk[q3_1], dk[q9]
            q8 += q7
        end
        return
    end
    if q2 == "Closest" then
        table.sort(dk, function(dr, ds)
            local base2 = dr:FindFirstChild("base")
            local base = ds:FindFirstChild("base")
            local qX = base2 and base2.Position
            local qV_1 = qX or dr:GetPivot().Position
            local qX_1 = base
            if qX_1 then
                qX_1 = base.Position
            end
            local qV_2 = qX_1 or ds:GetPivot().Position
            return (qV_1 - dl.Position).Magnitude < (qV_2 - dl.Position).Magnitude
        end)
        return
    end
    table.sort(dk, function(dC, dD)
        return mP(dC) > mP(dD)
    end)
end
mG = function()
    local rb = mH()
    if not rb then
        return
    end
    local rc = {}
    for k, v in nj:GetTagged("plant") do
        local rd_1 = v:GetAttribute("OwnerUserId") == m5.UserId and v:GetAttribute("Ripe") == true
        if rd_1 then
            table.insert(rc, v)
        end
    end
    if #rc == 0 then
        return
    end
    mw(rc, rb)
    for i, v in ipairs(rc) do
        local rq = v
        local rc_1 = mI.Unloaded or not mY("AutoCollectPlants")
        if rc_1 then
            return
        end
        local base = rq:FindFirstChild("base")
        local rd_2 = base and base:IsA("BasePart")
        if rd_2 then
            rb.CFrame = base.CFrame + Vector3.new(0, 3, 0)
            task.wait(0.12)
            pcall(function()
                mW:FireServer(rq)
            end)
            task.wait(mn("CollectPlantsDelay", 0.35))
        end
    end
end
mR = fn206
l6 = function()
    local rz = mt()
    if rz then
        rz:UnequipTools()
    end
    local rz_1 = mY("SellSeeds")
    local rA = mY("SellPets")
    local rB = mY("SellCosmetics")
    if not (rz_1 or rA or rB) then
        pcall(function()
            m1:InvokeServer({})
        end)
        return
    end
    local Backpack = m5:FindFirstChild("Backpack")
    if not Backpack then
        return
    end
    for i, child in Backpack:GetChildren() do
        local rO = child
        local rC_2 = mI.Unloaded or not mY("AutoSell")
        if rC_2 then
            return
        end
        local rC_3 = rO:IsA("Tool") and rO.Name ~= "Edit Tool" and rO.Name ~= "SpeedCoil"
        if rC_3 then
            local rC_4 = VariationUtility.parseName(rO.Name)
            local rD_1 = mC[rC_4] ~= nil
            local rE = my[rC_4] ~= nil
            local rF = CosmeticData[rC_4] ~= nil
            local attr = rO:GetAttribute("placeable")
            local rG = false
            local rH = attr == true
            if rD_1 and rz_1 then
                if rH then
                    rG = mY("SellPlaceableSeeds")
                else
                    rG = true
                end
            else
                if rE and rA then
                    rG = true
                else
                    if rF and rB then
                        rG = true
                    end
                end
            end
            if rG then
                local floor = math.floor
                local rD_2 = rO:GetAttribute("Count") or 1
                local ry = floor(rD_2)
                if ry > 0 then
                    pcall(function()
                        m1:InvokeServer({ to_sell = { name = rO.Name, count = ry } })
                    end)
                    task.wait(0.2)
                end
            end
        end
    end
end
nf = function()
    if na() then
        return
    end
    local rQ = mn("BuySeedsMinCash", 0)
    for i, v in ipairs(mq) do
        local result
        local rZ = v
        local rR = mI.Unloaded or not mY("AutoBuySeeds")
        if rR then
            return
        end
        if mT("BuySeedsList", rZ) then
            local rR_1 = mm[rZ] or 0
            local rR_2 = mc() - rR_1 >= rQ and mc() >= rR_1
            if rR_2 then
                result = nil
                pcall(function()
                    result = IngredientShopFunction:InvokeServer({ event_type = "purchase", plant = rZ })
                end)
                if result and result.success then
                    task.wait(mn("BuySeedsDelay", 0.4))
                else
                    if result and result.no_cash then
                        return
                    end
                    task.wait(0.15)
                end
            end
        end
    end
end
nl = function()
    local r3_1
    local r2_1
    if na() then
        return
    end
    local r0 = mV()
    if not r0 then
        return
    end
    local Parking = r0:FindFirstChild("Parking")
    if not Parking then
        return
    end
    local r0_1 = mt()
    if not r0_1 then
        return
    end
    mB()
    task.wait(0.2)
    r2_1, r3_1 = mX("PlaceSeedsList")
    if not r2_1 then
        return
    end
    r0_1:EquipTool(r2_1)
    task.wait(0.2)
    local r0_2 = mr(r3_1)
    local r2_2 = nk()
    for i = 1, r2_2 do
        local r8 = i
        local r2_3 = mI.Unloaded or not mY("AutoPlaceSeeds")
        if r2_3 then
            return
        end
        local r2_4 = Parking:FindFirstChild("grid_" .. r8)
        local r3_2 = r2_4 and r2_4:IsA("BasePart")
        if r3_2 then
            local r_ = ma(r2_4, r8, r0_2)
            if r_ then
                pcall(function()
                    m_:FireServer({ eventType = "requestPlacement", floorIndex = r8, rotation = 0, position = r_ })
                end)
                task.wait(mn("PlaceSeedsDelay", 0.35))
                return
            end
        end
    end
end
ng = function()
    local r9
    r9 = nk() + 1
    if r9 > (GlobalVariables.MAX_FLOORS or 4) then
        return
    end
    local sa_1 = mk[r9]
    if not sa_1 then
        return
    end
    local sb = sa_1.currency
    local si = if sb then 1 else 0
    local sg = 1759 * si + 2702 * (1 - si)
    local sh = 3224 * si + 3977 * (1 - si)
    if not ((sg * 1753 + sh * 3699 + sg * sh) % 16777213 == 3902906) then
        sb = "Cash"
    end
    local sc = sb
    local player_info = m5:FindFirstChild("player_info")
    local sd = player_info
    if sd then
        local se = player_info:GetAttribute(sc) or 0
        sd = se
    end
    if (sd or 0) < sa_1.price then
        return
    end
    pcall(function()
        PlotServiceRemote:FireServer({ event_type = "buy_floor", floor_level = r9 })
    end)
end
mx = function()
    local sk = mV()
    if not sk then
        return
    end
    local Details = sk:FindFirstChild("Details")
    if not Details then
        return
    end
    local sk_1 = mn("FloorUpgradesMinCash", 0)
    local sm = nk()
    for i = 1, sm do
        local su = i
        local sm_1 = Details:FindFirstChild("floor" .. su)
        if sm_1 then
            for i, v in ipairs(m7) do
                local sn = mI.Unloaded or not mY("AutoBuyFloorUpgrades")
                if sn then
                    return
                end
                if mT("FloorUpgradeList", v) then
                    local sj = mO[v]
                    local sn_1 = sj and FloorUpgradeData.upgrades[sj]
                    if sn_1 then
                        local sn_2 = sm_1:GetAttribute("upgrade_" .. sj) or 0
                        if sn_2 < sn_1.max_level then
                            local sn_3 = FloorUpgradeData.price(su, sn_2)
                            local so_1 = mc() - sn_3 >= sk_1 and mc() >= sn_3
                            if so_1 then
                                pcall(function()
                                    mM:FireServer({ event_type = "buy", floor = su, upgrade = sj })
                                end)
                                task.wait(mn("FloorUpgradesDelay", 0.35))
                            end
                        end
                    end
                end
            end
        end
    end
end
mb = function()
    if na() then
        return
    end
    local sC = mn("BuyPetsMinCash", 0)
    for i, v in ipairs(mN) do
        local result
        local sL = v
        local sD = mI.Unloaded or not mY("AutoBuyPets")
        if sD then
            return
        end
        if mT("BuyPetsList", sL) then
            local sD_1 = mL[sL] or 0
            local sD_2 = mc() - sD_1 >= sC and mc() >= sD_1
            if sD_2 then
                result = nil
                pcall(function()
                    result = nb:InvokeServer({ event_type = "purchase", egg = sL })
                end)
                if result and result.success then
                    task.wait(mn("BuyPetsDelay", 0.45))
                else
                    if result and result.no_cash then
                        return
                    end
                    task.wait(0.15)
                end
            end
        end
    end
end
mo = function()
    if na() then
        return
    end
    local sN = mn("BuyCosmeticsMinCash", 0)
    for i, v in ipairs(mj) do
        local result
        local sW = v
        local sO = mI.Unloaded or not mY("AutoBuyCosmetics")
        if sO then
            return
        end
        if mT("BuyCosmeticsList", sW) then
            local sO_1 = me[sW] or 0
            local sO_2 = mc() - sO_1 >= sN and mc() >= sO_1
            if sO_2 then
                result = nil
                pcall(function()
                    result = CosmeticShopFunction:InvokeServer({ event_type = "purchase", cosmetic = sW })
                end)
                if result and result.success then
                    task.wait(mn("BuyCosmeticsDelay", 0.45))
                else
                    if result and result.no_cash then
                        return
                    end
                    task.wait(0.15)
                end
            end
        end
    end
end
pcall(fn836)
tE_14 = mI:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = mZ, Copyable = true }, "|", nB },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local nq_2 = {
    Info = tE_14:AddTab("Info", "info"),
    Main = tE_14:AddTab("Main", "sprout"),
    Settings = tE_14:AddTab("Settings", "settings")
}
nq_2.Farm = nq_2.Main:AddSubTab("Farm", "wheat")
nq_2.Shop = nq_2.Main:AddSubTab("Shop", "shopping-cart")
nq_2.Floors = nq_2.Main:AddSubTab("Floors", "layers")
tE_7 = fn136
for k, v in nq_2 do
    if v ~= nq_2.Main then
        tE_7(v)
    end
end
l4, tE_22_9, nv, Label, m0, nu = nil, nil, nil, nil, nil, nil
tE_14 = 12
repeat
    tE_7 = (tE_14 * 2 + 0) % 3 + 1
    if tE_7 <= 2 then
        if tE_7 <= 1 then
            tE_7 = (vector.create((tE_14 * 2 + 1) % 11 + 1, (tE_14 * 10 + 8) % 13 + 1, (tE_14 * 3 + 5) % 17 + 1))
            nw = (vector.create((tE_14 * 2 + 3) % 11 + 1, (tE_14 * 5 + 5) % 13 + 1, (tE_14 * 9 + 8) % 17 + 1))
            nx = (vector.create((tE_14 * 2 + 1) % 11 + 1, (tE_14 * 5 + 10) % 13 + 1, (tE_14 * 1 + 11) % 17 + 1))
            if vector.dot(vector.cross(tE_7, nw), nx) == vector.dot(vector.cross(nw, nx), tE_7) + 3 then
                tE_17 = "Unknown"
                pcall(fn461)
                mf = Label.Info:AddLeftGroupbox("Account", "circle-user")
                mf:AddLabel(nq_2("User", l5.Name, tE_22_9), true)
                mf:AddLabel(nq_2("Status", "Keyless", tE_22_9), true)
                mf:AddLabel(nq_2("Executor", "Unknown", tE_22_9), true)
                m3 = Label.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                m3:AddLabel(nB(nv .. " [" .. tostring(game.PlaceId) .. "]", l4), true)
                m3:AddLabel(nq_2("Place ID", tostring(game.PlaceId), l4), true)
                m5 = m3:AddLabel(nq_2("Session time", "0s", nt), true)
            else
                l4 = "Unknown"
                pcall(fn461)
                tE_22_9 = nq_2.Info:AddLeftGroupbox("Account", "circle-user")
                tE_22_9:AddLabel(l5("User", m5.Name, tE_17), true)
                tE_22_9:AddLabel(l5("Status", "Keyless", tE_17), true)
                tE_22_9:AddLabel(l5("Executor", l4, tE_17), true)
                nv = nq_2.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                nv:AddLabel(mf(nB .. " [" .. tostring(game.PlaceId) .. "]", nt), true)
                nv:AddLabel(l5("Place ID", tostring(game.PlaceId), nt), true)
                Label = nv:AddLabel(l5("Session time", "0s", m3), true)
            end
            tE_14 = (tE_14 + 17) % 24
        else
            tE_7 = (vector.create((tE_14 * 4 + 4) % 11 + 1, (tE_14 * 10 + 10) % 13 + 1, (tE_14 * 11 + 2) % 17 + 1))
            nw = (vector.create((tE_14 * 6 + 5) % 11 + 1, (tE_14 * 8 + 3) % 13 + 1, (tE_14 * 15 + 14) % 17 + 1))
            nx = (vector.create((tE_14 * 2 + 6) % 11 + 1, (tE_14 * 2 + 11) % 13 + 1, (tE_14 * 14 + 14) % 17 + 1))
            if vector.dot(vector.cross(tE_7, nw), nx) == vector.dot(vector.cross(nw, nx), tE_7) + 3 then
                nu = tostring(game.JobId)
            else
                m0 = tostring(game.JobId)
            end
            tE_14 = (tE_14 + 5) % 24
        end
    else
        if (tE_14 * 3 + 1) * 13 % 4 == ((tE_14 * 3 + 1) * 13 + 4) % 4 then
            nu = #m0 > 18
        else
            m0 = #nu > 18
        end
        tE_14 = (tE_14 + 14) % 24
    end
until (tE_14 * 11 + 10) % 24 == 10
if nu then
    tE_14 = 3
    repeat
        local uc = bit32.rrotate(bit32.bxor(bit32.lrotate(tE_14, 20), string.byte(tostring(tE_14))), 14)
        if bit32.bxor(bit32.lrotate(bit32.bxor(uc, 332912666), 14), 4127622389) == bit32.lrotate(uc, 14) then
            nu = string.sub(m0, 1, 18) .. "..."
        else
            m0 = string.sub(nu, 1, 18) .. "..."
        end
        tE_14 = (tE_14 + 7) % 8
    until (tE_14 * 1 + 4) % 8 == 6
end
tE_14 = nu or m0
mJ, MenuGroup, nc, m8, connection, connection2, mQ = nil, nil, nil, nil, nil, nil, nil
nx = tE_14
nv:AddLabel(l5("Server", nx, ns), true)
nv:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
mJ = os.clock()
task.spawn(worker)
tE_17 = nq_2.Info:AddRightGroupbox("Scripts", "package")
tE_17:AddLabel(mf("Included in this hub", ns), true)
tE_17:AddLabel(mf(nB, nt), true)
tE_7 = nq_2.Info:AddRightGroupbox("Features", "list")
tE_7:AddLabel(mf("Auto Farm", nt), true)
tE_7:AddLabel(mf("Auto Shop", m3), true)
tE_7:AddLabel(mf("Floor Upgrades", ns), true)
local tE_22_10 = nq_2.Info:AddRightGroupbox("Socials", "link")
tE_22_10:AddButton({ Text = "Discord", Func = ms })
tE_22_10:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = nq_2.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = ms })
local FaqGroup = nq_2.Info:AddRightGroupbox("FAQ", "circle-help")
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
local CollectGroup = nq_2.Farm:AddLeftGroupbox("Collect", "hand")
CollectGroup:AddToggle("AutoCollectPlants", { Text = "Auto Collect Placed Plants", Default = false })
CollectGroup:AddDropdown("CollectPriority", { Values = nr, Default = 1, Text = "Collect Priority" })
CollectGroup:AddSlider("CollectPlantsDelay", { Text = "Collect Delay", Default = 0.35, Min = 0.1, Max = 2, Rounding = 2 })
CollectGroup:AddToggle("AutoCollectCrates", { Text = "Auto Collect Crates", Default = false })
CollectGroup:AddSlider("CollectCratesDelay", { Text = "Crate Delay", Default = 0.75, Min = 0.2, Max = 5, Rounding = 2 })
nH = nq_2.Farm:AddLeftGroupbox("Place", "shovel")
nH:AddToggle("AutoPlaceSeeds", { Text = "Auto Place Seeds", Default = false })
nH:AddDropdown("PlaceSeedsList", { Values = mq, Multi = true, Searchable = true, AllowNull = true, Text = "Seeds", Default = {} })
nH:AddSlider("PlaceSeedsDelay", { Text = "Place Delay", Default = 0.35, Min = 0.1, Max = 2, Rounding = 2 })
nG = nq_2.Farm:AddRightGroupbox("Sell", "badge-dollar-sign")
nG:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
nG:AddToggle("SellSeeds", { Text = "Sell Plants", Default = true })
nG:AddToggle("SellPlaceableSeeds", { Text = "Sell Placeable Seeds", Default = false })
nG:AddToggle("SellPets", { Text = "Sell Pets", Default = false })
nG:AddToggle("SellCosmetics", { Text = "Sell Cosmetics", Default = false })
nG:AddSlider("SellDelay", { Text = "Sell Delay", Default = 1, Min = 0.25, Max = 10, Rounding = 2 })
nF = nq_2.Shop:AddLeftGroupbox("Seeds", "sprout")
nF:AddToggle("AutoBuySeeds", { Text = "Auto Buy Seeds", Default = false })
nF:AddDropdown("BuySeedsList", { Values = mq, Multi = true, Searchable = true, AllowNull = true, Text = "Seeds", Default = {} })
nF:AddSlider("BuySeedsDelay", { Text = "Buy Delay", Default = 0.4, Min = 0.1, Max = 3, Rounding = 2 })
nF:AddSlider("BuySeedsMinCash", { Text = "Min Cash", Default = 0, Min = 0, Max = 100000000, Rounding = 0, Compact = true })
nE = nq_2.Shop:AddLeftGroupbox("Pets", "paw-print")
nE:AddToggle("AutoBuyPets", { Text = "Auto Buy Pets", Default = false })
nE:AddDropdown("BuyPetsList", { Values = mN, Multi = true, Searchable = true, AllowNull = true, Text = "Eggs", Default = {} })
nE:AddSlider("BuyPetsDelay", { Text = "Buy Delay", Default = 0.45, Min = 0.1, Max = 3, Rounding = 2 })
nE:AddSlider("BuyPetsMinCash", { Text = "Min Cash", Default = 0, Min = 0, Max = 100000000, Rounding = 0, Compact = true })
nD = nq_2.Shop:AddRightGroupbox("Cosmetics", "sparkles")
nD:AddToggle("AutoBuyCosmetics", { Text = "Auto Buy Cosmetics", Default = false })
nD:AddDropdown("BuyCosmeticsList", { Values = mj, Multi = true, Searchable = true, AllowNull = true, Text = "Cosmetics", Default = {} })
nD:AddSlider("BuyCosmeticsDelay", { Text = "Buy Delay", Default = 0.45, Min = 0.1, Max = 3, Rounding = 2 })
nD:AddSlider("BuyCosmeticsMinCash", { Text = "Min Cash", Default = 0, Min = 0, Max = 100000000, Rounding = 0, Compact = true })
ny = nq_2.Floors:AddLeftGroupbox("Floor", "building-2")
ny:AddToggle("AutoUpgradeFloor", { Text = "Auto Upgrade Floor", Default = false })
ny:AddSlider("UpgradeFloorDelay", { Text = "Upgrade Delay", Default = 2, Min = 0.5, Max = 15, Rounding = 2 })
nw = nq_2.Floors:AddRightGroupbox("Upgrades", "arrow-big-up")
if nw and mJ and (not OuroborosHubGroup or not mJ) and ((not OuroborosHubGroup or mJ) and (mJ or CollectGroup)) or not (nw and mJ and (not OuroborosHubGroup or not mJ) and ((not OuroborosHubGroup or mJ) and (mJ or CollectGroup))) then
    nw:AddToggle("AutoBuyFloorUpgrades", { Text = "Auto Buy Floor Upgrades", Default = false })
    nw:AddDropdown("FloorUpgradeList", { Values = m7, Multi = true, Searchable = true, AllowNull = true, Text = "Upgrades", Default = {} })
    nw:AddSlider("FloorUpgradesDelay", { Text = "Buy Delay", Default = 0.35, Min = 0.1, Max = 3, Rounding = 2 })
    nw:AddSlider("FloorUpgradesMinCash", { Text = "Min Cash", Default = 0, Min = 0, Max = 100000000, Rounding = 0, Compact = true })
    task.spawn(worker10)
    task.spawn(worker9)
    task.spawn(worker8)
    task.spawn(worker7)
    task.spawn(worker6)
    task.spawn(worker5)
    task.spawn(worker4)
    task.spawn(worker3)
    task.spawn(worker2)
    MenuGroup = nq_2.Settings:AddLeftGroupbox("Menu", "menu")
else
    m7:AddToggle("AutoBuyFloorUpgrades", { Text = "Auto Buy Floor Upgrades", Default = false })
    m7:AddDropdown("FloorUpgradeList", {
        Multi = true,
        Searchable = true,
        Values = MenuGroup,
        AllowNull = true,
        Default = {},
        Text = "Upgrades"
    })
    m7:AddSlider("FloorUpgradesDelay", { Min = 0.1, Text = "Buy Delay", Rounding = 2, Default = 0.35, Max = 3 })
    m7:AddSlider("FloorUpgradesMinCash", { Text = "Min Cash", Max = 100000000, Rounding = 0, Min = 0, Compact = true, Default = 0 })
    task.spawn(worker10)
    task.spawn(worker9)
    task.spawn(worker8)
    task.spawn(worker7)
    task.spawn(worker6)
    task.spawn(worker5)
    task.spawn(worker4)
    task.spawn(worker3)
    task.spawn(worker2)
    nq_2 = nw.Settings:AddLeftGroupbox("Menu", "menu")
end
nc = tick()
m8 = tick()
pcall(function()
    for i, v in ipairs(getconnections(m5.Idled)) do
        local tp = v
        pcall(function()
            tp:Disable()
        end)
    end
end)
mQ = fn738
connection = nC.InputBegan:Connect(onInputBegan)
connection2 = nC.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
task.spawn(worker11)
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
mI.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddButton("Unload", onUnload)
mI:OnUnload(fn170)
nA:SetLibrary(mI)
nz:SetLibrary(mI)
nz:IgnoreThemeSettings()
nz:SetIgnoreIndexes({ "MenuKeybind" })
nA:SetFolder("OuroborosHub")
nz:SetFolder("OuroborosHub/build-a-garden-tower")
nA:SaveDefault("Monochrome")
nz:BuildConfigSection(nq_2.Settings)
nA:ApplyToTab(nq_2.Settings)
nA:LoadDefault()
nz:LoadAutoloadConfig()
