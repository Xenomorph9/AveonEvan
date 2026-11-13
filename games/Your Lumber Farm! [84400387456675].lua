local fns = {}
local wp_1, wp_3, wp_4, wp_9, wp_12, wp_15, wp_18, wp_20, wp_22, wp_24, wp_27, wp_30, wp_33, RebirthUpgradesGroup, wp_36, wp_39, wp_41, wp_44, wp_47, wp_49, wp_52
local px
local ox
local Label5
local nS
local pk
local og
local oJ
local o7
local n3
local pw
local ow
local oV
local nR
local pj
local of
local oI
local o6
local n2
local Label
local ov
local oU
local connection2
local pi
local SHARED_LumberjackConfig
local CLIENT_InventoryUIController
local o5
local n1
local pu
local ou
local oT
local nP
local od
local oG
local o4
local n0
local pt
local Toggles
local connection3
local SHARED_EventTokenConfig
local pg
local connection
local oF
local o3
local n_
local ps
local oq
local oR
local nN
local SHARED_RebirthConfig
local ob
local pE
local oE
local o2
local nZ
local pr
local op
local oQ
local nM
local pe
local oa
local pD
local oD
local nY
local pq
local oo
local Label6
local nL
local pd
local n9
local pC
local SHARED_ItemConstants
local Label4
local nX
local pp
local om
local CLIENT_BaseController
local nK
local pc
local n8
local pB
local oB
local Knit
local nW
local po
local ol
local oN
local SHARED_RebirthUtils
local n7
local pA
local oA
local oZ
local nV
local pn
local oj
local Label7
local Label2
local n6
local pz
local oz
local oY
local nU
local pm
local oi
local oL
local o9
local n5
local SHARED_PlacementTransform
local SHARED_TreeConfig
local oX
local nT
local pl
local oh
local oK
local Label3
local SHARED_ToolConfig
function fns.fn3(bc)
    local rh = SHARED_LumberjackConfig.getLumberjack(bc)
    return rh and rh.DisplayName or bc
end
function fns.fn7(b2, b3, b4, b5, b6, b7, b8, b9, ca, cb, cc, cd, ce)
    local rK = pm()
    if not rK then
        return
    end
    local rL = pj(b2, b5)
    local rM = tonumber(nV(cb)) or 0
    local rM_1 = Knit.GetService(b8)
    for i, v in ipairs(b4) do
        if oQ.Unloaded then
            return
        end
        local rO = b5[v]
        local rP = rO
        if rP then
            rP = b3 or rL[rO]
        end
        if rP then
            local rP_1 = b6[rO]
            local rQ_2 = rK[b7]
            local rR = rQ_2 and rQ_2.Stock
            local rQ_3 = rP_1
            if rQ_3 then
                rQ_3 = oL(rR, rO) > 0
            end
            if rQ_3 then
                rQ_3 = (rK[ca] or 0) - rP_1 >= rM
            end
            if rQ_3 then
                local rP_2 = rM_1[b9](rM_1, rO, ce)
                local rO_1 = rP_2 and og(cd)
                if rO_1 then
                    oQ:Notify(("Bought %s"):format(v))
                end
                local wait = task.wait
                local rP_3 = nV(cc) or 0.2
                wait(rP_3)
                rK = pm()
                if not rK then
                    return
                end
            end
        end
    end
end
function fns.fn12(d6, d7, d8, d9)
    local sQ = pm()
    if not sQ then
        return
    end
    for k in pairs(sQ[d6]) do
        if oQ.Unloaded then
            return
        end
        if not n2(d7, k) then
            return
        end
        local sR = Knit.GetService("ToolInteractionService"):RequestInteraction(d8, d7, k)
        if not sR then
            return
        end
        if og("PlaceNotify") then
            oQ:Notify(d9)
        end
        task.wait(nV("PlaceActionDelay", 0.2))
        local sQ_1 = pm()
        if not sQ_1 then
            return
        end
    end
end
function fns.fn42()
    local uD = pm()
    if not uD then
        return
    end
    local uE = nV("RollPack")
    local uF = uE and o7[uE]
    if not uF then
        return
    end
    local uF_1 = oZ[uF] or 0
    local uF_2 = tonumber(nV("TokenReserve")) or 0
    if (uD.EventTokens or 0) - uF_1 < uF_2 then
        return
    end
    local uD_1 = Knit.GetService("UnboxingService"):RequestEventPackSpin(uF)
    local uF_4 = uD_1 and og("RollNotify")
    if uF_4 then
        oQ:Notify(("Opened %s"):format(uE))
    end
end
function fns.onCopyJoinScript_JobID()
    local vt = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, po)
    if setclipboard then
        setclipboard(vt)
    elseif toclipboard then
        toclipboard(vt)
    end
    oQ:Notify("Copied join script to clipboard")
end
function fns.fn65(hx)
    local DiscordGroup = hx:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = pg })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = pg })
end
function fns.fn82(bT, bU)
    local rw = {}
    for k, v in pairs(bT) do
        if v then
            local rx = bU[k]
            if rx then
                rw[rx] = true
            end
        end
    end
    return rw
end
function fns.fn89(eG)
    local tc = nU.getPet(eG)
    local td = tc and tc.ItemRarity
    local tc_1 = td
    if td then
        td = SHARED_ItemConstants.RarityIndex[tc_1]
    end
    return tc_1, td or 0
end
function fns.fn108(bj)
    local rn = SHARED_ToolConfig.getTool(bj)
    return rn and rn.DisplayName or bj
end
function fns.fn124()
    local uj = o4()
    local uk = pm()
    if not (uj and uk) then
        return
    end
    for i, v in ipairs(oF(uj)) do
        if oQ.Unloaded then
            return
        end
        if not v:GetAttribute("EggId") then
            local uj_1 = next(uk.Egg)
            if not uj_1 then
                return
            end
            local ul_1 = Knit.GetService("BaseService"):RequestPlaceEgg(v.Name, uj_1)
            local uj_2 = ul_1 and og("EggNotify")
            if uj_2 then
                oQ:Notify("Started incubating an egg")
            end
            task.wait(nV("EggActionDelay", 0.2))
            uk = pm()
            if not uk then
                return
            end
        end
    end
end
function fns.fn130()
    pe("Pet", "Pet", "PlacePet", "Placed a pet")
end
function fns.fn131()
    local vC = pm()
    if not vC then
        return
    end
    local vD = vC.Cash or 0
    Label2:SetText(oN("Cash", n1(vD), om))
    local vD_1 = vC.Gems or 0
    Label3:SetText(oN("Gems", n1(vD_1), oh))
    local vD_2 = vC.EventTokens or 0
    Label4:SetText(oN("Event Tokens", n1(vD_2), od))
    local vD_3 = vC.Rebirths
    local vL = if vD_3 then 1 else 0
    local vJ = 3384 * vL + 4080 * (1 - vL)
    local vK = 819 * vL + 1898 * (1 - vL)
    if not ((vJ * 2377 + vK * 1172 + vJ * vK) % 16777213 == 11775132) then
        vD_3 = 0
    end
    Label5:SetText(oN("Rebirths", tostring(vD_3), ob))
    local getReqCashForNext = SHARED_RebirthConfig.getReqCashForNext
    local vE = vC.Rebirths or 0
    Label6:SetText(oN("Next rebirth", n1(getReqCashForNext(vE)), od))
    Label7:SetText(oN("Plot level", ("%d / %d"):format(of(vC), pk.getMaxExpandLevel()), oh))
end
function fns.fn166(b_, b0)
    if type(b_) ~= "table" then
        return 0
    end
    return b_[b0] or 0
end
function fns.fn226()
    oz(nZ, og("BuyAllTrees"), o5, oY, oT, "TreeStock", "TreeStockService", "PurchaseTree", "Cash", "TreeReserve", "TreeActionDelay", "TreeNotify")
end
function fns.worker6()
    while not oQ.Unloaded do
        if og("AutoRoll") then
            pcall(pB)
        end
        task.wait(nV("RollLoopDelay", 2))
    end
end
function fns.onPlotUpgradeSelection(iv)
    px = iv
end
function fns.fn249()
    oQ.ScreenGui.Parent = pq:WaitForChild("PlayerGui")
end
function fns.fn302()
    oz(pA, og("BuyAllEggs"), pp, pi, pd, "EggStock", "EggStockService", "PurchaseEgg", "Gems", "EggReserve", "EggActionDelay", "EggNotify", 1)
end
function fns.fn309()
    pe("Lumberjack", "Lumberjack", "PlaceLumberjack", "Placed a lumberjack")
end
function fns.fn314()
    local vj_1
    local vi_1
    if identifyexecutor then
        vj_1, vi_1 = identifyexecutor()
        local vk = vj_1 ~= ""
        local vl = type(vj_1) == "string" and vk
        if vl then
            local vk_1 = type(vi_1) == "string" and vi_1 ~= "" and vj_1 .. " " .. vi_1
            n3 = vk_1 or vj_1
        end
    end
end
function fns.onInputBegan()
    o9 = tick()
end
function fns.onUnload()
    oQ:Unload()
end
function fns.worker7()
    while not oQ.Unloaded do
        if og("AutoPlotUpgrades") then
            pcall(ou)
        end
        if og("AutoExpandPlot") then
            pcall(n5)
        end
        if og("AutoRebirthUpgrades") then
            pcall(nW)
        end
        if og("AutoRebirth") then
            pcall(pn)
        end
        task.wait(nV("UpgradeLoopDelay", 3))
    end
end
function fns.onLumberjackSelection(h8)
    pE = h8
end
function fns.fn360()
    oR(pr, og("AllRebirthUpgrades"), ox, oq, "PetUpgrades", pC.getUpgradeGemCost, pC.getMaxLimitLevel, "Gems", "UpgradeGemReserve", "RequestPetUpgrade")
end
function fns.fn362()
    local uK = pm()
    if not uK then
        return
    end
    local uL = of(uK)
    local uS = if uL >= pk.getMaxExpandLevel() then 1 else 0
    if uS == 1 then
        return
    end
    local uM = pk.getExpandGemCost(uL)
    local uL_1 = tonumber(nV("ExpandGemReserve")) or 0
    local uN = not uM
    if not uN then
        local uL_2 = uK.Gems
        local uV = if uL_2 then 1 else 0
        local uT = 357 * uV + 3045 * (1 - uV)
        local uU = 938 * uV + 1023 * (1 - uV)
        if not ((uT * 152 + uU * 212 + uT * uU) % 16777213 == 587986) then
            uL_2 = 0
        end
        uN = uL_2 - uM < uL_1
    end
    if uN then
        return
    end
    local uK_1 = Knit.GetService("UpgradeService"):RequestFarmExpand()
    local uL_3 = uK_1 and og("UpgradeNotify")
    if uL_3 then
        oQ:Notify("Expanded the plot")
    end
