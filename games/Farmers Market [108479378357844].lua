local mJ
local nq
local nP
local mP
local nw
local nd
local mV
local nC
local nj
local nI
local mI
local np
local m6
local nO
local nv
local nU
local mU
local nB
local ni
local m_
local Options
local nT
local Toggles
local nh
local CropConfig
local m4
local nM
local mM
local nS
local mS
local ng
local mY
local nF
local nm
local m3
local mL
local ns
local Library
local mR
local ny
local nf
local mX
local nE
local nl
local m2
local mK
local nr
local m8
local nQ
local nx
local ne
local mW
local nD
local m1
local nJ
local function fn3(aj, ak)
    if aj.group ~= ak.group then
        return aj.group < ak.group
    end
    return aj.order < ak.order
end
local function fn8()
    local Character = mX.Character
    local pl = Character and Character:FindFirstChildOfClass("Humanoid")
    return pl
end
local function fn26(e5)
    local Objects = e5:FindFirstChild("Objects")
    if not Objects then
        return false
    end
    local tx = false
    for i, child in Objects:GetChildren() do
        local attr = child:GetAttribute("Item")
        local ty = attr and nf.Items[attr]
        local tw_2 = ty
        if ty then
            ty = tw_2.Pen
        end
        local tw_3 = ty
        if tw_3 then
            local ty_1 = child:GetAttribute("Output") or 0
            if ty_1 > 0 then
                local Collect = child:FindFirstChild("Collect")
                if Collect then
                    mI(Collect.Position)
                end
                local ty_3 = math.min(CropConfig.ContributeBatch(tw_3.OutputMax), ty_1)
                mM:FireServer(child.Name, ty_3)
                tx = true
                task.wait(0.12)
            end
        end
    end
    return tx
end
local function fn60(aZ, a_)
    return string.format('<font color="%s">%s</font>', a_, aZ)
end
local function fn104(bd)
    local o8 = Toggles[bd]
    return o8 ~= nil and o8.Value == true
end
local function fn146(cx)
    local qC = {}
    local StoreFront = cx:FindFirstChild("StoreFront")
    local qE = StoreFront and StoreFront:FindFirstChild("SellSpots")
    if not qE then
        return qC
    end
    for i, child in qE:GetChildren() do
        qC[#qC + 1] = child.Name
    end
    table.sort(qC)
    return qC
end
local function fn178(cg)
    local Crops = cg:FindFirstChild("Crops")
    if not Crops then
        return false
    end
    local qo = false
    for i, child in Crops:GetChildren() do
        local attr3 = child:GetAttribute("Crop")
        local attr2 = child:GetAttribute("Stage")
        if not not (attr3 and attr2) then
            if not (attr2 < CropConfig.GetStageCount(attr3)) then
                local attr = child:GetAttribute("PlantedAt")
                local Name = child.Name
                local qq_1 = nB[Name]
                local qr = qq_1 and qq_1.PlantedAt == attr and tick() - qq_1.At < 2
                if not qr then
                    local Position = child:GetPivot().Position
                    if not not mI(Position) then
                        nB[Name] = { PlantedAt = attr, At = tick() }
                        m6:FireServer(child.Name)
                        qo = true
                        task.wait(0.15)
                    end
                end
            end
        end
    end
    return qo
end
local function fn232(cF)
    local qM = m1(cF)
    if #qM == 0 then
        return false
    end
    local qN = mJ()
    local qO = 1
    local qP = false
    for k, v in ny do
        local qQ = qN[v]
        local qR = type(qQ) == "number" and qQ > 0
        if qR then
            local qR_1 = qM[(qO - 1) % #qM + 1]
            local qS = math.min(CropConfig.ContributeBatch(qQ), qQ)
            if qS > 0 then
                mY:FireServer(qR_1, v, qS)
                qP = true
                qO += 1
                task.wait(0.12)
            end
        end
    end
    return qP
end
local function fn287(dR)
    local sa = CropConfig.Buildings[dR]
    if not (sa and sa.Repair) then
        return nil
    end
    local sb_1 = {}
    if sa.Repair.Cash and sa.Repair.Cash > 0 then
        sb_1.Cash = sa.Repair.Cash
    end
    local sd = sa.Repair.Items or {}
    for k, v in sd do
        sb_1[k] = v
    end
    return sb_1
end
local function fn291()
    local pt = nq:Get("Cash") or 0
    return pt
end
local function fn292(cW, cX, cY, cZ, c_, c0)
    local Crops = cW:FindFirstChild("Crops")
    if Crops then
        for i, child in Crops:GetChildren() do
            local q__1 = child:GetAttribute("CellX")
            local attr = child:GetAttribute("CellZ")
            local q1_1 = child:GetAttribute("Section") or "S1"
            if q1_1 == cX and q__1 and attr then
                if cY <= q__1 and q__1 <= cY + c_ - 1 and cZ <= attr and attr <= cZ + c0 - 1 then
                    return true
                end
            end
        end
    end
    for k, v in { "Objects", "PreSpawned" } do
        local q__2 = cW:FindFirstChild(v)
        if q__2 then
            for i, child in q__2:GetChildren() do
                local q__3 = child:GetAttribute("CellX")
                local attr = child:GetAttribute("CellZ")
                local q1_4 = child:GetAttribute("W") or 1
                local q1_5 = child:GetAttribute("D") or 1
                local q1_6 = child:GetAttribute("Section") == cX and q__3
                if q1_6 and attr then
                    if cY <= q__3 + q1_4 - 1 and q__3 <= cY + c_ - 1 and cZ <= attr + q1_5 - 1 and attr <= cZ + c0 - 1 then
                        return true
                    end
                end
            end
        end
    end
    return false
end
local function fn298(fF)
    local DiscordGroup = fF:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = np })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = np })
end
local function fn342()
    local Plots = m3:FindFirstChild("Plots")
    local pr = Plots and Plots:FindFirstChild(mX.Name)
    return pr
end
local function fn346(K)
    if cloneref then
        return cloneref(K)
    end
    return K
end
local function fn362(a1, a2, a3)
    return string.format("<b>%s</b> %s %s", a1, nm("-", "#5a6070"), nm(a2, a3))
end
local function fn372()
    local s5 = nS("ShopItems")
    if next(s5) == nil then
        return false
    end
    local s6 = mW()
    local s7 = false
    for k, v in nj do
        local s8 = s5[v] and not nd(v) and not mL(v)
        if s8 then
            local s8_1 = ng(v)
            local s9 = type(s8_1) == "number" and s8_1 <= s6
            if s9 then
                mR:FireServer(v)
                s6 -= s8_1
                s7 = true
                task.wait(0.12)
            end
        end
    end
    return s7
