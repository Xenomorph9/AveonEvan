local fns = {}
local yo_5, yo_7, yo_10, yo_12, yo_14, yo_17, yo_18, yo_19, yo_21, yo_23, UserInputService, yo_26
local on
local o6
local oO
local pv
local pc
local oU
local pB
local oB
local pi
local oH
local po
local onBuyRollNow
local connection2
local oN
local pu
local pb
local oT
local pA
local oA
local ph
local oZ
local oG
local pn
local Toggles
local Replication
local pt
local pa
local onBuyUpgradesNow
local Options
local pg
local oY
local oF
local pm
local oj
local ps
local oq
local py
local oy
local oX
local oE
local pl
local o2
local pr
local o8
local onBuyShopNow
local px
local Library
local onSellAllGnomesNow
local oW
local oD
local pk
local onCollectNow
local onExpandNow
local onPlaceNow
local o7
local onReplaceNow
local pw
local ow
local pd
local oV
local oC
local o0
local oI
local connection
function fns.fn20(f9)
    local vv = {}
    local vw = { pn:FindFirstChild("Backpack"), pn.Character }
    for i, v in ipairs(vw) do
        if v then
            for i, child in ipairs(v:GetChildren()) do
                local vw_1 = child:IsA("Tool") and child:GetAttribute("type") == f9
                if vw_1 then
                    table.insert(vv, child)
                end
            end
        end
    end
    return vv
end
function fns.fn23(an, ao)
    return string.format('<font color="%s">%s</font>', ao, an)
end
function fns.worker6()
    while not Library.Unloaded do
        if oB("AutoPlace") then
            onPlaceNow()
        end
        task.wait(pA("PlaceDelay", 0.35))
    end
end
function fns.fn85(be, bf)
    local rm = not be or not next(be)
    if rm then
        return true
    end
    return be[bf] == true
end
function fns.fn93(bi, bj)
    local ro = not bi or not next(bi)
    if ro then
        return true
    end
    return bi[bj] == true
end
function fns.onSellAllNow()
    pcall(function()
        o0:InvokeServer("SellAll")
    end)
end
function fns.fn117(fm)
    for i, v in ipairs(pi()) do
        if v == fm then
            return true
        end
    end
    return false
end
function fns.fn118()
    local va = pl()
    local vb = va and va:FindFirstChild("ExpandPlot")
    if not vb then
        return {}
    end
    local vb_1 = {}
    for i, descendant in ipairs(vb:GetDescendants()) do
        local va_2 = descendant:IsA("Model") and oA[descendant.Name] and descendant:FindFirstChild("BoundaryPart", true)
        if va_2 then
            local insert = table.insert
            local vc = tonumber(oA[descendant.Name]) or 0
            insert(vb_1, { model = descendant, price = vc })
        end
    end
    table.sort(vb_1, function(fU, fV)
        return fU.price < fV.price
    end)
    return vb_1
end
function fns.fn150(iW)
    local DiscordGroup = iW:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = ph })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = ph })
end
function fns.onCopyJoinScript_JobID()
    local jc = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, po)
    px(jc, "Copied join script to clipboard")
end
function fns.fn191(bz)
    local rv = not bz or not bz:IsA("Model")
    if rv then
        return false
    end
    local rv_1 = (bz:GetAttribute("FarmerName"))
    local rB = if rv_1 then 1 else 0
    local rz = 1592 * rB + 1456 * (1 - rB)
    local rA = 1262 * rB + 3602 * (1 - rB)
    if not ((rz * 1832 + rA * 2018 + rz * rA) % 16777213 == 7472364) then
        rv_1 = bz.Name
    end
    local rw = rv_1
    local rv_2 = o6(rw)
    if not rv_2 then
        return false
    end
    local rB_1 = if not oW(pg("BuyRollRarities"), rv_2.real_rarity) then 1 else 0
    if rB_1 == 1 then
        return false
    end
    local rB_2 = if not oN(pg("BuyRollGnomes"), rw) then 1 else 0
    if rB_2 == 1 then
        return false
    end
    local rw_1 = tonumber(rv_2.price) or 0
    local rw_2 = pA("BuyRollMaxPrice", 0)
    if rw_2 > 0 and rw_1 > rw_2 then
        return false
    end
    local rw_3 = pA("BuyRollMoneyBuffer", 0)
    if oT() - rw_1 < rw_3 then
        return false
    end
    return true
end
function fns.onInputBegan()
    oH = tick()
end
function fns.fn223()
    if oB("AutoSprinkler") then
        pc("Sprinkler", pg("SprinklerItems"), pA("SprinklerMax", 1))
    end
    if oB("AutoFertilizer") then
        pc("Fertilizer", pg("FertilizerItems"), pA("FertilizerMax", 1))
    end
end
function fns.onUnload()
    Library:Unload()
end
local function fn250(c7)
    local s6 = c7:GetAttribute("FarmerName") or c7.Name
    local s6_1 = o6(s6)
    local s6_2 = s6_1 and s6_1.real_rarity
    local tc = if s6_2 then 1 else 0
    local ta = 3515 * tc + 2138 * (1 - tc)
    local tb = 753 * tc + 1869 * (1 - tc)
    if not ((ta * 3396 + tb * 3296 + ta * tb) % 16777213 == 288410) then
        s6_2 = "Common"
    end
    local s8_1 = s6_2
    if not oW(pg("PlaceRarities"), s8_1) then
        return false
    elseif not oN(pg("PlaceGnomes"), s6) then
        return false
    else
        return true
    end
end
local function worker10()
    while not Library.Unloaded do
        if oB("AutoSellGnomes") then
            onSellAllGnomesNow()
        end
        task.wait(math.max(pA("SellGnomesDelay", 0.35), 1))
    end
end
local function fn258()
    local xc = pl()
    if not xc then
        return nil
    end
    local GardenPivot = xc:FindFirstChild("GardenPivot")
    local xc_1 = GardenPivot and GardenPivot:IsA("BasePart")
    if xc_1 then
        return GardenPivot.CFrame
    end
    local xc_2 = oO(pA("BoostSpacing", 6))
    local xd_1 = xc_2[1] and CFrame.new(xc_2[1])
    return xd_1 or nil
end
local function fn273(cv)
    local sw_1
    local sv_1
    local sq_1
    local sp_1
    local su_1
    local so_2
    local ss_2
    local sm = pl()
    local sm_2
    if not sm then
        return {}
    end
    local Ground = sm:FindFirstChild("Ground")
    local sm_1 = Ground
    if sm_1 then
        local so_1 = Ground:FindFirstChild("Floor1") or Ground
        sm_1 = so_1
    end
    local sn_1 = sm_1
    if not sn_1 then
        return {}
    end
    so_2, sm_2, sp_1, sq_1 = nil, nil, nil, nil
    local sr
    for i, descendant in ipairs(sn_1:GetDescendants()) do
        local sn_2 = descendant:IsA("BasePart") and descendant.Size.X >= 4 and descendant.Size.Z >= 4
        if sn_2 then
            local Position = descendant.Position
            local ss_1 = descendant.Size.X * 0.5
            local st_1 = descendant.Size.Z * 0.5
            su_1, sv_1 = Position.X - ss_1 + 2, Position.X + ss_1 - 2
            ss_2, sw_1 = Position.Z - st_1 + 2, Position.Z + st_1 - 2
            local st_2 = so_2 and math.min(so_2, su_1)
            so_2 = st_2 or su_1
            local st_3 = sm_2 and math.max(sm_2, sv_1)
            sm_2 = st_3 or sv_1
            local st_4 = sp_1 and math.min(sp_1, ss_2)
            sp_1 = st_4 or ss_2
            local ss_3 = sq_1 and math.max(sq_1, sw_1)
            sq_1 = ss_3 or sw_1
            sr = sr or Position.Y + descendant.Size.Y * 0.5
        end
    end
    if not so_2 then
        return {}
    end
    local sn_4 = {}
    local ss_5 = math.max(cv, 2)
    local sK = so_2
    local sI = sm_2
    while ss_5 > 0 and sK <= sI or ss_5 <= 0 and sK >= sI do
        local sL = sK
        local sP = sp_1
        local sN = sq_1
        while ss_5 > 0 and sP <= sN or ss_5 <= 0 and sP >= sN do
            local sQ = sP
            local insert = table.insert
            local new = Vector3.new
            local st_6 = sr or 2
            insert(sn_4, new(sL, st_6, sQ))
            sP += ss_5
        end
        sK += ss_5
    end
    return sn_4
end
local function fn326()
    local uD = pu()
    local uE = uD and uD.requirements
    local uD_1 = uE
    if uE then
        uE = uD_1.gnomes
    end
    return uE or {}
end
local function worker2()
    while not Library.Unloaded do
        task.wait(2)
        if oB("AntiAfk") then
            local xX = tick() - oH
            local xY = tick() - oF
            if xX >= 300 and xY >= 60 then
                pcall(on)
            else
                if xX < 300 and xY >= 300 then
                    pcall(on)
                end
            end
        end
    end
end
local function fn334()
    local q6 = oZ()
    local q7 = q6 and q6.inventory
    if not q7 then
        return 0
    end
    local q7_1 = 0
    for k in pairs(q7) do
        q7_1 += 1
    end
    return q7_1
end
local function fn350()
    return Replication.Data
end
local function fn369(az)
    local qR = Toggles[az]
    return qR ~= nil and qR.Value == true
end
local function fn372(bb)
    return oV[bb]
end
local function fn378()
    local r2 = {}
    local r3 = pl()
    local r4 = r3 and r3:FindFirstChild("ClientFarmers")
    if r4 then
        for i, child in ipairs(r4:GetChildren()) do
            if child:IsA("Model") then
                local Position = child:GetPivot().Position
                table.insert(r2, Position)
            end
        end
    end
    return r2
