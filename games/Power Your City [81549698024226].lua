local fns = {}
local PanelsGroup2, FarmGroup, MiscGroup2, PowerGroup, MenuGroup
local RequestSpeedUpgrade
local oH
local om
local o5
local n2
local oN
local Storage
local n8
local oT
local nQ
local oA
local ph
local oZ
local nW
local ol
local Workspace
local n1
local oM
local connection
local oS
local Label
local PlacementUtil
local pg
local oY
local nV
local oF
local o3
local n0
local oL
local oq
local o9
local n6
local nO
local oy
local Generators
local Library
local oX
local nU
local oE
local o2
local n_
local oK
local op
local o8
local RequestRebirth
local oQ
local ox
local pe
local oW
local Options
local oD
local oh
local LocalPlayer
local Toggles
local oJ
local oo
local o7
local n4
local oP
local nM
local ow
local pd
local oa
local oV
local pj
local og
local o0
local nY
local oI
local VirtualUser
local GetRebirthInfo
local oO
local worker
local ov
local pc
local n9
local oU
local nR
local pi
local of
local o_
function fns.fn6(al, am, an)
    return string.format("<b>%s</b> %s %s", al, o_("-", "#5a6070"), o_(am, an))
end
function fns.onCopyJoinScript_JobID()
    local jp = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, nM)
    nO(jp, "Copied join script to clipboard")
end
function fns.fn51()
    nR("Storage", "SellBatteryRarities", "SellBatteries", "Sell", "AutoSellBatteries")
end
function fns.fn56()
    nR("Storage", "PickupBatteryRarities", "PickupBatteries", "Pickup", "AutoPickupBatteries")
end
function fns.worker2()
    local ww_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local wv = math.floor(os.clock() - o0)
        if wv < 60 then
            ww_1 = wv .. "s"
        elseif wv < 3600 then
            ww_1 = string.format("%dm %ds", wv // 60, wv % 60)
        else
            ww_1 = string.format("%dh %dm", wv // 3600, wv % 3600 // 60)
        end
        Label:SetText(oO("Session time", ww_1, op))
    end
end
function fns.fn91()
    oN("Storage", "ReplaceBatteries", "ReplaceBatteryRarities", "ReplaceBatteryMaxRarity")
end
function fns.fn101(bw)
    local rc_1
    local q4 = n1()
    local q5 = n2(bw)
    if not q4 or not q5 then
        return nil
    end
    local Floors = q4:FindFirstChild("Floors")
    local PlacedObjects = q4:FindFirstChild("PlacedObjects")
    local Plots = Workspace:FindFirstChild("Plots")
    local ra = not Floors or not PlacedObjects
    local q9_1 = not Plots
    local rb = ra
    local rb_3
    local ri = if rb then 1 else 0
    local rg = 3996 * ri + 3812 * (1 - ri)
    local rh = 3223 * ri + 1565 * (1 - ri)
    if not ((rg * 812 + rh * 3473 + rg * rh) % 16777213 == 10540126) then
        rb = q9_1
    end
    if rb then
        return nil
    end
    local clone = q5:Clone()
    o3(clone)
    local q5_1 = nil
    for i, descendant in ipairs(Floors:GetDescendants()) do
        if descendant:IsA("BasePart") then
            local q6_2 = math.floor(descendant.Size.X * 0.5)
            local ra_1 = math.floor(descendant.Size.Z * 0.5)
            local rr = -q6_2
            while rr <= q6_2 do
                local rs = rr
                local rw = -ra_1
                while rw <= ra_1 do
                    local rx = rw
                    local q6_4 = descendant.Position + Vector3.new(rs, 0, rx)
                    local rb_2 = CFrame.new(q6_4.X, descendant.Position.Y + descendant.Size.Y * 0.5, q6_4.Z)
                    local q6_5 = PlacementUtil.GetGroundedPlacementCFrame(clone, rb_2, descendant)
                    rc_1, rb_3 = PlacementUtil.GetPlacementBoundsAt(clone, q6_5)
                    if rc_1 and rb_3 then
                        local rd_1 = PlacementUtil.GetPlotForBounds(Plots, rc_1, rb_3, LocalPlayer.UserId, LocalPlayer)
                        local re = rd_1 == q4 and not PlacementUtil.HasPlacementOverlap(rc_1, rb_3, PlacedObjects)
                        if re then
                            q5_1 = q6_5
                            break
                        end
                        rw += 4
                        continue
                    end
                    rw += 4
                end
                if q5_1 then
                    break
                end
                rr += 4
            end
        end
        if q5_1 then
            break
        end
    end
    clone:Destroy()
    return q5_1
end
function fns.onRscripts()
    nO(oQ, "Copied Rscripts profile to clipboard")
end
function fns.worker3()
    while not Library.Unloaded do
        if og("AutoSellPower") then
            pcall(n6)
        end
        if og("AutoSellPanels") then
            pcall(n0)
        end
        if og("AutoSellBatteries") then
            pcall(nQ)
        end
        task.wait(nU("SellDelay", 1))
    end
end
function fns.fn129(i8)
    local DiscordGroup = i8:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = o8 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = o8 })
