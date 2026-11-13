local fns = {}
local Gt_5, Gt_10, Gt_12, Gt_30
local tJ
local uq
local tq
local t7
local s7
local tP
local tw
local td
local Library
local uC
local tC
local tj
local tp
local t6
local tv
local Toggles
local LocalPlayer
local tB
local ti
local tH
local to
local t5
local s5
local PlayerGui
local uu
local tu
local tb
local tT
local uh
local th
local tZ
local tG
local tn
local t4
local s4
local tM
local tt
local ua
local tS
local uz
local tz
local ug
local Workspace
local tF
local s3
local us
local ts
local s9
local tR
local uy
local ty
local Options
local tf
local tX
local uE
local tE
local ul
local tl
local t2
local s2
local tK
local tr
local s8
local tQ
local ux
local tx
local te
local tD
local uk
local tk
local t1
local s1
function fns.fn22(g9)
    local zP_1
    local zO_1
    local zM = {}
    if not g9 then
        return zM
    end
    if type(g9.standParts) == "table" then
        for k in g9.standParts do
            local zN_1 = false
            if type(g9.isStandPlaced) == "function" then
                zO_1, zP_1 = pcall(g9.isStandPlaced, g9, k)
                zN_1 = zO_1 and zP_1 == true
            elseif type(g9.brainrotStands) == "table" then
                zN_1 = g9.brainrotStands[k] ~= nil
            end
            if not zN_1 then
                zM[#zM + 1] = k
            end
        end
    elseif type(g9.brainrotStands) == "table" then
        local attr = LocalPlayer:GetAttribute("PlotName")
        local zO_2 = attr and Workspace.plots:FindFirstChild(attr)
        if zO_2 then
            for k, v in { "Floor1", "Floor2", "Floor3" } do
                local zO_3 = zO_2:FindFirstChild(v)
                local zP_2 = zO_3 and zO_3:FindFirstChild("Stands")
                if zP_2 then
                    for i, child in zP_2:GetChildren() do
                        if not g9.brainrotStands[child.Name] then
                            zM[#zM + 1] = child.Name
                        end
                    end
                end
            end
        end
    end
    table.sort(zM)
    return zM
end
function fns.fn31()
    local BB
    local BC
    local BD = t7()
    if not BD then
        return nil
    end
    local Model = Workspace:FindFirstChild("Model")
    if Model then
        for i, child in Model:GetChildren() do
            local BE_1 = child:IsA("BasePart") and child.Name == "sellShopZone"
            if BE_1 then
                local Magnitude = (child.Position - BD.Position).Magnitude
                if not BC or Magnitude < BC then
                    BB = child
                    BC = Magnitude
                end
            end
        end
    end
    if BB then
        return BB
    end
    for i, descendant in Workspace:GetDescendants() do
        local BB_1 = descendant:IsA("BasePart") and descendant.Name == "sellShopZone"
        if BB_1 then
            return descendant
        end
    end
    return nil
end
function fns.fn32()
    local Ap = os.clock()
    if Ap - t4[10] < 0.4 then
        return
    end
    if Toggles.AutoFish and Toggles.AutoFish.Value then
        local Aq_1 = s5()
        local Ar_1 = tp(Aq_1) or tq() or uE()
        if Ar_1 then
            return
        end
    end
    local Aq_2 = us()
    local Ar_2 = not Aq_2 or type(Aq_2.brainrotStands) ~= "table"
    if Ar_2 then
        return
    end
    for k, v in Aq_2.brainrotStands do
        local Ar_3 = type(v) == "table" and v.isEgg ~= true
        if Ar_3 then
            local Ar_4 = ux(v)
            if tn("PickupRarities", Ar_4) then
                local Ar_5 = v.uuid or v.brainrotUUID
                local Ar_6 = Ar_5 ~= ""
                local At = type(Ar_5) == "string" and Ar_6
                if At then
                    local At_1 = Aq_2.standParts and Aq_2.standParts[k]
                    local Ar_8 = typeof(At_1) == "Instance" and At_1:IsA("BasePart")
                    if Ar_8 then
                        local Ar_9 = t7()
                        if Ar_9 and (Ar_9.Position - At_1.Position).Magnitude > 40 then
                            s2(At_1.Position + Vector3.new(0, 3, 0))
                        end
                    end
                    t4[10] = Ap
                    to({ kind = "pickupBrainrot", stand = k, expectedUUID = Ar_5 })
                    return
                end
            end
        end
    end
end
function fns.fn51(dH)
    local xv = t7()
    local xw = not xv or typeof(dH) ~= "Vector3"
    if xw then
        return math.huge
    end
    return (xv.Position - dH).Magnitude
end
function fns.fn66()
    local BT = s8()
    local BU = t7()
    if not BT or not BU then
        return false
    end
    local BV_1 = math.max(BT.Size.X, BT.Size.Z) * 0.5 + 8
    if (BU.Position - BT.Position).Magnitude > BV_1 then
        s2(BT.Position + Vector3.new(0, 3, 0))
    end
    return true
end
function fns.fn107(bl, bm, bn)
    return string.format("<b>%s</b> %s %s", bl, tr("-", "#5a6070"), tr(bm, bn))
end
function fns.fn114()
    local yB = if tp() then 1 else 0
    if yB == 1 then
        return
    end
    s3(true)
end
function fns.fn173(fQ)
    if tp(fQ) then
        local yN_1 = fQ.catchUUID or fQ.localHookUUID or t4[16]
        if type(yN_1) == "string" then
            local yN_2 = fQ.activeBrainrots and fQ.activeBrainrots[yN_1]
            if type(yN_2) == "table" then
                local yN_3 = th(yN_2) or t4[17]
                return { uuid = yN_1, entry = yN_2, pos = yN_3, rarity = tZ(yN_2.blockType) }
            end
            return nil
        end
        return nil
    end
    local yN_4 = t4[16]
    if yN_4 then
        local yO_2 = tq() or uE()
        yN_4 = yO_2
    end
    if yN_4 then
        local yN_5 = fQ.activeBrainrots and fQ.activeBrainrots[t4[16]]
        local yN_6 = type(yN_5) == "table" and not yN_5.dropping
        if yN_6 then
            local yN_7 = th(yN_5)
            if yN_7 or yN_5.hooked then
                return { uuid = t4[16], entry = yN_5, pos = yN_7, rarity = tZ(yN_5.blockType) }
            end
            if not tp(fQ) then
                tv()
            end
            return tB()
        end
        if not tp(fQ) then
            tv()
        end
        return tB()
    end
    return tB()
end
function fns.fn200(ck)
    local wL_3
    if type(ck) == "table" then
        local riverData = ck.riverData
        local wL_1 = type(riverData) == "table" and typeof(riverData.flowDirection) == "Vector3"
        if wL_1 then
            return riverData.flowDirection
        end
        local wK_2 = s5()
        if wL_3 then
            return wK_2.flowDirection
        end
        return Vector3.new(0, 0, -1)
    end
    local wK_3 = s5()
    wL_3 = wK_3 and typeof(wK_3.flowDirection) == "Vector3"
    if wL_3 then
        return wK_3.flowDirection
    end
    return Vector3.new(0, 0, -1)
end
function fns.fn206(dp, dq)
    local Rivers = Workspace:FindFirstChild("Rivers")
    local xo = Rivers
    if xo then
        local xp_1 = dq or 1
        xo = Rivers:FindFirstChild("riverPart" .. tostring(xp_1))
    end
    local xn_1 = xo
    if xo then
        xo = xn_1.Position.X
    end
    local xp_2 = xo
    local xu = if xp_2 then 1 else 0
    local xs = 3373 * xu + 2399 * (1 - xu)
    local xt = 1936 * xu + 2426 * (1 - xu)
    if not ((xs * 605 + xt * 48 + xs * xt) % 16777213 == 8663721) then
        xp_2 = 12
    end
    local xo_1 = xn_1
    local xq = xp_2
    if xo_1 then
        xo_1 = xn_1.Size.X * 0.5
    end
    local xo_2 = xo_1 or 15
    local xn_3 = xq - xo_2 - 4
    local xp_3 = xq + xo_2 + 4
    local xo_3 = math.abs(dp.X - xn_3) <= math.abs(dp.X - xp_3) and xn_3
    local xn_4 = xo_3 or xp_3
    local xo_4 = 30
    local xn_5 = t7()
    if xn_5 then
        xo_4 = math.max(xn_5.Position.Y, 28)
    end
    return Vector3.new(xn_4, xo_4, dp.Z)
end
function fns.autoPlaceEggsLoop()
    while not Library.Unloaded do
        task.wait(0.25)
        if Toggles.AutoPlaceEggs and Toggles.AutoPlaceEggs.Value then
            pcall(ug)
        end
        if Toggles.AutoHatch and Toggles.AutoHatch.Value then
            pcall(tz)
        end
        if Toggles.AutoPlaceBest and Toggles.AutoPlaceBest.Value then
            pcall(tE)
        end
        if Toggles.AutoPickupPets and Toggles.AutoPickupPets.Value then
            pcall(tT)
        end
        if Toggles.AutoCollectMoney and Toggles.AutoCollectMoney.Value then
            pcall(s7)
        end
        if Toggles.AutoBuyRod and Toggles.AutoBuyRod.Value then
            pcall(td)
        end
        if Toggles.AutoRebirth and Toggles.AutoRebirth.Value then
            pcall(tX)
        end
        if Toggles.AutoSell and Toggles.AutoSell.Value then
            pcall(tj)
        end
    end
end
function fns.fn240(gc, gd, ge)
    local yX = typeof(gd) ~= "Vector3" or typeof(ge) ~= "Vector3"
    if yX then
        return false, false
    end
    local yX_1 = gd - ge
    local Magnitude = yX_1.Magnitude
    if Magnitude <= ul + 1.5 then
        return false, true
    end
    local yZ = ua(gc)
    local y_ = yZ.Magnitude > 0 and yX_1:Dot(yZ.Unit) > ul
    if y_ then
        return true, false
    elseif Magnitude > 45 then
        return true, false
    else
        return false, false
    end
end
function fns.onOnClientEvent3(kx)
    if type(kx) ~= "table" then
        return
    end
    if kx.kind == "stateSync" or kx.kind == "rebirth" then
        local CW_1 = tonumber(kx.rebirthCount) or t4[1]
        t4[1] = CW_1
    end
end
local function fn281()
    local xZ_1
    local xU = s5()
    local xV = not xU or type(xU.activeBrainrots) ~= "table"
    if xV then
        return nil
    end
    local xV_1 = t7()
    local xW
    local xX
    for k, v in xU.activeBrainrots do
        local xU_1 = type(v) == "table" and not v.dropping and not v.hooked
        if xU_1 then
            local xU_2 = tZ(v.blockType)
            local xY = tonumber(v.requiredPower)
            if type(xY) == "number" then
                xZ_1 = tb() >= xY
            else
                xZ_1 = t5(xU_2)
            end
            local xY_1 = xZ_1
            local xZ_2 = tD(xU_2) and xY_1
            if xZ_2 then
                local xY_2 = th(v)
                if xY_2 then
                    local x_ = xV_1 and (xV_1.Position - xY_2).Magnitude or 0
                    if not xX or x_ < xX then
                        xW = { uuid = tostring(k), entry = v, pos = xY_2, rarity = xU_2 }
                        xX = x_
                    end
                end
            end
        end
    end
    return xW
end
local function fn290(bq, br)
    if setclipboard then
        setclipboard(bq)
    elseif toclipboard then
        toclipboard(bq)
    end
    Library:Notify(br)
end
local function fn307(dZ)
    local xF = s5()
    local xF_5
    local xG = xF and type(xF.allRiversInfo) == "table"
    local xG_3
    if xG then
        local xG_1 = xF.allRiversInfo[dZ]
        local xF_1 = type(xG_1) == "table" and type(xG_1.riverSurfaceY) == "number"
        if xF_1 then
            return xG_1.riverSurfaceY
        end
        local Rivers = Workspace:FindFirstChild("Rivers")
        local xG_2 = Rivers
        if xG_3 then
            local xH_1 = dZ or 1
            xG_2 = Rivers:FindFirstChild("riverPart" .. tostring(xH_1))
        end
        local xF_3 = xG_2
        if xF_5 then
            return xF_3.Position.Y + 0.5
        end
        return 25.5
    end
    local Rivers = Workspace:FindFirstChild("Rivers")
    xG_3 = Rivers
    if xG_3 then
        local xH_2 = dZ or 1
        xG_3 = Rivers:FindFirstChild("riverPart" .. tostring(xH_2))
    end
    xF_5 = xG_3
    if xF_5 then
        return xF_5.Position.Y + 0.5
    end
    return 25.5
end
local function fn325()
    if Toggles.AutoFish.Value then
        s3(true, false)
        task.defer(function()
            uk()
            pcall(function()
                s1:FireServer({ kind = "requestSync" })
            end)
        end)
    else
        s3(true, true)
    end
end
local function fn347(c_)
    local wZ = t7()
    local w_ = not wZ or typeof(c_) ~= "Vector3"
    if w_ then
        return false
    end
    wZ.CFrame = CFrame.new(c_)
    wZ.AssemblyLinearVelocity = Vector3.zero
    wZ.AssemblyAngularVelocity = Vector3.zero
    return true
end
local function fn395()
    local yF = t4[19] == true and os.clock() < t4[18]
    return yF
end
local function fn468(a_, a0)
    return a_.order < a0.order
end
local function fn479()
    local wx_1
    local ww_1, ww_2
    ww_1, wx_1 = pcall(function()
        return getrenv()._G.PlotController
    end)
    local wy = not ww_1 or type(wx_1) ~= "table" or type(wx_1.getPlot) ~= "function"
    local wy_1
    if wy then
        return nil
    end
    ww_2, wy_1 = pcall(wx_1.getPlot)
    local wx_2 = ww_2 and type(wy_1) == "table"
    if wx_2 then
        return wy_1
    end
    return nil
end
local function fn481(cK)
    if type(cK) ~= "string" then
        return false
    end
    local wW = tu.PowerRequirementByRarity and tu.PowerRequirementByRarity[cK]
    if type(wW) ~= "number" then
        return true
    end
    return tb() >= wW
end
local function fn485()
    local Bw = os.clock()
    if Bw - t4[13] < 1.5 then
        return
    end
    local Bx = te[t4[1] + 1]
    local By = type(Bx) ~= "table" or type(Bx.requirements) ~= "table"
    if By then
        return
    end
    local By_1 = tonumber(Bx.requirements.Money) or 0
    local By_2 = tonumber(Bx.requirements.PowerRod) or 0
    local By_3 = ty() < By_1 or tb() < By_2
    if By_3 then
        return
    end
    t4[13] = Bw
    pcall(function()
        uu:FireServer({ kind = "rebirth" })
    end)
end
local function fn504()
    local zf = if LocalPlayer:GetAttribute("InRiver") ~= true then 1 else 0
    if zf == 1 then
        return true
    end
    local y7 = t7()
    if not y7 then
        return false
    end
    local Rivers = Workspace:FindFirstChild("Rivers")
    if not Rivers then
        return false
    end
    local y9
    local za
    for i, child in Rivers:GetChildren() do
        local y8_1 = child:IsA("BasePart") and string.find(child.Name, "riverPart", 1, true) == 1
        if y8_1 then
            local Magnitude = (y7.Position - child.Position).Magnitude
            if not za or Magnitude < za then
                y9 = child
                za = Magnitude
            end
        end
    end
    if not y9 then
        return false
    end
    local y8_3 = tonumber(string.match(y9.Name, "%d+")) or 1
    s2(s4(y7.Position, y8_3))
    local y7_1 = tq() or uE()
    if y7_1 then
        tv()
    end
    return LocalPlayer:GetAttribute("InRiver") ~= true
end
local function fn528(iF)
    local Ba = s5()
    local Bb = Ba and type(Ba.ownedRods) == "table" and Ba.ownedRods[iF]
    if Bb then
        return true
    end
    local attr = LocalPlayer:GetAttribute("EquippedRod")
    if attr == iF then
        return true
    end
    for k, v in { LocalPlayer.Backpack, LocalPlayer.Character } do
        if v then
            local Ba_2 = v:FindFirstChild(iF)
            local Bb_1 = Ba_2 and Ba_2:IsA("Tool") and Ba_2:GetAttribute("rod") == true
            if Bb_1 then
                return true
            end
        end
    end
    return false
end
local function fn545()
    local A_ = os.clock()
    if A_ - t4[11] < 0.3 then
        return
    end
    local A0 = us()
    local A1 = not A0 or type(A0.brainrotStands) ~= "table"
    if A1 then
        return
    end
    for k, v in A0.brainrotStands do
        local A0_1 = type(v) == "table" and v.isEgg ~= true
        if A0_1 then
            local A1_1 = v.uuid or v.brainrotUUID
            local A0_3 = A1_1 ~= ""
            local A2 = type(A1_1) == "string" and A0_3
            if A2 then
                t4[11] = A_
                to({ kind = "collectMoney", stand = k, expectedUUID = A1_1 })
            end
        end
    end
end
local function fn554(cD)
    if type(cD) ~= "table" then
        return nil
    end
    local wT = cD.brainrotName or cD.name
    if type(wT) ~= "string" then
        return nil
    end
    local wT_1 = ts[wT]
    return wT_1 and wT_1.rarity or nil
end
local function fn556()
    local AC = os.clock()
    if AC - t4[8] < 0.4 then
        return
    end
    local AD = us()
    local AE = not AD or type(AD.brainrotStands) ~= "table"
    if AE then
        return
    end
    local AE_1 = os.time()
    for k, v in AD.brainrotStands do
        local AD_1 = type(v) == "table" and v.isEgg == true
        if AD_1 then
            local AD_2 = tonumber(v.hatchReadyAt) or 0
            if AD_2 > 0 and AE_1 >= AD_2 then
                t4[8] = AC
                to({ kind = "hatchEgg", stand = k })
                return
            end
        end
    end
    local attr = LocalPlayer:GetAttribute("PlotName")
    local AF_2 = attr and Workspace.plots:FindFirstChild(attr)
    local AD_5 = AF_2
    if AF_2 then
        AF_2 = AD_5:FindFirstChild("Brainrots")
    end
    local AD_6 = AF_2
    if not AD_6 then
        return
    end
    for i, child in AD_6:GetChildren() do
        if child:GetAttribute("isEgg") == true then
            local AD_7 = tonumber(child:GetAttribute("hatchReadyAt")) or 0
            if AD_7 > 0 and AE_1 >= AD_7 then
                t4[8] = AC
                to({ kind = "hatchEgg", stand = child.Name })
                return
            end
        end
    end
end
local function fn566(cw, cx)
    if type(cx) ~= "string" then
        return false
    end
    local wQ = Options[cw]
    local wQ_1 = wQ and wQ.Value
    if type(wQ_1) ~= "table" then
        return true
    end
    return wQ_1[cx] == true
end
local function autoFishLoop()
    while not Library.Unloaded do
        task.wait(0.05)
        if Toggles.AutoFish and Toggles.AutoFish.Value then
            pcall(tC)
        end
    end
end
local function fn583()
    local wt_1
    local ws_1
    ws_1, wt_1 = pcall(function()
        return getrenv()._G.FishingClient
    end)
    local wu = ws_1 and type(wt_1) == "table"
    if wu then
        return wt_1
    end
    return nil
end
local function fn615()
    local yH = s5()
    local yI = yH and type(yH.activeCastPositions) == "table"
    if yI then
        local yI_1 = yH.activeCastPositions[LocalPlayer.UserId]
        local yH_1 = type(yI_1) == "table" and typeof(yI_1.position) == "Vector3"
        if yH_1 then
            return yI_1.position
        end
        return t4[17]
    end
    return t4[17]
end
local function fn644(eZ)
    local yi = os.clock()
    if yi - t4[5] < tR then
        return false
    end
    t4[5] = yi
    tF({ kind = "requestHook", uuid = eZ })
    return true
end
local function onOnClientEvent(kl)
    if type(kl) ~= "table" then
        return
    end
    if kl.kind == "hookRejected" then
        if kl.reason == "lineTooFar" or kl.uuid == t4[16] then
            t4[19] = false
            t4[17] = nil
            t4[18] = 0
            if kl.reason == "lineTooFar" then
                t4[16] = nil
            end
        end
    else
        if kl.kind == "castRejected" or kl.kind == "castCancelled" then
            t4[19] = false
            t4[17] = nil
            t4[18] = 0
        else
            if kl.kind == "hookStarted" and kl.playerId == LocalPlayer.UserId then
                t4[19] = false
            elseif kl.kind == "brainrotCaught" then
                t4[16] = nil
                t4[19] = false
                t4[17] = nil
                t4[18] = 0
            end
        end
    end
end
local function fn678(jC)
    local B0 = Options.KeepTraits and Options.KeepTraits.Value
    if type(B0) ~= "table" then
        return false
    end
    local B0_1 = type(jC.Trait) == "string" and B0[jC.Trait]
    if B0_1 then
        return true
    end
    if type(jC.Traits) == "table" then
        for k, v in jC.Traits do
            local B0_2 = type(v) == "string" and B0[v]
            if B0_2 then
                return true
            end
        end
    end
    return false
end
local function fn715()
    local Ab = os.clock()
    if Ab - t4[7] < 0.35 then
        return
    end
    if Toggles.AutoFish and Toggles.AutoFish.Value then
        local Ac_1 = s5()
        local Ad_1 = tp(Ac_1) or tq() or uE()
        if Ad_1 then
            return
        end
    end
    local Ac_2 = us()
    local Ad_2 = tQ(Ac_2)
    if #Ad_2 == 0 then
        return
    end
    local Ac_3 = uC()
    if #Ac_3 == 0 then
        return
    end
    local Ae
    for k, v in Ac_3 do
        local Ac_4 = tZ(v:GetAttribute("blockType"))
        if tn("PlaceEggRarities", Ac_4) then
            Ae = v
            break
        end
    end
    if not Ae then
        return
    end
    local Ac_5 = tM()
    local Character = LocalPlayer.Character
    if not Ac_5 or not Character then
        return
    end
    if Ae.Parent ~= Character then
        Ac_5:EquipTool(Ae)
        task.wait(0.15)
    end
    if Ae.Parent ~= Character then
        return
    end
    local attr2 = Ae:GetAttribute("luckyBlockUUID")
    local attr = Ae:GetAttribute("blockType")
    local Ae_1 = type(attr2) ~= "string" or type(attr) ~= "string"
    if Ae_1 then
        return
    end
    t4[7] = Ab
    to({ kind = "placeEgg", luckyBlockUUID = attr2, blockType = attr, stand = Ad_2[1] })
end
local function fn727(bY)
    if type(bY) ~= "string" then
        return nil
    end
    local wA = tu.Eggs and tu.Eggs[bY]
    local wB = wA
    if wA then
        wA = wB.rewardBrainrot
    end
    local wB_1 = wA
    if wA then
        wA = ts[wB_1]
    end
    local wB_2 = wA
    if wA then
        wA = wB_2.rarity
    end
    return wA or nil
end
local function fn771(kF)
    local DiscordGroup = kF:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = uh })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = uh })