end
local function worker5()
    while not Library.Unloaded do
        if oB("AutoCollect") then
            onCollectNow()
        end
        task.wait(pA("CollectDelay", 0.5))
    end
end
local function worker3()
    while not Library.Unloaded do
        if oB("AutoRoll") then
            if oB("RollWaitNotRolling") then
                while true do
                    local x0 = not Library.Unloaded and oB("AutoRoll") and pn:GetAttribute("Rolling")
                    if x0 then
                        task.wait(0.1)
                        continue
                    end
                    break
                end
            end
            if oB("AutoRoll") then
                pB()
            end
        end
        task.wait(pA("RollDelay", 0.35))
    end
end
local function fn408()
    local xy_1
    local xx_1
    if identifyexecutor then
        xy_1, xx_1 = identifyexecutor()
        local xz = xy_1 ~= ""
        local xA = type(xy_1) == "string" and xz
        if xA then
            local xz_1 = type(xx_1) == "string" and xx_1 ~= "" and xy_1 .. " " .. xx_1
            ow = xz_1 or xy_1
        end
    end
end
local function fn452()
    local uz = oZ()
    local uz_2 = uz and uz.stats or {}
    local uA_1 = tonumber(uz_2.rebirth) or tonumber(uz_2.rebirths)
    return uA_1 or 0
end
local function worker7()
    while not Library.Unloaded do
        if oB("AutoSell") then
            pm()
        end
        task.wait(pA("SellDelay", 5))
    end
end
local function fn533(ag, ah)
    if setclipboard then
        setclipboard(ag)
    elseif toclipboard then
        toclipboard(ag)
    end
    Library:Notify(ah)
end
local function onInputChanged(jX)
    local UserInputType = jX.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        oH = tick()
    end
end
local function fn564(gj)
    local vK = o6(gj)
    if not vK then
        return 0
    end
    local vL = vK.real_rarity
    local vQ = if vL then 1 else 0
    local vO = 1927 * vQ + 1529 * (1 - vQ)
    local vP = 2517 * vQ + 2130 * (1 - vQ)
    if not ((vO * 3557 + vP * 3008 + vO * vP) % 16777213 == 2498521) then
        vL = "Common"
    end
    local vL_1 = pw[vL] or 0
    local vL_2 = tonumber(vK.price) or 0
    return vL_1 * 1000000000 + vL_2
end
local function fn571()
    local uX = pu()
    if not uX then
        return false
    end
    local uY = {}
    local uZ = uX.requirements
    local u2 = if uZ then 1 else 0
    local u0 = 3946 * u2 + 636 * (1 - u2)
    local u1 = 3458 * u2 + 2729 * (1 - u2)
    if not ((u0 * 2894 + u1 * 1217 + u0 * u1) % 16777213 == 12496165) then
        uZ = uY
    end
    local uX_1 = uZ
    local uY_1 = oT()
    local uZ_1 = tonumber(uX_1.money) or 0
    if uY_1 < uZ_1 then
        return false
    end
    local uZ_2 = uX_1.gnomes or {}
    for i, v in ipairs(uZ_2) do
        if not oY(v) then
            return false
        end
    end
    return true
end
local function fn572()
    local rd = oZ()
    local re = rd and tonumber(rd.max_inventory)
    return re or 100
end
local function worker11()
    while not Library.Unloaded do
        if oB("AutoReplace") then
            onReplaceNow()
        end
        task.wait(math.max(pA("ReplaceDelay", 0.4), 0.5))
    end
end
local function fn598()
    local td = oZ()
    local te = td and td.farmers
    if not te then
        return 0
    end
    local te_1 = 0
    for k in pairs(te) do
        te_1 += 1
    end
    return te_1
end
local function fn603()
    px(pd, "Copied Discord invite to clipboard")
end
local function fn611()
    connection:Disconnect()
    connection2:Disconnect()
end
local function fn617(d3, d4)
    local tL = not d3 or not next(d3)
    if tL then
        return true
    end
    return d3[d4] == true
end
local function worker15()
    while not Library.Unloaded do
        if oB("AutoDailyDeal") then
            o7()
        end
        task.wait(pA("DailyDealDelay", 5))
    end
end
local function fn631()
    local wv_1
    local wu_1
    wu_1, wv_1 = pcall(function()
        return o0:InvokeServer("GetDailyDeal")
    end)
    local ww = wu_1 and type(wv_1) == "table" and wv_1.ready == true
    if not ww then
        return
    end
    pcall(function()
        o0:InvokeServer("DailyDeal")
    end)
end
local function worker8()
    while not Library.Unloaded do
        if oB("AutoShop") then
            onBuyShopNow()
        end
        task.wait(pA("ShopDelay", 3))
    end
end
local function onRscripts()
    px(pb, "Copied Rscripts profile to clipboard")
end
local function fn658()
    local sS = {}
    local sT = { pn:FindFirstChild("Backpack"), pn.Character }
    for i, v in ipairs(sT) do
        if v then
            for i, child in ipairs(v:GetChildren()) do
                local sT_1 = child:IsA("Tool") and child:GetAttribute("type") == "Farmer"
                if sT_1 then
                    table.insert(sS, child)
                end
            end
        end
    end
    return sS
end
local function fn659(O, P)
    return O.order < P.order
end
local function fn693()
    local q3 = oZ()
    local q4 = q3 and q3.stats
    local q3_1 = q4
    if q4 then
        q4 = tonumber(q3_1.money)
    end
    return q4 or 0
end
local function fn709()
    local vR = oZ()
    local vS = vR and vR.farmers
    if not vS then
        return {}
    end
    local vS_1 = pl()
    local vT = vS_1 and vS_1:FindFirstChild("ClientFarmers")
    local vS_2 = {}
    for k, v in pairs(vS) do
        local vR_2 = type(v) == "table" and type(v.name) == "string"
        if vR_2 then
            local vR_3 = tostring(k)
            local vT_1 = vT and vT:FindFirstChild(vR_3)
            local vV = vT_1
            local vW
            if vT_1 then
                vT_1 = vV:IsA("Model")
            end
            if vT_1 then
                vW = vV:GetPivot()
            else
                local position = v.position
                if type(position) == "table" then
                    local new = CFrame.new
                    local vX_1 = tonumber(position.x) or 0
                    local vY = tonumber(position.y) or 0
                    local vZ = tonumber(position.z) or 0
                    vW = new(vX_1, vY, vZ)
                end
            end
            if vW then
                local insert = table.insert
                local name = v.name
                local vX_2 = v.floor or "1"
                insert(vS_2, { id = vR_3, name = name, floor = tostring(vX_2), score = pv(v.name), cframe = vW })
            end
        end
    end
    table.sort(vS_2, function(gJ, gK)
        return gJ.score < gK.score
    end)
    return vS_2
end
local function worker9()
    while not Library.Unloaded do
        if oB("AutoUpgrade") then
            onBuyUpgradesNow()
        end
        task.wait(math.max(pA("UpgradeDelay", 0.35), 0.5))
    end
end
local function fn715()
    local tG = pA("SellThreshold", 1)
    local tK = if oD() < tG then 1 else 0
    if tK == 1 then
        return
    end
    pcall(function()
        o0:InvokeServer("SellAll")
    end)
end
local function fn723(aE, aF)
    local qU = Options[aE]
    local qV = qU and tonumber(qU.Value)
    return qV or aF
end
local function worker13()
    while not Library.Unloaded do
        if oB("AutoRebirth") then
            oU()
        end
        task.wait(pA("RebirthDelay", 2))
    end
end
local function worker12()
    while not Library.Unloaded do
        local yf = oB("AutoSprinkler") or oB("AutoFertilizer")
        if yf then
            pa()
        end
        task.wait(math.max(pA("BoostDelay", 0.4), 1))
    end
end
local function fn807(hP)
    local wW = oZ()
    local wX = hP == "Sprinkler"
    if wX then
        wX = wW and wW.sprinklers
    end
    local wY_2 = wX
    local w1 = if wY_2 then 1 else 0
    local w_ = 2844 * w1 + 2413 * (1 - w1)
    local w0 = 406 * w1 + 3558 * (1 - w1)
    if not ((w_ * 109 + w0 * 4093 + w_ * w0) % 16777213 == 3126418) then
        wY_2 = wW and wW.fertilizer
    end
    local wW_1 = wY_2
    local wX_2 = type(wW_1) == "table" and next(wW_1)
    if wX_2 then
        local wX_3 = 0
        for k in pairs(wW_1) do
            wX_3 += 1
        end
        return wX_3
    end
    local wW_2 = pl()
    if not wW_2 then
        return 0
    end
    local wX_4 = 0
    for i, descendant in ipairs(wW_2:GetDescendants()) do
        local wW_3 = descendant:IsA("Model") and descendant:GetAttribute("TimeRemaining") ~= nil
        if wW_3 then
            local wW_4 = descendant:GetAttribute("ItemName") or descendant.Name
            if hP == "Sprinkler" and oq[wW_4] then
                wX_4 += 1
            else
                if hP == "Fertilizer" and oj[wW_4] then
                    wX_4 += 1
                end
            end
        end
    end
    return wX_4
end
local function fn818()
    if not pk() then
        return
    end
    pcall(function()
        o0:InvokeServer("Rebirth")
    end)
end
local function fn833(fg)
    local uH = oZ()
    local uH_1 = uH and uH.discovered
    if not uH_1 then
        return false
    elseif uH_1[fg] == true then
        return true
    else
        return table.find(uH_1, fg) ~= nil
    end