end
function fns.fn180(cA, cB)
    return (ov[cA] or 1) <= (ov[cB] or #ow)
end
function fns.onInputBegan()
    oI = tick()
end
function fns.fn222(ce)
    local r_ = pg(ce)
    local r0 = r_ and tonumber(r_.Price)
    local r__1 = r0
    local r4 = if r__1 then 1 else 0
    local r2 = 3189 * r4 + 3364 * (1 - r4)
    local r3 = 3070 * r4 + 1763 * (1 - r4)
    if not ((r2 * 3572 + r3 * 305 + r2 * r3) % 16777213 == 5340475) then
        r__1 = 0
    end
    return r__1
end
function fns.fn229(az, aA)
    local qp = Options[az]
    local qq = qp and tonumber(qp.Value)
    return qq or aA
end
function fns.onUnload()
    Library:Unload()
end
function fns.fn259()
    local wl_1
    local wk_1
    if identifyexecutor then
        wl_1, wk_1 = identifyexecutor()
        local wm = wl_1 ~= ""
        local wn = type(wl_1) == "string" and wm
        if wn then
            local wm_1 = type(wk_1) == "string" and wk_1 ~= "" and wl_1 .. " " .. wk_1
            ol = wm_1 or wl_1
        end
    end
end
function fns.fn278()
    local qA = oq()
    local qB = qA and qA:FindFirstChild("HumanoidRootPart")
    return qB
end
local function fn292(bt)
    if bt.PrimaryPart then
        return bt.PrimaryPart
    end
    local BasePart = bt:FindFirstChildWhichIsA("BasePart", true)
    if BasePart then
        bt.PrimaryPart = BasePart
    end
    return BasePart
end
local function fn295()
    nW("Storage", oK, oF, oH("SelectedBatteries"))
end
local function fn323(ca)
    local rS = oV[ca]
    if rS then
        return rS, "Generator"
    end
    local rS_1 = oF[ca]
    if rS_1 then
        return rS_1, "Storage"
    end
    return nil, nil
end
local function fn341()
    nR("Generator", "SellPanelRarities", "SellPanels", "Sell", "AutoSellPanels")
end
local function fn344(ai, aj)
    return string.format('<font color="%s">%s</font>', aj, ai)
end
local function fn379(ck, cl)
    local r5 = oH(ck)
    local r6 = false
    for k, v in pairs(r5) do
        if v then
            r6 = true
            break
        end
    end
    if not r6 then
        return true
    end
    return r5[cl] == true
end
local function worker5()
    while not Library.Unloaded do
        if og("AutoPickupPanels") then
            pcall(oh)
        end
        if og("AutoPickupBatteries") then
            pcall(n9)
        end
        task.wait(nU("PickupDelay", 0.5))
    end
end
local function onPickupEverythingInBase()
    task.spawn(worker)
end
local function fn408(c0)
    local sB = oS(c0)
    if not sB then
        return false
    end
    return n_(c0, sB)
end
local function fn409(aF, aG)
    local qs = Options[aF]
    local qt = qs and qs.Value
    local qt_1 = qt ~= ""
    local qu = type(qt) == "string" and qt_1
    if qu then
        return qt
    end
    return aG
end
local function fn413()
    local v3_1
    local v2 = pd()
    local v2_1
    if v2 <= 0 then
        return
    end
    v2_1, v3_1 = pcall(function()
        return RequestSpeedUpgrade:InvokeServer(1)
    end)
    local v4 = v2_1 and type(v3_1) == "table" and v3_1.Success == true
    if v4 then
        return
    end
end
local function fn418()
    nV:Disconnect()
    connection:Disconnect()
end
local function fn470(aM)
    local qw = Options[aM]
    return qw and qw.Value or {}
end
local function fn490()
    local Plots = Workspace:FindFirstChild("Plots")
    local attr = LocalPlayer:GetAttribute("PlotName")
    if not Plots or attr == nil then
        return nil
    end
    return Plots:FindFirstChild(tostring(attr))
end
local function fn491()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local qJ = leaderstats and leaderstats:FindFirstChild("Cash")
    local qI_1 = qJ
    if qJ then
        qJ = qI_1.Value
    end
    return qJ or 0
end
local function fn494()
    local u1 = oa()
    if not u1 or u1.IsMaxed then
        return
    end
    local Requirement = u1.Requirement
    if type(Requirement) ~= "table" then
        return
    end
    if u1.HasRequiredPanel ~= true then
        oA("Generator", Requirement.RequiredPanelItem)
        return
    end
    if u1.HasRequiredBattery ~= true then
        oA("Storage", Requirement.RequiredBatteryItem)
    end
end
local function fn500(hc, hd)
    local uS = hd == ""
    local uT = typeof(hd) ~= "string"
    local uX = if uT then 1 else 0
    local uV = 3182 * uX + 4030 * (1 - uX)
    local uW = 388 * uX + 225 * (1 - uX)
    if not ((uV * 1994 + uW * 752 + uV * uW) % 16777213 == 7871300) then
        uT = uS
    end
    if uT then
        return false
    end
    local uS_1 = oJ(hd)
    if uS_1 then
        return o2(hd)
    elseif of(hc, hd) then
        return o2(hd)
    else
        return false
    end
end
local function onInputChanged(j7)
    local UserInputType = j7.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        oI = tick()
    end
end
local function worker4()
    while not Library.Unloaded do
        if og("AutoReplaceBetterPanels") then
            pcall(ox)
        end
        if og("AutoReplaceBetterBatteries") then
            pcall(oo)
        end
        task.wait(nU("ReplaceDelay", 0.5))
    end
end
local function fn523(au)
    local qm = Toggles[au]
    return qm ~= nil and qm.Value == true
end
local function fn551()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    oE = tick()
end
local function fn555()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local qM = leaderstats and leaderstats:FindFirstChild("Power")
    local qL_1 = qM
    if qM then
        qM = qL_1.Value
    end
    return qM or 0
end
local function fn556(ab, ac)
    if setclipboard then
        setclipboard(ab)
    elseif toclipboard then
        toclipboard(ab)
    end
    Library:Notify(ac)
end
local function fn570(hH)
    local BaseData = LocalPlayer:FindFirstChild("BaseData")
    local vm = BaseData and BaseData:FindFirstChild("Area" .. tostring(hH))
    local vl_1 = vm
    if vm then
        vm = vl_1:IsA("BoolValue")
    end
    if vm then
        vm = vl_1.Value == true
    end
    return vm
end
local function fn610()
    local v9 = o5("SelectedSeller", o7[1])
    local wa = string.match(v9, "Seller (%d+)")
    return wa or "1"
end
local function fn615()
    return LocalPlayer.Character
end
local function fn646()
    nO(oT, "Copied Discord invite to clipboard")
end
local function fn651(ik)
    local vP = ik and ik:FindFirstChild("Lock")
    if not vP then
        return false
    end
    local Attachment = vP:FindFirstChild("Attachment")
    local vQ_1 = Attachment and Attachment:FindFirstChild("BillboardGui")
    local vP_2 = vQ_1
    if vQ_1 then
        vQ_1 = vP_2:FindFirstChild("Timer")
    end
    local vP_3 = vQ_1
    if vQ_1 then
        vQ_1 = vP_3:IsA("TextLabel")
    end
    if vQ_1 then
        local Text = vP_3.Text
        local vP_4 = Text ~= ""
        local vR = type(Text) == "string" and vP_4
        if vR and Text ~= "0s" then
            return true
        end
        return false
    end
    return false
end
local function fn686()
    local tx_1
    local tw_1
    tw_1, tx_1 = oJ()
    if tw_1 and tx_1 then
        o2(tx_1)
    end
end
local function fn719()
    local tn = n1()
    if not tn then
        return
    end
    local PlacedObjects = tn:FindFirstChild("PlacedObjects")
    if not PlacedObjects then
        return
    end
    for i, child in ipairs(PlacedObjects:GetChildren()) do
        local tn_1 = Library.Unloaded or not og("AutoCollectPower")
        if tn_1 then
            return
        end
        local tn_2 = tonumber(child:GetAttribute("StoredPower")) or 0
        if tn_2 > 0 then
            local tn_3 = child:FindFirstChild("Bottom") or child:FindFirstChildWhichIsA("BasePart", true)
            if tn_3 then
                oy(tn_3)
                task.wait(0.1)
            end
        end
    end
end
local function worker7()
    while not Library.Unloaded do
        task.wait(2)
        if og("AntiAfk") then
            local wK = tick() - oI
            local wL = tick() - oE
            if wK >= 300 and wL >= 60 then
                pcall(om)
            else
                if wK < 300 and wL >= 300 then
                    pcall(om)
                end
            end
        end
    end
end
local function fn753(gu, gv, gw, gx)
    local uE_1
    local uD_1
    local uC_1, uC_2
    local uB = o5(gx, "GOD")
    local uB_1
    uE_1, uC_1, uD_1 = ph(gu, gw, uB)
    if not uE_1 then
        return
    end
    uB_1, uC_2 = pe(gu, uD_1, gv)
    local uB_2 = not uC_2
    if uB_2 ~= false then
        uB_2 = og("ReplaceAutoBuy")
    end
    if uB_2 then
        local uF = gu == "Generator" and oZ
        local uK = if uF then 1 else 0
        local uI = 1691 * uK + 3111 * (1 - uK)
        local uJ = 2654 * uK + 1060 * (1 - uK)
        if not ((uI * 2868 + uJ * 2506 + uI * uJ) % 16777213 == 15988626) then
            uF = oK
        end
        local uB_4 = uF
        local uF_2 = gu == "Generator" and oV or oF
        uC_2 = oP(gu, uB_4, uF_2, oH(gv), uD_1)
        if not uC_2 then
            return
        end
        if not oJ(uC_2) then
            return
        end
    end
    local uB_5 = not uC_2 or oW(uC_2) <= uD_1
    if uB_5 then
        return
    end
    local pivot = uE_1:GetPivot()
    if not oL("Pickup", uE_1) then
        return
    end
    task.wait(0.15)
    n_(uC_2, pivot)
end
local function fn754(fj, fk, fl)
    local tU_1
    local tP = n1()
    local tP_4
    local tQ = tP and tP:FindFirstChild("PlacedObjects")
    if not tQ then
        return nil, nil, math.huge
    end
    local tQ_1 = math.huge
    local tR
    local tS
    for i, child in ipairs(tQ:GetChildren()) do
        local tP_2 = child:IsA("Model") and child:GetAttribute("PlacedObject") == true
        if tP_2 then
            local tP_3 = child:GetAttribute("TemplateName") or child.Name
            tP_4, tU_1 = pg(tP_3)
            local tV_1 = tP_4 and tP_4.Rarity or "Common"
            local tP_6 = tU_1 == fj and oD(fk, tV_1) and o9(tV_1, fl)
            if tP_6 then
                local tP_7 = oW(tP_3)
                if tP_7 < tQ_1 then
                    tR = child
                    tS = tP_3
                    tQ_1 = tP_7
                end
            end
        end
    end
    return tR, tS, tQ_1
end
local function fn766(bl)
    local qU = Generators:FindFirstChild(bl)
    local qV = qU and qU:IsA("Model")
    if qV then
        return qU
    end
    local qU_1 = Storage:FindFirstChild(bl)
    local qV_1 = qU_1 and qU_1:IsA("Model")
    if qV_1 then
        return qU_1
    end
    return nil
end
local function fn776()
    local u7 = oa()
    local u8 = not u7
    local ve = if u8 then 1 else 0
    local vc = 3371 * ve + 2834 * (1 - ve)
    local vd = 2809 * ve + 127 * (1 - ve)
    if not ((vc * 1787 + vd * 311 + vc * vd) % 16777213 == 16366715) then
        u8 = u7.IsMaxed
    end
    if u8 then
        return
    end
    local Requirement = u7.Requirement
    if type(Requirement) ~= "table" then
        return
    end
    local u9 = tonumber(Requirement.CashRequirement) or 0
    local u9_1 = (tonumber(u7.Cash))
    local vh = if u9_1 then 1 else 0
    local vf = 2514 * vh + 1676 * (1 - vh)
    local vg = 2649 * vh + 2327 * (1 - vh)
    if not ((vf * 2179 + vg * 653 + vf * vg) % 16777213 == 13867389) then
        u9_1 = pd()
    end
    if u9_1 < u9 then
        return
    end
    local u8_3 = u7.HasRequiredPanel ~= true
    local vh_1 = if u8_3 then 1 else 0
    local vf_1 = 2487 * vh_1 + 669 * (1 - vh_1)
    local vg_1 = 909 * vh_1 + 605 * (1 - vh_1)
    if not ((vf_1 * 3072 + vg_1 * 3805 + vf_1 * vg_1) % 16777213 == 13359492) then
        u8_3 = u7.HasRequiredBattery ~= true
    end
    if u8_3 then
        return
    end
    pcall(function()
        RequestRebirth:InvokeServer()
    end)
end
local function fn787()
    oN("Generator", "ReplacePanels", "ReplacePanelRarities", "ReplacePanelMaxRarity")
end
local function fn828(bX)
    local Backpack = LocalPlayer:FindFirstChild("Backpack")
    if Backpack then
        for i, child in ipairs(Backpack:GetChildren()) do
            local rz_1 = child:IsA("Tool") and child:GetAttribute("CanPlace") == true
            if rz_1 then
                local rz_2 = child:GetAttribute("PlaceTemplate") or child.Name
                if not bX or rz_2 == bX then
                    return child, rz_2
                end
            end
        end
    end
    local rz_4 = oq()
    if rz_4 then
        for i, child in ipairs(rz_4:GetChildren()) do
            local rz_5 = child:IsA("Tool") and child:GetAttribute("CanPlace") == true
            if rz_5 then
                local rz_6 = child:GetAttribute("PlaceTemplate") or child.Name
                if not bX or rz_6 == bX then
                    return child, rz_6
                end
            end
        end
    end
    return nil, nil
end
local function worker6()
    while not Library.Unloaded do
        local wR = if og("AutoCollectPower") then 1 else 0
        if wR == 1 then
            pcall(oX)
        end
        if og("AutoBuyPanels") then
            pcall(nY)
        end
        if og("AutoBuyBatteries") then
            pcall(pc)
        end
        if og("AutoBuyRebirthRequirements") then
            pcall(pi)
        end
        if og("AutoBuyAreas") then
            pcall(pj)
        end
        if og("AutoPlace") then
            pcall(n8)
        end
        if og("AutoLockBase") then
            pcall(n4)
        end
        if og("AutoUpgradeSpeed") then
            pcall(oU)
        end
        if og("AutoRebirth") then
            pcall(oY)
        end
        task.wait(nU("FarmDelay", 0.35))
    end
end
local function fn846()
    local uZ_1
    local uY_1
    uY_1, uZ_1 = pcall(function()
        return GetRebirthInfo:InvokeServer()
    end)
    local u_ = uY_1 and type(uZ_1) == "table"
    if u_ then
        return uZ_1
    end
    return nil
end
local function fn847()
    local vX = n1()
    local vY = not vX or oM(vX)
    if vY then
        return
    end
    local Lock = vX:FindFirstChild("Lock")
    local vX_1 = Lock and Lock:FindFirstChild("LockFree")
    local vY_2 = vX_1
    if vX_1 then
        vX_1 = vY_2:FindFirstChild("Hit", true)
    end
    local vY_3 = vX_1
    if vX_1 then
        vX_1 = vY_3:IsA("BasePart")
    end
    if vX_1 then
        oy(vY_3)
    end
end
local function fn850()
    nW("Generator", oZ, oV, oH("SelectedPanels"))
end
local function fn885()
    nR("Generator", "PickupPanelRarities", "PickupPanels", "Pickup", "AutoPickupPanels")
end
local function fn947(cs, ct)
    local se = oH(cs)
    local sf = false
    for k, v in pairs(se) do
        if v then
            sf = true
            break
        end
    end
    if not sf then
        return true
    end
    return se[ct] == true
end
worker = nil
nM = nil
nO = nil
Label = nil
nQ = nil
nR = nil
Options = nil
nU = nil
nV = nil
nW = nil
RequestSpeedUpgrade = nil
nY = nil
Toggles = nil
n_ = nil
n0 = nil
n1 = nil
n2 = nil
GetRebirthInfo = nil
n4 = nil
RequestRebirth = nil
n6 = nil
n8 = nil
n9 = nil
oa = nil
Library = nil
of = nil
og = nil
oh = nil
ol = nil
om = nil
oo = nil
op = nil
oq = nil
ov = nil
ow = nil
ox = nil
oy = nil
PlacementUtil = nil
oA = nil
local GetStorageStock, GetGeneratorStock, n7, CompleteSellOffer, od, RequestSellOffer, oi, RequestMoneyPurchase, RequestObjectAction, RequestPlace, ou
oD = nil
oE = nil
oF = nil
oH = nil
oI = nil
oJ = nil
oK = nil
oL = nil
oM = nil
oN = nil
oO = nil
oP = nil
oQ = nil
oS = nil
oT = nil
oU = nil
oV = nil
oW = nil
oX = nil
oY = nil
oZ = nil
o_ = nil
o0 = nil
LocalPlayer = nil
o2 = nil
o3 = nil
Workspace = nil
o5 = nil
VirtualUser = nil
o7 = nil
o8 = nil
o9 = nil
connection = nil
Storage = nil
pc = nil
pd = nil
pe = nil
Generators = nil
pg = nil
ph = nil
pi = nil
pj = nil
local oB, AreaData, oG, oR
oB = nil
AreaData = nil
oG = nil
oR = nil
local BatteriesGroup, PanelsGroup
VirtualUser, Workspace, LocalPlayer, oT, oQ, AreaData, PlacementUtil, RequestPlace, RequestObjectAction, RequestMoneyPurchase, RequestSellOffer, CompleteSellOffer, RequestRebirth, GetRebirthInfo, RequestSpeedUpgrade, GetGeneratorStock, GetStorageStock, Generators, Storage, o7 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local w1_10 = game:GetService("Players")
local w1_27 = game:GetService("ReplicatedStorage")
local w1_17 = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
Workspace = game:GetService("Workspace")
LocalPlayer = w1_10.LocalPlayer
local w1_28 = "Power Your City"
oT = "https://discord.gg/ehKVq7pf7v"
oQ = "https://rscripts.net/@Ouroboros"
local w1_12 = w1_27:WaitForChild("Modules")
local w1_3 = require(w1_12:WaitForChild("ShopData"))
local w1_15 = require(w1_12:WaitForChild("SellZoneData"))
AreaData = require(w1_12:WaitForChild("AreaData"))
PlacementUtil = require(w1_12:WaitForChild("Placement"):WaitForChild("PlacementUtil"))
local w1_24 = w1_27:WaitForChild("Remotes")
RequestPlace = w1_24:WaitForChild("RequestPlace")
RequestObjectAction = w1_24:WaitForChild("RequestObjectAction")
RequestMoneyPurchase = w1_24:WaitForChild("RequestMoneyPurchase")
RequestSellOffer = w1_24:WaitForChild("RequestSellOffer")
CompleteSellOffer = w1_24:WaitForChild("CompleteSellOffer")
RequestRebirth = w1_24:WaitForChild("RequestRebirth")
GetRebirthInfo = w1_24:WaitForChild("GetRebirthInfo")
RequestSpeedUpgrade = w1_24:WaitForChild("RequestSpeedUpgrade")
GetGeneratorStock = w1_24:WaitForChild("GetGeneratorStock")
GetStorageStock = w1_24:WaitForChild("GetStorageStock")
local w1_36 = w1_27:WaitForChild("Assets"):WaitForChild("Placeables")
Generators = w1_36:WaitForChild("Generators")
Storage = w1_36:WaitForChild("Storage")
o7 = {}
local pW = 1
while pW <= 6 do
    local pX = pW
    w1_10 = w1_15.Zones[tostring(pX)]
    table.insert(o7, string.format("Seller %d (%sx-%sx)", pX, tostring(w1_10.MinMultiplier), tostring(w1_10.MaxMultiplier)))
    pW += 1
end
oV = {}
oZ = {}
for i, v in ipairs(w1_3.Generator) do
    table.insert(oZ, v.ItemName)
    oV[v.ItemName] = v
end
oF = {}
oK = {}
for i, v in ipairs(w1_3.Storage) do
    table.insert(oK, v.ItemName)
    oF[v.ItemName] = v
end
ow, ov = nil, nil
ow = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic", "GOD" }
ov = {}
for i, v in ipairs(ow) do
    ov[v] = i
end
Library, Toggles, Options, op, nO, o8, o_, oO, og, nU, o5, oH, oq, oi, n1, pd, oR, oy, n2, o3, oS, oJ, pg, oW, oD, n7, o9, oG, n_, o2, oL, nR, oB, nW, nY, pc, oX, n8, worker, oh, n9, n0, nQ, ph, pe, oP, oN, ox, oo, of, oA, oa, pi, oY, od, pj, oM, n4, oU, ou, n6 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
w1_27 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
nO = fn556
o8 = fn646
o_ = fn344
oO = fns.fn6
local w1_4 = "#7fd47f"
w1_3 = "#6ec1ff"
op = "#e8a34d"
w1_15 = "#8b93a3"
og = fn523
nU = fns.fn229
o5 = fn409
oH = fn470
oq = fn615
if (nR or pc or not pc and false or (not pc or pj) and (w1_3 or not pc)) and (not pc and false and (nR or not pc) and (not pc or false or (not pc or pj))) or not ((nR or pc or not pc and false or (not pc or pj) and (w1_3 or not pc)) and (not pc and false and (nR or not pc) and (not pc or false or (not pc or pj)))) then
    oi = fns.fn278
    n1 = fn490
    pd = fn491
    oR = fn555
else
    oR = fns.fn278
    oi = fn490
    n1 = fn491
    pd = fn555
end
oy = function(bd)
    local qO = oi()
    local qP = not qO or not bd or not bd:IsA("BasePart")
    if qP then
        return false
    end
    local CFrame = qO.CFrame
    qO.CFrame = bd.CFrame + Vector3.new(0, 3, 0)
    if firetouchinterest then
        pcall(function()
            firetouchinterest(qO, bd, 0)
            task.wait(0.05)
            firetouchinterest(qO, bd, 1)
        end)
    end
    task.wait(0.15)
    qO.CFrame = CFrame
    return true
end
n2 = fn766
o3 = fn292
oS = fns.fn101
oJ = fn828
pg = fn323
if (not oY and not oR or (not ox or not oO)) and ((op or ox) and (not oY and op)) and ((not oO or ox or (ox or ox)) and ("#e8a34d" or (oR or not oR))) and ((not ox and not oY or not ox and ox or (oO or not oO or (not oO or not oR))) and ((not oO or not oY) and (ox or not oY) and ((not oO or op) and (oR and ox)))) and not ((not oY and not oR or (not ox or not oO)) and ((op or ox) and (not oY and op)) and ((not oO or ox or (ox or ox)) and ("#e8a34d" or (oR or not oR))) and ((not ox and not oY or not ox and ox or (oO or not oO or (not oO or not oR))) and ((not oO or not oY) and (ox or not oY) and ((not oO or op) and (oR and ox))))) then
    oD = fns.fn222
    oW = fn379
else
    oW = fns.fn222
    oD = fn379
end
n7 = fn947
o9 = fns.fn180
oG = function(cI)
    local sr = oJ(cI)
    if not sr then
        return false
    end
    local st = oq() and oq():FindFirstChildOfClass("Humanoid")
    local ss = st
    if ss and sr.Parent == LocalPlayer.Backpack then
        pcall(function()
            ss:EquipTool(sr)
        end)
        task.wait(0.1)
    end
    return true
end
n_ = function(cT, cU)
    local sy = not cU
    local sz = typeof(cT) ~= "string" or sy
    if sz then
        return false
    end
    oG(cT)
    pcall(function()
        RequestPlace:FireServer(cT, cU)
    end)
    task.wait(0.35)
    return true
end
o2 = fn408
oL = function(c5, c6)
    local sG_1
    local sF_1
    local sD = oi()
    if not sD or not c6 or not c6.Parent then
        return false
    end
    local CFrame2 = sD.CFrame
    sF_1, sG_1 = pcall(function()
        return c6:GetBoundingBox().Position
    end)
    if sF_1 and sG_1 then
        sD.CFrame = CFrame.new(sG_1 + Vector3.new(0, 5, 0))
        task.wait(0.05)
    end
    pcall(function()
        RequestObjectAction:FireServer(c5, c6)
    end)
    task.wait(0.1)
    sD.CFrame = CFrame2
    return true
end
nR = function(dj, dk, dl, dm, dn)
    local sN_1
    local sJ = n1()
    local sJ_5, sJ_8
    local sK = oi()
    local sL = sJ and sJ:FindFirstChild("PlacedObjects")
    local sL_1 = not sK
    local sM = not sL
    local sM_4
    local sS = if sM then 1 else 0
    local sQ = 1325 * sS + 2571 * (1 - sS)
    local sR = 1246 * sS + 3072 * (1 - sS)
    if not ((sQ * 3620 + sR * 1177 + sQ * sR) % 16777213 == 7913992) then
        sM = sL_1
    end
    if sM then
        return
    end
    local CFrame2 = sK.CFrame
    local children = sL:GetChildren()
    for i, v in ipairs(children) do
        local sY = v
        local sJ_2 = Library.Unloaded
        if not sJ_2 then
            local sM_2 = dn and not og(dn)
            sJ_2 = sM_2
        end
        if sJ_2 then
            break
        end
        local sJ_3 = sY:IsA("Model") and sY:GetAttribute("PlacedObject") == true and sY.Parent
        if sJ_3 then
            local sJ_4 = sY:GetAttribute("TemplateName") or sY.Name
            sJ_5, sN_1 = pg(sJ_4)
            local sO_1 = sJ_5 and sJ_5.Rarity or "Common"
            local sJ_7 = sN_1 == dj and oD(dk, sO_1) and n7(dl, sJ_4)
            if sJ_7 then
                sJ_8, sM_4 = pcall(function()
                    return sY:GetBoundingBox().Position
                end)
                if sJ_8 and sM_4 then
                    sK.CFrame = CFrame.new(sM_4 + Vector3.new(0, 5, 0))
                    task.wait(0.05)
                end
                pcall(function()
                    RequestObjectAction:FireServer(dm, sY)
                end)
                task.wait(0.08)
            end
        end
    end
    sK.CFrame = CFrame2
end
oB = function(dV)
    local s0_1
    local s__1
    s__1, s0_1 = pcall(function()
        if dV == "Generator" then
            return GetGeneratorStock:InvokeServer()
        end
        return GetStorageStock:InvokeServer()
    end)
    local s1 = s__1 and type(s0_1) == "table" and type(s0_1.Stock) == "table"
    if s1 then
        return s0_1.Stock
    end
    return {}
end
nW = function(d4, d5, d6, d7)
    local s6
    local s7 = pd()
    local s7_1
    local s8 = oB(d4)
    local s8_1
    local s9 = -1
    s6 = nil
    for i, v in ipairs(d5) do
        if d7[v] then
            local ta = d6[v]
            local tb = ta and tonumber(ta.Price)
            local tb_1 = tb or 0
            local ta_2 = tonumber(s8[v]) or 0
            if ta_2 > 0 and tb_1 > 0 and s7 >= tb_1 and tb_1 > s9 then
                s6 = v
                s9 = tb_1
            end
        end
    end
    if not s6 then
        return nil
    end
    s7_1, s8_1 = pcall(function()
        return RequestMoneyPurchase:InvokeServer(d4, s6)
    end)
    local s9_1 = s7_1 and type(s8_1) == "table" and s8_1.Success == true
    if s9_1 then
        task.wait(0.25)
        return s6
    end
    return nil
end
nY = fn850
pc = fn295
oX = fn719
n8 = fn686
worker = function()
    local tD = n1()
    local tD_3
    local tE = oi()
    local tF = tD and tD:FindFirstChild("PlacedObjects")
    local tG = not tF or not tE
    local tG_2
    if tG then
        return
    end
    local CFrame2 = tE.CFrame
    local children = tF:GetChildren()
    for i, v in ipairs(children) do
        local tO = v
        local tD_2 = tO:IsA("Model") and tO:GetAttribute("PlacedObject") == true
        if tD_2 then
            tD_3, tG_2 = pcall(function()
                return tO:GetBoundingBox().Position
            end)
            if tD_3 and tG_2 then
                tE.CFrame = CFrame.new(tG_2 + Vector3.new(0, 5, 0))
                task.wait(0.05)
            end
            pcall(function()
                RequestObjectAction:FireServer("Pickup", tO)
            end)
            task.wait(0.08)
        end
    end
    tE.CFrame = CFrame2
end
oh = fn885
n9 = fns.fn56
n0 = fn341
nQ = fns.fn51
ph = fn754
pe = function(fH, fI, fJ)
    local uf, ug, uh
    uf = nil
    ug = nil
    uh = fI or -1
    local function ui_1(fP)
        local t7_1
        if not fP then
            return
        end
        for i, child in ipairs(fP:GetChildren()) do
            local t5 = child:IsA("Tool") and child:GetAttribute("CanPlace") == true
            local t5_2
            if t5 then
                local t5_1 = child:GetAttribute("PlaceTemplate") or child.Name
                t5_2, t7_1 = pg(t5_1)
                local t5_3 = t7_1 == fH and n7(fJ, t5_1)
                if t5_3 then
                    local t5_4 = oW(t5_1)
                    if t5_4 > uh then
                        ug = child
                        uf = t5_1
                        uh = t5_4
                    end
                end
            end
        end
    end
    ui_1(LocalPlayer:FindFirstChild("Backpack"))
    ui_1(oq())
    return ug, uf, uh
end
oP = function(f4, f5, f6, f7, f8)
    local uk
    local ul = pd()
    local ul_1
    local um = oB(f4)
    local um_1
    local un = -1
    uk = nil
    for i, v in ipairs(f5) do
        if f7[v] then
            local uo = f6[v]
            local up = uo and tonumber(uo.Price)
            local up_1 = up or 0
            local uo_2 = tonumber(um[v]) or 0
            if uo_2 > 0 and up_1 > f8 and ul >= up_1 and up_1 > un then
                uk = v
                un = up_1
            end
        end
    end
    if not uk then
        return nil
    end
    ul_1, um_1 = pcall(function()
        return RequestMoneyPurchase:InvokeServer(f4, uk)
    end)
    local un_1 = ul_1 and type(um_1) == "table" and um_1.Success == true
    if un_1 then
        task.wait(0.25)
        return uk
    end
    return nil
end
oN = fn753
ox = fn787
oo = fns.fn91
of = function(gT, gU)
    local uL = gT == "Generator" and oV[gU]
    local uL_4
    local uM = uL or oF[gU]
    local uM_4
    if not uM then
        return false
    end
    local uM_1 = tonumber(uM.Price) or 0
    local uM_2 = uM_1 <= 0 or pd() < uM_1
    if uM_2 then
        return false
    end
    local uL_3 = oB(gT)
    local uM_3 = tonumber(uL_3[gU]) or 0
    if uM_3 <= 0 then
        return false
    end
    uL_4, uM_4 = pcall(function()
        return RequestMoneyPurchase:InvokeServer(gT, gU)
    end)
    local uN = uL_4 and type(uM_4) == "table" and uM_4.Success == true
    if uN then
        task.wait(0.25)
        return true
    end
    return false
end
oA = fn500
oa = fn846
pi = fn494
oY = fn776
od = fn570
pj = function()
    local vz = n1()
    if not vz then
        return
    end
    local Areas = vz:FindFirstChild("Areas")
    if not Areas then
        return
    end
    local vz_1 = pd()
    local vB = math.huge
    local vC
    local vJ = 1
    while vJ <= 11 do
        local vK = vJ
        if not od(vK) then
            local vD_1 = AreaData.Get(vK)
            local vE = vD_1 and tonumber(vD_1.Price)
            local vE_1 = vE or 0
            if vE_1 > 0 and vz_1 >= vE_1 and vE_1 < vB then
                local vD_4 = Areas:FindFirstChild(tostring(vK))
                local vF = vD_4 and vD_4:FindFirstChildWhichIsA("ProximityPrompt", true)
                local vD_5 = vF
                if vF then
                    vF = vD_5.Enabled
                end
                if vF then
                    vC = vK
                    vB = vE_1
                end
            end
        end
        vJ += 1
    end
    if not vC then
        return
    end
    local vz_2 = Areas:FindFirstChild(tostring(vC))
    local vA_1 = vz_2 and vz_2:FindFirstChildWhichIsA("ProximityPrompt", true)
    local vB_1 = vz_2
    local vy = vA_1
    if vB_1 then
        vB_1 = vz_2:FindFirstChild("Attachment")
    end
    local vA_2 = vB_1
    local vB_2 = oi()
    if not (vy and vB_2) then
        return
    end
    local CFrame2 = vB_2.CFrame
    local vD_6 = vA_2 and vA_2.WorldPosition
    local vA_3 = vD_6 or vz_2:GetPivot().Position
    vB_2.CFrame = CFrame.new(vA_3 + Vector3.new(0, 3, 0))
    task.wait(0.15)
    if fireproximityprompt then
        pcall(function()
            local vw = vy.HoldDuration > 0 and vy.HoldDuration or 2
            fireproximityprompt(vy, vw)
        end)
    else
        pcall(function()
            vy:InputHoldBegin()
            local vq = vy.HoldDuration > 0 and vy.HoldDuration
            local vu = if vq then 1 else 0
            local vs = 3220 * vu + 579 * (1 - vu)
            local vt = 196 * vu + 1787 * (1 - vu)
            if not ((vs * 2970 + vt * 1307 + vs * vt) % 16777213 == 10450692) then
                vq = 2
            end
            task.wait(vq + 0.1)
            vy:InputHoldEnd()
        end)
    end
    task.wait(0.35)
    vB_2.CFrame = CFrame2
end
oM = fn651
n4 = fn847
oU = fn413
ou = fn610
n6 = function()
    local wc
    local we_1
    local wd_1
    if oR() <= 0 then
        return
    end
    wc = ou()
    wd_1, we_1 = pcall(function()
        return RequestSellOffer:InvokeServer(tostring(wc))
    end)
    local wf = not wd_1 or type(we_1) ~= "table" or we_1.Success ~= true
    if wf then
        return
    end
    local Result = we_1.Result
    local we_2 = type(Result) == "table"
    if we_2 then
        local wf_1 = (tonumber(Result.PowerAmount))
        local wj = if wf_1 then 1 else 0
        local wh = 3895 * wj + 1963 * (1 - wj)
        local wi = 1073 * wj + 966 * (1 - wj)
        if not ((wh * 1588 + wi * 735 + wh * wi) % 16777213 == 11153250) then
            wf_1 = 0
        end
        we_2 = wf_1 <= 0
    end
    if we_2 then
        return
    end
    task.wait(0.1)
    pcall(function()
        CompleteSellOffer:InvokeServer()
    end)
end
w1_24 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = oT, Copyable = true }, "|", w1_28 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local w1_30 = {
    Info = w1_24:AddTab("Info", "info"),
    Main = w1_24:AddTab("Main", "gamepad-2"),
    Settings = w1_24:AddTab("Settings", "settings")
}
w1_30.Farm = w1_30.Main:AddSubTab("Farm", "zap")
w1_30.Pickup = w1_30.Main:AddSubTab("Pickup", "package")
w1_30.Replace = w1_30.Main:AddSubTab("Replace", "refresh-cw")
w1_30.Shop = w1_30.Main:AddSubTab("Shop", "shopping-cart")
w1_30.Sell = w1_30.Main:AddSubTab("Sell", "hand-coins")
w1_12 = fns.fn129
for k, v in w1_30 do
    if v ~= w1_30.Main then
        w1_12(v)
    end
