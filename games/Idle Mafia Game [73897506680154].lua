local fns = {}
local H9_2, H9_3, H9_26, H9_29, H9_34, H9_37, H9_47, H9_57, H9_60, H9_66
H9_2 = nil
H9_3 = nil
local AllocateSkillPoint
local vM
local uM
local ua
local vz
local uz
local uY
local tY
local vm
local vL
local u9
local t9
local vy
local uy
local tX
local vl
local ul
local vK
local uK
local Options
local list
local ux
local uW
local tW
local vk
local vJ
local uJ
local family
local Config
local vw
local uw
local vV
local uV
local tV
local vj
local uj
local vI
local u6
local t6
local vv
local uv
local vU
local uU
local State
local vi
local ui
local vH
local uH
local Deposit
local t5
local vu
local uu
local vT
local tT
local BuyShopItem
local uh
local vG
local u4
local t4
local ut
local Attack
local tS
local vF
local uF
local t3
local vs
local us
local vR
local Library
local tR
local Toggles
local uf
local uE
local u2
local t2
local ur
local vQ
local uQ
local tQ
local ve
local ue
local vD
local ClaimTrophy
local GameData
local vq
local uq
local vP
local ShopItemListDropdown
local DoJob
local vd
local ud
local vC
local uC
local u0
local t0
local vp
local up
local vO
local uO
local tO
local vc
local uc
local vB
local uB
local u_
local t_
local CoreGui
local uo
local uN
local vb
local ub
local CollectOperation
local uA
function fns.fn1()
    local yh = vv()
    local yi = not yh
    local ys = if yi then 1 else 0
    local yq = 1498 * ys + 3405 * (1 - ys)
    local yr = 498 * ys + 2410 * (1 - ys)
    if not ((yq * 74 + yr * 714 + yq * yr) % 16777213 == 1212428) then
        yi = not yh.pools
    end
    if yi then
        return false
    end
    local yi_1 = yh.pools.energy or 0
    if yi_1 < 1 then
        return false
    end
    local yi_2 = uC("JobList")
    if not t2(yi_2) then
        return false
    end
    local yk = -1
    local yl
    for i, v in ipairs(GameData.JOBS) do
        local ym = yi_2[v.name]
        if ym then
            ym = yh.level >= (v.level or 1)
        end
        if ym then
            local ym_2 = (yh.jobs or {})[v.id]
            local ym_3 = ym_2 and ym_2.masteryTier or 0
            local yn_4 = vi(v, ym_3)
            if yn_4 <= yi_1 then
                local yo_2 = (v.cash or 0) / yn_4
                if yo_2 > yk then
                    yk = yo_2
                    yl = v
                end
            end
        end
    end
    if not yl then
        return false
    end
    local yh_1 = vk(DoJob, yl.id)
    return yh_1 ~= nil and yh_1.ok == true
end
function fns.fn12(ci, cj)
    local xE = cj
    local xM = if xE then 1 else 0
    local xK = 2380 * xM + 3300 * (1 - xM)
    local xL = 4080 * xM + 487 * (1 - xM)
    if not ((xK * 2531 + xL * 2533 + xK * xL) % 16777213 == 9291607) then
        xE = 0
    end
    local xF = xE
    local max = math.max
    local energy = ci.energy
    local xF_1 = xF >= 2 and 0.05
    local xM_1 = if xF_1 then 1 else 0
    local xK_1 = 692 * xM_1 + 2653 * (1 - xM_1)
    local xL_1 = 2969 * xM_1 + 4070 * (1 - xM_1)
    if not ((xK_1 * 579 + xL_1 * 2905 + xK_1 * xL_1) % 16777213 == 11080161) then
        xF_1 = 0
    end
    return max(1, math.floor(energy * (1 - xF_1) + 0.5))
end
function fns.fn18()
    local DX = u4("SkillPointStat", vj[1])
    local DY = vd[DX]
    local D1 = if DY then 1 else 0
    local D_ = 918 * D1 + 474 * (1 - D1)
    local D0 = 1725 * D1 + 19 * (1 - D1)
    if not ((D_ * 65 + D0 * 3241 + D_ * D0) % 16777213 == 7233945) then
        DY = "energy"
    end
    return DY
end
function fns.fn24(j4)
    local DiscordGroup = j4:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = vR })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = vR })
end
function fns.fn30()
    t0(up, "Copied Discord invite to clipboard")
end
function fns.fn36(cD)
    local yb_1 = (cD.playtime or {}).todaySeconds or 0
    return yb_1 + State.sinceSync()
end
function fns.fn44(eN, eO)
    if eN.level < (eO.level or 1) then
        return false
    end
    local Ak_1 = eO.order
    local Ar = if Ak_1 then 1 else 0
    local Ap = 2192 * Ar + 3211 * (1 - Ar)
    local Ap_2
    local Aq = 2628 * Ar + 2663 * (1 - Ar)
    local Aq_2
    if not ((Ap * 3489 + Aq * 617 + Ap * Aq) % 16777213 == 15029940) then
        Ak_1 = 1
    end
    if Ak_1 > 1 then
        local Am_1 = GameData.BOSSES[(eO.order or 1) - 1]
        local Ak_3 = Am_1
        if Ak_3 then
            Ak_3 = (eN.bosses or {})[Am_1.id]
        end
        local Al_3 = Ak_3
        local Ak_4 = not Al_3
        if not Ak_4 then
            Ak_4 = (Al_3.kills or 0) < 1
        end
        if Ak_4 then
            return false
        end
        local Ak_5 = {}
        local Al_4 = eN.bosses
        if not ((Ap_2 * 1978 + Aq_2 * 183 + Ap_2 * Aq_2) % 16777213 == 8450392) then
            Al_4 = Ak_5
        end
        local Ak_6 = Al_4[eO.id]
        local Al_5 = Ak_6
        if Al_5 then
            local Am_3 = tX(eN)
            Al_5 = Am_3 < (Ak_6.respawnAt or 0)
        end
        if Al_5 then
            return false
        end
        return true
    end
    local Ak_7 = {}
    local Al_6 = eN.bosses
    local Ar_2 = if Al_6 then 1 else 0
    Ap_2 = 3230 * Ar_2 + 3207 * (1 - Ar_2)
    Aq_2 = 604 * Ar_2 + 2746 * (1 - Ar_2)
    if not ((Ap_2 * 1978 + Aq_2 * 183 + Ap_2 * Aq_2) % 16777213 == 8450392) then
        Al_6 = Ak_7
    end
    local Ak_8 = Al_6[eO.id]
    local Al_7 = Ak_8
    if Al_7 then
        local Am_4 = tX(eN)
        Al_7 = Am_4 < (Ak_8.respawnAt or 0)
    end
    if Al_7 then
        return false
    end
    return true
end
function fns.worker()
    while Library and not Library.Unloaded do
        uK()
        task.wait(1)
    end
end
function fns.fn115()
    local Ad = false
    if vb() then
        Ad = true
    end
    local Ae = vk(uH)
    if Ae and Ae.ok then
        Ad = true
    end
    if uO() then
        Ad = true
    end
    return Ad
end
function fns.fn228(da)
    local yz = not da
    if yz ~= false then
        yz = list
    end
    if yz then
        yz = os.clock() - t3 < 8
    end
    if yz then
        return list
    end
    local yz_1 = vk(vO)
    local yA = yz_1 and yz_1.ok and type(yz_1.list) == "table"
    if yA then
        list = yz_1.list
        t3 = os.clock()
        return list
    end
    return list