end
local function worker()
    local xG_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local xF = math.floor(os.clock() - o2)
        if xF < 60 then
            xG_1 = xF .. "s"
        elseif xF < 3600 then
            xG_1 = string.format("%dm %ds", xF // 60, xF % 60)
        else
            xG_1 = string.format("%dh %dm", xF // 3600, xF % 3600 // 60)
        end
        ps:SetText(oX("Session time", xG_1, oG))
    end
end
local function fn850(aK)
    local qX = Options[aK]
    local qY = qX and qX.Value
    local qX_1 = {}
    local qZ = qY
    local q2 = if qZ then 1 else 0
    local q0 = 3726 * q2 + 1638 * (1 - q2)
    local q1 = 165 * q2 + 713 * (1 - q2)
    if not ((q0 * 2446 + q1 * 1939 + q0 * q1) % 16777213 == 10048521) then
        qZ = qX_1
    end
    return qZ
end
local function worker4()
    while not Library.Unloaded do
        if oB("AutoBuyRoll") then
            onBuyRollNow()
        end
        task.wait(pA("BuyRollDelay", 0.2))
    end
end
local function fn876()
    return oE[("Rebirth%d"):format(oy() + 1)]
end
local function fn901(aq, ar, as)
    return string.format("<b>%s</b> %s %s", aq, o8("-", "#5a6070"), o8(ar, as))
end
local function fn903(fr)
    local uR = oB("KeepRequiredRebirthGnomes") and oI(fr)
    if uR then
        return true
    end
    local uR_1 = pg("KeepGnomes")
    return uR_1 ~= nil and uR_1[fr] == true
end
local function fn904()
    local CurrentCamera = pr.CurrentCamera
    if not CurrentCamera then
        return
    end
    pt:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    pt:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    oF = tick()
end
local function fn922(bm)
    local rq = bm or 0
    return oD() < math.max(py() - rq, 0)
end
local function fn950(cm, cn, co)
    local sc = cn * cn
    for i, v in ipairs(co) do
        local sd = cm.X - v.X
        local se = cm.Z - v.Z
        if sd * sd + se * se < sc then
            return false
        end
    end
    return true
end
local function worker14()
    while not Library.Unloaded do
        if oB("AutoExpand") then
            onExpandNow()
        end
        task.wait(math.max(pA("ExpandDelay", 0.5), 0.5))
    end
end
local function fn982()
    local Plot = pn:FindFirstChild("Plot")
    return Plot and Plot.Value
end
local function fn993()
    if pn:GetAttribute("Rolling") then
        return
    end
    local rt = oB("RollRequireRoom") and not oC(pA("RollLeaveSlots", 2))
    if rt then
        return
    end
    pcall(function()
        o0:InvokeServer("Roll")
    end)
end
oj = nil
Toggles = nil
onBuyRollNow = nil
on = nil
onPlaceNow = nil
oq = nil
ow = nil
Library = nil
oy = nil
oA = nil
oB = nil
oC = nil
oD = nil
oE = nil
oF = nil
oG = nil
oH = nil
oI = nil
oN = nil
oO = nil
onReplaceNow = nil
onBuyShopNow = nil
onBuyUpgradesNow = nil
oT = nil
oU = nil
oV = nil
oW = nil
oX = nil
oY = nil
oZ = nil
o0 = nil
onCollectNow = nil
o2 = nil
Replication = nil
connection2 = nil
o6 = nil
o7 = nil
o8 = nil
local op, ot, ou, ov, oz, oJ, oK, oL, oM, oR, o_, o3
pa = nil
pb = nil
pc = nil
pd = nil
onSellAllGnomesNow = nil
pg = nil
ph = nil
pi = nil
pk = nil
pl = nil
pm = nil
pn = nil
po = nil
connection = nil
onExpandNow = nil
pr = nil
ps = nil
pt = nil
pu = nil
pv = nil
pw = nil
px = nil
py = nil
Options = nil
pA = nil
pB = nil
local o9, pf, pj, pU
o9 = nil
pf = nil
pj = nil
local ItemShopGroup, AutoReplaceGroup, AutoPlaceGroup
yo_18, yo_5, UserInputService, pt, pr, pn, yo_14, pd, pb, yo_21, Replication, o0, yo_12 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local yo_2 = 4
repeat
    yo_7 = (yo_2 * 1 + 5) % 8 + 1
    if yo_7 <= 4 then
        if yo_7 <= 2 then
            if yo_7 <= 1 then
                if (pt or not pr or (not yo_5 or not pr) or (not yo_5 and not pb or not UserInputService and not yo_5)) and ((pt or not yo_5) and (pb or pr) and (not pb and not pb or pb and yo_18)) or not ((pt or not pr or (not yo_5 or not pr) or (not yo_5 and not pb or not UserInputService and not yo_5)) and ((pt or not yo_5) and (pb or pr) and (not pb and not pb or pb and yo_18))) then
                    yo_12 = (yo_21.get("Farmers"))
                else
                    yo_21 = (yo_12.get("Farmers"))
                end
                yo_2 = (yo_2 + 41) % 64
            else
                if yo_2 * 108330051 + 8 + 1 <= yo_2 * 108330051 + 8 + 1 + 1 then
                    yo_18 = game:GetService("Players")
                else
                    pr = game:GetService("Players")
                end
                yo_2 = (yo_2 + 1) % 64
            end
        elseif yo_7 <= 3 then
            yo_17 = (vector.create((yo_2 * 7 + 2) % 11 + 1, (yo_2 * 8 + 4) % 13 + 1, (yo_2 * 2 + 10) % 17 + 1))
            yo_26 = (vector.create((yo_2 * 4 + 1) % 11 + 1, (yo_2 * 8 + 1) % 13 + 1, (yo_2 * 4 + 6) % 17 + 1))
            yo_10 = (vector.create((yo_2 * 4 + 5) % 11 + 1, (yo_2 * 7 + 13) % 13 + 1, (yo_2 * 1 + 11) % 17 + 1))
            yo_19 = (vector.create((yo_2 * 4 + 6) % 11 + 1, (yo_2 * 9 + 10) % 13 + 1, (yo_2 * 3 + 6) % 17 + 1))
            if vector.dot(vector.cross(yo_17, yo_26), (vector.cross(yo_10, yo_19))) == vector.dot(yo_17, yo_10) * vector.dot(yo_26, yo_19) - vector.dot(yo_17, yo_19) * vector.dot(yo_26, yo_10) then
                yo_5 = game:GetService("ReplicatedStorage")
            else
                pt = game:GetService("ReplicatedStorage")
            end
            yo_2 = (yo_2 + 49) % 64
        else
            if (yo_18 or not o0 or yo_18 and not yo_18) and ((not yo_18 or yo_18) and (yo_2 and UserInputService)) and not ((yo_18 or not o0 or yo_18 and not yo_18) and ((not yo_18 or yo_18) and (yo_2 and UserInputService))) then
                pr = game:GetService("UserInputService")
            else
                UserInputService = game:GetService("UserInputService")
            end
            yo_2 = (yo_2 + 57) % 64
        end
    elseif yo_7 <= 6 then
        if yo_7 <= 5 then
            if ((not pr or not yo_5) and (not pr or not yo_2) and ((yo_2 or not pr) and (not yo_5 or not pr)) or (not yo_5 or not yo_5 or yo_2 and yo_2 or not pr and not pr and (yo_5 and not yo_2))) and (pr and pr and (yo_5 and yo_5) and (not yo_2 or yo_2 or (yo_5 or pr)) or (not yo_2 and yo_5 or pr and not yo_2) and (not pr and yo_5 and (not pr and pr))) and not (((not pr or not yo_5) and (not pr or not yo_2) and ((yo_2 or not pr) and (not yo_5 or not pr)) or (not yo_5 or not yo_5 or yo_2 and yo_2 or not pr and not pr and (yo_5 and not yo_2))) and (pr and pr and (yo_5 and yo_5) and (not yo_2 or yo_2 or (yo_5 or pr)) or (not yo_2 and yo_5 or pr and not yo_2) and (not pr and yo_5 and (not pr and pr)))) then
                pr = game:GetService("VirtualUser")
                pt = game:GetService("Workspace")
            else
                pt = game:GetService("VirtualUser")
                pr = game:GetService("Workspace")
            end
            yo_2 = (yo_2 + 17) % 64
        else
            yo_17 = (vector.create((yo_2 * 5 + 8) % 11 + 1, (yo_2 * 8 + 7) % 13 + 1, (yo_2 * 9 + 6) % 17 + 1))
            yo_26 = (vector.create((yo_2 * 2 + 3) % 11 + 1, (yo_2 * 1 + 11) % 13 + 1, (yo_2 * 12 + 5) % 17 + 1))
            local zH = vector.dot(yo_17, yo_26)
            if zH * zH >= vector.dot(yo_17, yo_17) * vector.dot(yo_26, yo_26) + 1 then
                yo_18 = nil
                pb = "Roll A Gnome"
                pn = "https://discord.gg/ehKVq7pf7v"
                pd = "https://rscripts.net/@Ouroboros"
            else
                pn = yo_18.LocalPlayer
                yo_14 = "Roll A Gnome"
                pd = "https://discord.gg/ehKVq7pf7v"
                pb = "https://rscripts.net/@Ouroboros"
            end
            yo_2 = (yo_2 + 1) % 64
        end
    elseif yo_7 <= 7 then
        yo_7 = (vector.create((yo_2 * 7 + 7) % 11 + 1, (yo_2 * 7 + 13) % 13 + 1, (yo_2 * 6 + 3) % 17 + 1))
        yo_17 = (vector.create((yo_2 * 1 + 8) % 11 + 1, (yo_2 * 9 + 11) % 13 + 1, (yo_2 * 2 + 7) % 17 + 1))
        yo_26 = (vector.create((yo_2 * 4 + 9) % 11 + 1, (yo_2 * 6 + 10) % 13 + 1, (yo_2 * 10 + 15) % 17 + 1))
        yo_10 = (vector.create((yo_2 * 2 + 6) % 11 + 1, (yo_2 * 4 + 13) % 13 + 1, (yo_2 * 11 + 9) % 17 + 1))
        if vector.dot(vector.cross(yo_7, yo_17), (vector.cross(yo_26, yo_10))) == vector.dot(yo_7, yo_26) * vector.dot(yo_17, yo_10) - vector.dot(yo_7, yo_10) * vector.dot(yo_17, yo_26) then
            yo_21 = require(yo_5:WaitForChild("Library"))
        else
            yo_5 = require(yo_21:WaitForChild("Library"))
        end
        yo_2 = (yo_2 + 17) % 64
    else
        local yZ = bit32.rrotate(bit32.bxor(bit32.lrotate(yo_2, 10), string.byte(tostring(pb))), 11)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(yZ, 3443460745), 2498941847), (bit32.bxor(bit32.band(yZ, 851506550), 2524904637))), 2498941847), 2524904637) ~= yZ then
            yo_5 = require(Replication:WaitForChild("Replication"))
            yo_21 = o0.get("Network")
        else
            Replication = require(yo_5:WaitForChild("Replication"))
            o0 = yo_21.get("Network")
        end
        yo_2 = (yo_2 + 49) % 64
    end