end
ol, Label, nM = nil, nil, nil
ol = "Unknown"
pcall(fns.fn259)
w1_10 = w1_30.Info:AddLeftGroupbox("Account", "circle-user")
w1_10:AddLabel(oO("User", LocalPlayer.Name, w1_4), true)
w1_10:AddLabel(oO("Status", "Keyless", w1_4), true)
w1_10:AddLabel(oO("Executor", ol, w1_4), true)
local GameInfoGroup = w1_30.Info:AddLeftGroupbox("Game Info", "gamepad-2")
GameInfoGroup:AddLabel(o_(w1_28 .. " [" .. tostring(game.PlaceId) .. "]", w1_3), true)
GameInfoGroup:AddLabel(oO("Place ID", tostring(game.PlaceId), w1_3), true)
Label = GameInfoGroup:AddLabel(oO("Session time", "0s", op), true)
nM = tostring(game.JobId)
w1_24 = #nM > 18
if w1_24 then
    w1_10 = 3
    repeat
        if (w1_10 * 2 + 8) * 13 % 3 == ((w1_10 * 2 + 8) * 13 + 3) % 3 then
            w1_24 = string.sub(nM, 1, 18) .. "..."
        else
            nM = string.sub(w1_24, 1, 18) .. "..."
        end
        w1_10 = (w1_10 + 1) % 4
    until (w1_10 * 3 + 1) % 4 == 1
