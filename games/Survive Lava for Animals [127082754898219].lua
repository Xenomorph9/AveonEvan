local fns = {}
local Kh_29_1
local Kh_26_1
local Kh_16_4
local Kh_14_1
local Kh_11_1, Kh_11_11
local Kh_3_1
local ww
local LocalPlayer
local xV
local wV
local xC
local wC
local x0
local wI
local x6
local wp
local wO
local xv
local wv
local xc
local xU
local xB
local wB
local xi
local x_
local xH
local wH
local xo
local x5
local wo
local w5
local xN
local wN
local CoreGui
local wu
local xb
local wT
local wA
local xh
local xZ
local wZ
local wG
local wn
local x4
local xM
local w4
local wM
local xt
local wt
local xa
local xS
local wS
local xz
local xg
local xF
local wF
local Packages
local x3
local wm
local xL
local wL
local ws
local w9
local xR
local wR
local xy
local wy
local xf
local xX
local id
local xE
local wE
local xl
local w2
local xK
local wK
local xr
local x8
local wr
local w8
local xx
local xe
local RunService
local wW
local xD
local wD
local xk
local x1
local w1
local xJ
local x7
local wq
local xP
local w7
local wP
local xw
function fns.fn49()
    if xf() then
        return true
    end
    local Es = wt.AutoCollect and w9()
    if Es then
        return true
    end
    local Es_1 = wt.AutoPlace and #x0() > 0
    if Es_1 then
        return true
    end
    return false
end
function fns.fn53()
    local Cc = wp()
    local Cd = not Cc or not Cc:IsA("BasePart")
    if Cd then
        return nil
    end
    local Cd_1 = math.max(Cc.Size.X / 2 - xx, 0)
    local Ce = math.max(Cc.Size.Z / 2 - xx, 0)
    local Cf = (math.random() * 2 - 1) * Cd_1
    local Cd_2 = (math.random() * 2 - 1) * Ce
    return (Cc.CFrame * CFrame.new(Cf, Cc.Size.Y / 2, Cd_2)).Position
end
function fns.fn73()
    local Ag = w4()
    if not Ag then
        return nil
    end
    local Ah = ww()
    local Ai = Ah and Ah:FindFirstChild("Plots")
    local Ah_1 = Ai
    if Ai then
        Ai = Ah_1:FindFirstChild(tostring(Ag))
    end
    return Ai
end
function fns.fn77()
    if not wt.AutoCollect then
        return
    end
    if xf() then
        local De = if xz() then 1 else 0
        if De == 1 then
            wt.Collected = wt.Collected + 1
        end
        return
    end
    local C9 = w9()
    if not C9 then
        xU("No matching eggs")
        return
    end
    local Da = wD(C9)
    if Da then
        xC(C9, xP)
        local Da_1 = (xf()) and xz()
        if Da_1 then
            wt.Collected = wt.Collected + 1
        elseif not xf() then
            wt.Collected = wt.Collected + 1
        end
    else
        xC(C9, xV)
        xU("Missed egg, retrying")
    end
end
function fns.fn78(cJ)
    wq[cJ] = nil
end
function fns.fn81(kA)
    wt.SellEquipped = kA == true
end
function fns.fn119()
    local zw = tostring(wt.Status)
    local zx = wt.Collected
    local zE = if zx then 1 else 0
    local zC = 1491 * zE + 2911 * (1 - zE)
    local zD = 835 * zE + 3671 * (1 - zE)
    if not ((zC * 1277 + zD * 1883 + zC * zD) % 16777213 == 4721297) then
        zx = 0
    end
    local zy = wt.Placed or 0
    local zz = wt.Hatched or 0
    local zA = wt.Sold or 0
    return string.format("%s  |  collected %d  |  placed %d  |  hatched %d  |  sold %d", zw, zx, zy, zz, zA)
end
function fns.fn156()
    local Character = LocalPlayer.Character
    if not Character then
        return nil
    end
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    return Character, HumanoidRootPart, Humanoid
end
function fns.fn169(j_)
    wt.AutoCollect = j_ == true
    if wt.AutoCollect then
        xl("collect", wO, wo)
    else
        xw("collect")
    end
end
function fns.fn179(ez, eA, eB)
    local Bh = not ez
    local Bm = if Bh then 1 else 0
    local Bk = 1467 * Bm + 199 * (1 - Bm)
    local Bl = 1850 * Bm + 2973 * (1 - Bm)
    if not ((Bk * 1790 + Bl * 1867 + Bk * Bl) % 16777213 == 8793830) then
        Bh = typeof(eA) ~= "Vector3"
    end
    if Bh then
        return false
    end
    return (ez.Position - eA).Magnitude <= (eB or xH)
end
function fns.fn188(eR)
    local Bw_1
    if eR:HasTag("PlacedEgg") then
        return false
    end
    local Bt = xX(eR)
    local Bt_2, Bt_5
    if not Bt or Bt.Enabled == false then
        return false
    elseif x5(eR) then
        return false
    else
        local attr = eR:GetAttribute("EggAnimal")
        local Bu_1 = xr(attr)
        local Bv = w5(attr)
        if not Bv then
            Bt_2, Bw_1 = xF(wB(eR))
            Bv = Bw_1
        end
        if wt.CollectRarityCount > 0 then
            local Bt_3 = type(Bu_1) ~= "string" or not wt.CollectRarities[Bu_1]
            if Bt_3 then
                return false
            elseif wt.CollectZoneCount > 0 then
                if Bt_5 then
                    return false
                end
                return true
            else
                return true
            end
        elseif wt.CollectZoneCount > 0 then
            Bt_5 = type(Bv) ~= "string"
            local BA_2 = if Bt_5 then 1 else 0
            local By_2 = 1023 * BA_2 + 3444 * (1 - BA_2)
            local Bz_2 = 2390 * BA_2 + 4045 * (1 - BA_2)
            if not ((By_2 * 23 + Bz_2 * 1064 + By_2 * Bz_2) % 16777213 == 5011459) then
                Bt_5 = not wt.CollectZones[Bv]
            end
            if Bt_5 then
                return false
            end
            return true
        else
            return true
        end
    end
end
function fns.fn192(as)
    return type(as) == "function"
end
function fns.fn196()
    gethui = xv
end
function fns.fn241()
    local BM_1
    local BL_1
    local BK_1, BK_2
    BK_1, BL_1 = x_()
    if not BL_1 then
        return nil
    end
    BM_1, BK_2 = nil, nil
    for k, v in xD() do
        if w7(v) then
            local BN = wB(v)
            if BN then
                local Magnitude = (BN - BL_1.Position).Magnitude
                if not BK_2 or Magnitude < BK_2 then
                    BM_1 = v
                    BK_2 = Magnitude
                end
            end
        end
    end
    return BM_1, BK_2
end
function fns.fn248()
    if not wt.AutoBuyTrail then
        return
    end
    local DH = (tonumber(wV({ "money" })))
    local DR = if DH then 1 else 0
    local DP = 3831 * DR + 2233 * (1 - DR)
    local DQ = 1034 * DR + 1605 * (1 - DR)
    if not ((DP * 1887 + DQ * 2026 + DP * DQ) % 16777213 == 13285235) then
        DH = 0
    end
    local DI = DH
    local DH_1 = {}
    local DJ = (wV({ "trails" })) or DH_1
    local DJ_1 = wV({ "trail" })
    local DK
    for i, v in ipairs(wC) do
        local DL = wA[v]
        if type(DL) == "table" then
            if DJ[v] == true then
                DK = v
            else
                local DM = (tonumber(DL.cost)) or 0
                if DI >= DM then
                    local DM_1 = DL.name or v
                    xU("Buying " .. tostring(DM_1))
                    xk("ShopService", "tryBuy", "trail", v)
                    return
                end
            end
        end
    end
    if DK and DJ_1 ~= DK then
        xU("Equipping trail")
        xk("ShopService", "equip", "trail", DK)
    end
end
function fns.fn262(dv)
    local An = type(wW) ~= "table" or type(dv) ~= "string"
    if An then
        return nil
    end
    local An_1 = wW[dv]
    local Ao = type(An_1) == "table" and An_1
    return Ao or nil
end
function fns.fn296(ay)
    local zp_1
    local zo_1
    if typeof(ay) ~= "Instance" then
        return nil
    end
    zo_1, zp_1 = pcall(require, ay)
    local zq = zo_1 and type(zp_1) == "table"
    if zq then
        return zp_1
    end
    return nil
end
function fns.fn323(ap)
    local zj = typeof(cloneref) == "function" and typeof(ap) == "Instance"
    if zj then
        return cloneref(ap)
    end
    return ap
end
function fns.fn339(hY)
    local Eb = wV({ "upgrades" })
    if type(Eb) ~= "table" then
        local Ec_1 = x7 and x7:getDefaultLevel(hY)
        return Ec_1 or 1
    end
    local Ec_2 = Eb[hY] or Eb[string.lower(hY)]
    if not Ec_2 then
        local Eb_1 = x7 and x7:getDefaultLevel(hY)
        Ec_2 = Eb_1
    end
    return Ec_2 or 1
end
function fns.fn355()
    local Ch = wS()
    if not Ch then
        return nil
    end
    for i, child in Ch:GetChildren() do
        if child:HasTag("TrainingEquipment") then
            local Ci_1 = child:FindFirstChild(xi)
            local Cj = Ci_1 and Ci_1:IsA("BasePart")
            if Cj then
                return Ci_1
            end
            local Hitbox = child:FindFirstChild("Hitbox")
            local Cj_1 = Hitbox and Hitbox:IsA("BasePart")
            if Cj_1 then
                return Hitbox
            end
        end
    end
    local Training = Ch:FindFirstChild("Training")
    local Ch_1 = Training and Training:IsA("BasePart")
    if Ch_1 then
        return Training
    end
    return nil
end
function fns.fn371(k4)
    wt.SellRarities, wt.SellRarityCount = wF(k4)
end
function fns.fn408(ca)
    local zO = Packages and Packages:FindFirstChild("_Index")
    local zP = zO
    if zO then
        zO = zP:FindFirstChild(xB)
    end
    local zP_1 = zO
    if zO then
        zO = zP_1:FindFirstChild("networker")
    end
    local zP_2 = zO
    if zO then
        zO = zP_2:FindFirstChild("_remotes")
    end
    local zP_3 = zO
    if zO then
        zO = zP_3:FindFirstChild(ca)
    end
    return zO
end
function fns.fn412(dW)
    if typeof(dW) ~= "Vector3" then
        return nil
    end
    local AD = ww()
    local AE = AD and AD:FindFirstChild("Stages")
    if not AE then
        return nil
    end
    local AE_1 = #xM
    local AN = 1
    while AN <= AE_1 do
        local AO = AN
        local AE_2 = AE:FindFirstChild(tostring(AO))
        local AF = AE_2 and AE_2:FindFirstChild("Plate")
        local AE_3 = AF
        if AF then
            AF = AE_3:IsA("BasePart")
        end
        if AF then
            local AF_1 = math.abs(dW.X - AE_3.Position.X) <= AE_3.Size.X / 2
            local AG = math.abs(dW.Z - AE_3.Position.Z) <= AE_3.Size.Z / 2
            if AF_1 and AG then
                return AO, xE[AO]
            end
        end
        AN += 1
    end
    return nil
end
function fns.fn424(jc)
    local ET = xS[jc] or Color3.fromRGB(255, 255, 255)
    return ET
end
function fns.fn441()
    return LocalPlayer:GetAttribute("CarryingEgg") == true
end
function fns.fn442(eF)
    local Bn = wm[eF]
    local Bo = Bn ~= nil and os.clock() < Bn
    return Bo
end
function fns.fn475(hJ, hK)
    local DZ_3
    local DY_5
    if type(hK) ~= "table" then
        return false
    elseif not wt.SellEquipped then
        local DY_1 = {}
        local DZ_1 = (wV({ "placed" })) or DY_1
        if DZ_1[hJ] == true then
            return false
        end
        if DY_5 then
            return false
        elseif wt.SellRarityCount > 0 then
            xr(hK.name)
            if DZ_3 then
                return false
            end
            return true
        else
            return true
        end
    else
        DY_5 = wt.SellAnimalCount > 0 and not wt.SellAnimals[hK.name]
        if DY_5 then
            return false
        elseif wt.SellRarityCount > 0 then
            local DY_6 = xr(hK.name)
            DZ_3 = type(DY_6) ~= "string" or not wt.SellRarities[DY_6]
            if DZ_3 then
                return false
            end
            return true
        else
            return true
        end
    end
end
function fns.fn501(kU)
    xh(kU)
end
function fns.fn513(eh)
    if typeof(eh) ~= "Instance" then
        return nil
    end
    local Hitbox = eh:FindFirstChild("Hitbox")
    if Hitbox then
        local ProximityPrompt = Hitbox:FindFirstChildWhichIsA("ProximityPrompt")
        if ProximityPrompt then
            return ProximityPrompt
        end
        for i, descendant in ipairs(eh:GetDescendants()) do
            local A__1 = (descendant:IsA("ProximityPrompt"))
            if A__1 then
                A__1 = descendant.ActionText == "Grab" or descendant.ActionText == "Take"
            end
            if A__1 then
                return descendant
            end
        end
        return eh:FindFirstChildWhichIsA("ProximityPrompt", true)
    end
    for i, descendant in ipairs(eh:GetDescendants()) do
        local A__2 = (descendant:IsA("ProximityPrompt"))
        if A__2 then
            A__2 = descendant.ActionText == "Grab" or descendant.ActionText == "Take"
        end
        if A__2 then
            return descendant
        end
    end
    return eh:FindFirstChildWhichIsA("ProximityPrompt", true)
end
function fns.fn627(kt)
    wt.AutoSell = kt == true
    if wt.AutoSell then
        xl("sell", wv, xN)
    else
        xw("sell")
    end
end
function fns.fn634(gw)
    local CV_1
    local CS = wB(gw)
    if not CS then
        return false
    end
    local CT = (gw:GetAttribute("EggAnimal"))
    local C0 = if CT then 1 else 0
    local CZ = 2632 * C0 + 1993 * (1 - C0)
    local C_ = 3292 * C0 + 1779 * (1 - C0)
    if not ((CZ * 3250 + C_ * 3736 + CZ * C_) % 16777213 == 12740243) then
        CT = "egg"
    end
    local CU = CT
    local CU_2
    local CT_1 = xf()
    xU("Collecting " .. tostring(CU))
    local C3 = 1
    local C1 = x4
    while true do
        if not (C3 <= C1) then
            return x1(gw, CT_1)
        end
        local CU_1 = not wR() or not wt.AutoCollect
        if CU_1 then
            return false
        end
        if x1(gw, CT_1) then
            return true
        end
        xJ(CS)
        task.wait(0.35)
        CU_2, CV_1 = x_()
        if not CV_1 then
            break
        end
        if not wI(CV_1, CS, 8) then
            xJ(CS)
            task.wait(0.15)
        end
        if x1(gw, CT_1) then
            return true
        end
        local CU_3 = xX(gw)
        if not CU_3 or CU_3.Enabled == false then
            task.wait(0.15)
            CU_3 = xX(gw)
        end
        if not CU_3 then
            return x1(gw, CT_1)
        end
        local CW_1 = (tonumber(CU_3.MaxActivationDistance)) or xH
        local CV_2 = select(2, x_())
        local CW_2 = CV_2 and not wI(CV_2, CS, CW_1)
        if CW_2 then
            xJ(CS)
            task.wait(0.15)
        end
        xe(CU_3)
        local CU_4 = os.clock() + 0.7 + 0.35
        while true do
            local CV_3 = (wR()) and os.clock() < CU_4
            if CV_3 then
                if x1(gw, CT_1) then
                    return true
                end
                task.wait(0.08)
                continue
            end
            break
        end
        C3 += 1
    end
    return false
end
function fns.fn650(k7)
    wt.SellAnimals, wt.SellAnimalCount = wF(k7)
end
function fns.fn684()
    local Ak = wS()
    local Al = Ak and Ak:FindFirstChild("Plate")
    return Al
end
function fns.fn696(kn)
    wt.AutoBuyTrail = kn == true
    if wt.AutoBuyTrail then
        xl("trail", wy, xL)
    else
        xw("trail")
    end
end
function fns.fn701()
    local REQUIRED = wK:FindFirstChild("REQUIRED")
    local z2 = REQUIRED and REQUIRED:FindFirstChild("Instances")
    return z2
end
function fns.fn722()
    if not wt.AutoEquipBest then
        return
    end
    xU("Equip best")
    xk("PenService", "equipBest")
end
function fns.fn724(jP)
    wt.EggEsp = jP == true
    if not wt.EggEsp then
        ws()
        return
    end
    if xZ then
        return
    end
    xZ = RunService.RenderStepped:Connect(function()
        local Fz = not wR() or not wt.EggEsp
        if Fz then
            return
        end
        xc()
    end)
end
function fns.fn744(j5)
    wt.AutoPlace = j5 == true
    if wt.AutoPlace then
        xl("place", wN, w8)
    else
        xw("place")
    end
end
function fns.fn750()
    return table.clone(wP)
end
function fns.fn766()
    if not wt.AutoHatch then
        return
    end
    local Ds = wV({ "eggs" })
    if type(Ds) ~= "table" then
        return
    end
    for k, v in pairs(Ds) do
        local Ds_1 = not wR() or not wt.AutoHatch
        if Ds_1 then
            return
        end
        local Ds_2 = type(k) == "string" and type(v) == "table" and v.placedAt ~= nil and xb(v) <= 0
        if Ds_2 then
            local Ds_3 = v.animal or k
            xU("Hatching " .. tostring(Ds_3))
            if xk("EggService", "hatchEgg", k) then
                wt.Hatched = wt.Hatched + 1
            end
            return
        end
    end
end
function fns.fn769()
    if not wt.AutoUpgradeTrampoline then
        return
    end
    xo("training", "Training", "trampoline")
end
function fns.fn777()
    return table.clone(wM)
end
function fns.fn788()
    local BW = {}
    local BX = {}
    local BY = { LocalPlayer:FindFirstChild("Backpack"), LocalPlayer.Character }
    for i, v in ipairs(BY) do
        if v then
            for i, child in ipairs(v:GetChildren()) do
                local BY_1 = (child:IsA("Tool")) and child:HasTag("Egg")
                if BY_1 then
                    local attr = child:GetAttribute("Id")
                    local BZ = type(attr) == "string" and attr ~= "" and not BW[attr]
                    if BZ then
                        BW[attr] = true
                        table.insert(BX, child)
                    end
                end
            end
        end
    end
    return BX
end
function fns.fn798()
    if not wt.AutoUpgradePen then
        return
    end
    xo("pen", "Pen", "pen")
end
function fns.fn821()
    return CoreGui
end
function fns.fn833(bS)
    wt.Status = bS
end
function fns.fn840(jm)
    local E6_1
    local E5 = x3[jm]
    local E5_2
    if E5 then
        return E5
    end
    local E5_1 = type(Drawing) ~= "table" or type(Drawing.new) ~= "function"
    if E5_1 then
        return nil
    end
    E5_2, E6_1 = pcall(Drawing.new, "Text")
    if not E5_2 or not E6_1 then
        return nil
    end
    E6_1.Center = true
    E6_1.Outline = true
    E6_1.OutlineColor = Color3.new(0, 0, 0)
    E6_1.Size = 13
    E6_1.Font = 2
    E6_1.Visible = false
    x3[jm] = E6_1
    return E6_1
end
function fns.fn861()
    local zF = not w2
    local zG = {}
    local zK = if zF then 1 else 0
    local zI = 150 * zK + 945 * (1 - zK)
    local zJ = 1381 * zK + 141 * (1 - zK)
    if not ((zI * 244 + zJ * 1473 + zI * zJ) % 16777213 == 2277963) then
        zF = type(w2.get) ~= "function"
    end
    if zF then
        table.insert(zG, "DataService")
    end
    if type(wW) ~= "table" then
        table.insert(zG, "AnimalData")
    end
    if not wZ(fireproximityprompt) then
        table.insert(zG, "fireproximityprompt")
    end
    local zF_1 = type(Drawing) ~= "table" or type(Drawing.new) ~= "function"
    if zF_1 then
        table.insert(zG, "Drawing")
    end
    return zG
end
function fns.fn863(gh, gi)
    local CL = not gi
    local CM = (xf()) and CL
    if CM then
        return true
    end
    if gh and not gh.Parent then
        return true
    end
    return false
end
function fns.fn874()
    if not wt.AutoSell then
        return
    end
    local D0 = wV({ "animals" })
    if type(D0) ~= "table" then
        return
    end
    for k, v in pairs(D0) do
        local D0_1 = not wR() or not wt.AutoSell
        if D0_1 then
            return
        end
        local D0_2 = type(k) == "string" and wL(k, v)
        if D0_2 then
            local D0_3 = v.name or k
            xU("Selling " .. tostring(D0_3))
            if xk("AnimalService", "sellAnimal", k) then
                wt.Sold = wt.Sold + 1
            end
            return
        end
    end