end
local function fn774(jL)
    local B9 = type(jL) ~= "table" or type(jL.SellKey) ~= "string"
    if B9 then
        return false
    end
    local B9_1 = Options.SellTypes and Options.SellTypes.Value
    local SellType = jL.SellType
    local Cb = type(B9_1) == "table" and type(SellType) == "string" and not B9_1[SellType]
    if Cb then
        return false
    end
    local Ca_1 = Options.SellRarities and Options.SellRarities.Value
    local B9_4 = type(Ca_1) == "table" and type(jL.Rarity) == "string" and not Ca_1[jL.Rarity]
    if B9_4 then
        return false
    end
    local Mutation = jL.Mutation
    local Ca_2 = Mutation ~= ""
    local Cb_1 = type(Mutation) == "string" and Ca_2
    if Cb_1 and Mutation ~= "None" and Mutation ~= "Basic" then
        local Cb_3 = Options.KeepMutations and Options.KeepMutations.Value
        local Ca_6 = type(Cb_3) == "table" and Cb_3[Mutation]
        if Ca_6 then
            return false
        elseif ti(jL) then
            return false
        else
            return true
        end
    elseif ti(jL) then
        return false
    else
        return true
    end
end
local function fn791(dM, dN)
    local xy = t7()
    local xz = not xy or typeof(dM) ~= "Vector3"
    if xz then
        return false
    elseif tw(dM) <= tx then
        local xz_1 = s4(dM, dN)
        local xA = (xy.Position - xz_1).Magnitude > tt and tw(dM) > 35
        if xA then
            s2(xz_1)
        end
        return tw(dM) <= tx
    else
        s2(s4(dM, dN))
        return tw(dM) <= tx
    end