end
function fns.fn363(eO)
    local tm_1
    local tk_1
    local tj_1
    local tl_1
    tk_1, tj_1 = nil, nil
    for k, v in pairs(eO.Pet) do
        tl_1, tm_1 = n6(v.ItemId)
        if not tj_1 or tm_1 > tj_1 then
            tk_1 = k
            tj_1 = tm_1
        end
    end
    return tk_1, tj_1 or 0
end
function fns.worker()
    local vw_1
    while true do
        task.wait(1)
        if oQ.Unloaded then
            break
        end
        local vv = math.floor(os.clock() - oU)
        if vv < 60 then
            vw_1 = vv .. "s"
        elseif vv < 3600 then
            vw_1 = string.format("%dm %ds", vv // 60, vv % 60)
        else
            vw_1 = string.format("%dh %dm", vv // 3600, vv % 3600 // 60)
        end
        Label:SetText(oN("Session time", vw_1, od))
    end
end
function fns.fn369()
    oz(pE, og("BuyAllLumberjacks"), ov, op, oi, "LumberjackStock", "LumberjackStockService", "PurchaseLumberjack", "Cash", "LumberjackReserve", "LumberjackActionDelay", "LumberjackNotify")
end
function fns.worker4()
    while not oQ.Unloaded do
        if og("AutoIncubate") then
            pcall(nY)
        end
        if og("AutoCollectEggs") then
            pcall(oJ)
        end
        task.wait(nV("EggLoopDelay", 3))
    end
end
function fns.fn376(aR, aS, aT)
    local qY = {}
    for k, v in pairs(aR) do
        local qZ_1 = #qY + 1
        local q__1 = v.LayoutOrder or 0
        qY[qZ_1] = { id = k, order = q__1, price = v[aT] }
    end
    table.sort(qY, function(aX, aY)
        return aX.order < aY.order
    end)
    local qZ_2 = {}
    local q__2 = {}
    local q0 = {}
    for i, v in ipairs(qY) do
        local qY_1 = string.format("%s (%s)", aS(v.id), n1(v.price))
        q0[#q0 + 1] = qY_1
        qZ_2[qY_1] = v.id
        q__2[v.id] = v.price
    end
    return q0, qZ_2, q__2
end
function fns.onRebirthUpgradeSelection(iz)
    pr = iz
end
function fns.fn432()
    local vc = pD()
    if not vc then
        return
    end
    if not SHARED_RebirthUtils.canRebirth(vc) then
        return
    end
    local vc_1 = Knit.GetService("RebirthService"):RequestRebirth()
    local vd = vc_1 and og("RebirthNotify")
    if vd then
        oQ:Notify("Rebirthed")
    end
end
function fns.fn433()
    local sG = o4()
    local sH = pm()
    if not (sG and sH) then
        return
    end
    for k, v in pairs(sH.Tree) do
        if oQ.Unloaded then
            return
        end
        if not ow(sG, sH, k, v) then
            return
        end
        sH = pm()
        sG = o4()
        if not (sG and sH) then
            return
        end
    end
end
function fns.fn439()
    local ut = o4()
    if not ut then
        return
    end
    local uu = workspace:GetServerTimeNow()
    for i, v in ipairs(oF(ut)) do
        if oQ.Unloaded then
            return
        end
        local attr = v:GetAttribute("HatchAt")
        local uv = v:GetAttribute("EggId") and attr and attr - uu <= 0
        if uv then
            local ut_2 = Knit.GetService("BaseService"):RequestCollectEgg(v.Name)
            local uv_1 = ut_2 and og("EggNotify")
            if uv_1 then
                oQ:Notify("Collected a hatched pet")
            end
            task.wait(nV("EggActionDelay", 0.2))
        end
    end
end
function fns.onTreePickupRarities(im)
    nN = im
end
function fns.fn493()
    local qS = pD()
    return qS and qS.Data
end
function fns.fn501(bI, bJ)
    return (SHARED_ItemConstants.RarityIndex[bI] or 0) < (SHARED_ItemConstants.RarityIndex[bJ] or 0)
end
function fns.onPetReplaceRarities(iq)
    nK = iq
end
function fns.fn549(a5)
    local re = SHARED_TreeConfig.getTree(a5)
    return re and re.DisplayName or a5
end
function fns.fn584(am, an)
    return string.format('<font color="%s">%s</font>', an, am)
end
function fns.worker8()
    while not oQ.Unloaded do
        pcall(oI)
        task.wait(1)
    end
end
function fns.fn629(ap, aq, ar)
    return string.format("<b>%s</b> %s %s", ap, o3("-", "#5a6070"), o3(aq, ar))
end
function fns.fn640()
    oz(nT, og("BuyAllTools"), nX, nS, nM, "ToolStock", "ToolStockService", "PurchaseTool", "Cash", "ToolReserve", "ToolActionDelay", "ToolNotify")
end
function fns.worker3()
    while not oQ.Unloaded do
        if og("AutoPlaceTrees") then
            pcall(n_)
        end
        if og("AutoPlaceLumberjacks") then
            pcall(oa)
        end
        if og("AutoPlacePets") then
            pcall(n0)
        end
        if og("AutoPickupTrees") then
            pcall(nP)
        end
        local wa = if og("AutoReplacePets") then 1 else 0
        if wa == 1 then
            pcall(oE)
        end
        task.wait(nV("PlaceLoopDelay", 2))
    end
end
function fns.worker5()
    while not oQ.Unloaded do
        if og("AutoCollectTokens") then
            pcall(n8)
        end
        task.wait(nV("TokenLoopDelay", 2))
    end
end
function fns.fn714()
    connection:Disconnect()
    connection2:Disconnect()
    pcall(function()
        connection3:Disconnect()
    end)
    print("Your Lumber Farm unloaded")
end
function fns.fn725(ab, ac)
    local qC = ol[ab]
    if qC == nil or qC.Value == nil then
        return ac
    end
    return qC.Value
end
function fns.worker9()
    while not oQ.Unloaded do
        task.wait(2)
        if og("AntiAfk") then
            local wj = tick() - o9
            local wk = tick() - o2
            if wj >= 300 and wk >= 60 then
                pcall(oD)
            else
                if wj < 300 and wk >= 300 then
                    pcall(oD)
                end
            end
        end
    end
end
function fns.fn756()
    local qV = CLIENT_BaseController.getBaseObjectForPlayer(pq)
    if qV and qV.IsLocalPlayerOwner then
        return qV
    end
end
function fns.onInputChanged(ja)
    local UserInputType = ja.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        o9 = tick()
    end
end
function fns.onRscripts()
    if setclipboard then
        setclipboard(pl)
    elseif toclipboard then
        toclipboard(pl)
    end
    oQ:Notify("Copied Rscripts profile to clipboard")
end
function fns.fn814(W)
    local qz = Toggles[W]
    return qz ~= nil and qz.Value == true
end
function fns.fn818(dC, dD, dE, dF)
    local sy_1
    local PlacementAnchor = dC.PlacementAnchor
    if not PlacementAnchor then
        return false
    end
    local ItemId = dF.ItemId
    local sn = oj.getHitboxSize(ItemId, dF)
    if not sn then
        return false
    end
    local sq = dC.TreeHitboxes and { dC.TreeHitboxes } or {}
    local max = math.max
    local sq_1 = sn.X
    local sr = sn.Z
    local ss = tonumber(nV("PlacementStep", 2)) or 2
    local st = max(sq_1, sr, ss)
    local sp_2 = 0
    for k, v in pairs(dC.PatchParts) do
        if dD.UnlockedPatches[k] then
            local sq_2 = PlacementAnchor.CFrame:ToObjectSpace(v.CFrame)
            local sr_1 = v.Size.X / 2 - sn.X / 2
            local ss_1 = v.Size.Z / 2 - sn.Z / 2
            local su = -sr_1
            while su <= sr_1 do
                local sv = -ss_1
                while sv <= ss_1 do
                    if oQ.Unloaded then
                        return false
                    end
                    local sw = PlacementAnchor.CFrame * CFrame.new(sq_2.Position.X + su, sn.Y / 2, sq_2.Position.Z + sv)
                    local sw_1
                    if ps.canPlaceTree(ItemId, sw, dC.PatchParts, dD.UnlockedPatches, sq, dF) then
                        if not n2("Tree", dE) then
                            return false
                        end
                        local sx = SHARED_PlacementTransform.serializeForStorage(SHARED_PlacementTransform.toRelative(PlacementAnchor, sw))
                        sw_1, sy_1 = Knit.GetService("ToolInteractionService"):RequestInteraction("PlaceTree", "Tree", dE, sx)
                        if sw_1 then
                            o6(dC, dE)
                            if og("PlaceNotify") then
                                oQ:Notify("Placed a tree")
                            end
                            return true
                        end
                        if sy_1 ~= "overlap" and sy_1 ~= "invalid_placement" then
                            return false
                        end
                        sp_2 = sp_2 + 1
                        if sp_2 >= 10 then
                            return false
                        end
                    end
                    sv = sv + st
                end
                su = su + st
            end
        end
    end
    return false
end
function fns.fn825()
    local tx_1
    local tu = pm()
    if not tu then
        return
    end
    local tv = {}
    local tv_4
    for k in pairs(tu.PetEscrow) do
        tv[#tv + 1] = k
    end
    for i, v in ipairs(tv) do
        if oQ.Unloaded then
            return
        end
        local tv_1 = tu.PetEscrow[v]
        local tw = tv_1 and tv_1.ItemData
        local tw_1, tw_2
        if tw then
            tw_1, tx_1 = n6(tw.ItemId)
            if tw_1 and nK[tw_1] then
                tw_2, tv_4 = pu(tu)
                if tw_2 and tv_4 > tx_1 then
                    if Knit.GetService("PetService"):RequestRemovePet(v) then
                        task.wait(nV("ReplaceActionDelay", 0.2))
                        if not n2("Pet", tw_2) then
                            return
                        end
                        local tv_5 = Knit.GetService("ToolInteractionService"):RequestInteraction("PlacePet", "Pet", tw_2)
                        local tw_3 = tv_5 and og("ReplaceNotify")
                        if tw_3 then
                            oQ:Notify("Replaced a pet")
                        end
                        task.wait(nV("ReplaceActionDelay", 0.2))
                        tu = pm()
                        if not tu then
                            return
                        end
                    end
                end
            end
        end
    end
end
local function onTreeSelection(h5)
    nZ = h5
end
local function fn839()
    oR(px, og("AllPlotUpgrades"), oG, oB, "LumberjackUpgrades", n9.getUpgradeCashCost, n9.getMaxLimitLevel, "Cash", "UpgradeCashReserve", "RequestLumberjackUpgrade")
end
local function fn844()
    if not workspace.CurrentCamera then
        return
    end
    pw:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    pw:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    o2 = tick()
end
local function fn869(aA)
    local qM = (tonumber(aA))
    local qR = if qM then 1 else 0
    local qP = 83 * qR + 1055 * (1 - qR)
    local qQ = 2621 * qR + 2918 * (1 - qR)
    if not ((qP * 2357 + qQ * 2891 + qP * qQ) % 16777213 == 7990485) then
        qM = 0
    end
    aA = qM
    if aA < 1000 then
        return tostring(math.floor(aA))
    end
    local qM_1 = 0
    while aA >= 1000 and qM_1 < #n7 do
        aA = aA / 1000
        qM_1 = qM_1 + 1
    end
    return string.format("%.2f%s", aA, n7[qM_1])
end
local function fn928(dv, dw)
    local sj_1
    local TreeHitboxes = dv.TreeHitboxes
    if not TreeHitboxes then
        return
    end
    local si = os.clock() + 2
    repeat
        if TreeHitboxes:FindFirstChild(dw) then
            return
        end
        task.wait(0.05)
        sj_1 = oQ.Unloaded or os.clock() > si
    until sj_1
end
local function fn937(gt)
    return pk.getExpandLevelFromUnlockedPatches(gt.UnlockedPatches)
end
local function fn940()
    if setclipboard then
        setclipboard(pt)
    elseif toclipboard then
        toclipboard(pt)
    end
    oQ:Notify("Copied Discord invite to clipboard")
end
local function worker2()
    while not oQ.Unloaded do
        if og("AutoBuyTrees") then
            pcall(pz)
        end
        if og("AutoBuyLumberjacks") then
            pcall(oX)
        end
        if og("AutoBuyEggs") then
            pcall(oo)
        end
        if og("AutoBuyTools") then
            pcall(nR)
        end
        if og("AutoRestock") then
            pcall(pc)
        end
        task.wait(nV("ShopLoopDelay", 2))
    end
end
local function fn1000(di, dj)
    local sa = oK.getCurTool()
    local sb = sa and sa:GetAttribute("ItemUniqueId") == dj
    local sb_2
    if sb then
        return true
    end
    CLIENT_InventoryUIController.selectItemSlot(di, dj)
    local sa_1 = os.clock() + 1.5
    repeat
        task.wait(0.05)
        local sb_1 = oK.getCurTool()
        local sc = sb_1 and sb_1:GetAttribute("ItemUniqueId") == dj
        if sc then
            return true
        end
        sb_2 = oQ.Unloaded or os.clock() > sa_1
    until sb_2
    return false
end
local function fn1030(bq)
    local rq = nL.getEgg(bq)
    return rq and rq.DisplayName or bq
end
local function fn1032(ff)
    local tN = {}
    for i, descendant in ipairs(ff:GetDescendants()) do
        local tO = descendant:IsA("ProximityPrompt") and descendant.Parent and descendant.Parent:IsA("BasePart")
        if tO then
            tN[#tN + 1] = descendant
        end
    end
    return tN
end
local function fn1047(gL, gM, gN, gO, gP, gQ, gR, gS, gT, gU)
    local uZ = pm()
    if not uZ then
        return
    end
    local u_ = tonumber(nV(gT)) or 0
    local u__1 = Knit.GetService("UpgradeService")
    for i, v in ipairs(gN) do
        if oQ.Unloaded then
            return
        end
        if gM or gL[v] then
            local u1_1 = gO[v]
            local u2_1 = (uZ[gP] or {})[u1_1] or 0
            local u3_1 = true
            if u1_1 == "Limit" then
                u3_1 = u2_1 < gR(of(uZ))
            end
            if u3_1 then
                local u2_2 = gQ(u1_1, u2_1)
                local u3_2 = u2_2
                if u3_2 then
                    u3_2 = (uZ[gS] or 0) - u2_2 >= u_
                end
                if u3_2 then
                    local u2_3 = u__1[gU](u__1, u1_1)
                    local u1_2 = u2_3 and og("UpgradeNotify")
                    if u1_2 then
                        oQ:Notify(("%s upgraded"):format(v))
                    end
                    task.wait(nV("UpgradeActionDelay", 0.2))
                    uZ = pm()
                    if not uZ then
                        return
                    end
                end
            end
        end
    end
end
local function fn1061()
    local sX = pm()
    if not sX then
        return
    end
    local sY = {}
    for k in pairs(sX.PlacedTrees) do
        sY[#sY + 1] = k
    end
    for i, v in ipairs(sY) do
        if oQ.Unloaded then
            return
        end
        local sY_1 = sX.PlacedTrees[v]
        local sZ = sY_1 and sY_1.ItemData
        local sY_2 = sZ
        if sZ then
            sZ = SHARED_TreeConfig.getTree(sY_2.ItemId)
        end
        local s_ = sZ
        if sZ then
            sZ = nN[s_.ItemRarity]
        end
        if sZ then
            local sZ_1 = Knit.GetService("TreeService"):RequestRemoveTree(v)
            local s0 = sZ_1 and og("PickupNotify")
            if s0 then
                local sZ_2 = s_.DisplayName or sY_2.ItemId
                oQ:Notify(("Picked up %s"):format(sZ_2))
            end
            task.wait(nV("PickupActionDelay", 0.2))
            sX = pm()
            if not sX then
                return
            end
        end
    end
end
local function fn1068(fD)
    local PlacementAnchor = fD.PlacementAnchor
    local ub = {}
    if not PlacementAnchor then
        return ub
    end
    for i, child in ipairs(PlacementAnchor:GetChildren()) do
        local ua_1 = child:IsA("Attachment") and string.find(child.Name, "Incubator", 1, true)
        if ua_1 then
            ub[#ub + 1] = child
        end
    end
    table.sort(ub, function(fJ, fK)
        return fJ.Name < fK.Name
    end)
    return ub
end
local function onToolSelection(ib)
    nT = ib
end
local function fn1087()
    if not fireproximityprompt then
        return
    end
    local tW = workspace:FindFirstChild(SHARED_EventTokenConfig.LiveTokensFolderName)
    if not tW then
        return
    end
    local Character = pq.Character
    local tY = Character and Character:FindFirstChild("HumanoidRootPart")
    if not tY then
        return
    end
    local CFrame2 = tY.CFrame
    local tZ = false
    for i, v in ipairs(oA(tW)) do
        if oQ.Unloaded then
            break
        end
        local Parent = v.Parent
        if Parent and Parent.Parent then
            tY.CFrame = Parent.CFrame * CFrame.new(0, 3, 0)
            tZ = true
            task.wait(nV("TokenActionDelay", 0.3))
            pcall(fireproximityprompt, v, v.HoldDuration)
            if og("TokenNotify") then
                oQ:Notify("Collected a Bee Coin")
            end
            task.wait(nV("TokenActionDelay", 0.3))
        end
    end
    local tW_2 = tZ and og("TokenReturn")
    if tW_2 then
        tY.CFrame = CFrame2
    end
end
local function onEggSelection(ig)
    pA = ig
end
local function fn1117()
    return oV.getReplicaByUserId(pq.UserId)
end
nK = nil
nL = nil
nM = nil
nN = nil
SHARED_EventTokenConfig = nil
nP = nil
connection2 = nil
nR = nil
nS = nil
nT = nil
nU = nil
nV = nil
nW = nil
nX = nil
nY = nil
nZ = nil
n_ = nil
n0 = nil
n1 = nil
n2 = nil
n3 = nil
SHARED_ToolConfig = nil
n5 = nil
n6 = nil
n7 = nil
n8 = nil
n9 = nil
oa = nil
ob = nil
connection = nil
od = nil
SHARED_LumberjackConfig = nil
of = nil
og = nil
oh = nil
oi = nil
oj = nil
ol = nil
om = nil
oo = nil
op = nil
oq = nil
Toggles = nil
ou = nil
ov = nil
ow = nil
ox = nil
SHARED_TreeConfig = nil
oz = nil
oA = nil
oB = nil
SHARED_ItemConstants = nil
oD = nil
oE = nil
oF = nil
oG = nil
CLIENT_InventoryUIController = nil
oI = nil
oJ = nil
oK = nil
oL = nil
Label7 = nil
oN = nil
CLIENT_BaseController = nil
Label6 = nil
oQ = nil
oR = nil
connection3 = nil
oT = nil
oU = nil
oV = nil
Label5 = nil
oX = nil
oY = nil
oZ = nil
Knit = nil
Label4 = nil
o2 = nil
o3 = nil
o4 = nil
o5 = nil
o6 = nil
o7 = nil
Label3 = nil
o9 = nil
Label2 = nil
SHARED_RebirthUtils = nil
pc = nil
pd = nil
pe = nil
SHARED_RebirthConfig = nil
pg = nil
pi = nil
pj = nil
pk = nil
pl = nil
pm = nil
pn = nil
local SHARED_LuckySpinUtils, ph
po = nil
pp = nil
pq = nil
pr = nil
ps = nil
pt = nil
pu = nil
Label = nil
pw = nil
px = nil
SHARED_PlacementTransform = nil
pz = nil
pA = nil
pB = nil
pC = nil
pD = nil
pE = nil
wp_44, wp_27, pw, pq = nil, nil, nil, nil
local wp_6 = 3
repeat
    local xo = bit32.rrotate(bit32.bxor(bit32.lrotate(wp_6, 20), string.byte(tostring(pq))), 17)
    if bit32.bxor(bit32.lrotate(bit32.bxor(xo, 3554631191), 28), 2101212641) == bit32.lrotate(xo, 28) then
        wp_24 = game:GetService("Players")
        wp_44 = game:GetService("ReplicatedStorage")
        wp_27 = game:GetService("UserInputService")
        pw = game:GetService("VirtualUser")
        pq = wp_24.LocalPlayer
    else
        wp_44 = game:GetService("Players")
        pq = game:GetService("ReplicatedStorage")
        game:GetService("UserInputService")
        wp_27 = game:GetService("VirtualUser")
        pw = wp_44.LocalPlayer
    end
    wp_6 = (wp_6 + 3) % 4
until (wp_6 * 3 + 2) % 4 == 0
if getgenv then
    getgenv().gethui = function()
        return pq:WaitForChild("PlayerGui")
    end
end
wp_39, wp_33, wp_49, Knit, oV, CLIENT_BaseController, oK, CLIENT_InventoryUIController, SHARED_ItemConstants, SHARED_TreeConfig, wp_47, oj, SHARED_LumberjackConfig, wp_9, n9, SHARED_ToolConfig, wp_24, nU, SHARED_EventTokenConfig, nL, wp_15, pC, SHARED_PlacementTransform, ps, pk, SHARED_RebirthConfig, SHARED_RebirthUtils, wp_52, SHARED_LuckySpinUtils, wp_12, oQ, wp_18, wp_36, Toggles, ol, pt, pl, om, oh, od, ob, n7, o5, oY, oT, ov, op, oi, nX, nS, nM, pp, pi, pd, wp_1, o7, oZ, og, nV, pg, o3, oN, n1, pD, pm, o4, wp_30 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
wp_6 = 111
repeat
    wp_20 = (wp_6 * 29 + 27) % 30 + 1
    if wp_20 <= 15 then
        if wp_20 <= 8 then
            if wp_20 <= 4 then
                if wp_20 <= 2 then
                    if wp_20 <= 1 then
                        wp_3 = {
                            "esaoqm",
                            "bqtkzgmyqr",
                            "fdydyy",
                            "qqafezclhzj",
                            "flhpfhzsaqo",
                            "pmhndp",
                            "nqxsggybjgz",
                            "opsrsmpcxas",
                            "ofqizr",
                            "emnjvdxotg",
                            "ognsdeghqq",
                            "eir"
                        }
                        local w6 = wp_6
                        wp_41 = wp_3[w6 % 12 + 1]
                        if wp_41:len() <= wp_41:reverse():rep(w6 % 3 + 2):len() then
                            pg = fn940
                            o3 = fns.fn584
                            oN = fns.fn629
                        else
                            oN = fn940
                            pg = fns.fn584
                            o3 = fns.fn629
                        end
                        wp_6 = (wp_6 + 179) % 240
                    else
                        wp_3 = (vector.create((wp_6 * 6 + 6) % 11 + 1, (wp_6 * 10 + 10) % 13 + 1, (wp_6 * 8 + 9) % 17 + 1))
                        local xx = vector.floor(wp_3) + vector.ceil(wp_3 * -1)
                        if vector.dot(xx, xx) == 3 then
                            oh = "#7fd47f"
                            om = "#6ec1ff"
                        else
                            om = "#7fd47f"
                            oh = "#6ec1ff"
                        end
                        wp_6 = (wp_6 + 59) % 240
                    end
                elseif wp_20 <= 3 then
                    if wp_6 * 132603557 + 2 + 4 >= wp_6 * 132603557 + 2 + 4 + 6 then
                        n1 = "#e8a34d"
                        n7 = "#8b93a3"
                        od = { "Qi", "M", "K", "B", "Sp", "Qa", "T", "Sx" }
                        ob = fn869
                    else
                        od = "#e8a34d"
                        ob = "#8b93a3"
                        n7 = { "K", "M", "B", "T", "Qa", "Qi", "Sx", "Sp" }
                        n1 = fn869
                    end
                    wp_6 = (wp_6 + 29) % 240
                else
                    wp_3 = {
                        "ugek",
                        "dcnfkvvat",
                        "msuw",
                        "mjlz",
                        "ebxidffsbyi",
                        "npcs",
                        "bxrdpl",
                        "zpc",
                        "urg",
                        "rfphvchr",
                        "dbyihmiwqunl",
                        "xldtfo"
                    }
                    if wp_3[(wp_6 * 19 + 83) % 12 + 1] <= wp_3[(wp_6 * 19 + 83) % 12 + 1] then
                        pD = fn1117
                        pm = fns.fn493
                        o4 = fns.fn756
                    else
                        o4 = fn1117
                        pD = fns.fn493
                        pm = fns.fn756
                    end
                    wp_6 = (wp_6 + 89) % 240
                end
            elseif wp_20 <= 6 then
                if wp_20 <= 5 then
                    local xe = bit32.rrotate(bit32.bxor(bit32.lrotate(wp_6, 13), string.byte(tostring(oi))), 11)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(xe, 3790789935), 109407618), (bit32.bxor(bit32.band(xe, 504177360), 730960948))), 109407618), 730960948) == xe then
                        wp_30 = fns.fn376
                        o5, oY, oT = wp_30(wp_47.Stock, fns.fn549, "CashPrice")
                        ov, op, oi = wp_30(wp_9.Stock, fns.fn3, "CashPrice")
                        nX, nS, nM = wp_30(wp_24.Stock, fns.fn108, "CashPrice")
                        pp, pi, pd = wp_30(wp_15.Stock, fn1030, "GemsPrice")
                    else
                        pd = fns.fn376
                        nM, pi, wp_15 = pd(wp_30.Stock, fns.fn549, "CashPrice")
                        wp_9, oi, oY = pd(pp.Stock, fns.fn3, "CashPrice")
                        nS, nX, ov = pd(oT.Stock, fns.fn108, "CashPrice")
                        wp_24, op, wp_47 = pd(o5.Stock, fn1030, "GemsPrice")
                    end
                    wp_6 = (wp_6 + 149) % 240
                else
                    wp_3 = (vector.create((wp_6 * 4 + 4) % 11 + 1, (wp_6 * 4 + 8) % 13 + 1, (wp_6 * 3 + 13) % 17 + 1))
                    wp_41 = (vector.create((wp_6 * 4 + 6) % 11 + 1, (wp_6 * 5 + 8) % 13 + 1, (wp_6 * 5 + 9) % 17 + 1))
                    local xm = vector.dot(wp_3, wp_41)
                    if xm * xm <= vector.dot(wp_3, wp_3) * vector.dot(wp_41, wp_41) then
                        wp_1 = {}
                        o7 = {}
                        oZ = {}
                    else
                        oZ = {}
                        wp_1 = {}
                        o7 = {}
                    end
                    wp_6 = (wp_6 + 209) % 240
                end
            elseif wp_20 <= 7 then
                wp_3 = (vector.create((wp_6 * 7 + 8) % 11 + 1, (wp_6 * 1 + 4) % 13 + 1, (wp_6 * 15 + 16) % 17 + 1))
                wp_41 = (vector.create((wp_6 * 5 + 6) % 11 + 1, (wp_6 * 2 + 12) % 13 + 1, (wp_6 * 2 + 10) % 17 + 1))
                wp_22 = (vector.create((wp_6 * 1 + 1) % 11 + 1, (wp_6 * 6 + 9) % 13 + 1, (wp_6 * 15 + 17) % 17 + 1))
                if vector.dot(vector.cross(wp_3, wp_41), wp_22) == vector.dot(vector.cross(wp_41, wp_22), wp_3) + 2 then
                    oV = "Your Lumber Farm"
                else
                    wp_39 = "Your Lumber Farm"
                end
                wp_6 = (wp_6 + 239) % 240
            else
                if (not n7 and not SHARED_ItemConstants or (not n7 or not n7) or not oY and pd and (n7 and n7) or SHARED_RebirthConfig and SHARED_RebirthConfig and (not oY and SHARED_ItemConstants) and (not SHARED_RebirthConfig or SHARED_ItemConstants or (pd or SHARED_ItemConstants))) and ((oY and pd or not oY and n7 or oY and not SHARED_RebirthConfig and (not n7 or not pd)) and ((not SHARED_RebirthConfig and not n7 or (not n7 or pd)) and ((nX or oY) and (n7 or nX)))) and not ((not n7 and not SHARED_ItemConstants or (not n7 or not n7) or not oY and pd and (n7 and n7) or SHARED_RebirthConfig and SHARED_RebirthConfig and (not oY and SHARED_ItemConstants) and (not SHARED_RebirthConfig or SHARED_ItemConstants or (pd or SHARED_ItemConstants))) and ((oY and pd or not oY and n7 or oY and not SHARED_RebirthConfig and (not n7 or not pd)) and ((not SHARED_RebirthConfig and not n7 or (not n7 or pd)) and ((nX or oY) and (n7 or nX))))) then
                    wp_44 = wp_33:WaitForChild("SharedSource")
                else
                    wp_33 = wp_44:WaitForChild("SharedSource")
                end
                wp_6 = (wp_6 + 89) % 240
            end
        elseif wp_20 <= 12 then
            if wp_20 <= 10 then
                if wp_20 <= 9 then
                    wp_3 = { "sdlgvoxoe", "tlqrujzn", "lnisvzwsxll", "rys", "biffdiinnh", "uhbofolom", "epowwop", "yciu" }
                    local xn = wp_6
                    wp_41 = wp_3[xn % 8 + 1]
                    if wp_41:len() >= wp_41:gsub("(.)", "%1%1", xn % 3 % 2 + 1):len() then
                        wp_44 = wp_49:WaitForChild("ClientSource")
                    else
                        wp_49 = wp_44:WaitForChild("ClientSource")
                    end
                    wp_6 = (wp_6 + 59) % 240
                else
                    wp_3 = { "qhr", "fast", "bfwon", "pnmp", "toht", "fiwezrcqt", "qayja", "dbk", "bmij", "hajjucuza" }
                    local xg = wp_6
                    wp_41 = wp_3[xg % 10 + 1]
                    if wp_41:len() <= wp_41:gsub("(.)", "%1%1", xg % 3 % 2 + 1):len() then
                        Knit = require(wp_44:WaitForChild("Packages"):WaitForChild("Knit"))
                    else
                        wp_44 = require(Knit:WaitForChild("Packages"):WaitForChild("Knit"))
                    end
                    wp_6 = (wp_6 + 59) % 240
                end
            elseif wp_20 <= 11 then
                if pi and pi and (o5 and wp_24) and (wp_24 or pi or ps and wp_24) or (o7 and not o7 or (not o7 or not wp_24)) and (o5 and ps or (pi or not o7)) or not (pi and pi and (o5 and wp_24) and (wp_24 or pi or ps and wp_24) or (o7 and not o7 or (not o7 or not wp_24)) and (o5 and ps or (pi or not o7))) then
                    oV = require(wp_49.PlayerData.CLIENT_PlayerDataController)
                    CLIENT_BaseController = require(wp_49.Base.CLIENT_BaseController)
                else
                    wp_49 = require(CLIENT_BaseController.PlayerData.CLIENT_PlayerDataController)
                    oV = require(CLIENT_BaseController.Base.CLIENT_BaseController)
                end
                wp_6 = (wp_6 + 119) % 240
            else
                wp_3 = {
                    "ooavt",
                    "jtycsbbfx",
                    "vktex",
                    "avbtutqxibb",
                    "ibss",
                    "rzbgluzvx",
                    "mwrgtz",
                    "nbs",
                    "acpktgnwlpl",
                    "mupfjeln",
                    "zksoex",
                    "eomfhjkys",
                    "djz",
                    "xmsx",
                    "nthzfmocvcu",
                    "aiiazvseq"
                }
                if wp_3[(wp_6 * 25 + 109) % 16 + 1] <= wp_3[(wp_6 * 25 + 109) % 16 + 1] then
                    oK = require(wp_49.Tool.CLIENT_ToolController)
                    CLIENT_InventoryUIController = require(wp_49.Inventory.CLIENT_InventoryUIController)
                else
                    wp_49 = require(CLIENT_InventoryUIController.Tool.CLIENT_ToolController)
                    oK = require(CLIENT_InventoryUIController.Inventory.CLIENT_InventoryUIController)
                end
                wp_6 = (wp_6 + 29) % 240
            end
        elseif wp_20 <= 14 then
            if wp_20 <= 13 then
                wp_3 = (vector.create((wp_6 * 4 + 1) % 11 + 1, (wp_6 * 3 + 6) % 13 + 1, (wp_6 * 11 + 16) % 17 + 1))
                wp_41 = (vector.create((wp_6 * 7 + 2) % 11 + 1, (wp_6 * 8 + 6) % 13 + 1, (wp_6 * 6 + 13) % 17 + 1))
                wp_22 = (vector.create((wp_6 * 7 + 7) % 11 + 1, (wp_6 * 8 + 2) % 13 + 1, (wp_6 * 10 + 2) % 17 + 1))
                wp_4 = (vector.create((wp_6 * 1 + 4) % 5 + 1, (wp_6 * 3 + 3) % 7 + 1, (wp_6 * 4 + 7) % 9 + 1))
                if vector.dot(vector.cross(wp_3, (vector.cross(wp_41, wp_22))), wp_4) == vector.dot(wp_41 * vector.dot(wp_3, wp_22) - wp_22 * vector.dot(wp_3, wp_41), wp_4) then
                    SHARED_ItemConstants = require(wp_33.Item.SHARED_ItemConstants)
                else
                    wp_33 = require(SHARED_ItemConstants.Item.SHARED_ItemConstants)
                end
                wp_6 = (wp_6 + 239) % 240
            else
                if wp_6 * 2678577 + 11 + 6 >= wp_6 * 2678577 + 11 + 6 + 3 then
                    wp_33 = require(SHARED_TreeConfig.Tree.SHARED_TreeConfig)
                else
                    SHARED_TreeConfig = require(wp_33.Tree.SHARED_TreeConfig)
                end
                wp_6 = (wp_6 + 149) % 240
            end
        else
            wp_3 = {
                "aaeqsya",
                "qgbcy",
                "jilw",
                "beapwzbqadj",
                "wtnmrd",
                "hcksdpcjvfg",
                "kvtsqfpi",
                "ebjsmngxo",
                "kfplmne",
                "sacvkfwei",
                "drdkgrlmhbe",
                "vpuphb"
            }
            local w3 = wp_6
            wp_41 = wp_3[w3 % 12 + 1]
            if wp_41:len() <= wp_41:reverse():rep(w3 % 3 + 2):len() then
                wp_47 = require(wp_33.Tree.SHARED_TreeStockConfig)
            else
                wp_33 = require(wp_47.Tree.SHARED_TreeStockConfig)
            end
            wp_6 = (wp_6 + 59) % 240
        end
    elseif wp_20 <= 23 then
        if wp_20 <= 19 then
            if wp_20 <= 17 then
                if wp_20 <= 16 then
                    local wX = bit32.rrotate(bit32.bxor(bit32.lrotate(wp_6, 13), string.byte(tostring(o3))), 9)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(wX, 46765633), 1391250659), (bit32.bxor(bit32.band(wX, 4248201662), 2563061066))), 1391250659), 2563061066) == wX then
                        oj = require(wp_33.Tree.SHARED_TreeModelUtils)
                        SHARED_LumberjackConfig = require(wp_33.Lumberjack.SHARED_LumberjackConfig)
                    else
                        wp_33 = require(SHARED_LumberjackConfig.Tree.SHARED_TreeModelUtils)
                        oj = require(SHARED_LumberjackConfig.Lumberjack.SHARED_LumberjackConfig)
                    end
                    wp_6 = (wp_6 + 179) % 240
                else
                    wp_3 = (vector.create((wp_6 * 6 + 9) % 11 + 1, (wp_6 * 6 + 8) % 13 + 1, (wp_6 * 3 + 13) % 17 + 1))
                    wp_41 = (vector.create((wp_6 * 5 + 1) % 11 + 1, (wp_6 * 10 + 8) % 13 + 1, (wp_6 * 3 + 4) % 17 + 1))
                    wp_22 = (vector.create((wp_6 * 2 + 3) % 11 + 1, (wp_6 * 3 + 7) % 13 + 1, (wp_6 * 2 + 14) % 17 + 1))
                    wp_4 = (vector.create((wp_6 * 3 + 4) % 11 + 1, (wp_6 * 8 + 13) % 13 + 1, (wp_6 * 12 + 5) % 17 + 1))
                    if vector.dot(vector.cross(wp_3, wp_41), (vector.cross(wp_22, wp_4))) == vector.dot(wp_3, wp_22) * vector.dot(wp_41, wp_4) - vector.dot(wp_3, wp_4) * vector.dot(wp_41, wp_22) then
                        wp_9 = require(wp_33.Lumberjack.SHARED_LumberjackStockConfig)
                    else
                        wp_33 = require(wp_9.Lumberjack.SHARED_LumberjackStockConfig)
                    end
                    wp_6 = (wp_6 + 179) % 240
                end
            elseif wp_20 <= 18 then
                wp_3 = (vector.create((wp_6 * 2 + 8) % 11 + 1, (wp_6 * 5 + 11) % 13 + 1, (wp_6 * 8 + 13) % 17 + 1))
                wp_41 = (vector.create((wp_6 * 7 + 5) % 11 + 1, (wp_6 * 10 + 12) % 13 + 1, (wp_6 * 1 + 11) % 17 + 1))
                local wU = vector.cross(wp_3, wp_41)
                local wV = vector.dot(wp_3, wp_41)
                if vector.dot(wU, wU) + wV * wV == vector.dot(wp_3, wp_3) * vector.dot(wp_41, wp_41) + 2 then
                    wp_33 = require(SHARED_ToolConfig.Lumberjack.SHARED_LumberjackUpgradeConstants)
                    n9 = require(SHARED_ToolConfig.Tool.SHARED_ToolConfig)
                else
                    n9 = require(wp_33.Lumberjack.SHARED_LumberjackUpgradeConstants)
                    SHARED_ToolConfig = require(wp_33.Tool.SHARED_ToolConfig)
                end
                wp_6 = (wp_6 + 29) % 240
            else
                if wp_6 * 13080597 + 7 + 4 >= wp_6 * 13080597 + 7 + 4 + 6 then
                    wp_33 = require(wp_24.Tool.SHARED_ToolStockConfig)
                else
                    wp_24 = require(wp_33.Tool.SHARED_ToolStockConfig)
                end
                wp_6 = (wp_6 + 209) % 240
            end
        elseif wp_20 <= 21 then
            if wp_20 <= 20 then
                if wp_6 * 121455979 + 13 + 6 >= wp_6 * 121455979 + 13 + 6 + 6 then
                    wp_33 = require(SHARED_EventTokenConfig.Pet.SHARED_PetConfig)
                    nL = require(SHARED_EventTokenConfig.EventToken.SHARED_EventTokenConfig)
                    nU = require(SHARED_EventTokenConfig.Egg.SHARED_EggConfig)
                else
                    nU = require(wp_33.Pet.SHARED_PetConfig)
                    SHARED_EventTokenConfig = require(wp_33.EventToken.SHARED_EventTokenConfig)
                    nL = require(wp_33.Egg.SHARED_EggConfig)
                end
                wp_6 = (wp_6 + 179) % 240
            else
                wp_3 = (vector.create((wp_6 * 2 + 2) % 11 + 1, (wp_6 * 11 + 3) % 13 + 1, (wp_6 * 15 + 15) % 17 + 1))
                wp_41 = (vector.create((wp_6 * 6 + 2) % 11 + 1, (wp_6 * 5 + 13) % 13 + 1, (wp_6 * 3 + 8) % 17 + 1))
                wp_22 = (vector.create((wp_6 * 6 + 2) % 11 + 1, (wp_6 * 11 + 7) % 13 + 1, (wp_6 * 8 + 10) % 17 + 1))
                wp_4 = (vector.create((wp_6 * 2 + 1) % 11 + 1, (wp_6 * 1 + 3) % 13 + 1, (wp_6 * 6 + 11) % 17 + 1))
                if vector.dot(vector.cross(wp_3, wp_41), (vector.cross(wp_22, wp_4))) == vector.dot(wp_3, wp_22) * vector.dot(wp_41, wp_4) - vector.dot(wp_3, wp_4) * vector.dot(wp_41, wp_22) + 3 then
                    wp_33 = require(wp_15.Egg.SHARED_EggStockConfig)
                else
                    wp_15 = require(wp_33.Egg.SHARED_EggStockConfig)
                end
                wp_6 = (wp_6 + 149) % 240
            end
        elseif wp_20 <= 22 then
            if wp_6 * 94268201 + 7 + 1 <= wp_6 * 94268201 + 7 + 1 + 1 then
                pC = require(wp_33.Pet.SHARED_PetUpgradeConstants)
                SHARED_PlacementTransform = require(wp_33.Placement.SHARED_PlacementTransform)
            else
                wp_33 = require(SHARED_PlacementTransform.Pet.SHARED_PetUpgradeConstants)
                pC = require(SHARED_PlacementTransform.Placement.SHARED_PlacementTransform)
            end
            wp_6 = (wp_6 + 29) % 240
        else
            wp_3 = (vector.create((wp_6 * 5 + 8) % 11 + 1, (wp_6 * 5 + 8) % 13 + 1, (wp_6 * 3 + 15) % 17 + 1))
            wp_41 = (vector.create((wp_6 * 3 + 8) % 11 + 1, (wp_6 * 8 + 5) % 13 + 1, (wp_6 * 9 + 17) % 17 + 1))
            wp_22 = (vector.create((wp_6 * 5 + 4) % 11 + 1, (wp_6 * 8 + 12) % 13 + 1, (wp_6 * 11 + 12) % 17 + 1))
            wp_4 = (vector.create((wp_6 * 1 + 2) % 5 + 1, (wp_6 * 2 + 6) % 7 + 1, (wp_6 * 2 + 3) % 9 + 1))
            if vector.dot(vector.cross(wp_3, (vector.cross(wp_41, wp_22))), wp_4) == vector.dot(wp_41 * vector.dot(wp_3, wp_22) - wp_22 * vector.dot(wp_3, wp_41), wp_4) + 5 then
                pk = require(SHARED_RebirthConfig.Placement.SHARED_PlacementValidation)
                wp_33 = require(SHARED_RebirthConfig.Placement.SHARED_FarmExpandConstants)
                ps = require(SHARED_RebirthConfig.Rebirth.SHARED_RebirthConfig)
            else
                ps = require(wp_33.Placement.SHARED_PlacementValidation)
                pk = require(wp_33.Placement.SHARED_FarmExpandConstants)
                SHARED_RebirthConfig = require(wp_33.Rebirth.SHARED_RebirthConfig)
            end
            wp_6 = (wp_6 + 209) % 240
        end
    elseif wp_20 <= 27 then
        if wp_20 <= 25 then
            if wp_20 <= 24 then
                if wp_6 * 101430905 + 8 + 1 >= wp_6 * 101430905 + 8 + 1 + 2 then
                    wp_33 = require(SHARED_RebirthUtils.Rebirth.SHARED_RebirthUtils)
                else
                    SHARED_RebirthUtils = require(wp_33.Rebirth.SHARED_RebirthUtils)
                end
                wp_6 = (wp_6 + 89) % 240
            else
                if wp_6 * 115602299 + 4 + 2 <= wp_6 * 115602299 + 4 + 2 + 3 then
                    wp_52 = require(wp_33.Event.SHARED_EventPacksGlobalData)
                else
                    wp_33 = require(wp_52.Event.SHARED_EventPacksGlobalData)
                end
                wp_6 = (wp_6 + 89) % 240
            end
        elseif wp_20 <= 26 then
            wp_3 = {
                "fjqg",
                "khmzge",
                "isqnxv",
                "ufllukyhvk",
                "nujfkuby",
                "isplo",
                "vmbgeddljjny",
                "ztgej",
                "beigqxr",
                "jsgjym",
                "cro"
            }
            if wp_3[(wp_6 * 22 + 43) % 11 + 1] < wp_3[(wp_6 * 22 + 43) % 11 + 1] then
                wp_33 = require(SHARED_LuckySpinUtils.LuckySpin.SHARED_LuckySpinUtils)
            else
                SHARED_LuckySpinUtils = require(wp_33.LuckySpin.SHARED_LuckySpinUtils)
            end
            wp_6 = (wp_6 + 209) % 240
        else
            wp_3 = (vector.create((wp_6 * 6 + 7) % 11 + 1, (wp_6 * 2 + 13) % 13 + 1, (wp_6 * 7 + 13) % 17 + 1))
            wp_41 = (vector.create((wp_6 * 6 + 8) % 11 + 1, (wp_6 * 6 + 12) % 13 + 1, (wp_6 * 14 + 13) % 17 + 1))
            local w9 = vector.dot(wp_3, wp_41)
            if w9 * w9 <= vector.dot(wp_3, wp_3) * vector.dot(wp_41, wp_41) then
                wp_12 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
            else
                pd = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
            end
            wp_6 = (wp_6 + 29) % 240
        end
    elseif wp_20 <= 29 then
        if wp_20 <= 28 then
            wp_20 = {
                "vzl",
                "lrkrorqc",
                "eqrs",
                "eplika",
                "qphs",
                "czwktopjlc",
                "xcptcnmhy",
                "bsmenbemsct",
                "ltyeu",
                "guxvczdaoe",
                "imnitnnpjgx"
            }
            local xr = wp_6
            wp_3 = wp_20[xr % 11 + 1]
            if wp_3:len() <= wp_3:gsub("(.)", "%1%1", xr % 3 % 2 + 1):len() then
                oQ = loadstring(game:HttpGet(wp_12 .. "Library.lua"))()
                pcall(fns.fn249)
                wp_18 = loadstring(game:HttpGet(wp_12 .. "addons/ThemeManager.lua"))()
                wp_36 = loadstring(game:HttpGet(wp_12 .. "addons/SaveManager.lua"))()
                Toggles = oQ.Toggles
                ol = oQ.Options
            else
                wp_36 = loadstring(game:HttpGet(Toggles .. "Library.lua"))()
                pcall(fns.fn249)
                oQ = loadstring(game:HttpGet(Toggles .. "addons/ThemeManager.lua"))()
                ol = loadstring(game:HttpGet(Toggles .. "addons/SaveManager.lua"))()
                wp_18 = wp_36.Toggles
                wp_12 = wp_36.Options
            end
            wp_6 = (wp_6 + 89) % 240
        else
            wp_20 = (vector.create((wp_6 * 5 + 7) % 11 + 1, (wp_6 * 8 + 9) % 13 + 1, (wp_6 * 4 + 12) % 17 + 1))
            local wW = vector.floor(wp_20) + vector.ceil(wp_20 * -1)
            if vector.dot(wW, wW) == 0 then
                og = fns.fn814
                nV = fns.fn725
                pt = "https://discord.gg/ehKVq7pf7v"
            else
                pt = fns.fn814
                og = fns.fn725
                nV = "https://discord.gg/ehKVq7pf7v"
            end
            wp_6 = (wp_6 + 119) % 240
        end
    else
        local xh = bit32.rrotate(bit32.bxor(bit32.lrotate(wp_6, 26), string.byte(tostring(wp_33))), 12)
        if bit32.bxor(bit32.lrotate(bit32.bxor(xh, 1193542240), 30), 298385560) ~= bit32.lrotate(xh, 30) then
            om = "https://rscripts.net/@Ouroboros"
        else
            pl = "https://rscripts.net/@Ouroboros"
        end
        wp_6 = (wp_6 + 59) % 240
    end
