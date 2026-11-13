local n7
local nq
local nP
local oa
local nS
local nz
local nC
local nj
local n0
local nF
local oo
local nI
local ot
local nL
local n6
local np
local ns
local nO
local ow
local nR
local oc
local nv
local nU
local Workspace
local nf
local nX
local nc
local ni
local nE
local Library
local n_
local nl
local oq
local no
local oi
local nr
local n2
local SetSetting
local ob
local nx
local Options
local oe
local ne
local oh
local nh
local Toggles
local ol
local nG
local op
local nn
local n4
local ou
local nM
local function fn5(cv)
    local attr = cv:GetAttribute("Rarity")
    local qV = ot(cv)
    if oe("SellPetRarities") then
        local qW = nG("SellPetRarities")
        local qX = type(attr) ~= "string"
        local q0 = if qX then 1 else 0
        local qZ = 924 * q0 + 2040 * (1 - q0)
        local q_ = 3978 * q0 + 2491 * (1 - q0)
        if not ((qZ * 554 + q_ * 2440 + qZ * q_) % 16777213 == 13893888) then
            qX = not qW[attr]
        end
        if qX then
            return false
        end
        local q3 = if oe("SellPetMutations") then 1 else 0
        if q3 == 1 then
            local qU_1 = nG("SellPetMutations")
            if not qU_1[qV] then
                return false
            end
            return true
        end
        return true
    end
    return false
end
local function fn14(cC)
    local q4 = not cC or not cC:IsA("Model")
    if q4 then
        return false
    end
    return cC:GetAttribute("IsEgg") == true
end
local function worker()
    local vH = 0
    local vI = 0
    local vJ = 0
    local vK = 0
    while not Library.Unloaded do
        local vL = n_()
        if vL then
            if nz("AutoSkipNaming") then
                pcall(no)
            end
            local vM = nz("DisableNamingPrompts") and nq:GetAttribute("SettingPromptNaming") ~= false
            if vM then
                pcall(function()
                    nq:SetAttribute("SettingPromptNaming", false)
                    SetSetting:FireServer("PromptNaming", false)
                end)
            end
            if nz("AutoCollectMoney") then
                pcall(nL, vL)
            end
            if nz("AutoIncubateEggs") then
                pcall(nh, vL)
            end
            if nz("AutoBuyIncubators") then
                pcall(nU, vL)
            end
            if nz("AutoUpgradeBase") then
                pcall(n7, vL)
            end
            local vM_1 = os.clock()
            local vN = nz("AutoBuyEgg") and vM_1 - vK >= 1.25
            if vN then
                if nX() then
                    vK = vM_1
                else
                    vK = vM_1 - 0.6
                end
            end
            local vN_1 = (nz("AutoRoll"))
            if vN_1 then
                local vO_1 = vM_1 - vJ
                local vP_1 = tonumber(oh("RollDelay", 1.5)) or 1.5
                vN_1 = vO_1 >= vP_1
            end
            if vN_1 then
                if nE(vL) then
                    vJ = vM_1
                end
            end
            local vN_2 = (nz("AutoSellPets"))
            if vN_2 then
                local vO_2 = vM_1 - vI
                local vP_2 = tonumber(oh("SellDelay", 1)) or 1
                vN_2 = vO_2 >= vP_2
            end
            if vN_2 then
                if nf(vL) then
                    vI = vM_1
                end
            end
            local vL_1 = nz("SyncGameAutoSell") and vM_1 - vH >= 5
            if vL_1 then
                pcall(nr)
                vH = vM_1
            end
        end
        task.wait(0.35)
    end
end
local function fn23(cd)
    local attr = cd:GetAttribute("Mutation")
    local qF = attr == ""
    local qG = type(attr) ~= "string" or qF
    if qG then
        return "None"
    end
    return attr
end
local function fn32(bf)
    local pU = nR()
    if not (pU and bf) then
        return false
    elseif typeof(bf) == "CFrame" then
        pU.CFrame = bf + Vector3.new(0, 3, 0)
        return true
    elseif typeof(bf) == "Vector3" then
        local pV_2 = CFrame.new(bf)
        pU.CFrame = pV_2 + Vector3.new(0, 3, 0)
        return true
    elseif bf:IsA("Model") then
        local pivot = bf:GetPivot()
        pU.CFrame = pivot + Vector3.new(0, 3, 0)
        return true
    elseif bf:IsA("BasePart") then
        local CFrame = bf.CFrame
        pU.CFrame = CFrame + Vector3.new(0, 3, 0)
        return true
    else
        return false
    end
end
local function fn63(al)
    if Library.Unloaded then
        return false
    end
    local o3 = Toggles[al]
    return o3 ~= nil and o3.Value == true
end
local function fn98()
    local s8 = {}
    for k, v in n2(true) do
        local s9 = v.model.Parent and not nx(v.model) and n4(v.model)
        if s9 then
            s8[#s8 + 1] = v
        end
    end
    if #s8 == 0 then
        return false
    end
    table.sort(s8, function(e6, e7)
        local s4 = tonumber(e6.model:GetAttribute("Price")) or 0
        local s4_1 = tonumber(e7.model:GetAttribute("Price")) or 0
        if s4 ~= s4_1 then
            return s4 < s4_1
        elseif e6.mine ~= e7.mine then
            return e6.mine == true
        else
            return false
        end
    end)
    return oo(s8[1], true)
end
local function fn105()
    local Character = nq.Character
    local rS = Character and Character:FindFirstChildOfClass("Tool")
    local rR_1 = rS
    if rS then
        rS = rR_1:GetAttribute("AnimalId")
    end
    if rS then
        rS = rR_1:GetAttribute("UID")
    end
    if rS then
        return rR_1
    end
    return nil
end
local function fn107(d5)
    local sr = d5 and d5:FindFirstChild("Runtime")
    local ss = sr
    if sr then
        sr = ss:FindFirstChild("ButtonTemplate")
    end
    return sr
end
local function fn124(gf)
    local DiscordGroup = gf:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = np })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = np })
end
local function fn150(fn)
    local tn = nI(fn)
    if not tn then
        return false
    end
    local to = ow(fn)
    if to > oq() then
        return false
    end
    return n0(tn)
end
local function fn204(aE)
    return next(nG(aE)) ~= nil