end
local function fn807()
    local Character = LocalPlayer.Character
    local wf = Character and Character:FindFirstChild("HumanoidRootPart")
    return wf
end
local function fn817()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local wl = leaderstats and leaderstats:FindFirstChild("Money")
    local wk_1 = wl
    if wl then
        wl = tonumber(wk_1.Value)
    end
    local wk_2 = wl
    local wp = if wk_2 then 1 else 0
    local wn = 156 * wp + 1178 * (1 - wp)
    local wo = 3961 * wp + 3810 * (1 - wp)
    if not ((wn * 3856 + wo * 1688 + wn * wo) % 16777213 == 7905620) then
        wk_2 = 0
    end
    return wk_2
end
local function fn931(d9, ea)
    local xM = t7()
    local xN_1 = xM and (xM.Position - ea).Magnitude or 30
    local xM_2 = math.clamp(0.35 + xN_1 * 0.006, 0.4, 0.8)
    local xN_2 = tonumber(d9.speed) or tJ
    local xN_3 = ea + ua(d9) * (xN_2 * xM_2)
    local Rivers = Workspace:FindFirstChild("Rivers")
    local xO_1 = Rivers
    if xO_1 then
        local xP = d9.riverIndex
        local xT = if xP then 1 else 0
        local xR = 2497 * xT + 318 * (1 - xT)
        local xS = 2139 * xT + 4009 * (1 - xT)
        if not ((xR * 1725 + xS * 748 + xR * xS) % 16777213 == 11248380) then
            xP = 1
        end
        xO_1 = Rivers:FindFirstChild("riverPart" .. tostring(xP))
    end
    local xM_4 = xO_1
    if xO_1 then
        xO_1 = xM_4.Position.X
    end
    local xM_5 = xO_1 or xN_3.X
    return Vector3.new(xM_5, t1(d9.riverIndex), xN_3.Z)
end
local function fn936(bi, bj)
    return string.format('<font color="%s">%s</font>', bj, bi)
end
local function fn941(dj)
    local xl = dj or s5()
    dj = xl
    if not dj then
        return false
    end
    return dj.catchActive == true or dj.localHookUUID ~= nil