end
local function worker2()
    while not Library.Unloaded do
        local vA = nr()
        local vB = false
        if vA then
            local vC_1 = m8("AutoHarvest") and nv(vA)
            if vC_1 then
                vB = true
            end
            local vC_2 = m8("AutoCollectMilk") and ns(vA)
            if vC_2 then
                vB = true
            end
            local vC_3 = m8("AutoFeedAnimals") and mV(vA)
            if vC_3 then
                vB = true
            end
            local vC_4 = m8("AutoStock") and nw(vA)
            if vC_4 then
                vB = true
            end
            local vC_5 = m8("AutoPlace") and mU(vA)
            if vC_5 then
                vB = true
            end
            local vC_6 = m8("AutoBuildFarm") and mS(vA)
            if vC_6 then
                vB = true
            end
            local vA_1 = m8("AutoBuyShop") and nU()
            if vA_1 then
                vB = true
            end
            local vA_2 = m8("AutoUpgradeBarn") and m_()
            if vA_2 then
                vB = true
            end
        end
        local wait = task.wait
        local vB_1 = vB and 0.2 or 0.45
        wait(vB_1)
    end
end
local function fn386()
    local pz = {}
    local pA = nq:Get("Inventory") or pz
    return pA.Metas or {}
end
local function fn439(eS)
    local th = eS.Cash or 0
    if th > mW() then
        return false
    end
    local ti = eS.Items or {}
    for k, v in ti do
        if nC(k) < v then
            return false
        end
    end
    return true
end
local function fn457()
    return nl
end
local function fn469(cc)
    local ql = nQ()
    if not ql then
        return false
    end
    ql.CFrame = CFrame.new(cc + Vector3.new(0, 3, 0))
    return true
end
local function worker()
    while Library and not Library.Unloaded do
        m4()
        task.wait(1)
    end
end
local function fn490(bN)
    local pF = CropConfig.Crops[bN] or CropConfig.Animals[bN] or CropConfig.Machines[bN]
    if not pF then
        return nil
    end
    if CropConfig.Animals[bN] or CropConfig.Machines[bN] then
        local pF_2 = 0
        local pH = {}
        local pI = nq:Get("PlacedObjects") or pH
        for k, v in pI do
            if v.Item == bN then
                pF_2 += 1
            end
        end
        for k, v in nM() do
            if v[1] == bN then
                pF_2 += 1
            end
        end
        return CropConfig.CopyCost(pF, pF_2)
    end
    return pF.Cost
end
local function fn494()
    nP(nh, "Copied Discord invite to clipboard")
end
local function fn519(d_, d0)
    for k, v in d_ do
        local so = d0[k]
        local sA = if so then 1 else 0
        local sy = 449 * sA + 3988 * (1 - sA)
        local sz = 1980 * sA + 3184 * (1 - sA)
        if not ((sy * 859 + sz * 3163 + sy * sz) % 16777213 == 7537451) then
            so = 0
        end
        local sp = so
        local sp_1
        local so_1 = v - sp
        if so_1 > 0 then
            if k == "Cash" then
                sp_1 = mW()
            else
                sp_1 = nC(k)
            end
            local sq = sp_1
            if sq > 0 then
                return k, math.min(CropConfig.ContributeBatch(v), so_1, sq)
            end
        end
    end
    return nil
end
local function fn539(at, au)
    return at.order < au.order