end
local function fn235(bF)
    local qg = nn(bF)
    local qh = qg and qg:FindFirstChild("OtherImportant")
    local qg_1 = qh
    if qh then
        qh = qg_1:FindFirstChild("CashPart")
    end
    local qg_2 = qh
    if not qg_2 then
        return nil
    end
    local qh_1 = qg_2:FindFirstChild("CilinderTouch") or qg_2:FindFirstChildWhichIsA("BasePart", true)
    return qh_1
end
local function fn250(bt)
    if not bt then
        return false
    end
    op(bt)
    if fireproximityprompt then
        pcall(fireproximityprompt, bt)
        return true
    end
    return false
end
local function fn265(cL, cM)
    local q8 = (cL:GetAttribute("UID"))
    local re = if q8 then 1 else 0
    local rc = 1202 * re + 3801 * (1 - re)
    local rd = 3162 * re + 3268 * (1 - re)
    if not ((rc * 2220 + rd * 2315 + rc * rd) % 16777213 == 13789194) then
        q8 = cL:GetFullName()
    end
    local q9 = q8
    local q8_1 = os.clock()
    local ra = cM or 8
    oi[q9] = q8_1 + ra
end
local function fn286(eK, eL)
    local s1_1
    local s0 = not eK or not eK.model or not eK.model.Parent
    local s0_1
    if s0 then
        return false
    end
    s0_1, s1_1 = ns(eK.model)
    if not s0_1 then
        return false
    end
    local s0_2 = s1_1 or eK.prompt
    if not s0_2 or not s0_2.Parent then
        return false
    end
    if not eL then
        local BasePart = eK.model:FindFirstChildWhichIsA("BasePart", true)
        if BasePart then
            oc(BasePart)
            task.wait(0.12)
        end
    end
    op(s0_2)
    local Parent = eK.model.Parent
    local s2 = n0(s0_2)
    task.wait(0.2)
    if eK.model.Parent == Parent then
        oa(eK.model, 10)
        return false
    end
    return s2