end
w1_10 = w1_24 or nM
o0, FarmGroup, w1_12, w1_36, PanelsGroup, BatteriesGroup, PowerGroup, PanelsGroup2, MiscGroup2, MenuGroup, oI, oE, nV, connection, om = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local pL = w1_10
GameInfoGroup:AddLabel(oO("Server", pL, w1_15), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
o0 = os.clock()
task.spawn(fns.worker2)
local ScriptsGroup = w1_30.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(o_("Included in this hub", w1_15), true)
ScriptsGroup:AddLabel(o_(w1_28, w1_3), true)
local FeaturesGroup = w1_30.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(o_("Auto Farm", w1_3), true)
FeaturesGroup:AddLabel(o_("Auto Buy", op), true)
FeaturesGroup:AddLabel(o_("Auto Place", op), true)
FeaturesGroup:AddLabel(o_("Auto Replace", op), true)
FeaturesGroup:AddLabel(o_("Auto Pickup", w1_3), true)
FeaturesGroup:AddLabel(o_("Auto Sell", w1_4), true)
FeaturesGroup:AddLabel(o_("Auto Rebirth", w1_3), true)
FeaturesGroup:AddLabel(o_("Misc Utilities", w1_15), true)
local SocialsGroup = w1_30.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = o8 })
SocialsGroup:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
local OuroborosHubGroup = w1_30.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = o8 })
local FaqGroup = w1_30.Info:AddRightGroupbox("FAQ", "circle-help")
if (BatteriesGroup or PanelsGroup2 or BatteriesGroup and not PanelsGroup2 or (w1_12 or not w1_12 or (not BatteriesGroup or w1_12)) or (PanelsGroup2 and not PanelsGroup2 or (w1_12 or PanelsGroup2)) and (PanelsGroup2 and PanelsGroup2 and (not PanelsGroup2 or not BatteriesGroup))) and ((BatteriesGroup and PanelsGroup2 or not w1_12 and w1_12 or (BatteriesGroup or not PanelsGroup2) and (not BatteriesGroup and not BatteriesGroup)) and (w1_12 or PanelsGroup2 or (not w1_12 or BatteriesGroup) or (not w1_12 or PanelsGroup2) and (BatteriesGroup and not w1_12))) and not ((BatteriesGroup or PanelsGroup2 or BatteriesGroup and not PanelsGroup2 or (w1_12 or not w1_12 or (not BatteriesGroup or w1_12)) or (PanelsGroup2 and not PanelsGroup2 or (w1_12 or PanelsGroup2)) and (PanelsGroup2 and PanelsGroup2 and (not PanelsGroup2 or not BatteriesGroup))) and ((BatteriesGroup and PanelsGroup2 or not w1_12 and w1_12 or (BatteriesGroup or not PanelsGroup2) and (not BatteriesGroup and not BatteriesGroup)) and (w1_12 or PanelsGroup2 or (not w1_12 or BatteriesGroup) or (not w1_12 or PanelsGroup2) and (BatteriesGroup and not w1_12)))) then
    FarmGroup:AddLabel("Where do I get a good config?", true)
    FarmGroup:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
    FarmGroup:AddLabel("How do I import / export configs?", true)
    FarmGroup:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
    FarmGroup:AddLabel("How do I report bugs?", true)
    FarmGroup:AddLabel("Join the Discord and post it in the bugs channel.", true)
    FarmGroup:AddLabel("How do I make suggestions?", true)
    FarmGroup:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
    FarmGroup:AddLabel("How do I get help or updates?", true)
    FarmGroup:AddLabel("Join the Discord, updates and support are posted there first.", true)
    w1_30 = FaqGroup.Farm:AddLeftGroupbox("Farm", "zap")