end
local function fn951(cr)
    if type(cr) ~= "string" then
        return false
    end
    local wN = Options.FishRarities and Options.FishRarities.Value
    if type(wN) ~= "table" then
        return true
    end
    return wN[cr] == true
end
local function fn955()
    local zq_1
    if not tl() then
        return
    end
    local zm = s5()
    local zn = not zm or type(zm.activeBrainrots) ~= "table"
    if zn then
        return
    end
    if tp(zm) then
        t4[19] = false
        if not uk() then
            return
        end
        if zm.catchActive and zm.catchUUID then
            tG(zm.catchUUID)
        end
        return
    end
    local zu = if not uk() then 1 else 0
    if zu == 1 then
        return
    end
    local zn_2 = tonumber(zm.inventoryCount)
    local zo = tonumber(zm.inventoryMax)
    local zp = zn_2 and zo and zn_2 >= zo
    local zp_3
    if zp then
        return
    end
    local zn_3 = uE() and not tq()
    if zn_3 then
        return
    end
    local zn_4 = t4[19] and not tq() and os.clock() >= t4[18]
    if zn_4 then
        tv()
    end
    local zn_5 = tS(zm)
    if not zn_5 then
        local zm_1 = (tq())
        local zu_1 = if zm_1 then 1 else 0
        local zs_1 = 1692 * zu_1 + 705 * (1 - zu_1)
        local zt_1 = 1376 * zu_1 + 2698 * (1 - zu_1)
        if not ((zs_1 * 2710 + zt_1 * 1801 + zs_1 * zt_1) % 16777213 == 9391688) then
            zm_1 = uE()
        end
        if zm_1 then
            tv()
        end
        return
    end
    t4[16] = zn_5.uuid
    local zm_2 = th(zn_5.entry) or zn_5.pos
    if typeof(zm_2) ~= "Vector3" then
        return
    end
    if not tf(zm_2, zn_5.entry.riverIndex) then
        return
    end
    local zm_3 = uq()
    local zp_1 = tq() and zm_3
    if zp_1 then
        t4[19] = false
        local zp_2 = (th(zn_5.entry))
        local zu_2 = if zp_2 then 1 else 0
        local zs_2 = 2151 * zu_2 + 382 * (1 - zu_2)
        local zt_2 = 340 * zu_2 + 934 * (1 - zu_2)
        if not ((zs_2 * 261 + zt_2 * 2708 + zs_2 * zt_2) % 16777213 == 2213471) then
            zp_2 = zm_2
        end
        local zo_2 = zp_2
        if typeof(zo_2) ~= "Vector3" then
            return
        elseif tw(zo_2) > tx then
            tv()
            tf(zo_2, zn_5.entry.riverIndex)
            return
        else
            zq_1, zp_3 = t2(zn_5.entry, zo_2, zm_3)
            if zp_3 then
                t6(zn_5.uuid)
            elseif zq_1 then
                tv()
            end
            return
        end
    end
    if uE() then
        return
    end
    t4[17] = nil
    t4[18] = 0
    local zm_4 = tk(zn_5.entry, zm_2)
    tH(zm_4)