end
function fns.fn885(b4)
    local zM_1
    local zL = not w2 or type(w2.get) ~= "function"
    local zL_1
    if zL then
        return nil
    end
    zL_1, zM_1 = pcall(w2.get, w2, b4)
    if zL_1 then
        return zM_1
    end
    return nil
end
function fns.fn905(dA)
    local Aq = xR(dA)
    return Aq and Aq.rarity or nil
end
function fns.fn925()
    return table.clone(xM)
end
function fns.fn931()
    return not xg.Unloaded
end
function fns.fn945(ib, ic, ie)
    local Em = x8(ib, ic)
    if Em == nil then
        return
    end
    local En = (tonumber(wV({ "money" }))) or 0
    if Em > 0 and En < Em then
        return
    end
    xU("Upgrading " .. ie)
    xk("UpgradeService", "tryUpgrade", ic)
end
function fns.fn985(la)
    local FO = la ~= ""
    local FP = type(la) == "string" and FO
    if FP then
        wt.TeleportZone = la
    end
end
function fns.fn986(h4, h5)
    local Ek_1
    local Ej_1
    local Ei = not x7 or type(x7.getCost) ~= "function"
    if Ei then
        return nil
    end
    local Ei_1 = wT(h5)
    Ej_1, Ek_1 = pcall(x7.getCost, x7, h4, Ei_1)
    if Ej_1 then
        return Ek_1
    end
    return nil
end
function fns.fn1012()
    local attr = LocalPlayer:GetAttribute("Plot")
    if type(attr) == "number" then
        return attr
    end
    return nil
end
function fns.fn1035(kh)
    wt.AutoEquipBest = kh == true
    if wt.AutoEquipBest then
        xl("equip", wE, x6)
    else
        xw("equip")
    end
end
function fns.fn1045(kb)
    wt.AutoHatch = kb == true
    if wt.AutoHatch then
        xl("hatch", wH, w1)
    else
        xw("hatch")
    end
end
function fns.fn1086()
    local EE = wS()
    if not EE then
        xU("No plot assigned")
        return false
    end
    local Spawn = EE:FindFirstChild("Spawn")
    local Plate = EE:FindFirstChild("Plate")
    local EE_1 = Spawn
    local EK = if EE_1 then 1 else 0
    local EI = 3655 * EK + 174 * (1 - EK)
    local EJ = 2466 * EK + 671 * (1 - EK)
    if not ((EI * 2101 + EJ * 3414 + EI * EJ) % 16777213 == 8334096) then
        EE_1 = Plate
    end
    local EF_1 = EE_1
    if not EF_1 then
        xU("Base not found")
        return false
    end
    xU("Teleport to base")
    return xJ(EF_1.Position)
end
function fns.fn1128(eK, eL)
    local Bq = os.clock()
    wm[eK] = Bq + (eL or xV)
end
function fns.fn1130(iW)
    local EL = iW or wt.TeleportZone
    local EL_1 = xy[EL]
    if not EL_1 then
        xU("Zone not found")
        return false
    end
    local EN = ww()
    local EO = EN and EN:FindFirstChild("Stages")
    local EN_1 = EO
    if EO then
        EO = EN_1:FindFirstChild(tostring(EL_1))
    end
    local EL_2 = EO
    local EN_2 = EL_2 and EL_2:FindFirstChild("Plate")
    if not EN_2 then
        xU("Zone not found")
        return false
    end
    wt.TeleportZone = EL
    xU("Teleport to " .. EL)
    return xJ(EN_2.Position)
end
function fns.fn1133()
    local CO = wp()
    local CP = wS()
    local CQ = CP and CP:FindFirstChild("Spawn")
    local CQ_1 = CO or CQ
    if not CQ_1 then
        xU("No plot assigned")
        return false
    end
    xU("Delivering egg")
    xJ(CQ_1.Position)
    local CP_2 = os.clock() + 6
    while true do
        local CQ_2 = (wR()) and wt.AutoCollect and os.clock() < CP_2
        if not CQ_2 then
            return not xf()
        end
        if not xf() then
            break
        end
        xJ(CQ_1.Position)
        task.wait(0.2)
    end
    return true
end
function fns.fn1143(ea)
    local AQ = 0
    local AR = {}
    if type(ea) == "table" then
        for k, v in pairs(ea) do
            local AS = v == true and type(k) == "string"
            if AS then
                AR[k] = true
                AQ += 1
            elseif type(v) == "string" then
                AR[v] = true
                AQ += 1
            end
        end
    end
    return AR, AQ
end
function fns.fn1161()
    for k in pairs(wq) do
        xw(k)
    end
    ws()
end
function fns.fn1200(kW)
    wt.CollectRarities, wt.CollectRarityCount = wF(kW)
end
function fns.fn1215(kC)
    wt.AutoUpgradePen = kC == true
    if wt.AutoUpgradePen then
        xl("pen", wr, wG)
    else
        xw("pen")
    end
end
function fns.fn1227(dF)
    local At = xR(dF)
    local Au = At and tonumber(At.zone)
    local At_1 = Au
    if Au then
        Au = xE[At_1]
    end
    if Au then
        return xE[At_1]
    end
    return nil
end
local function fn1238()
    return xK and xK.mounted == true
end
local function fn1253(f3)
    local CC = type(f3) ~= "table" or f3.placedAt == nil
    if CC then
        return math.huge
    end
    local CC_1 = xR(f3.animal)
    local CE = f3.tutorial and xa
    if not CE then
        CE = CC_1 and CC_1.hatchTime or 0
    end
    local CC_3 = id
    local CD_2 = CE
    if CC_3 then
        CC_3 = wV({ "gamepasses", tostring(id) }) ~= nil
    end
    if CC_3 then
        CD_2 = CD_2 / 2
    end
    local CC_4 = os.time() - f3.placedAt
    local max = math.max
    local CF = CD_2 - math.max(CC_4, 0)
    local CG = f3.secondsOffset or 0
    return max(CF - CG, 0)
end
local function fn1257(kO)
    wt.AutoTrampoline = kO == true
    if wt.AutoTrampoline then
        xl("trampoline", wn, xt)
    else
        xw("trampoline")
    end
end
local function fn1260(kZ)
    wt.CollectZones, wt.CollectZoneCount = wF(kZ)
end
local function fn1274(kI)
    wt.AutoUpgradeTrampoline = kI == true
    if wt.AutoUpgradeTrampoline then
        xl("upgradeTrampoline", wr, wu)
    else
        xw("upgradeTrampoline")
    end
end
local function fn1311()
    local EggField = wK:FindFirstChild("EggField")
    if not EggField then
        return {}
    end
    local BC = {}
    for i, child in EggField:GetChildren() do
        local BB_1 = child.Name == "Egg" and not child:HasTag("PlacedEgg")
        if BB_1 then
            table.insert(BC, child)
        end
    end
    return BC
end
local function fn1333(k1)
    wt.EspRarities, wt.EspRarityCount = wF(k1)
end
wm = nil
wn = nil
wo = nil
wp = nil
wq = nil
wr = nil
ws = nil
wt = nil
wu = nil
wv = nil
ww = nil
wy = nil
wA = nil
wB = nil
wC = nil
wD = nil
wE = nil
wF = nil
wG = nil
wH = nil
wI = nil
wK = nil
wL = nil
wM = nil
wN = nil
wO = nil
wP = nil
wR = nil
wS = nil
wT = nil
wV = nil
wW = nil
id = nil
wZ = nil
w1 = nil
w2 = nil
w4 = nil
w5 = nil
w7 = nil
local Players, wx, wz, wJ, wQ, wU, wY, w0, w3, w6
w8 = nil
w9 = nil
xa = nil
xb = nil
xc = nil
LocalPlayer = nil
xe = nil
xf = nil
xg = nil
xh = nil
xi = nil
xk = nil
xl = nil
Packages = nil
xo = nil
xr = nil
xt = nil
CoreGui = nil
xv = nil
xw = nil
xx = nil
xy = nil
xz = nil
xB = nil
xC = nil
xD = nil
xE = nil
xF = nil
xH = nil
xJ = nil
xK = nil
xL = nil
xM = nil
xN = nil
xP = nil
xR = nil
xS = nil
xU = nil
xV = nil
local Workspace, xn, Lighting, TeleportService, GuiService, HttpService, xI, VirtualUser, xQ, UserInputService
RunService = nil
xX = nil
xZ = nil
x_ = nil
x0 = nil
x1 = nil
x3 = nil
x4 = nil
x5 = nil
x6 = nil
x7 = nil
x8 = nil
local x2
local Kh_7 = if not game:IsLoaded() then 1 else 0
if Kh_7 == 1 then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, Workspace, LocalPlayer, w6, w0, wY, wU, wQ, wO, wN, wH, wE, wy, wv, wr, wn, x4, xV, xP, xH, xB, xv = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local Kh_24 = game:GetService("ReplicatedStorage")
local Kh_24_16
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local Kh_35 = "OuroborosSurviveLavaForAnimals"
local Kh_35_18
w6 = "Survive Lava for Animals"
w0 = "v0.2"
wY = "https://discord.gg/synapsex"
wU = "https://rscripts.net/@Ouroboros"
wQ = "https://ouroboros-hub-rbx.web.app/"
wO = 0.35
wN = 0.8
wH = 1.2
wE = 6
wy = 8
wv = 8
wr = 6
wn = 0.5
x4 = 4
xV = 2.5
xP = 6
xH = 10
xB = "leifstout_networker@0.3.1"
xv = fns.fn821
if getgenv then
    getgenv().gethui = xv
end
xg, Kh_14_1, wK, Kh_3_1, Kh_26_1, xQ, Kh_11_1, wZ, wR, Kh_29_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Kh_9 = 14
repeat
    local Kh_16_1 = (Kh_9 * 3 + 6) % 8 + 1
    if Kh_16_1 <= 4 then
        if Kh_16_1 <= 2 then
            if Kh_16_1 <= 1 then
                local Kh_5_1 = {
                    "jlxmolp",
                    "tswzuiuvy",
                    "hrblndbgdti",
                    "wfboujbc",
                    "aywydcc",
                    "aoglrpulx",
                    "vujhw",
                    "xhcjod",
                    "uigicpdwnk",
                    "dkccnhruby",
                    "cijthja"
                }
                local K5 = Kh_9
                local Kh_31_1 = Kh_5_1[K5 % 11 + 1]
                if Kh_31_1:len() <= Kh_31_1:gsub("(.)", "%1%1", K5 % 3 % 2 + 1):len() then
                    pcall(fns.fn196)
                    local function Kh_2_1(O)
                        local zc
                        local za
                        local zb
                        za = nil
                        zb = nil
                        zc = nil
                        local zd = O ~= ""
                        local ze = type(O) == "string" and zd
                        assert(ze, "Namespace is required")
                        assert(type(getgenv) == "function", "getgenv is unavailable")
                        zc = getgenv()
                        assert(type(zc) == "table", "getgenv did not return a table")
                        local zd_2 = zc[O]
                        if zd_2 ~= nil then
                            local ze_2 = type(zd_2) == "table" and type(zd_2.Unload) == "function"
                            assert(ze_2, "Namespace is occupied")
                            zd_2.Unload()
                            assert(zc[O] == nil, "Previous instance did not release its namespace")
                        end
                        za = {}
                        zb = { State = {}, Unloaded = false }
                        zb.Track = function(U)
                            assert(type(U) == "function", "Cleanup must be callable")
                            if zb.Unloaded then
                                U()
                            else
                                table.insert(za, U)
                            end
                            return U
                        end
                        zb.Unload = function()
                            local y0_2
                            local y__2
                            if zb.Unloaded then
                                return
                            end
                            zb.Unloaded = true
                            local yY = {}
                            local y4 = #za
                            local y3 = -1
                            while false and y4 <= 1 or true and y4 >= 1 do
                                local y5 = y4
                                local yZ_2 = table.remove(za, y5)
                                y__2, y0_2 = pcall(yZ_2)
                                if not y__2 then
                                    table.insert(yY, tostring(y0_2))
                                end
                                y4 += y3
                            end
                            table.clear(zb.State)
                            if #yY > 0 then
                                error("Cleanup incomplete: " .. table.concat(yY, "; "), 0)
                            end
                            if zc[O] == zb then
                                zc[O] = nil
                            end
                        end
                        zc[O] = zb
                        return zb
                    end
                    xQ = function(ah, ai)
                        local zh = type(ah) == "table" and type(ah.Track) == "function"
                        assert(zh, "FeatureAPI required")
                        local zh_1 = type(ai) == "table" and type(ai.OnUnload) == "function"
                        assert(zh_1, "UI library required")
                        assert(type(ai.Unload) == "function", "UI unload required")
                        ah.Track(function()
                            if not ai.Unloaded then
                                ai:Unload()
                            end
                        end)
                        ai:OnUnload(function()
                            ah.Unload()
                        end)
                    end
                    xg = Kh_2_1(Kh_35)
                else
                    pcall(fns.fn196)
                    Kh_35 = function(O)
                        local zc
                        local za
                        local zb
                        za = nil
                        zb = nil
                        zc = nil
                        local zd = O ~= ""
                        local ze = type(O) == "string" and zd
                        assert(ze, "Namespace is required")
                        assert(type(getgenv) == "function", "getgenv is unavailable")
                        zc = getgenv()
                        assert(type(zc) == "table", "getgenv did not return a table")
                        local zd_1 = zc[O]
                        if zd_1 ~= nil then
                            local ze_1 = type(zd_1) == "table" and type(zd_1.Unload) == "function"
                            assert(ze_1, "Namespace is occupied")
                            zd_1.Unload()
                            assert(zc[O] == nil, "Previous instance did not release its namespace")
                        end
                        za = {}
                        zb = { State = {}, Unloaded = false }
                        zb.Track = function(U)
                            assert(type(U) == "function", "Cleanup must be callable")
                            if zb.Unloaded then
                                U()
                            else
                                table.insert(za, U)
                            end
                            return U
                        end
                        zb.Unload = function()
                            local y0_1
                            local y__1
                            if zb.Unloaded then
                                return
                            end
                            zb.Unloaded = true
                            local yY = {}
                            local y4 = #za
                            local y3 = -1
                            while false and y4 <= 1 or true and y4 >= 1 do
                                local y5 = y4
                                local yZ_1 = table.remove(za, y5)
                                y__1, y0_1 = pcall(yZ_1)
                                if not y__1 then
                                    table.insert(yY, tostring(y0_1))
                                end
                                y4 += y3
                            end
                            table.clear(zb.State)
                            if #yY > 0 then
                                error("Cleanup incomplete: " .. table.concat(yY, "; "), 0)
                            end
                            if zc[O] == zb then
                                zc[O] = nil
                            end
                        end
                        zc[O] = zb
                        return zb
                    end
                    xQ = Kh_35(xg)
                end
                Kh_9 = (Kh_9 + 11) % 32
            else
                local KR = bit32.rrotate(bit32.bxor(bit32.lrotate(Kh_9, 4), string.byte(tostring(Kh_11_1))), 29)
                if bit32.bxor(bit32.lrotate(bit32.bxor(KR, 3861587190), 18), 2480642220) == bit32.lrotate(KR, 18) then
                    Kh_11_1 = fns.fn323
                else
                    Kh_29_1 = fns.fn323
                end
                Kh_9 = (Kh_9 + 27) % 32
            end
        elseif Kh_16_1 <= 3 then
            if Kh_9 * 19322569 + 13 + 5 <= Kh_9 * 19322569 + 13 + 5 + 3 then
                wZ = fns.fn192
                wR = fns.fn931
            else
                wR = fns.fn192
                wZ = fns.fn931
            end
            Kh_9 = (Kh_9 + 19) % 32
        else
            local M_ = bit32.rrotate(bit32.bxor(bit32.lrotate(Kh_9, 30), string.byte(tostring(Kh_3_1))), 6)
            if bit32.bxor(bit32.lrotate(bit32.bxor(M_, 3173840071), 2), 4105425694) ~= bit32.lrotate(M_, 2) then
                Kh_24 = Kh_14_1(Kh_11_1)
            else
                Kh_14_1 = Kh_11_1(Kh_24)
            end
            Kh_9 = (Kh_9 + 19) % 32
        end
    elseif Kh_16_1 <= 6 then
        if Kh_16_1 <= 5 then
            local Kh_5_2 = (vector.create((Kh_9 * 6 + 4) % 11 + 1, (Kh_9 * 10 + 12) % 13 + 1, (Kh_9 * 15 + 1) % 17 + 1))
            local Kh_31_2 = (vector.create((Kh_9 * 1 + 7) % 11 + 1, (Kh_9 * 2 + 9) % 13 + 1, (Kh_9 * 9 + 16) % 17 + 1))
            local Kh_17_1 = (vector.create((Kh_9 * 5 + 7) % 11 + 1, (Kh_9 * 9 + 13) % 13 + 1, (Kh_9 * 7 + 16) % 17 + 1))
            if vector.dot(vector.cross(Kh_5_2, Kh_31_2), Kh_17_1) == vector.dot(vector.cross(Kh_31_2, Kh_17_1), Kh_5_2) then
                wK = Kh_11_1(Workspace)
            else
                Kh_11_1 = Workspace(wK)
            end
            Kh_9 = (Kh_9 + 3) % 32
        else
            local Kh_5_3 = (vector.create((Kh_9 * 2 + 6) % 11 + 1, (Kh_9 * 8 + 3) % 13 + 1, (Kh_9 * 2 + 11) % 17 + 1))
            local Kh_31_3 = (vector.create((Kh_9 * 7 + 4) % 11 + 1, (Kh_9 * 11 + 10) % 13 + 1, (Kh_9 * 14 + 10) % 17 + 1))
            local Kh_17_2 = (vector.create((Kh_9 * 6 + 2) % 11 + 1, (Kh_9 * 2 + 9) % 13 + 1, (Kh_9 * 10 + 17) % 17 + 1))
            if vector.dot(vector.cross(Kh_5_3, Kh_31_3), Kh_17_2) == vector.dot(vector.cross(Kh_31_3, Kh_17_2), Kh_5_3) then
                Kh_29_1 = fns.fn296
            else
                Kh_3_1 = fns.fn296
            end
            Kh_9 = (Kh_9 + 19) % 32
        end
    elseif Kh_16_1 <= 7 then
        local Kh_16_2 = {
            "aiuyft",
            "mlsrnmmwmi",
            "aszswykkdpbh",
            "rygsfabkv",
            "izsmkthxujw",
            "gcuiiq",
            "mugvafbzba",
            "rkgmziquevf",
            "eydklbhbafhj",
            "nncmarh",
            "hasnioaymcqn",
            "cvjxuzh",
            "kwxlgujctifk",
            "lkferkacx",
            "vngixnuq",
            "vvs"
        }
        if Kh_16_2[(Kh_9 * 6 + 86) % 16 + 1] < Kh_16_2[(Kh_9 * 6 + 86) % 16 + 1] then
            Kh_14_1 = Kh_3_1:WaitForChild("Shared", 20)
        else
            Kh_3_1 = Kh_14_1:WaitForChild("Shared", 20)
        end
        Kh_9 = (Kh_9 + 19) % 32
    else
        local Kh_16_3 = (vector.create((Kh_9 * 7 + 3) % 11 + 1, (Kh_9 * 3 + 3) % 13 + 1, (Kh_9 * 2 + 15) % 17 + 1))
        local KN = vector.floor(Kh_16_3) + vector.ceil(Kh_16_3 * -1)
        if vector.dot(KN, KN) == 2 then
            Kh_3_1 = Kh_26_1
        else
            Kh_26_1 = Kh_3_1
        end
        Kh_9 = (Kh_9 + 3) % 32
    end
until (Kh_9 * 7 + 9) % 32 == 19
if Kh_26_1 then
    local Kh_9_1 = 1
    repeat
        local Kh_35_1 = { "mbqeuwkaoq", "ovmrt", "imordgl", "zlvxzzss", "oxagdq", "exbl", "oqhtkb", "thvd" }
        local M0 = Kh_9_1
        local Kh_24_1 = Kh_35_1[M0 % 8 + 1]
        if Kh_24_1:len() <= Kh_24_1:gsub("(.)", "%1%1", M0 % 3 % 2 + 1):len() then
            Kh_26_1 = Kh_3_1:WaitForChild("Modules", 20)
        else
            Kh_3_1 = Kh_26_1:WaitForChild("Modules", 20)
        end
        Kh_9_1 = (Kh_9_1 + 2) % 4
    until (Kh_9_1 * 3 + 2) % 4 == 3