until (yo_2 * 13 + 10) % 64 == 6
if not yo_12 then
    yo_18 = 1
    repeat
        yo_2 = (vector.create((yo_18 * 5 + 6) % 11 + 1, (yo_18 * 9 + 4) % 13 + 1, (yo_18 * 14 + 8) % 17 + 1))
        local zZ = vector.floor(yo_2) + vector.ceil(yo_2 * -1)
        if vector.dot(zZ, zZ) == 2 then
            yo_5 = require(yo_12.Library.Configs.Farmers)
        else
            yo_12 = require(yo_5.Library.Configs.Farmers)
        end
        yo_18 = (yo_18 + 1) % 8
    until (yo_18 * 3 + 7) % 8 == 5
end
oV = nil
oV = yo_12
yo_7 = (yo_21.get("ItemShop"))
if not yo_7 then
    yo_18 = 0
    repeat
        local zf = bit32.rrotate(bit32.bxor(bit32.lrotate(yo_18, 25), string.byte(tostring(yo_18))), 19)
        if bit32.bxor(bit32.lrotate(bit32.bxor(zf, 1869988182), 0), 1869988182) == bit32.lrotate(zf, 0) then
            yo_7 = require(yo_5.Library.Configs.ItemShop)
        else
            yo_5 = require(yo_7.Library.Configs.ItemShop)
        end
        yo_18 = (yo_18 + 3) % 8
    until (yo_18 * 3 + 5) % 8 == 6
end
oR, yo_12 = nil, nil
yo_2 = 7
repeat
    yo_18 = (yo_2 * 1 + 0) % 2 + 1
    if yo_18 <= 1 then
        local y9 = bit32.rrotate(bit32.bxor(bit32.lrotate(yo_2, 11), string.byte(tostring(yo_12))), 4)
        if bit32.bxor(bit32.lrotate(bit32.bxor(y9, 1701502620), 0), 1701502620) ~= bit32.lrotate(y9, 0) then
            yo_21 = (yo_12.get("Upgrade Tree"))
        else
            yo_12 = (yo_21.get("Upgrade Tree"))
        end
        yo_2 = (yo_2 + 5) % 8
    else
        local zI = bit32.rrotate(bit32.bxor(bit32.lrotate(yo_2, 28), string.byte(tostring(yo_12))), 1)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(zI, 190148333), 3426983127), (bit32.bxor(bit32.band(zI, 4104818962), 2164909945))), 3426983127), 2164909945) == zI then
            oR = yo_7
        else
            yo_7 = oR
        end
        yo_2 = (yo_2 + 5) % 8
    end
until (yo_2 * 7 + 1) % 8 == 0
if not yo_12 then
    yo_18 = 0
    repeat
        yo_2 = {
            "ozj",
            "fehti",
            "ajwsl",
            "takytqvmum",
            "dblxbjit",
            "scecjetp",
            "mkwsk",
            "scei",
            "hzwnnyddned",
            "smtgsx",
            "gdbj"
        }
        local zi = yo_18
        yo_7 = yo_2[zi % 11 + 1]
        if yo_7:len() <= yo_7:gsub("(.)", "%1%1", zi % 3 % 2 + 1):len() then
            yo_12 = require(yo_5.Library.Configs["Upgrade Tree"])
        else
            yo_5 = require(yo_12.Library.Configs["Upgrade Tree"])
        end
        yo_18 = (yo_18 + 3) % 4
    until (yo_18 * 3 + 3) % 4 == 0
end
oL, yo_7 = nil, nil
yo_2 = 11
repeat
    yo_18 = (yo_2 * 1 + 1) % 2 + 1
    if yo_18 <= 1 then
        yo_18 = {
            "ayibvqivrr",
            "vjfxrfycytem",
            "fijrsunvqtu",
            "zqzbgjkdyq",
            "urwtyiwq",
            "bkdbdt",
            "manaimtpk",
            "erqo",
            "pviaij",
            "eetdnedmk",
            "pouyetwh",
            "ycpuefxrx",
            "gisupqc",
            "aseoaoedjtan"
        }
        if yo_18[(yo_2 * 93 + 70) % 14 + 1] <= yo_18[(yo_2 * 93 + 70) % 14 + 1] then
            oL = yo_12
        else
            yo_12 = oL
        end
        yo_2 = (yo_2 + 7) % 16
    else
        yo_18 = { "lfj", "qxgmvgdi", "qqxkkte", "ohmynisq", "bhddbk", "spj", "blf" }
        local zs = yo_2
        yo_17 = yo_18[zs % 7 + 1]
        if yo_17:len() >= yo_17:reverse():rep(zs % 3 + 2):len() then
            yo_21 = (yo_7.get("Rebirths"))
        else
            yo_7 = (yo_21.get("Rebirths"))
        end
        yo_2 = (yo_2 + 13) % 16
    end
until (yo_2 * 13 + 5) % 16 == 8
if not yo_7 then
    yo_18 = 2
    repeat
        yo_2 = (vector.create((yo_18 * 5 + 8) % 11 + 1, (yo_18 * 5 + 3) % 13 + 1, (yo_18 * 15 + 8) % 17 + 1))
        yo_12 = (vector.create((yo_18 * 3 + 7) % 11 + 1, (yo_18 * 6 + 10) % 13 + 1, (yo_18 * 1 + 15) % 17 + 1))
        yo_17 = (vector.create((yo_18 * 1 + 2) % 5 + 1, (yo_18 * 1 + 7) % 7 + 1, (yo_18 * 4 + 1) % 9 + 1))
        if math.abs((vector.angle(yo_2, yo_12, yo_17))) - math.abs((vector.angle(yo_12, yo_2, yo_17))) == 0 then
            yo_7 = require(yo_5.Library.Configs.Rebirths)
        else
            yo_5 = require(yo_7.Library.Configs.Rebirths)
        end
        yo_18 = (yo_18 + 1) % 8
    until (yo_18 * 1 + 0) % 8 == 3
end
oE = nil
oE = yo_7
yo_12 = (yo_21.get("Expand"))
if not yo_12 then
    yo_18 = 3
    repeat
        if (yo_18 * 3 + 7) * 13 % 4 == ((yo_18 * 3 + 7) * 13 + 15) % 4 then
            yo_5 = require(yo_12.Library.Configs.Expand)
        else
            yo_12 = require(yo_5.Library.Configs.Expand)
        end
        yo_18 = (yo_18 + 7) % 8
    until (yo_18 * 3 + 2) % 8 == 0
end
oA, yo_7 = nil, nil
yo_2 = 5
repeat
    yo_18 = (yo_2 * 1 + 0) % 2 + 1
    if yo_18 <= 1 then
        yo_18 = (vector.create((yo_2 * 2 + 2) % 11 + 1, (yo_2 * 7 + 10) % 13 + 1, (yo_2 * 9 + 13) % 17 + 1))
        yo_17 = (vector.create((yo_2 * 5 + 3) % 11 + 1, (yo_2 * 11 + 3) % 13 + 1, (yo_2 * 15 + 7) % 17 + 1))
        local y3 = vector.cross(yo_18, yo_17)
        local y4 = vector.dot(yo_18, yo_17)
        if vector.dot(y3, y3) + y4 * y4 == vector.dot(yo_18, yo_18) * vector.dot(yo_17, yo_17) then
            yo_7 = (yo_21.get("Sprinklers"))
        else
            yo_21 = (yo_7.get("Sprinklers"))
        end
        yo_2 = (yo_2 + 1) % 8
    else
        yo_18 = (vector.create((yo_2 * 2 + 5) % 11 + 1, (yo_2 * 11 + 8) % 13 + 1, (yo_2 * 9 + 10) % 17 + 1))
        local zV = vector.floor(yo_18) + vector.ceil(yo_18 * -1)
        if vector.dot(zV, zV) == 1 then
            yo_12 = oA
        else
            oA = yo_12
        end
        yo_2 = (yo_2 + 7) % 8
    end