end
local function fn987()
    local zv = {}
    local Character = LocalPlayer.Character
    for k, v in { LocalPlayer.Backpack, Character } do
        if v then
            for i, child in v:GetChildren() do
                if child:IsA("Tool") then
                    local attr2 = child:GetAttribute("luckyBlockUUID")
                    local attr = child:GetAttribute("blockType")
                    local zy = type(attr2) == "string" and type(attr) == "string"
                    if zy then
                        zv[#zv + 1] = child
                    end
                end
            end
        end
    end
    return zv
end
local function fn1015()
    uz(s9, "Copied Discord invite to clipboard")
end
local function onOnClientEvent2(kr)
    if type(kr) ~= "table" then
        return
    end
    if kr.kind == "OpenSellConfirm" then
        t4[3] = os.clock()
        t4[2] = {}
        if type(kr.items) == "table" then
            for k, v in kr.items do
                if type(v) == "table" then
                    t4[2][#t4[2] + 1] = v
                end
            end
        end
    elseif kr.kind == "SellOneResult" then
        local CT = #t4[2]
        local CS = -1
        while false and CT <= 1 or true and CT >= 1 do
            local CU = CT
            if t4[2][CU].SellKey == kr.sellKey then
                table.remove(t4[2], CU)
            end
            CT += CS
        end
    elseif kr.kind == "SellAllResult" then
        table.clear(t4[2])
    end
end
local function fn1033()
    local wq = tonumber(LocalPlayer:GetAttribute("PowerRod")) or 0
    return wq
end
local function fn1068()
    uu:FireServer({ kind = "getState" })
end
local function fn1082()
    local yC = s5()
    if yC and yC.localCastActive then
        return true
    end
    local yD_1 = yC and type(yC.activeCastPositions) == "table" and yC.activeCastPositions[LocalPlayer.UserId]
    if yD_1 then
        return true
    end
    return false
end
local function fn1092(b8)
    local wF_1
    if type(b8) ~= "table" then
        return nil
    end
    local wD = s5()
    local wE = wD and type(wD.getModelPosition) == "function" and b8.model
    local wE_1
    if wE then
        wE_1, wF_1 = pcall(wD.getModelPosition, wD, b8.model)
        local wD_1 = wE_1 and typeof(wF_1) == "Vector3"
        if wD_1 then
            return wF_1
        end
        local model = b8.model
        if model and model.Parent then
            local wE_3 = model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart")
            if wE_3 then
                return wE_3.Position
            end
            return nil
        end
        return nil
    end
    local model = b8.model
    if model and model.Parent then
        local wE_5 = model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart")
        if wE_5 then
            return wE_5.Position
        end
        return nil
    end
    return nil
end
local function fn1148()
    local Character = LocalPlayer.Character
    local wi = Character and Character:FindFirstChildOfClass("Humanoid")
    return wi
end
local function fn1248()
    local AW = os.clock()
    if AW - t4[9] < 2 then
        return
    end
    local AX = us()
    local AY = tQ(AX)
    if #AY == 0 then
        return
    end
    t4[9] = AW
    pcall(function()
        uy:FireServer({ kind = "placeBestBrainrots" })
    end)
end
s1 = nil
s2 = nil
s3 = nil
s4 = nil
s5 = nil
s7 = nil
s8 = nil
s9 = nil
tb = nil
td = nil
te = nil
tf = nil
th = nil
ti = nil
tj = nil
tk = nil
tl = nil
tn = nil
to = nil
tp = nil
tq = nil
tr = nil
ts = nil
tt = nil
tu = nil
tv = nil
tw = nil
tx = nil
ty = nil
tz = nil
tB = nil
tC = nil
tD = nil
tE = nil
tF = nil
tG = nil
tH = nil
tJ = nil
tK = nil
tM = nil
PlayerGui = nil
local CoreGui, s0, s6, ta, tc, tg, tA, tI, tL
tP = nil
tQ = nil
tR = nil
tS = nil
tT = nil
LocalPlayer = nil
Library = nil
tX = nil
Workspace = nil
tZ = nil
t1 = nil
t2 = nil
t4 = nil
t5 = nil
t6 = nil
t7 = nil
ua = nil
Toggles = nil
Options = nil
ug = nil
uh = nil
uk = nil
ul = nil
uq = nil
us = nil
uu = nil
ux = nil
uy = nil
uz = nil
local tO, tW, SaveManager, t0, VirtualUser, UserInputService, t9, TeleportService, ud, RunService, ui, uj, um, Players, uo, up, ur, ut, uv, uw, uA
uC = nil
uE = nil
local uB, uD
uB = nil
uD = nil
if not game:IsLoaded() then
    game.Loaded:Wait()
end
CoreGui, uA, uv, ur, Players, RunService, TeleportService, UserInputService, VirtualUser, Workspace, LocalPlayer, PlayerGui = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
CoreGui = game:GetService("CoreGui")
if (CoreGui and CoreGui or Workspace and RunService or Workspace and not RunService and (PlayerGui or Workspace)) and not (CoreGui and CoreGui or Workspace and RunService or Workspace and not RunService and (PlayerGui or Workspace)) then
    uv = game:GetService("GuiService")
    ur = game:GetService("HttpService")
    uA = game:GetService("Lighting")
else
    uA = game:GetService("GuiService")
    uv = game:GetService("HttpService")
    ur = game:GetService("Lighting")
end
Players = game:GetService("Players")
local Gt_49 = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
TeleportService = game:GetService("TeleportService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
if setthreadidentity then
    setthreadidentity(8)
end
tK = function()
    return PlayerGui
end
if getgenv then
    getgenv().gethui = tK
end
pcall(function()
    gethui = tK
end)
for k, v2 in { CoreGui, PlayerGui } do
    for k, v in { "Obsidian", "ObsidianLoading" } do
        local tm = v2:FindFirstChild(v)
        while tm do
            pcall(function()
                tm:Destroy()
            end)
            tm = v2:FindFirstChild(v)
        end
    end
end
s0 = "https://ouroboros-hub-rbx.web.app/"
uw = "#6ec1ff"
ui = "#e05a5a"
tc = "Fish an Egg from Rivers"
s6 = "https://rscripts.net/@Ouroboros"
uB = "#7fd47f"
s9 = "https://discord.gg/ehKVq7pf7v"
uo = "#8b93a3"
ut = "#e8a34d"
Options, Toggles = nil, nil
t9 = {}
t4 = {
    [1] = 0,
    [2] = {},
    [3] = 0,
    [4] = 0,
    [5] = 0,
    [6] = 0,
    [7] = 0,
    [8] = 0,
    [9] = 0,
    [10] = 0,
    [11] = 0,
    [12] = 0,
    [13] = 0,
    [14] = 0,
    [15] = 0,
    [16] = nil,
    [17] = nil,
    [18] = 0,
    [19] = false
}
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
tP = function()
    local vV
    vV = tK()
    local function vW(S)
        local vN = not S
        local vR = if vN then 1 else 0
        local vP = 3549 * vR + 1142 * (1 - vR)
        local vQ = 4030 * vR + 1640 * (1 - vR)
        if not ((vP * 3053 + vQ * 2981 + vP * vQ) % 16777213 == 3596571) then
            vN = not S:IsA("ScreenGui")
        end
        if vN then
            return
        end
        S.ResetOnSpawn = false
        S.IgnoreGuiInset = true
        S.DisplayOrder = math.max(S.DisplayOrder, 1000)
        pcall(function()
            S.ClipToDeviceSafeArea = false
        end)
        pcall(function()
            S.ScreenInsets = Enum.ScreenInsets.None
        end)
        if S.Parent ~= vV then
            pcall(function()
                S.Parent = vV
            end)
        end
    end
    vW(Library.ScreenGui)
    if Library.ActiveLoading and Library.ActiveLoading.ScreenGui then
        vW(Library.ActiveLoading.ScreenGui)
    end
    for k, v in { "Obsidian", "ObsidianLoading" } do
        local vX_1 = vV:FindFirstChild(v) or PlayerGui:FindFirstChild(v) or CoreGui:FindFirstChild(v)
        if vX_1 then
            vW(vX_1)
        end
    end
end
tP()
task.spawn(function()
    while Library and not Library.Unloaded do
        tP()
        task.wait(1)
    end
end)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Options = Library.Options
Toggles = Library.Toggles
local function Gt_15(an, ao, ap)
    if not an then
        error((("[Fish an Egg from Rivers] Missing parent for %*"):format(ao)))
    end
    local v7 = ap or 15
    local v8 = an:WaitForChild(ao, v7)
    if not v8 then
        error((("[Fish an Egg from Rivers] Missing %*.%*"):format(an:GetFullName(), ao)))
    end
    return v8
end
local Gt_18 = Gt_15(Gt_49, "Datas", 20)
tu = require(Gt_15(Gt_18, "EggConfig", 10))
ts = require(Gt_15(Gt_18, "Brainrots", 10))
local Gt_50 = require(Gt_15(Gt_18, "BrainrotRarities", 10))
local Gt_36 = require(Gt_15(Gt_18, "Rods", 10))
local Gt_20 = require(Gt_15(Gt_18, "FishingConfig", 10))
te = require(Gt_15(Gt_18, "RebirthConfig", 10))
local Gt_2 = require(Gt_15(Gt_18, "MutationConfig", 10))
local Gt_39 = require(Gt_15(Gt_18, "Traits", 10))
s1 = Gt_15(Gt_49, "FishingRemote", 20)
uD = Gt_15(Gt_49, "PlotRemote", 20)
uy = Gt_15(Gt_49, "BrainrotInventoryRemote", 20)
uu = Gt_15(Gt_49, "RebirthRemote", 20)
up = Gt_15(Gt_49, "RodShopRemote", 20)
uj = Gt_15(Gt_49, "SellRemote", 20)
Gt_15 = {
    "Common",
    "Uncommon",
    "Rare",
    "Epic",
    "Legendary",
    "Mythic",
    "Exotic",
    "Secret",
    "Divine",
    "Celestial"
}
Gt_49 = {}
for k, v in Gt_15 do
    Gt_49[v] = true
end
for k in Gt_50 do
    Gt_18 = type(k) == "string" and not Gt_49[k]
    if Gt_18 then
        Gt_49[k] = true
        Gt_15[#Gt_15 + 1] = k
    end
end
Gt_18 = {}
for k, v in Gt_15 do
    Gt_18[v] = true
end
local Gt_22 = { Common = true, Uncommon = true }
Gt_50 = {}
for k in Gt_2 do
    if type(k) == "string" then
        Gt_50[#Gt_50 + 1] = k
    end
end
table.sort(Gt_50)
Gt_49 = {}
for k, v in Gt_50 do
    Gt_2 = v ~= "None"
    Gt_5 = v ~= "Basic" and Gt_2
    if Gt_5 then
        Gt_49[v] = true
    end
end
Gt_2 = {}
for k in Gt_39 do
    if type(k) == "string" then
        Gt_2[#Gt_2 + 1] = k
    end
end
table.sort(Gt_2)
ta = {}
for k, v in Gt_36 do
    if type(v) == "table" then
        Gt_36 = #ta + 1
        Gt_39 = tonumber(v.price) or 0
        Gt_5 = tonumber(v.order) or 0
        ta[Gt_36] = { name = k, price = Gt_39, order = Gt_5 }
    end
end
local Gt_40 = 3
repeat
    local HL = bit32.rrotate(bit32.bxor(bit32.lrotate(Gt_40, 1), string.byte(tostring(Gt_40))), 21)
    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(HL, 4104447879), 3007680009), (bit32.bxor(bit32.band(HL, 190519416), 3304419623))), 3007680009), 3304419623) ~= HL then
        table.sort(ta, fn468)
    else
        table.sort(ta, fn468)
    end
    Gt_40 = (Gt_40 + 1) % 8
until (Gt_40 * 7 + 3) % 8 == 7
Gt_5 = { "Egg", "Brainrot" }
Gt_39 = { Egg = true, Brainrot = true }
Gt_36 = tonumber(Gt_20.HOOK_CHECK_RADIUS) or 5
ul = nil
ul = Gt_36
local Gt_25 = Gt_20.COOLDOWNS and Gt_20.COOLDOWNS.CAST
Gt_36 = Gt_25 or 1
ud = nil
ud = Gt_36
Gt_25 = Gt_20.COOLDOWNS and Gt_20.COOLDOWNS.REEL
Gt_36 = Gt_25 or 0.016666666666666666
t0 = nil
t0 = Gt_36
Gt_25 = Gt_20.COOLDOWNS and Gt_20.COOLDOWNS.HOOK
Gt_36 = Gt_25 or 0.5
tR = Gt_36
Gt_36 = tonumber(Gt_20.CAST_TIMEOUT) or 5
tL = Gt_36
Gt_36 = tonumber(Gt_20.RIVER_SPEED) or 8
tJ, Gt_25 = nil, nil
tJ = Gt_36
if not Gt_25 and 3 and (not Gt_25 or tJ) and (tJ or false or (not tJ or Gt_25)) or (not tJ and (not Gt_25 and Gt_25) or false) or not (not Gt_25 and 3 and (not Gt_25 or tJ) and (tJ or false or (not tJ or Gt_25)) or (not tJ and (not Gt_25 and Gt_25) or false)) then
    Gt_25 = Gt_20.COOLDOWNS
else
    Gt_20 = Gt_25.COOLDOWNS
end
if Gt_25 then
    Gt_25 = Gt_20.COOLDOWNS.BUY_ROD
end
Gt_36 = Gt_25
local Gt_51 = if Gt_36 then 1 else 0
local Gt_35 = 284 * Gt_51 + 180 * (1 - Gt_51)
local Gt_19 = 1249 * Gt_51 + 1793 * (1 - Gt_51)
if not ((Gt_35 * 2372 + Gt_19 * 3009 + Gt_35 * Gt_19) % 16777213 == 4786605) then
    Gt_36 = 1
end
tA, tx, tt, tO, tr, tg, uz, uh, t7, tM, ty, tb, s5, us, tZ, th, ua, tD, tn, ux, t5, tF, to, s2, uk, tp, s4, tw, tf, t1, tk, tB, tH, t6, tG, s3, tv, tq, uE, uq, tS, t2, tl, tC, uC, tQ, ug, tT, tz, tE, s7, tW, td, tX, s8, tI, ti, um, tj = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
tA = Gt_36
tx = 55
tt = 18
tr = fn936
tg = fns.fn107
uz = fn290
uh = fn1015
t7 = fn807
tM = fn1148
ty = fn817
tb = fn1033
s5 = fn583
us = fn479
tZ = fn727
th = fn1092
ua = fns.fn200
tD = fn951
tn = fn566
ux = fn554
t5 = fn481
tF = function(cQ)
    pcall(function()
        s1:FireServer(cQ)
    end)
end
to = function(cV)
    pcall(function()
        uD:FireServer(cV)
    end)
end
s2 = fn347
uk = function()
    local Character = LocalPlayer.Character
    local w4 = tM()
    local w6 = not w4
    local w7 = not Character
    local xb = if w7 then 1 else 0
    local w9 = 4071 * xb + 440 * (1 - xb)
    local xa = 3839 * xb + 1441 * (1 - xb)
    if not ((w9 * 859 + xa * 48 + w9 * xa) % 16777213 == 2532617) then
        w7 = w6
    end
    if w7 then
        return nil
    end
    local Tool = Character:FindFirstChildWhichIsA("Tool")
    local w5_1 = Tool and Tool:GetAttribute("rod") == true
    if w5_1 then
        return Tool
    end
    local w5_2 = Tool and Tool:GetAttribute("rod") ~= true
    if w5_2 then
        pcall(function()
            w4:UnequipTools()
        end)
    end
    local attr = LocalPlayer:GetAttribute("EquippedRod")
    local w6_2 = attr ~= ""
    local w7_1 = type(attr) == "string" and w6_2
    if w7_1 then
        local w6_3 = LocalPlayer.Backpack:FindFirstChild(attr)
        local w5_4 = w6_3 and w6_3:IsA("Tool") and w6_3:GetAttribute("rod") == true
        if w5_4 then
            w4:EquipTool(w6_3)
            return w6_3
        end
        for i, child in LocalPlayer.Backpack:GetChildren() do
            local w5_5 = child:IsA("Tool") and child:GetAttribute("rod") == true
            if w5_5 then
                w4:EquipTool(child)
                return child
            end
        end
        return nil
    end
    for i, child in LocalPlayer.Backpack:GetChildren() do
        local w5_6 = child:IsA("Tool") and child:GetAttribute("rod") == true
        if w5_6 then
            w4:EquipTool(child)
            return child
        end
    end
    return nil
end
tp = fn941
s4 = fns.fn206
tw = fns.fn51
tf = fn791
t1 = fn307
tk = fn931
tB = fn281
tH = function(eI)
    local yb_1
    local x9 = os.clock()
    local x9_3, x9_4
    if x9 - t4[4] < ud then
        return false
    end
    local x8 = s5()
    local ya = x8 and type(x8.checkCooldown) == "function"
    local ya_1
    if ya then
        ya_1, yb_1 = pcall(function()
            return x8:checkCooldown("CAST")
        end)
        if ya_1 and yb_1 == false then
            return false
        end
        t4[4] = x9
        t4[17] = eI
        t4[18] = x9 + tL
        t4[19] = true
        if x9_3 then
            pcall(function()
                x8:playCastAnimation(LocalPlayer.UserId, eI)
            end)
        end
        if x9_4 then
            pcall(function()
                x8:setCooldown("CAST")
            end)
        end
        tF({ kind = "requestCast", targetPosition = { X = eI.X, Y = eI.Y, Z = eI.Z } })
        return true
    end
    t4[4] = x9
    t4[17] = eI
    t4[18] = x9 + tL
    t4[19] = true
    x9_3 = x8 and type(x8.playCastAnimation) == "function"
    if x9_3 then
        pcall(function()
            x8:playCastAnimation(LocalPlayer.UserId, eI)
        end)
    end
    x9_4 = x8 and type(x8.setCooldown) == "function"
    if x9_4 then
        pcall(function()
            x8:setCooldown("CAST")
        end)
    end
    tF({ kind = "requestCast", targetPosition = { X = eI.X, Y = eI.Y, Z = eI.Z } })
    return true
end
t6 = fn644
tG = function(e4)
    local yl = os.clock()
    if yl - t4[6] < t0 then
        return false
    end
    t4[6] = yl
    local yk = s5()
    local yl_1 = yk and type(yk.requestReel) == "function"
    if yl_1 then
        pcall(function()
            yk:requestReel()
        end)
        return true
    end
    tF({ kind = "requestReel", uuid = e4 })
    return true
end
s3 = function(ff, fg)
    local yu
    yu = s5()
    local yv = not fg
    if yv ~= false then
        yv = tp(yu)
    end
    if yv and ff then
        return
    end
    if ff then
        local yv_1 = yu
        if yv_1 then
            yv_1 = yu.catchUUID or yu.localHookUUID
        end
        local yw_2 = yv_1
        if yw_2 then
            tF({ kind = "requestCancelHook", uuid = yw_2 })
        else
            tF({ kind = "requestCancelCast" })
        end
    end
    t4[16] = nil
    t4[17] = nil
    t4[18] = 0
    t4[19] = false
    if not yu then
        return
    end
    local yv_2 = not fg
    if yv_2 ~= false then
        yv_2 = tp(yu)
    end
    if yv_2 then
        return
    end
    pcall(function()
        if type(yu.cleanupPlayerHookPart) == "function" then
            yu:cleanupPlayerHookPart(LocalPlayer.UserId)
        end
        if type(yu.releaseHookState) == "function" then
            yu:releaseHookState()
        end
        if type(yu.setRiverHoverActive) == "function" then
            yu:setRiverHoverActive(false)
        end
        yu.localCastActive = false
        yu.localCastAnimating = false
        if type(yu.activeCastPositions) == "table" then
            yu.activeCastPositions[LocalPlayer.UserId] = nil
        end
    end)
end
tv = fns.fn114
tq = fn1082
uE = fn395
uq = fn615
tS = fns.fn173
t2 = fns.fn240
tl = fn504
tC = fn955
uC = fn987
tQ = fns.fn22
ug = fn715
tT = fns.fn32
tz = fn556
tE = fn1248
s7 = fn545
tW = fn528
td = function()
    local Bm = os.clock()
    if Bm - t4[12] < tA then
        return
    end
    local Bn = ty()
    for k, v in ta do
        local Bv = v
        local Bo = not tW(Bv.name) and Bn >= Bv.price
        if Bo then
            t4[12] = Bm
            pcall(function()
                up:FireServer({ kind = "buyRod", rodName = Bv.name })
            end)
            return
        end
    end
end
tX = fn485
s8 = fns.fn31
tI = fns.fn66
ti = fn678
um = fn774
tj = function()
    local Cp = os.clock()
    if Cp - t4[14] < 0.35 then
        return
    end
    local Cq = s5()
    local Cr = Toggles.AutoFish and Toggles.AutoFish.Value and Cq
    if Cr then
        local Cs = Cq.catchActive or tq() or uE()
        Cr = Cs
    end
    if Cr then
        return
    end
    if not tI() then
        return
    end
    if Cp - t4[3] > 6 then
        if Cp - t4[15] >= 4 then
            t4[15] = Cp
            local Co = s8()
            if Co then
                task.spawn(function()
                    s2(Co.Position + Vector3.new(0, 3, 18))
                    task.wait(0.25)
                    if Library.Unloaded then
                        return
                    end
                    s2(Co.Position + Vector3.new(0, 3, 0))
                end)
            end
        end
        return
    end
    if #t4[2] == 0 then
        return
    end
    for k, v in t4[2] do
        local CC = v
        if um(CC) then
            t4[14] = Cp
            table.remove(t4[2], k)
            pcall(function()
                uj:FireServer({ kind = "SellOne", sellKey = CC.SellKey })
            end)
            return
        end
    end
end
t9.FishingRemote = s1.OnClientEvent:Connect(onOnClientEvent)
t9.SellRemote = uj.OnClientEvent:Connect(onOnClientEvent2)
t9.RebirthRemote = uu.OnClientEvent:Connect(fns.onOnClientEvent3)
pcall(fn1068)
Gt_20 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = s9, Copyable = true }, "|", tc },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
tO = {
    Info = Gt_20:AddTab("Info", "info"),
    Main = Gt_20:AddTab("Main", "fish"),
    Player = Gt_20:AddTab("Player", "person-standing"),
    Settings = Gt_20:AddTab("Settings", "settings")
}
Gt_25 = fn771
for k, v in tO do
    if k ~= "Info" then
        Gt_25(v)
    end