end
local Kh_35_2 = Kh_26_1
local Kh_9_2 = Kh_35_2
if Kh_9_2 then
    local Kh_24_2 = 5
    repeat
        local Kh_11_2 = {
            "ssomad",
            "yfflzgwbt",
            "chcgibhtc",
            "xqtgry",
            "hivkoctsxjek",
            "tyolayfrytjr",
            "usvm",
            "gtjylnkihb",
            "nspaiiyznqt"
        }
        if Kh_11_2[(Kh_24_2 * 15 + 92) % 9 + 1] < Kh_11_2[(Kh_24_2 * 15 + 92) % 9 + 1] then
            Kh_35_2 = Kh_9_2:WaitForChild("Game", 20)
        else
            Kh_9_2 = Kh_35_2:WaitForChild("Game", 20)
        end
        Kh_24_2 = (Kh_24_2 + 6) % 8
    until (Kh_24_2 * 3 + 5) % 8 == 6
end
local Kh_11_3 = Kh_35_2
local Kh_24_3 = Kh_9_2
if Kh_11_3 then
    local Kh_9_3 = 5
    repeat
        local Kh_2_2 = (vector.create((Kh_9_3 * 5 + 6) % 11 + 1, (Kh_9_3 * 5 + 6) % 13 + 1, (Kh_9_3 * 7 + 15) % 17 + 1))
        local L2 = vector.floor(Kh_2_2) + vector.ceil(Kh_2_2 * -1)
        if vector.dot(L2, L2) == 0 then
            Kh_11_3 = Kh_35_2:WaitForChild("Math", 20)
        else
            Kh_35_2 = Kh_11_3:WaitForChild("Math", 20)
        end
        Kh_9_3 = (Kh_9_3 + 6) % 8
    until (Kh_9_3 * 5 + 7) % 8 == 6
end
local Kh_2_3 = Kh_35_2
local Kh_9_4 = Kh_11_3
if Kh_2_3 then
    local Kh_11_4 = 3
    repeat
        local KZ = bit32.rrotate(bit32.bxor(bit32.lrotate(Kh_11_4, 15), string.byte(tostring(Kh_11_4))), 1)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(KZ, 2287698045), 3731207877), (bit32.bxor(bit32.band(KZ, 2007269250), 952396570))), 3731207877), 952396570) ~= KZ then
            Kh_35_2 = Kh_2_3:WaitForChild("Core", 20)
        else
            Kh_2_3 = Kh_35_2:WaitForChild("Core", 20)
        end
        Kh_11_4 = (Kh_11_4 + 3) % 4
    until (Kh_11_4 * 1 + 0) % 4 == 2
end
Kh_16_4, Packages = nil, nil
local Kh_26_2 = 15
repeat
    if (Kh_26_2 * 1 + 1) % 2 + 1 <= 1 then
        if (Kh_26_2 * 2 + 6) * 13 % 3 == ((Kh_26_2 * 2 + 6) * 13 + 6) % 3 then
            Kh_16_4 = Kh_2_3
        else
            Kh_2_3 = Kh_16_4
        end
        Kh_26_2 = (Kh_26_2 + 13) % 16
    else
        if (Kh_26_2 * 2 + 7) * 16 % 3 == ((Kh_26_2 * 2 + 7) * 16 + 8) % 3 then
            Kh_14_1 = Packages:WaitForChild("Packages", 20)
        else
            Packages = Kh_14_1:WaitForChild("Packages", 20)
        end
        Kh_26_2 = (Kh_26_2 + 11) % 16
    end
until (Kh_26_2 * 7 + 1) % 16 == 2
local Kh_35_4 = Packages and Packages:FindFirstChild("DataService")
local Kh_11_5 = Kh_29_1(Kh_35_4)
local Kh_35_5 = Kh_11_5 and Kh_11_5.client
local Kh_11_6 = Kh_24_3
w2 = Kh_35_5
if Kh_11_6 then
    Kh_11_6 = Kh_24_3:FindFirstChild("AnimalData")
end
wW = Kh_29_1(Kh_11_6)
local Kh_35_6 = Kh_24_3 and Kh_24_3:FindFirstChild("RarityData")
local Kh_11_7 = Kh_29_1(Kh_35_6)
local Kh_35_7 = Kh_24_3 and Kh_24_3:FindFirstChild("StageData")
local Kh_2_4 = Kh_29_1(Kh_35_7)
local Kh_35_8 = Kh_24_3 and Kh_24_3:FindFirstChild("TrailData")
wA = Kh_29_1(Kh_35_8)
local Kh_35_9 = Kh_16_4 and Kh_16_4:FindFirstChild("Configs")
local Kh_24_4 = Kh_29_1(Kh_35_9)
local Kh_35_10 = Kh_9_4 and Kh_9_4:FindFirstChild("UpgradeStats")
x7 = Kh_29_1(Kh_35_10)
local Kh_9_5 = Kh_16_4 and Kh_16_4:FindFirstChild("MonetizationData")
local Kh_35_11 = Kh_29_1(Kh_9_5)
local Kh_9_6 = Kh_3_1 and Kh_3_1:FindFirstChild("Services")
if Kh_9_6 then
    local Kh_26_3 = 1
    repeat
        local L8 = bit32.rrotate(bit32.bxor(bit32.lrotate(Kh_26_3, 17), string.byte(tostring(Kh_26_3))), 20)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(L8, 3057957297), 1210987760), (bit32.bxor(bit32.band(L8, 1237009998), 3753707355))), 1210987760), 3753707355) == L8 then
            Kh_9_6 = Kh_3_1.Services:FindFirstChild("TrainingService")
        else
            Kh_3_1 = Kh_9_6.Services:FindFirstChild("TrainingService")
        end
        Kh_26_3 = (Kh_26_3 + 3) % 4
    until (Kh_26_3 * 1 + 3) % 4 == 3
end
if Kh_9_6 then
    local Kh_26_4 = 1
    repeat
        local Kh_14_2 = (vector.create((Kh_26_4 * 4 + 1) % 11 + 1, (Kh_26_4 * 9 + 1) % 13 + 1, (Kh_26_4 * 5 + 2) % 17 + 1))
        local Kh_16_5 = (vector.create((Kh_26_4 * 6 + 9) % 11 + 1, (Kh_26_4 * 10 + 6) % 13 + 1, (Kh_26_4 * 10 + 15) % 17 + 1))
        local L3 = vector.cross(Kh_14_2, Kh_16_5)
        local L4 = vector.dot(Kh_14_2, Kh_16_5)
        if vector.dot(L3, L3) + L4 * L4 == vector.dot(Kh_14_2, Kh_14_2) * vector.dot(Kh_16_5, Kh_16_5) then
            Kh_9_6 = Kh_3_1.Services.TrainingService:FindFirstChild("TrainingServiceClient")
        else
            Kh_3_1 = Kh_9_6.Services.TrainingService:FindFirstChild("TrainingServiceClient")
        end
        Kh_26_4 = (Kh_26_4 + 0) % 8
    until (Kh_26_4 * 3 + 4) % 8 == 7
end
xK = Kh_29_1(Kh_9_6)
local Kh_26_5 = Kh_24_4 and Kh_24_4.PLATE_MARGIN or 4
local Kh_9_8 = Kh_24_4
xx = Kh_26_5
if Kh_9_8 then
    Kh_9_8 = Kh_24_4.TRAINING_HEIGHT
end
local Kh_26_6 = Kh_9_8 or 3
local Kh_9_9 = Kh_24_4
local xq = Kh_26_6
if Kh_9_9 then
    Kh_9_9 = Kh_24_4.TRAINING_STAND_NAME
end
local Kh_26_7 = Kh_9_9 or "Target"
local Kh_9_10 = Kh_24_4
xi = Kh_26_7
if Kh_9_10 then
    Kh_9_10 = Kh_24_4.EGG_TUTORIAL_HATCH_TIME
end
local Kh_26_8 = Kh_9_10 or 5
local Kh_9_11 = Kh_24_4
xa = Kh_26_8
if Kh_9_11 then
    Kh_9_11 = Kh_24_4.PLACE_DISTANCE
end
local w_ = Kh_9_11 or 8
id = nil
local Kh_9_12 = Kh_35_11
if Kh_9_12 then
    local Kh_24_6 = 0
    repeat
        local L7 = bit32.rrotate(bit32.bxor(bit32.lrotate(Kh_24_6, 30), string.byte(tostring(Kh_24_6))), 23)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(L7, 411595639), 2374457529), (bit32.bxor(bit32.band(L7, 3883371656), 623834002))), 2374457529), 623834002) == L7 then
            Kh_9_12 = type(Kh_35_11["x2 Growth"]) == "table"
        else
            Kh_35_11 = type(Kh_9_12["x2 Growth"]) == "table"
        end
        Kh_24_6 = (Kh_24_6 + 1) % 4
    until (Kh_24_6 * 3 + 3) % 4 == 2
end
if Kh_9_12 then
    local Kh_24_7 = 3
    repeat
        local Kh_9_13 = (vector.create((Kh_24_7 * 4 + 4) % 11 + 1, (Kh_24_7 * 11 + 6) % 13 + 1, (Kh_24_7 * 15 + 1) % 17 + 1))
        local Kh_26_9 = (vector.create((Kh_24_7 * 5 + 6) % 11 + 1, (Kh_24_7 * 11 + 4) % 13 + 1, (Kh_24_7 * 12 + 13) % 17 + 1))
        local Kh_14_3 = (vector.create((Kh_24_7 * 5 + 4) % 11 + 1, (Kh_24_7 * 7 + 1) % 13 + 1, (Kh_24_7 * 9 + 3) % 17 + 1))
        if vector.dot(vector.cross(Kh_9_13, Kh_26_9), Kh_14_3) == vector.dot(vector.cross(Kh_26_9, Kh_14_3), Kh_9_13) then
            id = Kh_35_11["x2 Growth"].id
        else
            Kh_35_11 = id["x2 Growth"].id
        end
        Kh_24_7 = (Kh_24_7 + 2) % 4
    until (Kh_24_7 * 3 + 0) % 4 == 3
end
local Kh_9_14 = Kh_11_7
wP = {}
if Kh_9_14 then
    local Kh_35_12 = 7
    repeat
        local Kh_24_8 = {
            "xgenrjvig",
            "okwueq",
            "iylckj",
            "lgyqmtlkjg",
            "hexncvygk",
            "ojcezpybda",
            "zmrmt",
            "kbuufpwgrco",
            "idlznwult",
            "ashgvycz",
            "zby"
        }
        local KO = Kh_35_12
        local Kh_26_10 = Kh_24_8[KO % 11 + 1]
        if Kh_26_10:len() <= Kh_26_10:gsub("(.)", "%1%1", KO % 3 % 2 + 1):len() then
            Kh_9_14 = type(Kh_11_7.order) == "table"
        else
            Kh_11_7 = type(Kh_9_14.order) == "table"
        end
        Kh_35_12 = (Kh_35_12 + 5) % 8
    until (Kh_35_12 * 1 + 4) % 8 == 0
end
if Kh_9_14 then
    for i, v in ipairs(Kh_11_7.order) do
        if type(v) == "string" then
            table.insert(wP, v)
        end
    end
end
if #wP == 0 then
    local Kh_9_15 = 0
    repeat
        local Kh_35_13 = {
            "igorvc",
            "lynz",
            "tlqmszmq",
            "gtkpybesini",
            "pcmpyucqig",
            "stajbbj",
            "bqsrwbhpi",
            "uracxjmzsvq",
            "yeweiy",
            "udxlwhnmj",
            "oymh",
            "aaxoo"
        }
        local K_ = Kh_9_15
        local Kh_24_9 = Kh_35_13[K_ % 12 + 1]
        if Kh_24_9:len() <= Kh_24_9:gsub("(.)", "%1%1", K_ % 3 % 2 + 1):len() then
            wP = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic", "Secret", "Divine" }
        else
            wP = { "Mythic", "Common", "Epic", "Legendary", "Rare", "Secret", "Divine", "Uncommon" }
        end
        Kh_9_15 = (Kh_9_15 + 1) % 8
    until (Kh_9_15 * 7 + 3) % 8 == 2
end
local Kh_35_14 = Kh_11_7
local Kh_9_16 = {}
if Kh_35_14 then
    local Kh_24_10 = 1
    repeat
        if Kh_24_10 * 2890627 + 4 + 1 >= Kh_24_10 * 2890627 + 4 + 1 + 2 then
            Kh_11_7 = type(Kh_35_14.index) == "table"
        else
            Kh_35_14 = type(Kh_11_7.index) == "table"
        end
        Kh_24_10 = (Kh_24_10 + 0) % 4
    until (Kh_24_10 * 1 + 0) % 4 == 1
end
if Kh_35_14 then
    for k, v in pairs(Kh_11_7.index) do
        local Kh_35_15 = type(k) == "string" and type(v) == "number"
        if Kh_35_15 then
            Kh_9_16[k] = v
        end
    end
end
for i, v in ipairs(wP) do
    if Kh_9_16[v] == nil then
        Kh_9_16[v] = i
    end
end
xS, xM, xE, xy = nil, nil, nil, nil
local Kh_35_16 = 10
repeat
    local Kh_9_17 = (Kh_35_16 * 2 + 2) % 3 + 1
    if Kh_9_17 <= 2 then
        if Kh_9_17 <= 1 then
            if Kh_35_16 * 53246175 + 3 + 2 <= Kh_35_16 * 53246175 + 3 + 2 + 5 then
                xE = {}
                xy = {}
            else
                xy = {}
                xE = {}
            end
            Kh_35_16 = (Kh_35_16 + 5) % 12
        else
            local Kh_9_18 = (vector.create((Kh_35_16 * 2 + 1) % 11 + 1, (Kh_35_16 * 1 + 7) % 13 + 1, (Kh_35_16 * 9 + 14) % 17 + 1))
            local Kh_24_11 = (vector.create((Kh_35_16 * 6 + 1) % 11 + 1, (Kh_35_16 * 1 + 5) % 13 + 1, (Kh_35_16 * 9 + 3) % 17 + 1))
            local Kh_11_8 = (vector.create((Kh_35_16 * 2 + 1) % 11 + 1, (Kh_35_16 * 7 + 1) % 13 + 1, (Kh_35_16 * 13 + 11) % 17 + 1))
            local Kh_26_11 = (vector.create((Kh_35_16 * 4 + 5) % 5 + 1, (Kh_35_16 * 2 + 1) % 7 + 1, (Kh_35_16 * 3 + 6) % 9 + 1))
            if vector.dot(vector.cross(Kh_9_18, (vector.cross(Kh_24_11, Kh_11_8))), Kh_26_11) == vector.dot(Kh_24_11 * vector.dot(Kh_9_18, Kh_11_8) - Kh_11_8 * vector.dot(Kh_9_18, Kh_24_11), Kh_26_11) then
                xS = {
                    Common = Color3.fromRGB(180, 180, 180),
                    Uncommon = Color3.fromRGB(80, 200, 90),
                    Rare = Color3.fromRGB(70, 140, 255),
                    Epic = Color3.fromRGB(170, 80, 255),
                    Legendary = Color3.fromRGB(255, 170, 40),
                    Mythic = Color3.fromRGB(255, 70, 90),
                    Secret = Color3.fromRGB(255, 255, 255),
                    Divine = Color3.fromRGB(255, 215, 80)
                }
            else
                xy = {
                    Common = Color3.fromRGB(180, 180, 180),
                    Mythic = Color3.fromRGB(255, 70, 90),
                    Epic = Color3.fromRGB(170, 80, 255),
                    Secret = Color3.fromRGB(255, 255, 255),
                    Divine = Color3.fromRGB(255, 215, 80),
                    Uncommon = Color3.fromRGB(80, 200, 90),
                    Rare = Color3.fromRGB(70, 140, 255),
                    Legendary = Color3.fromRGB(255, 170, 40)
                }
            end
            Kh_35_16 = (Kh_35_16 + 8) % 12
        end
    else
        local Kh_9_19 = { "pftactn", "ftulvhoiz", "vlsnosar", "oxss", "yyelfvccl", "exkzcsqoo", "ikle", "nidnr" }
        local Ma = Kh_35_16
        local Kh_24_12 = Kh_9_19[Ma % 8 + 1]
        if Kh_24_12:len() >= Kh_24_12:gsub("(.)", "%1%1", Ma % 3 % 2 + 1):len() then
            xE = {}
        else
            xM = {}
        end
        Kh_35_16 = (Kh_35_16 + 2) % 12
    end
until (Kh_35_16 * 1 + 11) % 12 == 0
if type(Kh_2_4) == "table" then
    local Kh_9_20 = {}
    for k, v in pairs(Kh_2_4) do
        local Kh_35_17 = tonumber(k)
        local Kh_24_13 = type(v) == "table" and v.name
        local Kh_24_14 = type(Kh_24_13) == "string" and string.match(Kh_24_13, "^(%S+)")
        local Kh_2_5 = Kh_24_14 or Kh_24_13
        local Kh_24_15 = Kh_35_17
        if Kh_24_15 then
            Kh_24_15 = type(Kh_2_5) == "string"
        end
        if Kh_24_15 and Kh_2_5 ~= "" then
            Kh_9_20[Kh_35_17] = Kh_2_5
            xE[Kh_35_17] = Kh_2_5
            xy[Kh_2_5] = Kh_35_17
        end
    end
    local yM = 1
    while yM <= 16 do
        local yN = yM
        if Kh_9_20[yN] then
            table.insert(xM, Kh_9_20[yN])
        end
        yM += 1
    end
end
if #xM == 0 then
    local Kh_9_21 = 2
    repeat
        if (Kh_9_21 * 2 + 1) * 10 % 3 == ((Kh_9_21 * 2 + 1) * 10 + 0) % 3 then
            xM = { "Grasslands", "Desert", "Underwater", "Artic", "Beach", "Jungle", "Ancient" }
        else
            xM = { "Artic", "Underwater", "Desert", "Beach", "Ancient", "Jungle", "Grasslands" }
        end
        Kh_9_21 = (Kh_9_21 + 1) % 4
    until (Kh_9_21 * 1 + 1) % 4 == 0
    for i, v in ipairs(xM) do
        xE[i] = v
        xy[v] = i
    end
end
wM = {}
if type(wW) == "table" then
    for k in pairs(wW) do
        if type(k) == "string" then
            table.insert(wM, k)
        end
    end
    table.sort(wM)
end
wC = {}
if type(wA) == "table" then
    for k in pairs(wA) do
        if type(k) == "number" then
            table.insert(wC, k)
        end
    end
    table.sort(wC)