until (wp_6 * 119 + 231) % 240 == 0
for k, v in pairs(wp_52.Packs) do
    if v.Active then
        wp_24 = v.DisplayName or k
        wp_6 = wp_24
        wp_1[#wp_1 + 1] = wp_6
        o7[wp_6] = k
        wp_24 = v.SpinCost or 0
        oZ[k] = wp_24
    end
end
oG, oB, ox, oq, wp_44 = nil, nil, nil, nil, nil
wp_6 = 0
while true do
    do
        local xj = bit32.rrotate(bit32.bxor(bit32.lrotate(wp_6, 7), string.byte(tostring(oq))), 17)
        if bit32.bxor(bit32.lrotate(bit32.bxor(xj, 2308898404), 0), 2308898404) ~= bit32.lrotate(xj, 0) then
            table.sort(ox)
            wp_1 = { "Worker Speed", "Worker Limit", "Worker Power" }
            wp_44 = { ["Worker Speed"] = "Speed", ["Worker Power"] = "Power", ["Worker Limit"] = "Limit" }
            oq = { "Pet Power", "Pet Limit", "Pet Speed" }
            oG = { ["Pet Speed"] = "Speed", ["Pet Limit"] = "Limit", ["Pet Power"] = "Power" }
            oB = {}
        else
            table.sort(wp_1)
            oG = { "Worker Limit", "Worker Power", "Worker Speed" }
            oB = { ["Worker Limit"] = "Limit", ["Worker Power"] = "Power", ["Worker Speed"] = "Speed" }
            ox = { "Pet Limit", "Pet Power", "Pet Speed" }
            oq = { ["Pet Limit"] = "Limit", ["Pet Power"] = "Power", ["Pet Speed"] = "Speed" }
            wp_44 = {}
        end
        wp_6 = (wp_6 + 1) % 8
        if (wp_6 * 3 + 0) % 8 == 3 then
            break
        end
        continue
    end
end
for k in pairs(SHARED_ItemConstants.ItemRarities) do
    wp_44[#wp_44 + 1] = k
end
nZ, nT, nN, nK, pE, pA, px, pr, ph, wp_47, pj, oL, oz, pz, oX, oo, nR, pc, n2, o6, ow, n_, pe, oa, n0, nP, n6, pu, oE, oA, n8, oF, nY, oJ, pB, of, n5, oR, ou, nW, pn = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
table.sort(wp_44, fns.fn501)
nZ = {}
nT = {}
nN = {}
nK = {}
pE = {}
pA = {}
px = {}
pr = {}
pj = fns.fn82
oL = fns.fn166
oz = fns.fn7
pz = fns.fn226
oX = fns.fn369
oo = fns.fn302
nR = fns.fn640
ph = {
    { key = "TreeStock", service = "TreeStockService" },
    { key = "LumberjackStock", service = "LumberjackStockService" },
    { key = "EggStock", service = "EggStockService" },
    { key = "ToolStock", service = "ToolStockService" }
}
pc = function()
    local r_ = pm()
    if not r_ then
        return
    end
    local r0 = workspace:GetServerTimeNow()
    for i, v in ipairs(ph) do
        local r9 = v
        if oQ.Unloaded then
            return
        end
        local r1 = r_[r9.key]
        local r2 = r1 and r1.RefreshAtTimestamp
        local r1_1 = r2
        if r2 then
            r2 = r0 >= r1_1
        end
        if r2 then
            pcall(function()
                Knit.GetService(r9.service):RequestRefresh()
            end)
            task.wait(0.2)
        end
    end
end
n2 = fn1000
o6 = fn928
ow = fns.fn818
n_ = fns.fn433
pe = fns.fn12
oa = fns.fn309
n0 = fns.fn130
nP = fn1061
n6 = fns.fn89
pu = fns.fn363
oE = fns.fn825
oA = fn1032
if (not wp_47 and not wp_47 or (o6 or o6) or (not ow and not ow or not ow and wp_47)) and not (not wp_47 and not wp_47 or (o6 or o6) or (not ow and not ow or not ow and wp_47)) then
    oJ = fn1087
    nY = fn1068
    n8 = fns.fn124
    pB = fns.fn439
    oF = fns.fn42
else
    n8 = fn1087
    oF = fn1068
    nY = fns.fn124
    oJ = fns.fn439
    pB = fns.fn42
end
of = fn937
n5 = fns.fn362
oR = fn1047
ou = fn839
nW = fns.fn360
pn = fns.fn432
wp_24 = oQ:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = pt, Copyable = true }, "|", wp_39 },
    Icon = 12645376577,
    NotifySide = "Right",
    Size = UDim2.fromOffset(900, 640),
    ShowCustomCursor = false,
    CornerRadius = 10
})
oQ.ShowCustomCursor = false
wp_47 = {
    Info = wp_24:AddTab("Info", "info"),
    Shop = wp_24:AddTab("Shop", "shopping-cart"),
    Place = wp_24:AddTab("Place", "trees"),
    Eggs = wp_24:AddTab("Eggs", "egg"),
    Event = wp_24:AddTab("Event", "coins"),
    Upgrades = wp_24:AddTab("Upgrades", "trending-up"),
    Settings = wp_24:AddTab("Settings", "settings")
}
wp_9 = fns.fn65
for k, v in wp_47 do
    wp_9(v)
