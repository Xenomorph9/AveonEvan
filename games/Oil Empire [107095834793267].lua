local fns = {}
local DrillShop
local ke
local kX
local kE
local kk
local VirtualUser
local j1
local kK
local kq
local k8
local j7
local kQ
local kx
local kd
local kW
local kD
local kj
local k1
local Toggles
local kJ
local DecorationShop
local k7
local j6
local kP
local kw
local kc
local LocalPlayer
local kC
local ki
local k0
local j_
local kI
local ko
local ReplicatedStorage
local j5
local kO
local RefineryShop
local kb
local kU
local kB
local kh
local k_
local jZ
local Knit
local kn
local k5
local Label
local kN
local kt
local ka
local kT
local kA
local kg
local Workspace
local jY
local kG
local km
local k4
local j3
local kM
local TotemShop
local j9
local kS
local kz
local kf
local kY
local Options
local kF
local GameAssets
local k3
local j2
local kL
local kr
local j8
local kR
function fns.fn18()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local mT = leaderstats and leaderstats:FindFirstChild("Cash")
    local mS_1 = mT
    if mT then
        mT = mS_1.Value
    end
    return mT or 0
end
function fns.onUnload()
    j7:Unload()
end
function fns.onInputBegan()
    kJ = tick()
end
function fns.fn57(bD)
    local nl = kj()
    local nm = nl and type(nl.Stock) == "table" and nl.Stock[bD] ~= nil
    if nm then
        return nl.Stock[bD]
    end
    return nil
end
local function onInputChanged(gL)
    local UserInputType = gL.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        kJ = tick()
    end
end
local function fn124(bS)
    local nw_1
    local nu = GameAssets:FindFirstChild(bS, true)
    local nv = nu and nu:IsA("ModuleScript")
    local nv_1
    if nv then
        nv_1, nw_1 = pcall(require, nu)
        local nx = nv_1 and type(nw_1) == "table"
        if nx then
            return nw_1, nu
        end
        return nil, nil
    end
    return nil, nil
end
local function fn154(ax)
    local mw = Toggles[ax]
    return mw ~= nil and mw.Value == true
end
local function fn162()
    kE("Drill", "PlaceDrillItems")
end
local function fn163()
    local m7_1
    local m6_1
    m6_1, m7_1 = pcall(function()
        local m3 = Knit.GetController("DataController")
        local m4 = m3 and m3:GetReplica()
        local m3_1 = m4
        if m4 then
            m4 = m3_1.Data
        end
        return m4
    end)
    if m6_1 then
        return m7_1
    end
    return nil
end
local function fn166(fM)
    local DiscordGroup = fM:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = kW })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = kW })
end
local function fn168()
    local n2 = j_()
    local n3 = n2 and n2:FindFirstChild("PlaceArea")
    return n3
end
local function worker7()
    while not j7.Unloaded do
        if ka("AutoSellDrills") then
            pcall(k1)
        end
        if ka("AutoSellRefineries") then
            pcall(kU)
        end
        task.wait(jY("SellDelay", 0.5))
    end
end
local function fn179(al, am)
    return string.format('<font color="%s">%s</font>', am, al)
end
local function fn198(b_)
    local nz = k3(b_)
    local nA = nz and nz.Model
    if not nA then
        return 6, 6
    end
    local nA_1 = nA.PrimaryPart or nA:FindFirstChild("Primary")
    local nE = if nA_1 then 1 else 0
    local nC = 1143 * nE + 2511 * (1 - nE)
    local nD = 2746 * nE + 2274 * (1 - nE)
    if not ((nC * 1008 + nD * 953 + nC * nD) % 16777213 == 6907760) then
        nA_1 = nA:FindFirstChildWhichIsA("BasePart", true)
    end
    local nz_2 = nA_1
    if not nz_2 then
        return 6, 6
    end
    return nz_2.Size.X, nz_2.Size.Z
end
local function fn208()
    kE("Refinery", "PlaceRefineryItems")
end
local function fn218()
    kI("DecorationShop", DecorationShop, "BuyDecorationItems", false)
end
local function fn222()
    local pj = not kh
    local pk = kT() <= 0 or pj
    if pk then
        return
    end
    local pj_1 = jY("SellGasMinPrice", 1)
    if kx() < pj_1 then
        return
    end
    kG(kh.SellGas)
end
local function fn229(ds)
    if not ds or not kh then
        return false
    end
    local attr3 = ds:GetAttribute("ID")
    local oM_1 = ds:GetAttribute("ToolName") or ds.Name
    local oN = oM_1
    if type(oN) == "string" then
        oN = string.gsub(oN, "%s*%[x%d+%]$", "")
    end
    if not attr3 then
        return false
    end
    local oM_2 = kX(oN)
    if not oM_2 then
        return false
    end
    local Parent = ds.Parent
    local attr2 = ds:GetAttribute("Amount")
    local oP = kG(kh.PlaceBuilding, attr3, oM_2)
    if not oP then
        return false
    end
    task.wait(0.35)
    if not ds.Parent then
        return true
    end
    local attr = ds:GetAttribute("Amount")
    if attr2 ~= nil and attr ~= nil and attr < attr2 then
        return true
    end
    return ds.Parent ~= Parent