until (yo_2 * 1 + 4) % 8 == 1
if not yo_7 then
    yo_18 = 5
    repeat
        yo_2 = (vector.create((yo_18 * 7 + 9) % 11 + 1, (yo_18 * 7 + 2) % 13 + 1, (yo_18 * 7 + 16) % 17 + 1))
        yo_12 = (vector.create((yo_18 * 6 + 2) % 11 + 1, (yo_18 * 7 + 11) % 13 + 1, (yo_18 * 14 + 1) % 17 + 1))
        yo_17 = (vector.create((yo_18 * 1 + 9) % 11 + 1, (yo_18 * 4 + 12) % 13 + 1, (yo_18 * 9 + 13) % 17 + 1))
        yo_26 = (vector.create((yo_18 * 1 + 4) % 11 + 1, (yo_18 * 7 + 1) % 13 + 1, (yo_18 * 14 + 11) % 17 + 1))
        if vector.dot(vector.cross(yo_2, yo_12), (vector.cross(yo_17, yo_26))) == vector.dot(yo_2, yo_17) * vector.dot(yo_12, yo_26) - vector.dot(yo_2, yo_26) * vector.dot(yo_12, yo_17) + 2 then
            yo_5 = require(yo_7.Library.Configs.Sprinklers)
        else
            yo_7 = require(yo_5.Library.Configs.Sprinklers)
        end
        yo_18 = (yo_18 + 3) % 8
    until (yo_18 * 7 + 4) % 8 == 4
end
oq, yo_12 = nil, nil
yo_2 = 1
repeat
    yo_18 = (yo_2 * 1 + 1) % 2 + 1
    if yo_18 <= 1 then
        yo_18 = { "qgild", "can", "frpckwzhn", "ctqzyoohsq", "kdqqjxhv", "kuambaxe", "ytt", "ukbhqljvfhk" }
        local zP = yo_2
        yo_17 = yo_18[zP % 8 + 1]
        if yo_17:len() >= yo_17:gsub("(.)", "%1%1", zP % 3 % 2 + 1):len() then
            yo_7 = oq
        else
            oq = yo_7
        end
        yo_2 = (yo_2 + 9) % 16
    else
        local z0 = bit32.rrotate(bit32.bxor(bit32.lrotate(yo_2, 5), string.byte(tostring(oq))), 13)
        if bit32.bxor(bit32.lrotate(bit32.bxor(z0, 2821798646), 20), 2942993171) == bit32.lrotate(z0, 20) then
            yo_12 = (yo_21.get("Fertilizer"))
        else
            yo_21 = (yo_12.get("Fertilizer"))
        end
        yo_2 = (yo_2 + 1) % 16
    end
until (yo_2 * 1 + 6) % 16 == 1
if not yo_12 then
    yo_18 = 2
    repeat
        yo_2 = (vector.create((yo_18 * 1 + 5) % 11 + 1, (yo_18 * 6 + 5) % 13 + 1, (yo_18 * 13 + 13) % 17 + 1))
        local zj = vector.floor(yo_2) + vector.ceil(yo_2 * -1)
        if vector.dot(zj, zj) == 5 then
            yo_5 = require(yo_12.Library.Configs.Fertilizer)
        else
            yo_12 = require(yo_5.Library.Configs.Fertilizer)
        end
        yo_18 = (yo_18 + 5) % 8
    until (yo_18 * 3 + 3) % 8 == 0
end
oj, pw = nil, nil
oj = yo_12
yo_21 = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic", "Godly", "IMPOSSIBLE" }
pw = {}
for i, v in ipairs(yo_21) do
    pw[v] = i
end
yo_18 = {}
yo_2 = {}
for k, v in pairs(oV) do
    yo_12 = type(v) == "table" and v.real_rarity
    if yo_12 then
        yo_12 = table.insert
        yo_5 = v.order or 0
        yo_12(yo_2, { name = k, order = yo_5 })
    end
end
yo_7 = 3
repeat
    local zG = bit32.rrotate(bit32.bxor(bit32.lrotate(yo_7, 27), string.byte(tostring(yo_7))), 9)
    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(zG, 4112926037), 327903069), (bit32.bxor(bit32.band(zG, 182041258), 2066992110))), 327903069), 2066992110) == zG then
        table.sort(yo_2, fn659)
    else
        table.sort(yo_2, fn659)
    end
    yo_7 = (yo_7 + 1) % 4
until (yo_7 * 3 + 1) % 4 == 1
for i, v in ipairs(yo_2) do
    table.insert(yo_18, v.name)
end
yo_2 = {}
yo_12 = oR.Items or oR
yo_5 = yo_12
for k in pairs(yo_5) do
    if type(k) == "string" then
        table.insert(yo_2, k)
    end
end
table.sort(yo_2)
yo_12 = {}
yo_5 = {}
yo_7 = oq or yo_5
for k in pairs(yo_7) do
    if type(k) == "string" then
        table.insert(yo_12, k)
    end
end
table.sort(yo_12)
yo_5 = {}
yo_7 = {}
yo_17 = oj or yo_7
for k in pairs(yo_17) do
    if type(k) == "string" then
        table.insert(yo_5, k)
    end
end
table.sort(yo_5)
Library, Toggles, Options, oG, px, ph, o8, oX, oB, pA, pg, oZ, oT, oD, py, pl, o6, oW, oN, oC, pB, o9, onBuyRollNow, onCollectNow, ot, pf, oO, oz, pj, oM, onPlaceNow, pm, o_, onBuyShopNow, onBuyUpgradesNow, oy, pu, pi, oY, oI, ou, pk, oU, oJ, onExpandNow, oK, pv, o3, onSellAllGnomesNow, o7, onReplaceNow, ov, op, pc, pa, yo_19 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
px = fn533
ph = fn603
o8 = fns.fn23
oX = fn901
local pS = "#7fd47f"
local pR = "#6ec1ff"
if (not Options or yo_19 or (not Options or not pj) or (not oZ or yo_19) and (Options and ph) or (not ph and oZ or (oZ or ph)) and (not ph or yo_19 or (not ph or yo_19))) and ((pj and pj or not Options and pj) and (ph and not Options and (not Options or not oZ)) or ((yo_19 or not yo_19) and (not yo_19 and not yo_19) or (oZ or not Options) and (not pj or not oZ))) or not ((not Options or yo_19 or (not Options or not pj) or (not oZ or yo_19) and (Options and ph) or (not ph and oZ or (oZ or ph)) and (not ph or yo_19 or (not ph or yo_19))) and ((pj and pj or not Options and pj) and (ph and not Options and (not Options or not oZ)) or ((yo_19 or not yo_19) and (not yo_19 and not yo_19) or (oZ or not Options) and (not pj or not oZ)))) then
    oG = "#e8a34d"
    yo_23 = "#8b93a3"
    oB = fn369
else
    oB = "#e8a34d"
    oG = "#8b93a3"
    yo_23 = fn369
end
pA = fn723
pg = fn850
oZ = fn350
oT = fn693
oD = fn334
py = fn572
pl = fn982
o6 = fn372
oW = fns.fn85
oN = fns.fn93
oC = fn922
pB = fn993
o9 = fns.fn191
onBuyRollNow = function()
    local rC = pl()
    local rD = rC and rC:FindFirstChild("RNG") and rC.RNG:FindFirstChild("Preview")
    if not rD then
        return
    end
    for i, child in ipairs(rD:GetChildren()) do
        local rN = child
        if o9(rN) then
            pcall(function()
                o0:FireServer("BuyFarmer", rN)
            end)
            task.wait(pA("BuyRollDelay", 0.2))
        end
    end
end
onCollectNow = function()
    local rO = pl()
    if not rO then
        return
    end
    local rP = { rO:FindFirstChild("ReadyToCollect"), rO:FindFirstChild("Plants") }
    for i, v in ipairs(rP) do
        if v then
            for i, descendant in ipairs(v:GetDescendants()) do
                local r1 = descendant
                local rO_1 = r1:IsA("Model") and r1:GetAttribute("READY") == true and r1:GetAttribute("FruitReady") ~= false
                if rO_1 then
                    pcall(function()
                        o0:InvokeServer("CollectPlant", r1)
                    end)
                    task.wait(0.05)
                end
            end
        end
    end
end
ot = fn378
pf = fn950
oO = fn273
if (not pg and not pg and (pu or not pk) and (not pk or pg or (pg or pk)) or not pg and not pu and (pu and not pg) and (not pk and not pk and (not pk and pk))) and not (not pg and not pg and (pu or not pk) and (not pk or pg or (pg or pk)) or not pg and not pu and (pu and not pg) and (not pk and not pk and (not pk and pk))) then
    oN = fn658
else
    oz = fn658
end
pj = fn250
oM = fn598
onPlaceNow = function()
    local tn = pA("PlaceMaxGnomes", 0)
    local to = tn > 0 and oM() >= tn
    if to then
        return
    end
    local to_1 = oz()
    if #to_1 == 0 then
        return
    end
    local tp = pA("PlaceSpacing", 4)
    local tq = oO(tp)
    if #tq == 0 then
        return
    end
    local tr = ot()
    local ts = pn.Character and pn.Character:FindFirstChildOfClass("Humanoid")
    local tl = ts
    if not tl then
        return
    end
    for i, v in ipairs(to_1) do
        local tk, tm
        local tz = v
        local to_2 = tn > 0 and oM() >= tn
        if to_2 then
            break
        elseif pj(tz) then
            local to_3 = nil
            for i, v in ipairs(tq) do
                if pf(v, tp, tr) then
                    to_3 = v
                    break
                end
            end
            if to_3 then
                pcall(function()
                    tl:EquipTool(tz)
                end)
                task.wait(0.15)
                local ts_1 = tz:GetAttribute("FarmerName") or tz.Name
                tk = ts_1
                tm = CFrame.new(to_3)
                pcall(function()
                    o0:FireServer("Place", "Farmer", tk, tm, "1")
                end)
                table.insert(tr, to_3)
                task.wait(pA("PlaceDelay", 0.35))
            end
        end
    end