end
n3, wp_6, wp_12, Label, po, wp_30 = nil, nil, nil, nil, nil, nil
wp_24 = 10
repeat
    wp_9 = (wp_24 * 2 + 0) % 3 + 1
    if wp_9 <= 2 then
        if wp_9 <= 1 then
            wp_9 = {
                "eitcaykypyt",
                "jyqctahoyz",
                "zwxyexyxc",
                "ijrlay",
                "rheb",
                "gsvtshv",
                "lmxgqgcueyy",
                "fjhk",
                "eysbsqiuayc",
                "armu",
                "cbttgghgg",
                "zmjw"
            }
            local xq = wp_24
            wp_49 = wp_9[xq % 12 + 1]
            if wp_49:len() <= wp_49:reverse():rep(xq % 3 + 2):len() then
                po = tostring(game.JobId)
            else
                wp_12 = tostring(game.JobId)
            end
            wp_24 = (wp_24 + 20) % 24
        else
            if wp_24 * 99822221 + 7 + 3 >= wp_24 * 99822221 + 7 + 3 + 1 then
                po = #wp_30 > 18
            else
                wp_30 = #po > 18
            end
            wp_24 = (wp_24 + 20) % 24
        end
    else
        wp_9 = {
            "nkvawxtvcqt",
            "oxtvtel",
            "rvrb",
            "jnutklk",
            "bmabptislwl",
            "wixw",
            "yclmxqsobxzu",
            "wtuxsgp",
            "wmequj",
            "spqssxlej",
            "rzkjvrzvpn",
            "ytofggqb",
            "qjqnoleqiqny",
            "krq",
            "ijh"
        }
        if wp_9[(wp_24 * 81 + 28) % 15 + 1] <= wp_9[(wp_24 * 81 + 28) % 15 + 1] then
            n3 = "Unknown"
            pcall(fns.fn314)
            wp_6 = wp_47.Info:AddLeftGroupbox("Account", "circle-user")
            wp_6:AddLabel(oN("User", pq.Name, om), true)
            wp_6:AddLabel(oN("Status", "Keyless", om), true)
            wp_6:AddLabel(oN("Executor", n3, om), true)
            wp_12 = wp_47.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            wp_12:AddLabel(o3(wp_39 .. " [" .. tostring(game.PlaceId) .. "]", oh), true)
            wp_12:AddLabel(oN("Place ID", tostring(game.PlaceId), oh), true)
            Label = wp_12:AddLabel(oN("Session time", "0s", od), true)
        else
            om = "Unknown"
            pcall(fns.fn314)
            od = wp_6.Info:AddLeftGroupbox("Account", "circle-user")
            od:AddLabel(oh("User", oN.Name, Label), true)
            od:AddLabel(oh("Status", "Keyless", Label), true)
            od:AddLabel(oh("Executor", om, Label), true)
            wp_39 = wp_6.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            wp_39:AddLabel(wp_12(wp_47 .. " [" .. tostring(game.PlaceId) .. "]", o3), true)
            wp_39:AddLabel(oh("Place ID", tostring(game.PlaceId), o3), true)
            pq = wp_39:AddLabel(oh("Session time", "0s", n3), true)
        end
        wp_24 = (wp_24 + 23) % 24
    end