end
local function fn292(dU)
    local sh = {}
    local si = nn(dU)
    local sj = si and si:FindFirstChild("WaitingZones")
    if not sj then
        return sh
    end
    for i, child in sj:GetChildren() do
        local si_2 = child.Name:match("^incubator%d+$") and child:GetAttribute("HatchBusy") ~= true
        if si_2 then
            local si_3 = nC(child, "Incubate Egg")
            if si_3 then
                sh[#sh + 1] = { zone = child, prompt = si_3, part = child:FindFirstChild("ProxPart") }
            end
        end
    end
    return sh
end
local function fn302(bk, bl)
    if not bk then
        return nil
    end
    for i, descendant in bk:GetDescendants() do
        if descendant:IsA("ProximityPrompt") then
            if not bl or descendant.ActionText == bl then
                return descendant
            end
        end
    end
    return nil
end
local function fn320(cF)
    if not nM(cF) then
        return false
    elseif cF:GetAttribute("DisplayGround") == nil then
        return false
    else
        local q6 = nC(cF, "Buy")
        if not q6 then
            return false
        end
        return true, q6
    end
end
local function fn338(bO)
    local qj = nn(bO)
    local qk = qj and qj:FindFirstChild("OtherImportant")
    local qj_1 = qk
    if qk then
        qk = qj_1:FindFirstChild("ExpandSign")
    end
    return qk
end
local function fn344(ea)
    if not ea then
        return math.huge
    end
    for i, descendant in ea:GetDescendants() do
        if descendant:IsA("TextLabel") then
            local su = descendant.Text or ""
            local su_1 = su:find("%$") or su:upper():find("[KMB]")
            if su_1 then
                local su_2 = ne(su)
                if su_2 > 0 then
                    return su_2
                end
            end
        end
    end
    return math.huge
end
local function fn347()
    return nP
end
local function fn375(bV)
    local qm = nc(bV)
    local qn = nC(qm, "Upgrade Base") or nC(qm, "Expand")
    return qn
end
local function fn376(ei)
    local sD = ei
    local sE = {}
    if sD then
        sD = ei:FindFirstChild("Runtime")
    end
    local sF = sD
    if not sF then
        return sE
    end
    for i, child in sF:GetChildren() do
        local sD_1 = child:IsA("Model") and child:GetAttribute("UID") and child:GetAttribute("IsEgg") ~= true
        if sD_1 then
            local sD_2 = not child.Name:find("Egg", 1, true) and child.Name ~= "ButtonTemplate" and child.Name ~= "ghostcubator"
            if sD_2 then
                sE[#sE + 1] = child
            end
        end
    end
    return sE
end
local function fn431(fv)
    local tt = ni(fv)
    if #tt == 0 then
        return false
    end
    local tu = tonumber(nq:GetAttribute("PetCount")) or 0
    local tu_1 = tonumber(nq:GetAttribute("PetCapacity")) or 0
    if tu_1 > 0 and tu >= tu_1 then
        return false
    end
    local tu_3 = ol()
    if not tu_3 then
        return false
    end
    local tu_4 = tt[1]
    if tu_4.part then
        oc(tu_4.part)
        task.wait(0.15)
    end
    return n0(tu_4.prompt)
end
local function fn446(fc)
    local th = nl(fc)
    if not th then
        return false
    end
    local ti = ob(th)
    if ti > oq() then
        return false
    end
    local ti_1 = th:FindFirstChild("Cilinder") or th:FindFirstChildWhichIsA("BasePart", true)
    if not ti_1 then
        return false
    end
    local ti_2 = nR()
    if not ti_2 then
        return false
    end
    ti_2.CFrame = CFrame.new(ti_1.Position)
    task.wait(0.35)
    return true
end
local function fn455(ad, ae)
    return string.format('<font color="%s">%s</font>', ae, ad)
end
local function fn484()
    nO(nS, "Copied Discord invite to clipboard")
end
local function fn507(ag, ah, ai)
    return string.format("<b>%s</b> %s %s", ag, ou("-", "#5a6070"), ou(ah, ai))
end
local function fn523(ch)
    local qL = ch:GetAttribute("Rarity") or ch:GetAttribute("RevealRarity")
    local qL_12, qL_13
    local qM_4
    local qL_1 = ot(ch)
    local qN = tonumber(ch:GetAttribute("Price")) or 0
    local qT = if oe("BuyEggRarities") then 1 else 0
    if qT == 1 then
        local qN_1 = nG("BuyEggRarities")
        local qP = type(qL) ~= "string"
        local qT_1 = if qP then 1 else 0
        local qR_1 = 3971 * qT_1 + 2506 * (1 - qT_1)
        local qS_1 = 3826 * qT_1 + 545 * (1 - qT_1)
        if not ((qR_1 * 3803 + qS_1 * 421 + qR_1 * qS_1) % 16777213 == 15128292) then
            qP = not qN_1[qL]
        end
        if qP then
            return false
        elseif oe("BuyEggMutations") then
            nG("BuyEggMutations")
            if not qM_4[qL_1] then
                return false
            end
            local qL_2 = (tonumber(oh("BuyEggMaxPrice", 0)))
            if qL_12 then
                return false
            end
            local qL_4 = nz("BuyEggSkipUnaffordable") and qN > oq()
            if qL_13 then
                return false
            end
            return true
        else
            local qL_5 = (tonumber(oh("BuyEggMaxPrice", 0)))
            if qL_12 then
                return false
            end
            local qL_7 = nz("BuyEggSkipUnaffordable") and qN > oq()
            if qL_13 then
                return false
            end
            return true
        end
    elseif oe("BuyEggMutations") then
        qM_4 = nG("BuyEggMutations")
        if not qM_4[qL_1] then
            return false
        end
        local qL_8 = (tonumber(oh("BuyEggMaxPrice", 0)))
        if qL_12 then
            return false
        end
        local qL_10 = nz("BuyEggSkipUnaffordable") and qN > oq()
        if qL_13 then
            return false
        end
        return true
    else
        local qL_11 = (tonumber(oh("BuyEggMaxPrice", 0)))
        local qT_5 = if qL_11 then 1 else 0
        local qR_5 = 1751 * qT_5 + 2177 * (1 - qT_5)
        local qS_5 = 1597 * qT_5 + 631 * (1 - qT_5)
        if not ((qR_5 * 1278 + qS_5 * 969 + qR_5 * qS_5) % 16777213 == 6581618) then
            qL_11 = 0
        end
        local qM_6 = qL_11
        qL_12 = qM_6 > 0 and qN > qM_6
        if qL_12 then
            return false
        end
        qL_13 = nz("BuyEggSkipUnaffordable") and qN > oq()
        if qL_13 then
            return false
        end
        return true
    end
end
local function fn546(cX, cY)
    local ri = cX
    local ri_4
    local rj = {}
    if ri then
        ri = cX:FindFirstChild("Runtime")
    end
    local rk = ri
    local rk_1
    if not rk then
        return rj
    end
    local attr = cX:GetAttribute("OwnerUserId")
    local rl = attr == nq.UserId
    if cY and not rl then
        return rj
    end
    local ri_3 = not cY
    if ri_3 ~= false then
        ri_3 = rl
    end
    if ri_3 then
        return rj
    end
    for i, child in rk:GetChildren() do
        ri_4, rk_1 = ns(child)
        if ri_4 then
            rj[#rj + 1] = { model = child, prompt = rk_1 }
        end
    end
    return rj
end
local function fn570()
    local Character = nq.Character
    local pn = Character and Character:FindFirstChildOfClass("Humanoid")
    return pn
end
local function fn581(a_)
    local py_1
    local pz_1
    if type(a_) == "number" then
        return a_
    elseif type(a_) ~= "string" then
        return 0
    else
        local px = a_:gsub("[%$,%s]", ""):upper()
        pz_1, py_1 = px:match("^([%d%.]+)([KMB]?)$")
        local pz_2 = tonumber(pz_1)
        if not pz_2 then
            return 0
        elseif py_1 == "K" then
            return pz_2 * 1000
        elseif py_1 == "M" then
            return pz_2 * 1000000
        elseif py_1 == "B" then
            return pz_2 * 1000000000
        else
            return pz_2
        end
    end
end
local function fn633(ar, as)
    local o6 = Options[ar]
    if o6 == nil then
        return as
    end
    return o6.Value
end
local function fn655(da)
    local rx = {}
    local Map = Workspace:FindFirstChild("Map")
    if not Map then
        return rx
    end
    for i, child in Map:GetChildren() do
        local ry_1 = child:GetAttribute("OwnerUserId") == nq.UserId
        local rz = not ry_1
        local rz_2
        local rA = da or rz
        local rA_1
        if rA then
            local Runtime = child:FindFirstChild("Runtime")
            if Runtime then
                for i, child in Runtime:GetChildren() do
                    rz_2, rA_1 = ns(child)
                    if rz_2 then
                        rx[#rx + 1] = { model = child, prompt = rA_1, mine = ry_1 }
                    end
                end
            end
        end
    end
    return rx
end
local function fn705(er)
    local sN = nz("StopRollIfIncubatorsBusy") and #ni(er) == 0
    if sN then
        return false
    end
    local sN_1 = nF(er)
    local sO = not sN_1
    local sT = if sO then 1 else 0
    local sR = 210 * sT + 3462 * (1 - sT)
    local sS = 46 * sT + 3261 * (1 - sT)
    if not ((sR * 335 + sS * 666 + sR * sS) % 16777213 == 110646) then
        sO = not sN_1.Enabled
    end
    if sO then
        return false
    end
    local Parent = sN_1.Parent
    local sP = Parent and Parent:IsA("BasePart")
    if sP then
        oc(Parent)
        task.wait(0.1)
    end
    return n0(sN_1)
end
local function fn707(ba)
    if not ba then
        return nil
    end
    for i, child in ba:GetChildren() do
        local pM = child:IsA("Model") and child.Name:match("^BaseLevel%d+$")
        if pM then
            return child
        end
    end
    return nil
end
local function fn714()
    local Map = Workspace:FindFirstChild("Map")
    if not Map then
        return nil
    end
    for i, child in Map:GetChildren() do
        if child:GetAttribute("OwnerUserId") == nq.UserId then
            return child
        end
    end
    return nil
end
local function fn737(eD)
    local sU = n6(eD)
    local sV = nR()
    if not (sU and sV) then
        return false
    elseif firetouchinterest then
        pcall(firetouchinterest, sV, sU, 0)
        task.wait()
        pcall(firetouchinterest, sV, sU, 1)
        return true
    else
        return oc(sU)
    end
end
local function fn825(cR)
    local rf = cR:GetAttribute("UID") or cR:GetFullName()
    local rf_1 = oi[rf]
    if not rf_1 then
        return false
    elseif os.clock() >= rf_1 then
        oi[rf] = nil
        return false
    else
        return true
    end
end
local function fn844(W, X)
    if setclipboard then
        setclipboard(W)
    elseif toclipboard then
        toclipboard(W)
    end
    Library:Notify(X)
end
local function fn884()
    local rX = nv()
    if rX then
        return rX
    end
    local Character = nq.Character
    local Backpack = nq:FindFirstChild("Backpack")
    if Backpack then
        for i, child in Backpack:GetChildren() do
            local rY_1 = child:IsA("Tool") and child:GetAttribute("AnimalId") and child:GetAttribute("UID")
            if rY_1 then
                return child
            end
        end
    end
    if Character then
        for i, child in Character:GetChildren() do
            local rX_2 = child:IsA("Tool") and child:GetAttribute("AnimalId") and child:GetAttribute("UID")
            if rX_2 then
                return child
            end
        end
    end
    return nil
end
local function fn923(aw)
    local o8 = oh(aw, {})
    if typeof(o8) ~= "table" then
        return {}
    end
    local o9 = {}
    for k, v in o8 do
        if v == true then
            o9[k] = true
        else
            local o8_1 = typeof(k) == "number" and typeof(v) == "string"
            if o8_1 then
                o9[v] = true
            end
        end
    end
    return o9
end
local function fn925(b0)
    local qp = nc(b0)
    if not qp then
        return math.huge
    end
    for i, descendant in qp:GetDescendants() do
        local qq_1 = descendant:IsA("TextLabel") and descendant.Name == "Price"
        if qq_1 then
            local qq_2 = ne(descendant.Text)
            if qq_2 > 0 then
                return qq_2
            end
        end
    end
    for i, descendant in qp:GetDescendants() do
        if descendant:IsA("TextLabel") then
            local qp_1 = descendant.Text or ""
            if qp_1:find("%$") then
                local qp_2 = ne(qp_1)
                if qp_2 > 0 then
                    return qp_2
                end
            end
        end
    end
    return math.huge
end
local function fn943(bw)
    local qd = nn(bw)
    local qe = qd and qd:FindFirstChild("OtherImportant")
    local qd_1 = qe
    if qe then
        qe = qd_1:FindFirstChild("LeverModel")
    end
    local qd_2 = qe
    return nC(qd_2, "Roll"), qd_2
end
local function fn944()
    local Character = nq.Character
    local pk = Character and Character:FindFirstChild("HumanoidRootPart")
    return pk
end
nc = nil
ne = nil
nf = nil
nh = nil
ni = nil
nj = nil
nl = nil
nn = nil
no = nil
np = nil
nq = nil
nr = nil
ns = nil
nv = nil
nx = nil
Workspace = nil
nz = nil
nC = nil
nE = nil
nF = nil
nG = nil
nI = nil
nL = nil
nM = nil
nO = nil
nP = nil
SetSetting = nil
nR = nil
nS = nil
Options = nil
nU = nil
nX = nil
local nb, nd, ng, nk, nm, nt, nu, nw, nA, TeleportService, nD, nH, nJ, SetAutoSell, nN, nV, SellPet, nY
Toggles = nil
n_ = nil
n0 = nil
n2 = nil
n4 = nil
n6 = nil
n7 = nil
oa = nil
ob = nil
oc = nil
oe = nil
oh = nil
oi = nil
ol = nil
Library = nil
oo = nil
op = nil
oq = nil
ot = nil
ou = nil
local ov
ow = nil
local n1, NumberUtil, n5, SaveManager, n9, od, ThemeManager, oj
local oy_1
local oz_3
nb, oy_1, oj, n9, n1, nV, nP, nH, TeleportService, Workspace, nq, nj = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local ox = 13
local ox_4
repeat
    local oz_1 = (ox * 2 + 1) % 5 + 1
    if oz_1 <= 3 then
        if oz_1 <= 2 then
            if oz_1 <= 1 then
                local xm = bit32.rrotate(bit32.bxor(bit32.lrotate(ox, 15), string.byte(tostring(nq))), 10)
                if bit32.bxor(bit32.lrotate(bit32.bxor(xm, 446651432), 28), 2175399362) ~= bit32.lrotate(xm, 28) then
                    oj = game:GetService("TeleportService")
                else
                    TeleportService = game:GetService("TeleportService")
                end
                ox = (ox + 8) % 20
            else
                local oA_1 = {
                    "kslbplmxnrn",
                    "koxuy",
                    "dyjaeprebh",
                    "incwco",
                    "eihzwxngif",
                    "pbrr",
                    "pslipi",
                    "ebjyikjcwc",
                    "rjdyrzzpo",
                    "hbrbszvc",
                    "hud",
                    "osyb",
                    "jefsgow",
                    "puwikkxmjm",
                    "cmuqfsznddh"
                }
                if oA_1[(ox * 16 + 12) % 15 + 1] <= oA_1[(ox * 16 + 12) % 15 + 1] then
                    Workspace = game:GetService("Workspace")
                    nq = nb.LocalPlayer
                    nj = fn347
                else
                    nb = game:GetService("Workspace")
                    nj = Workspace.LocalPlayer
                    nq = fn347
                end
                ox = (ox + 8) % 20
            end
        else
            if ox * 115376437 + 6 + 2 <= ox * 115376437 + 6 + 2 + 3 then
                nb = game:GetService("Players")
            else
                nV = game:GetService("Players")
            end
            ox = (ox + 3) % 20
        end
    elseif oz_1 <= 4 then
        local xj = bit32.rrotate(bit32.bxor(bit32.lrotate(ox, 14), string.byte(tostring(nP))), 23)
        if bit32.bxor(bit32.lrotate(bit32.bxor(xj, 1658559714), 6), 3068606616) ~= bit32.lrotate(xj, 6) then
            n9 = game:GetService("ReplicatedStorage")
            oy_1 = game:GetService("RunService")
            oj = game:GetService("UserInputService")
        else
            oy_1 = game:GetService("ReplicatedStorage")
            oj = game:GetService("RunService")
            n9 = game:GetService("UserInputService")
        end
        ox = (ox + 3) % 20
    else
        local oz_2 = { "uttav", "zydkjlewa", "fedtq", "nmd", "ezbhkylzna", "wgwlvhnb", "xxnwee", "faggfy" }
        if oz_2[(ox * 80 + 83) % 8 + 1] < oz_2[(ox * 80 + 83) % 8 + 1] then
            nH = game:GetService("VirtualUser")
            n1 = game:GetService("HttpService")
            nV = game:GetService("CoreGui")
            nP = game:GetService("GuiService")
        else
            n1 = game:GetService("VirtualUser")
            nV = game:GetService("HttpService")
            nP = game:GetService("CoreGui")
            nH = game:GetService("GuiService")
        end
        ox = (ox + 3) % 20
    end
until (ox * 17 + 6) % 20 == 12
if getgenv then
    ov, oz_3 = nil, nil
    local ox_1 = 1
    repeat
        if (ox_1 * 1 + 1) % 2 + 1 <= 1 then
            local oA_3 = (vector.create((ox_1 * 5 + 2) % 11 + 1, (ox_1 * 9 + 8) % 13 + 1, (ox_1 * 9 + 13) % 17 + 1))
            local oB_1 = (vector.create((ox_1 * 1 + 5) % 11 + 1, (ox_1 * 8 + 10) % 13 + 1, (ox_1 * 5 + 2) % 17 + 1))
            local yh = vector.cross(oA_3, oB_1)
            local yi = vector.dot(oA_3, oB_1)
            if vector.dot(yh, yh) + yi * yi == vector.dot(oA_3, oA_3) * vector.dot(oB_1, oB_1) then
                getgenv().gethui = nj
                ov = getgenv().__OuroborosMyGiantFarmLib
            else
                getgenv().gethui = ov
                nj = getgenv().__OuroborosMyGiantFarmLib
            end
            ox_1 = (ox_1 + 5) % 16
        else
            local yl = bit32.rrotate(bit32.bxor(bit32.lrotate(ox_1, 15), string.byte(tostring(ov))), 12)
            if bit32.bxor(bit32.lrotate(bit32.bxor(yl, 3487045306), 30), 3019244974) ~= bit32.lrotate(yl, 30) then
                ov = oz_3
            else
                oz_3 = ov
            end
            ox_1 = (ox_1 + 13) % 16
        end
    until (ox_1 * 5 + 15) % 16 == 14
    if oz_3 then
        oz_3 = ov.Unload
    end
    if oz_3 then
        pcall(function()
            ov:Unload()
        end)
    end
end
pcall(function()
    gethui = nj
end)
if setthreadidentity then
    setthreadidentity(8)
end
nY, nS, nN, nD, nA, nu, nm, ng, nd, NumberUtil, SellPet, SetSetting, SetAutoSell = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
nY = "My Giant Farm"
nS = "https://discord.gg/ehKVq7pf7v"
nN = "https://rscripts.net/@Ouroboros"
nD = "https://ouroboros-hub-rbx.web.app/"
nA = "#7fd47f"
nu = "#6ec1ff"
nm = "#e8a34d"
ng = "#8b93a3"
nd = "#e05a5a"
local Modules = oy_1:WaitForChild("Modules")
local Remotes = oy_1:WaitForChild("Remotes")
local AnimalConfig = require(Modules:WaitForChild("AnimalConfig"))
NumberUtil = require(Modules:WaitForChild("NumberUtil"))
SellPet = Remotes:WaitForChild("SellPet")
SetSetting = Remotes:WaitForChild("SetSetting")
SetAutoSell = Remotes:WaitForChild("SetAutoSell")
local oC = {}
local RarityOrder = AnimalConfig.RarityOrder
if type(RarityOrder) == "table" then
    local oR = 1
    while oR <= 32 do
        local oy_2 = RarityOrder[oR]
        if type(oy_2) == "string" then
            oC[#oC + 1] = oy_2
        end
        oR += 1
    end
end
if #oC == 0 then
    local ox_3 = 6
    repeat
        local oy_3 = {
            "tgjpzkzes",
            "vhawa",
            "dnbgv",
            "nxermgx",
            "pdxsltsrw",
            "nsam",
            "dfatrkwgu",
            "tiee",
            "azgr",
            "zttom"
        }
        local ys = ox_3
        local oz_5 = oy_3[ys % 10 + 1]
        if oz_5:len() >= oz_5:gsub("(.)", "%1%1", ys % 3 % 2 + 1):len() then
            oC = { "Mythic", "Epic", "Rare", "Common", "Legendary", "Divine", "Secret" }
        else
            oC = { "Common", "Rare", "Epic", "Legendary", "Mythic", "Secret", "Divine" }
        end
        ox_3 = (ox_3 + 1) % 8
    until (ox_3 * 3 + 0) % 8 == 5
end
Library, ThemeManager, SaveManager = nil, nil, nil
local oA_5 = { "None", "Gold", "Ruby", "Diamond", "Rainbow" }
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
if getgenv then
    getgenv().__OuroborosMyGiantFarmLib = Library
end
Toggles, Options, oi, nJ, nO, np, ou, n5, nz, oh, nG, oe, nR, nt, oq, ne, n_, nn, oc, nC, op, n0, nF, n6, nc, nI, ow, ot, n4, nw, nM, ns, oa, nx, n2, ox_4, nv, od, ol, ni, nl, ob, nk, nE, nL, oo, nX, nU, n7, nh, nf, no, nr = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Toggles = Library.Toggles
Options = Library.Options
nO = fn844
np = fn484
ou = fn455
n5 = fn507
nz = fn63
oh = fn633
nG = fn923
oe = fn204
nR = fn944
nt = fn570
oq = function()
    local pp
    local Data = nq:FindFirstChild("Data")
    local pq_1
    local pr = Data and Data:FindFirstChild("Cash")
    local pr_1
    pp = pr
    if not pp then
        return 0
    end
    pq_1, pr_1 = pcall(function()
        return NumberUtil.ToNumber(pp.Value)
    end)
    local ps = pq_1 and type(pr_1) == "number"
    if ps then
        return pr_1
    end
    local pq_2 = tonumber(pp.Value) or 0
    return pq_2
end
ne = fn581
n_ = fn714
nn = fn707
oc = fn32
nC = fn302
op = function(bq)
    if not bq then
        return false
    end
    pcall(function()
        bq:SetAttribute("LocalPrompt", true)
        bq.Enabled = true
        bq.RequiresLineOfSight = false
        if bq.MaxActivationDistance < 30 then
            bq.MaxActivationDistance = 30
        end
    end)
    return true
end
n0 = fn250
nF = fn943
n6 = fn235
nc = fn338
nI = fn375
ow = fn925
ot = fn23
n4 = fn523
nw = fn5
nM = fn14
ns = fn320
oi = {}
oa = fn265
nx = fn825
if (oq and not nE and (ox_4 or nX) or (oc and oq or (not od or not oc))) and (od and nX and (oc or not od) and (false and od or (not ox_4 or not od))) and (oq and od and (nX or not oc) and (not od and oc or (nE or nE)) and (nX and oc and (nX or ox_4) or (false or nE or (not nE or ox_4)))) or not ((oq and not nE and (ox_4 or nX) or (oc and oq or (not od or not oc))) and (od and nX and (oc or not od) and (false and od or (not ox_4 or not od))) and (oq and od and (nX or not oc) and (not od and oc or (nE or nE)) and (nX and oc and (nX or ox_4) or (false or nE or (not nE or ox_4))))) then
    n2 = fn655
else
    n2 = fn546
end
nv = fn105
od = fn884
ol = function()
    local sb = od()
    if not sb then
        return nil
    elseif sb.Parent == nq.Character then
        return sb
    else
        local sc = nt()
        if sc then
            pcall(function()
                sc:EquipTool(sb)
            end)
            task.wait(0.15)
        end
        return nv()
    end
end
ni = fn292
nl = fn107
ob = fn344
nk = fn376
nE = fn705
nL = fn737
oo = fn286
if ((nk or not oo) and (not nk or not nk) or (oo or not oo) and (oo and nk)) and not ((nk or not oo) and (not nk or not nk) or (oo or not oo) and (oo and nk)) then
    nF = fn98
else
    nX = fn98
end
nU = fn446
n7 = fn150
nh = fn431
nf = function(fI)
    local tz = false
    for k, v in nk(fI) do
        if nw(v) then
            local attr = v:GetAttribute("UID")
            local tA = attr ~= ""
            local tB = type(attr) == "string" and tA
            if tB then
                pcall(function()
                    SellPet:FireServer(attr)
                end)
                tz = true
                task.wait(0.15)
            end
        end
    end
    return tz
end
no = function()
    local PlayerGui = nq:FindFirstChild("PlayerGui")
    local tL = PlayerGui and PlayerGui:FindFirstChild("ScreenGui")
    local tK_1 = tL
    if tL then
        tL = tK_1:FindFirstChild("AnimalName")
    end
    local tK_2 = tL
    if not tK_2 or not tK_2.Visible then
        return false
    end
    local SkipUI = tK_2:FindFirstChild("SkipUI")
    local tK_3 = SkipUI and SkipUI:IsA("GuiButton")
    if tK_3 then
        pcall(function()
            firesignal(SkipUI.Activated)
        end)
        pcall(function()
            firesignal(SkipUI.MouseButton1Click)
        end)
        return true
    end
    return false
end
nr = function()
    local tQ
    if not nz("SyncGameAutoSell") then
        return
    end
    tQ = {}
    for k in nG("SellPetRarities") do
        tQ[k] = true
    end
    for k in nG("SellPetMutations") do
        if k ~= "None" then
            tQ[k] = true
        end
    end
    pcall(function()
        SetAutoSell:FireServer(tQ)
    end)
end
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = nS, Copyable = true }, "|", nY },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
nJ = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gavel"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in nJ do
    if k ~= "Info" then
        fn124(v)
    end
end
local FarmGroup = nJ.Main:AddLeftGroupbox("Farm", "sprout")
FarmGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
FarmGroup:AddToggle("StopRollIfIncubatorsBusy", { Text = "Stop Roll If Incubators Busy", Default = true })
FarmGroup:AddSlider("RollDelay", { Text = "Roll Delay", Default = 1.5, Min = 0.3, Max = 10, Rounding = 1 })
FarmGroup:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
FarmGroup:AddToggle("AutoIncubateEggs", { Text = "Auto Incubate Eggs", Default = false })
FarmGroup:AddToggle("AutoSkipNaming", { Text = "Auto Skip Naming", Default = false })
FarmGroup:AddToggle("DisableNamingPrompts", { Text = "Disable Naming Prompts", Default = false })
local EggsGroup = nJ.Main:AddLeftGroupbox("Eggs", "egg")
EggsGroup:AddToggle("AutoBuyEgg", { Text = "Auto Buy Egg", Default = false })
EggsGroup:AddDropdown("BuyEggRarities", {
    Text = "Buy Rarities",
    Values = oC,
    Default = {},
    Multi = true,
    Expandable = true,
    ExpandColumns = 2
})
EggsGroup:AddDropdown("BuyEggMutations", {
    Text = "Buy Mutations",
    Values = oA_5,
    Default = {},
    Multi = true,
    Expandable = true,
    ExpandColumns = 2
})
EggsGroup:AddInput("BuyEggMaxPrice", { Text = "Max Price (0 = any)", Default = "0", Numeric = true, Finished = true })
EggsGroup:AddToggle("BuyEggSkipUnaffordable", { Text = "Skip Unaffordable", Default = true })
EggsGroup:AddToggle("AutoBuyIncubators", { Text = "Auto Buy Incubators", Default = false })
EggsGroup:AddToggle("AutoUpgradeBase", { Text = "Auto Upgrade Base", Default = false })
local SellGroup = nJ.Main:AddRightGroupbox("Sell", "badge-dollar-sign")
SellGroup:AddToggle("AutoSellPets", { Text = "Auto Sell Pets", Default = false })
SellGroup:AddDropdown("SellPetRarities", {
    Text = "Sell Rarities",
    Values = oC,
    Default = { Common = true },
    Multi = true,
    Expandable = true,
    ExpandColumns = 2
})
SellGroup:AddDropdown("SellPetMutations", {
    Text = "Sell Mutations",
    Values = oA_5,
    Default = {},
    Multi = true,
    Expandable = true,
    ExpandColumns = 2
})
SellGroup:AddToggle("SyncGameAutoSell", { Text = "Sync Game Auto-Sell", Default = false })
SellGroup:AddSlider("SellDelay", { Text = "Sell Delay", Default = 1, Min = 0.3, Max = 10, Rounding = 1 })
local function oF()
    local uT
    local uS
    uS = nil
    uT = nil
    local Label2, Label3, uQ, uR, Label
    local function uV()
        local t_ = hookfunction ~= nil
        local t0 = hookmetamethod ~= nil
        local t1 = getrawmetatable ~= nil
        local t2 = setrawmetatable ~= nil
        local t3 = getgc ~= nil
        local t4 = getgenv ~= nil
        local t5 = getreg ~= nil
        local t6 = getconnections ~= nil
        local t7 = firesignal ~= nil
        local t8 = getcallbackvalue ~= nil
        local t9 = setclipboard ~= nil
        local ua = getcustomasset ~= nil
        local ub = getnamecallmethod ~= nil
        local uc = isexecutorclosure ~= nil
        local ud = fireproximityprompt ~= nil
        local ue = firetouchinterest ~= nil
        local uf = WebSocket ~= nil
        local ug = readfile ~= nil
        local uh = writefile ~= nil
        local uj = (request or http_request) ~= nil
        local ul = (debug and debug.getupvalues) ~= nil
        local un = (debug and debug.setupvalue) ~= nil
        local uo = 0
        local up = { t_, t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, ua, ub, uc, ud, ue, uf, ug, uh, uj, ul, un }
        for i, v in ipairs(up) do
            if v then
                uo += 1
            end
        end
        local t__1 = uo / #up
        if t__1 >= 0.9 then
            return ou("Full Support", nA)
        elseif t__1 >= 0.6 then
            return ou("Half Support", nm)
        else
            return ou("Low Support", nd)
        end
    end
    uS = "Unknown"
    pcall(function()
        local uE_1
        local uD_1
        if identifyexecutor then
            uE_1, uD_1 = identifyexecutor()
            local uF = uE_1 ~= ""
            local uG = type(uE_1) == "string" and uF
            if uG then
                local uF_1 = type(uD_1) == "string" and uD_1 ~= "" and uE_1 .. " " .. uD_1
                uS = uF_1 or uE_1
            end
        end
    end)
    local uW = uV()
    uT = os.clock()
    uQ = function()
        local uI = math.floor(os.clock() - uT)
        if uI < 60 then
            return uI .. "s"
        elseif uI < 3600 then
            return string.format("%dm %ds", uI // 60, uI % 60)
        else
            return string.format("%dh %dm", uI // 3600, uI % 3600 // 60)
        end
    end
    local UserGroup = nJ.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = nq, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(n5("User", nq.DisplayName .. " @" .. nq.Name, nA), true)
    UserGroup:AddLabel(n5("UserId", tostring(nq.UserId), nu), true)
    UserGroup:AddLabel(n5("Executor", uS .. "  " .. uW, nA), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(n5("Session", uQ(), nm), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            nO(nq.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            nO("https://www.roblox.com/users/" .. tostring(nq.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = nJ.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(n5("Game", nY, nu), true)
    Label2 = SessionGroup:AddLabel(n5("Players", "0/0", nA), true)
    uR = tostring(game.JobId)
    local uW_1 = #uR > 18 and string.sub(uR, 1, 18) .. "..."
    local uW_2 = uW_1 or uR
    SessionGroup:AddLabel(n5("Job", uW_2, ng), true)
    Label = SessionGroup:AddLabel(n5("Ping", "0 ms", nm), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            TeleportService:Teleport(game.PlaceId, nq)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            nO(uR, "Copied Job ID")
        end
    })
    task.spawn(function()
        local uL_1
        local uK_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(n5("Session", uQ(), nm))
            Label2:SetText(n5("Players", #nb:GetPlayers() .. "/" .. tostring(nb.MaxPlayers), nA))
            uK_1, uL_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local uK_2 = uK_1 and uL_1 .. " ms" or "n/a"
            Label:SetText(n5("Ping", uK_2, nm))
        end
    end)
    local SocialsGroup = nJ.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = np })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            nO(nN, "Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            nO(nD, "Copied website link")
        end
    })
end
local function oG()
    local MovementGroup = nJ.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = nJ.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local function hC(hD)
        pcall(function()
            nH:SetGameplayPausedNotificationEnabled(not hD)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = nP:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not hD
            end
        end)
        if not hD then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(nq, "GameplayPaused", false)
            else
                nq.GameplayPaused = false
            end
        end)
    end
    local function hQ(hR)
        if not hR:IsA("ProximityPrompt") then
            return
        end
        hR.HoldDuration = 0
        hR.MaxActivationDistance = 50
        hR.RequiresLineOfSight = false
    end
    local connection
    oj.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = nq.Character
            if Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    local u3_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if u3_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    n9.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local vb_1 = nt()
            if vb_1 then
                vb_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    local CurrentCamera = Workspace.CurrentCamera
    oj.RenderStepped:Connect(function(ic)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local vg_1 = nt()
            if vg_1 then
                vg_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local vg_3 = nR()
            local vh = nt()
            if vg_3 and vh then
                vh.PlatformStand = true
                local vh_1 = Vector3.zero
                if n9:IsKeyDown(Enum.KeyCode.W) then
                    vh_1 += CurrentCamera.CFrame.LookVector
                end
                if n9:IsKeyDown(Enum.KeyCode.S) then
                    vh_1 -= CurrentCamera.CFrame.LookVector
                end
                if n9:IsKeyDown(Enum.KeyCode.A) then
                    vh_1 -= CurrentCamera.CFrame.RightVector
                end
                local vm = if n9:IsKeyDown(Enum.KeyCode.D) then 1 else 0
                if vm == 1 then
                    vh_1 += CurrentCamera.CFrame.RightVector
                end
                if n9:IsKeyDown(Enum.KeyCode.Space) then
                    vh_1 += Vector3.new(0, 1, 0)
                end
                if n9:IsKeyDown(Enum.KeyCode.LeftControl) then
                    vh_1 -= Vector3.new(0, 1, 0)
                end
                vg_3.AssemblyLinearVelocity = Vector3.zero
                if vh_1.Magnitude > 0 then
                    vg_3.CFrame = vg_3.CFrame + vh_1.Unit * Options.FlySpeed.Value * ic
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local vn = nt()
            if vn then
                vn.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local vs = nt()
            if vs then
                vs.WalkSpeed = 16
            end
        end
    end)
    Toggles.AntiGameplayPause:OnChanged(function()
        hC(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                hC(true)
            end
        end
    end)
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in ipairs(Workspace:GetDescendants()) do
                pcall(hQ, descendant)
            end
            connection = Workspace.DescendantAdded:Connect(function(iL)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(hQ, iL)
                end
            end)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    Library:OnUnload(function()
        hC(false)
        if connection then
            connection:Disconnect()
        end
    end)
end
oF()
oG()
task.spawn(worker)
local function oB_4()
    local connection
    local MenuGroup = nJ.Settings:AddLeftGroupbox("Menu")
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local jm = 0
    local jn = tick()
    local Label
    local function jp()
        local CurrentCamera = Workspace.CurrentCamera
        if not CurrentCamera then
            return
        end
        n1:CaptureController()
        n1:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        jm += 1
        jn = tick()
        if Label then
            pcall(function()
                Label:SetText("AFK triggers: " .. jm)
            end)
        end
    end
    connection = nq.Idled:Connect(function()
        local vW = if nz("AntiAfk") then 1 else 0
        if vW == 1 then
            pcall(jp)
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
            local vX = nz("AntiAfk") and tick() - jn >= 60
            if vX then
                pcall(jp)
            end
        end
    end)
    Library:OnUnload(function()
        if connection then
            connection:Disconnect()
        end
        if getgenv then
            getgenv().__OuroborosMyGiantFarmLib = nil
        end
    end)
    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder("OuroborosHub")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    ThemeManager:ApplyToTab(nJ.Settings)
    ThemeManager:LoadDefault()
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    SaveManager:SetFolder("OuroborosHub/MyGiantFarm")
    local jM = SaveManager:BuildConfigSection(nJ.Settings)
    SaveManager:LoadAutoloadConfig()
    local function jN(jO, jP)
        local v3_1 = (jO == "Toggle" and Toggles or Options)[jP]
        local v2_2 = type(v3_1) == "table" and v3_1.Type == jO
        return v2_2 and v3_1 or nil
    end
    local function jW(jX, jY)
        local Type = jY.Type
        if Type == "Toggle" then
            return { idx = jX, type = "Toggle", value = jY.Value == true }
        elseif Type == "Slider" then
            return { idx = jX, type = "Slider", value = tostring(jY.Value) }
        elseif Type == "Dropdown" then
            return { idx = jX, type = "Dropdown", multi = jY.Multi == true, value = jY.Value }
        elseif Type == "Input" then
            local wa = jY.Value or ""
            return { idx = jX, type = "Input", text = tostring(wa) }
        elseif Type == "ColorPicker" then
            return { idx = jX, type = "ColorPicker", value = jY.Value:ToHex(), transparency = jY.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = jX,
                type = "KeyPicker",
                mode = jY.Mode,
                key = jY.Value,
                modifiers = jY.Modifiers,
                toggled = jY.Toggled
            }
        else
            return nil
        end
    end
    local function j_()
        local wg = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local wh = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if wh then
                    local wh_1 = jW(k, v)
                    if wh_1 then
                        wg[#wg + 1] = wh_1
                    end
                end
            end
        end
        table.sort(wg, function(j9, ka)
            if j9.type ~= ka.type then
                return j9.type < ka.type
            end
            return j9.idx < ka.idx
        end)
        return { objects = wg }
    end
    local function kb(kc)
        local wA
        wA = nil
        local wB = type(kc) ~= "table" or type(kc.idx) ~= "string" or type(kc.type) ~= "string" or SaveManager.Ignore[kc.idx]
        if wB then
            return false
        end
        wA = jN(kc.type, kc.idx)
        if not wA then
            return false
        end
        local wB_1 = pcall(function()
            if kc.type == "Input" then
                if type(kc.text) ~= "string" then
                    return
                end
                wA:SetValue(kc.text)
            elseif kc.type == "ColorPicker" then
                wA:SetValueRGB(Color3.fromHex(kc.value), kc.transparency)
            elseif kc.type == "KeyPicker" then
                wA:SetValue({ kc.key, kc.mode, kc.modifiers })
                if kc.mode == "Toggle" and kc.toggled ~= nil then
                    wA.Toggled = kc.toggled
                    wA:Update()
                end
            else
                wA:SetValue(kc.value)
            end
        end)
        return wB_1
    end
    jM:AddDivider()
    jM:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    jM:AddButton({
        Text = "Export Config to Clipboard",
        Func = function()
            local wE_1
            local wD_1
            wD_1, wE_1 = pcall(nV.JSONEncode, nV, j_())
            if not wD_1 then
                Library:Notify("Failed to encode the config")
                return
            end
            local wD_2 = setclipboard or toclipboard
            local wD_3 = type(wD_2) ~= "function" or not pcall(wD_2, wE_1)
            if wD_3 then
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Config copied to clipboard", 6)
        end
    })
    jM:AddButton({
        Text = "Import Config from Clipboard Text",
        Func = function()
            local wJ_1
            local wH = Options.SaveManager_ImportSource.Value or ""
            local wH_1
            local wI = tostring(wH):match("^%s*(.-)%s*$")
            if wI == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            wH_1, wJ_1 = pcall(nV.JSONDecode, nV, wI)
            local wI_1 = not wH_1 or type(wJ_1) ~= "table" or type(wJ_1.objects) ~= "table"
            if wI_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            local wH_2 = 0
            for i, v in ipairs(wJ_1.objects) do
                if kb(v) then
                    wH_2 += 1
                end
            end
            if wH_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local wJ_2 = wH_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(wH_2, wJ_2), 6)
        end
    })
end
oB_4()