end
local function fn241()
    k8(kO, "Copied Discord invite to clipboard")
end
local function fn255(c6)
    local oo, op, oq, ot, ou, ox, oz, oA, oC, oE, oF
    local ow = 0
    while true do
        local ow_1 = 3764 - ow
        do
            if ow_1 < 3754 then
                if ow_1 < 3752 then
                    if ow_1 < 3749 then
                        if ow_1 < 3748 then
                            if ow_1 < 2830 then
                                break
                            elseif ow_1 < 3747 then
                                break
                            else
                                ow = if oE <= oC then 2 else 9
                            end
                        elseif ow_1 == 3748 then
                            oq, op = kz(c6)
                            ot = math.floor(oo.Size.X * 0.5) - 2
                            ou = math.floor(oo.Size.Z * 0.5) - 2
                            oz = -ot
                            ox = ot
                            ow = 1
                        else
                            ow = 12989
                            continue
                        end
                    elseif ow_1 < 3750 then
                        if ow_1 == 3749 then
                            oA = oz
                            ow = 11
                        else
                            ow = 15173
                            continue
                        end
                    elseif ow_1 < 3751 then
                        break
                    else
                        local ot_1 = oo.CFrame:PointToWorldSpace(Vector3.new(oA, 0, oF))
                        local ov_2 = j9(ot_1, oq, op)
                        ot = Vector3.new(ov_2.X, kc, ov_2.Z)
                        ow = if kD(ot, oq, op) then 10 else 12
                    end
                elseif ow_1 < 3753 then
                    if ow_1 == 3752 then
                        ow = 4
                    else
                        ow = 5095
                        continue
                    end
                elseif ow_1 == 3753 then
                    ot = -ou
                    oE = ot
                    oC = ou
                    ow = 17
                else
                    ow = 9581
                    continue
                end
            elseif ow_1 < 3761 then
                if ow_1 < 3757 then
                    if ow_1 < 3755 then
                        return CFrame.new(ot)
                    elseif ow_1 < 3756 then
                        ow = 7
                    else
                        op = oo:FindFirstChild("PlaceArea")
                        ow = 3
                    end
                elseif ow_1 < 3759 then
                    if ow_1 < 3758 then
                        oz += 2
                        ow = 1
                    elseif ow_1 == 3758 then
                        return nil
                    else
                        ow = 3761
                        continue
                    end
                elseif ow_1 < 3760 then
                    if ow_1 == 3759 then
                        return nil
                    end
                    ow = 154
                    continue
                elseif ow_1 == 3760 then
                    oE += 2
                    ow = 17
                else
                    ow = 16170
                    continue
                end
            elseif ow_1 < 3763 then
                if ow_1 < 3762 then
                    oo = op
                    ow = if not oo then 6 else 16
                else
                    oF = oE
                    ow = 13
                end
            elseif ow_1 < 5095 then
                if ow_1 < 3764 then
                    ow = if oz <= ox then 15 else 5
                elseif ow_1 < 4231 then
                    if ow_1 == 3764 then
                        oo = j_()
                        op = oo
                        ow = if op then 8 else 3
                    else
                        break
                    end
                else
                    break
                end
            else
                break
            end
        end
    end
end
local function fn277(aI)
    local mC = Options[aI]
    return mC and mC.Value or {}
end
local function fn280()
    local Plots = Workspace:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    for i, child in Plots:GetChildren() do
        local Configuration = child:FindFirstChild("Configuration")
        local na = Configuration and Configuration:FindFirstChild("Player")
        local m9_2 = na
        if na then
            na = m9_2.Value == LocalPlayer
        end
        if na then
            return child
        end
    end
    return nil
end
local function fn306()
    local pw = jZ()
    local px = j_()
    if not px then
        return
    end
    for i, v in ipairs(kq) do
        local py = not j3(v.Name) and pw >= v.Price
        if py then
            local py_1 = px.Zones:FindFirstChild(v.Name)
            local pz = py_1 and py_1:FindFirstChildWhichIsA("ProximityPrompt", true)
            local pz_1 = j8()
            if kh then
                kG(kh.OpenZone, v.Name)
            end
            if pz and pz_1 then
                local CFrame2 = pz_1.CFrame
                local Parent = pz.Parent
                if Parent:IsA("Attachment") then
                    pz_1.CFrame = CFrame.new(Parent.WorldPosition + Vector3.new(0, 3, 0))
                elseif Parent:IsA("BasePart") then
                    pz_1.CFrame = Parent.CFrame + Vector3.new(0, 3, 0)
                end
                task.wait(0.1)
                kY(pz)
                task.wait(0.35)
                pz_1.CFrame = CFrame2
            end
            task.wait(0.2)
            break
        end
    end
end
local function fn308(dm, dn)
    if not kg then
        return false
    end
    return kG(kg.Purchase, dm, dn)