until (wp_24 * 17 + 18) % 24 == 11
if wp_30 then
    wp_24 = 0
    repeat
        wp_6 = {
            "zffw",
            "nzlxuwuazmox",
            "yyndnsviqi",
            "zqvoz",
            "qsiwkvtx",
            "uasj",
            "ldguhdzmpgm",
            "uursfs",
            "zpuwtaalubmj",
            "kwyfdtj",
            "vezczuiytjv",
            "wxaknz",
            "kqwhri",
            "tzhqsgsk",
            "mpl"
        }
        if wp_6[(wp_24 * 38 + 71) % 15 + 1] < wp_6[(wp_24 * 38 + 71) % 15 + 1] then
            po = string.sub(wp_30, 1, 18) .. "..."
        else
            wp_30 = string.sub(po, 1, 18) .. "..."
        end
        wp_24 = (wp_24 + 0) % 8
    until (wp_24 * 5 + 7) % 8 == 7
end
wp_24 = wp_30 or po
oU, RebirthUpgradesGroup, Label2, Label3, Label4, Label5, Label6, Label7, o9, o2, connection, connection2, connection3, oI, oD = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local wp_28 = wp_24
wp_12:AddLabel(oN("Server", wp_28, ob), true)
wp_12:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
oU = os.clock()
task.spawn(fns.worker)
wp_20 = wp_47.Info:AddRightGroupbox("Scripts", "package")
wp_20:AddLabel(o3("Included in this hub", ob), true)
wp_20:AddLabel(o3(wp_39, oh), true)
wp_52 = wp_47.Info:AddRightGroupbox("Features", "list")
wp_52:AddLabel(o3("Auto Buy", oh), true)
wp_52:AddLabel(o3("Auto Place", om), true)
wp_52:AddLabel(o3("Auto Eggs", od), true)
wp_52:AddLabel(o3("Auto Upgrade", oh), true)
wp_52:AddLabel(o3("Auto Rebirth", ob), true)
wp_15 = wp_47.Info:AddRightGroupbox("Socials", "link")
wp_15:AddButton({ Text = "Discord", Func = pg })
wp_15:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
wp_9 = wp_47.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
wp_9:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
wp_9:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
wp_9:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
wp_9:AddButton({ Text = "Copy Discord Invite", Func = pg })
wp_6 = wp_47.Info:AddRightGroupbox("FAQ", "circle-help")
wp_6:AddLabel("Where do I get a good config?", true)
wp_6:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
wp_6:AddLabel("How do I import / export configs?", true)
wp_6:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
wp_6:AddLabel("How do I report bugs?", true)
wp_6:AddLabel("Join the Discord and post it in the bugs channel.", true)
wp_6:AddLabel("How do I make suggestions?", true)
wp_6:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
wp_6:AddLabel("How do I get help or updates?", true)
wp_6:AddLabel("Join the Discord, updates and support are posted there first.", true)
local TreesGroup = wp_47.Shop:AddLeftGroupbox("Trees", "trees")
TreesGroup:AddToggle("AutoBuyTrees", { Text = "Auto Buy Trees", Default = false })
TreesGroup:AddToggle("BuyAllTrees", { Text = "Buy Every Tree", Default = false })
TreesGroup:AddDropdown("TreeSelection", {
    Text = "Trees",
    Values = o5,
    Multi = true,
    Searchable = true,
    AllowNull = true,
    Default = {},
    Callback = onTreeSelection
})
TreesGroup:AddInput("TreeReserve", { Text = "Cash Reserve", Default = "0", Numeric = true, Finished = true })
TreesGroup:AddToggle("TreeNotify", { Text = "Notify On Purchase", Default = false })
local LumberjacksGroup = wp_47.Shop:AddLeftGroupbox("Lumberjacks", "axe")
LumberjacksGroup:AddToggle("AutoBuyLumberjacks", { Text = "Auto Buy Lumberjacks", Default = false })
LumberjacksGroup:AddToggle("BuyAllLumberjacks", { Text = "Buy Every Lumberjack", Default = false })
LumberjacksGroup:AddDropdown("LumberjackSelection", {
    Text = "Lumberjacks",
    Values = ov,
    Multi = true,
    Searchable = true,
    AllowNull = true,
    Default = {},
    Callback = fns.onLumberjackSelection
})
LumberjacksGroup:AddInput("LumberjackReserve", { Text = "Cash Reserve", Default = "0", Numeric = true, Finished = true })
LumberjacksGroup:AddToggle("LumberjackNotify", { Text = "Notify On Purchase", Default = false })
local ToolsGroup = wp_47.Shop:AddLeftGroupbox("Tools", "wrench")
ToolsGroup:AddToggle("AutoBuyTools", { Text = "Auto Buy Tools", Default = false })
ToolsGroup:AddToggle("BuyAllTools", { Text = "Buy Every Tool", Default = false })
ToolsGroup:AddDropdown("ToolSelection", {
    Text = "Tools",
    Values = nX,
    Multi = true,
    Searchable = true,
    AllowNull = true,
    Default = {},
    Callback = onToolSelection
})
ToolsGroup:AddInput("ToolReserve", { Text = "Cash Reserve", Default = "0", Numeric = true, Finished = true })
ToolsGroup:AddToggle("ToolNotify", { Text = "Notify On Purchase", Default = false })
local EggsGroup = wp_47.Shop:AddRightGroupbox("Eggs", "egg")
EggsGroup:AddToggle("AutoBuyEggs", { Text = "Auto Buy Eggs", Default = false })
EggsGroup:AddToggle("BuyAllEggs", { Text = "Buy Every Egg", Default = false })
EggsGroup:AddDropdown("EggSelection", {
    Text = "Eggs",
    Values = pp,
    Multi = true,
    Searchable = true,
    AllowNull = true,
    Default = {},
    Callback = onEggSelection
})
EggsGroup:AddInput("EggReserve", { Text = "Gem Reserve", Default = "0", Numeric = true, Finished = true })
local RollsGroup = wp_47.Shop:AddRightGroupbox("Rolls", "dices")
RollsGroup:AddToggle("AutoRoll", { Text = "Auto Buy Rolls", Default = false })
RollsGroup:AddDropdown("RollPack", { Text = "Pack", Values = wp_1, Searchable = true, AllowNull = true, Default = wp_1[1] })
RollsGroup:AddInput("TokenReserve", { Text = "Token Reserve", Default = "0", Numeric = true, Finished = true })
RollsGroup:AddToggle("RollNotify", { Text = "Notify On Roll", Default = false })
local RestockGroup = wp_47.Shop:AddRightGroupbox("Restock", "refresh-cw")
RestockGroup:AddToggle("AutoRestock", { Text = "Auto Restock Shops", Default = false })
wp_4 = wp_47.Place:AddLeftGroupbox("Placement", "hammer")
wp_4:AddToggle("AutoPlaceTrees", { Text = "Auto Place Trees", Default = false })
wp_4:AddToggle("AutoPlaceLumberjacks", { Text = "Auto Place Lumberjacks", Default = false })
wp_4:AddToggle("AutoPlacePets", { Text = "Auto Place Pets", Default = false })
wp_4:AddSlider("PlacementStep", { Text = "Grid Step", Default = 2, Min = 1, Max = 12, Rounding = 0 })
wp_4:AddToggle("PlaceNotify", { Text = "Notify On Place", Default = false })
wp_22 = wp_47.Place:AddRightGroupbox("Pick Up Trees", "hand")
wp_22:AddToggle("AutoPickupTrees", { Text = "Auto Pick Up Trees", Default = false })
wp_22:AddDropdown("TreePickupRarities", {
    Text = "Rarities",
    Values = wp_44,
    Multi = true,
    Searchable = true,
    AllowNull = true,
    Default = {},
    Callback = fns.onTreePickupRarities
})
wp_22:AddToggle("PickupNotify", { Text = "Notify On Pick Up", Default = false })
wp_3 = wp_47.Place:AddRightGroupbox("Replace Pets", "repeat")
wp_3:AddToggle("AutoReplacePets", { Text = "Auto Replace Pets", Default = false })
wp_3:AddDropdown("PetReplaceRarities", {
    Text = "Rarities",
    Values = wp_44,
    Multi = true,
    Searchable = true,
    AllowNull = true,
    Default = {},
    Callback = fns.onPetReplaceRarities
})
wp_3:AddToggle("ReplaceNotify", { Text = "Notify On Replace", Default = false })
wp_33 = wp_47.Event:AddLeftGroupbox("Bee Coins", "coins")
wp_33:AddToggle("AutoCollectTokens", { Text = "Auto Collect Bee Coins", Default = false })
wp_33:AddToggle("TokenReturn", { Text = "Return To Start Position", Default = true })
wp_33:AddToggle("TokenNotify", { Text = "Notify On Collect", Default = false })
wp_49 = wp_47.Eggs:AddLeftGroupbox("Incubators", "egg")
wp_49:AddToggle("AutoIncubate", { Text = "Auto Incubate Eggs", Default = false })
wp_49:AddToggle("AutoCollectEggs", { Text = "Auto Pick Up Ready Eggs", Default = false })
wp_49:AddToggle("EggNotify", { Text = "Notify On Hatch", Default = false })
wp_30 = wp_47.Upgrades:AddLeftGroupbox("Plot Upgrades", "axe")
wp_30:AddToggle("AutoPlotUpgrades", { Text = "Auto Buy Plot Upgrades", Default = false })
wp_30:AddToggle("AllPlotUpgrades", { Text = "Buy Every Track", Default = false })
wp_30:AddDropdown("PlotUpgradeSelection", {
    Text = "Tracks",
    Values = oG,
    Multi = true,
    Searchable = true,
    AllowNull = true,
    Default = {},
    Callback = fns.onPlotUpgradeSelection
})
wp_30:AddInput("UpgradeCashReserve", { Text = "Cash Reserve", Default = "0", Numeric = true, Finished = true })
local ExpandPlotGroup = wp_47.Upgrades:AddLeftGroupbox("Expand Plot", "land-plot")
if (not connection or oD or not Label6 and Label6 or (not connection and not connection or wp_49 and wp_49)) and not (not connection or oD or not Label6 and Label6 or (not connection and not connection or wp_49 and wp_49)) then
    RebirthUpgradesGroup:AddToggle("AutoExpandPlot", { Text = "Auto Expand Plot", Default = false })
    RebirthUpgradesGroup:AddInput("ExpandGemReserve", { Default = "0", Numeric = true, Finished = true, Text = "Gem Reserve" })
    wp_47 = ExpandPlotGroup.Upgrades:AddRightGroupbox("Rebirth Upgrades", "paw-print")