else
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
    FarmGroup = w1_30.Farm:AddLeftGroupbox("Farm", "zap")
end
if (OuroborosHubGroup or ScriptsGroup or (SocialsGroup or not ScriptsGroup)) and (not PanelsGroup and PowerGroup or (not OuroborosHubGroup or PanelsGroup)) and not ((OuroborosHubGroup or ScriptsGroup or (SocialsGroup or not ScriptsGroup)) and (not PanelsGroup and PowerGroup or (not OuroborosHubGroup or PanelsGroup))) then
    w1_30:AddToggle("AutoCollectPower", { Text = "Auto Collect Power", Default = false })
    w1_30:AddToggle("AutoPlace", { Text = "Auto Place Batteries & Panel", Default = false })
    w1_30:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
    w1_30:AddToggle("AutoBuyRebirthRequirements", { Text = "Auto Buy Rebirth Requirements", Default = false })
    w1_30:AddToggle("AutoBuyAreas", { Text = "Auto Buy Areas", Default = false })
    w1_30:AddToggle("AutoLockBase", { Text = "Auto Lock Base", Default = false })
    w1_30:AddToggle("AutoUpgradeSpeed", { Text = "Auto Upgrade Speed", Default = false })
    w1_30:AddSlider("FarmDelay", { Rounding = 2, Text = "Farm delay", Suffix = "s", Default = 0.35, Max = 3, Min = 0.1 })
    w1_12.Pickup:AddLeftGroupbox("Panels", "solar-panel")