end
Gt_20, Gt_36, Gt_12, Gt_30, Gt_10 = nil, nil, nil, nil, nil
local FishingGroup = tO.Main:AddLeftGroupbox("Fishing", "fish")
FishingGroup:AddToggle("AutoFish", { Text = "Auto Fish", Default = false })
FishingGroup:AddDropdown("FishRarities", {
    Text = "Rarity Filter",
    Values = Gt_15,
    Default = Gt_18,
    Multi = true,
    AllowNull = true,
    Searchable = true,
    Expandable = true,
    ExpandColumns = 2
})
Gt_40 = tO.Main:AddLeftGroupbox("Plot", "layout-grid")
if (Gt_36 and Gt_30 or false or (Gt_36 or false) and (false and Gt_36)) and (not Gt_12 and Gt_40 or (Gt_20 or not Gt_36) or (Gt_10 or not Gt_20) and (not Gt_12 or Gt_36)) or ((not Gt_20 or Gt_40) and (not Gt_40 or false) and (Gt_40 or not Gt_20 or not Gt_36 and Gt_30) or (Gt_10 or Gt_40 or false and Gt_20) and (Gt_40 and Gt_40 and (false and Gt_12))) or not ((Gt_36 and Gt_30 or false or (Gt_36 or false) and (false and Gt_36)) and (not Gt_12 and Gt_40 or (Gt_20 or not Gt_36) or (Gt_10 or not Gt_20) and (not Gt_12 or Gt_36)) or ((not Gt_20 or Gt_40) and (not Gt_40 or false) and (Gt_40 or not Gt_20 or not Gt_36 and Gt_30) or (Gt_10 or Gt_40 or false and Gt_20) and (Gt_40 and Gt_40 and (false and Gt_12)))) then
    Gt_40:AddToggle("AutoPlaceEggs", { Text = "Auto Place Eggs", Default = false })
    Gt_40:AddDropdown("PlaceEggRarities", {
        Text = "Place Egg Rarities",
        Values = Gt_15,
        Default = Gt_18,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Expandable = true,
        ExpandColumns = 2
    })
    Gt_40:AddToggle("AutoHatch", { Text = "Auto Hatch", Default = false })
    Gt_40:AddToggle("AutoPlaceBest", { Text = "Auto Place Best Pets", Default = false })
    Gt_40:AddDivider("Pickup")
    Gt_40:AddToggle("AutoPickupPets", { Text = "Auto Pickup Pets", Default = false })
    Gt_40:AddDropdown("PickupRarities", {
        Text = "Pickup Rarities",
        Values = Gt_15,
        Default = Gt_22,
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Expandable = true,
        ExpandColumns = 2
    })
    Gt_40:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
    Gt_20 = tO.Main:AddRightGroupbox("Progress", "trending-up")