end
local function fn338()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    kC = tick()
end
local function fn341(ej, ek, el, em)
    local pm = jZ()
    for k, v in ek do
        local pn = type(v) == "table" and v.Price and not v.NotSale and ko(el, k)
        if pn then
            local pn_1 = em and kd(k)
            if not pn_1 then
                local pn_2 = kr(k)
                if (pn_2 == nil or pn_2 > 0) and pm >= v.Price then
                    if j1(ej, k) then
                        pm -= v.Price
                        task.wait(0.15)
                    end
                end
            end
        end
    end
end
local function fn350(dG)
    if not dG or not kh then
        return false
    end
    return kG(kh.DeleteBuilding, dG.Name, "Sell")
end
local function worker()
    local l8_1
    repeat
        task.wait()
        pcall(function()
            kh = Knit.GetService("BaseService")
            kg = Knit.GetService("StoresService")
        end)
        l8_1 = kh and kg
    until l8_1
end
local function fn408()
    kI("DrillShop", DrillShop, "BuyDrillItems", false)
end
local function fn418()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local mW = leaderstats and leaderstats:FindFirstChild("Gasoline")
    local mV_1 = mW
    if mW then
        mW = mV_1.Value
    end
    return mW or 0
end
local function fn424(ao, ap, aq)
    return string.format("<b>%s</b> %s %s", ao, kM("-", "#5a6070"), kM(ap, aq))
end
local function fn432(bN)
    if bN == "Zone0" then
        return true
    end
    local nr = kj()
    local ns = nr and type(nr.Zones) == "table" and nr.Zones[bN] == true
    return ns
end
local function fn435()
    local GasPrice = ReplicatedStorage:FindFirstChild("GasPrice")
    local mY_1 = GasPrice and GasPrice.Value
    local m2 = if mY_1 then 1 else 0
    local m0 = 4055 * m2 + 1168 * (1 - m2)
    local m1 = 99 * m2 + 1713 * (1 - m2)
    if not ((m0 * 3487 + m1 * 3736 + m0 * m1) % 16777213 == 14911094) then
        mY_1 = 0
    end
    return mY_1
end
local function fn448(aC, aD)
    local mz = Options[aC]
    local mA = mz and tonumber(mz.Value)
    return mA or aD
end
local function worker4()
    while not j7.Unloaded do
        if ka("AutoCollectGas") then
            pcall(kt)
        end
        if ka("AutoSellGas") then
            pcall(k5)
        end
        if ka("AutoBuyZones") then
            pcall(kn)
        end
        task.wait(jY("FarmDelay", 0.35))
    end