end
local function fn552(ds, du)
    local ry_1
    local rx_1
    local Land = ds:FindFirstChild("Land")
    if not Land then
        return nil
    end
    ry_1, rx_1 = ne(du)
    local rz = {}
    for i, child in Land:GetChildren() do
        if child:GetAttribute("Owned") then
            rz[#rz + 1] = child.Name
        end
    end
    table.sort(rz)
    for k, v in rz do
        local rw_1 = CropConfig.GridCells - ry_1 + 1
        local rP = 1
        while rP <= rw_1 do
            local rQ = rP
            local rw_2 = CropConfig.GridCells - rx_1 + 1
            local rU = 1
            while rU <= rw_2 do
                local rV = rU
                if not m2(ds, v, rQ, rV, ry_1, rx_1) then
                    return v, rQ, rV
                end
                rU += 1
            end
            rP += 1
        end
    end
    return nil
end
local function fn560(d8)
    local sH_1
    local sG_1
    local sF_3
    local sE_3
    local sB = false
    local Expand = d8:FindFirstChild("Expand")
    if Expand then
        local sD_1 = {}
        local sE_1 = nq:Get("ExpandContributions") or sD_1
        for i, child in Expand:GetChildren() do
            local sC_1 = ni(child.Name)
            if sC_1 then
                local sF_1 = sE_1[child.Name] or {}
                sE_3, sG_1 = mP(sC_1, sF_1)
                if sE_3 and sG_1 then
                    mI(child.Position)
                    nI:FireServer(child.Name, sE_3, sG_1)
                    sB = true
                    task.wait(0.12)
                end
            end
        end
    end
    local PreSpawned = d8:FindFirstChild("PreSpawned")
    if PreSpawned then
        local sD_3 = {}
        local sE_4 = nq:Get("BuildContributions") or sD_3
        for i, child in PreSpawned:GetChildren() do
            local Repair = child:FindFirstChild("Repair")
            if Repair then
                local sE_5 = nJ(child.Name)
                if sE_5 then
                    local sG_2 = sE_4[child.Name] or {}
                    sF_3, sH_1 = mP(sE_5, sG_2)
                    if sF_3 and sH_1 then
                        mI(Repair.Position)
                        nF:FireServer(child.Name, sF_3, sH_1)
                        sB = true
                        task.wait(0.12)
                    end
                end
            end
        end
    end
    return sB
end
local function fn623(bK)
    local pD = mJ()[bK] or 0
    return pD
end
local function fn628(dJ)
    local rX = CropConfig.Land[dJ]
    if not rX then
        return nil
    end
    local rY = {}
    if rX.Cash and rX.Cash > 0 then
        rY.Cash = rX.Cash
    end
    local rZ_1 = {}
    local r_ = rX.Items
    local r3 = if r_ then 1 else 0
    local r1 = 2203 * r3 + 1089 * (1 - r3)
    local r2 = 138 * r3 + 3531 * (1 - r3)
    if not ((r1 * 1513 + r2 * 2863 + r1 * r2) % 16777213 == 4032247) then
        r_ = rZ_1
    end
    for k, v in r_ do
        rY[k] = v
    end
    return rY
end
local function fn668(bi)
    local pb = Options[bi]
    local pc = pb and pb.Value
    if type(pc) ~= "table" then
        return {}
    end
    local pc_1 = {}
    for k, v in pc do
        if v == true then
            pc_1[k] = true
        end
    end
    return pc_1
end
local function fn670(b2)
    if not (CropConfig.Animals[b2] or CropConfig.Machines[b2]) then
        return false
    end
    local p1_1 = nq:Get("BarnLevel") or 1
    local p1_2 = CropConfig.CopyCap(b2, p1_1)
    local p2_1 = 0
    local p3 = {}
    local p4 = (nq:Get("PlacedObjects"))
    local p8 = if p4 then 1 else 0
    local p6 = 2596 * p8 + 1054 * (1 - p8)
    local p7 = 3058 * p8 + 2755 * (1 - p8)
    if not ((p6 * 2062 + p7 * 3138 + p6 * p7) % 16777213 == 6110311) then
        p4 = p3
    end
    for k, v in p4 do
        if v.Item == b2 then
            p2_1 += 1
        end
    end
    for k, v in nM() do
        if v[1] == b2 then
            p2_1 += 1
        end
    end
    return p2_1 >= p1_2
end
local function fn674()
    local pv = {}
    local pw = nq:Get("Inventory") or pv
    return pw.Generic or {}
end
local function fn686()
    local Character = mX.Character
    local po = Character and Character:FindFirstChild("HumanoidRootPart")
    return po
end
local function fn715(eq)
    local sY_1
    local sX_2
    for k, v in nM() do
        local sV = v[1]
        local sW = sV
        local sW_1
        if sW then
            local sX_1 = CropConfig.Crops[sV] or CropConfig.BuildableDef(sV)
            sW = sX_1
        end
        if sW then
            sY_1, sW_1, sX_2 = nE(eq, sV)
            if sY_1 then
                nO:FireServer(tostring(k), sY_1, sW_1, sX_2, 0)
                task.wait(0.15)
                return true
            end
        end
    end
    return false
end
local function fn742()
    local tq = (nq:Get("BarnLevel"))
    local tv = if tq then 1 else 0
    local tt = 636 * tv + 1512 * (1 - tv)
    local tu = 3041 * tv + 3916 * (1 - tv)
    if not ((tt * 2142 + tu * 1641 + tt * tu) % 16777213 == 8286669) then
        tq = 1
    end
    local tr = tq
    if tr >= (CropConfig.BarnMaxLevel or 0) then
        return false
    end
    local tq_2 = CropConfig.BarnLevels[tr + 1]
    local tr_1 = not tq_2 or not nD(tq_2)
    if tr_1 then
        return false
    end
    nx:FireServer()
    task.wait(0.2)
    return true
end
local function fn747(b_)
    if not CropConfig.Buildings[b_] then
        return false
    end
    local pZ = {}
    local p_ = nq:Get("PreSpawnedBuilt") or pZ
    return p_[b_] ~= true
end
local function fn774(fk)
    local tH = nS("FeedAnimals")
    if next(tH) == nil then
        return false
    end
    local Objects = fk:FindFirstChild("Objects")
    if not Objects then
        return false
    end
    local tJ = false
    for i, child in Objects:GetChildren() do
        local attr = child:GetAttribute("Item")
        if tH[attr] then
            local tK = nf.Items[attr]
            local tI_2 = tK and tK.Pen
            if tI_2 then
                for i, v in ipairs(tI_2.Inputs) do
                    local tI_3 = child:GetAttribute("Input" .. i) or 0
                    local tI_4 = v.Max - tI_3
                    local tK_3 = nC(v.Item)
                    if tI_4 > 0 and tK_3 > 0 then
                        local Deposit = child:FindFirstChild("Deposit")
                        if Deposit then
                            mI(Deposit.Position)
                        end
                        local tL_2 = math.min(CropConfig.ContributeBatch(v.Max), tI_4, tK_3)
                        nT:FireServer(child.Name, v.Item, tL_2)
                        tJ = true
                        task.wait(0.12)
                        break
                    end
                end
            end
        end
    end
    return tJ
end
local function fn813(a6, a7)
    if setclipboard then
        setclipboard(a6)
    elseif toclipboard then
        toclipboard(a6)
    end
    Library:Notify(a7)
end
mI = nil
mJ = nil
mK = nil
mL = nil
mM = nil
mP = nil
mR = nil
mS = nil
mU = nil
mV = nil
mW = nil
mX = nil
mY = nil
m_ = nil
m1 = nil
m2 = nil
m3 = nil
m4 = nil
m6 = nil
m8 = nil
Library = nil
nd = nil
ne = nil
nf = nil
ng = nil
nh = nil
ni = nil
nj = nil
nl = nil
nm = nil
CropConfig = nil
np = nil
nq = nil
nr = nil
ns = nil
local mG, mH, mN, mO, PlayerGui, mT, mZ, m0, m5, m7, na, nb, nc, nk, no
Options = nil
nv = nil
nw = nil
nx = nil
ny = nil
Toggles = nil
nB = nil
nC = nil
nD = nil
nE = nil
nF = nil
nI = nil
nJ = nil
nM = nil
local nN
nO = nil
nP = nil
nQ = nil
nS = nil
nT = nil
nU = nil
local nt, nz, nG, SaveManager, nK, ThemeManager, nR, nZ, n_, n1, n3
local n0_1
local nX_3, nX_4
local nW_1
local nY_6
mG, nW_1, nK, nG, nz, nt, nl, nc, na, m3, mX, PlayerGui, mK = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local nV = 3
repeat
    local nX_1 = (nV * 2 + 1) % 5 + 1
    if nX_1 <= 3 then
        if nX_1 <= 2 then
            if nX_1 <= 1 then
                local nY_1 = (vector.create((nV * 7 + 1) % 11 + 1, (nV * 6 + 9) % 13 + 1, (nV * 1 + 10) % 17 + 1))
                nZ = (vector.create((nV * 6 + 2) % 11 + 1, (nV * 8 + 11) % 13 + 1, (nV * 10 + 9) % 17 + 1))
                n_ = (vector.create((nV * 1 + 2) % 5 + 1, (nV * 1 + 4) % 7 + 1, (nV * 3 + 7) % 9 + 1))
                if math.abs((vector.angle(nY_1, nZ, n_))) - math.abs((vector.angle(nZ, nY_1, n_))) == 0 then
                    mX = mG.LocalPlayer
                    PlayerGui = mX:WaitForChild("PlayerGui")
                else
                    mG = PlayerGui.LocalPlayer
                    mX = mG:WaitForChild("PlayerGui")
                end
                nV = (nV + 18) % 20
            else
                if (nV * 1 + 7) * 5 % 4 == ((nV * 1 + 7) * 5 + 1) % 4 then
                    m3 = fn457
                else
                    mK = fn457
                end
                nV = (nV + 8) % 20
            end
        else
            local xP = bit32.rrotate(bit32.bxor(bit32.lrotate(nV, 1), string.byte(tostring(mK))), 25)
            if bit32.bxor(bit32.lrotate(bit32.bxor(xP, 4030764813), 30), 2081433027) == bit32.lrotate(xP, 30) then
                mG = game:GetService("Players")
            else
                mX = game:GetService("Players")
            end
            nV = (nV + 18) % 20
        end
    elseif nX_1 <= 4 then
        local nX_2 = (vector.create((nV * 7 + 2) % 11 + 1, (nV * 4 + 13) % 13 + 1, (nV * 5 + 8) % 17 + 1))
        local nY_2 = (vector.create((nV * 4 + 4) % 11 + 1, (nV * 4 + 13) % 13 + 1, (nV * 14 + 7) % 17 + 1))
        local w9 = vector.cross(nX_2, nY_2)
        local xa = vector.dot(nX_2, nY_2)
        if vector.dot(w9, w9) + xa * xa == vector.dot(nX_2, nX_2) * vector.dot(nY_2, nY_2) then
            nW_1 = game:GetService("ReplicatedStorage")
            nK = game:GetService("RunService")
            nG = game:GetService("UserInputService")
            nz = game:GetService("VirtualUser")
            nt = game:GetService("HttpService")
        else
            nz = game:GetService("ReplicatedStorage")
            nW_1 = game:GetService("RunService")
            nt = game:GetService("UserInputService")
            nG = game:GetService("VirtualUser")
            nK = game:GetService("HttpService")
        end
        nV = (nV + 3) % 20
    else
        if (nV * 1 + 4) * 5 % 4 == ((nV * 1 + 4) * 5 + 5) % 4 then
            m3 = game:GetService("CoreGui")
            na = game:GetService("GuiService")
            nl = game:GetService("TeleportService")
            nc = game:GetService("Workspace")
        else
            nl = game:GetService("CoreGui")
            nc = game:GetService("GuiService")
            na = game:GetService("TeleportService")
            m3 = game:GetService("Workspace")
        end
        nV = (nV + 8) % 20
    end
until (nV * 9 + 5) % 20 == 7
if getgenv then
    nN, nX_3 = nil, nil
    local nV_1 = 4
    repeat
        if (nV_1 * 1 + 0) % 2 + 1 <= 1 then
            local nY_4 = {
                "vlhy",
                "msarw",
                "oxztpaadf",
                "moho",
                "ekrdw",
                "ognnywrndokx",
                "jfcldf",
                "etkqacuqpzi",
                "qpnwdwsxmwg"
            }
            if nY_4[(nV_1 * 17 + 26) % 9 + 1] < nY_4[(nV_1 * 17 + 26) % 9 + 1] then
                getgenv().gethui = nN
                mK = getgenv().__OuroborosFarmersMarketLib
            else
                getgenv().gethui = mK
                nN = getgenv().__OuroborosFarmersMarketLib
            end
            nV_1 = (nV_1 + 5) % 8
        else
            local nY_5 = (vector.create((nV_1 * 5 + 7) % 11 + 1, (nV_1 * 5 + 8) % 13 + 1, (nV_1 * 7 + 17) % 17 + 1))
            nZ = (vector.create((nV_1 * 1 + 5) % 11 + 1, (nV_1 * 6 + 8) % 13 + 1, (nV_1 * 15 + 16) % 17 + 1))
            n_ = (vector.create((nV_1 * 3 + 9) % 11 + 1, (nV_1 * 2 + 13) % 13 + 1, (nV_1 * 6 + 2) % 17 + 1))
            if vector.dot(vector.cross(nY_5, nZ), n_) == vector.dot(vector.cross(nZ, n_), nY_5) + 3 then
                nN = nX_3
            else
                nX_3 = nN
            end
            nV_1 = (nV_1 + 7) % 8
        end
    until (nV_1 * 5 + 6) % 8 == 6
    if nX_3 then
        nX_3 = nN.Unload
    end
    if nX_3 then
        pcall(function()
            nN:Unload()
        end)
    end
end
pcall(function()
    gethui = mK
end)
if setthreadidentity then
    setthreadidentity(8)
end
no, nh, nb, m7, m0, mT, mN, mH, nR, nZ, nY_6, CropConfig, nf, nX_4, m6, mY, mR, mM, nT, nO, nI, nF, nx, nq, nj, n0_1, n_ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local nV_2 = 15
repeat
    n1 = (nV_2 * 4 + 2) % 13 + 1
    if n1 <= 7 then
        if n1 <= 4 then
            if n1 <= 2 then
                if n1 <= 1 then
                    local w3 = bit32.rrotate(bit32.bxor(bit32.lrotate(nV_2, 28), string.byte(tostring(nI))), 16)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(w3, 3656597455), 3425993870), (bit32.bxor(bit32.band(w3, 638369840), 2555881794))), 3425993870), 2555881794) ~= w3 then
                        nR = "#8b93a3"
                        mH = "#e05a5a"
                    else
                        mH = "#8b93a3"
                        nR = "#e05a5a"
                    end
                    nV_2 = (nV_2 + 10) % 52
                else
                    if nV_2 * 89741223 + 3 + 6 <= nV_2 * 89741223 + 3 + 6 + 1 then
                        n_ = fn346
                    else
                        m7 = fn346
                    end
                    nV_2 = (nV_2 + 10) % 52
                end
            elseif n1 <= 3 then
                local n2_1 = {
                    "vnvi",
                    "eyd",
                    "rrpoutemg",
                    "dasrr",
                    "usjc",
                    "nzuekmhjblvs",
                    "gvudf",
                    "fmoiqqdx",
                    "fsndkbws",
                    "vvc",
                    "myqlpcozjovd",
                    "hhhwmu",
                    "uddhmfki",
                    "lbrx",
                    "uhwsx"
                }
                if n2_1[(nV_2 * 48 + 66) % 15 + 1] <= n2_1[(nV_2 * 48 + 66) % 15 + 1] then
                    nZ = nW_1:WaitForChild("Shared")
                else
                    nW_1 = nZ:WaitForChild("Shared")
                end
                nV_2 = (nV_2 + 10) % 52
            else
                if (mH and not nf and (mH and nX_4) or (nR or nR or m0 and nR)) and not (mH and not nf and (mH and nX_4) or (nR or nR or m0 and nR)) then
                    nW_1 = nY_6:WaitForChild("Communication")
                else
                    nY_6 = nW_1:WaitForChild("Communication")
                end
                nV_2 = (nV_2 + 10) % 52
            end
        elseif n1 <= 6 then
            if n1 <= 5 then
                local n2_2 = {
                    "bqkzjnpr",
                    "jgpdpgtek",
                    "wbhvzinv",
                    "lrhafujkdcd",
                    "nmppj",
                    "tsfh",
                    "cwgy",
                    "pkifqfhvp",
                    "qrbeg",
                    "niyxq",
                    "khixglwsbnx",
                    "gymiryd",
                    "btpdvwv",
                    "srgwymdvtkpi",
                    "fbkezoi"
                }
                if n2_2[(nV_2 * 66 + 73) % 15 + 1] < n2_2[(nV_2 * 66 + 73) % 15 + 1] then
                    nf = require(CropConfig:WaitForChild("GS"):WaitForChild("CropConfig"))
                    nZ = require(CropConfig:WaitForChild("ItemData"))
                else
                    CropConfig = require(nZ:WaitForChild("GS"):WaitForChild("CropConfig"))
                    nf = require(nZ:WaitForChild("ItemData"))
                end
                nV_2 = (nV_2 + 49) % 52
            else
                if nV_2 * 103647979 + 8 + 2 >= nV_2 * 103647979 + 8 + 2 + 5 then
                    mX = require(nX_4:WaitForChild("PlayerScripts"):WaitForChild("Client"):WaitForChild("LocalDataStore"))
                else
                    nX_4 = require(mX:WaitForChild("PlayerScripts"):WaitForChild("Client"):WaitForChild("LocalDataStore"))
                end
                nV_2 = (nV_2 + 49) % 52
            end
        else
            local n2_3 = (vector.create((nV_2 * 3 + 1) % 11 + 1, (nV_2 * 9 + 9) % 13 + 1, (nV_2 * 10 + 16) % 17 + 1))
            n3 = (vector.create((nV_2 * 7 + 9) % 11 + 1, (nV_2 * 9 + 9) % 13 + 1, (nV_2 * 8 + 13) % 17 + 1))
            local n4_1 = (vector.create((nV_2 * 5 + 2) % 11 + 1, (nV_2 * 2 + 1) % 13 + 1, (nV_2 * 4 + 6) % 17 + 1))
            if vector.dot(vector.cross(n2_3, n3), n4_1) == vector.dot(vector.cross(n3, n4_1), n2_3) then
                m6 = n_(nY_6:WaitForChild("HarvestCrop"))
                mY = n_(nY_6:WaitForChild("SellSpotStock"))
            else
                mY = nY_6(n_:WaitForChild("HarvestCrop"))
                m6 = nY_6(n_:WaitForChild("SellSpotStock"))
            end
            nV_2 = (nV_2 + 49) % 52
        end
    elseif n1 <= 10 then
        if n1 <= 9 then
            if n1 <= 8 then
                if (nV_2 * 1 + 8) * 17 % 4 == ((nV_2 * 1 + 8) * 17 + 12) % 4 then
                    mR = n_(nY_6:WaitForChild("PlotShopBuy"))
                    mM = n_(nY_6:WaitForChild("PenCollect"))
                    nT = n_(nY_6:WaitForChild("PenDeposit"))
                    nO = n_(nY_6:WaitForChild("PlaceCrop"))
                else
                    nY_6 = mR(mM:WaitForChild("PlotShopBuy"))
                    nT = mR(mM:WaitForChild("PenCollect"))
                    nO = mR(mM:WaitForChild("PenDeposit"))
                    n_ = mR(mM:WaitForChild("PlaceCrop"))
                end
                nV_2 = (nV_2 + 10) % 52
            else
                local n2_4 = {
                    "qsrfmtecfen",
                    "ahfpnt",
                    "ycijwksfim",
                    "xazwf",
                    "wtswycuwo",
                    "ckcaqsvgyhz",
                    "sglmnqrsv",
                    "byrxizqe",
                    "llfmbzvbpi",
                    "zwbsn",
                    "fjtw"
                }
                local xi = nV_2
                n3 = n2_4[xi % 11 + 1]
                if n3:len() >= n3:reverse():rep(xi % 3 + 2):len() then
                    nx = nY_6(nI:WaitForChild("ExpandContribute"))
                    nq = nY_6(nI:WaitForChild("BuildContribute"))
                    nF = nY_6(nI:WaitForChild("BarnUpgrade"))
                    nX_4 = nj:Get()
                    n_ = {}
                else
                    nI = n_(nY_6:WaitForChild("ExpandContribute"))
                    nF = n_(nY_6:WaitForChild("BuildContribute"))
                    nx = n_(nY_6:WaitForChild("BarnUpgrade"))
                    nq = nX_4:Get()
                    nj = {}
                end
                nV_2 = (nV_2 + 23) % 52
            end
        else
            local n2_5 = { "htqgqrgi", "ndiou", "vdif", "dvdyecihehr", "wmjzf", "plwggu", "cvgybju", "lfcu", "ckdgurydtqb" }
            local xX = nV_2
            n3 = n2_5[xX % 9 + 1]
            if n3:len() >= n3:gsub("(.)", "%1%1", xX % 3 % 2 + 1):len() then
                nj = {}
            else
                n0_1 = {}
            end
            nV_2 = (nV_2 + 36) % 52
        end
    elseif n1 <= 12 then
        if n1 <= 11 then
            local xn = bit32.rrotate(bit32.bxor(bit32.lrotate(nV_2, 14), string.byte(tostring(mY))), 21)
            if bit32.bxor(bit32.lrotate(bit32.bxor(xn, 86511306), 22), 2994817539) ~= bit32.lrotate(xn, 22) then
                nh = "Farmers Market"
                no = "https://discord.gg/ehKVq7pf7v"
            else
                no = "Farmers Market"
                nh = "https://discord.gg/ehKVq7pf7v"
            end
            nV_2 = (nV_2 + 36) % 52
        else
            if (not nY_6 and m6 and (not nZ or not m6) and (nY_6 and CropConfig and (nZ or not CropConfig)) or ((not CropConfig or nR) and (not nR and not CropConfig) or not m6 and nR and (not nY_6 and CropConfig))) and not (not nY_6 and m6 and (not nZ or not m6) and (nY_6 and CropConfig and (nZ or not CropConfig)) or ((not CropConfig or nR) and (not nR and not CropConfig) or not m6 and nR and (not nY_6 and CropConfig))) then
                mT = "https://rscripts.net/@Ouroboros"
                nb = "https://ouroboros-hub-rbx.web.app/"
                m7 = "#7fd47f"
                m0 = "#6ec1ff"
            else
                nb = "https://rscripts.net/@Ouroboros"
                m7 = "https://ouroboros-hub-rbx.web.app/"
                m0 = "#7fd47f"
                mT = "#6ec1ff"
            end
            nV_2 = (nV_2 + 36) % 52
        end
    else
        n1 = (vector.create((nV_2 * 7 + 8) % 11 + 1, (nV_2 * 7 + 13) % 13 + 1, (nV_2 * 13 + 15) % 17 + 1))
        local n2_6 = (vector.create((nV_2 * 2 + 3) % 11 + 1, (nV_2 * 2 + 12) % 13 + 1, (nV_2 * 2 + 11) % 17 + 1))
        n3 = (vector.create((nV_2 * 2 + 6) % 11 + 1, (nV_2 * 4 + 1) % 13 + 1, (nV_2 * 5 + 11) % 17 + 1))
        local n4_2 = (vector.create((nV_2 * 1 + 5) % 11 + 1, (nV_2 * 10 + 5) % 13 + 1, (nV_2 * 10 + 11) % 17 + 1))
        if vector.dot(vector.cross(n1, n2_6), (vector.cross(n3, n4_2))) == vector.dot(n1, n3) * vector.dot(n2_6, n4_2) - vector.dot(n1, n4_2) * vector.dot(n2_6, n3) + 5 then
            nZ = "#e8a34d"
        else
            mN = "#e8a34d"
        end
        nV_2 = (nV_2 + 10) % 52
    end