else
    FarmGroup:AddToggle("AutoCollectPower", { Text = "Auto Collect Power", Default = false })
    FarmGroup:AddToggle("AutoPlace", { Text = "Auto Place Batteries & Panel", Default = false })
    FarmGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
    FarmGroup:AddToggle("AutoBuyRebirthRequirements", { Text = "Auto Buy Rebirth Requirements", Default = false })
    FarmGroup:AddToggle("AutoBuyAreas", { Text = "Auto Buy Areas", Default = false })
    FarmGroup:AddToggle("AutoLockBase", { Text = "Auto Lock Base", Default = false })
    FarmGroup:AddToggle("AutoUpgradeSpeed", { Text = "Auto Upgrade Speed", Default = false })
    FarmGroup:AddSlider("FarmDelay", { Text = "Farm delay", Default = 0.35, Min = 0.1, Max = 3, Rounding = 2, Suffix = "s" })
    w1_12 = w1_30.Pickup:AddLeftGroupbox("Panels", "solar-panel")
end
w1_12:AddToggle("AutoPickupPanels", { Text = "Auto Pickup Panels", Default = false })
w1_12:AddDropdown("PickupPanelRarities", { Text = "Panel Rarities", Values = ow, Multi = true, AllowNull = true, Default = {} })
w1_12:AddDropdown("PickupPanels", { Text = "Panels", Values = oZ, Multi = true, AllowNull = true, Default = {} })
w1_24 = w1_30.Pickup:AddRightGroupbox("Batteries", "battery")
if (MenuGroup and PanelsGroup and (PanelsGroup2 and PanelsGroup) or not MiscGroup2 and not PanelsGroup and (not PanelsGroup2 and not PanelsGroup)) and (MiscGroup2 and MenuGroup and (PanelsGroup2 and not MenuGroup) or (MiscGroup2 or MenuGroup or MiscGroup2 and PanelsGroup2)) or (not MiscGroup2 or PanelsGroup2 or MiscGroup2 and not PanelsGroup2 or MiscGroup2 and PanelsGroup2 and (not PanelsGroup or MiscGroup2)) and ((PanelsGroup and PanelsGroup or (not pL or not MiscGroup2)) and (not MenuGroup or MenuGroup or (not PanelsGroup or pL))) or not ((MenuGroup and PanelsGroup and (PanelsGroup2 and PanelsGroup) or not MiscGroup2 and not PanelsGroup and (not PanelsGroup2 and not PanelsGroup)) and (MiscGroup2 and MenuGroup and (PanelsGroup2 and not MenuGroup) or (MiscGroup2 or MenuGroup or MiscGroup2 and PanelsGroup2)) or (not MiscGroup2 or PanelsGroup2 or MiscGroup2 and not PanelsGroup2 or MiscGroup2 and PanelsGroup2 and (not PanelsGroup or MiscGroup2)) and ((PanelsGroup and PanelsGroup or (not pL or not MiscGroup2)) and (not MenuGroup or MenuGroup or (not PanelsGroup or pL)))) then
    w1_24:AddToggle("AutoPickupBatteries", { Text = "Auto Pickup Batteries", Default = false })
    w1_24:AddDropdown("PickupBatteryRarities", { Text = "Battery Rarities", Values = ow, Multi = true, AllowNull = true, Default = {} })
    w1_24:AddDropdown("PickupBatteries", { Text = "Batteries", Values = oK, Multi = true, AllowNull = true, Default = {} })
    w1_36 = w1_30.Pickup:AddLeftGroupbox("Misc", "package")