else
    ExpandPlotGroup:AddToggle("AutoExpandPlot", { Text = "Auto Expand Plot", Default = false })
    ExpandPlotGroup:AddInput("ExpandGemReserve", { Text = "Gem Reserve", Default = "0", Numeric = true, Finished = true })
    RebirthUpgradesGroup = wp_47.Upgrades:AddRightGroupbox("Rebirth Upgrades", "paw-print")
end
RebirthUpgradesGroup:AddToggle("AutoRebirthUpgrades", { Text = "Auto Buy Rebirth Upgrades", Default = false })
RebirthUpgradesGroup:AddToggle("AllRebirthUpgrades", { Text = "Buy Every Track", Default = false })
RebirthUpgradesGroup:AddDropdown("RebirthUpgradeSelection", {
    Text = "Tracks",
    Values = ox,
    Multi = true,
    Searchable = true,
    AllowNull = true,
    Default = {},
    Callback = fns.onRebirthUpgradeSelection
})
RebirthUpgradesGroup:AddInput("UpgradeGemReserve", { Text = "Gem Reserve", Default = "0", Numeric = true, Finished = true })
RebirthUpgradesGroup:AddToggle("UpgradeNotify", { Text = "Notify On Upgrade", Default = false })
local RebirthGroup = wp_47.Upgrades:AddRightGroupbox("Rebirth", "rotate-ccw")
RebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
RebirthGroup:AddToggle("RebirthNotify", { Text = "Notify On Rebirth", Default = false })
local StatusGroup = wp_47.Upgrades:AddRightGroupbox("Status", "activity")
Label2 = StatusGroup:AddLabel(oN("Cash", "?", om), true)
Label3 = StatusGroup:AddLabel(oN("Gems", "?", oh), true)
Label4 = StatusGroup:AddLabel(oN("Event Tokens", "?", od), true)
Label5 = StatusGroup:AddLabel(oN("Rebirths", "?", ob), true)
Label6 = StatusGroup:AddLabel(oN("Next rebirth", "?", od), true)
Label7 = StatusGroup:AddLabel(oN("Plot level", "?", oh), true)
oI = fns.fn131
local DelaysGroup = wp_47.Settings:AddRightGroupbox("Delays", "timer")
DelaysGroup:AddSlider("TreeActionDelay", { Text = "Tree Buy Delay", Default = 0.2, Min = 0.05, Max = 2, Rounding = 2 })
DelaysGroup:AddSlider("LumberjackActionDelay", { Text = "Lumberjack Buy Delay", Default = 0.2, Min = 0.05, Max = 2, Rounding = 2 })
DelaysGroup:AddSlider("ToolActionDelay", { Text = "Tool Buy Delay", Default = 0.2, Min = 0.05, Max = 2, Rounding = 2 })
DelaysGroup:AddSlider("PickupActionDelay", { Text = "Tree Pick Up Delay", Default = 0.2, Min = 0.05, Max = 2, Rounding = 2 })
DelaysGroup:AddSlider("ReplaceActionDelay", { Text = "Pet Replace Delay", Default = 0.2, Min = 0.05, Max = 2, Rounding = 2 })
DelaysGroup:AddSlider("TokenActionDelay", { Text = "Bee Coin Delay", Default = 0.3, Min = 0.05, Max = 2, Rounding = 2 })
DelaysGroup:AddSlider("TokenLoopDelay", { Text = "Bee Coin Loop Delay", Default = 2, Min = 0.5, Max = 15, Rounding = 1 })
DelaysGroup:AddSlider("EggActionDelay", { Text = "Egg Delay", Default = 0.2, Min = 0.05, Max = 2, Rounding = 2 })
DelaysGroup:AddSlider("PlaceActionDelay", { Text = "Place Delay", Default = 0.2, Min = 0.05, Max = 2, Rounding = 2 })
DelaysGroup:AddSlider("UpgradeActionDelay", { Text = "Upgrade Delay", Default = 0.2, Min = 0.05, Max = 2, Rounding = 2 })
DelaysGroup:AddSlider("ShopLoopDelay", { Text = "Shop Loop Delay", Default = 2, Min = 0.5, Max = 15, Rounding = 1 })
DelaysGroup:AddSlider("PlaceLoopDelay", { Text = "Place Loop Delay", Default = 2, Min = 0.5, Max = 15, Rounding = 1 })
DelaysGroup:AddSlider("EggLoopDelay", { Text = "Egg Loop Delay", Default = 3, Min = 0.5, Max = 30, Rounding = 1 })
DelaysGroup:AddSlider("UpgradeLoopDelay", { Text = "Upgrade Loop Delay", Default = 3, Min = 0.5, Max = 30, Rounding = 1 })
DelaysGroup:AddSlider("RollLoopDelay", { Text = "Roll Loop Delay", Default = 2, Min = 0.5, Max = 15, Rounding = 1 })
local MenuGroup = wp_47.Settings:AddLeftGroupbox("Menu", "wrench")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
o9 = tick()
o2 = tick()
pcall(function()
    for i, v in ipairs(getconnections(pq.Idled)) do
        local vS = v
        pcall(function()
            vS:Disable()
        end)
    end
end)
oD = fn844
connection = wp_27.InputBegan:Connect(fns.onInputBegan)
connection2 = wp_27.InputChanged:Connect(fns.onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", fns.onUnload)
oQ.ToggleKeybind = ol.MenuKeybind
connection3 = Knit.GetService("UnboxingService").UnboxingResult:Connect(function(jg, jh)
    local vZ = type(jh) ~= "table" or type(jh.UnboxedItems) ~= "table"
    if vZ then
        return
    end
    local vY = Knit.GetService("UnboxingService")
    for i, v in ipairs(SHARED_LuckySpinUtils.flattenUnboxingItems(jh.UnboxedItems)) do
        local v5 = v
        if v5.ItemUniqueId then
            pcall(function()
                vY:RequestClaimUnboxingEscrow(v5.ItemUniqueId)
            end)
        end
    end
end)
oQ:OnUnload(fns.fn714)
wp_18:SetLibrary(oQ)
wp_18:SetFolder("OuroborosHub")
wp_18:SaveDefault("Monochrome")
wp_36:SetLibrary(oQ)
wp_36:IgnoreThemeSettings()
wp_36:SetIgnoreIndexes({ "MenuKeybind" })
wp_36:SetFolder("OuroborosHub/YourLumberFarm")
wp_36:BuildConfigSection(wp_47.Settings)
wp_18:ApplyToTab(wp_47.Settings)
wp_18:LoadDefault()
wp_36:LoadAutoloadConfig()
task.spawn(worker2)
task.spawn(fns.worker3)
task.spawn(fns.worker4)
task.spawn(fns.worker5)
task.spawn(fns.worker6)
task.spawn(fns.worker7)
task.spawn(fns.worker8)
task.spawn(fns.worker9)
oQ:Notify("Your Lumber Farm loaded")