end
pm = fn715
o_ = fn617
onBuyShopNow = function()
    local tN_1
    local tO_1
    tN_1, tO_1 = pcall(function()
        return o0:InvokeServer("GetStock")
    end)
    local tP = tN_1 and type(tO_1) == "table"
    if not tP then
        return
    end
    local tN_2 = {}
    local tP_1 = oR.Items
    local tX = if tP_1 then 1 else 0
    local tV = 3054 * tX + 1477 * (1 - tX)
    local tW = 711 * tX + 3931 * (1 - tX)
    if not ((tV * 2391 + tW * 2864 + tV * tW) % 16777213 == 11509812) then
        tP_1 = tN_2
    end
    local tN_3 = tP_1
    local tP_2 = pA("ShopMoneyBuffer", 0)
    local tQ = pA("ShopMaxPrice", 0)
    local tR = pg("ShopItems")
    for k, v in pairs(tO_1) do
        local t0 = k
        local tO_2 = tonumber(v) or 0
        local tS = tO_2 > 0 and o_(tR, t0)
        if tS then
            local tO_3 = tN_3[t0]
            local tS_1 = tO_3 and tonumber(tO_3.price)
            local tS_2 = tS_1 or 0
            local tO_5 = tQ <= 0 or tS_2 <= tQ
            local tT = tO_5 and oT() - tS_2 >= tP_2
            if tT then
                pcall(function()
                    o0:InvokeServer("Purchase", t0)
                end)
                task.wait(pA("ShopBuyDelay", 0.25))
            end
        end
    end
end
onBuyUpgradesNow = function()
    local t4 = oZ()
    if not t4 then
        return
    end
    local t6 = t4.upgrade_tree or {}
    local t5_1 = pA("UpgradeMoneyBuffer", 0)
    local t6_1 = pA("UpgradeMaxPrice", 0)
    local t7 = oT()
    for k, v in pairs(oL) do
        if type(v) == "table" then
            local t8 = {}
            for k2, v in pairs(v) do
                local t9 = type(v) == "table" and v.Price ~= nil and not v.OpensPage and not v.BackButton and t6[k2] ~= true
                if t9 then
                    local t9_1 = true
                    local ub = v.Requires or {}
                    for i, v in ipairs(ub) do
                        if t6[v] ~= true then
                            t9_1 = false
                            break
                        end
                    end
                    local ua_1 = tonumber(v.Price) or 0
                    local ub_1 = t9_1
                    if ub_1 then
                        ub_1 = ua_1 > 0
                    end
                    if ub_1 then
                        ub_1 = t7 - ua_1 >= t5_1
                    end
                    if ub_1 then
                        ub_1 = t6_1 <= 0 or ua_1 <= t6_1
                    end
                    if ub_1 then
                        table.insert(t8, { page = k, id = k2, price = ua_1 })
                    end
                end
            end
            table.sort(t8, function(eS, eT)
                return eS.price < eT.price
            end)
            for i, v in ipairs(t8) do
                local t3
                local uy = v
                if oT() - uy.price < t5_1 then
                    break
                end
                t3 = false
                pcall(function()
                    t3 = o0:InvokeServer("Upgrade", uy.page, uy.id) == true
                end)
                if t3 then
                    t6[uy.id] = true
                    task.wait(pA("UpgradeDelay", 0.35))
                end
            end
        end
    end
end
oy = fn452
pu = fn876
pi = fn326
oY = fn833
oI = fns.fn117
ou = fn903
pk = fn571
oU = fn818
oJ = fns.fn118
onExpandNow = function()
    local vk = pA("ExpandMoneyBuffer", 0)
    local vl = pA("ExpandMaxPrice", 0)
    for i, v in ipairs(oJ()) do
        local vu = v
        local vm = vu.price > 0 and (vl <= 0 or vu.price <= vl) and oT() - vu.price >= vk
        if vm then
            pcall(function()
                o0:FireServer("ExpandPlot", vu.model)
            end)
            task.wait(pA("ExpandDelay", 0.5))
            break
        end
    end
end
oK = fns.fn20
pv = fn564
o3 = fn709
onSellAllGnomesNow = function()
    local wa = oB("KeepRequiredRebirthGnomes")
    local wb = pg("KeepGnomes")
    local wc = wb and next(wb) ~= nil
    local wc_1 = not wc
    local wd = not wa
    if wd ~= false then
        wd = wc_1
    end
    if wd then
        pcall(function()
            o0:InvokeServer("SellAllGnomes")
        end)
        return
    end
    local wa_1 = pn.Character and pn.Character:FindFirstChildOfClass("Humanoid")
    local v9 = wa_1
    if not v9 then
        return
    end
    for i, v in ipairs(o3()) do
        local wn = v
        if not ou(wn.name) then
            pcall(function()
                o0:FireServer("PickupFarmer", wn.id)
            end)
            task.wait(0.2)
        end
    end
    for i, v in ipairs(oK("Farmer")) do
        local wt = v
        local wa_2 = wt:GetAttribute("FarmerName") or wt.Name
        if not ou(wa_2) then
            pcall(function()
                v9:EquipTool(wt)
            end)
            task.wait(0.1)
            pcall(function()
                o0:InvokeServer("SellGnome")
            end)
            task.wait(pA("SellGnomesDelay", 0.35))
        end
    end
end
o7 = fn631
onReplaceNow = function()
    local wA = pn.Character and pn.Character:FindFirstChildOfClass("Humanoid")
    local wy = wA
    if not wy then
        return
    end
    local wA_1 = oK("Farmer")
    if #wA_1 == 0 then
        return
    end
    local wB = {}
    for i, v in ipairs(wA_1) do
        local wA_2 = v:GetAttribute("FarmerName") or v.Name
        table.insert(wB, { tool = v, name = wA_2, score = pv(wA_2) })
    end
    table.sort(wB, function(hu, hv)
        return hu.score > hv.score
    end)
    if #wB == 0 then
        return
    end
    local wA_3 = {}
    for i, v in ipairs(o3()) do
        local wP = v
        if not ou(wP.name) then
            local wz
            for i, v in ipairs(wB) do
                local wC_2 = not wA_3[v.tool]
                if wC_2 ~= false then
                    wC_2 = v.score > wP.score
                end
                if wC_2 then
                    wz = v
                    break
                end
            end
            if wz then
                wA_3[wz.tool] = true
                pcall(function()
                    o0:FireServer("PickupFarmer", wP.id)
                end)
                task.wait(0.2)
                pcall(function()
                    wy:EquipTool(wz.tool)
                end)
                task.wait(0.15)
                pcall(function()
                    o0:FireServer("Place", "Farmer", wz.name, wP.cframe, wP.floor)
                end)
                task.wait(pA("ReplaceDelay", 0.4))
            end
        end
    end
end
ov = fn807
op = fn258
pc = function(io, ip, iq)
    local xl = iq > 0 and ov(io) >= iq
    if xl then
        return
    end
    local xl_1 = pn.Character and pn.Character:FindFirstChildOfClass("Humanoid")
    local xk = xl_1
    local xi = op()
    if not (xk and xi) then
        return
    end
    for i, v in ipairs(oK(io)) do
        local xv = v
        local xl_3 = iq > 0 and ov(io) >= iq
        if xl_3 then
            break
        else
            local xl_4 = xv:GetAttribute("ItemName") or xv.Name
            local xj = xl_4
            if oN(ip, xj) then
                pcall(function()
                    xk:EquipTool(xv)
                end)
                task.wait(0.15)
                pcall(function()
                    o0:FireServer("Place", io, xj, xi, "1")
                end)
                task.wait(pA("BoostDelay", 0.4))
            end
        end
    end
end
pa = fns.fn223
yo_26 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = pd, Copyable = true }, "|", yo_14 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local pT = {}
pT.Info = yo_26:AddTab("Info", "info")
yo_17 = yo_26:AddTab("Main", "gamepad-2")
pT.Settings = yo_26:AddTab("Settings", "settings")
yo_17:SetSubTabAlignment("Center")
pT.Roll = yo_17:AddSubTab("Roll", "dices")
pT.Garden = yo_17:AddSubTab("Garden", "sprout")
pT.Shop = yo_17:AddSubTab("Shop", "shopping-cart")
pT.Progress = yo_17:AddSubTab("Progress", "trophy")
yo_19 = fns.fn150
for k, v in pT do
    yo_19(v)