else
    Gt_22:AddToggle("AutoPlaceEggs", { Text = "Auto Place Eggs", Default = false })
    Gt_22:AddDropdown("PlaceEggRarities", {
        AllowNull = true,
        ExpandColumns = 2,
        Values = Gt_18,
        Expandable = true,
        Text = "Place Egg Rarities",
        Multi = true,
        Default = Gt_20,
        Searchable = true
    })
    Gt_22:AddToggle("AutoHatch", { Text = "Auto Hatch", Default = false })
    Gt_22:AddToggle("AutoPlaceBest", { Text = "Auto Place Best Pets", Default = false })
    Gt_22:AddDivider("Pickup")
    Gt_22:AddToggle("AutoPickupPets", { Text = "Auto Pickup Pets", Default = false })
    Gt_22:AddDropdown("PickupRarities", {
        Expandable = true,
        AllowNull = true,
        Default = tO,
        Multi = true,
        Text = "Pickup Rarities",
        Searchable = true,
        ExpandColumns = 2,
        Values = Gt_18
    })
    Gt_22:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
    Gt_15 = Gt_40.Main:AddRightGroupbox("Progress", "trending-up")
end
Gt_20:AddToggle("AutoBuyRod", { Text = "Auto Buy Rod", Default = false })
Gt_20:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
Gt_36 = tO.Main:AddRightGroupbox("Sell", "hand-coins")
Gt_36:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
Gt_36:AddDropdown("SellTypes", { Text = "Sell Types", Values = Gt_5, Default = Gt_39, Multi = true, AllowNull = true })
Gt_36:AddDropdown("SellRarities", {
    Text = "Sell Rarities",
    Values = Gt_15,
    Default = Gt_22,
    Multi = true,
    AllowNull = true,
    Searchable = true,
    Expandable = true,
    ExpandColumns = 2
})
Gt_36:AddDivider("Keep")
Gt_36:AddDropdown("KeepMutations", {
    Text = "Keep Mutations",
    Values = Gt_50,
    Default = Gt_49,
    Multi = true,
    AllowNull = true,
    Searchable = true
})
Gt_36:AddDropdown("KeepTraits", {
    Text = "Keep Traits",
    Values = Gt_2,
    Default = {},
    Multi = true,
    AllowNull = true,
    Searchable = true
})
task.spawn(autoFishLoop)
task.spawn(fns.autoPlaceEggsLoop)
Toggles.AutoFish:OnChanged(fn325)
local function Gt_44()
    local D1
    local D0
    D0 = nil
    D1 = nil
    local Label3, DZ, D_, Label, Label2
    local function D4()
        local C5 = hookfunction ~= nil
        local C6 = hookmetamethod ~= nil
        local C7 = getrawmetatable ~= nil
        local C8 = setrawmetatable ~= nil
        local C9 = getgc ~= nil
        local Da = getgenv ~= nil
        local Db = getreg ~= nil
        local Dc = getconnections ~= nil
        local Dd = firesignal ~= nil
        local De = getcallbackvalue ~= nil
        local Df = setclipboard ~= nil
        local Dg = getcustomasset ~= nil
        local Dh = getnamecallmethod ~= nil
        local Di = isexecutorclosure ~= nil
        local Dj = fireproximityprompt ~= nil
        local Dk = firetouchinterest ~= nil
        local Dl = WebSocket ~= nil
        local Dm = readfile ~= nil
        local Dn = writefile ~= nil
        local Dp = (request or http_request) ~= nil
        local Dr = (debug and debug.getupvalues) ~= nil
        local Dt = (debug and debug.setupvalue) ~= nil
        local Du = 0
        local Dv = { C5, C6, C7, C8, C9, Da, Db, Dc, Dd, De, Df, Dg, Dh, Di, Dj, Dk, Dl, Dm, Dn, Dp, Dr, Dt }
        for i, v in ipairs(Dv) do
            if v then
                Du += 1
            end
        end
        local C5_1 = Du / #Dv
        if C5_1 >= 0.9 then
            return tr("Full Support", uB)
        elseif C5_1 >= 0.6 then
            return tr("Half Support", ut)
        else
            return tr("Low Support", ui)
        end
    end
    D0 = "Unknown"
    pcall(function()
        local DH_1
        local DG_1
        if identifyexecutor then
            DH_1, DG_1 = identifyexecutor()
            local DI = DH_1 ~= ""
            local DJ = type(DH_1) == "string" and DI
            if DJ then
                local DI_1 = type(DG_1) == "string" and DG_1 ~= "" and DH_1 .. " " .. DG_1
                D0 = DI_1 or DH_1
            end
        end
    end)
    local D5 = D4()
    D1 = os.clock()
    DZ = function()
        local DO = math.floor(os.clock() - D1)
        if DO < 60 then
            return DO .. "s"
        elseif DO < 3600 then
            return string.format("%dm %ds", DO // 60, DO % 60)
        else
            return string.format("%dh %dm", DO // 3600, DO % 3600 // 60)
        end
    end
    local UserGroup = tO.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(tg("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, uB), true)
    UserGroup:AddLabel(tg("UserId", tostring(LocalPlayer.UserId), uw), true)
    UserGroup:AddLabel(tg("Executor", D0 .. "  " .. D5, uB), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(tg("Session", DZ(), ut), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            uz(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            uz("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = tO.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(tg("Game", tc, uw), true)
    Label2 = SessionGroup:AddLabel(tg("Players", "0/0", uB), true)
    D_ = tostring(game.JobId)
    local D5_1 = #D_ > 18 and string.sub(D_, 1, 18) .. "..."
    local D5_2 = D5_1 or D_
    SessionGroup:AddLabel(tg("Job", D5_2, uo), true)
    Label = SessionGroup:AddLabel(tg("Ping", "0 ms", ut), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            TeleportService:Teleport(game.PlaceId, LocalPlayer)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            uz(D_, "Copied Job ID")
        end
    })
    task.spawn(function()
        local DR_1
        local DQ_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(tg("Session", DZ(), ut))
            Label2:SetText(tg("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), uB))
            DQ_1, DR_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local DQ_2 = DQ_1 and DR_1 .. " ms" or "n/a"
            Label:SetText(tg("Ping", DQ_2, ut))
        end
    end)
    local SocialsGroup = tO.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = uh })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            if setclipboard then
                setclipboard(s6)
            elseif toclipboard then
                toclipboard(s6)
            end
            Library:Notify("Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            uz(s0, "Copied website link")
        end
    })
end
Gt_44()
Gt_30 = function()
    local MovementGroup = tO.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = tO.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    t9.NoClip = RunService.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = LocalPlayer.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local Eb_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if Eb_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    t9.InfJump = UserInputService.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local Em_1 = tM()
            if Em_1 then
                Em_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    t9.Fly = RunService.RenderStepped:Connect(function(mP)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local Er_1 = tM()
            if Er_1 then
                Er_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local Er_3 = t7()
            local Es = tM()
            local CurrentCamera = Workspace.CurrentCamera
            if Er_3 and Es and CurrentCamera then
                Es.PlatformStand = true
                local Es_1 = Vector3.zero
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    Es_1 += CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    Es_1 -= CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                    Es_1 -= CurrentCamera.CFrame.RightVector
                end
                local Ez = if UserInputService:IsKeyDown(Enum.KeyCode.D) then 1 else 0
                if Ez == 1 then
                    Es_1 += CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    Es_1 += Vector3.new(0, 1, 0)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                    Es_1 -= Vector3.new(0, 1, 0)
                end
                Er_3.AssemblyLinearVelocity = Vector3.zero
                if Es_1.Magnitude > 0 then
                    Er_3.CFrame = Er_3.CFrame + Es_1.Unit * Options.FlySpeed.Value * mP
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local EA = tM()
            if EA then
                EA.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local EF = tM()
            if EF then
                EF.WalkSpeed = 16
            end
        end
    end)
    local function nc(nd)
        if not nd:IsA("ProximityPrompt") then
            return
        end
        nd.HoldDuration = 0
        nd.MaxActivationDistance = 50
        nd.RequiresLineOfSight = false
    end
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in Workspace:GetDescendants() do
                pcall(nc, descendant)
            end
            if t9.InstantPrompt then
                t9.InstantPrompt:Disconnect()
            end
            t9.InstantPrompt = Workspace.DescendantAdded:Connect(function(nk)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(nc, nk)
                end
            end)
        elseif t9.InstantPrompt then
            t9.InstantPrompt:Disconnect()
            t9.InstantPrompt = nil
        end
    end)
end
Gt_30()
Gt_10 = function()
    local MenuGroup = tO.Settings:AddLeftGroupbox("Menu", "logs")
    local nq = 0
    local nr = tick()
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = MenuGroup:AddLabel("AFK triggers: 0")
    local function nt()
        local CurrentCamera = Workspace.CurrentCamera
        if not CurrentCamera then
            return
        end
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        nq += 1
        nr = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. nq)
        end)
    end
    t9.AntiAfkIdled = LocalPlayer.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(nt)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local E1 = Toggles.AntiAfk.Value and tick() - nr >= 60
            if E1 then
                pcall(nt)
            end
        end
    end)
    MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3D", { Text = "Disable 3D Rendering", Default = false })
    MenuGroup:AddToggle("FpsBoost", { Text = "FPS Boost", Default = false })
    MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local function nQ(nR)
        pcall(function()
            uA:SetGameplayPausedNotificationEnabled(not nR)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not nR
            end
        end)
        if not nR then
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
    Toggles.AntiGameplayPause:OnChanged(function()
        nQ(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                nQ(true)
            end
        end
    end)
    local n7 = false
    local function n8()
        local JobId, PlaceId
        if n7 then
            return
        end
        n7 = true
        PlaceId, JobId = game.PlaceId, game.JobId
        local Fd = pcall(function()
            TeleportService:TeleportToPlaceInstance(PlaceId, JobId, LocalPlayer)
        end)
        if not Fd then
            pcall(function()
                TeleportService:Teleport(PlaceId, LocalPlayer)
            end)
        end
    end
    task.spawn(function()
        local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
        local Fi = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
        if not Fi then
            return
        end
        Fi.ChildAdded:Connect(function(ot)
            if Library.Unloaded then
                return
            end
            if Toggles.AutoReconnect.Value and ot.Name == "ErrorPrompt" then
                n8()
            end
        end)
    end)
    TeleportService.TeleportInitFailed:Connect(function()
        if Toggles.AutoReconnect.Value then
            n7 = false
            n8()
        end
    end)
    Toggles.Disable3D:OnChanged(function()
        pcall(function()
            RunService:Set3dRenderingEnabled(not Toggles.Disable3D.Value)
        end)
    end)
    local oJ = {
        ParticleEmitter = true,
        Trail = true,
        Smoke = true,
        Fire = true,
        Sparkles = true,
        Explosion = true,
        Beam = true
    }
    local function oK(oL)
        if oJ[oL.ClassName] then
            pcall(function()
                oL.Enabled = false
            end)
        end
    end
    Toggles.FpsBoost:OnChanged(function()
        if Toggles.FpsBoost.Value then
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
            end)
            pcall(function()
                ur.GlobalShadows = false
            end)
            pcall(function()
                ur.FogEnd = 9000000000
            end)
            for i, descendant in Workspace:GetDescendants() do
                pcall(oK, descendant)
            end
            if t9.FpsBoost then
                t9.FpsBoost:Disconnect()
            end
            t9.FpsBoost = Workspace.DescendantAdded:Connect(function(oZ)
                if Toggles.FpsBoost.Value then
                    pcall(oK, oZ)
                end
            end)
        else
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Automatic
            end)
            pcall(function()
                ur.GlobalShadows = true
            end)
            if t9.FpsBoost then
                t9.FpsBoost:Disconnect()
                t9.FpsBoost = nil
            end
        end
    end)
    local ScriptGroup = tO.Settings:AddLeftGroupbox("Script", "terminal")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            Library:Unload()
        end
    })