end
function fns.fn289()
    local EL = Options.ShopSearch.Value or ""
    local EM = tostring(EL):lower():gsub("^%s*(.-)%s*$", "%1")
    if EM == "" then
        ShopItemListDropdown:SetValues(vP)
    else
        local EL_1 = {}
        for i, v in ipairs(vP) do
            if v:lower():find(EM, 1, true) then
                EL_1[#EL_1 + 1] = v
            end
        end
        ShopItemListDropdown:SetValues(EL_1)
    end
end
function fns.fn314()
    return CoreGui
end
function fns.fn335()
    if os.clock() - vq < 1.25 then
        return false
    end
    local DT = vv()
    if not DT or not DT.pools then
        return false
    elseif DT.level < 12 then
        return false
    else
        local DU_1 = uh(false)
        if not DU_1 or DU_1.ok == false then
            return false
        elseif vl(DU_1, DT) then
            vq = os.clock()
            return true
        else
            local DV_1 = uh(false) or DU_1
            if tS(DV_1, DT) then
                vq = os.clock()
                return true
            end
            return false
        end
    end
end
function fns.fn342(cb, cc)
    if type(cb) ~= "string" then
        return cc
    end
    local xy = cb:gsub("[,$%s_]", "")
    local xz = tonumber(xy)
    if xz == nil then
        return cc
    end
    return math.max(0, math.floor(xz))
end
function fns.fn390()
    local zt = vv()
    if not zt then
        return false
    end
    local zu = zt.playtime and zt.playtime.laddersClaimed
    local zv = {}
    local zw = zu
    local zB = if zw then 1 else 0
    local zz = 3369 * zB + 330 * (1 - zB)
    local zA = 315 * zB + 1648 * (1 - zB)
    if not ((zz * 1494 + zA * 3935 + zz * zA) % 16777213 == 7334046) then
        zw = zv
    end
    local zu_1 = zw
    local zv_1 = vI(zt)
    local zt_1 = false
    for i, v in ipairs(Config.LADDER) do
        local zw_1 = v.seconds or 0
        local zx = zv_1 >= zw_1 and not zu_1[tostring(i)]
        if zx then
            local zw_2 = vk(uN, i)
            if zw_2 and zw_2.ok then
                zt_1 = true
                task.wait(0.15)
            end
        end
    end
    return zt_1
end
function fns.fn438(b0)
    local xk = u4(b0, {})
    if typeof(xk) ~= "table" then
        return {}
    end
    local xl = {}
    for k, v in xk do
        if v == true then
            xl[k] = true
        else
            local xk_1 = typeof(k) == "number" and typeof(v) == "string"
            if xk_1 then
                xl[v] = true
            end
        end
    end
    return xl
end
function fns.fn442(eg, eh)
    local zI = GameData.CITY_SETS[eh]
    if type(zI) ~= "table" then
        return false
    end
    local zJ = 0
    local zK = 0
    for i, v in ipairs(zI) do
        local zI_1 = GameData.ITEMS_BY_ID[v]
        local zL = zI_1
        if zL then
            zL = (zI_1.rarity or 0) < 7
        end
        if zL then
            zK += 1
            if (eg.inventory[v] or 0) + ((eg.inventoryBound or {})[v] or 0) > 0 then
                zJ += 1
            end
        end
    end
    return zK > 0 and zJ >= zK
end
function fns.fn502()
    local A5 = u4("CrewMinRarity", tW[1])
    local A6 = tR[A5]
    local Ba = if A6 then 1 else 0
    local A8 = 3933 * Ba + 3605 * (1 - Ba)
    local A9 = 3064 * Ba + 441 * (1 - Ba)
    if not ((A8 * 3281 + A9 * 2840 + A8 * A9) % 16777213 == 102219) then
        A6 = 1
    end
    return A6
end
function fns.worker2()
    while not Library.Unloaded do
        local GU = false
        local GV = vy("AutoClaimOperation") and ub()
        if GV then
            GU = true
        end
        local GV_1 = vy("AutoClaimRewards") and u6()
        if GV_1 then
            GU = true
        end
        local GV_2 = vy("AutoJob") and uE()
        if GV_2 then
            GU = true
        end
        local GV_3 = vy("AutoFight") and t9()
        if GV_3 then
            GU = true
        end
        local GV_4 = vy("AutoBoss") and vL()
        if GV_4 then
            GU = true
        end
        local GV_5 = vy("AutoHeist") and uW()
        if GV_5 then
            GU = true
        end
        local GV_6 = vy("AutoAllocatePoints") and vU()
        if GV_6 then
            GU = true
        end
        if vy("AutoOperation") then
            if ub() then
                GU = true
            end
            if u2() then
                GU = true
            end
        end
        local GV_7 = vy("AutoBuyProperties") and ut()
        if GV_7 then
            GU = true
        end
        local GV_8 = vy("AutoBuyShop") and tO()
        if GV_8 then
            GU = true
        end
        local GV_9 = vy("AutoOpenCrates") and ur()
        if GV_9 then
            GU = true
        end
        local GV_10 = vy("AutoEquipCrew") and uu()
        if GV_10 then
            GU = true
        end
        local GV_11 = vy("AutoRollCrew") and uz()
        if GV_11 then
            GU = true
        end
        local GV_12 = vy("AutoBankDeposit") and vz()
        if GV_12 then
            GU = true
        end
        local GV_13 = vy("AutoFamilyStamina") and vs()
        if GV_13 then
            GU = true
        end
        local wait = task.wait
        local GU_1 = GU and 0.35 or 0.75
        wait(GU_1)
    end
end
function fns.fn546()
    local zX = vv()
    if not zX then
        return false
    end
    local zY = false
    local z0 = zX.derived and zX.derived.trophyReady or {}
    local zZ_1 = {}
    if type(z0) == "table" then
        for k, v in z0 do
            local z__2 = nil
            local z0_1 = type(k) == "number" and type(v) == "string"
            if z0_1 then
                z__2 = v
            else
                local z0_2 = v == true
                local z1 = type(k) == "string" and z0_2
                if z1 then
                    z__2 = k
                elseif type(v) == "string" then
                    z__2 = v
                end
            end
            if z__2 and not zZ_1[z__2] then
                zZ_1[z__2] = true
                local z0_4 = vk(ClaimTrophy, z__2)
                if z0_4 and z0_4.ok then
                    zY = true
                    task.wait(0.15)
                end
            end
        end
    end
    local zZ_2 = vv() or zX
    local zX_1 = zZ_2
    for k in GameData.CITY_SETS do
        if tV(zX_1, k) then
            local zZ_3 = vk(uw, k)
            if zZ_3 and zZ_3.ok then
                zY = true
                task.wait(0.15)
                local zZ_4 = vv() or zX_1
                zX_1 = zZ_4
            end
        end
    end
    return zY
end
function fns.fn557(h5)
    if type(h5.net) == "number" then
        return h5.net
    end
    local C9 = Config.HEIST.sabotageHelpPenalty or 2
    local C9_1 = h5.helpCount or 0
    local Db = h5.saboCount
    local Df = if Db then 1 else 0
    local Dd = 3368 * Df + 2360 * (1 - Df)
    local De = 3673 * Df + 2998 * (1 - Df)
    if not ((Dd * 588 + De * 1995 + Dd * De) % 16777213 == 4901470) then
        Db = 0
    end
    return C9_1 - Db * C9
end
function fns.fn606(bW, bX)
    local xi = Options[bW]
    if xi == nil then
        return bX
    end
    return xi.Value
end
function fns.fn662(bF, bG, bH)
    return string.format("<b>%s</b> %s %s", bF, uA("-", "#5a6070"), uA(bG, bH))
end
function fns.fn671(cm)
    local xN = 1
    if cm.level >= Config.OPERATION_SLOTS.level15 then
        xN += 1
    end
    if cm.level >= Config.OPERATION_SLOTS.level30 then
        xN += 1
    end
    local xO = {}
    local xP = cm.derived
    local xT = if xP then 1 else 0
    local xR = 3139 * xT + 2705 * (1 - xT)
    local xS = 3751 * xT + 1273 * (1 - xT)
    if not ((xR * 2655 + xS * 4056 + xR * xS) % 16777213 == 1768064) then
        xP = xO
    end
    if xP.fourthSlot then
        xN += 1
    end
    return xN
end
function fns.fn685(g9, ha)
    if not vy("WebhookEnabled") then
        return false
    end
    local Cg = ha and u_()
    local Ch = Cg or nil
    return uF({ username = "Ouroboros Hub", content = Ch, embeds = { g9 } })
end
function fns.fn734()
    local yC = vv()
    if not yC or not yC.pools then
        return false
    end
    local yD_1 = yC.pools.stamina or 0
    local yD_2 = yC.pools.health or 0
    if yD_1 < (Config.COMBAT.staminaCost or 1) then
        return false
    end
    if yD_2 <= (Config.COMBAT.hospitalHealth or 20) then
        return false
    end
    local yC_2 = uQ(false)
    if type(yC_2) ~= "table" then
        return false
    end
    local yD_5 = os.clock()
    local yF = math.huge
    local yG
    for i, v in ipairs(yC_2) do
        local userId = v.userId
        local yH = userId
        if yH then
            yH = (t_[userId] or 0) <= yD_5
        end
        if yH then
            if (v.stamina or Config.COMBAT.staminaCost or 1) <= yD_1 then
                local yJ = (v.level or 1) * 1000 + (v.respect or 0)
                if yJ < yF then
                    yF = yJ
                    yG = v
                end
            end
        end
    end
    if not yG then
        return false
    end
    local yC_7 = vk(Attack, yG.userId)
    local userId = yG.userId
    local yF_1 = Config.COMBAT.targetCooldown or 30
    t_[userId] = yD_5 + yF_1
    if yC_7 and yC_7.ok then
        t3 = 0
        return true
    end
    return false
end
function fns.fn824()
    local C2 = if os.clock() - vT < 2 then 1 else 0
    if C2 == 1 then
        return false
    end
    local CV = vv()
    if not CV then
        return false
    end
    local CW = tQ(u4("BankDepositThreshold", "1000000"), 1000000)
    local CX = tQ(u4("BankKeepCash", "0"), 0)
    local CZ = CV.cash
    local C2_1 = if CZ then 1 else 0
    local C0 = 3817 * C2_1 + 2892 * (1 - C2_1)
    local C1 = 1775 * C2_1 + 2371 * (1 - C2_1)
    if not ((C0 * 3652 + C1 * 1483 + C0 * C1) % 16777213 == 6569971) then
        CZ = 0
    end
    local CV_1 = math.floor(CZ)
    if CV_1 < CW then
        return false
    end
    local CW_1 = CV_1 - CX
    if CW_1 < 1 then
        return false
    end
    vT = os.clock()
    local CV_2 = vk(Deposit, CW_1)
    return CV_2 ~= nil and CV_2.ok == true
end
function fns.fn851()
    local AI = vv()
    if not AI then
        return false
    end
    local AJ = AI.propertyCap or Config.PROPERTY.maxOwned
    if uf(AI) >= AJ then
        return false
    end
    local AJ_1 = uC("PropertyList")
    if not t2(AJ_1) then
        return false
    end
    local AK_1 = AI.cash or 0
    local AL = math.huge
    local AM
    for i, v in ipairs(GameData.PROPERTIES) do
        local AK_2 = AJ_1[v.name]
        if AK_2 then
            AK_2 = AI.level >= (v.level or 1)
        end
        if AK_2 then
            local AK_5 = ((AI.properties or {})[v.id] or {}).owned or 0
            if AK_5 < (Config.PROPERTY.maxOwned or 10) then
                local AK_7 = ux(v, AK_5)
                if AK_7 <= AK_1 and AK_7 < AL then
                    AL = AK_7
                    AM = v
                end
            end
        end
    end
    if not AM then
        return false
    end
    local AI_1 = vk(vp, AM.id)
    return AI_1 ~= nil and AI_1.ok == true
end
function fns.fn870()
    local Ec = family and os.clock() - u0 < 5
    if Ec then
        return family
    end
    local Ec_1 = vk(ui, "info")
    if Ec_1 and Ec_1.ok and Ec_1.family then
        family = Ec_1.family
        u0 = os.clock()
        return family
    end
    return nil
end
function fns.fn871()
    local y7 = vv()
    if not y7 or not y7.operations then
        return false
    end
    local y8_1 = uV(y7)
    local za = y7.operations.active or {}
    local y9_1 = 0
    local zh = 1
    while zh <= y8_1 do
        if za[zh] then
            y9_1 += 1
        end
        zh += 1
    end
    if y9_1 >= y8_1 then
        return false
    end
    local y8_2 = uC("OperationList")
    if not t2(y8_2) then
        return false
    end
    local y9_2 = y7.cash or 0
    local za_1 = -1
    local y9_3 = nil
    for i, v in ipairs(GameData.OPERATIONS) do
        local zc_1 = y8_2[v.name] and y7.level >= (v.level or 1)
        if zc_1 then
            zc_1 = (v.cost or 0) <= y9_2
        end
        if zc_1 then
            zc_1 = (v.cash or 0) > za_1
        end
        if zc_1 then
            za_1 = v.cash or 0
            y9_3 = v
        end
    end
    if not y9_3 then
        return false
    end
    local y7_1 = vk(vF, y9_3.id)
    return y7_1 ~= nil and y7_1.ok == true
end
function fns.fn906(b8)
    for k in b8 do
        return true
    end
    return false
end
function fns.fn917()
    if os.clock() - tY < 3 then
        return false
    end
    tY = os.clock()
    local A_ = vk(H9_2)
    return A_ ~= nil and A_.ok ~= false
end
function fns.fn934()
    local Bb = u4("CrewKeepRarity", tW[#tW])
    return tR[Bb] or #tW
end
function fns.fn975(jj, jk)
    local Ei = jj and jj[jk]
    if typeof(Ei) == "number" then
        return Ei
    elseif typeof(Ei) == "table" then
        return Ei.level or 0
    else
        return 0
    end
end
function fns.fn983()
    local Bs_1
    local Br_1
    local Bq_1
    local BH = if os.clock() - vQ < 1.25 then 1 else 0
    if BH == 1 then
        return false
    end
    local Bo = vv()
    if not Bo then
        return false
    end
    local Bp = uC("ShopItemList")
    if not t2(Bp) then
        return false
    end
    Br_1, Bq_1, Bs_1 = H9_3.shopStock(GameData, workspace:GetServerTimeNow())
    if type(Br_1) ~= "table" then
        return false
    end
    local shopRotation = Bo.shopRotation
    local Bt = shopRotation
    local Bu = {}
    if Bt then
        Bt = shopRotation.slot == Bs_1
    end
    if Bt then
        Bt = type(shopRotation.bought) == "table"
    end
    if Bt then
        Bu = shopRotation.bought
    end
    local Bq_3 = Bo.level or 1
    local Bq_4 = Bo.cash or 0
    local Bq_5 = t6(Bo)
    local Bo_1 = ul()
    local Bw = tQ(u4("ShopSpendLimitCash", ""), math.huge)
    local Bx = tQ(u4("ShopSpendLimitGold", ""), math.huge)
    local By = math.huge
    local Bz = math.huge
    local BA
    local BB
    for k in Bp do
        local Bp_1 = vK[k]
        if Bp_1 and Br_1[Bp_1.item] and Bu[Bp_1.item] ~= true then
            if Bp_1.level == nil or Bq_3 >= Bp_1.level then
                if Bp_1.goldPrice then
                    if Bp_1.goldPrice <= Bq_5 and Bp_1.goldPrice <= Bx and Bp_1.goldPrice < Bz then
                        BA = Bp_1
                        Bz = Bp_1.goldPrice
                    end
                else
                    local BC_3 = H9_3.discountedPrice(H9_3.shopPrice(Bp_1, Bs_1), Bo_1)
                    if BC_3 <= Bq_4 and BC_3 <= Bw and BC_3 < By then
                        BB = Bp_1
                        By = BC_3
                    end
                end
            end
        end
    end
    local BB_1 = BB or BA
    if not BB_1 then
        return false
    end
    vQ = os.clock()
    local Bo_3 = vk(BuyShopItem, BB_1.item)
    return Bo_3 ~= nil and Bo_3.ok == true
end
function fns.fn1004(fS)
    local Bi = fS.inventory or {}
    local Bi_1 = {}
    local Bj = fS.inventoryBound
    local Bn = if Bj then 1 else 0
    local Bl = 1164 * Bn + 3928 * (1 - Bn)
    local Bm = 261 * Bn + 469 * (1 - Bn)
    if not ((Bl * 2049 + Bm * 3789 + Bl * Bm) % 16777213 == 3677769) then
        Bj = Bi_1
    end
    return (Bi.gold_bar or 0) + (Bj.gold_bar or 0)
end
function fns.fn1045()
    return u4("CrewRollMode", uJ[1])
end
function fns.fn1047(h_)
    local C3 = not h_
    if C3 ~= false then
        C3 = vC
    end
    if C3 then
        C3 = os.clock() - vw < 5
    end
    if C3 then
        return vC
    end
    local C3_1 = vk(uq, "board")
    if C3_1 and C3_1.ok then
        vC = C3_1
        vw = os.clock()
        return vC
    end
    if C3_1 and C3_1.msg then
        vC = C3_1
        vw = os.clock()
    end
    return vC
end
function fns.fn1055()
    local Av = vv()
    if not Av or not Av.pools then
        return false
    end
    if (Av.pools.stamina or 0) < (Config.BOSS.staminaCost or 1) then
        return false
    end
    local Aw_2 = Av.pools.health
    local AB = if Aw_2 then 1 else 0
    local Az = 262 * AB + 1320 * (1 - AB)
    local AA = 3622 * AB + 718 * (1 - AB)
    if not ((Az * 1619 + AA * 921 + Az * AA) % 16777213 == 4709004) then
        Aw_2 = 0
    end
    if Aw_2 <= (Config.COMBAT.hospitalHealth or 20) then
        return false
    end
    for i, v in ipairs(GameData.BOSSES) do
        if uo(Av, v) then
            local Aw_3 = vk(vu, "attack", v.id)
            return Aw_3 ~= nil and Aw_3.ok == true
        end
    end
    return false
end
function fns.fn1070(bC, bD)
    return string.format('<font color="%s">%s</font>', bD, bC)
end
function fns.fn1077()
    local BY_1
    local BX_1
    if os.clock() - vM < 1.25 then
        return false
    end
    local BV = vv()
    if not BV then
        return false
    end
    local function BW(gv, gw)
        if type(gv) ~= "table" then
            return nil
        end
        for k, v in gv do
            if (v or 0) > 0 then
                local BM_1 = GameData.ITEMS_BY_ID[k]
                if BM_1 and BM_1.kind == "crate" then
                    return k, gw
                end
            end
        end
        return nil
    end
    BY_1, BX_1 = BW(BV.inventory, false)
    if not BY_1 then
        BY_1, BX_1 = BW(BV.inventoryBound, true)
    end
    if not BY_1 then
        return false
    end
    vM = os.clock()
    local BV_1 = vk(vc, BY_1, BX_1)
    BW = BV_1 ~= nil and BV_1.ok == true
    return BW
end
function fns.fn1099(iu, iv)
    local Dx = iu.favorsLeft or 0
    local Dz = iu.helpFavorCost or Config.HEIST.favorCostHelp
    local DJ = if Dz then 1 else 0
    local DH = 2315 * DJ + 1396 * (1 - DJ)
    local DI = 1902 * DJ + 1318 * (1 - DJ)
    if not ((DH * 1088 + DI * 2991 + DH * DI) % 16777213 == 12610732) then
        Dz = 1
    end
    local Dx_2 = Dz
    local Dz_1 = iu.helpEnergyCost or 0
    local DB = iu.helpMaxPerHeist or Config.HEIST.maxHelpsPerHeist or 5
    local DC = iv.pools and iv.pools.energy
    local DM = if DC then 1 else 0
    local DK = 3220 * DM + 658 * (1 - DM)
    local DL = 3831 * DM + 2341 * (1 - DM)
    if not ((DK * 2449 + DL * 2157 + DK * DL) % 16777213 == 11707854) then
        DC = 0
    end
    if Dx < Dx_2 or DC < Dz_1 then
        return false
    end
    local rows = iu.rows
    if type(rows) ~= "table" then
        return false
    end
    local Dy_1 = nil
    local DA_1 = -math.huge
    for i, v in ipairs(rows) do
        local Dx_4 = v.helpsUsed
        if not Dx_4 then
            Dx_4 = v.helped and 1 or 0
        end
        local DB_4 = Dx_4
        local Dx_5 = v.sabosUsed
        if not Dx_5 then
            Dx_5 = v.sabotaged and 1 or 0
        end
        if Dx_5 < 1 and DB_4 < DB then
            local Dx_7 = GameData.HEISTS_BY_ID[v.heistId]
            local DC_5 = Dx_7
            if DC_5 then
                DC_5 = Dx_7.helpGoal or 1
            end
            local DD_3 = DC_5 or 1
            local DD_4 = vG(v)
            if DD_4 < DD_3 then
                local DE_1 = Dx_7 and (Dx_7.helpCash or 0) or 0
                if v.friend then
                    DE_1 += 1000000000000
                end
                if v.famRel == "family" then
                    DE_1 += 100000000000
                elseif v.famRel == "war" then
                    DE_1 -= 10000000000
                end
                DE_1 += (DD_3 - DD_4) * 1000
                DE_1 -= DB_4 * 10
                if DE_1 > DA_1 then
                    DA_1 = DE_1
                    Dy_1 = v
                end
            end
        end
    end
    if not Dy_1 then
        return false
    end
    local Dx_9 = vk(uq, "help", Dy_1.id)
    vw = 0
    return Dx_9 ~= nil and Dx_9.ok == true
end
function fns.fn1131()
    if vy("WebhookPingEveryone") then
        return "@everyone"
    end
    local Ca = Options.WebhookPingId
    if Ca then
        local Cb_1 = Options.WebhookPingId.Value
        local Cf = if Cb_1 then 1 else 0
        local Cd = 1289 * Cf + 3498 * (1 - Cf)
        local Ce = 3220 * Cf + 812 * (1 - Cf)
        if not ((Cd * 3135 + Ce * 289 + Cd * Ce) % 16777213 == 9122175) then
            Cb_1 = ""
        end
        Ca = tostring(Cb_1):gsub("%D", "")
    end
    local Cb_2 = Ca or ""
    if Cb_2 ~= "" then
        return "<@" .. Cb_2 .. ">"
    end
    return nil
end
function fns.fn1168()
    local WebhookGroup = vJ.Webhook:AddLeftGroupbox("Webhook", "webhook")
    WebhookGroup:AddToggle("WebhookEnabled", { Text = "Enable Webhook", Default = false })
    WebhookGroup:AddInput("WebhookUrl", {
        Text = "Webhook URL",
        Default = "",
        Placeholder = "https://discord.com/api/webhooks/...",
        Finished = true
    })
    WebhookGroup:AddInput("WebhookPingId", { Text = "Ping User ID", Default = "", Placeholder = "Discord user id (optional)", Finished = true })
    WebhookGroup:AddToggle("WebhookPingEveryone", { Text = "Ping @everyone", Default = false })
    WebhookGroup:AddButton({
        Text = "Send Test Message",
        Func = function()
            local GL = Options.WebhookUrl
            if GL then
                local GM_1 = Options.WebhookUrl.Value
                local GQ = if GM_1 then 1 else 0
                local GO = 325 * GQ + 3528 * (1 - GQ)
                local GP = 1554 * GQ + 3594 * (1 - GQ)
                if not ((GO * 190 + GP * 2672 + GO * GP) % 16777213 == 4719088) then
                    GM_1 = ""
                end
                GL = tostring(GM_1)
            end
            local GM_2 = GL
            local GT = if GM_2 then 1 else 0
            local GR = 3690 * GT + 1702 * (1 - GT)
            local GS = 251 * GT + 3366 * (1 - GT)
            if not ((GR * 1762 + GS * 1081 + GR * GS) % 16777213 == 7699301) then
                GM_2 = ""
            end
            if GM_2 == "" then
                Library:Notify("Set a webhook URL first")
                return
            end
            if uF({
                username = "Ouroboros Hub",
                content = u_(),
                embeds = {
                    {
                        title = "Webhook Connected",
                        description = "Idle Mafia Game crew roll webhooks are ready.",
                        color = 5793266,
                        fields = {
                            { name = "Player", value = uY.Name, inline = true },
                            { name = "Place", value = tostring(game.PlaceId), inline = true }
                        },
                        footer = { text = "Idle Mafia Game | Ouroboros Hub" }
                    }
                }
            }) then
                Library:Notify("Webhook test sent")
            else
                Library:Notify("Webhook test failed")
            end
        end
    })
    local RarityFiltersGroup = vJ.Webhook:AddRightGroupbox("Rarity Filters", "list-filter")
    RarityFiltersGroup:AddDropdown("WebhookRarities", {
        Text = "Log Rarities",
        Values = tW,
        Default = vB,
        Multi = true,
        AllowNull = true,
        Expandable = true,
        ExpandColumns = 2
    })
end
function fns.fn1171()
    local Be = tonumber(ud:GetAttribute("GlobalShopDiscount")) or 0
    if Be <= 0 or Be >= 1 then
        return 0
    end
    return Be
end
function fns.fn1174()
    local D7_1
    if os.clock() - vm < 0.2 then
        return false
    end
    local D2 = vv()
    local D2_2
    if not D2 then
        return false
    end
    local D3 = D2.skillPoints or 0
    if D3 < 1 then
        return false
    end
    local D3_1 = ua()
    local D2_1 = (D2.allocs or {})[D3_1] or 0
    local D5_1 = 1
    D2_2, D7_1 = pcall(Config.allocCost, D3_1, D2_1)
    local D6_2 = D2_2 and type(D7_1) == "number"
    if D6_2 then
        D5_1 = D7_1
    end
    if D3 < D5_1 then
        return false
    end
    vm = os.clock()
    local D2_3 = vk(AllocateSkillPoint, D3_1, 1)
    return D2_3 ~= nil and D2_3.ok == true
end
local function fn1188(cu)
    local xZ = 0
    local x0 = cu.properties or {}
    for k, v in x0 do
        local x__1 = v.owned or 0
        xZ += x__1
    end
    return xZ
end
local function fn1237(hf, hg)
    local Cj = Library.Unloaded
    local Cq = if Cj then 1 else 0
    local Co = 1954 * Cq + 836 * (1 - Cq)
    local Cp = 3621 * Cq + 2844 * (1 - Cq)
    if not ((Co * 3266 + Cp * 506 + Co * Cp) % 16777213 == 15289424) then
        Cj = not vy("WebhookEnabled")
    end
    if Cj then
        return
    end
    if type(hf) ~= "table" then
        return
    end
    local Cj_1 = tonumber(hf.rarity) or 0
    local Cj_2 = GameData.RARITY_NAMES[Cj_1] or "#" .. tostring(Cj_1)
    local Cj_3 = uC("WebhookRarities")
    if not Cj_3[Cj_2] then
        return
    end
    local Cj_4 = hf.name or "Unknown"
    local Cl = {
        { name = "Crew", value = tostring(Cj_4), inline = true },
        { name = "Rarity", value = Cj_2, inline = true },
        { name = "Player", value = uY.Name, inline = true }
    }
    if hg ~= nil then
        Cl[#Cl + 1] = { name = "Slot", value = tostring(hg), inline = true }
    end
    if hf.atk ~= nil then
        Cl[#Cl + 1] = { name = "ATK", value = tostring(hf.atk), inline = true }
    end
    if hf.def ~= nil then
        Cl[#Cl + 1] = { name = "DEF", value = tostring(hf.def), inline = true }
    end
    local Cm = Cj_2 == "Secret" or Cj_2 == "Forbidden"
    local Cm_1 = vH[Cj_2] or 5793266
    uy({
        title = "Crew Hired",
        color = Cm_1,
        fields = Cl,
        footer = { text = "Idle Mafia Game | Ouroboros Hub" },
        timestamp = DateTime.now():ToIsoDate()
    }, Cm)
end
local function fn1238(bK, bL)
    if setclipboard then
        setclipboard(bK)
    elseif toclipboard then
        toclipboard(bK)
    end
    Library:Notify(bL)
end
local function fn1280()
    local yU = vv()
    local yV = not yU
    local y1 = if yV then 1 else 0
    local y_ = 3460 * y1 + 3607 * (1 - y1)
    local y0 = 941 * y1 + 548 * (1 - y1)
    if not ((y_ * 1776 + y0 * 3884 + y_ * y0) % 16777213 == 13055664) then
        yV = not yU.operations
    end
    if yV then
        return false
    end
    local yV_1 = {}
    local yW = yU.operations.active
    local y1_1 = if yW then 1 else 0
    local y__1 = 1416 * y1_1 + 2922 * (1 - y1_1)
    local y0_1 = 4004 * y1_1 + 3472 * (1 - y1_1)
    if not ((y__1 * 2316 + y0_1 * 2232 + y__1 * y0_1) % 16777213 == 1108835) then
        yW = yV_1
    end
    local yU_1 = false
    local yV_2 = yW
    local y4 = 1
    while y4 <= 4 do
        local y5 = y4
        local yW_1 = yV_2[y5]
        if yW_1 then
            local max = math.max
            local yY = yW_1.remaining or 0
            local yW_2 = max(0, yY - State.sinceSync())
            if yW_2 <= 0 then
                local yW_3 = vk(CollectOperation, y5)
                if yW_3 and yW_3.ok then
                    yU_1 = true
                    task.wait(0.2)
                end
            end
        end
        y4 += 1
    end
    return yU_1
end
local function fn1290(cz)
    local x8 = cz.serverNow or os.time()
    return x8 + State.sinceSync()
end
local function fn1332()
    return State.data
end
local function fn1345()
    local A2 = u4("CrewHireTier", ue[1])
    return uc[A2] or Config.CREW.hireTiers[1]
end
local function fn1353(h9, ia)
    if h9.mine ~= nil then
        return false
    end
    if (h9.bustWait or 0) > 0 then
        return false
    end
    if h9.startsLeft ~= nil and h9.startsLeft < 1 then
        return false
    end
    local Dg_2 = ia.cash or 0
    local Di = ia.pools and ia.pools.energy or 0
    local Dg_4 = nil
    local Dj = -1
    for i, v in ipairs(GameData.HEISTS) do
        local Dm = ia.level >= (v.level or 1)
        if Dm then
            Dm = Dg_2 >= (v.stake or 0)
        end
        if Dm then
            Dm = Di >= (v.energy or 0)
        end
        if Dm then
            Dm = (v.cash or 0) > Dj
        end
        if Dm then
            Dj = v.cash or 0
            Dg_4 = v
        end
    end
    if not Dg_4 then
        return false
    end
    local Dh_1 = vk(uq, "start", Dg_4.id)
    vw = 0
    return Dh_1 ~= nil and Dh_1.ok == true
end
local function fn1391()
    local CO, CT
    local CQ_7, CQ_8
    local CH_7
    local CG_7
    local CD_13, CD_14
    local CI = if os.clock() - tT < 1.25 then 1 else 0
    if CI == 1 then
        return false
    end
    local Cu = vv()
    if not Cu then
        return false
    end
    local Cw = Cu.crew or {}
    local Cw_28
    local Cw_1 = math.max(#Cw, 1)
    local Cx = Cu.cash or 0
    local Cy_7, Cy_8
    local Cx_1 = t5()
    local Cz = vD()
    local CA = u9()
    local CB = uB() == uJ[1]
    local CB_13, CB_14, CB_15
    local CC = Config.COMBAT.crewCap or 30
    local CC_26, CC_27
    if Cw_1 < CC then
        local CC_1 = false
        local CL = 2
        while CL <= Cw_1 do
            local CD_1 = Cw[CL]
            if not CD_1 or CD_1.rarity == nil then
                CC_1 = true
                break
            end
            CL += 1
        end
        if not CC_1 then
            local CC_2 = Config.crewSlotCost(Cw_1)
            if CC_2 <= Cx then
                local CC_3 = vk(uU, "buyslot", nil)
                if CC_3 and CC_3.ok then
                    tT = os.clock()
                    return true
                end
                local CC_4 = (vv())
                if not ((CG_7 * 1284 + CH_7 * 3506 + CG_7 * CH_7) % 16777213 == 3497496) then
                    CC_4 = Cu
                end
                local Cu_1 = CC_4
                local CD_3 = Cu_1.crew or {}
                local Cw_2 = math.max(#CD_3, 1)
                CO = Cw_2
                while CQ_7 <= CO do
                    if CD_13 then
                        if CC_26 <= Cy_7 then
                            local CC_9 = vk(uU, "hire", Cx_1.id)
                            tT = os.clock()
                            if CD_14 then
                                if type(CC_27.member) == "table" then
                                    task.spawn(t4, CC_9.member, CC_9.index)
                                end
                                return true
                            end
                            return false
                        end
                        return false
                    end
                end
                if CB then
                    return false
                end
                local CQ_2 = 2
                while true do
                    if not (CQ_8 <= CO) then
                        return false
                    end
                    CT = CQ_2
                    if CB_13 then
                        break
                    end
                    CQ_2 += 1
                end
                local CU_2 = CT
                vk(uU, "dismiss", CU_2)
                if not CB_14 then
                    return false
                end
                task.wait(0.2)
                local Cw_5 = vv() or Cu_1
                if Cw_28 > Cy_8 then
                    tT = os.clock()
                    return true
                end
                local Cw_8 = vk(uU, "hire", Cx_1.id)
                tT = os.clock()
                if CB_15 then
                    task.spawn(t4, Cw_8.member, Cw_8.index)
                end
                return Cw_8 ~= nil and Cw_8.ok == true
            end
            local CC_10 = (vv())
            if not ((CG_7 * 1284 + CH_7 * 3506 + CG_7 * CH_7) % 16777213 == 3497496) then
                CC_10 = Cu
            end
            local Cu_3 = CC_10
            local CD_6 = Cu_3.crew or {}
            local Cw_9 = math.max(#CD_6, 1)
            CO = Cw_9
            while CQ_7 <= CO do
                if CD_13 then
                    if CC_26 <= Cy_7 then
                        local CC_15 = vk(uU, "hire", Cx_1.id)
                        tT = os.clock()
                        if CD_14 then
                            if type(CC_27.member) == "table" then
                                task.spawn(t4, CC_15.member, CC_15.index)
                            end
                            return true
                        end
                        return false
                    end
                    return false
                end
            end
            if CB then
                return false
            end
            local CQ_4 = 2
            while true do
                if not (CQ_8 <= CO) then
                    return false
                end
                CT = CQ_4
                if CB_13 then
                    break
                end
                CQ_4 += 1
            end
            local CU_4 = CT
            vk(uU, "dismiss", CU_4)
            if not CB_14 then
                return false
            end
            task.wait(0.2)
            local Cw_12 = vv() or Cu_3
            if Cw_28 > Cy_8 then
                tT = os.clock()
                return true
            end
            local Cw_15 = vk(uU, "hire", Cx_1.id)
            tT = os.clock()
            if CB_15 then
                task.spawn(t4, Cw_15.member, Cw_15.index)
            end
            return Cw_15 ~= nil and Cw_15.ok == true
        end
        local CC_16 = (vv())
        if not ((CG_7 * 1284 + CH_7 * 3506 + CG_7 * CH_7) % 16777213 == 3497496) then
            CC_16 = Cu
        end
        local Cu_5 = CC_16
        local CD_9 = Cu_5.crew or {}
        local Cw_16 = math.max(#CD_9, 1)
        CO = Cw_16
        while CQ_7 <= CO do
            if CD_13 then
                if CC_26 <= Cy_7 then
                    local CC_21 = vk(uU, "hire", Cx_1.id)
                    tT = os.clock()
                    if CD_14 then
                        if type(CC_27.member) == "table" then
                            task.spawn(t4, CC_21.member, CC_21.index)
                        end
                        return true
                    end
                    return false
                end
                return false
            end
        end
        if CB then
            return false
        end
        local CQ_6 = 2
        while true do
            if not (CQ_8 <= CO) then
                return false
            end
            CT = CQ_6
            if CB_13 then
                break
            end
            CQ_6 += 1
        end
        local CU_6 = CT
        vk(uU, "dismiss", CU_6)
        if not CB_14 then
            return false
        end
        task.wait(0.2)
        local Cw_19 = vv() or Cu_5
        if Cw_28 > Cy_8 then
            tT = os.clock()
            return true
        end
        local Cw_22 = vk(uU, "hire", Cx_1.id)
        tT = os.clock()
        if CB_15 then
            task.spawn(t4, Cw_22.member, Cw_22.index)
        end
        return Cw_22 ~= nil and Cw_22.ok == true
    end
    local CC_22 = (vv())
    local CI_7 = if CC_22 then 1 else 0
    CG_7 = 1544 * CI_7 + 3910 * (1 - CI_7)
    CH_7 = 300 * CI_7 + 1935 * (1 - CI_7)
    if not ((CG_7 * 1284 + CH_7 * 3506 + CG_7 * CH_7) % 16777213 == 3497496) then
        CC_22 = Cu
    end
    local Cu_7 = CC_22
    local CD_12 = Cu_7.crew or {}
    local Cw_23 = math.max(#CD_12, 1)
    local CC_24 = Cu_7.cash
    local CI_8 = if CC_24 then 1 else 0
    local CG_8 = 1526 * CI_8 + 2911 * (1 - CI_8)
    local CH_8 = 1382 * CI_8 + 3026 * (1 - CI_8)
    if not ((CG_8 * 777 + CH_8 * 2051 + CG_8 * CH_8) % 16777213 == 6129116) then
        CC_24 = 0
    end
    Cy_7 = CC_24
    CQ_7 = 2
    CO = Cw_23
    while CQ_7 <= CO do
        local CC_25 = CD_12[CQ_7]
        CD_13 = not CC_25 or CC_25.rarity == nil
        if CD_13 then
            CC_26 = Cx_1.cost or 0
            if CC_26 <= Cy_7 then
                CC_27 = vk(uU, "hire", Cx_1.id)
                tT = os.clock()
                CD_14 = CC_27 and CC_27.ok
                if CD_14 then
                    if type(CC_27.member) == "table" then
                        task.spawn(t4, CC_27.member, CC_27.index)
                    end
                    return true
                end
                return false
            end
            return false
        end
        CQ_7 += 1
    end
    if CB then
        return false
    end
    CQ_8 = 2
    while true do
        if not (CQ_8 <= CO) then
            return false
        end
        CT = CQ_8
        local Cw_24 = CD_12[CT]
        CB_13 = Cw_24 and Cw_24.rarity ~= nil and Cw_24.rarity < Cz and Cw_24.rarity < CA
        if CB_13 then
            break
        end
        CQ_8 += 1
    end
    local CU_8 = CT
    local Cw_25 = vk(uU, "dismiss", CU_8)
    CB_14 = Cw_25 and Cw_25.ok
    if not CB_14 then
        return false
    end
    task.wait(0.2)
    local Cw_26 = vv() or Cu_7
    Cy_8 = Cw_26.cash or 0
    Cw_28 = Cx_1.cost or 0
    if Cw_28 > Cy_8 then
        tT = os.clock()
        return true
    end
    local Cw_29 = vk(uU, "hire", Cx_1.id)
    tT = os.clock()
    CB_15 = Cw_29 and Cw_29.ok and type(Cw_29.member) == "table"
    if CB_15 then
        task.spawn(t4, Cw_29.member, Cw_29.index)
    end
    return Cw_29 ~= nil and Cw_29.ok == true
end
local function fn1398(bR)
    local xf = Toggles[bR]
    return xf ~= nil and xf.Value == true
end
local function fn1412(cq, cr)
    local baseCost = cq.baseCost
    local costGrowth = Config.PROPERTY.costGrowth
    local xX = cr or 0
    return math.floor(baseCost * costGrowth ^ xX + 0.5)
end
local function fn1419()
    if os.clock() - ve < 1.25 then
        return false
    end
    local El = vv()
    if not El then
        return false
    end
    if not El.family or not El.family.role then
        return false
    end
    local En = El.pools and El.pools.stamina or 0
    local En_1 = tQ(u4("FamilyStaminaKeep", "0"), 0)
    local Eo = En - En_1
    if Eo < 1 then
        return false
    end
    local Em_3 = uC("FamilyStaminaPerks")
    if not t2(Em_3) then
        return false
    end
    local En_2 = uj() or El.family
    local Ep = En_2.perks or {}
    local Eq = En_2.perkProgress or {}
    local Eq_1 = En_2.staminaPerkCosts
    local ED = if Eq_1 then 1 else 0
    local EB = 2063 * ED + 3624 * (1 - ED)
    local EC = 781 * ED + 173 * (1 - ED)
    if not ((EB * 908 + EC * 2702 + EB * EC) % 16777213 == 5594669) then
        Eq_1 = Config.FAMILY.staminaPerkCosts
    end
    local Es = Eq_1 or {}
    local El_2 = En_2.maxPerkLevel or Config.FAMILY.maxPerkLevel
    local ED_1 = if El_2 then 1 else 0
    local EB_1 = 1790 * ED_1 + 914 * (1 - ED_1)
    local EC_1 = 147 * ED_1 + 1267 * (1 - ED_1)
    if not ((EB_1 * 3879 + EC_1 * 1650 + EB_1 * EC_1) % 16777213 == 7449090) then
        El_2 = 20
    end
    local Er_2 = El_2
    local El_3 = Config.FAMILY.contributeMax or 25
    local Es_1 = nil
    local Et = math.huge
    local Eu = math.huge
    for k in Em_3 do
        local El_4 = us[k]
        if El_4 then
            local Em_4 = vV(Ep, El_4)
            if Em_4 < Er_2 then
                local Ew = Es[Em_4 + 1]
                local Ex = Eq[El_4] or 0
                local Ey = Ew
                if Ey then
                    Ey = math.max(1, Ew - Ex)
                end
                local Ew_1 = Ey or 1
                local Ew_2 = Em_4 < Eu
                if not Ew_2 then
                    Ew_2 = Em_4 == Eu and Ew_1 < Et
                end
                if Ew_2 then
                    Eu = Em_4
                    Et = Ew_1
                    Es_1 = El_4
                end
            end
        end
    end
    if not Es_1 then
        return false
    end
    local El_5 = math.min(Eo, Et, El_3)
    if El_5 < 1 then
        return false
    end
    ve = os.clock()
    local Em_5 = vk(ui, "contribute", Es_1, El_5)
    if Em_5 and Em_5.ok then
        u0 = 0
    end
    return Em_5 ~= nil and Em_5.ok == true
end
tO = nil
DoJob = nil
tQ = nil
tR = nil
tS = nil
tT = nil
State = nil
tV = nil
tW = nil
tX = nil
tY = nil
H9_3 = nil
t_ = nil
t0 = nil
GameData = nil
t2 = nil
t3 = nil
t4 = nil
t5 = nil
t6 = nil
Config = nil
list = nil
t9 = nil
ua = nil
ub = nil
uc = nil
ud = nil
ue = nil
uf = nil
uh = nil
ui = nil
uj = nil
ul = nil
AllocateSkillPoint = nil
uo = nil
up = nil
uq = nil
ur = nil
us = nil
ut = nil
uu = nil
uv = nil
uw = nil
ux = nil
uy = nil
uz = nil
local Players, ug, uk, um
uA = nil
uB = nil
uC = nil
ClaimTrophy = nil
uE = nil
uF = nil
uH = nil
uJ = nil
uK = nil
uM = nil
uN = nil
uO = nil
ShopItemListDropdown = nil
uQ = nil
Library = nil
uU = nil
uV = nil
uW = nil
uY = nil
H9_2 = nil
u_ = nil
u0 = nil
u2 = nil
u4 = nil
Deposit = nil
u6 = nil
family = nil
Options = nil
u9 = nil
vb = nil
vc = nil
vd = nil
ve = nil
Toggles = nil
BuyShopItem = nil
vi = nil
vj = nil
vk = nil
vl = nil
vm = nil
local uG, uI, uL, uS, PlayerGui, uX, u1, Workspace, TeleportService, GuiService
CoreGui = nil
vp = nil
vq = nil
vs = nil
vu = nil
vv = nil
vw = nil
vy = nil
vz = nil
CollectOperation = nil
vB = nil
vC = nil
vD = nil
vF = nil
vG = nil
vH = nil
vI = nil
vJ = nil
vK = nil
vL = nil
vM = nil
vO = nil
vP = nil
vQ = nil
vR = nil
Attack = nil
vT = nil
vU = nil
vV = nil
local vn, vr, HttpService, VirtualUser, UserInputService, RunService
vn = nil
vr = nil
HttpService = nil
VirtualUser = nil
UserInputService = nil
RunService = nil
Players, RunService, UserInputService, VirtualUser, HttpService, CoreGui, GuiService, TeleportService, Workspace, uY, PlayerGui, uM = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local H9_23 = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
CoreGui = game:GetService("CoreGui")
GuiService = game:GetService("GuiService")
TeleportService = game:GetService("TeleportService")
Workspace = game:GetService("Workspace")
uY = Players.LocalPlayer
PlayerGui = uY:WaitForChild("PlayerGui")
uM = fns.fn314
if getgenv then
    getgenv().gethui = uM
end
pcall(function()
    gethui = uM
end)
if setthreadidentity then
    setthreadidentity(8)
end
uv, up, um, ug, ud, H9_34, Config, GameData, H9_3, State, DoJob, Attack, vO, vF, CollectOperation, vu, vp, BuyShopItem, vc, Deposit, H9_2, uU, uN, uH, ClaimTrophy, uw, uq, AllocateSkillPoint, ui, ue, uc = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local H9_12 = 9
repeat
    H9_66 = (H9_12 * 2 + 2) % 13 + 1
    if H9_66 <= 7 then
        if H9_66 <= 4 then
            if H9_66 <= 2 then
                if H9_66 <= 1 then
                    H9_57 = (vector.create((H9_12 * 7 + 9) % 11 + 1, (H9_12 * 1 + 11) % 13 + 1, (H9_12 * 5 + 7) % 17 + 1))
                    H9_47 = (vector.create((H9_12 * 4 + 9) % 11 + 1, (H9_12 * 4 + 4) % 13 + 1, (H9_12 * 1 + 16) % 17 + 1))
                    local Kw = vector.dot(H9_57, H9_47)
                    if Kw * Kw <= vector.dot(H9_57, H9_57) * vector.dot(H9_47, H9_47) then
                        H9_3 = require(ud:WaitForChild("Util"))
                        State = require(uY:WaitForChild("PlayerScripts"):WaitForChild("MWClient"):WaitForChild("State"))
                        DoJob = H9_34:WaitForChild("DoJob")
                        Attack = H9_34:WaitForChild("Attack")
                        vO = H9_34:WaitForChild("GetHitList")
                    else
                        ud = require(Attack:WaitForChild("Util"))
                        uY = require(DoJob:WaitForChild("PlayerScripts"):WaitForChild("MWClient"):WaitForChild("State"))
                        H9_34 = State:WaitForChild("DoJob")
                        vO = State:WaitForChild("Attack")
                        H9_3 = State:WaitForChild("GetHitList")
                    end
                    H9_12 = (H9_12 + 85) % 104
                else
                    if H9_12 * 89712853 + 11 + 7 >= H9_12 * 89712853 + 11 + 7 + 1 then
                        H9_34 = CollectOperation:WaitForChild("StartOperation")
                        vF = CollectOperation:WaitForChild("CollectOperation")
                    else
                        vF = H9_34:WaitForChild("StartOperation")
                        CollectOperation = H9_34:WaitForChild("CollectOperation")
                    end
                    H9_12 = (H9_12 + 85) % 104
                end
            elseif H9_66 <= 3 then
                if H9_12 * 37760813 + 5 + 7 <= H9_12 * 37760813 + 5 + 7 + 5 then
                    vu = H9_34:WaitForChild("BossAction")
                    vp = H9_34:WaitForChild("BuyProperty")
                    BuyShopItem = H9_34:WaitForChild("BuyShopItem")
                else
                    H9_34 = BuyShopItem:WaitForChild("BossAction")
                    vu = BuyShopItem:WaitForChild("BuyProperty")
                    vp = BuyShopItem:WaitForChild("BuyShopItem")
                end
                H9_12 = (H9_12 + 98) % 104
            else
                local JM = bit32.rrotate(bit32.bxor(bit32.lrotate(H9_12, 29), string.byte(tostring(uN))), 6)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(JM, 2002248793), 2590768706), (bit32.bxor(bit32.band(JM, 2292718502), 688782297))), 2590768706), 688782297) ~= JM then
                    H9_2 = Deposit:WaitForChild("OpenCrate")
                    vc = Deposit:WaitForChild("Deposit")
                    H9_34 = Deposit:WaitForChild("AutoEquipCrew")
                else
                    vc = H9_34:WaitForChild("OpenCrate")
                    Deposit = H9_34:WaitForChild("Deposit")
                    H9_2 = H9_34:WaitForChild("AutoEquipCrew")
                end
                H9_12 = (H9_12 + 33) % 104
            end
        elseif H9_66 <= 6 then
            if H9_66 <= 5 then
                if (not up or up or (not up or not uw)) and (vF or not uw or vF and H9_3) and (not vF and not H9_3 or (not up or vF) or (H9_3 or uw or (not up or uw))) or not ((not up or up or (not up or not uw)) and (vF or not uw or vF and H9_3) and (not vF and not H9_3 or (not up or vF) or (H9_3 or uw or (not up or uw)))) then
                    uU = H9_34:WaitForChild("CrewAction")
                    uN = H9_34:WaitForChild("ClaimLadder")
                    uH = H9_34:WaitForChild("ClaimGroupBonus")
                    ClaimTrophy = H9_34:WaitForChild("ClaimTrophy")
                    uw = H9_34:WaitForChild("ClaimSetTrophy")
                else
                    uN = ClaimTrophy:WaitForChild("CrewAction")
                    uU = ClaimTrophy:WaitForChild("ClaimLadder")
                    uw = ClaimTrophy:WaitForChild("ClaimGroupBonus")
                    uH = ClaimTrophy:WaitForChild("ClaimTrophy")
                    H9_34 = ClaimTrophy:WaitForChild("ClaimSetTrophy")
                end
                H9_12 = (H9_12 + 85) % 104
            else
                if H9_12 * 11035809 + 11 + 3 >= H9_12 * 11035809 + 11 + 3 + 4 then
                    H9_34 = AllocateSkillPoint:WaitForChild("HeistAction")
                    uq = AllocateSkillPoint:WaitForChild("AllocateSkillPoint")
                else
                    uq = H9_34:WaitForChild("HeistAction")
                    AllocateSkillPoint = H9_34:WaitForChild("AllocateSkillPoint")
                end
                H9_12 = (H9_12 + 46) % 104
            end
        else
            local Ky = bit32.rrotate(bit32.bxor(bit32.lrotate(H9_12, 28), string.byte(tostring(uc))), 2)
            if bit32.bxor(bit32.lrotate(bit32.bxor(Ky, 3750979446), 28), 1845048951) ~= bit32.lrotate(Ky, 28) then
                ue = uc:WaitForChild("FamilyAction")
                H9_34 = {}
                ui = {}
            else
                ui = H9_34:WaitForChild("FamilyAction")
                ue = {}
                uc = {}
            end
            H9_12 = (H9_12 + 98) % 104
        end
    elseif H9_66 <= 10 then
        if H9_66 <= 9 then
            if H9_66 <= 8 then
                H9_57 = (vector.create((H9_12 * 2 + 1) % 11 + 1, (H9_12 * 2 + 10) % 13 + 1, (H9_12 * 7 + 9) % 17 + 1))
                H9_47 = (vector.create((H9_12 * 5 + 6) % 11 + 1, (H9_12 * 11 + 10) % 13 + 1, (H9_12 * 8 + 17) % 17 + 1))
                H9_37 = (vector.create((H9_12 * 6 + 8) % 11 + 1, (H9_12 * 1 + 8) % 13 + 1, (H9_12 * 9 + 16) % 17 + 1))
                H9_26 = (vector.create((H9_12 * 1 + 4) % 5 + 1, (H9_12 * 2 + 2) % 7 + 1, (H9_12 * 5 + 1) % 9 + 1))
                if vector.dot(vector.cross(H9_57, (vector.cross(H9_47, H9_37))), H9_26) == vector.dot(H9_47 * vector.dot(H9_57, H9_37) - H9_37 * vector.dot(H9_57, H9_47), H9_26) + 1 then
                    vF = "Idle Mafia Game"
                else
                    uv = "Idle Mafia Game"
                end
                H9_12 = (H9_12 + 85) % 104
            else
                if (Config and not uq and (Deposit or not uq) or (not uq or ug) and (not Deposit or uq)) and (ug and not uN or Config and not uq or (not uq and not uN or (not ug or ug))) and not ((Config and not uq and (Deposit or not uq) or (not uq or ug) and (not Deposit or uq)) and (ug and not uN or Config and not uq or (not uq and not uN or (not ug or ug)))) then
                    ug = "https://discord.gg/ehKVq7pf7v"
                    up = "https://rscripts.net/@Ouroboros"
                    um = "https://ouroboros-hub-rbx.web.app/"
                else
                    up = "https://discord.gg/ehKVq7pf7v"
                    um = "https://rscripts.net/@Ouroboros"
                    ug = "https://ouroboros-hub-rbx.web.app/"
                end
                H9_12 = (H9_12 + 20) % 104
            end
        else
            if (H9_12 * 3 + 8) * 9 % 4 == ((H9_12 * 3 + 8) * 9 + 0) % 4 then
                ud = H9_23:WaitForChild("MW")
            else
                H9_23 = ud:WaitForChild("MW")
            end
            H9_12 = (H9_12 + 59) % 104
        end
    elseif H9_66 <= 12 then
        if H9_66 <= 11 then
            H9_66 = (vector.create((H9_12 * 1 + 7) % 11 + 1, (H9_12 * 10 + 7) % 13 + 1, (H9_12 * 2 + 2) % 17 + 1))
            H9_57 = (vector.create((H9_12 * 7 + 6) % 11 + 1, (H9_12 * 9 + 1) % 13 + 1, (H9_12 * 7 + 2) % 17 + 1))
            H9_47 = (vector.create((H9_12 * 3 + 6) % 11 + 1, (H9_12 * 11 + 8) % 13 + 1, (H9_12 * 12 + 6) % 17 + 1))
            if vector.dot(vector.cross(H9_66, H9_57), H9_47) == vector.dot(vector.cross(H9_57, H9_47), H9_66) + 4 then
                ud = H9_34:WaitForChild("Remotes")
            else
                H9_34 = ud:WaitForChild("Remotes")
            end
            H9_12 = (H9_12 + 72) % 104
        else
            H9_66 = (vector.create((H9_12 * 3 + 3) % 11 + 1, (H9_12 * 4 + 4) % 13 + 1, (H9_12 * 4 + 2) % 17 + 1))
            H9_57 = (vector.create((H9_12 * 1 + 2) % 11 + 1, (H9_12 * 5 + 12) % 13 + 1, (H9_12 * 8 + 6) % 17 + 1))
            H9_47 = (vector.create((H9_12 * 4 + 6) % 11 + 1, (H9_12 * 10 + 13) % 13 + 1, (H9_12 * 3 + 10) % 17 + 1))
            H9_37 = (vector.create((H9_12 * 5 + 1) % 11 + 1, (H9_12 * 9 + 10) % 13 + 1, (H9_12 * 8 + 5) % 17 + 1))
            if vector.dot(vector.cross(H9_66, H9_57), (vector.cross(H9_47, H9_37))) == vector.dot(H9_66, H9_47) * vector.dot(H9_57, H9_37) - vector.dot(H9_66, H9_37) * vector.dot(H9_57, H9_47) then
                Config = require(ud:WaitForChild("Config"))
            else
                ud = require(Config:WaitForChild("Config"))
            end
            H9_12 = (H9_12 + 46) % 104
        end
    else
        H9_66 = { "gum", "gepop", "srqg", "gocxjv", "ranvsul", "vkkupbe", "vnmzd", "glu" }
        if H9_66[(H9_12 * 86 + 63) % 8 + 1] <= H9_66[(H9_12 * 86 + 63) % 8 + 1] then
            GameData = require(ud:WaitForChild("GameData"))
        else
            ud = require(GameData:WaitForChild("GameData"))
        end
        H9_12 = (H9_12 + 20) % 104
    end
until (H9_12 * 55 + 36) % 104 == 11
for i, v in ipairs(Config.CREW.hireTiers) do
    H9_34 = v.name
    table.insert(ue, H9_34)
    uc[H9_34] = v
end
tR = {}
tW = {}
for i, v in ipairs(GameData.RARITY_NAMES) do
    table.insert(tW, v)
    tR[v] = i
end
vH, vB = nil, nil
H9_34 = 13
repeat
    H9_23 = (H9_34 * 1 + 1) % 2 + 1
    if H9_23 <= 1 then
        H9_23 = { "hamn", "twabjxngc", "zmpkhjvpm", "mzl", "qddyrsffok", "oory", "lgboq" }
        local KB = H9_34
        H9_12 = H9_23[KB % 7 + 1]
        if H9_12:len() >= H9_12:gsub("(.)", "%1%1", KB % 3 % 2 + 1):len() then
            vB = {
                Uncommon = 5763719,
                Legendary = 15844367,
                Secret = 10038562,
                Common = 9807270,
                Mythic = 15105570,
                Epic = 10181046,
                Forbidden = 15548997,
                Rare = 3447003
            }
        else
            vH = {
                Common = 9807270,
                Uncommon = 5763719,
                Rare = 3447003,
                Epic = 10181046,
                Legendary = 15844367,
                Mythic = 15105570,
                Secret = 10038562,
                Forbidden = 15548997
            }
        end
        H9_34 = (H9_34 + 9) % 16
    else
        H9_23 = (vector.create((H9_34 * 7 + 6) % 11 + 1, (H9_34 * 6 + 4) % 13 + 1, (H9_34 * 11 + 2) % 17 + 1))
        H9_12 = (vector.create((H9_34 * 7 + 4) % 11 + 1, (H9_34 * 11 + 10) % 13 + 1, (H9_34 * 8 + 8) % 17 + 1))
        H9_66 = (vector.create((H9_34 * 7 + 8) % 11 + 1, (H9_34 * 6 + 10) % 13 + 1, (H9_34 * 14 + 16) % 17 + 1))
        if vector.dot(vector.cross(H9_23, H9_12), H9_66) == vector.dot(vector.cross(H9_12, H9_66), H9_23) then
            vB = {}
        else
            vH = {}
        end
        H9_34 = (H9_34 + 11) % 16
    end
until (H9_34 * 11 + 5) % 16 == 0
for i, v in ipairs(tW) do
    H9_34 = v == "Forbidden"
    H9_23 = v == "Secret" or H9_34
    if H9_23 then
        vB[v] = true
    end
end
vj, vd, H9_66, H9_23, H9_12 = nil, nil, nil, nil, nil
H9_34 = 6
repeat
    H9_57 = (H9_34 * 1 + 0) % 2 + 1
    if H9_57 <= 1 then
        local Jr = bit32.rrotate(bit32.bxor(bit32.lrotate(H9_34, 20), string.byte(tostring(vj))), 12)
        if bit32.bxor(bit32.lrotate(bit32.bxor(Jr, 3999280797), 4), 3858950622) ~= bit32.lrotate(Jr, 4) then
            H9_66 = { "Energy", "Property", "Health", "Stamina", "Defense", "Attack" }
            vj = {
                Property = "property",
                Stamina = "stamina",
                Attack = "attack",
                Defense = "defense",
                Energy = "energy",
                Health = "health"
            }
            vd = {}
        else
            vj = { "Energy", "Stamina", "Health", "Attack", "Defense", "Property" }
            vd = {
                Energy = "energy",
                Stamina = "stamina",
                Health = "health",
                Attack = "attack",
                Defense = "defense",
                Property = "property"
            }
            H9_66 = {}
        end
        H9_34 = (H9_34 + 7) % 8
    else
        local JQ = bit32.rrotate(bit32.bxor(bit32.lrotate(H9_34, 25), string.byte(tostring(vj))), 8)
        if bit32.bxor(bit32.lrotate(bit32.bxor(JQ, 4002714726), 26), 2612679249) == bit32.lrotate(JQ, 26) then
            H9_23 = {}
            H9_12 = {}
        else
            H9_12 = {}
            H9_23 = {}
        end
        H9_34 = (H9_34 + 5) % 8
    end
until (H9_34 * 7 + 7) % 8 == 5
for i, v in ipairs(GameData.JOBS) do
    H9_34 = v.name
    table.insert(H9_66, H9_34)
    H9_23[H9_34] = v
    H9_12[H9_34] = true
end
H9_26 = {}
H9_47 = {}
H9_37 = {}
for i, v in ipairs(GameData.PROPERTIES) do
    H9_34 = v.name
    table.insert(H9_26, H9_34)
    H9_47[H9_34] = v
    H9_37[H9_34] = true
end
local H9_4 = {}
H9_57 = {}
local H9_15 = {}
for i, v in ipairs(GameData.OPERATIONS) do
    H9_34 = v.name
    table.insert(H9_4, H9_34)
    H9_57[H9_34] = v
    H9_15[H9_34] = true
end
vP, vK, H9_47 = nil, nil, nil
H9_23 = 0
repeat
    H9_34 = (vector.create((H9_23 * 4 + 9) % 11 + 1, (H9_23 * 2 + 13) % 13 + 1, (H9_23 * 15 + 13) % 17 + 1))
    H9_57 = (vector.create((H9_23 * 7 + 9) % 11 + 1, (H9_23 * 4 + 1) % 13 + 1, (H9_23 * 7 + 11) % 17 + 1))
    H9_60 = (vector.create((H9_23 * 7 + 8) % 11 + 1, (H9_23 * 9 + 2) % 13 + 1, (H9_23 * 14 + 7) % 17 + 1))
    if vector.dot(vector.cross(H9_34, H9_57), H9_60) == vector.dot(vector.cross(H9_57, H9_60), H9_34) + 4 then
        H9_47 = {}
        vP = {}
        vK = {}
    else
        vP = {}
        vK = {}
        H9_47 = {}
    end
    H9_23 = (H9_23 + 2) % 4
until (H9_23 * 3 + 2) % 4 == 0
for i, v in ipairs(GameData.SHOP) do
    H9_34 = GameData.ITEMS_BY_ID[v.item]
    H9_23 = H9_34 and H9_34.name
    H9_34 = H9_23 or v.item
    H9_23 = H9_34
    H9_34 = v.goldPrice and "(Gold)"
    H9_57 = H9_34 or "(Cash)"
    H9_34 = H9_57
    H9_57 = H9_23 .. " " .. H9_34
    if vK[H9_57] == nil then
        table.insert(vP, H9_57)
        vK[H9_57] = v
        H9_47[H9_57] = true
    end
end
uJ, us = nil, nil
uJ = { "Empty Slots Only", "Replace One By One" }
H9_23 = {}
local H9_50 = {}
us = {}
H9_60 = {}
H9_34 = {}
H9_57 = Config.FAMILY.perkTracks
local H9_41 = if H9_57 then 1 else 0
local H9_61 = 562 * H9_41 + 4021 * (1 - H9_41)
local H9_51 = 1267 * H9_41 + 3970 * (1 - H9_41)
if not ((H9_61 * 4052 + H9_51 * 1298 + H9_61 * H9_51) % 16777213 == 4633844) then
    H9_57 = H9_34
end
for k, v in pairs(H9_57) do
    if v.kind == "stamina" then
        H9_34 = v.name
        table.insert(H9_23, k)
        table.insert(H9_50, H9_34)
        us[H9_34] = k
        H9_60[H9_34] = true
    end
end
list, t3, t_, tY, tT, vT, vQ, vM, vC, vw, vq, vm, ve, family, u0, H9_57, Library, vr, vn, Toggles, Options, u1, uX, uS, uL, uG, H9_29, uK, uA, uk, t0, vR, vy, u4, uC, t2, tQ, vv, vi, uV, ux, uf, tX, vI, vk, uE, uQ, t9, ub, u2, vb, tV, uO, u6, uo, vL, ut, uu, t5, vD, u9, uB, ul, t6, tO, ur = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
table.sort(H9_50)
list = nil
t3 = 0
if (not H9_57 or list or not H9_57 and not H9_29 or not t9 and H9_29 and (uf or H9_57)) and (not uf and not H9_29 and (not H9_57 and list) and (not H9_57 or not H9_57 or (H9_57 or not H9_29))) and (list and H9_57 or (not t9 or not list) or (H9_57 or H9_57) and (not list or uf) or ((not H9_57 or H9_57) and (not t9 and t9) or (uf or not list) and (not list and t9))) and not ((not H9_57 or list or not H9_57 and not H9_29 or not t9 and H9_29 and (uf or H9_57)) and (not uf and not H9_29 and (not H9_57 and list) and (not H9_57 or not H9_57 or (H9_57 or not H9_29))) and (list and H9_57 or (not t9 or not list) or (H9_57 or H9_57) and (not list or uf) or ((not H9_57 or H9_57) and (not t9 and t9) or (uf or not list) and (not list and t9)))) then
    tY = {}
    t_ = 0
    vT = 0
    vQ = 0
    tT = 0
else
    t_ = {}
    tY = 0
    tT = 0
    vT = 0
    vQ = 0
end
vM = 0
vC = nil
vw = 0
vq = 0
vm = 0
ve = 0
family = nil
u0 = 0
H9_57 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
if (ve and ve and (uA or not vI) and (uA or vI or not vI and ve) or (not H9_29 or not uA or (vI or not ve)) and ((not ve or not H9_29) and (not ve or vI))) and ((ve and uA or (H9_29 or not H9_29)) and (not ve and not vI and (not uA and ve)) or uA and not H9_29 and (uA or not ve) and (not H9_29 or not vI or (vI or not vI))) and not ((ve and ve and (uA or not vI) and (uA or vI or not vI and ve) or (not H9_29 or not uA or (vI or not ve)) and ((not ve or not H9_29) and (not ve or vI))) and ((ve and uA or (H9_29 or not H9_29)) and (not ve and not vI and (not uA and ve)) or uA and not H9_29 and (uA or not ve) and (not H9_29 or not vI or (vI or not vI)))) then
    H9_57 = loadstring(game:HttpGet(Library .. "Library.lua"))()
else
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
end
uK = function()
    local function w2(bc)
        local wY = not bc or not bc:IsA("ScreenGui")
        if wY then
            return
        end
        bc.ResetOnSpawn = false
        bc.IgnoreGuiInset = true
        bc.DisplayOrder = math.max(bc.DisplayOrder, 1000)
        pcall(function()
            bc.ClipToDeviceSafeArea = false
        end)
        pcall(function()
            bc.ScreenInsets = Enum.ScreenInsets.None
        end)
        if bc.Parent ~= CoreGui then
            bc.Parent = CoreGui
        end
    end
    w2(Library.ScreenGui)
    if Library.ActiveLoading and Library.ActiveLoading.ScreenGui then
        w2(Library.ActiveLoading.ScreenGui)
    end
    for i, v in ipairs({ "Obsidian", "ObsidianLoading" }) do
        local w3_1 = CoreGui:FindFirstChild(v) or PlayerGui:FindFirstChild(v)
        if w3_1 then
            w2(w3_1)
        end
    end
end
uK()
task.spawn(fns.worker)
vr = loadstring(game:HttpGet(H9_57 .. "addons/ThemeManager.lua"))()
vn = loadstring(game:HttpGet(H9_57 .. "addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
u1 = "#7fd47f"
uX = "#6ec1ff"
uS = "#e8a34d"
uL = "#8b93a3"
uG = "#e05a5a"
uA = fns.fn1070
uk = fns.fn662
t0 = fn1238
vR = fns.fn30
vy = fn1398
if (u1 and not u1 or not uu and u1 or (u1 and uk or u1 and vL) or (not u1 or not ve or (not uQ or not uk) or (uk and uQ or not uu and vL))) and ((u1 and not ve or ve and uQ or (vL or uk or uQ and not u1)) and ((not uk or not uu) and (ve and not uk) or (uQ or not uk or (vL or not uu)))) or not ((u1 and not u1 or not uu and u1 or (u1 and uk or u1 and vL) or (not u1 or not ve or (not uQ or not uk) or (uk and uQ or not uu and vL))) and ((u1 and not ve or ve and uQ or (vL or uk or uQ and not u1)) and ((not uk or not uu) and (ve and not uk) or (uQ or not uk or (vL or not uu))))) then
    u4 = fns.fn606
    uC = fns.fn438
    t2 = fns.fn906
else
    t2 = fns.fn606
    u4 = fns.fn438
    uC = fns.fn906
end
tQ = fns.fn342
vv = fn1332
vi = fns.fn12
uV = fns.fn671
ux = fn1412
uf = fn1188
tX = fn1290
vI = fns.fn36
vk = function(cH, ...)
    local yd
    yd = nil
    local yf_1
    local ye_1
    yd = table.pack(...)
    ye_1, yf_1 = pcall(function()
        return cH:InvokeServer(table.unpack(yd, 1, yd.n))
    end)
    if not ye_1 then
        return nil
    end
    return yf_1
end
uE = fns.fn1
uQ = fns.fn228
t9 = fns.fn734
ub = fn1280
u2 = fns.fn871
vb = fns.fn390
tV = fns.fn442
uO = fns.fn546
u6 = fns.fn115
uo = fns.fn44
vL = fns.fn1055
ut = fns.fn851
uu = fns.fn917
t5 = fn1345
vD = fns.fn502
u9 = fns.fn934
uB = fns.fn1045
ul = fns.fn1171
t6 = fns.fn1004
tO = fns.fn983
ur = fns.fn1077
if (uu or not vm) and (not vm or not uu) or not uu and false and "#8b93a3" or false and ((uu or not vm) and (false and vm)) or not ((uu or not vm) and (not vm or not uu) or not uu and false and "#8b93a3" or false and ((uu or not vm) and (false and vm))) then
    H9_29 = syn
else
    u1 = syn
end
if H9_29 then
    H9_29 = syn.request
end
H9_34 = H9_29
if not H9_34 then
    H9_23 = http and http.request
    H9_34 = H9_23
end
if not H9_34 then
    H9_34 = http_request
end
local H9_10 = if H9_34 then 1 else 0
local H9_32 = 1631 * H9_10 + 1180 * (1 - H9_10)
local H9_21 = 2253 * H9_10 + 1407 * (1 - H9_10)
if not ((H9_32 * 2309 + H9_21 * 3765 + H9_32 * H9_21) % 16777213 == 15923167) then
    H9_34 = request
end
uI, vJ, uF, u_, uy, t4, uz, vz, uh, vG, vl, tS, uW, ua, vU, uj, vV, vs = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
uI = H9_34
if (not uh or vV or (uh or not vV)) and (uh and vV or uh and not uh) and (uh and not vV or (uh or vV) or (vV and uh or not vV and not vV)) or not ((not uh or vV or (uh or not vV)) and (uh and vV or uh and not uh) and (uh and not vV or (uh or vV) or (vV and uh or not vV and not vV))) then
    uF = function(gK)
        local B2
        local B4_9
        local B3 = Options.WebhookUrl
        local B3_8
        if B3 then
            local B4_6 = Options.WebhookUrl.Value
            local B9 = if B4_6 then 1 else 0
            local B7 = 3191 * B9 + 200 * (1 - B9)
            local B8 = 2187 * B9 + 2674 * (1 - B9)
            if not ((B7 * 4074 + B8 * 24 + B7 * B8) % 16777213 == 3254126) then
                B4_6 = ""
            end
            B3 = tostring(B4_6)
        end
        B2 = B3 or ""
        local B3_6 = B2 == ""
        local B4_8 = typeof(uI) ~= "function" or B3_6
        if B4_8 then
            return false
        end
        local B3_7 = not string.find(B2, "discord.com/api/webhooks/", 1, true) and not string.find(B2, "discordapp.com/api/webhooks/", 1, true)
        if B3_7 then
            return false
        end
        B3_8, B4_9 = pcall(function()
            return uI({
                Url = B2,
                Method = "POST",
                Headers = { ["Content-Type"] = "application/json" },
                Body = HttpService:JSONEncode(gK)
            })
        end)
        if not B3_8 then
            return false
        end
        local B3_9 = B4_9
        if B3_9 then
            B3_9 = B4_9.StatusCode or B4_9.Status
        end
        local B4_10 = B3_9
        local B3_10 = B4_10 == nil
        if not B3_10 then
            B3_10 = B4_10 >= 200 and B4_10 < 300
        end
        return B3_10
    end
    u_ = fns.fn1131
else
    u_ = function(gK)
        local B2
        local B4_4
        local B3 = Options.WebhookUrl
        local B3_3
        if B3 then
            local B4_1 = Options.WebhookUrl.Value
            local B9 = if B4_1 then 1 else 0
            local B7 = 3191 * B9 + 200 * (1 - B9)
            local B8 = 2187 * B9 + 2674 * (1 - B9)
            if not ((B7 * 4074 + B8 * 24 + B7 * B8) % 16777213 == 3254126) then
                B4_1 = ""
            end
            B3 = tostring(B4_1)
        end
        B2 = B3 or ""
        local B3_1 = B2 == ""
        local B4_3 = typeof(uI) ~= "function" or B3_1
        if B4_3 then
            return false
        end
        local B3_2 = not string.find(B2, "discord.com/api/webhooks/", 1, true) and not string.find(B2, "discordapp.com/api/webhooks/", 1, true)
        if B3_2 then
            return false
        end
        B3_3, B4_4 = pcall(function()
            return uI({
                Url = B2,
                Method = "POST",
                Headers = { ["Content-Type"] = "application/json" },
                Body = HttpService:JSONEncode(gK)
            })
        end)
        if not B3_3 then
            return false
        end
        local B3_4 = B4_4
        if B3_4 then
            B3_4 = B4_4.StatusCode or B4_4.Status
        end
        local B4_5 = B3_4
        local B3_5 = B4_5 == nil
        if not B3_5 then
            B3_5 = B4_5 >= 200 and B4_5 < 300
        end
        return B3_5
    end
    uF = fns.fn1131
end
uy = fns.fn685
t4 = fn1237
uz = fn1391
vz = fns.fn824
uh = fns.fn1047
vG = fns.fn557
vl = fn1353
tS = fns.fn1099
if (uz and 45 and (u_ or not uz) or (not uz or not uy and not uz) or (uz or uy) and (vz or u_) and (uy or not vz or (vz or not uy)) or (u_ or not uz) and (not uy) and false and ((uz or not vz) and (not vz and not vz) and (vz and vz or false))) and not (uz and 45 and (u_ or not uz) or (not uz or not uy and not uz) or (uz or uy) and (vz or u_) and (uy or not vz or (vz or not uy)) or (u_ or not uz) and (not uy) and false and ((uz or not vz) and (not vz and not vz) and (vz and vz or false))) then
    ua = fns.fn335
    uW = fns.fn18
else
    uW = fns.fn335
    ua = fns.fn18
end
vU = fns.fn1174
uj = fns.fn870
vV = fns.fn975
vs = fn1419
H9_57 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = up, Copyable = true }, "|", uv },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
vJ = {
    Info = H9_57:AddTab("Info", "info"),
    Main = H9_57:AddTab("Main", "gavel"),
    Webhook = H9_57:AddTab("Webhook", "webhook"),
    Player = H9_57:AddTab("Player", "person-standing"),
    Settings = H9_57:AddTab("Settings", "settings")
}
local H9_40 = fns.fn24
for k, v in vJ do
    if k ~= "Info" then
        H9_40(v)
    end
end
ShopItemListDropdown = nil
H9_29 = vJ.Main:AddLeftGroupbox("Automation", "bot")
H9_29:AddToggle("AutoJob", { Text = "Auto Job", Default = false })
H9_29:AddDropdown("JobList", {
    Text = "Jobs",
    Values = H9_66,
    Default = H9_12,
    Multi = true,
    Expandable = true,
    ExpandColumns = 2
})
H9_29:AddToggle("AutoFight", { Text = "Auto Fight", Default = false })
H9_29:AddToggle("AutoOperation", { Text = "Auto Operation", Default = false })
H9_29:AddDropdown("OperationList", {
    Text = "Operations",
    Values = H9_4,
    Default = H9_15,
    Multi = true,
    Expandable = true,
    ExpandColumns = 2
})
H9_29:AddToggle("AutoClaimOperation", { Text = "Auto Claim Operation Rewards", Default = false })
H9_29:AddToggle("AutoClaimRewards", { Text = "Auto Claim Rewards", Default = false })
H9_29:AddToggle("AutoBoss", { Text = "Auto Boss", Default = false })
H9_29:AddToggle("AutoHeist", { Text = "Auto Heist", Default = false })
H9_29:AddToggle("AutoAllocatePoints", { Text = "Auto Allocate Points", Default = false })
H9_29:AddDropdown("SkillPointStat", { Text = "Allocate Into", Values = vj, Default = vj[1] })
H9_29:AddDivider("Family")
H9_29:AddToggle("AutoFamilyStamina", { Text = "Auto Donate Stamina", Default = false })
H9_29:AddDropdown("FamilyStaminaPerks", {
    Text = "Stamina Perks",
    Values = H9_50,
    Default = H9_60,
    Multi = true,
    Expandable = true,
    ExpandColumns = 2
})
H9_29:AddInput("FamilyStaminaKeep", { Text = "Keep Stamina", Default = "0", Numeric = false, Finished = true })
H9_57 = vJ.Main:AddRightGroupbox("Economy", "landmark")
H9_57:AddToggle("AutoBuyProperties", { Text = "Auto Buy Properties", Default = false })
H9_57:AddDropdown("PropertyList", {
    Text = "Properties",
    Values = H9_26,
    Default = H9_37,
    Multi = true,
    Expandable = true,
    ExpandColumns = 2
})
H9_57:AddDivider("Shop")
H9_57:AddToggle("AutoBuyShop", { Text = "Auto Buy Shop Items", Default = false })
H9_57:AddInput("ShopSpendLimitCash", {
    Text = "Max Cash Per Item",
    Default = "",
    Placeholder = "No limit",
    Numeric = false,
    Finished = true
})
H9_57:AddInput("ShopSpendLimitGold", {
    Text = "Max Gold Per Item",
    Default = "",
    Placeholder = "No limit",
    Numeric = false,
    Finished = true
})
H9_57:AddInput("ShopSearch", {
    Text = "Search Items",
    Default = "",
    Placeholder = "Filter shop items...",
    Numeric = false,
    Finished = false
})
ShopItemListDropdown = H9_57:AddDropdown("ShopItemList", {
    Text = "Shop Items",
    Values = vP,
    Default = H9_47,
    Multi = true,
    Expandable = true,
    ExpandColumns = 2
})
Options.ShopSearch:OnChanged(fns.fn289)
H9_57:AddToggle("AutoOpenCrates", { Text = "Auto Open Crates", Default = false })
H9_57:AddDivider("Bank")
H9_57:AddToggle("AutoBankDeposit", { Text = "Auto Bank Deposit", Default = false })
H9_57:AddInput("BankDepositThreshold", { Text = "Deposit Threshold", Default = "1000000", Numeric = false, Finished = true })
H9_57:AddInput("BankKeepCash", { Text = "Keep Cash", Default = "0", Numeric = false, Finished = true })
H9_23 = vJ.Main:AddRightGroupbox("Crew", "users")
H9_23:AddToggle("AutoEquipCrew", { Text = "Auto Equip Best Crew Gear", Default = false })
H9_23:AddToggle("AutoRollCrew", { Text = "Auto Roll Crew Rarity", Default = false })
H9_23:AddDropdown("CrewRollMode", { Text = "Roll Mode", Values = uJ, Default = uJ[1] })
H9_23:AddDropdown("CrewHireTier", { Text = "Hire Tier", Values = ue, Default = ue[1] })
H9_23:AddDropdown("CrewMinRarity", { Text = "Min Rarity", Values = tW, Default = tW[1] })
H9_23:AddDropdown("CrewKeepRarity", { Text = "Keep Rarity", Values = tW, Default = tW[#tW] })
H9_40 = function()
    local FQ
    local FP
    FP = nil
    FQ = nil
    local FO, Label, Label2, Label3, FU
    local function FV()
        local EX = hookfunction ~= nil
        local EY = hookmetamethod ~= nil
        local EZ = getrawmetatable ~= nil
        local E_ = setrawmetatable ~= nil
        local E0 = getgc ~= nil
        local E1 = getgenv ~= nil
        local E2 = getreg ~= nil
        local E3 = getconnections ~= nil
        local E4 = firesignal ~= nil
        local E5 = getcallbackvalue ~= nil
        local E6 = setclipboard ~= nil
        local E7 = getcustomasset ~= nil
        local E8 = getnamecallmethod ~= nil
        local E9 = isexecutorclosure ~= nil
        local Fa = fireproximityprompt ~= nil
        local Fb = firetouchinterest ~= nil
        local Fc = WebSocket ~= nil
        local Fd = readfile ~= nil
        local Fe = writefile ~= nil
        local Fg = (request or http_request) ~= nil
        local Fi = (debug and debug.getupvalues) ~= nil
        local Fk = (debug and debug.setupvalue) ~= nil
        local Fl = 0
        local Fm = { EX, EY, EZ, E_, E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, Fa, Fb, Fc, Fd, Fe, Fg, Fi, Fk }
        for i, v in ipairs(Fm) do
            if v then
                Fl += 1
            end
        end
        local EX_1 = Fl / #Fm
        if EX_1 >= 0.9 then
            return uA("Full Support", u1)
        elseif EX_1 >= 0.6 then
            return uA("Half Support", uS)
        else
            return uA("Low Support", uG)
        end
    end
    FP = "Unknown"
    pcall(function()
        local Fy_1
        local Fx_1
        if identifyexecutor then
            Fy_1, Fx_1 = identifyexecutor()
            local Fz = Fy_1 ~= ""
            local FA = type(Fy_1) == "string" and Fz
            if FA then
                local Fz_1 = type(Fx_1) == "string" and Fx_1 ~= "" and Fy_1 .. " " .. Fx_1
                FP = Fz_1 or Fy_1
            end
        end
    end)
    local FW = FV()
    FQ = os.clock()
    FU = function()
        local FF = math.floor(os.clock() - FQ)
        if FF < 60 then
            return FF .. "s"
        elseif FF < 3600 then
            return string.format("%dm %ds", FF // 60, FF % 60)
        else
            return string.format("%dh %dm", FF // 3600, FF % 3600 // 60)
        end
    end
    local UserGroup = vJ.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = uY, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(uk("User", uY.DisplayName .. " @" .. uY.Name, u1), true)
    UserGroup:AddLabel(uk("UserId", tostring(uY.UserId), uX), true)
    UserGroup:AddLabel(uk("Executor", FP .. "  " .. FW, u1), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(uk("Session", FU(), uS), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            t0(uY.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            t0("https://www.roblox.com/users/" .. tostring(uY.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = vJ.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(uk("Game", uv, uX), true)
    Label2 = SessionGroup:AddLabel(uk("Players", "0/0", u1), true)
    FO = tostring(game.JobId)
    local FW_1 = #FO > 18 and string.sub(FO, 1, 18) .. "..."
    local FW_2 = FW_1 or FO
    SessionGroup:AddLabel(uk("Job", FW_2, uL), true)
    Label = SessionGroup:AddLabel(uk("Ping", "0 ms", uS), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            TeleportService:Teleport(game.PlaceId, uY)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            t0(FO, "Copied Job ID")
        end
    })
    task.spawn(function()
        local FL_1
        local FK_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(uk("Session", FU(), uS))
            Label2:SetText(uk("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), u1))
            FK_1, FL_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local FK_2 = FK_1 and FL_1 .. " ms" or "n/a"
            Label:SetText(uk("Ping", FK_2, uS))
        end
    end)
    local SocialsGroup = vJ.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = vR })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            t0(um, "Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            t0(ug, "Copied website link")
        end
    })
end
local function H9_18()
    local function lx()
        local Character = uY.Character
        local F_ = Character and Character:FindFirstChildOfClass("Humanoid")
        return F_
    end
    local function lC()
        local Character = uY.Character
        local F2 = Character and Character:FindFirstChild("HumanoidRootPart")
        return F2
    end
    local MovementGroup = vJ.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = vJ.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local CurrentCamera = Workspace.CurrentCamera
    local connection
    local function lM(lN)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not lN)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not lN
            end
        end)
        if not lN then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(uY, "GameplayPaused", false)
            else
                uY.GameplayPaused = false
            end
        end)
    end
    local function lZ(l_)
        if not l_:IsA("ProximityPrompt") then
            return
        end
        l_.HoldDuration = 0
        l_.MaxActivationDistance = 50
        l_.RequiresLineOfSight = false
    end
    RunService.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if vy("NoClip") then
            local Character = uY.Character
            if Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    local Gc_1 = descendant:IsA("BasePart") and descendant.CanCollide
                    if Gc_1 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    UserInputService.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if vy("InfJump") then
            local Gk = lx()
            if Gk then
                Gk:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    RunService.RenderStepped:Connect(function(mf)
        if Library.Unloaded then
            return
        end
        if vy("WalkSpeedEnabled") then
            local Gm_1 = lx()
            if Gm_1 then
                Gm_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if vy("Fly") then
            local Gm_2 = lC()
            local Gn = lx()
            if Gm_2 and Gn then
                Gn.PlatformStand = true
                local Gn_1 = Vector3.zero
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    Gn_1 += CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    Gn_1 -= CurrentCamera.CFrame.LookVector
                end
                local Gs = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
                if Gs == 1 then
                    Gn_1 -= CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    Gn_1 += CurrentCamera.CFrame.RightVector
                end
                local Gs_1 = if UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
                if Gs_1 == 1 then
                    Gn_1 += Vector3.new(0, 1, 0)
                end
                local Gs_2 = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
                if Gs_2 == 1 then
                    Gn_1 -= Vector3.new(0, 1, 0)
                end
                Gm_2.AssemblyLinearVelocity = Vector3.zero
                if Gn_1.Magnitude > 0 then
                    Gm_2.CFrame = Gm_2.CFrame + Gn_1.Unit * Options.FlySpeed.Value * mf
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local Gt = lx()
            if Gt then
                Gt.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local Gv = lx()
            if Gv then
                Gv.WalkSpeed = 16
            end
        end
    end)
    Toggles.AntiGameplayPause:OnChanged(function()
        lM(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if vy("AntiGameplayPause") then
                lM(true)
            end
        end
    end)
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in ipairs(Workspace:GetDescendants()) do
                pcall(lZ, descendant)
            end
            connection = Workspace.DescendantAdded:Connect(function(mK)
                if vy("InstantProximityPrompt") then
                    pcall(lZ, mK)
                end
            end)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    Library:OnUnload(function()
        lM(false)
        if connection then
            connection:Disconnect()
            connection = nil
        end
        local GJ = lx()
        if GJ then
            GJ.PlatformStand = false
            GJ.WalkSpeed = 16
        end
    end)
end
H9_40()
H9_18()
fns.fn1168()
task.spawn(fns.worker2)
local function H9_63()
    local connection
    local MenuGroup = vJ.Settings:AddLeftGroupbox("Menu")
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local nE = 0
    local nF = tick()
    local Label
    local function nH()
        local CurrentCamera = Workspace.CurrentCamera
        if not CurrentCamera then
            return
        end
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        nE += 1
        nF = tick()
        if Label then
            pcall(function()
                Label:SetText("AFK triggers: " .. nE)
            end)
        end
    end
    connection = uY.Idled:Connect(function()
        local G5 = if vy("AntiAfk") then 1 else 0
        if G5 == 1 then
            pcall(nH)
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
            local G6 = vy("AntiAfk") and tick() - nF >= 60
            if G6 then
                pcall(nH)
            end
        end
    end)
    Library:OnUnload(function()
        if connection then
            connection:Disconnect()
        end
    end)
    vr:SetLibrary(Library)
    vr:SetFolder("OuroborosHub")
    vr:SaveDefault("Evil Hello Kitty")
    vr:ApplyToTab(vJ.Settings)
    vr:LoadDefault()
    vn:SetLibrary(Library)
    vn:IgnoreThemeSettings()
    vn:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource", "WebhookUrl" })
    vn:SetFolder("OuroborosHub/IdleMafiaGame")
    local n3 = vn:BuildConfigSection(vJ.Settings)
    local function n4(n5, n6)
        local Ha_1 = (n5 == "Toggle" and Toggles or Options)[n6]
        local G9_2 = type(Ha_1) == "table" and Ha_1.Type == n5
        return G9_2 and Ha_1 or nil
    end
    local function od(oe, of)
        local Type = of.Type
        if Type == "Toggle" then
            return { idx = oe, type = "Toggle", value = of.Value == true }
        elseif Type == "Slider" then
            return { idx = oe, type = "Slider", value = tostring(of.Value) }
        elseif Type == "Dropdown" then
            return { idx = oe, type = "Dropdown", multi = of.Multi == true, value = of.Value }
        elseif Type == "Input" then
            local He = of.Value or ""
            return { idx = oe, type = "Input", text = tostring(He) }
        elseif Type == "ColorPicker" then
            return { idx = oe, type = "ColorPicker", value = of.Value:ToHex(), transparency = of.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = oe,
                type = "KeyPicker",
                mode = of.Mode,
                key = of.Value,
                modifiers = of.Modifiers,
                toggled = of.Toggled
            }
        else
            return nil
        end
    end
    local function oh()
        local Hk = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local Hl = type(v) == "table" and type(v.Type) == "string" and not vn.Ignore[k]
                if Hl then
                    local Hl_1 = od(k, v)
                    if Hl_1 then
                        Hk[#Hk + 1] = Hl_1
                    end
                end
            end
        end
        table.sort(Hk, function(ow, ox)
            if ow.type ~= ox.type then
                return ow.type < ox.type
            end
            return ow.idx < ox.idx
        end)
        return { objects = Hk }
    end
    local function oy(oz)
        local HB
        HB = nil
        local HC = type(oz) ~= "table" or type(oz.idx) ~= "string" or type(oz.type) ~= "string" or vn.Ignore[oz.idx]
        if HC then
            return false
        end
        HB = n4(oz.type, oz.idx)
        if not HB then
            return false
        end
        local HC_1 = pcall(function()
            if oz.type == "Input" then
                if type(oz.text) ~= "string" then
                    return
                end
                HB:SetValue(oz.text)
            elseif oz.type == "ColorPicker" then
                HB:SetValueRGB(Color3.fromHex(oz.value), oz.transparency)
            elseif oz.type == "KeyPicker" then
                HB:SetValue({ oz.key, oz.mode, oz.modifiers })
                if oz.mode == "Toggle" and oz.toggled ~= nil then
                    HB.Toggled = oz.toggled
                    HB:Update()
                end
            else
                HB:SetValue(oz.value)
            end
        end)
        return HC_1
    end
    n3:AddDivider()
    n3:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    n3:AddButton({
        Text = "Export Config to Clipboard",
        Func = function()
            local HI_1
            local HH_1
            HH_1, HI_1 = pcall(HttpService.JSONEncode, HttpService, oh())
            if not HH_1 then
                Library:Notify("Failed to encode the config")
                return
            end
            local HH_2 = setclipboard or toclipboard
            local HH_3 = type(HH_2) ~= "function"
            local HN = if HH_3 then 1 else 0
            local HL = 202 * HN + 3425 * (1 - HN)
            local HM = 2862 * HN + 2768 * (1 - HN)
            if not ((HL * 3840 + HM * 600 + HL * HM) % 16777213 == 3071004) then
                HH_3 = not pcall(HH_2, HI_1)
            end
            if HH_3 then
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Config copied to clipboard", 6)
        end
    })
    n3:AddButton({
        Text = "Import Config from Clipboard Field",
        Func = function()
            local HQ_1
            local HO = Options.SaveManager_ImportSource.Value or ""
            local HO_1
            local HP = tostring(HO):match("^%s*(.-)%s*$")
            if HP == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            HO_1, HQ_1 = pcall(HttpService.JSONDecode, HttpService, HP)
            local HP_1 = not HO_1 or type(HQ_1) ~= "table"
            local HU = if HP_1 then 1 else 0
            local HS = 3135 * HU + 2328 * (1 - HU)
            local HT = 2735 * HU + 1096 * (1 - HU)
            if not ((HS * 1262 + HT * 2050 + HS * HT) % 16777213 == 1360132) then
                HP_1 = type(HQ_1.objects) ~= "table"
            end
            if HP_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            local HO_2 = 0
            for i, v in ipairs(HQ_1.objects) do
                if oy(v) then
                    HO_2 += 1
                end
            end
            if HO_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local HQ_2 = HO_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(HO_2, HQ_2), 6)
        end
    })
    vn:LoadAutoloadConfig()
end
H9_63()