else
    ow:AddToggle("AutoPickupBatteries", { Text = "Auto Pickup Batteries", Default = false })
    ow:AddDropdown("PickupBatteryRarities", { Default = {}, Text = "Battery Rarities", AllowNull = true, Values = w1_36, Multi = true })
    ow:AddDropdown("PickupBatteries", { Multi = true, AllowNull = true, Text = "Batteries", Values = w1_24, Default = {} })
    w1_30 = oK.Pickup:AddLeftGroupbox("Misc", "package")
end
w1_36:AddSlider("PickupDelay", { Text = "Pickup delay", Default = 0.5, Min = 0.1, Max = 5, Rounding = 2, Suffix = "s" })
w1_36:AddButton({ Text = "Pickup Everything in Base", Func = onPickupEverythingInBase })
PanelsGroup = w1_30.Replace:AddLeftGroupbox("Panels", "solar-panel")
PanelsGroup:AddToggle("AutoReplaceBetterPanels", { Text = "Auto Replace Better Panels", Default = false })
PanelsGroup:AddDropdown("ReplacePanelRarities", { Text = "Replace Rarities", Values = ow, Multi = true, AllowNull = true, Default = {} })
PanelsGroup:AddDropdown("ReplacePanelMaxRarity", { Text = "Max Rarity To Replace", Values = ow, Default = "GOD" })
PanelsGroup:AddDropdown("ReplacePanels", { Text = "Upgrade To", Values = oZ, Multi = true, AllowNull = true, Default = {} })
BatteriesGroup = w1_30.Replace:AddRightGroupbox("Batteries", "battery")
BatteriesGroup:AddToggle("AutoReplaceBetterBatteries", { Text = "Auto Replace Better Batteries", Default = false })
BatteriesGroup:AddDropdown("ReplaceBatteryRarities", { Text = "Replace Rarities", Values = ow, Multi = true, AllowNull = true, Default = {} })
BatteriesGroup:AddDropdown("ReplaceBatteryMaxRarity", { Text = "Max Rarity To Replace", Values = ow, Default = "GOD" })
BatteriesGroup:AddDropdown("ReplaceBatteries", { Text = "Upgrade To", Values = oK, Multi = true, AllowNull = true, Default = {} })
local MiscGroup = w1_30.Replace:AddLeftGroupbox("Misc", "settings-2")
MiscGroup:AddToggle("ReplaceAutoBuy", { Text = "Auto Buy For Replace", Default = true })
MiscGroup:AddSlider("ReplaceDelay", { Text = "Replace delay", Default = 0.5, Min = 0.1, Max = 5, Rounding = 2, Suffix = "s" })
local ShopGroup = w1_30.Shop:AddLeftGroupbox("Shop", "shopping-cart")
ShopGroup:AddToggle("AutoBuyPanels", { Text = "Auto Buy Panels", Default = false })
ShopGroup:AddDropdown("SelectedPanels", { Text = "Panels", Values = oZ, Multi = true, AllowNull = true, Default = { "BasicPanel" } })
ShopGroup:AddToggle("AutoBuyBatteries", { Text = "Auto Buy Batteries", Default = false })
ShopGroup:AddDropdown("SelectedBatteries", { Text = "Batteries", Values = oK, Multi = true, AllowNull = true, Default = { "BasicBattery" } })
PowerGroup = w1_30.Sell:AddLeftGroupbox("Power", "zap")
PowerGroup:AddToggle("AutoSellPower", { Text = "Auto Sell Power", Default = false })
PowerGroup:AddDropdown("SelectedSeller", { Text = "Seller", Values = o7, Default = o7[1] })
PanelsGroup2 = w1_30.Sell:AddLeftGroupbox("Panels", "solar-panel")
PanelsGroup2:AddToggle("AutoSellPanels", { Text = "Auto Sell Panels", Default = false })
PanelsGroup2:AddDropdown("SellPanelRarities", { Text = "Panel Rarities", Values = ow, Multi = true, AllowNull = true, Default = {} })
PanelsGroup2:AddDropdown("SellPanels", { Text = "Panels", Values = oZ, Multi = true, AllowNull = true, Default = {} })
local BatteriesGroup = w1_30.Sell:AddRightGroupbox("Batteries", "battery")
BatteriesGroup:AddToggle("AutoSellBatteries", { Text = "Auto Sell Batteries", Default = false })
BatteriesGroup:AddDropdown("SellBatteryRarities", { Text = "Battery Rarities", Values = ow, Multi = true, AllowNull = true, Default = {} })
BatteriesGroup:AddDropdown("SellBatteries", { Text = "Batteries", Values = oK, Multi = true, AllowNull = true, Default = {} })
MiscGroup2 = w1_30.Sell:AddRightGroupbox("Misc", "timer")
MiscGroup2:AddSlider("SellDelay", { Text = "Sell delay", Default = 1, Min = 0.25, Max = 10, Rounding = 2, Suffix = "s" })
MenuGroup = w1_30.Settings:AddLeftGroupbox("Menu", "menu")
Library.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton({ Text = "Unload", Func = fns.onUnload })
w1_27:SetLibrary(Library)
w1_27:SetFolder("OuroborosHub")
w1_27:SaveDefault("Monochrome")
w1_27:ApplyToTab(w1_30.Settings)
w1_27:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/power-your-city")
SaveManager:BuildConfigSection(w1_30.Settings)
SaveManager:LoadAutoloadConfig()
oI = tick()
if ((not OuroborosHubGroup and MenuGroup and (not MenuGroup and not OuroborosHubGroup) or (MenuGroup or MiscGroup or (OuroborosHubGroup or FaqGroup))) and (MenuGroup and MiscGroup and (FaqGroup and not MiscGroup) or (MiscGroup or not MiscGroup) and (MiscGroup or FaqGroup)) or (FaqGroup and OuroborosHubGroup or (MiscGroup or FaqGroup)) and (MiscGroup and not OuroborosHubGroup and (not FaqGroup and MenuGroup)) and (MenuGroup and not MenuGroup and (FaqGroup and MenuGroup) and (MenuGroup or not FaqGroup or not MiscGroup and FaqGroup))) and not ((not OuroborosHubGroup and MenuGroup and (not MenuGroup and not OuroborosHubGroup) or (MenuGroup or MiscGroup or (OuroborosHubGroup or FaqGroup))) and (MenuGroup and MiscGroup and (FaqGroup and not MiscGroup) or (MiscGroup or not MiscGroup) and (MiscGroup or FaqGroup)) or (FaqGroup and OuroborosHubGroup or (MiscGroup or FaqGroup)) and (MiscGroup and not OuroborosHubGroup and (not FaqGroup and MenuGroup)) and (MenuGroup and not MenuGroup and (FaqGroup and MenuGroup) and (MenuGroup or not FaqGroup or not MiscGroup and FaqGroup))) then
    om = tick()
    pcall(function()
        for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
            local wE = v
            pcall(function()
                wE:Disable()
            end)
        end
    end)
    nV = fn551
    w1_17 = oE.InputBegan:Connect(fns.onInputBegan)
else
    oE = tick()
    pcall(function()
        for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
            local wE = v
            pcall(function()
                wE:Disable()
            end)
        end
    end)
    om = fn551
    nV = w1_17.InputBegan:Connect(fns.onInputBegan)
end
connection = w1_17.InputChanged:Connect(onInputChanged)
do
    Library:OnUnload(fn418)
    task.spawn(worker7)
    task.spawn(worker6)
    task.spawn(worker5)
    task.spawn(worker4)
    task.spawn(fns.worker3)
    Library:Notify("Power Your City loaded")
end