end
Gt_10()
Library:OnUnload(function()
    for k, v in t9 do
        local FE = v
        pcall(function()
            FE:Disconnect()
        end)
    end
    table.clear(t9)
    pcall(function()
        RunService:Set3dRenderingEnabled(true)
    end)
    local Fx = tM()
    if Fx then
        Fx.PlatformStand = false
        Fx.AutoRotate = true
        Fx.WalkSpeed = 16
    end
end)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(tO.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/FishAnEggFromRivers")
local function Gt_7()
    local pe = SaveManager:BuildConfigSection(tO.Settings)
    local function pf(pg, ph)
        local FJ = pg == "Toggle" and Toggles
        local FO = if FJ then 1 else 0
        local FM = 868 * FO + 3898 * (1 - FO)
        local FN = 1514 * FO + 2511 * (1 - FO)
        if not ((FM * 1687 + FN * 366 + FM * FN) % 16777213 == 3332592) then
            FJ = Options
        end
        local FJ_1 = FJ[ph]
        local FI_2 = type(FJ_1) == "table" and FJ_1.Type == pg
        return FI_2 and FJ_1 or nil
    end
    local function pp(pq, pr)
        local Type = pr.Type
        if Type == "Toggle" then
            return { idx = pq, type = "Toggle", value = pr.Value == true }
        elseif Type == "Slider" then
            return { idx = pq, type = "Slider", value = tostring(pr.Value) }
        elseif Type == "Dropdown" then
            return { idx = pq, type = "Dropdown", multi = pr.Multi == true, value = pr.Value }
        elseif Type == "Input" then
            local FQ = pr.Value or ""
            return { idx = pq, type = "Input", text = tostring(FQ) }
        elseif Type == "ColorPicker" then
            return { idx = pq, type = "ColorPicker", value = pr.Value:ToHex(), transparency = pr.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = pq,
                type = "KeyPicker",
                mode = pr.Mode,
                key = pr.Value,
                modifiers = pr.Modifiers,
                toggled = pr.Toggled
            }
        else
            return nil
        end
    end
    local function pt()
        local FT = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local FU = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if FU then
                    local FU_1 = pp(k, v)
                    if FU_1 then
                        FT[#FT + 1] = FU_1
                    end
                end
            end
        end
        table.sort(FT, function(pD, pE)
            if pD.type ~= pE.type then
                return pD.type < pE.type
            end
            return pD.idx < pE.idx
        end)
        return { objects = FT }
    end
    local function pF(pG)
        local F9
        F9 = nil
        local Ga = type(pG) ~= "table" or type(pG.idx) ~= "string" or type(pG.type) ~= "string" or SaveManager.Ignore[pG.idx]
        if Ga then
            return false
        end
        F9 = pf(pG.type, pG.idx)
        if not F9 then
            return false
        end
        local Ga_1 = pcall(function()
            if pG.type == "Input" then
                if type(pG.text) ~= "string" then
                    return
                end
                F9:SetValue(pG.text)
            elseif pG.type == "ColorPicker" then
                F9:SetValueRGB(Color3.fromHex(pG.value), pG.transparency)
            elseif pG.type == "KeyPicker" then
                F9:SetValue({ pG.key, pG.mode, pG.modifiers })
                if pG.mode == "Toggle" and pG.toggled ~= nil then
                    F9.Toggled = pG.toggled
                    F9:Update()
                end
            else
                F9:SetValue(pG.value)
            end
        end)
        return Ga_1
    end
    pe:AddDivider()
    pe:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    pe:AddButton("Export Config to Clipboard", function()
        local Gd_1
        local Gc_1
        Gc_1, Gd_1 = pcall(uv.JSONEncode, uv, pt())
        if not Gc_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local Gc_2 = setclipboard or toclipboard
        local Gc_3 = type(Gc_2) ~= "function" or not pcall(Gc_2, Gd_1)
        if Gc_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    pe:AddButton("Import Config from Clipboard Text", function()
        local Gi_1
        local Gg = Options.SaveManager_ImportSource.Value or ""
        local Gg_1
        local Gh = tostring(Gg):match("^%s*(.-)%s*$")
        if Gh == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        Gg_1, Gi_1 = pcall(uv.JSONDecode, uv, Gh)
        local Gh_1 = not Gg_1 or type(Gi_1) ~= "table" or type(Gi_1.objects) ~= "table"
        if Gh_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local Gg_2 = 0
        for i, v in ipairs(Gi_1.objects) do
            if pF(v) then
                Gg_2 += 1
            end
        end
        if Gg_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local Gi_2 = Gg_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(Gg_2, Gi_2), 6)
    end)
end
Gt_7()
SaveManager:LoadAutoloadConfig()
Gt_12 = Toggles.HideUiOnStart and Toggles.HideUiOnStart.Value
if Gt_12 then
    Library:Toggle(false)
end