end
ow, yo_17, yo_10, ps, po, yo_26 = nil, nil, nil, nil, nil, nil
yo_7 = 3
repeat
    yo_19 = (yo_7 * 1 + 0) % 3 + 1
    if yo_19 <= 2 then
        if yo_19 <= 1 then
            yo_19 = {
                "smggrlfvzwhb",
                "azgvynjs",
                "ouyrqmpyfdwy",
                "xoa",
                "fkzzfokdysnu",
                "joyhf",
                "gprp",
                "qawskx",
                "utulp",
                "bincabcjo",
                "zjnfvecyt"
            }
            if yo_19[(yo_7 * 41 + 87) % 11 + 1] < yo_19[(yo_7 * 41 + 87) % 11 + 1] then
                ps = "Unknown"
                pcall(fn408)
                pT = oG.Info:AddLeftGroupbox("Account", "circle-user")
                pT:AddLabel(ow("User", nil, oX), true)
                pT:AddLabel(ow("Status", "Keyless", oX), true)
                pT:AddLabel(ow("Executor", ps, oX), true)
                pn = oG.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                pn:AddLabel(pR(o8 .. " [" .. tostring(game.PlaceId) .. "]", yo_14), true)
                pn:AddLabel(ow("Place ID", tostring(game.PlaceId), yo_14), true)
                yo_10 = pn:AddLabel(ow("Session time", "0s", yo_17), true)
            else
                ow = "Unknown"
                pcall(fn408)
                yo_17 = pT.Info:AddLeftGroupbox("Account", "circle-user")
                yo_17:AddLabel(oX("User", pn.Name, pS), true)
                yo_17:AddLabel(oX("Status", "Keyless", pS), true)
                yo_17:AddLabel(oX("Executor", ow, pS), true)
                yo_10 = pT.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                yo_10:AddLabel(o8(yo_14 .. " [" .. tostring(game.PlaceId) .. "]", pR), true)
                yo_10:AddLabel(oX("Place ID", tostring(game.PlaceId), pR), true)
                ps = yo_10:AddLabel(oX("Session time", "0s", oG), true)
            end
            yo_7 = (yo_7 + 7) % 12
        else
            if (not yo_10 or not yo_10 or (not yo_10 or not ps)) and (yo_17 or ps or not ps and ps) or (not yo_10 or not yo_26) and (ps or not yo_17) and (not yo_10 and yo_10 and (yo_10 or not yo_17)) or not ((not yo_10 or not yo_10 or (not yo_10 or not ps)) and (yo_17 or ps or not ps and ps) or (not yo_10 or not yo_26) and (ps or not yo_17) and (not yo_10 and yo_10 and (yo_10 or not yo_17))) then
                po = tostring(game.JobId)
            else
                yo_10 = tostring(game.JobId)
            end
            yo_7 = (yo_7 + 7) % 12
        end
    else
        yo_19 = {
            "txpwpnabe",
            "rmpngljmawp",
            "ojgfzijoux",
            "kkqjthytmfy",
            "iqndqgakp",
            "qikgarqiilr",
            "lmd",
            "pfouudawl",
            "idy"
        }
        local yY = yo_7
        pU = yo_19[yY % 9 + 1]
        if pU:len() <= pU:reverse():rep(yY % 3 + 2):len() then
            yo_26 = #po > 18
        else
            po = #yo_26 > 18
        end
        yo_7 = (yo_7 + 4) % 12
    end
until (yo_7 * 11 + 8) % 12 == 11
if yo_26 then
    yo_7 = 1
    repeat
        if (yo_7 * 3 + 1) * 17 % 4 == ((yo_7 * 3 + 1) * 17 + 6) % 4 then
            po = string.sub(yo_26, 1, 18) .. "..."
        else
            yo_26 = string.sub(po, 1, 18) .. "..."
        end
        yo_7 = (yo_7 + 3) % 4
    until (yo_7 * 3 + 3) % 4 == 3
end
yo_7 = yo_26 or po
o2, AutoPlaceGroup, AutoReplaceGroup, ItemShopGroup, oH, oF, connection, connection2, on = nil, nil, nil, nil, nil, nil, nil, nil, nil
local p5 = yo_7
yo_10:AddLabel(oX("Server", p5, yo_23), true)
yo_10:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
o2 = os.clock()
task.spawn(worker)
local ScriptsGroup = pT.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(o8("Included in this hub", yo_23), true)
ScriptsGroup:AddLabel(o8(yo_14, pR), true)
local FeaturesGroup = pT.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(o8("Auto Roll", pR), true)
FeaturesGroup:AddLabel(o8("Auto Buy Roll", pS), true)
FeaturesGroup:AddLabel(o8("Auto Collect / Place / Sell", oG), true)
FeaturesGroup:AddLabel(o8("Auto Replace / Boosters", pR), true)
FeaturesGroup:AddLabel(o8("Auto Rebirth / Expand / Daily Deal", pS), true)
FeaturesGroup:AddLabel(o8("Auto Shop / Upgrades", pR), true)
FeaturesGroup:AddLabel(o8("Misc Utilities", yo_23), true)
pU = pT.Info:AddRightGroupbox("Socials", "link")
pU:AddButton({ Text = "Discord", Func = ph })
pU:AddButton({ Text = "Rscripts", Func = onRscripts })
yo_19 = pT.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
yo_19:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
yo_19:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
yo_19:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
yo_19:AddButton({ Text = "Copy Discord Invite", Func = ph })
yo_17 = pT.Info:AddRightGroupbox("FAQ", "circle-help")
yo_17:AddLabel("Where do I get a good config?", true)
yo_17:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
yo_17:AddLabel("How do I import / export configs?", true)
yo_17:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
yo_17:AddLabel("How do I report bugs?", true)
yo_17:AddLabel("Join the Discord and post it in the bugs channel.", true)
yo_17:AddLabel("How do I make suggestions?", true)
yo_17:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
yo_17:AddLabel("How do I get help or updates?", true)
yo_17:AddLabel("Join the Discord, updates and support are posted there first.", true)
local AutoRollGroup = pT.Roll:AddLeftGroupbox("Auto Roll", "dices")
AutoRollGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
AutoRollGroup:AddSlider("RollDelay", { Text = "Roll delay", Default = 0.35, Min = 0.1, Max = 10, Rounding = 2, Suffix = "s" })
AutoRollGroup:AddToggle("RollRequireRoom", { Text = "Require inventory room", Default = true })
AutoRollGroup:AddSlider("RollLeaveSlots", { Text = "Leave inventory slots", Default = 2, Min = 0, Max = 50, Rounding = 0 })
AutoRollGroup:AddToggle("RollWaitNotRolling", { Text = "Wait until not rolling", Default = true })
AutoRollGroup:AddButton({ Text = "Roll Now", Func = pB })
local AutoBuyRollGroup = pT.Roll:AddRightGroupbox("Auto Buy Roll", "shopping-bag")
AutoBuyRollGroup:AddToggle("AutoBuyRoll", { Text = "Auto Buy Roll", Default = false })
AutoBuyRollGroup:AddSlider("BuyRollDelay", { Text = "Buy delay", Default = 0.2, Min = 0.05, Max = 5, Rounding = 2, Suffix = "s" })
AutoBuyRollGroup:AddSlider("BuyRollMaxPrice", { Text = "Max price", Default = 0, Min = 0, Max = 500000000, Rounding = 0, Suffix = "$" })
AutoBuyRollGroup:AddSlider("BuyRollMoneyBuffer", { Text = "Keep money", Default = 0, Min = 0, Max = 100000000, Rounding = 0, Suffix = "$" })
AutoBuyRollGroup:AddDropdown("BuyRollRarities", { Text = "Rarities", Values = yo_21, Multi = true, AllowNull = true, Default = {} })
AutoBuyRollGroup:AddDropdown("BuyRollGnomes", {
    Text = "Gnomes",
    Values = yo_18,
    Multi = true,
    AllowNull = true,
    Default = {},
    Expandable = true,
    ExpandColumns = 2
})
AutoBuyRollGroup:AddButton({ Text = "Buy Roll Now", Func = onBuyRollNow })
local AutoCollectGroup = pT.Garden:AddLeftGroupbox("Auto Collect", "hand")
if (AutoBuyRollGroup or not AutoBuyRollGroup or ItemShopGroup and not yo_17) and (not yo_17 and not yo_17 or yo_19 and AutoBuyRollGroup) and not ((AutoBuyRollGroup or not AutoBuyRollGroup or ItemShopGroup and not yo_17) and (not yo_17 and not yo_17 or yo_19 and AutoBuyRollGroup)) then
    onCollectNow:AddToggle("AutoCollect", { Text = "Auto Collect Plants", Default = false })
    onCollectNow:AddSlider("CollectDelay", { Max = 30, Min = 0.1, Suffix = "s", Default = 0.5, Rounding = 1, Text = "Collect delay" })
    onCollectNow:AddButton({ Text = "Collect Now", Func = AutoCollectGroup })
    pT = AutoPlaceGroup.Garden:AddLeftGroupbox("Auto Place", "map-pin")
else
    AutoCollectGroup:AddToggle("AutoCollect", { Text = "Auto Collect Plants", Default = false })
    AutoCollectGroup:AddSlider("CollectDelay", { Text = "Collect delay", Default = 0.5, Min = 0.1, Max = 30, Rounding = 1, Suffix = "s" })
    AutoCollectGroup:AddButton({ Text = "Collect Now", Func = onCollectNow })
    AutoPlaceGroup = pT.Garden:AddLeftGroupbox("Auto Place", "map-pin")