end
wt, wq, wm, x3, xZ, Kh_24_16, Kh_11_11, xU, wV, wz, xk, ww, x_, xw, xl, xJ, w4, wS, wp, xR, xr, w5, wB, xF, wF, xX, xe, wI, x5, xC, xf, w7, xD, w9, x0, w3, wx, xn, xb, x1, xz, wD, wo, w8, w1, x6, xL, wL, xN, wT, x8, xo, wG, wu, x2, xt, wJ, ws, xI, xc, xh, Kh_35_18 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Kh_9_22 = 17
repeat
    local Kh_2_7 = (Kh_9_22 * 20 + 19) % 23 + 1
    if Kh_2_7 <= 12 then
        if Kh_2_7 <= 6 then
            if Kh_2_7 <= 3 then
                if Kh_2_7 <= 2 then
                    if Kh_2_7 <= 1 then
                        local Kh_26_13 = {
                            "xhrztosaica",
                            "csdixaoq",
                            "cdljcyibvi",
                            "nbvsocmzv",
                            "wcptuyaxdxi",
                            "hdz",
                            "newreabygw",
                            "idyfqe",
                            "oszmdp",
                            "mwj",
                            "wsiqgne"
                        }
                        local MM = Kh_9_22
                        local Kh_14_4 = Kh_26_13[MM % 11 + 1]
                        if Kh_14_4:len() >= Kh_14_4:reverse():rep(MM % 3 + 2):len() then
                            xF = function(dN)
                                local Ax_4
                                local Aw_3
                                if typeof(dN) ~= "Instance" then
                                    return nil
                                end
                                Aw_3, Ax_4 = pcall(function()
                                    return dN:GetPivot().Position
                                end)
                                local Ay = Aw_3 and typeof(Ax_4) == "Vector3"
                                if Ay then
                                    return Ax_4
                                end
                                local Aw_4 = (dN:FindFirstChild("Hitbox")) or dN.PrimaryPart
                                local AC = if Aw_4 then 1 else 0
                                local AA = 702 * AC + 3281 * (1 - AC)
                                local AB = 3603 * AC + 1476 * (1 - AC)
                                if not ((AA * 350 + AB * 4049 + AA * AB) % 16777213 == 586340) then
                                    Aw_4 = dN:FindFirstChildWhichIsA("BasePart", true)
                                end
                                local Ax_5 = Aw_4
                                if Aw_4 then
                                    Aw_4 = Ax_5.Position
                                end
                                return Aw_4 or nil
                            end
                            wB = fns.fn412
                        else
                            wB = function(dN)
                                local Ax_1
                                local Aw_1
                                if typeof(dN) ~= "Instance" then
                                    return nil
                                end
                                Aw_1, Ax_1 = pcall(function()
                                    return dN:GetPivot().Position
                                end)
                                local Ay = Aw_1 and typeof(Ax_1) == "Vector3"
                                if Ay then
                                    return Ax_1
                                end
                                local Aw_2 = (dN:FindFirstChild("Hitbox")) or dN.PrimaryPart
                                local AC = if Aw_2 then 1 else 0
                                local AA = 702 * AC + 3281 * (1 - AC)
                                local AB = 3603 * AC + 1476 * (1 - AC)
                                if not ((AA * 350 + AB * 4049 + AA * AB) % 16777213 == 586340) then
                                    Aw_2 = dN:FindFirstChildWhichIsA("BasePart", true)
                                end
                                local Ax_2 = Aw_2
                                if Aw_2 then
                                    Aw_2 = Ax_2.Position
                                end
                                return Aw_2 or nil
                            end
                            xF = fns.fn412
                        end
                        Kh_9_22 = (Kh_9_22 + 84) % 92
                    else
                        local Kh_26_14 = (vector.create((Kh_9_22 * 7 + 8) % 11 + 1, (Kh_9_22 * 3 + 6) % 13 + 1, (Kh_9_22 * 10 + 16) % 17 + 1))
                        local Kh_14_5 = (vector.create((Kh_9_22 * 4 + 4) % 11 + 1, (Kh_9_22 * 7 + 3) % 13 + 1, (Kh_9_22 * 6 + 3) % 17 + 1))
                        local Kh_3_2 = (vector.create((Kh_9_22 * 5 + 9) % 11 + 1, (Kh_9_22 * 8 + 3) % 13 + 1, (Kh_9_22 * 15 + 4) % 17 + 1))
                        local Kh_29_2 = (vector.create((Kh_9_22 * 4 + 8) % 11 + 1, (Kh_9_22 * 8 + 9) % 13 + 1, (Kh_9_22 * 1 + 4) % 17 + 1))
                        if vector.dot(vector.cross(Kh_26_14, Kh_14_5), (vector.cross(Kh_3_2, Kh_29_2))) == vector.dot(Kh_26_14, Kh_3_2) * vector.dot(Kh_14_5, Kh_29_2) - vector.dot(Kh_26_14, Kh_29_2) * vector.dot(Kh_14_5, Kh_3_2) then
                            wF = fns.fn1143
                            xX = fns.fn513
                            xe = function(eq)
                                local Bb = not eq or not eq.Parent
                                local Bb_12
                                if Bb then
                                    return false
                                elseif wZ(fireproximityprompt) then
                                    local Bb_7 = pcall(fireproximityprompt, eq)
                                    if Bb_7 then
                                        return true
                                    end
                                    local Bb_8 = pcall(fireproximityprompt, eq, 1)
                                    if Bb_8 then
                                        return true
                                    end
                                    local Bb_9 = (tonumber(eq.HoldDuration)) or 0
                                    pcall(function()
                                        eq:InputHoldBegin()
                                    end)
                                    if not Bb_12 then
                                        return false
                                    end
                                    task.wait(Bb_9 + 0.2)
                                    pcall(function()
                                        eq:InputHoldEnd()
                                    end)
                                    return true
                                else
                                    local Bb_11 = (tonumber(eq.HoldDuration)) or 0
                                    Bb_12 = pcall(function()
                                        eq:InputHoldBegin()
                                    end)
                                    if not Bb_12 then
                                        return false
                                    end
                                    task.wait(Bb_11 + 0.2)
                                    pcall(function()
                                        eq:InputHoldEnd()
                                    end)
                                    return true
                                end
                            end
                            wI = fns.fn179
                            x5 = fns.fn442
                        else
                            x5 = fns.fn1143
                            wF = fns.fn513
                            wI = function(eq)
                                local Bb = not eq or not eq.Parent
                                local Bb_6
                                if Bb then
                                    return false
                                elseif wZ(fireproximityprompt) then
                                    local Bb_1 = pcall(fireproximityprompt, eq)
                                    if Bb_1 then
                                        return true
                                    end
                                    local Bb_2 = pcall(fireproximityprompt, eq, 1)
                                    if Bb_2 then
                                        return true
                                    end
                                    local Bb_3 = (tonumber(eq.HoldDuration)) or 0
                                    pcall(function()
                                        eq:InputHoldBegin()
                                    end)
                                    if not Bb_6 then
                                        return false
                                    end
                                    task.wait(Bb_3 + 0.2)
                                    pcall(function()
                                        eq:InputHoldEnd()
                                    end)
                                    return true
                                else
                                    local Bb_5 = (tonumber(eq.HoldDuration)) or 0
                                    Bb_6 = pcall(function()
                                        eq:InputHoldBegin()
                                    end)
                                    if not Bb_6 then
                                        return false
                                    end
                                    task.wait(Bb_5 + 0.2)
                                    pcall(function()
                                        eq:InputHoldEnd()
                                    end)
                                    return true
                                end
                            end
                            xe = fns.fn179
                            xX = fns.fn442
                        end
                        Kh_9_22 = (Kh_9_22 + 38) % 92
                    end
                else
                    local Kh_26_15 = {
                        "qengfq",
                        "ivqwj",
                        "dkjotgqi",
                        "hovlby",
                        "nedmwoj",
                        "ghzdjytjiq",
                        "ezlefcmy",
                        "rpsrvpjnv",
                        "riefjgnhn",
                        "tsmnjct",
                        "czguyzaai",
                        "gfj"
                    }
                    local LU = Kh_9_22
                    local Kh_14_6 = Kh_26_15[LU % 12 + 1]
                    if Kh_14_6:len() <= Kh_14_6:gsub("(.)", "%1%1", LU % 3 % 2 + 1):len() then
                        xC = fns.fn1128
                        xf = fns.fn441
                        w7 = fns.fn188
                    else
                        w7 = fns.fn1128
                        xC = fns.fn441
                        xf = fns.fn188
                    end
                    Kh_9_22 = (Kh_9_22 + 38) % 92
                end
            elseif Kh_2_7 <= 5 then
                if Kh_2_7 <= 4 then
                    local KH = bit32.rrotate(bit32.bxor(bit32.lrotate(Kh_9_22, 18), string.byte(tostring(xw))), 18)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(KH, 2900844583), 1869418737), (bit32.bxor(bit32.band(KH, 1394122712), 383200031))), 1869418737), 383200031) ~= KH then
                        x0 = fn1311
                        xD = fns.fn241
                        w9 = fns.fn788
                    else
                        xD = fn1311
                        w9 = fns.fn241
                        x0 = fns.fn788
                    end
                    Kh_9_22 = (Kh_9_22 + 84) % 92
                else
                    if (Kh_9_22 * 1 + 3) * 9 % 4 == ((Kh_9_22 * 1 + 3) * 9 + 8) % 4 then
                        w3 = fns.fn53
                        wx = fns.fn355
                    else
                        wx = fns.fn53
                        w3 = fns.fn355
                    end
                    Kh_9_22 = (Kh_9_22 + 15) % 92
                end
            else
                if (Kh_9_22 * 2 + 8) * 16 % 3 == ((Kh_9_22 * 2 + 8) * 16 + 3) % 3 then
                    xn = fn1238
                    xb = fn1253
                    x1 = fns.fn863
                else
                    x1 = fn1238
                    xn = fn1253
                    xb = fns.fn863
                end
                Kh_9_22 = (Kh_9_22 + 84) % 92
            end
        elseif Kh_2_7 <= 9 then
            if Kh_2_7 <= 8 then
                if Kh_2_7 <= 7 then
                    local Kh_26_16 = (vector.create((Kh_9_22 * 5 + 7) % 11 + 1, (Kh_9_22 * 6 + 10) % 13 + 1, (Kh_9_22 * 11 + 10) % 17 + 1))
                    local Kh_14_7 = (vector.create((Kh_9_22 * 7 + 6) % 11 + 1, (Kh_9_22 * 8 + 7) % 13 + 1, (Kh_9_22 * 15 + 1) % 17 + 1))
                    local Kh_3_3 = (vector.create((Kh_9_22 * 4 + 3) % 11 + 1, (Kh_9_22 * 8 + 5) % 13 + 1, (Kh_9_22 * 8 + 13) % 17 + 1))
                    local Kh_29_3 = (vector.create((Kh_9_22 * 6 + 9) % 11 + 1, (Kh_9_22 * 3 + 7) % 13 + 1, (Kh_9_22 * 1 + 2) % 17 + 1))
                    if vector.dot(vector.cross(Kh_26_16, Kh_14_7), (vector.cross(Kh_3_3, Kh_29_3))) == vector.dot(Kh_26_16, Kh_3_3) * vector.dot(Kh_14_7, Kh_29_3) - vector.dot(Kh_26_16, Kh_29_3) * vector.dot(Kh_14_7, Kh_3_3) then
                        xz = fns.fn1133
                        wD = fns.fn634
                        wo = fns.fn77
                    else
                        wD = fns.fn1133
                        wo = fns.fn634
                        xz = fns.fn77
                    end
                    Kh_9_22 = (Kh_9_22 + 15) % 92
                else
                    local Kh_26_17 = (vector.create((Kh_9_22 * 3 + 7) % 11 + 1, (Kh_9_22 * 8 + 1) % 13 + 1, (Kh_9_22 * 11 + 9) % 17 + 1))
                    local Kh_14_8 = (vector.create((Kh_9_22 * 3 + 5) % 11 + 1, (Kh_9_22 * 6 + 12) % 13 + 1, (Kh_9_22 * 13 + 6) % 17 + 1))
                    local LG = vector.cross(Kh_26_17, Kh_14_8)
                    local LH = vector.dot(Kh_26_17, Kh_14_8)
                    if vector.dot(LG, LG) + LH * LH == vector.dot(Kh_26_17, Kh_26_17) * vector.dot(Kh_14_8, Kh_14_8) then
                        w8 = function()
                            local Dg
                            local Dk_3
                            local Dj_5, Dj_7
                            if not wt.AutoPlace then
                                return
                            end
                            if xf() then
                                return
                            end
                            local Dh = x0()
                            if #Dh == 0 then
                                return
                            end
                            local Di = wp()
                            local Di_5
                            if not Di then
                                xU("No plot assigned")
                                return
                            end
                            Dj_5, Dk_3 = x_()
                            local Dj_6 = Dk_3 and (Dk_3.Position - Di.Position).Magnitude > math.max(w_, 12)
                            if Dj_6 then
                                xJ(Di.Position)
                                task.wait(0.15)
                                local Di_4 = not wR() or not wt.AutoPlace
                                if Di_4 then
                                    return
                                end
                            end
                            Dj_7, Di_5, Dg = x_()
                            local Df = Dh[1]
                            local attr = Df:GetAttribute("Id")
                            local Di_6 = w3()
                            local Dj_8 = not Di_6
                            local Dk_4 = type(attr) ~= "string" or Dj_8
                            if Dk_4 then
                                return
                            end
                            if Dg then
                                pcall(function()
                                    Dg:EquipTool(Df)
                                end)
                                task.wait(0.12)
                            end
                            xU("Placing egg")
                            local Dr = if xk("EggService", "placeEgg", attr, Di_6) then 1 else 0
                            if Dr == 1 then
                                wt.Placed = wt.Placed + 1
                            end
                        end
                        w1 = fns.fn766
                        x6 = fns.fn722
                        xL = fns.fn248
                    else
                        x6 = function()
                            local Dg
                            local Dk_1
                            local Dj_1, Dj_3
                            if not wt.AutoPlace then
                                return
                            end
                            if xf() then
                                return
                            end
                            local Dh = x0()
                            if #Dh == 0 then
                                return
                            end
                            local Di = wp()
                            local Di_2
                            if not Di then
                                xU("No plot assigned")
                                return
                            end
                            Dj_1, Dk_1 = x_()
                            local Dj_2 = Dk_1 and (Dk_1.Position - Di.Position).Magnitude > math.max(w_, 12)
                            if Dj_2 then
                                xJ(Di.Position)
                                task.wait(0.15)
                                local Di_1 = not wR() or not wt.AutoPlace
                                if Di_1 then
                                    return
                                end
                            end
                            Dj_3, Di_2, Dg = x_()
                            local Df = Dh[1]
                            local attr = Df:GetAttribute("Id")
                            local Di_3 = w3()
                            local Dj_4 = not Di_3
                            local Dk_2 = type(attr) ~= "string" or Dj_4
                            if Dk_2 then
                                return
                            end
                            if Dg then
                                pcall(function()
                                    Dg:EquipTool(Df)
                                end)
                                task.wait(0.12)
                            end
                            xU("Placing egg")
                            local Dr = if xk("EggService", "placeEgg", attr, Di_3) then 1 else 0
                            if Dr == 1 then
                                wt.Placed = wt.Placed + 1
                            end
                        end
                        w8 = fns.fn766
                        xL = fns.fn722
                        w1 = fns.fn248
                    end
                    Kh_9_22 = (Kh_9_22 + 15) % 92
                end
            else
                local Kh_26_18 = (vector.create((Kh_9_22 * 6 + 3) % 11 + 1, (Kh_9_22 * 2 + 4) % 13 + 1, (Kh_9_22 * 14 + 13) % 17 + 1))
                local Kh_14_9 = (vector.create((Kh_9_22 * 2 + 5) % 11 + 1, (Kh_9_22 * 3 + 11) % 13 + 1, (Kh_9_22 * 9 + 5) % 17 + 1))
                local K4 = vector.dot(Kh_26_18, Kh_14_9)
                if K4 * K4 >= vector.dot(Kh_26_18, Kh_26_18) * vector.dot(Kh_14_9, Kh_14_9) + 1 then
                    wT = fns.fn475
                    wL = fns.fn874
                    xN = fns.fn339
                else
                    wL = fns.fn475
                    xN = fns.fn874
                    wT = fns.fn339
                end
                Kh_9_22 = (Kh_9_22 + 61) % 92
            end
        elseif Kh_2_7 <= 11 then
            if Kh_2_7 <= 10 then
                if (Kh_9_22 * 3 + 3) * 17 % 4 == ((Kh_9_22 * 3 + 3) * 17 + 12) % 4 then
                    x8 = fns.fn986
                    xo = fns.fn945
                else
                    xo = fns.fn986
                    x8 = fns.fn945
                end
                Kh_9_22 = (Kh_9_22 + 15) % 92
            else
                local Kh_26_19 = (vector.create((Kh_9_22 * 1 + 4) % 11 + 1, (Kh_9_22 * 2 + 2) % 13 + 1, (Kh_9_22 * 7 + 5) % 17 + 1))
                local Kh_14_10 = (vector.create((Kh_9_22 * 2 + 8) % 11 + 1, (Kh_9_22 * 5 + 2) % 13 + 1, (Kh_9_22 * 7 + 8) % 17 + 1))
                local KT = vector.cross(Kh_26_19, Kh_14_10)
                local KU = vector.dot(Kh_26_19, Kh_14_10)
                if vector.dot(KT, KT) + KU * KU == vector.dot(Kh_26_19, Kh_26_19) * vector.dot(Kh_14_10, Kh_14_10) then
                    wG = fns.fn798
                    wu = fns.fn769
                    x2 = fns.fn49
                    xt = function()
                        local EA, EB
                        local EC_2
                        if not wt.AutoTrampoline then
                            return
                        end
                        if x2() then
                            return
                        end
                        if xn() then
                            xU("On trampoline")
                            return
                        end
                        EB = wx()
                        if not EB then
                            xU("No trampoline")
                            return
                        end
                        xU("Going on trampoline")
                        EC_2, EA = x_()
                        if not EA then
                            return
                        end
                        pcall(function()
                            EA.AssemblyLinearVelocity = Vector3.zero
                            EA.AssemblyAngularVelocity = Vector3.zero
                            EA.CFrame = CFrame.new(EB.Position + Vector3.new(0, xq, 0))
                        end)
                    end
                    xg.TeleportToBase = fns.fn1086
                    xg.TeleportToZone = fns.fn1130
                    wJ = fns.fn424
                else
                    wJ = fns.fn798
                    x2 = fns.fn769
                    xg = fns.fn49
                    wu = function()
                        local EA, EB
                        local EC_1
                        if not wt.AutoTrampoline then
                            return
                        end
                        if x2() then
                            return
                        end
                        if xn() then
                            xU("On trampoline")
                            return
                        end
                        EB = wx()
                        if not EB then
                            xU("No trampoline")
                            return
                        end
                        xU("Going on trampoline")
                        EC_1, EA = x_()
                        if not EA then
                            return
                        end
                        pcall(function()
                            EA.AssemblyLinearVelocity = Vector3.zero
                            EA.AssemblyAngularVelocity = Vector3.zero
                            EA.CFrame = CFrame.new(EB.Position + Vector3.new(0, xq, 0))
                        end)
                    end
                    wG.TeleportToBase = fns.fn1086
                    wG.TeleportToZone = fns.fn1130
                    xt = fns.fn424
                end
                Kh_9_22 = (Kh_9_22 + 84) % 92
            end
        else
            local Kh_26_20 = (vector.create((Kh_9_22 * 1 + 3) % 11 + 1, (Kh_9_22 * 7 + 6) % 13 + 1, (Kh_9_22 * 7 + 10) % 17 + 1))
            local Kh_14_11 = (vector.create((Kh_9_22 * 7 + 7) % 11 + 1, (Kh_9_22 * 11 + 13) % 13 + 1, (Kh_9_22 * 3 + 12) % 17 + 1))
            local Kh_3_4 = (vector.create((Kh_9_22 * 4 + 4) % 11 + 1, (Kh_9_22 * 1 + 3) % 13 + 1, (Kh_9_22 * 11 + 15) % 17 + 1))
            if vector.dot(vector.cross(Kh_26_20, Kh_14_11), Kh_3_4) == vector.dot(vector.cross(Kh_14_11, Kh_3_4), Kh_26_20) then
                ws = function()
                    for k, v in pairs(x3) do
                        local E4 = v
                        pcall(function()
                            if E4.Destroy then
                                E4:Destroy()
                            elseif E4.Remove then
                                E4:Remove()
                            else
                                E4.Visible = false
                            end
                        end)
                        x3[k] = nil
                    end
                    if xZ then
                        xZ:Disconnect()
                        xZ = nil
                    end
                end
                xI = fns.fn840
                xc = function()
                    local Fi_2
                    if not wt.EggEsp then
                        return
                    end
                    local CurrentCamera = wK.CurrentCamera
                    if not CurrentCamera then
                        return
                    end
                    local Fc = {}
                    for k, v in xD() do
                        local attr = v:GetAttribute("EggAnimal")
                        local Fe = (xr(attr)) or "Unknown"
                        if wt.EspRarityCount == 0 or wt.EspRarities[Fe] then
                            Fc[v] = true
                            local Fe_4 = xI(v)
                            local Fg = wB(v)
                            local Fh = Fe_4 and Fg
                            local Fh_3
                            if Fh then
                                Fi_2, Fh_3 = CurrentCamera:WorldToViewportPoint(Fg)
                                if Fh_3 and Fi_2.Z > 0 then
                                    Fe_4.Position = Vector2.new(Fi_2.X, Fi_2.Y)
                                    local format = string.format
                                    local Fh_4 = attr or "Egg"
                                    Fe_4.Text = format("%s [%s]", tostring(Fh_4), Fe)
                                    Fe_4.Color = wJ(Fe)
                                    Fe_4.Visible = true
                                else
                                    Fe_4.Visible = false
                                end
                            end
                        end
                    end
                    for k, v in pairs(x3) do
                        local Fv = v
                        if not Fc[k] then
                            pcall(function()
                                if Fv.Destroy then
                                    Fv:Destroy()
                                elseif Fv.Remove then
                                    Fv:Remove()
                                else
                                    Fv.Visible = false
                                end
                            end)
                            x3[k] = nil
                        end
                    end
                end
                xh = fns.fn724
            else
                xh = function()
                    for k, v in pairs(x3) do
                        local E4 = v
                        pcall(function()
                            if E4.Destroy then
                                E4:Destroy()
                            elseif E4.Remove then
                                E4:Remove()
                            else
                                E4.Visible = false
                            end
                        end)
                        x3[k] = nil
                    end
                    if xZ then
                        xZ:Disconnect()
                        xZ = nil
                    end
                end
                ws = fns.fn840
                xI = function()
                    local Fi_1
                    if not wt.EggEsp then
                        return
                    end
                    local CurrentCamera = wK.CurrentCamera
                    if not CurrentCamera then
                        return
                    end
                    local Fc = {}
                    for k, v in xD() do
                        local attr = v:GetAttribute("EggAnimal")
                        local Fe = (xr(attr)) or "Unknown"
                        if wt.EspRarityCount == 0 or wt.EspRarities[Fe] then
                            Fc[v] = true
                            local Fe_2 = xI(v)
                            local Fg = wB(v)
                            local Fh = Fe_2 and Fg
                            local Fh_1
                            if Fh then
                                Fi_1, Fh_1 = CurrentCamera:WorldToViewportPoint(Fg)
                                if Fh_1 and Fi_1.Z > 0 then
                                    Fe_2.Position = Vector2.new(Fi_1.X, Fi_1.Y)
                                    local format = string.format
                                    local Fh_2 = attr or "Egg"
                                    Fe_2.Text = format("%s [%s]", tostring(Fh_2), Fe)
                                    Fe_2.Color = wJ(Fe)
                                    Fe_2.Visible = true
                                else
                                    Fe_2.Visible = false
                                end
                            end
                        end
                    end
                    for k, v in pairs(x3) do
                        local Fv = v
                        if not Fc[k] then
                            pcall(function()
                                if Fv.Destroy then
                                    Fv:Destroy()
                                elseif Fv.Remove then
                                    Fv:Remove()
                                else
                                    Fv.Visible = false
                                end
                            end)
                            x3[k] = nil
                        end
                    end
                end
                xc = fns.fn724
            end
            Kh_9_22 = (Kh_9_22 + 61) % 92
        end
    elseif Kh_2_7 <= 18 then
        if Kh_2_7 <= 15 then
            if Kh_2_7 <= 14 then
                if Kh_2_7 <= 13 then
                    local Kh_26_21 = { "yiaaukajibz", "idtko", "dggxbkakdhs", "nthsgx", "sdr", "bjgueki", "sgnjkpettg" }
                    local L9 = Kh_9_22
                    local Kh_14_12 = Kh_26_21[L9 % 7 + 1]
                    if Kh_14_12:len() >= Kh_14_12:reverse():rep(L9 % 3 + 2):len() then
                        Kh_35_18.SetAutoCollect = fns.fn169
                        Kh_35_18.SetAutoPlace = fns.fn744
                        Kh_35_18.SetAutoHatch = fns.fn1045
                        Kh_35_18.SetAutoEquipBest = fns.fn1035
                        Kh_35_18.SetAutoBuyTrail = fns.fn696
                        Kh_35_18.SetAutoSell = fns.fn627
                        Kh_35_18.SetSellEquipped = fns.fn81
                        Kh_35_18.SetAutoUpgradePen = fns.fn1215
                        Kh_35_18.SetAutoUpgradeTrampoline = fn1274
                        Kh_35_18.SetAutoTrampoline = fn1257
                        Kh_35_18.SetEggEsp = fns.fn501
                        Kh_35_18.SetCollectRarities = fns.fn1200
                        Kh_35_18.SetCollectZones = fn1260
                        Kh_35_18.SetEspRarities = fn1333
                        Kh_35_18.SetSellRarities = fns.fn371
                        Kh_35_18.SetSellAnimals = fns.fn650
                        Kh_35_18.SetTeleportZone = fns.fn985
                        Kh_35_18.Track(fns.fn1161)
                        xg = function()
                            local JW
                            JW = nil
                            local SaveManager, onDiscord, Library, Toggles, ThemeManager, Options, J1, J2
                            Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
                            ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
                            SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
                            Toggles = Library.Toggles
                            Options = Library.Options
                            xQ(xg, Library)
                            J2 = function(lq, lr)
                                local FW = (wZ(setclipboard)) and setclipboard
                                local FX = FW
                                if not FX then
                                    local FW_3 = (wZ(toclipboard)) and toclipboard
                                    FX = FW_3 or nil
                                end
                                local FW_4 = FX
                                if not FW_4 then
                                    Library:Notify("Clipboard is unavailable")
                                    return
                                end
                                local FX_2 = pcall(FW_4, lq)
                                if FX_2 then
                                    Library:Notify(lr)
                                else
                                    Library:Notify("Failed to copy")
                                end
                            end
                            onDiscord = function()
                                J2(wY, "Copied Discord invite to clipboard")
                            end
                            local Window = Library:CreateWindow({
                                Title = "Ouroboros",
                                Font = Enum.Font.BuilderSans,
                                Footer = { { Text = wY, Copyable = true }, "|", w6, "|", w0 },
                                Icon = 132608042600488,
                                NotifySide = "Right",
                                ShowCustomCursor = false,
                                CornerRadius = 0,
                                SidebarCompacted = true,
                                TabSwipeFrom = "bottom",
                                Animations = { TabSwitch = true }
                            })
                            Window:SetGlow(false)
                            J1 = {
                                [1] = Window:AddTab("Info", "info"),
                                [2] = Window:AddTab("Main", "gamepad-2"),
                                [3] = Window:AddTab("Player", "person-standing"),
                                [4] = Window:AddTab("Settings", "settings")
                            }
                            JW = function(lK)
                                lK:AddDiscordBox(nil, {
                                    Banner = 95892854151512,
                                    Avatar = 132608042600488,
                                    Title = "Ouroboros Hub",
                                    Subtitle = "Dupes, keyless scripts and updates",
                                    Status = "online",
                                    Accent = Color3.fromRGB(88, 101, 242),
                                    Link = wY,
                                    Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
                                })
                                return lK
                            end
                            local function J3_7(lN)
                                return JW(lN:AddLeftGroupbox("Discord", "message-circle"))
                            end
                            J3_7(J1[2])
                            J3_7(J1[3])
                            J3_7(J1[4])
                            local function J3_8()
                                local l_
                                local CollectGroup = J1[2]:AddLeftGroupbox("Collect", "egg")
                                local Label = CollectGroup:AddLabel(xg.GetStatus(), true)
                                l_ = task.spawn(function()
                                    while true do
                                        task.wait(0.4)
                                        if Library.Unloaded then
                                            break
                                        end
                                        pcall(function()
                                            Label:SetText(xg.GetStatus())
                                        end)
                                    end
                                end)
                                xg.Track(function()
                                    if coroutine.status(l_) ~= "dead" then
                                        pcall(task.cancel, l_)
                                    end
                                end)
                                CollectGroup:AddDivider()
                                CollectGroup:AddToggle("AutoCollectEggs", {
                                    Text = "Auto Collect Eggs",
                                    Default = false,
                                    Callback = function(l1)
                                        xg.SetAutoCollect(l1)
                                    end
                                })
                                CollectGroup:AddDropdown("CollectRarities", {
                                    Text = "Rarity Filter",
                                    Values = xg.RarityValues(),
                                    Default = {},
                                    Multi = true,
                                    AllowNull = true,
                                    Expandable = true,
                                    Callback = function(l3)
                                        xg.SetCollectRarities(l3)
                                    end
                                })
                                CollectGroup:AddDropdown("CollectZones", {
                                    Text = "Zone Filter",
                                    Values = xg.ZoneValues(),
                                    Default = {},
                                    Multi = true,
                                    AllowNull = true,
                                    Expandable = true,
                                    Callback = function(l5)
                                        xg.SetCollectZones(l5)
                                    end
                                })
                                CollectGroup:AddToggle("EggEsp", {
                                    Text = "Egg ESP",
                                    Default = false,
                                    Callback = function(l7)
                                        xg.SetEggEsp(l7)
                                    end
                                })
                                CollectGroup:AddDropdown("EspRarities", {
                                    Text = "ESP Rarity Filter",
                                    Values = xg.RarityValues(),
                                    Default = {},
                                    Multi = true,
                                    AllowNull = true,
                                    Expandable = true,
                                    Callback = function(l9)
                                        xg.SetEspRarities(l9)
                                    end
                                })
                                local FarmGroup = J1[2]:AddLeftGroupbox("Farm", "rabbit")
                                FarmGroup:AddToggle("AutoPlaceEggs", {
                                    Text = "Auto Place Eggs",
                                    Default = false,
                                    Callback = function(mc)
                                        xg.SetAutoPlace(mc)
                                    end
                                })
                                FarmGroup:AddToggle("AutoHatchEggs", {
                                    Text = "Auto Hatch Eggs",
                                    Default = false,
                                    Callback = function(me)
                                        xg.SetAutoHatch(me)
                                    end
                                })
                                FarmGroup:AddToggle("AutoEquipBest", {
                                    Text = "Auto Equip Best",
                                    Default = false,
                                    Callback = function(mg)
                                        xg.SetAutoEquipBest(mg)
                                    end
                                })
                                FarmGroup:AddToggle("AutoBuyTrail", {
                                    Text = "Auto Buy Trail",
                                    Default = false,
                                    Callback = function(mi)
                                        xg.SetAutoBuyTrail(mi)
                                    end
                                })
                                FarmGroup:AddToggle("AutoTrampoline", {
                                    Text = "Auto Go on Trampoline",
                                    Default = false,
                                    Callback = function(mk)
                                        xg.SetAutoTrampoline(mk)
                                    end
                                })
                                local SellGroup = J1[2]:AddRightGroupbox("Sell", "hand-coins")
                                SellGroup:AddToggle("AutoSell", {
                                    Text = "Auto Sell",
                                    Default = false,
                                    Callback = function(mn)
                                        xg.SetAutoSell(mn)
                                    end
                                })
                                SellGroup:AddDropdown("SellRarities", {
                                    Text = "Sell Rarities",
                                    Values = xg.RarityValues(),
                                    Default = {},
                                    Multi = true,
                                    AllowNull = true,
                                    Expandable = true,
                                    Callback = function(mp)
                                        xg.SetSellRarities(mp)
                                    end
                                })
                                SellGroup:AddDropdown("SellAnimals", {
                                    Text = "Sell Animals",
                                    Values = xg.AnimalValues(),
                                    Default = {},
                                    Multi = true,
                                    AllowNull = true,
                                    Expandable = true,
                                    Callback = function(mr)
                                        xg.SetSellAnimals(mr)
                                    end
                                })
                                SellGroup:AddToggle("SellEquipped", {
                                    Text = "Sell Equipped",
                                    Default = false,
                                    Callback = function(mt)
                                        xg.SetSellEquipped(mt)
                                    end
                                })
                                local UpgradesGroup = J1[2]:AddRightGroupbox("Upgrades", "arrow-up")
                                UpgradesGroup:AddToggle("AutoUpgradePen", {
                                    Text = "Auto Upgrade Pen",
                                    Default = false,
                                    Callback = function(mw)
                                        xg.SetAutoUpgradePen(mw)
                                    end
                                })
                                UpgradesGroup:AddToggle("AutoUpgradeTrampoline", {
                                    Text = "Auto Upgrade Trampoline",
                                    Default = false,
                                    Callback = function(my)
                                        xg.SetAutoUpgradeTrampoline(my)
                                    end
                                })
                                local TravelGroup = J1[2]:AddRightGroupbox("Travel", "map-pin")
                                TravelGroup:AddButton({
                                    Text = "Teleport to Base",
                                    Func = function()
                                        xg.TeleportToBase()
                                    end
                                })
                                TravelGroup:AddDropdown("TeleportZone", {
                                    Text = "Zone",
                                    Values = xg.ZoneValues(),
                                    Default = xM[1],
                                    Callback = function(mE)
                                        xg.SetTeleportZone(mE)
                                    end
                                })
                                TravelGroup:AddButton({
                                    Text = "Teleport to Zone",
                                    Func = function()
                                        local TeleportToZone = xg.TeleportToZone
                                        local F5 = Options.TeleportZone and Options.TeleportZone.Value
                                        TeleportToZone(F5)
                                    end
                                })
                            end
                            J3_8()
                            local function J3_9()
                                local Gy
                                local Gr
                                local Gt
                                local Gp
                                Gp = nil
                                Gr = nil
                                Gt = nil
                                Gy = nil
                                local Gm, Gn, Label3, Label, Gs, Gu, Gv, Gw, Label2
                                Gy = function(mM)
                                    return (tostring(mM):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
                                end
                                Gt = function(mO, mP)
                                    return string.format('<font color="%s">%s</font>', mP, Gy(mO))
                                end
                                Gm = function(mS, mT, mU)
                                    return string.format("<b>%s</b> %s %s", mS, Gt("-", "#5a6070"), Gt(mT, mU))
                                end
                                local Gz = "#8b93a3"
                                local GA = "#6ec1ff"
                                Gs = "#e8a34d"
                                Gw = "#7fd47f"
                                local GB = xg.Support()
                                local GC = #GB == 0 and "ready"
                                local GD = GC or "limited: " .. table.concat(GB, ", ")
                                Gv = "Unknown"
                                pcall(function()
                                    local F8_2
                                    local F7_3
                                    if wZ(identifyexecutor) then
                                        F8_2, F7_3 = identifyexecutor()
                                        local F9 = F8_2 ~= ""
                                        local Ga = type(F8_2) == "string" and F9
                                        if Ga then
                                            local F9_2 = type(F7_3) == "string" and F7_3 ~= "" and F8_2 .. " " .. F7_3
                                            Gv = F9_2 or F8_2
                                        end
                                    end
                                end)
                                Gp = os.clock()
                                Gu = function()
                                    local Gf = math.floor(os.clock() - Gp)
                                    if Gf < 60 then
                                        return Gf .. "s"
                                    elseif Gf < 3600 then
                                        return string.format("%dm %ds", Gf // 60, Gf % 60)
                                    else
                                        return string.format("%dh %dm", Gf // 3600, Gf % 3600 // 60)
                                    end
                                end
                                local UserGroup = J1[1]:AddLeftGroupbox("User", "circle-user")
                                UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
                                UserGroup:AddLabel(Gm("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, Gw), true)
                                UserGroup:AddLabel(Gm("UserId", tostring(LocalPlayer.UserId), GA), true)
                                UserGroup:AddLabel(Gm("Executor", Gv .. "  " .. GD, Gw), true)
                                UserGroup:AddDivider()
                                Label3 = UserGroup:AddLabel(Gm("Session", Gu(), Gs), true)
                                UserGroup:AddDivider()
                                UserGroup:AddButton({
                                    Text = "Copy Username",
                                    Func = function()
                                        J2(LocalPlayer.Name, "Copied username")
                                    end
                                })
                                UserGroup:AddButton({
                                    Text = "Copy Profile Link",
                                    Func = function()
                                        J2("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
                                    end
                                })
                                local DiscordGroup = J1[1]:AddRightGroupbox("Discord", "message-circle")
                                JW(DiscordGroup)
                                local SessionGroup = J1[1]:AddRightGroupbox("Session", "signal")
                                SessionGroup:AddLabel(Gm("Game", w6, GA), true)
                                Label2 = SessionGroup:AddLabel(Gm("Players", "0/0", Gw), true)
                                Gn = tostring(game.JobId)
                                local GA_3 = #Gn > 18 and string.sub(Gn, 1, 18) .. "..."
                                local GC_4 = GA_3 or Gn
                                SessionGroup:AddLabel(Gm("Job", GC_4, Gz), true)
                                Label = SessionGroup:AddLabel(Gm("Ping", "0 ms", Gs), true)
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
                                        J2(Gn, "Copied Job ID")
                                    end
                                })
                                Gr = task.spawn(function()
                                    local Gi_2
                                    local Gh_3
                                    while true do
                                        task.wait(1)
                                        if Library.Unloaded then
                                            break
                                        end
                                        Label3:SetText(Gm("Session", Gu(), Gs))
                                        Label2:SetText(Gm("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), Gw))
                                        Gh_3, Gi_2 = pcall(function()
                                            return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                                        end)
                                        local Gh_4 = Gh_3 and Gi_2 .. " ms" or "n/a"
                                        Label:SetText(Gm("Ping", Gh_4, Gs))
                                    end
                                end)
                                xg.Track(function()
                                    if coroutine.status(Gr) ~= "dead" then
                                        pcall(task.cancel, Gr)
                                    end
                                end)
                                local SocialsGroup = J1[1]:AddRightGroupbox("Socials", "link")
                                SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
                                SocialsGroup:AddButton({
                                    Text = "Rscripts",
                                    Func = function()
                                        J2(wU, "Copied Rscripts profile")
                                    end
                                })
                                SocialsGroup:AddButton({
                                    Text = "Website",
                                    Func = function()
                                        J2(wQ, "Copied website link")
                                    end
                                })
                            end
                            J3_9()
                            local function J3_10()
                                local n8
                                local n9
                                local ob
                                local oa
                                local MovementGroup = J1[3]:AddLeftGroupbox("Movement", "footprints")
                                MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
                                MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
                                MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
                                MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
                                MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
                                local FlyGroup = J1[3]:AddRightGroupbox("Fly", "feather")
                                FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
                                FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
                                n9 = {}
                                oa = {}
                                local n7 = {}
                                ob = {}
                                n8 = {}
                                local function oc()
                                    for k, v in n8 do
                                        if k.Parent then
                                            k.CanCollide = v
                                        end
                                    end
                                    table.clear(n8)
                                end
                                local function og()
                                    for k, v in n9 do
                                        if k.Parent then
                                            k.WalkSpeed = v
                                        end
                                    end
                                    table.clear(n9)
                                end
                                local function ol()
                                    for k, v in oa do
                                        if k.Parent then
                                            k.PlatformStand = v
                                        end
                                    end
                                    table.clear(oa)
                                end
                                local function op(oq)
                                    if not oq:IsA("ProximityPrompt") then
                                        return
                                    end
                                    if ob[oq] == nil then
                                        ob[oq] = {
                                            HoldDuration = oq.HoldDuration,
                                            MaxActivationDistance = oq.MaxActivationDistance,
                                            RequiresLineOfSight = oq.RequiresLineOfSight
                                        }
                                    end
                                    oq.HoldDuration = 0
                                    oq.MaxActivationDistance = 50
                                    oq.RequiresLineOfSight = false
                                end
                                local function ou()
                                    for k, v in ob do
                                        if k.Parent then
                                            k.HoldDuration = v.HoldDuration
                                            k.MaxActivationDistance = v.MaxActivationDistance
                                            k.RequiresLineOfSight = v.RequiresLineOfSight
                                        end
                                    end
                                    table.clear(ob)
                                end
                                Toggles.Fly:OnChanged(function()
                                    if not Toggles.Fly.Value then
                                        ol()
                                    end
                                end)
                                Toggles.WalkSpeedEnabled:OnChanged(function()
                                    if not Toggles.WalkSpeedEnabled.Value then
                                        og()
                                    end
                                end)
                                Toggles.NoClip:OnChanged(function()
                                    if not Toggles.NoClip.Value then
                                        oc()
                                    end
                                end)
                                Toggles.InstantProximityPrompt:OnChanged(function()
                                    if Toggles.InstantProximityPrompt.Value then
                                        for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                                            pcall(op, v)
                                        end
                                    else
                                        ou()
                                    end
                                end)
                                table.insert(n7, Workspace.DescendantAdded:Connect(function(oN)
                                    if Toggles.InstantProximityPrompt.Value then
                                        op(oN)
                                    end
                                end))
                                table.insert(n7, RunService.Stepped:Connect(function()
                                    if Library.Unloaded then
                                        return
                                    end
                                    local Character = LocalPlayer.Character
                                    if Toggles.NoClip.Value and Character then
                                        for k, v in Character:QueryDescendants("BasePart") do
                                            if n8[v] == nil then
                                                n8[v] = v.CanCollide
                                            end
                                            v.CanCollide = false
                                        end
                                    end
                                end))
                                table.insert(n7, UserInputService.JumpRequest:Connect(function()
                                    if Library.Unloaded then
                                        return
                                    end
                                    local Character = LocalPlayer.Character
                                    local Hv = Character and Character:FindFirstChildOfClass("Humanoid")
                                    if Toggles.InfJump.Value and Hv then
                                        Hv:ChangeState(Enum.HumanoidStateType.Jumping)
                                    end
                                end))
                                table.insert(n7, RunService.RenderStepped:Connect(function(o8)
                                    if Library.Unloaded then
                                        return
                                    end
                                    local Character = LocalPlayer.Character
                                    local HB = Character and Character:FindFirstChildOfClass("Humanoid")
                                    local HC = Character
                                    if HC then
                                        HC = Character:FindFirstChild("HumanoidRootPart")
                                    end
                                    local HA_2 = HC
                                    local CurrentCamera = Workspace.CurrentCamera
                                    if Toggles.WalkSpeedEnabled.Value and HB then
                                        if n9[HB] == nil then
                                            n9[HB] = HB.WalkSpeed
                                        end
                                        HB.WalkSpeed = Options.WalkSpeed.Value
                                    end
                                    if Toggles.Fly.Value and HA_2 and HB and CurrentCamera then
                                        if oa[HB] == nil then
                                            oa[HB] = HB.PlatformStand
                                        end
                                        HB.PlatformStand = true
                                        local HC_8 = Vector3.zero
                                        if not UserInputService:GetFocusedTextBox() then
                                            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                                                HC_8 += CurrentCamera.CFrame.LookVector
                                            end
                                            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                                                HC_8 -= CurrentCamera.CFrame.LookVector
                                            end
                                            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                                                HC_8 -= CurrentCamera.CFrame.RightVector
                                            end
                                            local HI = if UserInputService:IsKeyDown(Enum.KeyCode.D) then 1 else 0
                                            if HI == 1 then
                                                HC_8 += CurrentCamera.CFrame.RightVector
                                            end
                                            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                                                HC_8 += Vector3.new(0, 1, 0)
                                            end
                                            local HI_2 = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
                                            if HI_2 == 1 then
                                                HC_8 -= Vector3.new(0, 1, 0)
                                            end
                                        end
                                        HA_2.AssemblyLinearVelocity = Vector3.zero
                                        if HC_8.Magnitude > 0 then
                                            HA_2.CFrame = HA_2.CFrame + HC_8.Unit * Options.FlySpeed.Value * o8
                                        end
                                    end
                                end))
                                xg.Track(function()
                                    for k, v in n7 do
                                        v:Disconnect()
                                    end
                                    oc()
                                    og()
                                    ol()
                                    ou()
                                end)
                            end
                            J3_10()
                            local function J3_11()
                                local pq
                                pq = {}
                                local pp = {}
                                local pr
                                local pu = 0
                                local ps = false
                                local pt = 0
                                local pv = os.clock()
                                local MenuGroup = J1[4]:AddLeftGroupbox("Menu", "logs")
                                MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
                                local Label = MenuGroup:AddLabel("AFK triggers: 0")
                                local function pz()
                                    local CurrentCamera
                                    CurrentCamera = Workspace.CurrentCamera
                                    local HR = not CurrentCamera or not wZ(VirtualUser.CaptureController) or not wZ(VirtualUser.ClickButton2)
                                    if HR then
                                        return false
                                    end
                                    local HR_2 = pcall(function()
                                        VirtualUser:CaptureController()
                                        VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
                                    end)
                                    if not HR_2 then
                                        return false
                                    end
                                    pu += 1
                                    pv = os.clock()
                                    pcall(function()
                                        Label:SetText("AFK triggers: " .. pu)
                                    end)
                                    return true
                                end
                                local function pR(pS)
                                    pcall(function()
                                        GuiService:SetGameplayPausedNotificationEnabled(not pS)
                                    end)
                                    pcall(function()
                                        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                                        if RobloxNetworkPauseNotificati then
                                            RobloxNetworkPauseNotificati.Enabled = not pS
                                        end
                                    end)
                                    if not pS then
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
                                local function p6(p7)
                                    if pq[p7] == nil then
                                        pq[p7] = p7.Enabled
                                    end
                                    p7.Enabled = false
                                end
                                local function p9()
                                    for k, v in pq do
                                        local Id = k
                                        local If = v
                                        if Id.Parent then
                                            pcall(function()
                                                Id.Enabled = If
                                            end)
                                        end
                                    end
                                    table.clear(pq)
                                    if pr then
                                        pcall(function()
                                            settings().Rendering.QualityLevel = pr.Quality
                                        end)
                                        Lighting.GlobalShadows = pr.Shadows
                                        Lighting.FogEnd = pr.Fog
                                        pr = nil
                                    end
                                end
                                MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
                                MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
                                MenuGroup:AddToggle("Disable3D", {
                                    Text = "Disable 3D Rendering",
                                    Default = false,
                                    Callback = function(qk)
                                        pcall(function()
                                            RunService:Set3dRenderingEnabled(not qk)
                                        end)
                                    end
                                })
                                MenuGroup:AddToggle("FpsBoost", {
                                    Text = "FPS Boost",
                                    Default = false,
                                    Callback = function(qp)
                                        if qp then
                                            if not pr then
                                                pr = {
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
                                            for k, v in Workspace:QueryDescendants("ParticleEmitter, Trail, Smoke, Fire, Sparkles, Beam") do
                                                p6(v)
                                            end
                                        else
                                            p9()
                                        end
                                    end
                                })
                                MenuGroup:AddToggle("HideUIOnStart", { Text = "Hide UI On Start", Default = false })
                                MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
                                Library.ToggleKeybind = Options.MenuKeybind
                                table.insert(pp, LocalPlayer.Idled:Connect(function()
                                    if Toggles.AntiAfk.Value then
                                        pz()
                                    end
                                end))
                                local qI = task.spawn(function()
                                    while true do
                                        task.wait(1)
                                        if Library.Unloaded then
                                            break
                                        end
                                        local Io = Toggles.AntiAfk.Value and os.clock() - pv >= 60
                                        if Io then
                                            pz()
                                        end
                                        if Toggles.AntiGameplayPause.Value then
                                            pR(true)
                                        end
                                    end
                                end)
                                Toggles.AntiGameplayPause:OnChanged(function(qJ)
                                    pR(qJ)
                                end)
                                pR(true)
                                local function qL()
                                    local IA
                                    if ps or not Toggles.AutoReconnect.Value then
                                        return
                                    end
                                    ps = true
                                    pt += 1
                                    IA = pt
                                    task.spawn(function()
                                        for i = 1, 2 do
                                            local Iz = i
                                            if Library.Unloaded or not Toggles.AutoReconnect.Value or IA ~= pt then
                                                break
                                            end
                                            local wait = task.wait
                                            local Iu_2 = Iz == 1 and 1 or 3
                                            wait(Iu_2)
                                            if IA ~= pt then
                                                break
                                            end
                                            pcall(function()
                                                if Iz == 1 and game.JobId ~= "" then
                                                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                                                else
                                                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                                                end
                                            end)
                                        end
                                        ps = false
                                    end)
                                end
                                table.insert(pp, GuiService.ErrorMessageChanged:Connect(function()
                                    if Toggles.AutoReconnect.Value then
                                        qL()
                                    end
                                end))
                                pcall(function()
                                    table.insert(pp, TeleportService.TeleportInitFailed:Connect(function(rb)
                                        if rb == LocalPlayer and Toggles.AutoReconnect.Value then
                                            qL()
                                        end
                                    end))
                                end)
                                local ScriptGroup = J1[4]:AddLeftGroupbox("Script", "scroll-text")
                                ScriptGroup:AddButton({
                                    Text = "Unload Script",
                                    Func = function()
                                        Library:Unload()
                                    end
                                })
                                xg.Track(function()
                                    for k, v in pp do
                                        v:Disconnect()
                                    end
                                    if coroutine.status(qI) ~= "dead" then
                                        pcall(task.cancel, qI)
                                    end
                                    p9()
                                    pcall(function()
                                        RunService:Set3dRenderingEnabled(true)
                                    end)
                                end)
                            end
                            J3_11()
                            local function J3_12()
                                local JM, JN, JO, JP
                                ThemeManager:SetLibrary(Library)
                                ThemeManager:SetFolder("MyScriptHub")
                                ThemeManager:SaveDefault("Evil Hello Kitty")
                                ThemeManager:ApplyToTab(J1[4])
                                SaveManager:SetLibrary(Library)
                                SaveManager:IgnoreThemeSettings()
                                SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
                                SaveManager:SetFolder("OuroborosHub/SurviveLavaForAnimals")
                                local JQ = SaveManager:BuildConfigSection(J1[4])
                                JO = function(rA, rB)
                                    local IO_2 = (rA == "Toggle" and Toggles or Options)[rB]
                                    local IN_5 = type(IO_2) == "table" and IO_2.Type == rA
                                    return IN_5 and IO_2 or nil
                                end
                                JM = function(rK, rL)
                                    local Type = rL.Type
                                    if Type == "Toggle" then
                                        return { idx = rK, type = "Toggle", value = rL.Value == true }
                                    elseif Type == "Slider" then
                                        return { idx = rK, type = "Slider", value = tostring(rL.Value) }
                                    elseif Type == "Dropdown" then
                                        return { idx = rK, type = "Dropdown", multi = rL.Multi == true, value = rL.Value }
                                    elseif Type == "Input" then
                                        local IS = rL.Value or ""
                                        return { idx = rK, type = "Input", text = tostring(IS) }
                                    elseif Type == "ColorPicker" then
                                        return { idx = rK, type = "ColorPicker", value = rL.Value:ToHex(), transparency = rL.Transparency }
                                    elseif Type == "KeyPicker" then
                                        return {
                                            idx = rK,
                                            type = "KeyPicker",
                                            mode = rL.Mode,
                                            key = rL.Value,
                                            modifiers = rL.Modifiers,
                                            toggled = rL.Toggled
                                        }
                                    else
                                        return nil
                                    end
                                end
                                JP = function()
                                    local IV = {}
                                    for i, v in ipairs({ Toggles, Options }) do
                                        for k, v in pairs(v) do
                                            local IW = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                                            if IW then
                                                local IW_2 = JM(k, v)
                                                if IW_2 then
                                                    IV[#IV + 1] = IW_2
                                                end
                                            end
                                        end
                                    end
                                    table.sort(IV, function(rV, rW)
                                        if rV.type ~= rW.type then
                                            return rV.type < rW.type
                                        end
                                        return rV.idx < rW.idx
                                    end)
                                    return { objects = IV }
                                end
                                JN = function(rY)
                                    local Je
                                    Je = nil
                                    local Jf = type(rY) ~= "table" or type(rY.idx) ~= "string" or type(rY.type) ~= "string" or SaveManager.Ignore[rY.idx]
                                    if Jf then
                                        return false
                                    end
                                    Je = JO(rY.type, rY.idx)
                                    if not Je then
                                        return false
                                    end
                                    local Jf_2 = pcall(function()
                                        if rY.type == "Input" then
                                            if type(rY.text) ~= "string" then
                                                return
                                            end
                                            Je:SetValue(rY.text)
                                        elseif rY.type == "ColorPicker" then
                                            Je:SetValueRGB(Color3.fromHex(rY.value), rY.transparency)
                                        elseif rY.type == "KeyPicker" then
                                            Je:SetValue({ rY.key, rY.mode, rY.modifiers })
                                            if rY.mode == "Toggle" and rY.toggled ~= nil then
                                                Je.Toggled = rY.toggled
                                                Je:Update()
                                            end
                                        else
                                            Je:SetValue(rY.value)
                                        end
                                    end)
                                    return Jf_2
                                end
                                JQ:AddDivider()
                                JQ:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
                                JQ:AddButton("Export Config to Clipboard", function()
                                    local Ji_2
                                    local Jh_5
                                    Jh_5, Ji_2 = pcall(HttpService.JSONEncode, HttpService, JP())
                                    if Jh_5 then
                                        local Jh_6 = (wZ(setclipboard)) and setclipboard
                                        local Jj = Jh_6
                                        if not Jj then
                                            local Jh_7 = (wZ(toclipboard)) and toclipboard
                                            local Jk = Jh_7
                                            local Jr = if Jk then 1 else 0
                                            local Jp = 774 * Jr + 2017 * (1 - Jr)
                                            local Jq = 1633 * Jr + 3700 * (1 - Jr)
                                            if not ((Jp * 1789 + Jq * 2320 + Jp * Jq) % 16777213 == 6437188) then
                                                Jk = nil
                                            end
                                            Jj = Jk
                                        end
                                        local Jh_8 = Jj
                                        local Jj_2 = type(Jh_8) == "function" and pcall(Jh_8, Ji_2)
                                        if Jj_2 then
                                            Library:Notify("Config copied to clipboard", 6)
                                            return
                                        end
                                        Library:Notify("Your executor does not support copying to the clipboard")
                                        return
                                    end
                                    Library:Notify("Failed to encode the config")
                                end)
                                JQ:AddButton("Import Config from Clipboard Text", function()
                                    local Ju_3
                                    local Js = Options.SaveManager_ImportSource.Value or ""
                                    local Js_3
                                    local Jt = tostring(Js):match("^%s*(.-)%s*$")
                                    if Jt == "" then
                                        Library:Notify("Paste a config first")
                                        return
                                    end
                                    if #Jt > 262144 then
                                        Library:Notify("Config is too large")
                                        return
                                    end
                                    Js_3, Ju_3 = pcall(HttpService.JSONDecode, HttpService, Jt)
                                    local Jt_3 = not Js_3 or type(Ju_3) ~= "table" or type(Ju_3.objects) ~= "table"
                                    if Jt_3 then
                                        Library:Notify("Invalid config payload")
                                        return
                                    end
                                    if #Ju_3.objects > 2048 then
                                        Library:Notify("Config has too many records")
                                        return
                                    end
                                    local Js_4 = 0
                                    local Jt_4 = 0
                                    local Jv = {}
                                    for i, v in ipairs(Ju_3.objects) do
                                        local Ju_4 = type(v) == "table" and v.type == "Toggle"
                                        if Ju_4 then
                                            table.insert(Jv, v)
                                        elseif JN(v) then
                                            Jt_4 += 1
                                        else
                                            Js_4 += 1
                                        end
                                    end
                                    for i, v in ipairs(Jv) do
                                        if JN(v) then
                                            Jt_4 += 1
                                        else
                                            Js_4 += 1
                                        end
                                    end
                                    Options.SaveManager_ImportSource:SetValue("")
                                    Library:Notify(string.format("Imported %d settings (%d skipped)", Jt_4, Js_4), 6)
                                end)
                                SaveManager:LoadAutoloadConfig()
                                if Toggles.HideUIOnStart and Toggles.HideUIOnStart.Value then
                                    pcall(function()
                                        Library:Toggle(false)
                                    end)
                                end
                            end
                            J3_12()
                            if Options.CollectRarities then
                                xg.SetCollectRarities(Options.CollectRarities.Value)
                            end
                            if Options.CollectZones then
                                xg.SetCollectZones(Options.CollectZones.Value)
                            end
                            if Options.EspRarities then
                                xg.SetEspRarities(Options.EspRarities.Value)
                            end
                            if Options.SellRarities then
                                xg.SetSellRarities(Options.SellRarities.Value)
                            end
                            if Options.SellAnimals then
                                xg.SetSellAnimals(Options.SellAnimals.Value)
                            end
                            if Options.TeleportZone then
                                xg.SetTeleportZone(Options.TeleportZone.Value)
                            end
                            if Toggles.SellEquipped then
                                xg.SetSellEquipped(Toggles.SellEquipped.Value)
                            end
                            if Toggles.AutoCollectEggs then
                                xg.SetAutoCollect(Toggles.AutoCollectEggs.Value)
                            end
                            if Toggles.AutoPlaceEggs then
                                xg.SetAutoPlace(Toggles.AutoPlaceEggs.Value)
                            end
                            if Toggles.AutoHatchEggs then
                                xg.SetAutoHatch(Toggles.AutoHatchEggs.Value)
                            end
                            if Toggles.AutoEquipBest then
                                xg.SetAutoEquipBest(Toggles.AutoEquipBest.Value)
                            end
                            if Toggles.AutoBuyTrail then
                                xg.SetAutoBuyTrail(Toggles.AutoBuyTrail.Value)
                            end
                            if Toggles.AutoSell then
                                xg.SetAutoSell(Toggles.AutoSell.Value)
                            end
                            if Toggles.AutoUpgradePen then
                                xg.SetAutoUpgradePen(Toggles.AutoUpgradePen.Value)
                            end
                            if Toggles.AutoUpgradeTrampoline then
                                xg.SetAutoUpgradeTrampoline(Toggles.AutoUpgradeTrampoline.Value)
                            end
                            if Toggles.AutoTrampoline then
                                xg.SetAutoTrampoline(Toggles.AutoTrampoline.Value)
                            end
                            if Toggles.EggEsp then
                                xg.SetEggEsp(Toggles.EggEsp.Value)
                            end
                        end
                    else
                        xg.SetAutoCollect = fns.fn169
                        xg.SetAutoPlace = fns.fn744
                        xg.SetAutoHatch = fns.fn1045
                        xg.SetAutoEquipBest = fns.fn1035
                        xg.SetAutoBuyTrail = fns.fn696
                        xg.SetAutoSell = fns.fn627
                        xg.SetSellEquipped = fns.fn81
                        xg.SetAutoUpgradePen = fns.fn1215
                        xg.SetAutoUpgradeTrampoline = fn1274
                        xg.SetAutoTrampoline = fn1257
                        xg.SetEggEsp = fns.fn501
                        xg.SetCollectRarities = fns.fn1200
                        xg.SetCollectZones = fn1260
                        xg.SetEspRarities = fn1333
                        xg.SetSellRarities = fns.fn371
                        xg.SetSellAnimals = fns.fn650
                        xg.SetTeleportZone = fns.fn985
                        xg.Track(fns.fn1161)
                        Kh_35_18 = function()
                            local JW
                            JW = nil
                            local SaveManager, onDiscord, Library, Toggles, ThemeManager, Options, J1, J2
                            Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
                            ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
                            SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
                            Toggles = Library.Toggles
                            Options = Library.Options
                            xQ(xg, Library)
                            J2 = function(lq, lr)
                                local FW = (wZ(setclipboard)) and setclipboard
                                local FX = FW
                                if not FX then
                                    local FW_1 = (wZ(toclipboard)) and toclipboard
                                    FX = FW_1 or nil
                                end
                                local FW_2 = FX
                                if not FW_2 then
                                    Library:Notify("Clipboard is unavailable")
                                    return
                                end
                                local FX_1 = pcall(FW_2, lq)
                                if FX_1 then
                                    Library:Notify(lr)
                                else
                                    Library:Notify("Failed to copy")
                                end
                            end
                            onDiscord = function()
                                J2(wY, "Copied Discord invite to clipboard")
                            end
                            local Window = Library:CreateWindow({
                                Title = "Ouroboros",
                                Font = Enum.Font.BuilderSans,
                                Footer = { { Text = wY, Copyable = true }, "|", w6, "|", w0 },
                                Icon = 132608042600488,
                                NotifySide = "Right",
                                ShowCustomCursor = false,
                                CornerRadius = 0,
                                SidebarCompacted = true,
                                TabSwipeFrom = "bottom",
                                Animations = { TabSwitch = true }
                            })
                            Window:SetGlow(false)
                            J1 = {
                                [1] = Window:AddTab("Info", "info"),
                                [2] = Window:AddTab("Main", "gamepad-2"),
                                [3] = Window:AddTab("Player", "person-standing"),
                                [4] = Window:AddTab("Settings", "settings")
                            }
                            JW = function(lK)
                                lK:AddDiscordBox(nil, {
                                    Banner = 95892854151512,
                                    Avatar = 132608042600488,
                                    Title = "Ouroboros Hub",
                                    Subtitle = "Dupes, keyless scripts and updates",
                                    Status = "online",
                                    Accent = Color3.fromRGB(88, 101, 242),
                                    Link = wY,
                                    Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
                                })
                                return lK
                            end
                            local function J3_1(lN)
                                return JW(lN:AddLeftGroupbox("Discord", "message-circle"))
                            end
                            J3_1(J1[2])
                            J3_1(J1[3])
                            J3_1(J1[4])
                            local function J3_2()
                                local l_
                                local CollectGroup = J1[2]:AddLeftGroupbox("Collect", "egg")
                                local Label = CollectGroup:AddLabel(xg.GetStatus(), true)
                                l_ = task.spawn(function()
                                    while true do
                                        task.wait(0.4)
                                        if Library.Unloaded then
                                            break
                                        end
                                        pcall(function()
                                            Label:SetText(xg.GetStatus())
                                        end)
                                    end
                                end)
                                xg.Track(function()
                                    if coroutine.status(l_) ~= "dead" then
                                        pcall(task.cancel, l_)
                                    end
                                end)
                                CollectGroup:AddDivider()
                                CollectGroup:AddToggle("AutoCollectEggs", {
                                    Text = "Auto Collect Eggs",
                                    Default = false,
                                    Callback = function(l1)
                                        xg.SetAutoCollect(l1)
                                    end
                                })
                                CollectGroup:AddDropdown("CollectRarities", {
                                    Text = "Rarity Filter",
                                    Values = xg.RarityValues(),
                                    Default = {},
                                    Multi = true,
                                    AllowNull = true,
                                    Expandable = true,
                                    Callback = function(l3)
                                        xg.SetCollectRarities(l3)
                                    end
                                })
                                CollectGroup:AddDropdown("CollectZones", {
                                    Text = "Zone Filter",
                                    Values = xg.ZoneValues(),
                                    Default = {},
                                    Multi = true,
                                    AllowNull = true,
                                    Expandable = true,
                                    Callback = function(l5)
                                        xg.SetCollectZones(l5)
                                    end
                                })
                                CollectGroup:AddToggle("EggEsp", {
                                    Text = "Egg ESP",
                                    Default = false,
                                    Callback = function(l7)
                                        xg.SetEggEsp(l7)
                                    end
                                })
                                CollectGroup:AddDropdown("EspRarities", {
                                    Text = "ESP Rarity Filter",
                                    Values = xg.RarityValues(),
                                    Default = {},
                                    Multi = true,
                                    AllowNull = true,
                                    Expandable = true,
                                    Callback = function(l9)
                                        xg.SetEspRarities(l9)
                                    end
                                })
                                local FarmGroup = J1[2]:AddLeftGroupbox("Farm", "rabbit")
                                FarmGroup:AddToggle("AutoPlaceEggs", {
                                    Text = "Auto Place Eggs",
                                    Default = false,
                                    Callback = function(mc)
                                        xg.SetAutoPlace(mc)
                                    end
                                })
                                FarmGroup:AddToggle("AutoHatchEggs", {
                                    Text = "Auto Hatch Eggs",
                                    Default = false,
                                    Callback = function(me)
                                        xg.SetAutoHatch(me)
                                    end
                                })
                                FarmGroup:AddToggle("AutoEquipBest", {
                                    Text = "Auto Equip Best",
                                    Default = false,
                                    Callback = function(mg)
                                        xg.SetAutoEquipBest(mg)
                                    end
                                })
                                FarmGroup:AddToggle("AutoBuyTrail", {
                                    Text = "Auto Buy Trail",
                                    Default = false,
                                    Callback = function(mi)
                                        xg.SetAutoBuyTrail(mi)
                                    end
                                })
                                FarmGroup:AddToggle("AutoTrampoline", {
                                    Text = "Auto Go on Trampoline",
                                    Default = false,
                                    Callback = function(mk)
                                        xg.SetAutoTrampoline(mk)
                                    end
                                })
                                local SellGroup = J1[2]:AddRightGroupbox("Sell", "hand-coins")
                                SellGroup:AddToggle("AutoSell", {
                                    Text = "Auto Sell",
                                    Default = false,
                                    Callback = function(mn)
                                        xg.SetAutoSell(mn)
                                    end
                                })
                                SellGroup:AddDropdown("SellRarities", {
                                    Text = "Sell Rarities",
                                    Values = xg.RarityValues(),
                                    Default = {},
                                    Multi = true,
                                    AllowNull = true,
                                    Expandable = true,
                                    Callback = function(mp)
                                        xg.SetSellRarities(mp)
                                    end
                                })
                                SellGroup:AddDropdown("SellAnimals", {
                                    Text = "Sell Animals",
                                    Values = xg.AnimalValues(),
                                    Default = {},
                                    Multi = true,
                                    AllowNull = true,
                                    Expandable = true,
                                    Callback = function(mr)
                                        xg.SetSellAnimals(mr)
                                    end
                                })
                                SellGroup:AddToggle("SellEquipped", {
                                    Text = "Sell Equipped",
                                    Default = false,
                                    Callback = function(mt)
                                        xg.SetSellEquipped(mt)
                                    end
                                })
                                local UpgradesGroup = J1[2]:AddRightGroupbox("Upgrades", "arrow-up")
                                UpgradesGroup:AddToggle("AutoUpgradePen", {
                                    Text = "Auto Upgrade Pen",
                                    Default = false,
                                    Callback = function(mw)
                                        xg.SetAutoUpgradePen(mw)
                                    end
                                })
                                UpgradesGroup:AddToggle("AutoUpgradeTrampoline", {
                                    Text = "Auto Upgrade Trampoline",
                                    Default = false,
                                    Callback = function(my)
                                        xg.SetAutoUpgradeTrampoline(my)
                                    end
                                })
                                local TravelGroup = J1[2]:AddRightGroupbox("Travel", "map-pin")
                                TravelGroup:AddButton({
                                    Text = "Teleport to Base",
                                    Func = function()
                                        xg.TeleportToBase()
                                    end
                                })
                                TravelGroup:AddDropdown("TeleportZone", {
                                    Text = "Zone",
                                    Values = xg.ZoneValues(),
                                    Default = xM[1],
                                    Callback = function(mE)
                                        xg.SetTeleportZone(mE)
                                    end
                                })
                                TravelGroup:AddButton({
                                    Text = "Teleport to Zone",
                                    Func = function()
                                        local TeleportToZone = xg.TeleportToZone
                                        local F5 = Options.TeleportZone and Options.TeleportZone.Value
                                        TeleportToZone(F5)
                                    end
                                })
                            end
                            J3_2()
                            local function J3_3()
                                local Gy
                                local Gr
                                local Gt
                                local Gp
                                Gp = nil
                                Gr = nil
                                Gt = nil
                                Gy = nil
                                local Gm, Gn, Label3, Label, Gs, Gu, Gv, Gw, Label2
                                Gy = function(mM)
                                    return (tostring(mM):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
                                end
                                Gt = function(mO, mP)
                                    return string.format('<font color="%s">%s</font>', mP, Gy(mO))
                                end
                                Gm = function(mS, mT, mU)
                                    return string.format("<b>%s</b> %s %s", mS, Gt("-", "#5a6070"), Gt(mT, mU))
                                end
                                local Gz = "#8b93a3"
                                local GA = "#6ec1ff"
                                Gs = "#e8a34d"
                                Gw = "#7fd47f"
                                local GB = xg.Support()
                                local GC = #GB == 0 and "ready"
                                local GD = GC or "limited: " .. table.concat(GB, ", ")
                                Gv = "Unknown"
                                pcall(function()
                                    local F8_1
                                    local F7_1
                                    if wZ(identifyexecutor) then
                                        F8_1, F7_1 = identifyexecutor()
                                        local F9 = F8_1 ~= ""
                                        local Ga = type(F8_1) == "string" and F9
                                        if Ga then
                                            local F9_1 = type(F7_1) == "string" and F7_1 ~= "" and F8_1 .. " " .. F7_1
                                            Gv = F9_1 or F8_1
                                        end
                                    end
                                end)
                                Gp = os.clock()
                                Gu = function()
                                    local Gf = math.floor(os.clock() - Gp)
                                    if Gf < 60 then
                                        return Gf .. "s"
                                    elseif Gf < 3600 then
                                        return string.format("%dm %ds", Gf // 60, Gf % 60)
                                    else
                                        return string.format("%dh %dm", Gf // 3600, Gf % 3600 // 60)
                                    end
                                end
                                local UserGroup = J1[1]:AddLeftGroupbox("User", "circle-user")
                                UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
                                UserGroup:AddLabel(Gm("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, Gw), true)
                                UserGroup:AddLabel(Gm("UserId", tostring(LocalPlayer.UserId), GA), true)
                                UserGroup:AddLabel(Gm("Executor", Gv .. "  " .. GD, Gw), true)
                                UserGroup:AddDivider()
                                Label3 = UserGroup:AddLabel(Gm("Session", Gu(), Gs), true)
                                UserGroup:AddDivider()
                                UserGroup:AddButton({
                                    Text = "Copy Username",
                                    Func = function()
                                        J2(LocalPlayer.Name, "Copied username")
                                    end
                                })
                                UserGroup:AddButton({
                                    Text = "Copy Profile Link",
                                    Func = function()
                                        J2("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
                                    end
                                })
                                local DiscordGroup = J1[1]:AddRightGroupbox("Discord", "message-circle")
                                JW(DiscordGroup)
                                local SessionGroup = J1[1]:AddRightGroupbox("Session", "signal")
                                SessionGroup:AddLabel(Gm("Game", w6, GA), true)
                                Label2 = SessionGroup:AddLabel(Gm("Players", "0/0", Gw), true)
                                Gn = tostring(game.JobId)
                                local GA_1 = #Gn > 18 and string.sub(Gn, 1, 18) .. "..."
                                local GC_2 = GA_1 or Gn
                                SessionGroup:AddLabel(Gm("Job", GC_2, Gz), true)
                                Label = SessionGroup:AddLabel(Gm("Ping", "0 ms", Gs), true)
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
                                        J2(Gn, "Copied Job ID")
                                    end
                                })
                                Gr = task.spawn(function()
                                    local Gi_1
                                    local Gh_1
                                    while true do
                                        task.wait(1)
                                        if Library.Unloaded then
                                            break
                                        end
                                        Label3:SetText(Gm("Session", Gu(), Gs))
                                        Label2:SetText(Gm("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), Gw))
                                        Gh_1, Gi_1 = pcall(function()
                                            return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                                        end)
                                        local Gh_2 = Gh_1 and Gi_1 .. " ms" or "n/a"
                                        Label:SetText(Gm("Ping", Gh_2, Gs))
                                    end
                                end)
                                xg.Track(function()
                                    if coroutine.status(Gr) ~= "dead" then
                                        pcall(task.cancel, Gr)
                                    end
                                end)
                                local SocialsGroup = J1[1]:AddRightGroupbox("Socials", "link")
                                SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
                                SocialsGroup:AddButton({
                                    Text = "Rscripts",
                                    Func = function()
                                        J2(wU, "Copied Rscripts profile")
                                    end
                                })
                                SocialsGroup:AddButton({
                                    Text = "Website",
                                    Func = function()
                                        J2(wQ, "Copied website link")
                                    end
                                })
                            end
                            J3_3()
                            local function J3_4()
                                local n8
                                local n9
                                local ob
                                local oa
                                local MovementGroup = J1[3]:AddLeftGroupbox("Movement", "footprints")
                                MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
                                MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
                                MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
                                MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
                                MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
                                local FlyGroup = J1[3]:AddRightGroupbox("Fly", "feather")
                                FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
                                FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
                                n9 = {}
                                oa = {}
                                local n7 = {}
                                ob = {}
                                n8 = {}
                                local function oc()
                                    for k, v in n8 do
                                        if k.Parent then
                                            k.CanCollide = v
                                        end
                                    end
                                    table.clear(n8)
                                end
                                local function og()
                                    for k, v in n9 do
                                        if k.Parent then
                                            k.WalkSpeed = v
                                        end
                                    end
                                    table.clear(n9)
                                end
                                local function ol()
                                    for k, v in oa do
                                        if k.Parent then
                                            k.PlatformStand = v
                                        end
                                    end
                                    table.clear(oa)
                                end
                                local function op(oq)
                                    if not oq:IsA("ProximityPrompt") then
                                        return
                                    end
                                    if ob[oq] == nil then
                                        ob[oq] = {
                                            HoldDuration = oq.HoldDuration,
                                            MaxActivationDistance = oq.MaxActivationDistance,
                                            RequiresLineOfSight = oq.RequiresLineOfSight
                                        }
                                    end
                                    oq.HoldDuration = 0
                                    oq.MaxActivationDistance = 50
                                    oq.RequiresLineOfSight = false
                                end
                                local function ou()
                                    for k, v in ob do
                                        if k.Parent then
                                            k.HoldDuration = v.HoldDuration
                                            k.MaxActivationDistance = v.MaxActivationDistance
                                            k.RequiresLineOfSight = v.RequiresLineOfSight
                                        end
                                    end
                                    table.clear(ob)
                                end
                                Toggles.Fly:OnChanged(function()
                                    if not Toggles.Fly.Value then
                                        ol()
                                    end
                                end)
                                Toggles.WalkSpeedEnabled:OnChanged(function()
                                    if not Toggles.WalkSpeedEnabled.Value then
                                        og()
                                    end
                                end)
                                Toggles.NoClip:OnChanged(function()
                                    if not Toggles.NoClip.Value then
                                        oc()
                                    end
                                end)
                                Toggles.InstantProximityPrompt:OnChanged(function()
                                    if Toggles.InstantProximityPrompt.Value then
                                        for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                                            pcall(op, v)
                                        end
                                    else
                                        ou()
                                    end
                                end)
                                table.insert(n7, Workspace.DescendantAdded:Connect(function(oN)
                                    if Toggles.InstantProximityPrompt.Value then
                                        op(oN)
                                    end
                                end))
                                table.insert(n7, RunService.Stepped:Connect(function()
                                    if Library.Unloaded then
                                        return
                                    end
                                    local Character = LocalPlayer.Character
                                    if Toggles.NoClip.Value and Character then
                                        for k, v in Character:QueryDescendants("BasePart") do
                                            if n8[v] == nil then
                                                n8[v] = v.CanCollide
                                            end
                                            v.CanCollide = false
                                        end
                                    end
                                end))
                                table.insert(n7, UserInputService.JumpRequest:Connect(function()
                                    if Library.Unloaded then
                                        return
                                    end
                                    local Character = LocalPlayer.Character
                                    local Hv = Character and Character:FindFirstChildOfClass("Humanoid")
                                    if Toggles.InfJump.Value and Hv then
                                        Hv:ChangeState(Enum.HumanoidStateType.Jumping)
                                    end
                                end))
                                table.insert(n7, RunService.RenderStepped:Connect(function(o8)
                                    if Library.Unloaded then
                                        return
                                    end
                                    local Character = LocalPlayer.Character
                                    local HB = Character and Character:FindFirstChildOfClass("Humanoid")
                                    local HC = Character
                                    if HC then
                                        HC = Character:FindFirstChild("HumanoidRootPart")
                                    end
                                    local HA_1 = HC
                                    local CurrentCamera = Workspace.CurrentCamera
                                    if Toggles.WalkSpeedEnabled.Value and HB then
                                        if n9[HB] == nil then
                                            n9[HB] = HB.WalkSpeed
                                        end
                                        HB.WalkSpeed = Options.WalkSpeed.Value
                                    end
                                    if Toggles.Fly.Value and HA_1 and HB and CurrentCamera then
                                        if oa[HB] == nil then
                                            oa[HB] = HB.PlatformStand
                                        end
                                        HB.PlatformStand = true
                                        local HC_4 = Vector3.zero
                                        if not UserInputService:GetFocusedTextBox() then
                                            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                                                HC_4 += CurrentCamera.CFrame.LookVector
                                            end
                                            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                                                HC_4 -= CurrentCamera.CFrame.LookVector
                                            end
                                            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                                                HC_4 -= CurrentCamera.CFrame.RightVector
                                            end
                                            local HI = if UserInputService:IsKeyDown(Enum.KeyCode.D) then 1 else 0
                                            if HI == 1 then
                                                HC_4 += CurrentCamera.CFrame.RightVector
                                            end
                                            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                                                HC_4 += Vector3.new(0, 1, 0)
                                            end
                                            local HI_1 = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
                                            if HI_1 == 1 then
                                                HC_4 -= Vector3.new(0, 1, 0)
                                            end
                                        end
                                        HA_1.AssemblyLinearVelocity = Vector3.zero
                                        if HC_4.Magnitude > 0 then
                                            HA_1.CFrame = HA_1.CFrame + HC_4.Unit * Options.FlySpeed.Value * o8
                                        end
                                    end
                                end))
                                xg.Track(function()
                                    for k, v in n7 do
                                        v:Disconnect()
                                    end
                                    oc()
                                    og()
                                    ol()
                                    ou()
                                end)
                            end
                            J3_4()
                            local function J3_5()
                                local pq
                                pq = {}
                                local pp = {}
                                local pr
                                local pu = 0
                                local ps = false
                                local pt = 0
                                local pv = os.clock()
                                local MenuGroup = J1[4]:AddLeftGroupbox("Menu", "logs")
                                MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
                                local Label = MenuGroup:AddLabel("AFK triggers: 0")
                                local function pz()
                                    local CurrentCamera
                                    CurrentCamera = Workspace.CurrentCamera
                                    local HR = not CurrentCamera or not wZ(VirtualUser.CaptureController) or not wZ(VirtualUser.ClickButton2)
                                    if HR then
                                        return false
                                    end
                                    local HR_1 = pcall(function()
                                        VirtualUser:CaptureController()
                                        VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
                                    end)
                                    if not HR_1 then
                                        return false
                                    end
                                    pu += 1
                                    pv = os.clock()
                                    pcall(function()
                                        Label:SetText("AFK triggers: " .. pu)
                                    end)
                                    return true
                                end
                                local function pR(pS)
                                    pcall(function()
                                        GuiService:SetGameplayPausedNotificationEnabled(not pS)
                                    end)
                                    pcall(function()
                                        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                                        if RobloxNetworkPauseNotificati then
                                            RobloxNetworkPauseNotificati.Enabled = not pS
                                        end
                                    end)
                                    if not pS then
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
                                local function p6(p7)
                                    if pq[p7] == nil then
                                        pq[p7] = p7.Enabled
                                    end
                                    p7.Enabled = false
                                end
                                local function p9()
                                    for k, v in pq do
                                        local Id = k
                                        local If = v
                                        if Id.Parent then
                                            pcall(function()
                                                Id.Enabled = If
                                            end)
                                        end
                                    end
                                    table.clear(pq)
                                    if pr then
                                        pcall(function()
                                            settings().Rendering.QualityLevel = pr.Quality
                                        end)
                                        Lighting.GlobalShadows = pr.Shadows
                                        Lighting.FogEnd = pr.Fog
                                        pr = nil
                                    end
                                end
                                MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
                                MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
                                MenuGroup:AddToggle("Disable3D", {
                                    Text = "Disable 3D Rendering",
                                    Default = false,
                                    Callback = function(qk)
                                        pcall(function()
                                            RunService:Set3dRenderingEnabled(not qk)
                                        end)
                                    end
                                })
                                MenuGroup:AddToggle("FpsBoost", {
                                    Text = "FPS Boost",
                                    Default = false,
                                    Callback = function(qp)
                                        if qp then
                                            if not pr then
                                                pr = {
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
                                            for k, v in Workspace:QueryDescendants("ParticleEmitter, Trail, Smoke, Fire, Sparkles, Beam") do
                                                p6(v)
                                            end
                                        else
                                            p9()
                                        end
                                    end
                                })
                                MenuGroup:AddToggle("HideUIOnStart", { Text = "Hide UI On Start", Default = false })
                                MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
                                Library.ToggleKeybind = Options.MenuKeybind
                                table.insert(pp, LocalPlayer.Idled:Connect(function()
                                    if Toggles.AntiAfk.Value then
                                        pz()
                                    end
                                end))
                                local qI = task.spawn(function()
                                    while true do
                                        task.wait(1)
                                        if Library.Unloaded then
                                            break
                                        end
                                        local Io = Toggles.AntiAfk.Value and os.clock() - pv >= 60
                                        if Io then
                                            pz()
                                        end
                                        if Toggles.AntiGameplayPause.Value then
                                            pR(true)
                                        end
                                    end
                                end)
                                Toggles.AntiGameplayPause:OnChanged(function(qJ)
                                    pR(qJ)
                                end)
                                pR(true)
                                local function qL()
                                    local IA
                                    if ps or not Toggles.AutoReconnect.Value then
                                        return
                                    end
                                    ps = true
                                    pt += 1
                                    IA = pt
                                    task.spawn(function()
                                        for i = 1, 2 do
                                            local Iz = i
                                            if Library.Unloaded or not Toggles.AutoReconnect.Value or IA ~= pt then
                                                break
                                            end
                                            local wait = task.wait
                                            local Iu_1 = Iz == 1 and 1 or 3
                                            wait(Iu_1)
                                            if IA ~= pt then
                                                break
                                            end
                                            pcall(function()
                                                if Iz == 1 and game.JobId ~= "" then
                                                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                                                else
                                                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                                                end
                                            end)
                                        end
                                        ps = false
                                    end)
                                end
                                table.insert(pp, GuiService.ErrorMessageChanged:Connect(function()
                                    if Toggles.AutoReconnect.Value then
                                        qL()
                                    end
                                end))
                                pcall(function()
                                    table.insert(pp, TeleportService.TeleportInitFailed:Connect(function(rb)
                                        if rb == LocalPlayer and Toggles.AutoReconnect.Value then
                                            qL()
                                        end
                                    end))
                                end)
                                local ScriptGroup = J1[4]:AddLeftGroupbox("Script", "scroll-text")
                                ScriptGroup:AddButton({
                                    Text = "Unload Script",
                                    Func = function()
                                        Library:Unload()
                                    end
                                })
                                xg.Track(function()
                                    for k, v in pp do
                                        v:Disconnect()
                                    end
                                    if coroutine.status(qI) ~= "dead" then
                                        pcall(task.cancel, qI)
                                    end
                                    p9()
                                    pcall(function()
                                        RunService:Set3dRenderingEnabled(true)
                                    end)
                                end)
                            end
                            J3_5()
                            local function J3_6()
                                local JM, JN, JO, JP
                                ThemeManager:SetLibrary(Library)
                                ThemeManager:SetFolder("MyScriptHub")
                                ThemeManager:SaveDefault("Evil Hello Kitty")
                                ThemeManager:ApplyToTab(J1[4])
                                SaveManager:SetLibrary(Library)
                                SaveManager:IgnoreThemeSettings()
                                SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
                                SaveManager:SetFolder("OuroborosHub/SurviveLavaForAnimals")
                                local JQ = SaveManager:BuildConfigSection(J1[4])
                                JO = function(rA, rB)
                                    local IO_1 = (rA == "Toggle" and Toggles or Options)[rB]
                                    local IN_2 = type(IO_1) == "table" and IO_1.Type == rA
                                    return IN_2 and IO_1 or nil
                                end
                                JM = function(rK, rL)
                                    local Type = rL.Type
                                    if Type == "Toggle" then
                                        return { idx = rK, type = "Toggle", value = rL.Value == true }
                                    elseif Type == "Slider" then
                                        return { idx = rK, type = "Slider", value = tostring(rL.Value) }
                                    elseif Type == "Dropdown" then
                                        return { idx = rK, type = "Dropdown", multi = rL.Multi == true, value = rL.Value }
                                    elseif Type == "Input" then
                                        local IS = rL.Value or ""
                                        return { idx = rK, type = "Input", text = tostring(IS) }
                                    elseif Type == "ColorPicker" then
                                        return { idx = rK, type = "ColorPicker", value = rL.Value:ToHex(), transparency = rL.Transparency }
                                    elseif Type == "KeyPicker" then
                                        return {
                                            idx = rK,
                                            type = "KeyPicker",
                                            mode = rL.Mode,
                                            key = rL.Value,
                                            modifiers = rL.Modifiers,
                                            toggled = rL.Toggled
                                        }
                                    else
                                        return nil
                                    end
                                end
                                JP = function()
                                    local IV = {}
                                    for i, v in ipairs({ Toggles, Options }) do
                                        for k, v in pairs(v) do
                                            local IW = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                                            if IW then
                                                local IW_1 = JM(k, v)
                                                if IW_1 then
                                                    IV[#IV + 1] = IW_1
                                                end
                                            end
                                        end
                                    end
                                    table.sort(IV, function(rV, rW)
                                        if rV.type ~= rW.type then
                                            return rV.type < rW.type
                                        end
                                        return rV.idx < rW.idx
                                    end)
                                    return { objects = IV }
                                end
                                JN = function(rY)
                                    local Je
                                    Je = nil
                                    local Jf = type(rY) ~= "table" or type(rY.idx) ~= "string" or type(rY.type) ~= "string" or SaveManager.Ignore[rY.idx]
                                    if Jf then
                                        return false
                                    end
                                    Je = JO(rY.type, rY.idx)
                                    if not Je then
                                        return false
                                    end
                                    local Jf_1 = pcall(function()
                                        if rY.type == "Input" then
                                            if type(rY.text) ~= "string" then
                                                return
                                            end
                                            Je:SetValue(rY.text)
                                        elseif rY.type == "ColorPicker" then
                                            Je:SetValueRGB(Color3.fromHex(rY.value), rY.transparency)
                                        elseif rY.type == "KeyPicker" then
                                            Je:SetValue({ rY.key, rY.mode, rY.modifiers })
                                            if rY.mode == "Toggle" and rY.toggled ~= nil then
                                                Je.Toggled = rY.toggled
                                                Je:Update()
                                            end
                                        else
                                            Je:SetValue(rY.value)
                                        end
                                    end)
                                    return Jf_1
                                end
                                JQ:AddDivider()
                                JQ:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
                                JQ:AddButton("Export Config to Clipboard", function()
                                    local Ji_1
                                    local Jh_1
                                    Jh_1, Ji_1 = pcall(HttpService.JSONEncode, HttpService, JP())
                                    if Jh_1 then
                                        local Jh_2 = (wZ(setclipboard)) and setclipboard
                                        local Jj = Jh_2
                                        if not Jj then
                                            local Jh_3 = (wZ(toclipboard)) and toclipboard
                                            local Jk = Jh_3
                                            local Jr = if Jk then 1 else 0
                                            local Jp = 774 * Jr + 2017 * (1 - Jr)
                                            local Jq = 1633 * Jr + 3700 * (1 - Jr)
                                            if not ((Jp * 1789 + Jq * 2320 + Jp * Jq) % 16777213 == 6437188) then
                                                Jk = nil
                                            end
                                            Jj = Jk
                                        end
                                        local Jh_4 = Jj
                                        local Jj_1 = type(Jh_4) == "function" and pcall(Jh_4, Ji_1)
                                        if Jj_1 then
                                            Library:Notify("Config copied to clipboard", 6)
                                            return
                                        end
                                        Library:Notify("Your executor does not support copying to the clipboard")
                                        return
                                    end
                                    Library:Notify("Failed to encode the config")
                                end)
                                JQ:AddButton("Import Config from Clipboard Text", function()
                                    local Ju_1
                                    local Js = Options.SaveManager_ImportSource.Value or ""
                                    local Js_1
                                    local Jt = tostring(Js):match("^%s*(.-)%s*$")
                                    if Jt == "" then
                                        Library:Notify("Paste a config first")
                                        return
                                    end
                                    if #Jt > 262144 then
                                        Library:Notify("Config is too large")
                                        return
                                    end
                                    Js_1, Ju_1 = pcall(HttpService.JSONDecode, HttpService, Jt)
                                    local Jt_1 = not Js_1 or type(Ju_1) ~= "table" or type(Ju_1.objects) ~= "table"
                                    if Jt_1 then
                                        Library:Notify("Invalid config payload")
                                        return
                                    end
                                    if #Ju_1.objects > 2048 then
                                        Library:Notify("Config has too many records")
                                        return
                                    end
                                    local Js_2 = 0
                                    local Jt_2 = 0
                                    local Jv = {}
                                    for i, v in ipairs(Ju_1.objects) do
                                        local Ju_2 = type(v) == "table" and v.type == "Toggle"
                                        if Ju_2 then
                                            table.insert(Jv, v)
                                        elseif JN(v) then
                                            Jt_2 += 1
                                        else
                                            Js_2 += 1
                                        end
                                    end
                                    for i, v in ipairs(Jv) do
                                        if JN(v) then
                                            Jt_2 += 1
                                        else
                                            Js_2 += 1
                                        end
                                    end
                                    Options.SaveManager_ImportSource:SetValue("")
                                    Library:Notify(string.format("Imported %d settings (%d skipped)", Jt_2, Js_2), 6)
                                end)
                                SaveManager:LoadAutoloadConfig()
                                if Toggles.HideUIOnStart and Toggles.HideUIOnStart.Value then
                                    pcall(function()
                                        Library:Toggle(false)
                                    end)
                                end
                            end
                            J3_6()
                            if Options.CollectRarities then
                                xg.SetCollectRarities(Options.CollectRarities.Value)
                            end
                            if Options.CollectZones then
                                xg.SetCollectZones(Options.CollectZones.Value)
                            end
                            if Options.EspRarities then
                                xg.SetEspRarities(Options.EspRarities.Value)
                            end
                            if Options.SellRarities then
                                xg.SetSellRarities(Options.SellRarities.Value)
                            end
                            if Options.SellAnimals then
                                xg.SetSellAnimals(Options.SellAnimals.Value)
                            end
                            if Options.TeleportZone then
                                xg.SetTeleportZone(Options.TeleportZone.Value)
                            end
                            if Toggles.SellEquipped then
                                xg.SetSellEquipped(Toggles.SellEquipped.Value)
                            end
                            if Toggles.AutoCollectEggs then
                                xg.SetAutoCollect(Toggles.AutoCollectEggs.Value)
                            end
                            if Toggles.AutoPlaceEggs then
                                xg.SetAutoPlace(Toggles.AutoPlaceEggs.Value)
                            end
                            if Toggles.AutoHatchEggs then
                                xg.SetAutoHatch(Toggles.AutoHatchEggs.Value)
                            end
                            if Toggles.AutoEquipBest then
                                xg.SetAutoEquipBest(Toggles.AutoEquipBest.Value)
                            end
                            if Toggles.AutoBuyTrail then
                                xg.SetAutoBuyTrail(Toggles.AutoBuyTrail.Value)
                            end
                            if Toggles.AutoSell then
                                xg.SetAutoSell(Toggles.AutoSell.Value)
                            end
                            if Toggles.AutoUpgradePen then
                                xg.SetAutoUpgradePen(Toggles.AutoUpgradePen.Value)
                            end
                            if Toggles.AutoUpgradeTrampoline then
                                xg.SetAutoUpgradeTrampoline(Toggles.AutoUpgradeTrampoline.Value)
                            end
                            if Toggles.AutoTrampoline then
                                xg.SetAutoTrampoline(Toggles.AutoTrampoline.Value)
                            end
                            if Toggles.EggEsp then
                                xg.SetEggEsp(Toggles.EggEsp.Value)
                            end
                        end
                    end
                    Kh_9_22 = (Kh_9_22 + 84) % 92
                else
                    if Kh_9_22 * 41377411 + 12 + 1 <= Kh_9_22 * 41377411 + 12 + 1 + 5 then
                        Kh_24_16, Kh_11_11 = pcall(Kh_35_18)
                    else
                        Kh_35_18, Kh_24_16 = pcall(Kh_11_11)
                    end
                    Kh_9_22 = (Kh_9_22 + 38) % 92
                end
            else
                if Kh_9_22 * 102115689 + 11 + 2 >= Kh_9_22 * 102115689 + 11 + 2 + 1 then
                    xg = xM.State
                    xg.AutoCollect = false
                    xg.AutoPlace = false
                    xg.AutoHatch = false
                    xg.AutoEquipBest = false
                    xg.AutoBuyTrail = false
                    xg.AutoSell = false
                    xg.SellEquipped = false
                    xg.AutoUpgradePen = false
                    xg.AutoUpgradeTrampoline = false
                    xg.AutoTrampoline = false
                    xg.EggEsp = false
                    xg.CollectRarities = {}
                    xg.CollectZones = {}
                    xg.EspRarities = {}
                    xg.SellRarities = {}
                    xg.SellAnimals = {}
                    xg.CollectRarityCount = 0
                    xg.CollectZoneCount = 0
                    xg.EspRarityCount = 0
                    xg.SellRarityCount = 0
                    xg.SellAnimalCount = 0
                    xg.TeleportZone = wq[1]
                    xg.Status = "Idle"
                    xg.Collected = 0
                    xg.Placed = 0
                    xg.Hatched = 0
                    xg.Sold = 0
                    wm = {}
                    x3 = setmetatable({}, { __mode = "k" })
                    wt = {}
                else
                    wt = xg.State
                    wt.AutoCollect = false
                    wt.AutoPlace = false
                    wt.AutoHatch = false
                    wt.AutoEquipBest = false
                    wt.AutoBuyTrail = false
                    wt.AutoSell = false
                    wt.SellEquipped = false
                    wt.AutoUpgradePen = false
                    wt.AutoUpgradeTrampoline = false
                    wt.AutoTrampoline = false
                    wt.EggEsp = false
                    wt.CollectRarities = {}
                    wt.CollectZones = {}
                    wt.EspRarities = {}
                    wt.SellRarities = {}
                    wt.SellAnimals = {}
                    wt.CollectRarityCount = 0
                    wt.CollectZoneCount = 0
                    wt.EspRarityCount = 0
                    wt.SellRarityCount = 0
                    wt.SellAnimalCount = 0
                    wt.TeleportZone = xM[1]
                    wt.Status = "Idle"
                    wt.Collected = 0
                    wt.Placed = 0
                    wt.Hatched = 0
                    wt.Sold = 0
                    wq = {}
                    wm = setmetatable({}, { __mode = "k" })
                    x3 = {}
                end
                Kh_9_22 = (Kh_9_22 + 38) % 92
            end
        elseif Kh_2_7 <= 17 then
            if Kh_2_7 <= 16 then
                if (Kh_9_22 * 2 + 2) * 7 % 3 == ((Kh_9_22 * 2 + 2) * 7 + 8) % 3 then
                    xU = nil
                    xZ = fns.fn833
                else
                    xZ = nil
                    xU = fns.fn833
                end
                Kh_9_22 = (Kh_9_22 + 84) % 92
            else
                local Kh_26_22 = {
                    "qyxq",
                    "piuuuytlufw",
                    "vvr",
                    "fmjrjoyricyh",
                    "llzacfhh",
                    "gwtwup",
                    "gjwqytfdznh",
                    "vkyhzjux",
                    "depyrsbqfqvh",
                    "sarp"
                }
                if Kh_26_22[(Kh_9_22 * 26 + 64) % 10 + 1] <= Kh_26_22[(Kh_9_22 * 26 + 64) % 10 + 1] then
                    xg.GetStatus = fns.fn119
                    xg.RarityValues = fns.fn750
                    xg.ZoneValues = fns.fn925
                    xg.AnimalValues = fns.fn777
                    xg.Support = fns.fn861
                    wV = fns.fn885
                else
                    wV.GetStatus = fns.fn119
                    wV.RarityValues = fns.fn750
                    wV.ZoneValues = fns.fn925
                    wV.AnimalValues = fns.fn777
                    wV.Support = fns.fn861
                    xg = fns.fn885
                end
                Kh_9_22 = (Kh_9_22 + 38) % 92
            end
        else
            local Kh_26_23 = (vector.create((Kh_9_22 * 4 + 8) % 11 + 1, (Kh_9_22 * 6 + 3) % 13 + 1, (Kh_9_22 * 13 + 15) % 17 + 1))
            local Kh_14_13 = (vector.create((Kh_9_22 * 6 + 8) % 11 + 1, (Kh_9_22 * 11 + 13) % 13 + 1, (Kh_9_22 * 1 + 9) % 17 + 1))
            local K1 = vector.cross(Kh_26_23, Kh_14_13)
            local K2 = vector.dot(Kh_26_23, Kh_14_13)
            if vector.dot(K1, K1) + K2 * K2 == vector.dot(Kh_26_23, Kh_26_23) * vector.dot(Kh_14_13, Kh_14_13) then
                wz = fns.fn408
                xk = function(cn, co, ...)
                    local zV
                    local zU
                    zU = nil
                    zV = nil
                    local zW = wz(cn)
                    local zX = zW and zW:FindFirstChild("RemoteEvent")
                    zV = zX
                    local zW_3 = not zV or not zV:IsA("RemoteEvent")
                    if zW_3 then
                        return false
                    end
                    zU = table.pack(...)
                    local zW_4 = pcall(function()
                        zV:FireServer(co, table.unpack(zU, 1, zU.n))
                    end)
                    return zW_4
                end
            else
                xk = fns.fn408
                wz = function(cn, co, ...)
                    local zV
                    local zU
                    zU = nil
                    zV = nil
                    local zW = wz(cn)
                    local zX = zW and zW:FindFirstChild("RemoteEvent")
                    zV = zX
                    local zW_1 = not zV or not zV:IsA("RemoteEvent")
                    if zW_1 then
                        return false
                    end
                    zU = table.pack(...)
                    local zW_2 = pcall(function()
                        zV:FireServer(co, table.unpack(zU, 1, zU.n))
                    end)
                    return zW_2
                end
            end
            Kh_9_22 = (Kh_9_22 + 15) % 92
        end
    elseif Kh_2_7 <= 21 then
        if Kh_2_7 <= 20 then
            if Kh_2_7 <= 19 then
                if (Kh_9_22 * 3 + 9) * 5 % 4 == ((Kh_9_22 * 3 + 9) * 5 + 5) % 4 then
                    x_ = fns.fn701
                    ww = fns.fn156
                else
                    ww = fns.fn701
                    x_ = fns.fn156
                end
                Kh_9_22 = (Kh_9_22 + 38) % 92
            else
                if Kh_9_22 * 56491133 + 13 + 1 <= Kh_9_22 * 56491133 + 13 + 1 + 1 then
                    xw = fns.fn78
                else
                    xb = fns.fn78
                end
                Kh_9_22 = (Kh_9_22 + 15) % 92
            end
        else
            if xe and not x0 and (not xb and not xb) and ((not xb or not xb) and (not xe or xe)) or (xb and xe or (xU or xb)) and ((not x0 or xe) and (not xb or not x0)) or not (xe and not x0 and (not xb and not xb) and ((not xb or not xb) and (not xe or xe)) or (xb and xe or (xU or xb)) and ((not x0 or xe) and (not xb or not x0))) then
                xl = function(cM, cN, cO)
                    xw(cM)
                    local cQ = {}
                    wq[cM] = cQ
                    task.spawn(function()
                        local z9_2
                        while true do
                            local z8 = (wR()) and wq[cM] == cQ
                            local z8_3
                            if z8 then
                                z8_3, z9_2 = pcall(cO)
                                if not z8_3 then
                                    xU(tostring(z9_2))
                                end
                                task.wait(cN)
                                local z8_4 = not wR() or wq[cM] ~= cQ
                                if z8_4 then
                                    break
                                end
                                continue
                            end
                            break
                        end
                    end)
                end
                xJ = function(c5)
                    local Ab
                    Ab = nil
                    local Ac_4
                    Ac_4, Ab = x_()
                    local Ac_5 = not Ab or typeof(c5) ~= "Vector3"
                    if Ac_5 then
                        return false
                    end
                    local Ac_6 = pcall(function()
                        Ab.AssemblyLinearVelocity = Vector3.zero
                        Ab.AssemblyAngularVelocity = Vector3.zero
                        Ab.CFrame = CFrame.new(c5 + Vector3.new(0, 4, 0))
                    end)
                    return Ac_6
                end
                w4 = fns.fn1012
            else
                w4 = function(cM, cN, cO)
                    xw(cM)
                    local cQ = {}
                    wq[cM] = cQ
                    task.spawn(function()
                        local z9_1
                        while true do
                            local z8 = (wR()) and wq[cM] == cQ
                            local z8_1
                            if z8 then
                                z8_1, z9_1 = pcall(cO)
                                if not z8_1 then
                                    xU(tostring(z9_1))
                                end
                                task.wait(cN)
                                local z8_2 = not wR() or wq[cM] ~= cQ
                                if z8_2 then
                                    break
                                end
                                continue
                            end
                            break
                        end
                    end)
                end
                xl = function(c5)
                    local Ab
                    Ab = nil
                    local Ac_1
                    Ac_1, Ab = x_()
                    local Ac_2 = not Ab or typeof(c5) ~= "Vector3"
                    if Ac_2 then
                        return false
                    end
                    local Ac_3 = pcall(function()
                        Ab.AssemblyLinearVelocity = Vector3.zero
                        Ab.AssemblyAngularVelocity = Vector3.zero
                        Ab.CFrame = CFrame.new(c5 + Vector3.new(0, 4, 0))
                    end)
                    return Ac_3
                end
                xJ = fns.fn1012
            end
            Kh_9_22 = (Kh_9_22 + 38) % 92
        end
    elseif Kh_2_7 <= 22 then
        if (Kh_9_22 * 1 + 4) * 9 % 4 == ((Kh_9_22 * 1 + 4) * 9 + 12) % 4 then
            wS = fns.fn73
            wp = fns.fn684
            xR = fns.fn262
            xr = fns.fn905
        else
            xR = fns.fn73
            wS = fns.fn684
            xr = fns.fn262
            wp = fns.fn905
        end
        Kh_9_22 = (Kh_9_22 + 61) % 92
    else
        local Kh_2_8 = {
            "wnzotubb",
            "hpqk",
            "mqkhzsrub",
            "rulgtgqgcd",
            "zktiofnmjog",
            "mwrodykpp",
            "kbkhgttyrm",
            "apunuwcqfy",
            "yzpabs",
            "pwivscgkzd"
        }
        local KW = Kh_9_22
        local Kh_26_24 = Kh_2_8[KW % 10 + 1]
        if Kh_26_24:len() >= Kh_26_24:reverse():rep(KW % 3 + 2):len() then
            xt = fns.fn1227
        else
            w5 = fns.fn1227
        end
        Kh_9_22 = (Kh_9_22 + 15) % 92
    end
until (Kh_9_22 * 81 + 52) % 92 == 3
if not Kh_24_16 then
    local Kh_9_23 = 0
    repeat
        local Kh_35_19 = {
            "ihz",
            "bisljzzna",
            "cgmjspzvtdr",
            "mkjitn",
            "vfzaeemaz",
            "innsirdvbonu",
            "iipegkgkoma",
            "rmfu",
            "fsbniilmum",
            "goijd"
        }
        if Kh_35_19[(Kh_9_23 * 80 + 17) % 10 + 1] <= Kh_35_19[(Kh_9_23 * 80 + 17) % 10 + 1] then
            xg.Unload()
            error(Kh_11_11, 0)
        else
            Kh_11_11.Unload()
            error(xg, 0)
        end
        Kh_9_23 = (Kh_9_23 + 4) % 8
    until (Kh_9_23 * 5 + 1) % 8 == 5
end