end
local function worker2()
    local qk_1
    while true do
        task.wait(1)
        if j7.Unloaded then
            break
        end
        local qj = math.floor(os.clock() - k_)
        if qj < 60 then
            qk_1 = qj .. "s"
        elseif qj < 3600 then
            qk_1 = string.format("%dm %ds", qj // 60, qj % 60)
        else
            qk_1 = string.format("%dh %dm", qj // 3600, qj % 3600 // 60)
        end
        Label:SetText(kA("Session time", qk_1, ke))
    end
end
local function onRscripts()
    k8(kL, "Copied Rscripts profile to clipboard")
end
local function fn472()
    kI("RefineryShop", RefineryShop, "BuyRefineryItems", false)
end
local function fn476()
    print("Unloaded!")
end
local function fn485()
    kF("Drill", "SellDrillItems", "SellDrillKeep")
end
local function fn486(cy, cz, cA)
    local n5 = ki()
    if not n5 then
        return cy
    end
    local CFrame = n5.CFrame
    local n7 = CFrame:PointToObjectSpace(cy) + n5.Size / 2
    local function n8(cG, cH)
        local cI = math.floor(cH / 2 * 100) / 100
        local cJ = math.floor(cG / 30) * 30
        return cJ + math.clamp(math.round((cG - cJ - cI) / 2) * 2 + cI, cI, 30 - cI)
    end
    local n9 = n8(n7.X, cz)
    local oa = n8(n7.Z, cA)
    return CFrame:PointToWorldSpace(Vector3.new(n9, 0.5, oa) - n5.Size / 2)
end
local function fn498()
    local qc_1
    local qb_1
    if identifyexecutor then
        qc_1, qb_1 = identifyexecutor()
        local qd = qc_1 ~= ""
        local qe = type(qc_1) == "string" and qd
        if qe then
            local qd_1 = type(qb_1) == "string" and qb_1 ~= "" and qc_1 .. " " .. qb_1
            kk = qd_1 or qc_1
        end
    end
end
local function fn502(aN)
    for k, v in pairs(aN) do
        if v then
            return true
        end
    end
    return false
end
local function fn503()
    local Character = LocalPlayer.Character
    local mQ = Character and Character:FindFirstChild("HumanoidRootPart")
    return mQ
end
local function onCopyJoinScript_JobID()
    local f2 = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, j2)
    k8(f2, "Copied join script to clipboard")
end
local function worker5()
    while not j7.Unloaded do
        if ka("AutoBuyDrills") then
            pcall(k4)
        end
        if ka("AutoBuyRefineries") then
            pcall(kQ)
        end
        if ka("AutoBuyTotems") then
            pcall(kK)
        end
        if ka("AutoBuyDecorations") then
            pcall(kw)
        end
        task.wait(jY("BuyDelay", 0.5))
    end
end
local function fn532(fn, fo, fp)
    local pU = math.max(0, math.floor(jY(fp, 0)))
    local pV = kP(fn)
    local pW = {}
    for i, v in ipairs(pV) do
        pV = v:GetAttribute("Name")
        local pX = pV and ko(fo, pV)
        if pX then
            local pY = pW[pV] or {}
            pW[pV] = pY
            table.insert(pW[pV], v)
        end
    end
    local p6 = false
    for k, v in pW do
        local p5 = 2
        while true do
            if p5 < 7 then
                if p5 < 3 then
                    if p5 < 1 then
                        pW = kf(pV)
                        p5 = 11
                    elseif p5 < 2 then
                        p5 = 9
                    else
                        p5 = 12
                    end
                elseif p5 < 5 then
                    if p5 < 4 then
                        p6 = true
                        p5 = 8
                    else
                        p5 = 13
                    end
                elseif p5 < 6 then
                    task.wait(0.2)
                    p5 = 1
                else
                    p5 = 13
                end
            elseif p5 < 10 then
                if p5 < 8 then
                    p5 = if #v > pU then 10 else 4
                elseif p5 < 9 then
                    break
                else
                    p5 = 12
                end
            elseif p5 < 12 then
                if p5 < 11 then
                    pV = table.remove(v)
                    pW = pV
                    p5 = if pW then 0 else 11
                else
                    p5 = if pW then 5 else 6
                end
            elseif p5 < 13 then
                p5 = 7
            else
                p5 = 8
            end
        end
        if p6 then
            break
        end
    end
end
local function fn541(aR, aS)
    local mN = kR(aR)
    if not kB(mN) then
        return true
    end
    return mN[aS] == true
end
local function fn584(ae, af)
    if setclipboard then
        setclipboard(ae)
    elseif toclipboard then
        toclipboard(ae)
    end
    j7:Notify(af)
end
local function fn592()
    kF("Refinery", "SellRefineryItems", "SellRefineryKeep")
end
local function fn595(bI)
    local no = kj()
    local np = no and type(no.Totems) == "table" and no.Totems[bI] == true
    return np
end
local function fn606(U, V)
    return U.Price < V.Price
end
local function fn621()
    j6:Disconnect()
    k7:Disconnect()
end
local function fn626(D)
    local md = {}
    for k, v in D do
        local me_1 = type(v) == "table" and v.Price and not v.NotSale
        if me_1 then
            local insert = table.insert
            local Price = v.Price
            local Tier = v.Tier
            local mh = v.LayoutOrder or 0
            insert(md, { Name = k, Price = Price, Tier = Tier, Order = mh })
        end
    end
    table.sort(md, function(I, J)
        return (I.Order or 0) < (J.Order or 0)
    end)
    local me_3 = {}
    for i, v in ipairs(md) do
        table.insert(me_3, v.Name)
    end
    return me_3, md
end
local function fn650()
    local o6 = jY("CollectMinStorage", 1)
    local o7 = ka("CollectOnlyFull")
    for i, v in ipairs(kP("Refinery")) do
        local o8 = v:GetAttribute("Storage") or 0
        local o8_1 = v:GetAttribute("MaxStorage") or 0
        local o8_2 = o8 >= o6
        if o7 then
            o8_2 = o8_1 > 0 and o8 >= o8_1
        end
        if o8_2 then
            local o8_3 = v.PrimaryPart or v:FindFirstChild("Primary") or v:FindFirstChildWhichIsA("BasePart", true)
            if o8_3 then
                j5(o8_3)
                task.wait(0.1)
            end
        end
    end
end
local function fn653(e3, e4)
    local pJ = kb()
    for i, v in ipairs(pJ) do
        local pJ_1 = v:GetAttribute("ToolName") or v.Name
        local pJ_2 = k3(pJ_1)
        local pL = pJ_2 and pJ_2.Type
        local pJ_3 = false
        if e3 == "Drill" then
            pJ_3 = pL == "Drill" or DrillShop[pJ_1] ~= nil
        elseif e3 == "Refinery" then
            pJ_3 = pL == "Refinery" or RefineryShop[pJ_1] ~= nil
        end
        local pL_3 = pJ_3 and ko(e4, pJ_1)
        if pL_3 then
            if k0(v) then
                task.wait(0.25)
                return
            end
        end
    end
end
local function fn668()
    kI("TotemShop", TotemShop, "BuyTotemItems", true)
end
local function fn673(ck)
    local nP = j_()
    local nQ = nP and nP:FindFirstChild("Buildings")
    if not nQ then
        return {}
    end
    local nQ_1 = {}
    for i, child in nQ:GetChildren() do
        local attr = child:GetAttribute("Type")
        if not ck or attr == ck then
            table.insert(nQ_1, child)
        end
    end
    return nQ_1
end
local function worker3()
    while not j7.Unloaded do
        task.wait(2)
        if ka("AntiAfk") then
            local qB = tick() - kJ
            local qC = tick() - kC
            if qB >= 300 and qC >= 60 then
                pcall(km)
            else
                if qB < 300 and qC >= 300 then
                    pcall(km)
                end
            end
        end
    end
end
local function fn686(cN, cO, cP)
    local oc = j_()
    local od = oc and oc:FindFirstChild("PlaceArea")
    if not oc or not od then
        return false
    end
    local od_2 = od.CFrame:PointToObjectSpace(cN)
    local of_1 = od.Size / 2
    local oe_1 = math.abs(od_2.X) > of_1.X - 1 or math.abs(od_2.Z) > of_1.Z - 1
    if oe_1 then
        return false
    end
    local od_3 = OverlapParams.new()
    od_3.FilterType = Enum.RaycastFilterType.Exclude
    od_3.FilterDescendantsInstances = { LocalPlayer.Character }
    local oe_2 = Workspace:GetPartBoundsInBox(CFrame.new(cN), Vector3.new(cO, 1, cP) * 0.8, od_3)
    for i, v in ipairs(oe_2) do
        local od_4 = v.Name == "Hitbox" and v.Parent and v.Parent:HasTag("Locked")
        if od_4 then
            return false
        end
        local Buildings = oc:FindFirstChild("Buildings")
        local oe_3 = Buildings and v:IsDescendantOf(Buildings)
        if oe_3 then
            return false
        end
    end
    return true
end
local function worker6()
    while not j7.Unloaded do
        if ka("AutoPlaceDrills") then
            pcall(kS)
        end
        if ka("AutoPlaceRefineries") then
            pcall(kN)
        end
        task.wait(jY("PlaceDelay", 0.35))
    end
end
Options = nil
jY = nil
jZ = nil
j_ = nil
Toggles = nil
j1 = nil
j2 = nil
j3 = nil
Label = nil
j5 = nil
j6 = nil
j7 = nil
j8 = nil
j9 = nil
ka = nil
kb = nil
kc = nil
kd = nil
ke = nil
kf = nil
kg = nil
kh = nil
ki = nil
kj = nil
kk = nil
GameAssets = nil
km = nil
kn = nil
ko = nil
DecorationShop = nil
kq = nil
kr = nil
TotemShop = nil
kt = nil
RefineryShop = nil
kw = nil
kx = nil
DrillShop = nil
kz = nil
kA = nil
kB = nil
kC = nil
kD = nil
kE = nil
kF = nil
kG = nil
Knit = nil
kI = nil
kJ = nil
kK = nil
kL = nil
kM = nil
kN = nil
kO = nil
kP = nil
kQ = nil
kR = nil
kS = nil
kT = nil
kU = nil
LocalPlayer = nil
kW = nil
kX = nil
kY = nil
Workspace = nil
k_ = nil
k0 = nil
k1 = nil
VirtualUser = nil
k3 = nil
k4 = nil
k5 = nil
ReplicatedStorage = nil
k7 = nil
k8 = nil
local lm, ln
ReplicatedStorage, VirtualUser, Workspace, LocalPlayer, kO, kL, Knit, DrillShop, RefineryShop, TotemShop, DecorationShop, GameAssets, kh, kg, kq = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local qP_14 = game:GetService("Players")
ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
Workspace = game:GetService("Workspace")
LocalPlayer = qP_14.LocalPlayer
local qP_12 = "Oil Empire"
kO = "https://discord.gg/ehKVq7pf7v"
kL = "https://rscripts.net/@Ouroboros"
Knit = require(ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Knit"))
local qP_17 = require(ReplicatedStorage:WaitForChild("GlobalVariables"))
DrillShop = require(ReplicatedStorage:WaitForChild("Shops"):WaitForChild("DrillShop"))
RefineryShop = require(ReplicatedStorage:WaitForChild("Shops"):WaitForChild("RefineryShop"))
TotemShop = require(ReplicatedStorage:WaitForChild("Shops"):WaitForChild("TotemShop"))
DecorationShop = require(ReplicatedStorage:WaitForChild("Shops"):WaitForChild("DecorationShop"))
GameAssets = ReplicatedStorage:WaitForChild("Assets"):WaitForChild("GameAssets")
task.spawn(worker)
local qP_4 = fn626
local qP_7 = qP_4(DrillShop)
local qP_1 = qP_4(RefineryShop)
local qP_11 = qP_4(TotemShop)
local qP_6 = qP_4(DecorationShop)
kq = {}
for k, v in qP_17.ZonePrices do
    table.insert(kq, { Name = k, Price = v })
end
kc, qP_14, j7, Toggles, Options, ke, k8, kW, kM, kA, ka, jY, kR, kB, ko, j8, jZ, kT, kx, kj, j_, kG, kr, kd, j3, k3, kz, kb, kP, ki, j9, kD, kX, j1, k0, kf, j5, kY, kt, k5, kI, k4, kQ, kK, kw, kn, kE, kS, kN, kF, k1, kU = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
table.sort(kq, fn606)
kc = 9
if (((j_ or not j3) and (not j_ and not j_) or j3 and not kI and (not j3 and j_)) and ((j3 or not j_ or not j3 and not j_) and (kI and not j3 or (not j_ or j_))) or (kI and j_ and (j_ or kI) or not kI and j3 and (j3 or j3)) and ((kI and kI or not j3 and j3) and (kI and j3 and (j_ or not j_)))) and not (((j_ or not j3) and (not j_ and not j_) or j3 and not kI and (not j3 and j_)) and ((j3 or not j_ or not j3 and not j_) and (kI and not j3 or (not j_ or j_))) or (kI and j_ and (j_ or kI) or not kI and j3 and (j3 or j3)) and ((kI and kI or not j3 and j3) and (kI and j3 and (j_ or not j_)))) then
    j_ = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
else
    qP_14 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
end
j7 = loadstring(game:HttpGet(qP_14 .. "Library.lua"))()
local qP_16 = loadstring(game:HttpGet(qP_14 .. "addons/ThemeManager.lua"))()
local qP_8 = loadstring(game:HttpGet(qP_14 .. "addons/SaveManager.lua"))()
Toggles = j7.Toggles
Options = j7.Options
k8 = fn584
kW = fn241
kM = fn179
if (not kD and not qP_14 and (not qP_14 or not kD) or (qP_14 and not kD or (not kD or not qP_14)) or (not qP_14 or not qP_14 or not qP_14 and qP_14 or (not qP_14 and not kD or kD and not kD))) and not (not kD and not qP_14 and (not qP_14 or not kD) or (qP_14 and not kD or (not kD or not qP_14)) or (not qP_14 or not qP_14 or not qP_14 and qP_14 or (not qP_14 and not kD or kD and not kD))) then
    ke = fn424
    kA = "#7fd47f"
    ln = "#6ec1ff"
    lm = "#e8a34d"
else
    kA = fn424
    ln = "#7fd47f"
    lm = "#6ec1ff"
    ke = "#e8a34d"
end
local qP_5 = "#8b93a3"
ka = fn154
jY = fn448
kR = fn277
kB = fn502
ko = fn541
j8 = fn503
jZ = fns.fn18
kT = fn418
kx = fn435
kj = fn163
j_ = fn280
kG = function(bz, ...)
    if not bz then
        return false
    end
    local nj = pcall(function(...)
        if type(bz.Fire) == "function" then
            bz:Fire(...)
        elseif type(bz.FireServer) == "function" then
            bz:FireServer(...)
        end
    end, ...)
    return nj
end
kr = fns.fn57
kd = fn595
j3 = fn432
k3 = fn124
kz = fn198
kb = function(b7)
    local b8
    b8 = {}
    local function b9(ca)
        if not ca then
            return
        end
        for i, child in ca:GetChildren() do
            if child:IsA("Tool") then
                local nF = child:GetAttribute("ToolName") or child.Name
                if not b7 or nF == b7 then
                    table.insert(b8, child)
                end
            end
        end
    end
    b9(LocalPlayer:FindFirstChild("Backpack"))
    b9(LocalPlayer.Character)
    return b8
end
kP = fn673
ki = fn168
j9 = fn486
kD = fn686
kX = fn255
j1 = fn308
k0 = fn229
kf = fn350
j5 = function(dK)
    local oU = j8()
    local oV = not oU or not dK or not dK:IsA("BasePart")
    if oV then
        return false
    end
    local CFrame = oU.CFrame
    oU.CFrame = dK.CFrame + Vector3.new(0, 3, 0)
    if firetouchinterest then
        pcall(function()
            firetouchinterest(oU, dK, 0)
            task.wait(0.05)
            firetouchinterest(oU, dK, 1)
        end)
    end
    task.wait(0.15)
    oU.CFrame = CFrame
    return true
end
kY = function(dS)
    local o_
    o_ = nil
    if not dS then
        return false
    end
    local o1 = dS.HoldDuration > 0 and dS.HoldDuration
    local o5 = if o1 then 1 else 0
    local o3 = 2974 * o5 + 886 * (1 - o5)
    local o4 = 941 * o5 + 3822 * (1 - o5)
    if not ((o3 * 253 + o4 * 2463 + o3 * o4) % 16777213 == 5868639) then
        o1 = 1
    end
    o_ = o1
    if fireproximityprompt then
        return pcall(function()
            fireproximityprompt(dS, o_)
        end)
    end
    return pcall(function()
        dS:InputHoldBegin()
        task.wait(o_ + 0.1)
        dS:InputHoldEnd()
    end)
end
kt = fn650
k5 = fn222
kI = fn341
k4 = fn408
kQ = fn472
kK = fn668
kw = fn218
kn = fn306
kE = fn653
kS = fn162
kN = fn208
kF = fn532
k1 = fn485
kU = fn592
local qP_9 = j7:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = kO, Copyable = true }, "|", qP_12 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local lo = {
    Info = qP_9:AddTab("Info", "info"),
    Main = qP_9:AddTab("Main", "gamepad-2"),
    Settings = qP_9:AddTab("Settings", "settings")
}
lo.Farm = lo.Main:AddSubTab("Farm", "droplets")
lo.Buy = lo.Main:AddSubTab("Buy", "shopping-cart")
lo.Place = lo.Main:AddSubTab("Place", "hammer")
lo.Sell = lo.Main:AddSubTab("Sell", "hand-coins")
qP_17 = fn166
for k, v in lo do
    if v ~= lo.Main then
        qP_17(v)
    end
end
kk, Label, j2 = nil, nil, nil
kk = "Unknown"
pcall(fn498)
qP_14 = lo.Info:AddLeftGroupbox("Account", "circle-user")
qP_14:AddLabel(kA("User", LocalPlayer.Name, ln), true)
qP_14:AddLabel(kA("Status", "Keyless", ln), true)
qP_14:AddLabel(kA("Executor", kk, ln), true)
local GameInfoGroup = lo.Info:AddLeftGroupbox("Game Info", "gamepad-2")
GameInfoGroup:AddLabel(kM(qP_12 .. " [" .. tostring(game.PlaceId) .. "]", lm), true)
GameInfoGroup:AddLabel(kA("Place ID", tostring(game.PlaceId), lm), true)
Label = GameInfoGroup:AddLabel(kA("Session time", "0s", ke), true)
j2 = tostring(game.JobId)
qP_9 = #j2 > 18
if qP_9 then
    qP_14 = 2
    repeat
        local rh = bit32.rrotate(bit32.bxor(bit32.lrotate(qP_14, 16), string.byte(tostring(qP_14))), 9)
        if bit32.bxor(bit32.lrotate(bit32.bxor(rh, 4038267126), 16), 284618931) == bit32.lrotate(rh, 16) then
            qP_9 = string.sub(j2, 1, 18) .. "..."
        else
            j2 = string.sub(qP_9, 1, 18) .. "..."
        end
        qP_14 = (qP_14 + 3) % 4
    until (qP_14 * 3 + 1) % 4 == 0
end
qP_14 = qP_9
local l1 = if qP_14 then 1 else 0
local l_ = 444 * l1 + 1453 * (1 - l1)
local l0 = 2547 * l1 + 1311 * (1 - l1)
if not ((l_ * 3348 + l0 * 2857 + l_ * l0) % 16777213 == 9894159) then
    qP_14 = j2
end
k_, kJ, kC, j6, k7, km = nil, nil, nil, nil, nil, nil
local lH = qP_14
GameInfoGroup:AddLabel(kA("Server", lH, qP_5), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
k_ = os.clock()
task.spawn(worker2)
local ScriptsGroup = lo.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(kM("Included in this hub", qP_5), true)
ScriptsGroup:AddLabel(kM(qP_12, lm), true)
local FeaturesGroup = lo.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(kM("Auto Collect", lm), true)
FeaturesGroup:AddLabel(kM("Auto Buy", ke), true)
FeaturesGroup:AddLabel(kM("Auto Place", ke), true)
FeaturesGroup:AddLabel(kM("Auto Sell", ln), true)
FeaturesGroup:AddLabel(kM("Auto Zones", lm), true)
FeaturesGroup:AddLabel(kM("Misc Utilities", qP_5), true)
local SocialsGroup = lo.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = kW })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = lo.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = kW })
local FaqGroup = lo.Info:AddRightGroupbox("FAQ", "circle-help")
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
local GasGroup = lo.Farm:AddLeftGroupbox("Gas", "droplets")
GasGroup:AddToggle("AutoCollectGas", { Text = "Auto Collect Gas", Default = false })
GasGroup:AddToggle("CollectOnlyFull", { Text = "Collect Only Full", Default = false })
GasGroup:AddSlider("CollectMinStorage", { Text = "Min storage", Default = 1, Min = 1, Max = 100000, Rounding = 0 })
GasGroup:AddToggle("AutoSellGas", { Text = "Auto Sell Gas", Default = false })
GasGroup:AddSlider("SellGasMinPrice", { Text = "Min gas price", Default = 1, Min = 1, Max = 15, Rounding = 1 })
GasGroup:AddSlider("FarmDelay", { Text = "Farm delay", Default = 0.35, Min = 0.1, Max = 3, Rounding = 2, Suffix = "s" })
local ZonesGroup = lo.Farm:AddRightGroupbox("Zones", "map")
ZonesGroup:AddToggle("AutoBuyZones", { Text = "Auto Buy Zones", Default = false })
local DrillsGroup = lo.Buy:AddLeftGroupbox("Drills", "pickaxe")
DrillsGroup:AddToggle("AutoBuyDrills", { Text = "Auto Buy Drills", Default = false })
DrillsGroup:AddDropdown("BuyDrillItems", { Text = "Drills", Values = qP_7, Multi = true, AllowNull = true, Default = {} })
local RefineriesGroup = lo.Buy:AddLeftGroupbox("Refineries", "warehouse")
RefineriesGroup:AddToggle("AutoBuyRefineries", { Text = "Auto Buy Refineries", Default = false })
RefineriesGroup:AddDropdown("BuyRefineryItems", { Text = "Refineries", Values = qP_1, Multi = true, AllowNull = true, Default = {} })
qP_17 = lo.Buy:AddRightGroupbox("Totems", "gem")
qP_17:AddToggle("AutoBuyTotems", { Text = "Auto Buy Totems", Default = false })
qP_17:AddDropdown("BuyTotemItems", { Text = "Totems", Values = qP_11, Multi = true, AllowNull = true, Default = {} })
qP_9 = lo.Buy:AddRightGroupbox("Decorations", "flower-2")
qP_9:AddToggle("AutoBuyDecorations", { Text = "Auto Buy Decorations", Default = false })
qP_9:AddDropdown("BuyDecorationItems", { Text = "Decorations", Values = qP_6, Multi = true, AllowNull = true, Default = {} })
qP_4 = lo.Buy:AddLeftGroupbox("Timing", "timer")
qP_4:AddSlider("BuyDelay", { Text = "Buy delay", Default = 0.5, Min = 0.1, Max = 5, Rounding = 2, Suffix = "s" })
local DrillsGroup = lo.Place:AddLeftGroupbox("Drills", "pickaxe")
DrillsGroup:AddToggle("AutoPlaceDrills", { Text = "Auto Place Drills", Default = false })
DrillsGroup:AddDropdown("PlaceDrillItems", { Text = "Drills", Values = qP_7, Multi = true, AllowNull = true, Default = {} })
local RefineriesGroup = lo.Place:AddRightGroupbox("Refineries", "warehouse")
RefineriesGroup:AddToggle("AutoPlaceRefineries", { Text = "Auto Place Refineries", Default = false })
RefineriesGroup:AddDropdown("PlaceRefineryItems", { Text = "Refineries", Values = qP_1, Multi = true, AllowNull = true, Default = {} })
local TimingGroup = lo.Place:AddLeftGroupbox("Timing", "timer")
TimingGroup:AddSlider("PlaceDelay", { Text = "Place delay", Default = 0.35, Min = 0.1, Max = 3, Rounding = 2, Suffix = "s" })
local DrillsGroup = lo.Sell:AddLeftGroupbox("Drills", "pickaxe")
DrillsGroup:AddToggle("AutoSellDrills", { Text = "Auto Sell Drills", Default = false })
DrillsGroup:AddDropdown("SellDrillItems", { Text = "Drills", Values = qP_7, Multi = true, AllowNull = true, Default = {} })
DrillsGroup:AddSlider("SellDrillKeep", { Text = "Keep amount", Default = 0, Min = 0, Max = 100, Rounding = 0 })
local RefineriesGroup = lo.Sell:AddRightGroupbox("Refineries", "warehouse")
RefineriesGroup:AddToggle("AutoSellRefineries", { Text = "Auto Sell Refineries", Default = false })
RefineriesGroup:AddDropdown("SellRefineryItems", { Text = "Refineries", Values = qP_1, Multi = true, AllowNull = true, Default = {} })
RefineriesGroup:AddSlider("SellRefineryKeep", { Text = "Keep amount", Default = 0, Min = 0, Max = 100, Rounding = 0 })
local TimingGroup = lo.Sell:AddLeftGroupbox("Timing", "timer")
TimingGroup:AddSlider("SellDelay", { Text = "Sell delay", Default = 0.5, Min = 0.1, Max = 5, Rounding = 2, Suffix = "s" })
local MenuGroup = lo.Settings:AddLeftGroupbox("Menu", "settings")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
j7.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", fns.onUnload)
j7:OnUnload(fn476)
qP_16:SetLibrary(j7)
qP_16:SetFolder("OuroborosHub")
qP_16:SaveDefault("Monochrome")
qP_16:ApplyToTab(lo.Settings)
qP_16:LoadDefault()
qP_8:SetLibrary(j7)
qP_8:IgnoreThemeSettings()
qP_8:SetIgnoreIndexes({ "MenuKeybind" })
qP_8:SetFolder("OuroborosHub/OilEmpire")
qP_8:BuildConfigSection(lo.Settings)
qP_8:LoadAutoloadConfig()
kJ = tick()
kC = tick()
if (not km or not kJ) and (kJ or km) and (kC or qP_9 or (qP_9 or kC)) or not ((not km or not kJ) and (kJ or km) and (kC or qP_9 or (qP_9 or kC))) then
    pcall(function()
        for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
            local qs = v
            pcall(function()
                qs:Disable()
            end)
        end
    end)
    km = fn338
    j6 = UserInputService.InputBegan:Connect(fns.onInputBegan)
    k7 = UserInputService.InputChanged:Connect(onInputChanged)
else
    pcall(function()
        for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
            local qs = v
            pcall(function()
                qs:Disable()
            end)
        end
    end)
    k7 = km.InputBegan:Connect(fns.onInputBegan)
    j6 = km.InputChanged:Connect(onInputChanged)
end
j7:OnUnload(fn621)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(worker6)
task.spawn(worker7)
j7:Notify("Oil Empire loaded")