until (nV_2 * 3 + 28) % 52 == 47
n1 = {}
for k, v in CropConfig.Crops do
    local nV_3 = #n1 + 1
    local nW_2 = v.Order or 0
    n1[nV_3] = { name = k, order = nW_2, group = 0 }
end
for k, v in CropConfig.Animals do
    local nV_4 = #n1 + 1
    local nW_3 = v.Order or 0
    n1[nV_4] = { name = k, order = nW_3, group = 1 }
end
for k, v in CropConfig.Machines do
    local nV_5 = #n1 + 1
    local nW_4 = v.Order or 0
    n1[nV_5] = { name = k, order = nW_4, group = 2 }
end
local nX_5 = 3
repeat
    local xN = bit32.rrotate(bit32.bxor(bit32.lrotate(nX_5, 20), string.byte(tostring(nX_5))), 13)
    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(xN, 2199933739), 3129362963), (bit32.bxor(bit32.band(xN, 2095033556), 1978313360))), 3129362963), 1978313360) == xN then
        table.sort(n1, fn3)
    else
        table.sort(n1, fn3)
    end
    nX_5 = (nX_5 + 2) % 8
until (nX_5 * 5 + 5) % 8 == 6
for k, v in n1 do
    nj[#nj + 1] = v.name
    local name = v.name
    local nW_5 = v.group == 0 and v.order <= 1
    n0_1[name] = nW_5
end
local nV_7 = {}
local nW_6 = {}
local nX_6 = {}
for k, v in CropConfig.Animals do
    local nY_7 = #nX_6 + 1
    nZ = v.Order or 0
    nX_6[nY_7] = { name = k, order = nZ }
end
table.sort(nX_6, fn539)
for k, v in nX_6 do
    nW_6[#nW_6 + 1] = v.name
    nV_7[v.name] = true
end
ny = {}
for k in CropConfig.Produce do
    ny[#ny + 1] = k
end
table.sort(ny)
nk, Library = nil, nil
nk = {}
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
if getgenv then
    getgenv().__OuroborosFarmersMarketLib = Library
end
ThemeManager, SaveManager, Toggles, Options, nB, nZ, mO, m4, nm, m5, nP, np, m8, nS, mZ, nQ, nr, mW, mJ, nM, nC, ng, nd, mL, mI, nv, m1, nw, m2, ne, nE, ni, nJ, mP, mS, mU, nU, nD, m_, ns, mV, n_ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
m4 = function()
    local function oW(aE)
        local oU = not aE or not aE:IsA("ScreenGui")
        if oU then
            return
        end
        aE.ResetOnSpawn = false
        aE.IgnoreGuiInset = true
        aE.DisplayOrder = math.max(aE.DisplayOrder, 1000)
        pcall(function()
            aE.ClipToDeviceSafeArea = false
        end)
        pcall(function()
            aE.ScreenInsets = Enum.ScreenInsets.None
        end)
        if aE.Parent ~= nl then
            aE.Parent = nl
        end
    end
    oW(Library.ScreenGui)
    if Library.ActiveLoading and Library.ActiveLoading.ScreenGui then
        oW(Library.ActiveLoading.ScreenGui)
    end
    for i, v in ipairs({ "Obsidian", "ObsidianLoading" }) do
        local oX_1 = nl:FindFirstChild(v) or PlayerGui:FindFirstChild(v)
        if oX_1 then
            oW(oX_1)
        end
    end
end
m4()
task.spawn(worker)
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
nm = fn60
m5 = fn362
nP = fn813
np = fn494
m8 = fn104
nS = fn668
mZ = fn8
nQ = fn686
nr = fn342
mW = fn291
mJ = fn674
nM = fn386
nC = fn623
ng = fn490
nd = fn747
mL = fn670
mI = fn469
nB = {}
nv = fn178
m1 = fn146
nw = fn232
m2 = fn292
ne = function(di)
    local rq_1
    local rp_1
    local ro_1
    ro_1, rp_1, rq_1 = pcall(function()
        return CropConfig.FootprintFor(di, 0)
    end)
    local rr = ro_1 and type(rp_1) == "number" and type(rq_1) == "number"
    if rr then
        return rp_1, rq_1
    end
    return 1, 1
end
nE = fn552
ni = fn628
nJ = fn287
if m2 and not m2 and (m2 and not m2) or (not n_ and not n_ or not n_ and not m2) or not (m2 and not m2 and (m2 and not m2) or (not n_ and not n_ or not n_ and not m2)) then
    mP = fn519
    mS = fn560
    mU = fn715
else
    mU = fn519
    mP = fn560
    mS = fn715
end
nU = fn372
nD = fn439
m_ = fn742
ns = fn26
mV = fn774
if (mO and mW and (mO or not mW) and (not mO and mO or (not mZ or not m5)) or (not mO or not mZ) and (mW and not mO) and (mZ and not m5 or (mZ or mW)) or ((not mO or not m5 or (mW or not mZ)) and ((not mO or m5) and (mO and not mW)) or (mZ and mO and (mW or not mZ) or mO and m5 and (mZ or mO)))) and not (mO and mW and (mO or not mW) and (not mO and mO or (not mZ or not m5)) or (not mO or not mZ) and (mW and not mO) and (mZ and not m5 or (mZ or mW)) or ((not mO or not m5 or (mW or not mZ)) and ((not mO or m5) and (mO and not mW)) or (mZ and mO and (mW or not mZ) or mO and m5 and (mZ or mO)))) then
    no = nh:CreateWindow({
        Icon = 78539693571783,
        ShowCustomCursor = false,
        Animations = { TabSwitch = true },
        Font = Enum.Font.BuilderSans,
        TabSwipeFrom = "bottom",
        Title = "Ouroboros",
        NotifySide = "Right",
        CornerRadius = 0,
        Footer = { Library, { Text = nZ, Copyable = true }, "|" }
    })
else
    nZ = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = nh, Copyable = true }, "|", no },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
end
mO = {
    Info = nZ:AddTab("Info", "info"),
    Main = nZ:AddTab("Main", "sprout"),
    Player = nZ:AddTab("Player", "person-standing"),
    Settings = nZ:AddTab("Settings", "settings")
}
n_ = fn298
for k, v in mO do
    if k ~= "Info" then
        n_(v)
    end
end
n1 = mO.Main:AddLeftGroupbox("Farm", "wheat")
n1:AddToggle("AutoHarvest", { Text = "Auto Harvest Crops", Default = false })
n1:AddToggle("AutoStock", { Text = "Auto Stock", Default = false })
n1:AddToggle("AutoPlace", { Text = "Auto Place", Default = false })
n1:AddToggle("AutoBuildFarm", { Text = "Auto Build Farm", Default = false })
nZ = mO.Main:AddLeftGroupbox("Shop", "store")
nZ:AddToggle("AutoBuyShop", { Text = "Auto Buy Shop", Default = false })
nZ:AddDropdown("ShopItems", {
    Text = "Shop Items",
    Values = nj,
    Default = n0_1,
    Multi = true,
    Expandable = true,
    ExpandColumns = 2
})
nZ:AddToggle("AutoUpgradeBarn", { Text = "Auto Upgrade Barn", Default = false })
local AnimalsGroup = mO.Main:AddRightGroupbox("Animals", "paw-print")
AnimalsGroup:AddToggle("AutoCollectMilk", { Text = "Auto Collect Milk", Default = false })
AnimalsGroup:AddToggle("AutoFeedAnimals", { Text = "Auto Feed Animals", Default = false })
AnimalsGroup:AddDropdown("FeedAnimals", {
    Text = "Animals",
    Values = nW_6,
    Default = nV_7,
    Multi = true,
    Expandable = true,
    ExpandColumns = 2
})
n_ = function()
    local uO
    local uN
    uN = nil
    uO = nil
    local Label, Label2, Label3, uS, uT
    local function uU()
        local tZ = hookfunction ~= nil
        local t_ = hookmetamethod ~= nil
        local t0 = getrawmetatable ~= nil
        local t1 = setrawmetatable ~= nil
        local t2 = getgc ~= nil
        local t3 = getgenv ~= nil
        local t4 = getreg ~= nil
        local t5 = getconnections ~= nil
        local t6 = firesignal ~= nil
        local t7 = getcallbackvalue ~= nil
        local t8 = setclipboard ~= nil
        local t9 = getcustomasset ~= nil
        local ua = getnamecallmethod ~= nil
        local ub = isexecutorclosure ~= nil
        local uc = fireproximityprompt ~= nil
        local ud = firetouchinterest ~= nil
        local ue = WebSocket ~= nil
        local uf = readfile ~= nil
        local ug = writefile ~= nil
        local ui = (request or http_request) ~= nil
        local uk = (debug and debug.getupvalues) ~= nil
        local um = (debug and debug.setupvalue) ~= nil
        local un = 0
        local uo = { tZ, t_, t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, ua, ub, uc, ud, ue, uf, ug, ui, uk, um }
        for i, v in ipairs(uo) do
            if v then
                un += 1
            end
        end
        local tZ_1 = un / #uo
        if tZ_1 >= 0.9 then
            return nm("Full Support", m0)
        elseif tZ_1 >= 0.6 then
            return nm("Half Support", mN)
        else
            return nm("Low Support", nR)
        end
    end
    uN = "Unknown"
    pcall(function()
        local uA_1
        local uz_1
        if identifyexecutor then
            uA_1, uz_1 = identifyexecutor()
            local uB = uA_1 ~= ""
            local uC = type(uA_1) == "string" and uB
            if uC then
                local uB_1 = type(uz_1) == "string" and uz_1 ~= "" and uA_1 .. " " .. uz_1
                uN = uB_1 or uA_1
            end
        end
    end)
    local uV = uU()
    uO = os.clock()
    uS = function()
        local uH = math.floor(os.clock() - uO)
        if uH < 60 then
            return uH .. "s"
        elseif uH < 3600 then
            return string.format("%dm %ds", uH // 60, uH % 60)
        else
            return string.format("%dh %dm", uH // 3600, uH % 3600 // 60)
        end
    end
    local UserGroup = mO.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = mX, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(m5("User", mX.DisplayName .. " @" .. mX.Name, m0), true)
    UserGroup:AddLabel(m5("UserId", tostring(mX.UserId), mT), true)
    UserGroup:AddLabel(m5("Executor", uN .. "  " .. uV, m0), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(m5("Session", uS(), mN), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            nP(mX.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            nP("https://www.roblox.com/users/" .. tostring(mX.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = mO.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(m5("Game", no, mT), true)
    Label2 = SessionGroup:AddLabel(m5("Players", "0/0", m0), true)
    uT = tostring(game.JobId)
    local uV_1 = #uT > 18 and string.sub(uT, 1, 18) .. "..."
    local uV_2 = uV_1 or uT
    SessionGroup:AddLabel(m5("Job", uV_2, mH), true)
    Label = SessionGroup:AddLabel(m5("Ping", "0 ms", mN), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            na:Teleport(game.PlaceId, mX)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            nP(uT, "Copied Job ID")
        end
    })
    task.spawn(function()
        local uK_1
        local uJ_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(m5("Session", uS(), mN))
            Label2:SetText(m5("Players", #mG:GetPlayers() .. "/" .. tostring(mG.MaxPlayers), m0))
            uJ_1, uK_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local uJ_2 = uJ_1 and uK_1 .. " ms" or "n/a"
            Label:SetText(m5("Ping", uJ_2, mN))
        end
    end)
    local SocialsGroup = mO.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = np })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            nP(nb, "Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            nP(m7, "Copied website link")
        end
    })
end
local function n2_7()
    local MovementGroup = mO.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = mO.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local CurrentCamera = m3.CurrentCamera
    local connection
    local function g4(g5)
        pcall(function()
            nc:SetGameplayPausedNotificationEnabled(not g5)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = nl:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not g5
            end
        end)
        if not g5 then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(mX, "GameplayPaused", false)
            else
                mX.GameplayPaused = false
            end
        end)
    end
    local function hi(hj)
        local u4 = if not hj:IsA("ProximityPrompt") then 1 else 0
        if u4 == 1 then
            return
        end
        hj.HoldDuration = 0
        hj.MaxActivationDistance = 50
        hj.RequiresLineOfSight = false
    end
    nK.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if m8("NoClip") then
            local Character = mX.Character
            if Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    local u5_1 = descendant:IsA("BasePart") and descendant.CanCollide
                    if u5_1 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    nG.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if m8("InfJump") then
            local vd = mZ()
            if vd then
                vd:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    nK.RenderStepped:Connect(function(hA)
        if Library.Unloaded then
            return
        end
        local vl = if m8("WalkSpeedEnabled") then 1 else 0
        if vl == 1 then
            local vf_1 = mZ()
            if vf_1 then
                vf_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if m8("Fly") then
            local vf_2 = nQ()
            local vg = mZ()
            if vf_2 and vg then
                vg.PlatformStand = true
                local vg_1 = Vector3.zero
                if nG:IsKeyDown(Enum.KeyCode.W) then
                    vg_1 += CurrentCamera.CFrame.LookVector
                end
                if nG:IsKeyDown(Enum.KeyCode.S) then
                    vg_1 -= CurrentCamera.CFrame.LookVector
                end
                if nG:IsKeyDown(Enum.KeyCode.A) then
                    vg_1 -= CurrentCamera.CFrame.RightVector
                end
                if nG:IsKeyDown(Enum.KeyCode.D) then
                    vg_1 += CurrentCamera.CFrame.RightVector
                end
                if nG:IsKeyDown(Enum.KeyCode.Space) then
                    vg_1 += Vector3.new(0, 1, 0)
                end
                if nG:IsKeyDown(Enum.KeyCode.LeftControl) then
                    vg_1 -= Vector3.new(0, 1, 0)
                end
                vf_2.Velocity = Vector3.zero
                if vg_1.Magnitude > 0 then
                    vf_2.CFrame = vf_2.CFrame + vg_1.Unit * Options.FlySpeed.Value * hA
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local vm = mZ()
            if vm then
                vm.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local vo = mZ()
            if vo then
                vo.WalkSpeed = 16
            end
        end
    end)
    Toggles.AntiGameplayPause:OnChanged(function()
        g4(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                g4(true)
            end
        end
    end)
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in ipairs(m3:GetDescendants()) do
                pcall(hi, descendant)
            end
            connection = m3.DescendantAdded:Connect(function(h5)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(hi, h5)
                end
            end)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    Library:OnUnload(function()
        g4(false)
        if connection then
            connection:Disconnect()
        end
    end)
end
n_()
n2_7()
task.spawn(worker2)
n3 = function()
    local MenuGroup = mO.Settings:AddLeftGroupbox("Menu")
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local iz = 0
    local iA = tick()
    local Label
    local function iC()
        local CurrentCamera = m3.CurrentCamera
        if not CurrentCamera then
            return
        end
        nz:CaptureController()
        nz:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        iz += 1
        iA = tick()
        if Label then
            pcall(function()
                Label:SetText("AFK triggers: " .. iz)
            end)
        end
    end
    local connection = mX.Idled:Connect(function()
        if m8("AntiAfk") then
            pcall(iC)
        end
    end)
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    Label = MenuGroup:AddLabel("AFK triggers: 0")
    MenuGroup:AddButton({
        Text = "Unload UI",
        Func = function()
            Library:Unload()
        end
    })
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local vH = m8("AntiAfk") and tick() - iA >= 60
            if vH then
                pcall(iC)
            end
        end
    end)
    Library:OnUnload(function()
        if connection then
            connection:Disconnect()
        end
        for k, v in nk do
            local vP = v
            pcall(function()
                vP:Disconnect()
            end)
        end
        table.clear(nk)
        if getgenv then
            getgenv().__OuroborosFarmersMarketLib = nil
        end
    end)
    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder("OuroborosHub")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    ThemeManager:ApplyToTab(mO.Settings)
    ThemeManager:LoadDefault()
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    SaveManager:SetFolder("OuroborosHub/FarmersMarket")
    local i3 = SaveManager:BuildConfigSection(mO.Settings)
    local function i4(i5, i6)
        local vR = i5 == "Toggle" and Toggles
        local vW = if vR then 1 else 0
        local vU = 3466 * vW + 1332 * (1 - vW)
        local vV = 2036 * vW + 1728 * (1 - vW)
        if not ((vU * 1677 + vV * 3035 + vU * vV) % 16777213 == 2271305) then
            vR = Options
        end
        local vR_1 = vR[i6]
        local vQ_2 = type(vR_1) == "table" and vR_1.Type == i5
        return vQ_2 and vR_1 or nil
    end
    local function jd(je, jf)
        local Type = jf.Type
        if Type == "Toggle" then
            return { idx = je, type = "Toggle", value = jf.Value == true }
        elseif Type == "Slider" then
            return { idx = je, type = "Slider", value = tostring(jf.Value) }
        elseif Type == "Dropdown" then
            return { idx = je, type = "Dropdown", multi = jf.Multi == true, value = jf.Value }
        elseif Type == "Input" then
            local vY = jf.Value or ""
            return { idx = je, type = "Input", text = tostring(vY) }
        elseif Type == "ColorPicker" then
            return { idx = je, type = "ColorPicker", value = jf.Value:ToHex(), transparency = jf.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = je,
                type = "KeyPicker",
                mode = jf.Mode,
                key = jf.Value,
                modifiers = jf.Modifiers,
                toggled = jf.Toggled
            }
        else
            return nil
        end
    end
    local function jh()
        local v0 = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local v1 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if v1 then
                    local v1_1 = jd(k, v)
                    if v1_1 then
                        v0[#v0 + 1] = v1_1
                    end
                end
            end
        end
        table.sort(v0, function(jr, js)
            if jr.type ~= js.type then
                return jr.type < js.type
            end
            return jr.idx < js.idx
        end)
        return { objects = v0 }
    end
    local function jt(ju)
        local wk
        wk = nil
        local wl = type(ju) ~= "table"
        local wp = if wl then 1 else 0
        local wn = 2497 * wp + 3430 * (1 - wp)
        local wo = 3275 * wp + 986 * (1 - wp)
        if not ((wn * 1723 + wo * 602 + wn * wo) % 16777213 == 14451556) then
            wl = type(ju.idx) ~= "string"
        end
        if not wl then
            wl = type(ju.type) ~= "string"
        end
        if not wl then
            wl = SaveManager.Ignore[ju.idx]
        end
        if wl then
            return false
        end
        wk = i4(ju.type, ju.idx)
        if not wk then
            return false
        end
        local wl_1 = pcall(function()
            if ju.type == "Input" then
                if type(ju.text) ~= "string" then
                    return
                end
                wk:SetValue(ju.text)
            elseif ju.type == "ColorPicker" then
                wk:SetValueRGB(Color3.fromHex(ju.value), ju.transparency)
            elseif ju.type == "KeyPicker" then
                wk:SetValue({ ju.key, ju.mode, ju.modifiers })
                if ju.mode == "Toggle" and ju.toggled ~= nil then
                    wk.Toggled = ju.toggled
                    wk:Update()
                end
            else
                wk:SetValue(ju.value)
            end
        end)
        return wl_1
    end
    i3:AddDivider()
    i3:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    i3:AddButton({
        Text = "Export Config to Clipboard",
        Func = function()
            local wr_1
            local wq_1
            wq_1, wr_1 = pcall(nt.JSONEncode, nt, jh())
            if not wq_1 then
                Library:Notify("Failed to encode the config")
                return
            end
            local wq_2 = setclipboard or toclipboard
            local wq_3 = type(wq_2) ~= "function" or not pcall(wq_2, wr_1)
            if wq_3 then
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Config copied to clipboard", 6)
        end
    })
    i3:AddButton({
        Text = "Import Config from Clipboard Text",
        Func = function()
            local ww_1
            local wu = Options.SaveManager_ImportSource.Value or ""
            local wu_1
            local wv = tostring(wu):match("^%s*(.-)%s*$")
            if wv == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            wu_1, ww_1 = pcall(nt.JSONDecode, nt, wv)
            local wv_1 = not wu_1 or type(ww_1) ~= "table" or type(ww_1.objects) ~= "table"
            if wv_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            local wu_2 = 0
            for i, v in ipairs(ww_1.objects) do
                if jt(v) then
                    wu_2 += 1
                end
            end
            if wu_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local ww_2 = wu_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(wu_2, ww_2), 6)
        end
    })
    SaveManager:LoadAutoloadConfig()
end
n3()