end
AutoPlaceGroup:AddToggle("AutoPlace", { Text = "Auto Place Gnomes", Default = false })
AutoPlaceGroup:AddSlider("PlaceDelay", { Text = "Place delay", Default = 0.35, Min = 0.1, Max = 10, Rounding = 2, Suffix = "s" })
AutoPlaceGroup:AddSlider("PlaceSpacing", { Text = "Spacing", Default = 4, Min = 2, Max = 20, Rounding = 1 })
AutoPlaceGroup:AddSlider("PlaceMaxGnomes", { Text = "Max placed gnomes", Default = 0, Min = 0, Max = 200, Rounding = 0 })
AutoPlaceGroup:AddDropdown("PlaceRarities", { Text = "Rarities", Values = yo_21, Multi = true, AllowNull = true, Default = {} })
AutoPlaceGroup:AddDropdown("PlaceGnomes", {
    Text = "Gnomes",
    Values = yo_18,
    Multi = true,
    AllowNull = true,
    Default = {},
    Expandable = true,
    ExpandColumns = 2
})
AutoPlaceGroup:AddButton({ Text = "Place Now", Func = onPlaceNow })
local AutoSellGroup = pT.Garden:AddRightGroupbox("Auto Sell", "badge-dollar-sign")
AutoSellGroup:AddToggle("AutoSell", { Text = "Auto Sell All", Default = false })
AutoSellGroup:AddSlider("SellDelay", { Text = "Sell delay", Default = 5, Min = 0.5, Max = 120, Rounding = 1, Suffix = "s" })
AutoSellGroup:AddSlider("SellThreshold", { Text = "Sell at inventory", Default = 10, Min = 1, Max = 200, Rounding = 0 })
AutoSellGroup:AddButton({ Text = "Sell All Now", Func = fns.onSellAllNow })
local AutoSellGnomesGroup = pT.Garden:AddRightGroupbox("Auto Sell Gnomes", "user-round-x")
if (ScriptsGroup or oF or oF and oF or (oF or oF or ScriptsGroup and not ScriptsGroup) or (ScriptsGroup and oF or oF and not oF or ScriptsGroup and ScriptsGroup and (oF or not oF))) and not (ScriptsGroup or oF or oF and oF or (oF or oF or ScriptsGroup and not ScriptsGroup) or (ScriptsGroup and oF or oF and not oF or ScriptsGroup and ScriptsGroup and (oF or not oF))) then
    onSellAllGnomesNow:AddToggle("AutoSellGnomes", { Text = "Auto Sell All Gnomes", Default = false })
    onSellAllGnomesNow:AddToggle("KeepRequiredRebirthGnomes", { Text = "Keep Required Rebirth Gnomes", Default = true })
    onSellAllGnomesNow:AddSlider("SellGnomesDelay", { Suffix = "s", Text = "Sell delay", Max = 10, Default = 0.35, Rounding = 2, Min = 0.1 })
    onSellAllGnomesNow:AddDropdown("KeepGnomes", {
        ExpandColumns = 2,
        Multi = true,
        Default = {},
        Expandable = true,
        AllowNull = true,
        Values = AutoReplaceGroup,
        Text = "Keep gnomes"
    })
    onSellAllGnomesNow:AddButton({ Text = "Sell All Gnomes Now", Func = AutoSellGnomesGroup })
    pT = yo_18.Garden:AddLeftGroupbox("Auto Replace", "replace")
else
    AutoSellGnomesGroup:AddToggle("AutoSellGnomes", { Text = "Auto Sell All Gnomes", Default = false })
    AutoSellGnomesGroup:AddToggle("KeepRequiredRebirthGnomes", { Text = "Keep Required Rebirth Gnomes", Default = true })
    AutoSellGnomesGroup:AddSlider("SellGnomesDelay", { Text = "Sell delay", Default = 0.35, Min = 0.1, Max = 10, Rounding = 2, Suffix = "s" })
    AutoSellGnomesGroup:AddDropdown("KeepGnomes", {
        Text = "Keep gnomes",
        Values = yo_18,
        Multi = true,
        AllowNull = true,
        Default = {},
        Expandable = true,
        ExpandColumns = 2
    })
    AutoSellGnomesGroup:AddButton({ Text = "Sell All Gnomes Now", Func = onSellAllGnomesNow })
    AutoReplaceGroup = pT.Garden:AddLeftGroupbox("Auto Replace", "replace")
end
AutoReplaceGroup:AddToggle("AutoReplace", { Text = "Auto Replace Gnomes", Default = false })
AutoReplaceGroup:AddSlider("ReplaceDelay", { Text = "Replace delay", Default = 0.4, Min = 0.1, Max = 10, Rounding = 2, Suffix = "s" })
AutoReplaceGroup:AddButton({ Text = "Replace Now", Func = onReplaceNow })
local AutoBoostersGroup = pT.Garden:AddRightGroupbox("Auto Boosters", "droplets")
AutoBoostersGroup:AddToggle("AutoSprinkler", { Text = "Auto Sprinkler", Default = false })
AutoBoostersGroup:AddToggle("AutoFertilizer", { Text = "Auto Fertilizer", Default = false })
AutoBoostersGroup:AddSlider("BoostDelay", { Text = "Place delay", Default = 0.4, Min = 0.1, Max = 10, Rounding = 2, Suffix = "s" })
AutoBoostersGroup:AddSlider("BoostSpacing", { Text = "Spacing", Default = 6, Min = 2, Max = 30, Rounding = 1 })
AutoBoostersGroup:AddSlider("SprinklerMax", { Text = "Max sprinklers", Default = 1, Min = 0, Max = 20, Rounding = 0 })
AutoBoostersGroup:AddSlider("FertilizerMax", { Text = "Max fertilizer", Default = 1, Min = 0, Max = 20, Rounding = 0 })
AutoBoostersGroup:AddDropdown("SprinklerItems", { Text = "Sprinklers", Values = yo_12, Multi = true, AllowNull = true, Default = {} })
AutoBoostersGroup:AddDropdown("FertilizerItems", { Text = "Fertilizers", Values = yo_5, Multi = true, AllowNull = true, Default = {} })
AutoBoostersGroup:AddButton({ Text = "Place Boosters Now", Func = pa })
ItemShopGroup = pT.Shop:AddLeftGroupbox("Item Shop", "store")
ItemShopGroup:AddToggle("AutoShop", { Text = "Auto Buy Item Shop", Default = false })
ItemShopGroup:AddSlider("ShopDelay", { Text = "Shop delay", Default = 3, Min = 0.5, Max = 120, Rounding = 1, Suffix = "s" })
ItemShopGroup:AddSlider("ShopBuyDelay", { Text = "Buy delay", Default = 0.25, Min = 0.05, Max = 5, Rounding = 2, Suffix = "s" })
ItemShopGroup:AddSlider("ShopMaxPrice", { Text = "Max price", Default = 0, Min = 0, Max = 1000000, Rounding = 0, Suffix = "$" })
ItemShopGroup:AddSlider("ShopMoneyBuffer", { Text = "Keep money", Default = 0, Min = 0, Max = 100000000, Rounding = 0, Suffix = "$" })
ItemShopGroup:AddDropdown("ShopItems", { Text = "Items", Values = yo_2, Multi = true, AllowNull = true, Default = {} })
ItemShopGroup:AddButton({ Text = "Buy Shop Now", Func = onBuyShopNow })
local UpgradesGroup = pT.Shop:AddRightGroupbox("Upgrades", "arrow-big-up-dash")
UpgradesGroup:AddToggle("AutoUpgrade", { Text = "Auto Buy Affordable Upgrades", Default = false })
UpgradesGroup:AddSlider("UpgradeDelay", { Text = "Upgrade delay", Default = 0.35, Min = 0.1, Max = 30, Rounding = 2, Suffix = "s" })
UpgradesGroup:AddSlider("UpgradeMaxPrice", { Text = "Max price", Default = 0, Min = 0, Max = 100000000, Rounding = 0, Suffix = "$" })
UpgradesGroup:AddSlider("UpgradeMoneyBuffer", { Text = "Keep money", Default = 0, Min = 0, Max = 100000000, Rounding = 0, Suffix = "$" })
UpgradesGroup:AddButton({ Text = "Buy Upgrades Now", Func = onBuyUpgradesNow })
local AutoRebirthGroup = pT.Progress:AddLeftGroupbox("Auto Rebirth", "refresh-cw")
AutoRebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
AutoRebirthGroup:AddSlider("RebirthDelay", { Text = "Rebirth delay", Default = 2, Min = 0.5, Max = 60, Rounding = 1, Suffix = "s" })
AutoRebirthGroup:AddButton({ Text = "Rebirth Now", Func = oU })
local AutoExpandGroup = pT.Progress:AddLeftGroupbox("Auto Expand", "expand")
AutoExpandGroup:AddToggle("AutoExpand", { Text = "Auto Plot Expansion", Default = false })
AutoExpandGroup:AddSlider("ExpandDelay", { Text = "Expand delay", Default = 0.5, Min = 0.2, Max = 30, Rounding = 2, Suffix = "s" })
AutoExpandGroup:AddSlider("ExpandMaxPrice", { Text = "Max price", Default = 0, Min = 0, Max = 100000000, Rounding = 0, Suffix = "$" })
AutoExpandGroup:AddSlider("ExpandMoneyBuffer", { Text = "Keep money", Default = 0, Min = 0, Max = 100000000, Rounding = 0, Suffix = "$" })
AutoExpandGroup:AddButton({ Text = "Expand Now", Func = onExpandNow })
local AutoDailyDealGroup = pT.Progress:AddRightGroupbox("Auto Daily Deal", "calendar-check")
AutoDailyDealGroup:AddToggle("AutoDailyDeal", { Text = "Auto Daily Deal", Default = false })
AutoDailyDealGroup:AddSlider("DailyDealDelay", { Text = "Check delay", Default = 5, Min = 1, Max = 120, Rounding = 1, Suffix = "s" })
AutoDailyDealGroup:AddButton({ Text = "Claim Daily Deal Now", Func = o7 })
local MenuGroup = pT.Settings:AddLeftGroupbox("Menu", "menu")
Library.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton({ Text = "Unload", Func = fns.onUnload })
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
ThemeManager:ApplyToTab(pT.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/roll-a-gnome")
SaveManager:BuildConfigSection(pT.Settings)
SaveManager:LoadAutoloadConfig()
oH = tick()
oF = tick()
pcall(function()
    for i, v in ipairs(getconnections(pn.Idled)) do
        local xO = v
        pcall(function()
            xO:Disable()
        end)
    end
end)
on = fn904
connection = UserInputService.InputBegan:Connect(fns.onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
Library:OnUnload(fn611)
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(fns.worker6)
task.spawn(worker7)
task.spawn(worker8)
task.spawn(worker9)
task.spawn(worker10)
task.spawn(worker11)
task.spawn(worker12)
task.spawn(worker13)
task.spawn(worker14)
task.spawn(worker15)
Library:Notify("Roll A Gnome loaded")
