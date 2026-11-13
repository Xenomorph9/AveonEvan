local fns = {}
local Lv_1, Lv_3, Lv_4, Lv_6, Lv_7, Lv_9, Lv_10, Lv_11, Lv_12, Lv_13, Lv_14, Lv_15
local wx
local xe
local xW
local wW
local xD
local wD
local x1
local w1
local x7
local w7
local xP
local wP
local xw
local yd
local ww
local xd
local wV
local xC
local wC
local LocalPlayer
local x0
local w0
local xI
local wI
local x6
local w6
local xO
local wO
local xv
local connection
local xc
local xU
local wU
local wB
local xi
local x_
local w_
local xH
local xo
local x5
local w5
local xN
local wN
local xu
local xb
local xT
local wT
local xA
local xh
local wZ
local xG
local wG
local xn
local x4
local w4
local wM
local ya
local wt
local xa
local wS
local xz
local wz
local xg
local xY
local wY
local xm
local w3
local xL
local wL
local xs
local w9
local xR
local wR
local xy
local connection2
local wy
local xf
local xX
local xE
local wE
local xl
local w2
local wK
local xr
local w8
local wQ
local xx
function fns.fn85(dm)
    wK.StealRarityCount = w6(dm, wK.StealRarities)
end
function fns.fn101(eh)
    local B1 = xR[eh]
    local B2 = B1 ~= nil and os.clock() < B1
    return B2
end
function fns.fn148()
    if not wN() then
        return
    end
    local Gx = xg()
    if not Gx then
        return
    end
    if wK.AutoUpgradePen then
        local Gy_1 = wB()
        local Gz_1 = Gy_1 and xo() >= Gy_1
        if Gz_1 then
            wG("Upgrading pen")
            xW(xn, "Plot", Gx)
            task.wait(1)
        end
    end
    local GD = if not wy() then 1 else 0
    if GD == 1 then
        return
    end
    if wK.AutoUpgradeTreadmill then
        local Gy_2 = xU()
        local Gz_2 = Gy_2 and xo() >= Gy_2
        if Gz_2 then
            wG("Upgrading treadmill")
            xW(xn, "Treadmill", Gx)
            task.wait(1)
        end
    end
end
function fns.onOnClientEvent2(hK)
    if type(hK) == "table" then
        wz = hK
    end
end
function fns.fn172()
    local BX = w1()
    if not BX then
        return nil, nil
    end
    local CenterPoint = BX:FindFirstChild("CenterPoint")
    local ToUpdate = BX:FindFirstChild("ToUpdate")
    local BX_1 = ToUpdate and ToUpdate:FindFirstChild("PetArea")
    local BZ_1 = BX_1 or nil
    local BX_2 = CenterPoint
    local B_ = BZ_1
    if BX_2 then
        BX_2 = not CenterPoint:IsA("BasePart")
    end
    if BX_2 then
        CenterPoint = nil
    end
    local BX_3 = B_ and not B_:IsA("BasePart")
    if BX_3 then
        B_ = nil
    end
    return CenterPoint, B_
end
function fns.fn185()
    local Stands = yd:FindFirstChild("Stands")
    local FD = Stands and Stands:FindFirstChild("Pads")
    local FC_1 = FD
    local FH = if FC_1 then 1 else 0
    local FF = 2970 * FH + 2428 * (1 - FH)
    local FG = 1554 * FH + 1111 * (1 - FH)
    if not ((FF * 1087 + FG * 2145 + FF * FG) % 16777213 == 11177100) then
        FC_1 = nil
    end
    local FD_1 = FC_1
    if FC_1 then
        FC_1 = FD_1:FindFirstChild("SellShop")
    end
    local FD_2 = FC_1 or nil
    local FC_2 = FD_2
    if FD_2 then
        FD_2 = FC_2:IsA("BasePart")
    end
    if FD_2 then
        return FC_2
    end
    return nil
end
function fns.onOnClientEvent(es)
    local B4 = type(es) == "table" and es.OwnerUserId
    local B5 = B4 or nil
    local B5_1 = B5 == nil
    local B9 = if B5_1 then 1 else 0
    local B7 = 4024 * B9 + 1665 * (1 - B9)
    local B8 = 781 * B9 + 3665 * (1 - B9)
    if not ((B7 * 96 + B8 * 2739 + B7 * B8) % 16777213 == 5668207) then
        B5_1 = B5 == LocalPlayer.UserId
    end
    if B5_1 then
        w3 += 1
    end
end
function fns.fn232()
    return x5 ~= nil and wM ~= nil
end
function fns.fn253(hx)
    local D0 = hx and true or false
    wK.AutoHatchEgg = D0
    if wK.AutoHatchEgg then
        if not xA() then
            wK.AutoHatchEgg = false
            wG("Egg remotes unavailable")
            return
        end
        wR("Hatch", xd, x_)
    else
        xe("Hatch")
    end
end
function fns.fn267(iT)
    local Fe = iT and true or false
    wK.AutoBuyTrail = Fe
    ww()
end
function fns.fn296()
    local Character = LocalPlayer.Character
    if not Character or not Character.Parent then
        return nil, nil
    end
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    local BE = not HumanoidRootPart or not Humanoid
    local BI = if BE then 1 else 0
    local BG = 2031 * BI + 1245 * (1 - BI)
    local BH = 3856 * BI + 1693 * (1 - BI)
    if not ((BG * 1204 + BH * 3332 + BG * BH) % 16777213 == 6347839) then
        BE = Humanoid.Health <= 0
    end
    if BE then
        return nil, nil
    end
    return Character, HumanoidRootPart
end
function fns.fn312()
    return xE
end
function fns.fn322(dz)
    local Bk = (tonumber(dz))
    local Bo = if Bk then 1 else 0
    local Bm = 1236 * Bo + 986 * (1 - Bo)
    local Bn = 855 * Bo + 2210 * (1 - Bo)
    if not ((Bm * 546 + Bn * 2994 + Bm * Bn) % 16777213 == 4291506) then
        Bk = 0
    end
    wK.SellMaxPrice = math.max(Bk, 0)
end
function fns.fn349(jS)
    local F8 = jS and true
    local Gc = if F8 then 1 else 0
    local Ga = 719 * Gc + 546 * (1 - Gc)
    local Gb = 1474 * Gc + 2263 * (1 - Gc)
    if not ((Ga * 1129 + Gb * 3903 + Ga * Gb) % 16777213 == 7624579) then
        F8 = false
    end
    wK.AutoSell = F8
    if wK.AutoSell then
        if not xa() then
            wK.AutoSell = false
            wG("Sell shop unavailable")
            return
        end
        wR("Sell", w4, xm)
    else
        xe("Sell")
    end
end
function fns.fn353()
    return xT ~= nil
end
function fns.fn360(eT)
    local Cm = wK.StealZoneCount > 0 and not wK.StealZones[tostring(eT:GetAttribute("AreaId"))]
    if Cm then
        return false
    end
    if wK.StealRarityCount == 0 and wK.StealEggCount == 0 then
        return true
    end
    local Cm_2 = wK.StealRarityCount > 0 and wK.StealRarities[tostring(eT:GetAttribute("Rarity"))]
    if Cm_2 then
        return true
    end
    local Cm_3 = wK.StealEggCount > 0 and wK.StealEggs[tostring(eT:GetAttribute("EggType"))]
    if Cm_3 then
        return true
    end
    return false
end
function fns.fn365(aJ)
    local zi_1
    local zh_1
    if typeof(aJ) ~= "Instance" then
        return nil
    end
    zh_1, zi_1 = pcall(require, aJ)
    local zj = zh_1 and type(zi_1) == "table"
    if zj then
        return zi_1
    end
    return nil
end
function fns.fn366()
    if not x0 then
        return
    end
    local ET = wI(LocalPlayer:GetAttribute("OwnedTrails"))
    local EU = wO()
    if wK.AutoBuyTrail then
        for i, v in ipairs(EU) do
            local EV_1 = not wy() or not wK.AutoBuyTrail
            if EV_1 then
                break
            end
            local EV_2 = not ET[v.id]
            if EV_2 ~= false then
                EV_2 = v.price > 0
            end
            if EV_2 then
                EV_2 = xo() >= v.price
            end
            if EV_2 then
                wG("Buying " .. v.id)
                xW(x0, "Buy", v.id)
                task.wait(1)
                ET = wI(LocalPlayer:GetAttribute("OwnedTrails"))
            end
        end
    end
    if wK.AutoEquipTrail then
        local id = nil
        for i, v in ipairs(EU) do
            if ET[v.id] then
                id = v.id
            end
        end
        local EU_1 = id and LocalPlayer:GetAttribute("EquippedTrail") ~= id
        if EU_1 then
            xW(x0, "Equip", id)
        end
    end
end
function fns.fn378(fB)
    local CF = xi[fB]
    xi[fB] = nil
    local CG = CF and coroutine.status(CF) ~= "dead"
    if CG then
        pcall(task.cancel, CF)
    end
end
function fns.fn427()
    connection2:Disconnect()
end
function fns.fn490()
    local C7_1
    local C6_1
    if not xH then
        return nil
    end
    C6_1, C7_1 = xu(xH)
    local C8 = not C6_1
    local Dc = if C8 then 1 else 0
    local Da = 2518 * Dc + 2206 * (1 - Dc)
    local Db = 1808 * Dc + 1064 * (1 - Dc)
    if not ((Da * 2007 + Db * 467 + Da * Db) % 16777213 == 10450506) then
        C8 = type(C7_1) ~= "table"
    end
    if C8 then
        return nil
    end
    for i, v in ipairs(C7_1) do
        local C6_2 = type(v) == "table" and v.OwnerUserId == LocalPlayer.UserId and type(v.Records) == "table"
        if C6_2 then
            return v.Records
        end
    end
    return {}
end
function fns.fn491(b2)
    local zN = b2 == ""
    local zO = type(b2) ~= "string" or zN
    local zN_1 = not wE
    local zP = zO
    local zT = if zP then 1 else 0
    local zR = 3795 * zT + 1769 * (1 - zT)
    local zS = 3256 * zT + 1386 * (1 - zT)
    if not ((zR * 1752 + zS * 3997 + zR * zS) % 16777213 == 15242379) then
        zP = zN_1
    end
    if zP then
        return nil
    end
    local zN_2 = w2[b2]
    if zN_2 ~= nil then
        return zN_2 ~= false and zN_2 or nil
    end
    local zN_4 = wE:FindFirstChild(b2)
    local zO_2 = zN_4 and xy(zN_4)
    local zN_5 = zO_2 or nil
    local zO_3 = zN_5
    if not zN_5 then
        zN_5 = false
    end
    w2[b2] = zN_5
    return zO_3
end
function fns.fn517()
    return wL()
end
function fns.fn561(...)
    local FI = xl - (os.clock() - wU)
    if FI > 0 then
        task.wait(FI)
    end
    if not wy() then
        return false, nil
    end
    wU = os.clock()
    return xu(xT, ...)
end
function fns.fn573(du)
    wK.SellRarityCount = w6(du, wK.SellRarities)
end
function fns.fn609()
    local Dl_1
    local Dk_1
    local Dj = not wK.AutoPlaceEgg or not xA()
    if Dj then
        return
    end
    local Dj_1 = xL()
    if not Dj_1 then
        return
    end
    Dk_1, Dl_1 = wC()
    local Dn = not Dk_1 or not Dl_1
    local Dn_4
    if Dn then
        x7(xG)
        task.wait(0.6)
        Dk_1, Dl_1 = wC()
    end
    if not Dk_1 or not Dl_1 then
        wG("No pet area")
        return
    end
    local Dm_2 = RaycastParams.new()
    Dm_2.FilterType = Enum.RaycastFilterType.Include
    Dm_2.FilterDescendantsInstances = { Dl_1 }
    for k, v in pairs(Dj_1) do
        local Dj_2 = not wy() or not wK.AutoPlaceEgg
        if Dj_2 then
            return
        end
        local Dj_3 = type(v) == "table" and v.Placement == nil
        if Dj_3 then
            wG("Placing egg")
            local DC = 1
            local DA = wP
            while DC <= DA do
                local Dj_4 = (math.random() - 0.5) * math.max(Dl_1.Size.X - 6, 1)
                local Dn_2 = (math.random() - 0.5) * math.max(Dl_1.Size.Z - 6, 1)
                local Do = Dl_1.Position + Vector3.new(Dj_4, 20, Dn_2)
                local Do_1
                local Dj_5 = yd:Raycast(Do, Vector3.new(0, -60, 0), Dm_2)
                if Dj_5 and Dj_5.Instance == Dl_1 then
                    Dn_4, Do_1 = xu(xD, { Uid = k, LocalCFrame = Dk_1.CFrame:ToObjectSpace(CFrame.new(Dj_5.Position)) })
                    if Dn_4 and Do_1 == true then
                        break
                    end
                    task.wait(0.05)
                    DC += 1
                    continue
                end
                task.wait(0.05)
                DC += 1
            end
            task.wait(0.35)
        end
    end
end
function fns.fn610()
    local Fm = not wM
    local Fm_1, Fm_2
    local Fn = not wK.AutoDailyLogin or Fm
    local Fn_1, Fn_2
    if Fn then
        return
    end
    if wW then
        Fm_1, Fn_1 = xu(wW)
        local Fo_1 = Fm_1 and type(Fn_1) == "table" and Fn_1.ready ~= true
        if Fo_1 then
            return
        end
    end
    wG("Claiming daily login")
    Fm_2, Fn_2 = xu(wM)
    local Fo_2 = Fm_2 and type(Fn_2) == "table" and Fn_2.ok == true
    if Fo_2 then
        wG("Daily login claimed")
    end
end
function fns.fn623()
    local Gs_1
    local Gq = not x1 or not wD(x1.GetByUpgradeLevel)
    local Gq_2
    if Gq then
        return nil
    end
    local Gq_1 = tonumber(LocalPlayer:GetAttribute("TreadmillLevel")) or 0
    Gq_2, Gs_1 = pcall(x1.GetByUpgradeLevel, Gq_1 + 1)
    local Gr_1 = not Gq_2 or type(Gs_1) ~= "table"
    if Gr_1 then
        return nil
    end
    local Gq_3 = (tonumber(Gs_1.Price))
    local Gw = if Gq_3 then 1 else 0
    local Gu = 3058 * Gw + 67 * (1 - Gw)
    local Gv = 884 * Gw + 1216 * (1 - Gw)
    if not ((Gu * 2933 + Gv * 1959 + Gu * Gv) % 16777213 == 13404142) then
        Gq_3 = 0
    end
    return Gq_3
end
function fns.fn634(h5)
    local Ej = {}
    local El = h5
    local Ep = if El then 1 else 0
    local En = 1291 * Ep + 1234 * (1 - Ep)
    local Eo = 3617 * Ep + 980 * (1 - Ep)
    if not ((En * 1895 + Eo * 3792 + En * Eo) % 16777213 == 4054443) then
        El = ""
    end
    for k in string.gmatch(tostring(El), "[^,]+") do
        Ej[k] = true
    end
    return Ej
end
function fns.fn666(hg)
    local DG = hg and true
    local DK = if DG then 1 else 0
    local DI = 180 * DK + 1017 * (1 - DK)
    local DJ = 1390 * DK + 300 * (1 - DK)
    if not ((DI * 967 + DJ * 675 + DI * DJ) % 16777213 == 1362510) then
        DG = false
    end
    wK.AutoPlaceEgg = DG
    if wK.AutoPlaceEgg then
        if not xA() then
            wK.AutoPlaceEgg = false
            wG("Egg remotes unavailable")
            return
        end
        wR("Place", xd, wZ)
    else
        xe("Place")
    end
end
function fns.fn673()
    connection:Disconnect()
end
function fns.fn684(U)
    local y1 = typeof(cloneref) == "function" and typeof(U) == "Instance"
    if y1 then
        return cloneref(U)
    end
    return U
end
function fns.fn688(em)
    xR[em] = os.clock() + xr
end
function fns.fn706()
    gethui = xc
end
function fns.fn727()
    local AG_1
    local AF_1
    AF_1, AG_1 = {}, {}
    if wE then
        for i, child in ipairs(wE:GetChildren()) do
            if not AF_1[child.Name] then
                AF_1[child.Name] = true
                table.insert(AG_1, child.Name)
            end
        end
    end
    local LiveAreaEggs = yd:FindFirstChild("LiveAreaEggs")
    if LiveAreaEggs then
        for i, child in ipairs(LiveAreaEggs:GetChildren()) do
            local attr = child:GetAttribute("EggType")
            local AI = type(attr) == "string" and not AF_1[attr]
            if AI then
                AF_1[attr] = true
                table.insert(AG_1, attr)
            end
        end
    end
    table.sort(AG_1)
    return AG_1
end
function fns.fn734(ig)
    local EC = ig and true or false
    wK.AutoClaimIndex = EC
    if wK.AutoClaimIndex then
        if not x5 then
            wK.AutoClaimIndex = false
            wG("Index claim unavailable")
            return
        end
        wR("Index", w_, wx)
    else
        xe("Index")
    end
end
function fns.fn738(fi)
    wG("Delivering")
    local CA = w3
    local CB = os.clock() + xN
    local CC = 0
    while true do
        local CD = wy() and os.clock() < CB
        local CD_2
        if not CD then
            wY = nil
            return false
        end
        if os.clock() >= CC then
            if not x7(xG) then
                break
            end
            CC = os.clock() + xw
            if CD_2 then
                wY = nil
                wK.Stolen = wK.Stolen + 1
                wG("Delivered")
                return true
            end
            task.wait(xC)
            continue
        end
        CD_2 = w3 ~= CA or fi.Parent == nil
        if CD_2 then
            wY = nil
            wK.Stolen = wK.Stolen + 1
            wG("Delivered")
            return true
        end
        task.wait(xC)
    end
    wY = nil
    return false
end
function fns.fn748(dF)
    local Bw = dF and true or false
    wK.KeepPlaced = Bw
end
function fns.fn756()
    if wK.AutoBuyTrail or wK.AutoEquipTrail then
        if not x0 then
            wK.AutoBuyTrail = false
            wK.AutoEquipTrail = false
            wG("Trails unavailable")
            return
        end
        wR("Trails", w_, xX)
    else
        xe("Trails")
    end
end
function fns.fn766()
    return ya ~= nil
end
function fns.fn771()
    return xH ~= nil and xD ~= nil and xz ~= nil and xs ~= nil
end
function fns.fn772()
    local BT = xg()
    if not BT then
        return nil
    end
    local Plots = yd:FindFirstChild("Plots")
    local BV = Plots and Plots:FindFirstChild(BT)
    return BV or nil
end
local function fn778()
    local DL = not wK.AutoHatchEgg or not xA()
    local DL_6, DL_7
    if DL then
        return
    end
    local DL_1 = xL()
    if not DL_1 then
        return
    end
    local DM = yd:GetServerTimeNow()
    for k, v in pairs(DL_1) do
        local DL_2 = not wy() or not wK.AutoHatchEgg
        if DL_2 then
            return
        end
        local DL_3 = type(v) == "table" and v.Placement
        local DN = DL_3 or nil
        local DN_3, DN_4
        local DN_1 = type(DN) == "table" and tonumber(DN.ReadyAt)
        local DL_5 = DN_1 or nil
        local DN_2 = DL_5
        if DL_5 then
            DL_5 = DM >= DN_2
        end
        if DL_5 then
            wG("Hatching egg")
            DL_6, DN_3 = xu(xz, k)
            if DL_6 and DN_3 == true then
                task.wait(0.8)
                DL_7, DN_4 = xu(xs, k)
                if DL_7 and DN_4 == true then
                    wK.Hatched = wK.Hatched + 1
                end
            end
            task.wait(0.35)
        end
    end
end
local function fn783()
    return not wS.Unloaded
end
local function fn827()
    for k in pairs(xi) do
        xe(k)
    end
    table.clear(xR)
end
local function fn830(dq)
    wK.StealEggCount = w6(dq, wK.StealEggs)
end
local function fn853()
    local zB = {}
    if not xI() then
        table.insert(zB, "steal")
    end
    if not xA() then
        table.insert(zB, "eggs")
    end
    if not xa() then
        table.insert(zB, "selling")
    end
    if not w0() then
        table.insert(zB, "rewards")
    end
    if not wN() then
        table.insert(zB, "upgrades")
    end
    if not xf then
        table.insert(zB, "rebirth")
    end
    if not x0 then
        table.insert(zB, "trails")
    end
    if not xO then
        table.insert(zB, "equip best")
    end
    return zB
end
local function fn858(aT)
    local zl = w9 and w9:FindFirstChild(aT)
    local zm = zl
    local zq = if zm then 1 else 0
    local zo = 2860 * zq + 502 * (1 - zq)
    local zp = 1681 * zq + 3146 * (1 - zq)
    if not ((zo * 3481 + zp * 2216 + zo * zp) % 16777213 == 1711203) then
        zm = nil
    end
    return zm
end
local function fn872()
    return xn ~= nil
end
local function fn877()
    local Gg = if not xa() then 1 else 0
    if Gg == 1 then
        wG("Sell shop unavailable")
        return
    end
    task.spawn(function()
        local AutoSell = wK.AutoSell
        wK.AutoSell = true
        pcall(xm)
        wK.AutoSell = AutoSell
    end)
end
local function fn895(dj)
    wK.StealZoneCount = w6(dj, wK.StealZones)
end
local function fn900(dD)
    local Bt = dD and true or false
    wK.SellEggs = Bt
end
local function fn901()
    local FW_1, FW_2
    local FV = not wK.AutoSell or not xa()
    local FV_3, FV_6
    if FV then
        return
    end
    if not wK.SellPets and not wK.SellEggs then
        return
    end
    local FV_2 = xx()
    if FV_2 then
        x7(FV_2.Position + Vector3.new(0, 4, 0))
        task.wait(0.4)
    end
    FV_3, FW_1 = wQ("List")
    local FX = not FV_3 or type(FW_1) ~= "table"
    if FX then
        return
    end
    local FV_4 = {}
    if wK.SellPets then
        table.insert(FV_4, { kind = "pet", uids = wt(FW_1.pets) })
    end
    if wK.SellEggs then
        table.insert(FV_4, { kind = "egg", uids = wt(FW_1.eggs) })
    end
    for i, v in ipairs(FV_4) do
        local FV_5 = not wy() or not wK.AutoSell
        if FV_5 then
            return
        end
        if #v.uids > 0 then
            wG("Selling " .. #v.uids .. " " .. v.kind)
            FV_6, FW_2 = wQ("Sell", v.kind, v.uids)
            local FX_1 = FV_6 and type(FW_2) == "table" and FW_2.ok == true
            if FX_1 then
                local Sold = wK.Sold
                local FX_2 = tonumber(FW_2.count) or 0
                wK.Sold = Sold + FX_2
            end
        end
    end
end
local function fn920()
    local attr = LocalPlayer:GetAttribute("PlotSlot")
    if attr == nil then
        return nil
    end
    return tostring(attr)
end
local function fn932(aX)
    local zr = w5 and w5:FindFirstChild(aX, true)
    return zr or nil
end
local function fn955()
    local BM = tonumber(LocalPlayer:GetAttribute("Money")) or 0
    return BM
end
local function fn963()
    return xv()
end
local function fn968(gy)
    local CZ = gy and true or false
    wK.AutoSteal = CZ
    if wK.AutoSteal then
        if not xI() then
            wK.AutoSteal = false
            wG("Steal remote unavailable")
            return
        end
        wR("Steal", xh, wV)
    else
        xe("Steal")
        wG("Idle")
    end
end
local function fn981(kv)
    local GK = kv and true or false
    wK.AutoUpgradePen = GK
    xY()
end
local function fn997()
    local y4 = tostring(wK.Status)
    local y5 = wK.Stolen or 0
    local y6 = wK.Hatched or 0
    local y7 = wK.Sold
    local zb = if y7 then 1 else 0
    local y9 = 161 * zb + 875 * (1 - zb)
    local za = 3247 * zb + 718 * (1 - zb)
    if not ((y9 * 3282 + za * 2105 + y9 * za) % 16777213 == 7886104) then
        y7 = 0
    end
    return string.format("%s  |  stolen %d  |  hatched %d  |  sold %d", y4, y5, y6, y7)
end
local function fn1053(X)
    return type(X) == "function"
end
local function fn1066()
    if wK.AutoUpgradePen or wK.AutoUpgradeTreadmill then
        local GI = if not wN() then 1 else 0
        if GI == 1 then
            wK.AutoUpgradePen = false
            wK.AutoUpgradeTreadmill = false
            wG("Upgrades unavailable")
            return
        end
        wR("Upgrade", wT, xb)
    else
        xe("Upgrade")
    end
end
local function fn1098(dB)
    local Bq = dB and true or false
    wK.SellPets = Bq
end
local function fn1115(ky)
    local GN = ky and true or false
    wK.AutoUpgradeTreadmill = GN
    xY()
end
local function fn1162(hX)
    local Eh = hX and true or false
    wK.AutoRebirth = Eh
    if wK.AutoRebirth then
        if not xf then
            wK.AutoRebirth = false
            wG("Rebirth unavailable")
            return
        end
        wR("Rebirth", w_, x6)
    else
        xe("Rebirth")
    end
end
local function fn1182(av)
    wK.Status = av
end
local function fn1197(ja)
    local Fx = ja and true or false
    wK.AutoDailyLogin = Fx
    if wK.AutoDailyLogin then
        if not wM then
            wK.AutoDailyLogin = false
            wG("Daily login unavailable")
            return
        end
        wR("Daily", w_ * 3, w7)
    else
        xe("Daily")
    end
end
local function fn1232()
    local Ca = wY
    if Ca == nil then
        return nil
    end
    local Cb = Ca.Parent == nil or Ca:GetAttribute("CarriedBy") ~= LocalPlayer.UserId
    if Cb then
        wY = nil
        return nil
    end
    return Ca
end
local function fn1263(dx)
    local Be = dx == "Rarest" and "Rarest"
    local Bi = if Be then 1 else 0
    local Bg = 3601 * Bi + 3632 * (1 - Bi)
    local Bh = 2201 * Bi + 1826 * (1 - Bi)
    if not ((Bg * 842 + Bh * 2806 + Bg * Bh) % 16777213 == 356636) then
        Be = "Nearest"
    end
    wK.Priority = Be
end
local function fn1270(iW)
    local Fh = iW and true or false
    wK.AutoEquipTrail = Fh
    ww()
end
local function fn1271(db, dc)
    table.clear(dc)
    local A3 = 0
    if type(db) == "table" then
        for k, v in pairs(db) do
            local A4
            local A5 = v == true and type(k) == "string"
            if A5 then
                A4 = k
            elseif type(v) == "string" then
                A4 = v
            end
            if A4 and not dc[A4] then
                dc[A4] = true
                A3 += 1
            end
        end
    end
    return A3
end
local function fn1311()
    if not wK.AutoRebirth or not xf then
        return
    end
    xW(xf, "State")
    task.wait(1)
    local Ea_1 = not wy() or not wK.AutoRebirth
    if Ea_1 then
        return
    end
    local Ea_2 = type(wz) == "table" and wz.canRebirth == true
    if Ea_2 then
        wG("Rebirthing")
        xW(xf, "Rebirth")
        task.wait(2)
    end
end
local function fn1337()
    if not wK.AutoClaimIndex or not x5 then
        return
    end
    local Eu_1 = wI(LocalPlayer:GetAttribute("DiscoveredPets"))
    local Ev_1 = wI(LocalPlayer:GetAttribute("ClaimedIndexPets"))
    for k in pairs(Eu_1) do
        local Eu_2 = not wy() or not wK.AutoClaimIndex
        if Eu_2 then
            return
        end
        if not Ev_1[k] then
            wG("Claiming index " .. k)
            xW(x5, k)
            task.wait(0.5)
        end
    end
end
local function fn1360()
    return x4()
end
local function fn1405(jp)
    local FK = {}
    local FM = jp or {}
    for i, v in ipairs(FM) do
        local FL_1 = type(v) == "table" and type(v.uid) == "string"
        if FL_1 then
            local FL_2 = false
            if wK.KeepPlaced and v.placed == true then
                FL_2 = true
            end
            local FM_2 = not FL_2
            if FM_2 ~= false then
                FM_2 = wK.SellRarityCount > 0
            end
            if FM_2 then
                FM_2 = not wK.SellRarities[tostring(v.rarity)]
            end
            if FM_2 then
                FL_2 = true
            end
            local FM_3 = not FL_2
            if FM_3 ~= false then
                FM_3 = wK.SellMaxPrice > 0
            end
            if FM_3 then
                local FN = tonumber(v.price) or 0
                FM_3 = FN > wK.SellMaxPrice
            end
            if FM_3 then
                FL_2 = true
            end
            if not FL_2 then
                table.insert(FK, v.uid)
            end
        end
    end
    return FK
end
local function fn1419(hy)
    local D4 = hy and true
    local D8 = if D4 then 1 else 0
    local D6 = 2470 * D8 + 3110 * (1 - D8)
    local D7 = 3610 * D8 + 735 * (1 - D8)
    if not ((D6 * 1311 + D7 * 3922 + D6 * D7) % 16777213 == 9536077) then
        D4 = false
    end
    wK.AutoEquipBest = D4
    if wK.AutoEquipBest then
        if not xO then
            wK.AutoEquipBest = false
            wG("Equip best unavailable")
            return
        end
        wR("EquipBest", w8, function()
            if wK.AutoEquipBest then
                xu(xO)
            end
        end)
    else
        xe("EquipBest")
    end
end
local function fn1461()
    local Gh = w1()
    local Gi = not Gh or not xP or type(xP.BASES) ~= "table"
    if Gi then
        return nil
    end
    local Gi_1 = tonumber(Gh:GetAttribute("BaseUpgradeLevel")) or 0
    local Gi_2 = xP.BASES[Gi_1 + 1]
    if type(Gi_2) ~= "table" then
        return nil
    end
    local Gh_2 = tonumber(Gi_2.Cost) or 0
    return Gh_2
end
wt = nil
connection = nil
ww = nil
wx = nil
wy = nil
wz = nil
wB = nil
wC = nil
wD = nil
wE = nil
wG = nil
wI = nil
wK = nil
wL = nil
wM = nil
wN = nil
wO = nil
wP = nil
wQ = nil
wR = nil
wS = nil
wT = nil
wU = nil
wV = nil
wW = nil
wY = nil
wZ = nil
w_ = nil
w0 = nil
w1 = nil
w2 = nil
w3 = nil
w4 = nil
w5 = nil
w6 = nil
w7 = nil
w8 = nil
w9 = nil
xa = nil
xb = nil
xc = nil
xd = nil
xe = nil
local Players, wF, wH, wJ, wX
xf = nil
xg = nil
xh = nil
xi = nil
LocalPlayer = nil
xl = nil
xm = nil
xn = nil
xo = nil
xr = nil
xs = nil
xu = nil
xv = nil
xw = nil
xx = nil
xy = nil
xz = nil
xA = nil
xC = nil
xD = nil
xE = nil
xG = nil
xH = nil
xI = nil
xL = nil
xN = nil
xO = nil
xP = nil
xR = nil
xT = nil
xU = nil
xW = nil
xX = nil
xY = nil
x_ = nil
x0 = nil
x1 = nil
local xk, xp, xq, Lighting, xB, xF, GuiService, xK, xM, HttpService, xS, VirtualUser, xZ
x4 = nil
x5 = nil
x6 = nil
x7 = nil
ya = nil
yd = nil
connection2 = nil
local UserInputService, x8, yb, yv, yw, yx
UserInputService = nil
local x3
x8 = nil
local x9
yb = nil
local yc
local ye
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, Lv_7, x8, UserInputService, VirtualUser, HttpService, GuiService, xE, xB, Lighting, xp, LocalPlayer, xc = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
if ((not xp or not Lighting) and (not xp or not Players) or (not Players and VirtualUser or not VirtualUser and not Players)) and (not VirtualUser and not xp and (not VirtualUser and not Lighting) and (not xp and not VirtualUser or (not xp or VirtualUser))) or not (((not xp or not Lighting) and (not xp or not Players) or (not Players and VirtualUser or not VirtualUser and not Players)) and (not VirtualUser and not xp and (not VirtualUser and not Lighting) and (not xp and not VirtualUser or (not xp or VirtualUser)))) then
    Lv_7 = game:GetService("ReplicatedStorage")
else
    x8 = game:GetService("ReplicatedStorage")
end
x8 = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
if ((xp or xp or xc and not Lighting or not Players and xp and (not Lighting or not Players)) and (not Players or not Lighting or (not LocalPlayer or not LocalPlayer) or (Players or xp) and (not Players and not Players)) or (not UserInputService and xp or UserInputService and not Players or (not UserInputService or UserInputService) and (not LocalPlayer and not xc)) and (UserInputService and LocalPlayer and (Players or Lighting) and (xc and not xp or (not LocalPlayer or not LocalPlayer)))) and not ((xp or xp or xc and not Lighting or not Players and xp and (not Lighting or not Players)) and (not Players or not Lighting or (not LocalPlayer or not LocalPlayer) or (Players or xp) and (not Players and not Players)) or (not UserInputService and xp or UserInputService and not Players or (not UserInputService or UserInputService) and (not LocalPlayer and not xc)) and (UserInputService and LocalPlayer and (Players or Lighting) and (xc and not xp or (not LocalPlayer or not LocalPlayer)))) then
    xB = game:GetService("CoreGui")
    xE = game:GetService("TeleportService")
else
    xE = game:GetService("CoreGui")
    xB = game:GetService("TeleportService")
end
Lighting = game:GetService("Lighting")
xp = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local Lv_2 = "OuroborosStealAnAnimeEgg"
xc = fns.fn312
if getgenv then
    getgenv().gethui = xc
end
wS, Lv_11, yd, x9, x3, xZ, xS, xN, xG, xC, xw, xr, xl, xh, xd, w8, w4, w_, wT, wP, wK, w9, w5, Lv_1, Lv_6, Lv_12, ya, x5, x0, xT, xO, xH, xD, xz, xs, xn, Lv_10, Lv_15, xq, Lv_9, wD, wy, wG, Lv_13, xy, Lv_4, Lv_3 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Lv_5 = 76
repeat
    local Lv_8 = (Lv_5 * 25 + 18) % 26 + 1
    if Lv_8 <= 13 then
        if Lv_8 <= 7 then
            if Lv_8 <= 4 then
                if Lv_8 <= 2 then
                    if Lv_8 <= 1 then
                        if (Lv_5 * 3 + 3) * 21 % 4 == ((Lv_5 * 3 + 3) * 21 + 4) % 4 then
                            yd = Lv_9(xp)
                            x9 = 8
                            x3 = 3
                        else
                            xp = yd(x3)
                            Lv_9 = 8
                            x9 = 3
                        end
                        Lv_5 = (Lv_5 + 77) % 104
                    else
                        Lv_14 = (vector.create((Lv_5 * 2 + 5) % 11 + 1, (Lv_5 * 4 + 5) % 13 + 1, (Lv_5 * 14 + 13) % 17 + 1))
                        yv = (vector.create((Lv_5 * 2 + 1) % 11 + 1, (Lv_5 * 10 + 4) % 13 + 1, (Lv_5 * 11 + 9) % 17 + 1))
                        local Oj = vector.cross(Lv_14, yv)
                        local Ok = vector.dot(Lv_14, yv)
                        if vector.dot(Oj, Oj) + Ok * Ok == vector.dot(Lv_14, Lv_14) * vector.dot(yv, yv) then
                            xZ = 0.2
                            xS = 1.2
                            xN = 3
                        else
                            xN = 0.2
                            xZ = 1.2
                            xS = 3
                        end
                        Lv_5 = (Lv_5 + 25) % 104
                    end
                elseif Lv_8 <= 3 then
                    if Lv_5 * 113872625 + 8 + 7 >= Lv_5 * 113872625 + 8 + 7 + 3 then
                        xC = Vector3.new(539, 70, -365)
                        xw = 0.05
                        xG = 0.4
                    else
                        xG = Vector3.new(539, 70, -365)
                        xC = 0.05
                        xw = 0.4
                    end
                    Lv_5 = (Lv_5 + 103) % 104
                else
                    Lv_14 = (vector.create((Lv_5 * 7 + 4) % 11 + 1, (Lv_5 * 7 + 6) % 13 + 1, (Lv_5 * 13 + 6) % 17 + 1))
                    yv = (vector.create((Lv_5 * 5 + 7) % 11 + 1, (Lv_5 * 4 + 1) % 13 + 1, (Lv_5 * 3 + 2) % 17 + 1))
                    local Me = vector.cross(Lv_14, yv)
                    local Mf = vector.dot(Lv_14, yv)
                    if vector.dot(Me, Me) + Mf * Mf == vector.dot(Lv_14, Lv_14) * vector.dot(yv, yv) + 2 then
                        xn = 8
                    else
                        xr = 8
                    end
                    Lv_5 = (Lv_5 + 77) % 104
                end
            elseif Lv_8 <= 6 then
                if Lv_8 <= 5 then
                    Lv_14 = {
                        "ecru",
                        "bxo",
                        "pxay",
                        "lplyj",
                        "iuwhmo",
                        "zczrkto",
                        "dtctdanwzw",
                        "ljrtqdrub",
                        "wxzvib",
                        "rcbxavfe",
                        "iiorz",
                        "ced"
                    }
                    local NM = Lv_5
                    yv = Lv_14[NM % 12 + 1]
                    if yv:len() <= yv:reverse():rep(NM % 3 + 2):len() then
                        xl = 5.5
                        xh = 0.35
                        xd = 3
                    else
                        xd = 5.5
                        xl = 0.35
                        xh = 3
                    end
                    Lv_5 = (Lv_5 + 25) % 104
                else
                    Lv_14 = {
                        "ltfauie",
                        "lpy",
                        "twbdmmvvwv",
                        "jewcabhcj",
                        "ncv",
                        "phvrihcwe",
                        "xufyb",
                        "tfpj",
                        "bodwbwayyty",
                        "wbuluacnhxop",
                        "mysnybvvch",
                        "wkbhuishkch",
                        "ziavc"
                    }
                    if Lv_14[(Lv_5 * 87 + 69) % 13 + 1] < Lv_14[(Lv_5 * 87 + 69) % 13 + 1] then
                        w_ = 8
                        wP = 6
                        w4 = 10
                        w8 = 6
                        wT = 25
                    else
                        w8 = 8
                        w4 = 6
                        w_ = 10
                        wT = 6
                        wP = 25
                    end
                    Lv_5 = (Lv_5 + 51) % 104
                end
            else
                Lv_14 = (vector.create((Lv_5 * 5 + 1) % 11 + 1, (Lv_5 * 9 + 4) % 13 + 1, (Lv_5 * 4 + 13) % 17 + 1))
                yv = (vector.create((Lv_5 * 5 + 5) % 11 + 1, (Lv_5 * 10 + 2) % 13 + 1, (Lv_5 * 13 + 14) % 17 + 1))
                yw = (vector.create((Lv_5 * 7 + 8) % 11 + 1, (Lv_5 * 11 + 10) % 13 + 1, (Lv_5 * 6 + 14) % 17 + 1))
                if vector.dot(vector.cross(Lv_14, yv), yw) == vector.dot(vector.cross(yv, yw), Lv_14) + 3 then
                    wS = wG.State
                    wS.AutoSteal = false
                    wS.AutoPlaceEgg = false
                    wS.AutoHatchEgg = false
                    wS.AutoEquipBest = false
                    wS.AutoRebirth = false
                    wS.AutoClaimIndex = false
                    wS.AutoBuyTrail = false
                    wS.AutoEquipTrail = false
                    wS.AutoSell = false
                    wS.AutoDailyLogin = false
                    wS.AutoUpgradePen = false
                    wS.AutoUpgradeTreadmill = false
                    wS.SellPets = true
                    wS.SellEggs = false
                    wS.KeepPlaced = true
                    wS.StealZones = {}
                    wS.StealRarities = {}
                    wS.StealEggs = {}
                    wS.SellRarities = {}
                    wS.StealZoneCount = 0
                    wS.StealRarityCount = 0
                    wS.StealEggCount = 0
                    wS.SellRarityCount = 0
                    wS.Priority = "Nearest"
                    wS.SellMaxPrice = 0
                    wS.Status = "Idle"
                    wS.Stolen = 0
                    wS.Hatched = 0
                    wS.Sold = 0
                    wK = fn1182
                else
                    wK = wS.State
                    wK.AutoSteal = false
                    wK.AutoPlaceEgg = false
                    wK.AutoHatchEgg = false
                    wK.AutoEquipBest = false
                    wK.AutoRebirth = false
                    wK.AutoClaimIndex = false
                    wK.AutoBuyTrail = false
                    wK.AutoEquipTrail = false
                    wK.AutoSell = false
                    wK.AutoDailyLogin = false
                    wK.AutoUpgradePen = false
                    wK.AutoUpgradeTreadmill = false
                    wK.SellPets = true
                    wK.SellEggs = false
                    wK.KeepPlaced = true
                    wK.StealZones = {}
                    wK.StealRarities = {}
                    wK.StealEggs = {}
                    wK.SellRarities = {}
                    wK.StealZoneCount = 0
                    wK.StealRarityCount = 0
                    wK.StealEggCount = 0
                    wK.SellRarityCount = 0
                    wK.Priority = "Nearest"
                    wK.SellMaxPrice = 0
                    wK.Status = "Idle"
                    wK.Stolen = 0
                    wK.Hatched = 0
                    wK.Sold = 0
                    wG = fn1182
                end
                Lv_5 = (Lv_5 + 51) % 104
            end
        elseif Lv_8 <= 10 then
            if Lv_8 <= 9 then
                if Lv_8 <= 8 then
                    if Lv_5 * 72451907 + 7 + 6 <= Lv_5 * 72451907 + 7 + 6 + 2 then
                        wS.GetStatus = fn997
                        Lv_13 = function(az, aA, aB)
                            local zf_2
                            if typeof(az) ~= "Instance" then
                                return nil
                            end
                            local ze = az:FindFirstChild(aA)
                            local ze_2
                            if ze then
                                return ze
                            end
                            ze_2, zf_2 = pcall(function()
                                local zc = aB or 10
                                return az:WaitForChild(aA, zc)
                            end)
                            if ze_2 then
                                return zf_2
                            end
                            return nil
                        end
                    else
                        Lv_13.GetStatus = fn997
                        wS = function(az, aA, aB)
                            local zf_1
                            if typeof(az) ~= "Instance" then
                                return nil
                            end
                            local ze = az:FindFirstChild(aA)
                            local ze_1
                            if ze then
                                return ze
                            end
                            ze_1, zf_1 = pcall(function()
                                local zc = aB or 10
                                return az:WaitForChild(aA, zc)
                            end)
                            if ze_1 then
                                return zf_1
                            end
                            return nil
                        end
                    end
                    Lv_5 = (Lv_5 + 51) % 104
                else
                    Lv_14 = (vector.create((Lv_5 * 5 + 3) % 11 + 1, (Lv_5 * 1 + 6) % 13 + 1, (Lv_5 * 13 + 6) % 17 + 1))
                    yv = (vector.create((Lv_5 * 4 + 5) % 11 + 1, (Lv_5 * 8 + 1) % 13 + 1, (Lv_5 * 3 + 9) % 17 + 1))
                    local NX = vector.dot(Lv_14, yv)
                    if NX * NX >= vector.dot(Lv_14, Lv_14) * vector.dot(yv, yv) + 1 then
                        w9 = fns.fn365
                        Lv_11 = xy(Lv_13, "GameRemotes", 20)
                    else
                        xy = fns.fn365
                        w9 = Lv_13(Lv_11, "GameRemotes", 20)
                    end
                    Lv_5 = (Lv_5 + 25) % 104
                end
            else
                local MV = bit32.rrotate(bit32.bxor(bit32.lrotate(Lv_5, 25), string.byte(tostring(xw))), 30)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(MV, 3911903231), 1533304057), (bit32.bxor(bit32.band(MV, 383064064), 3423650247))), 1533304057), 3423650247) == MV then
                    w5 = Lv_13(Lv_11, "Network", 20)
                else
                    Lv_11 = w5(Lv_13, "Network", 20)
                end
                Lv_5 = (Lv_5 + 25) % 104
            end
        elseif Lv_8 <= 12 then
            if Lv_8 <= 11 then
                Lv_14 = {
                    "psk",
                    "mxlpwh",
                    "cbdum",
                    "bulzrpwwz",
                    "jggojbc",
                    "xtgvfxgxdbiq",
                    "ttmudnjaj",
                    "gqqsuw",
                    "ftrbdv",
                    "mbhsncsuhq"
                }
                if Lv_14[(Lv_5 * 50 + 89) % 10 + 1] <= Lv_14[(Lv_5 * 50 + 89) % 10 + 1] then
                    Lv_1 = Lv_13(Lv_11, "RebirthRemotes", 10)
                else
                    Lv_11 = Lv_1(Lv_13, "RebirthRemotes", 10)
                end
                Lv_5 = (Lv_5 + 77) % 104
            else
                Lv_14 = (vector.create((Lv_5 * 3 + 4) % 11 + 1, (Lv_5 * 3 + 2) % 13 + 1, (Lv_5 * 10 + 1) % 17 + 1))
                yv = (vector.create((Lv_5 * 4 + 9) % 11 + 1, (Lv_5 * 2 + 12) % 13 + 1, (Lv_5 * 5 + 5) % 17 + 1))
                local N5 = vector.dot(Lv_14, yv)
                if N5 * N5 <= vector.dot(Lv_14, Lv_14) * vector.dot(yv, yv) then
                    Lv_6 = Lv_13(Lv_11, "DailyLoginRemotes", 10)
                else
                    Lv_11 = Lv_6(Lv_13, "DailyLoginRemotes", 10)
                end
                Lv_5 = (Lv_5 + 25) % 104
            end
        else
            Lv_14 = { "zvwiozcvwti", "lzrkxqlyvg", "zjwgy", "zcdlym", "zsh", "hinzyqrq", "hhvabohpz", "mjln" }
            local NP = Lv_5
            yv = Lv_14[NP % 8 + 1]
            if yv:len() >= yv:gsub("(.)", "%1%1", NP % 3 % 2 + 1):len() then
                Lv_11 = Lv_12(Lv_13, "Directory", 20)
            else
                Lv_12 = Lv_13(Lv_11, "Directory", 20)
            end
            Lv_5 = (Lv_5 + 25) % 104
        end
    elseif Lv_8 <= 20 then
        if Lv_8 <= 17 then
            if Lv_8 <= 15 then
                if Lv_8 <= 14 then
                    if Lv_5 * 42823139 + 7 + 6 <= Lv_5 * 42823139 + 7 + 6 + 6 then
                        Lv_4 = fn858
                    else
                        xZ = fn858
                    end
                    Lv_5 = (Lv_5 + 77) % 104
                else
                    Lv_14 = {
                        "mqnlpjhy",
                        "nnnklxe",
                        "plimkowo",
                        "rpksrvud",
                        "wrvt",
                        "tuyn",
                        "rxo",
                        "zfbdwnol",
                        "cnbb",
                        "nqkyiayq",
                        "rixvzfxjpwl",
                        "udjtshoh",
                        "lsulbqnjz",
                        "gwcosunqsmg",
                        "tcfxsgsvoz",
                        "ouwwlar"
                    }
                    if Lv_14[(Lv_5 * 5 + 55) % 16 + 1] <= Lv_14[(Lv_5 * 5 + 55) % 16 + 1] then
                        Lv_3 = fn932
                    else
                        Lv_13 = fn932
                    end
                    Lv_5 = (Lv_5 + 77) % 104
                end
            elseif Lv_8 <= 16 then
                Lv_14 = (vector.create((Lv_5 * 7 + 4) % 11 + 1, (Lv_5 * 8 + 8) % 13 + 1, (Lv_5 * 8 + 14) % 17 + 1))
                yv = (vector.create((Lv_5 * 7 + 8) % 11 + 1, (Lv_5 * 5 + 1) % 13 + 1, (Lv_5 * 9 + 6) % 17 + 1))
                yw = (vector.create((Lv_5 * 2 + 3) % 11 + 1, (Lv_5 * 8 + 10) % 13 + 1, (Lv_5 * 15 + 2) % 17 + 1))
                yx = (vector.create((Lv_5 * 1 + 2) % 5 + 1, (Lv_5 * 1 + 4) % 7 + 1, (Lv_5 * 5 + 3) % 9 + 1))
                if vector.dot(vector.cross(Lv_14, (vector.cross(yv, yw))), yx) == vector.dot(yv * vector.dot(Lv_14, yw) - yw * vector.dot(Lv_14, yv), yx) then
                    ya = Lv_4("StealEgg")
                    x5 = Lv_4("IndexClaim")
                else
                    Lv_4 = x5("StealEgg")
                    ya = x5("IndexClaim")
                end
                Lv_5 = (Lv_5 + 25) % 104
            else
                if Lv_5 * 114546991 + 9 + 3 >= Lv_5 * 114546991 + 9 + 3 + 1 then
                    Lv_4 = x0("TrailAction")
                else
                    x0 = Lv_4("TrailAction")
                end
                Lv_5 = (Lv_5 + 51) % 104
            end
        elseif Lv_8 <= 19 then
            if Lv_8 <= 18 then
                local N2 = bit32.rrotate(bit32.bxor(bit32.lrotate(Lv_5, 13), string.byte(tostring(yd))), 23)
                if bit32.bxor(bit32.lrotate(bit32.bxor(N2, 2652756085), 2), 2021089750) == bit32.lrotate(N2, 2) then
                    xT = Lv_4("SellShopRequest")
                    xO = Lv_4("EquipBestPets")
                    xH = Lv_3("Eggs: RequestRuntimeSnapshot")
                    xD = Lv_3("Eggs: RequestPlaceEgg")
                    xz = Lv_3("Eggs: RequestHatchEgg")
                else
                    Lv_4 = xz("SellShopRequest")
                    xT = xz("EquipBestPets")
                    Lv_3 = xD("Eggs: RequestRuntimeSnapshot")
                    xO = xD("Eggs: RequestPlaceEgg")
                    xH = xD("Eggs: RequestHatchEgg")
                end
                Lv_5 = (Lv_5 + 103) % 104
            else
                Lv_14 = { "xaihvansx", "ibnkx", "xxov", "rpqol", "lsnof", "vrfhpie", "kihqgzx", "mfhp" }
                local NO = Lv_5
                yv = Lv_14[NO % 8 + 1]
                if yv:len() <= yv:reverse():rep(NO % 3 + 2):len() then
                    xs = Lv_3("Eggs: RequestCompleteHatchEgg")
                    xn = Lv_3("Plots: RequestBaseUpgrade")
                else
                    Lv_3 = xn("Eggs: RequestCompleteHatchEgg")
                    xs = xn("Plots: RequestBaseUpgrade")
                end
                Lv_5 = (Lv_5 + 103) % 104
            end
        else
            if (Lv_5 * 3 + 3) * 9 % 4 == ((Lv_5 * 3 + 3) * 9 + 1) % 4 then
                Lv_1 = Lv_10
            else
                Lv_10 = Lv_1
            end
            Lv_5 = (Lv_5 + 103) % 104
        end
    elseif Lv_8 <= 23 then
        if Lv_8 <= 22 then
            if Lv_8 <= 21 then
                Lv_14 = (vector.create((Lv_5 * 7 + 3) % 11 + 1, (Lv_5 * 11 + 3) % 13 + 1, (Lv_5 * 5 + 2) % 17 + 1))
                yv = (vector.create((Lv_5 * 6 + 9) % 11 + 1, (Lv_5 * 11 + 7) % 13 + 1, (Lv_5 * 2 + 9) % 17 + 1))
                yw = (vector.create((Lv_5 * 6 + 5) % 11 + 1, (Lv_5 * 6 + 2) % 13 + 1, (Lv_5 * 6 + 16) % 17 + 1))
                if vector.dot(vector.cross(Lv_14, yv), yw) == vector.dot(vector.cross(yv, yw), Lv_14) + 1 then
                    pcall(fns.fn706)
                    xZ = function(t)
                        local yQ
                        local yS
                        local yR
                        yQ = nil
                        yR = nil
                        yS = nil
                        local yT = t ~= ""
                        local yU = type(t) == "string" and yT
                        assert(yU, "A namespace is required")
                        assert(type(getgenv) == "function", "getgenv is unavailable")
                        yQ = getgenv()
                        assert(type(yQ) == "table", "getgenv did not return a table")
                        local yT_2 = yQ[t]
                        if yT_2 ~= nil then
                            local yU_2 = type(yT_2) == "table" and type(yT_2.Unload) == "function"
                            assert(yU_2, "Namespace is occupied")
                            yT_2.Unload()
                            assert(yQ[t] == nil, "Previous instance did not release its namespace")
                        end
                        yR = {}
                        yS = { State = {}, Unloaded = false }
                        yS.Track = function(z)
                            assert(type(z) == "function", "Cleanup must be callable")
                            if yS.Unloaded then
                                z()
                            else
                                table.insert(yR, z)
                            end
                            return z
                        end
                        yS.Unload = function()
                            local yJ_2
                            local yI_2
                            if yS.Unloaded then
                                return
                            end
                            yS.Unloaded = true
                            local yG = {}
                            local yN = #yR
                            local yM = -1
                            while false and yN <= 1 or true and yN >= 1 do
                                local yO = yN
                                local yH_2 = table.remove(yR, yO)
                                yI_2, yJ_2 = pcall(yH_2)
                                if not yI_2 then
                                    table.insert(yG, tostring(yJ_2))
                                end
                                yN += yM
                            end
                            table.clear(yS.State)
                            if #yG > 0 then
                                error("Cleanup incomplete: " .. table.concat(yG, "; "), 0)
                            end
                            if yQ[t] == yS then
                                yQ[t] = nil
                            end
                        end
                        yQ[t] = yS
                        return yS
                    end
                else
                    pcall(fns.fn706)
                    Lv_15 = function(t)
                        local yQ
                        local yS
                        local yR
                        yQ = nil
                        yR = nil
                        yS = nil
                        local yT = t ~= ""
                        local yU = type(t) == "string" and yT
                        assert(yU, "A namespace is required")
                        assert(type(getgenv) == "function", "getgenv is unavailable")
                        yQ = getgenv()
                        assert(type(yQ) == "table", "getgenv did not return a table")
                        local yT_1 = yQ[t]
                        if yT_1 ~= nil then
                            local yU_1 = type(yT_1) == "table" and type(yT_1.Unload) == "function"
                            assert(yU_1, "Namespace is occupied")
                            yT_1.Unload()
                            assert(yQ[t] == nil, "Previous instance did not release its namespace")
                        end
                        yR = {}
                        yS = { State = {}, Unloaded = false }
                        yS.Track = function(z)
                            assert(type(z) == "function", "Cleanup must be callable")
                            if yS.Unloaded then
                                z()
                            else
                                table.insert(yR, z)
                            end
                            return z
                        end
                        yS.Unload = function()
                            local yJ_1
                            local yI_1
                            if yS.Unloaded then
                                return
                            end
                            yS.Unloaded = true
                            local yG = {}
                            local yN = #yR
                            local yM = -1
                            while false and yN <= 1 or true and yN >= 1 do
                                local yO = yN
                                local yH_1 = table.remove(yR, yO)
                                yI_1, yJ_1 = pcall(yH_1)
                                if not yI_1 then
                                    table.insert(yG, tostring(yJ_1))
                                end
                                yN += yM
                            end
                            table.clear(yS.State)
                            if #yG > 0 then
                                error("Cleanup incomplete: " .. table.concat(yG, "; "), 0)
                            end
                            if yQ[t] == yS then
                                yQ[t] = nil
                            end
                        end
                        yQ[t] = yS
                        return yS
                    end
                end
                Lv_5 = (Lv_5 + 103) % 104
            else
                Lv_14 = (vector.create((Lv_5 * 4 + 9) % 11 + 1, (Lv_5 * 3 + 3) % 13 + 1, (Lv_5 * 8 + 12) % 17 + 1))
                yv = (vector.create((Lv_5 * 7 + 2) % 11 + 1, (Lv_5 * 1 + 4) % 13 + 1, (Lv_5 * 9 + 5) % 17 + 1))
                yw = (vector.create((Lv_5 * 5 + 2) % 11 + 1, (Lv_5 * 5 + 8) % 13 + 1, (Lv_5 * 15 + 8) % 17 + 1))
                yx = (vector.create((Lv_5 * 6 + 1) % 11 + 1, (Lv_5 * 4 + 10) % 13 + 1, (Lv_5 * 11 + 12) % 17 + 1))
                if vector.dot(vector.cross(Lv_14, yv), (vector.cross(yw, yx))) == vector.dot(Lv_14, yw) * vector.dot(yv, yx) - vector.dot(Lv_14, yx) * vector.dot(yv, yw) + 1 then
                    Lv_9 = function(M, N)
                        local yX = type(M) == "table" and type(M.Track) == "function"
                        assert(yX, "FeatureAPI required")
                        local yX_2 = type(N) == "table" and type(N.OnUnload) == "function"
                        assert(yX_2, "UI library required")
                        assert(type(N.Unload) == "function", "UI unload required")
                        M.Track(function()
                            if not N.Unloaded then
                                N:Unload()
                            end
                        end)
                        N:OnUnload(function()
                            M.Unload()
                        end)
                    end
                else
                    xq = function(M, N)
                        local yX = type(M) == "table" and type(M.Track) == "function"
                        assert(yX, "FeatureAPI required")
                        local yX_1 = type(N) == "table" and type(N.OnUnload) == "function"
                        assert(yX_1, "UI library required")
                        assert(type(N.Unload) == "function", "UI unload required")
                        M.Track(function()
                            if not N.Unloaded then
                                N:Unload()
                            end
                        end)
                        N:OnUnload(function()
                            M.Unload()
                        end)
                    end
                end
                Lv_5 = (Lv_5 + 103) % 104
            end
        else
            local NN = bit32.rrotate(bit32.bxor(bit32.lrotate(Lv_5, 2), string.byte(tostring(wT))), 5)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(NN, 3904188007), 2435396638), (bit32.bxor(bit32.band(NN, 390779288), 1717594353))), 2435396638), 1717594353) ~= NN then
                Lv_15 = Lv_2(wS)
            else
                wS = Lv_15(Lv_2)
            end
            Lv_5 = (Lv_5 + 103) % 104
        end
    elseif Lv_8 <= 25 then
        if Lv_8 <= 24 then
            Lv_8 = {
                "zsgwh",
                "hcs",
                "sszkmeymx",
                "xhc",
                "frhw",
                "oxpbhgzsjxq",
                "vhvyivym",
                "fbgzzxpg",
                "str",
                "cbke",
                "tfaxwrispin"
            }
            local M1 = Lv_5
            Lv_14 = Lv_8[M1 % 11 + 1]
            if Lv_14:len() <= Lv_14:gsub("(.)", "%1%1", M1 % 3 % 2 + 1):len() then
                Lv_9 = fns.fn684
            else
                xs = fns.fn684
            end
            Lv_5 = (Lv_5 + 77) % 104
        else
            Lv_8 = (vector.create((Lv_5 * 6 + 4) % 11 + 1, (Lv_5 * 5 + 4) % 13 + 1, (Lv_5 * 8 + 7) % 17 + 1))
            Lv_14 = (vector.create((Lv_5 * 2 + 4) % 11 + 1, (Lv_5 * 3 + 11) % 13 + 1, (Lv_5 * 15 + 4) % 17 + 1))
            local NH = vector.cross(Lv_8, Lv_14)
            local NI = vector.dot(Lv_8, Lv_14)
            if vector.dot(NH, NH) + NI * NI == vector.dot(Lv_8, Lv_8) * vector.dot(Lv_14, Lv_14) + 1 then
                wy = fn1053
                wD = fn783
            else
                wD = fn1053
                wy = fn783
            end
            Lv_5 = (Lv_5 + 25) % 104
        end
    else
        if (Lv_5 * 3 + 5) * 21 % 4 == ((Lv_5 * 3 + 5) * 21 + 8) % 4 then
            Lv_11 = Lv_9(Lv_7)
        else
            Lv_7 = Lv_11(Lv_9)
        end
        Lv_5 = (Lv_5 + 77) % 104
    end
until (Lv_5 * 69 + 97) % 104 == 37
if Lv_10 then
    Lv_10 = Lv_1:FindFirstChild("Request")
end
Lv_11 = Lv_10 or nil
Lv_2 = Lv_1
xf = Lv_11
if Lv_2 then
    Lv_2 = Lv_1:FindFirstChild("State")
end
Lv_11 = Lv_2 or nil
Lv_2 = Lv_6
Lv_7 = Lv_11
if Lv_2 then
    Lv_2 = Lv_6:FindFirstChild("GetState")
end
Lv_11 = Lv_2 or nil
Lv_2 = Lv_6
wW = Lv_11
if Lv_2 then
    Lv_2 = Lv_6:FindFirstChild("Claim")
end
Lv_11 = Lv_2 or nil
Lv_2 = Lv_12
wM = Lv_11
if Lv_2 then
    Lv_2 = Lv_12:FindFirstChild("Assets")
end
if Lv_2 then
    Lv_11 = 0
    repeat
        if (Lv_11 * 1 + 5) * 5 % 4 == ((Lv_11 * 1 + 5) * 5 + 8) % 4 then
            Lv_2 = Lv_12.Assets:FindFirstChild("_Index")
        else
            Lv_12 = Lv_2.Assets:FindFirstChild("_Index")
        end
        Lv_11 = (Lv_11 + 2) % 4
    until (Lv_11 * 3 + 2) % 4 == 0
end
Lv_11 = Lv_2 or nil
Lv_2 = Lv_12
wE = Lv_11
if Lv_2 then
    Lv_11 = 7
    repeat
        if (Lv_11 * 1 + 4) * 17 % 4 == ((Lv_11 * 1 + 4) * 17 + 12) % 4 then
            Lv_2 = xy(Lv_12:FindFirstChild("Rarity"))
        else
            Lv_12 = Lv_2(xy:FindFirstChild("Rarity"))
        end
        Lv_11 = (Lv_11 + 7) % 8
    until (Lv_11 * 7 + 7) % 8 == 1
end
Lv_11 = Lv_2 or nil
Lv_2 = Lv_12
local wA = Lv_11
if Lv_2 then
    Lv_11 = 7
    repeat
        Lv_13 = (vector.create((Lv_11 * 4 + 3) % 11 + 1, (Lv_11 * 5 + 9) % 13 + 1, (Lv_11 * 2 + 13) % 17 + 1))
        Lv_4 = (vector.create((Lv_11 * 4 + 2) % 11 + 1, (Lv_11 * 4 + 2) % 13 + 1, (Lv_11 * 15 + 15) % 17 + 1))
        local NY = vector.dot(Lv_13, Lv_4)
        if NY * NY >= vector.dot(Lv_13, Lv_13) * vector.dot(Lv_4, Lv_4) + 1 then
            Lv_12 = Lv_2(xy:FindFirstChild("Areas"))
        else
            Lv_2 = xy(Lv_12:FindFirstChild("Areas"))
        end
        Lv_11 = (Lv_11 + 1) % 8
    until (Lv_11 * 7 + 5) % 8 == 5
end
Lv_11 = Lv_2 or nil
Lv_2 = Lv_12
local wu = Lv_11
if Lv_2 then
    Lv_11 = 4
    repeat
        Lv_13 = { "cqwrv", "bhk", "oymcqx", "elar", "bbewia", "akf", "qdikpsoxnd", "klvij", "exoyahoaz" }
        local M0 = Lv_11
        Lv_4 = Lv_13[M0 % 9 + 1]
        if Lv_4:len() <= Lv_4:gsub("(.)", "%1%1", M0 % 3 % 2 + 1):len() then
            Lv_2 = xy(Lv_12:FindFirstChild("Trails"))
        else
            Lv_12 = Lv_2(xy:FindFirstChild("Trails"))
        end
        Lv_11 = (Lv_11 + 0) % 8
    until (Lv_11 * 3 + 2) % 8 == 6
end
Lv_11 = Lv_2
local yB = if Lv_11 then 1 else 0
local yz = 1589 * yB + 289 * (1 - yB)
local yA = 3595 * yB + 3433 * (1 - yB)
if not ((yz * 2289 + yA * 576 + yz * yA) % 16777213 == 11420396) then
    Lv_11 = nil
end
Lv_2 = Lv_12
yb = Lv_11
if Lv_2 then
    Lv_11 = 0
    repeat
        Lv_13 = {
            "mkjuxrvye",
            "amkm",
            "oxwspnxpyzh",
            "kvquiocr",
            "inbnjugdms",
            "fnlvf",
            "dbdwru",
            "gcglagct",
            "njszq",
            "eibfrlttv"
        }
        local Mg = Lv_11
        Lv_4 = Lv_13[Mg % 10 + 1]
        if Lv_4:len() >= Lv_4:reverse():rep(Mg % 3 + 2):len() then
            Lv_12 = Lv_2(xy:FindFirstChild("Treadmills"))
        else
            Lv_2 = xy(Lv_12:FindFirstChild("Treadmills"))
        end
        Lv_11 = (Lv_11 + 3) % 8
    until (Lv_11 * 7 + 7) % 8 == 4
end
Lv_11 = Lv_2 or nil
Lv_2 = Lv_12
x1 = Lv_11
if Lv_2 then
    Lv_11 = 1
    repeat
        if (Lv_11 or not Lv_11) and (Lv_11 or Lv_11) and (Lv_11 and Lv_11 or (Lv_11 or Lv_11)) and not ((Lv_11 or not Lv_11) and (Lv_11 or Lv_11) and (Lv_11 and Lv_11 or (Lv_11 or Lv_11))) then
            Lv_12 = Lv_2(xy:FindFirstChild("Bases"))
        else
            Lv_2 = xy(Lv_12:FindFirstChild("Bases"))
        end
        Lv_11 = (Lv_11 + 0) % 4
    until (Lv_11 * 1 + 1) % 4 == 2
end
Lv_11 = Lv_2 or nil
xP, w2, xR, w3, wY, Lv_4, xI, xA, xa, w0, wN, xW, xu, wX, xv, x4, wL, w6, wF, x7, xo, xg, w1, wC, xK, xk = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Lv_13 = 13
repeat
    Lv_9 = (Lv_13 * 7 + 6) % 10 + 1
    if Lv_9 <= 5 then
        if Lv_9 <= 3 then
            if Lv_9 <= 2 then
                if Lv_9 <= 1 then
                    local N_ = bit32.rrotate(bit32.bxor(bit32.lrotate(Lv_13, 18), string.byte(tostring(xW))), 24)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(N_, 1161562270), 14), 36147535) == bit32.lrotate(N_, 14) then
                        w0 = fns.fn232
                        wN = fn872
                        wS.Support = fn853
                        xW = function(bR, ...)
                            local zG = typeof(bR) ~= "Instance" or not wy()
                            if zG then
                                return false
                            end
                            return (pcall(function(...)
                                bR:FireServer(...)
                            end, ...))
                        end
                        xu = function(bW, ...)
                            local zI = typeof(bW) ~= "Instance"
                            local zM = if zI then 1 else 0
                            local zK = 698 * zM + 1991 * (1 - zM)
                            local zL = 204 * zM + 676 * (1 - zM)
                            if not ((zK * 1648 + zL * 1650 + zK * zL) % 16777213 == 1629296) then
                                zI = not wy()
                            end
                            if zI then
                                return false, nil
                            end
                            local zI_2 = table.pack(pcall(function(...)
                                return bW:InvokeServer(...)
                            end, ...))
                            if not zI_2[1] then
                                return false, nil
                            end
                            return true, table.unpack(zI_2, 2, zI_2.n)
                        end
                    else
                        xu = fns.fn232
                        w0 = fn872
                        xW.Support = fn853
                        wN = function(bR, ...)
                            local zG = typeof(bR) ~= "Instance" or not wy()
                            if zG then
                                return false
                            end
                            return (pcall(function(...)
                                bR:FireServer(...)
                            end, ...))
                        end
                        wS = function(bW, ...)
                            local zI = typeof(bW) ~= "Instance"
                            local zM = if zI then 1 else 0
                            local zK = 698 * zM + 1991 * (1 - zM)
                            local zL = 204 * zM + 676 * (1 - zM)
                            if not ((zK * 1648 + zL * 1650 + zK * zL) % 16777213 == 1629296) then
                                zI = not wy()
                            end
                            if zI then
                                return false, nil
                            end
                            local zI_1 = table.pack(pcall(function(...)
                                return bW:InvokeServer(...)
                            end, ...))
                            if not zI_1[1] then
                                return false, nil
                            end
                            return true, table.unpack(zI_1, 2, zI_1.n)
                        end
                    end
                    Lv_13 = (Lv_13 + 3) % 40
                else
                    Lv_15 = {
                        "bhxggrrgvb",
                        "eidpm",
                        "luqcgp",
                        "mmpgyqrih",
                        "ylhcyhatztm",
                        "saavc",
                        "stghazueyr",
                        "ubflijmdomm",
                        "pllgdfjq",
                        "ikcwtlmws",
                        "xmqhcinuzo"
                    }
                    local N6 = Lv_13
                    Lv_5 = Lv_15[N6 % 11 + 1]
                    if Lv_5:len() >= Lv_5:gsub("(.)", "%1%1", N6 % 3 % 2 + 1):len() then
                        wX = {}
                        w2 = fns.fn491
                        xv = function(cb)
                            local zZ
                            zZ = nil
                            local z0_1
                            local z__1
                            zZ = wX(cb)
                            if not zZ then
                                return nil
                            end
                            z__1, z0_1 = pcall(function()
                                return zZ.Rarity and zZ.Rarity._id
                            end)
                            local z1 = z__1 and type(z0_1) == "string"
                            if z1 then
                                return z0_1
                            end
                            return nil
                        end
                    else
                        w2 = {}
                        wX = fns.fn491
                        xv = function()
                            local Ac, Ad
                            Ad, Ac = {}, {}
                            local Ae = wA and type(wA.Rarities) == "table"
                            if Ae then
                                pcall(function()
                                    for k, v in pairs(wA.Rarities) do
                                        local z3 = type(v) == "table" and v._id
                                        local z4 = z3 or nil
                                        local z4_1 = type(z4) == "string" and not Ad[z4]
                                        if z4_1 then
                                            Ad[z4] = true
                                            table.insert(Ac, z4)
                                        end
                                    end
                                end)
                            end
                            local Ae_1 = yd:FindFirstChild("LiveAreaEggs") and yd.LiveAreaEggs:GetChildren()
                            local Ag = Ae_1 or {}
                            for i, v in ipairs(Ag) do
                                local attr = v:GetAttribute("Rarity")
                                local Af_1 = type(attr) == "string" and not Ad[attr]
                                if Af_1 then
                                    Ad[attr] = true
                                    table.insert(Ac, attr)
                                end
                            end
                            table.sort(Ac)
                            return Ac
                        end
                    end
                    Lv_13 = (Lv_13 + 3) % 40
                end
            else
                Lv_15 = { "fgbpskrcc", "hhxytazcdz", "nqhgqjp", "uzoy", "fjdyxhhsen", "aaqzyoyzcw", "rwxih" }
                local M4 = Lv_13
                Lv_5 = Lv_15[M4 % 7 + 1]
                if Lv_5:len() >= Lv_5:gsub("(.)", "%1%1", M4 % 3 % 2 + 1):len() then
                    wL = function()
                        local Au, Av
                        Av, Au = {}, {}
                        local Aw = wu and type(wu.Directory) == "table"
                        if Aw then
                            pcall(function()
                                for k in pairs(wu.Directory) do
                                    local Ao = type(k) == "string" and not Av[k]
                                    if Ao then
                                        Av[k] = true
                                        table.insert(Au, k)
                                    end
                                end
                            end)
                        end
                        local LiveAreaEggs = yd:FindFirstChild("LiveAreaEggs")
                        if LiveAreaEggs then
                            for i, child in ipairs(LiveAreaEggs:GetChildren()) do
                                local attr = child:GetAttribute("AreaId")
                                local Ax = type(attr) == "string" and not Av[attr]
                                if Ax then
                                    Av[attr] = true
                                    table.insert(Au, attr)
                                end
                            end
                        end
                        table.sort(Au)
                        return Au
                    end
                    x4 = fns.fn727
                else
                    x4 = function()
                        local Au, Av
                        Av, Au = {}, {}
                        local Aw = wu and type(wu.Directory) == "table"
                        if Aw then
                            pcall(function()
                                for k in pairs(wu.Directory) do
                                    local Ao = type(k) == "string" and not Av[k]
                                    if Ao then
                                        Av[k] = true
                                        table.insert(Au, k)
                                    end
                                end
                            end)
                        end
                        local LiveAreaEggs = yd:FindFirstChild("LiveAreaEggs")
                        if LiveAreaEggs then
                            for i, child in ipairs(LiveAreaEggs:GetChildren()) do
                                local attr = child:GetAttribute("AreaId")
                                local Ax = type(attr) == "string" and not Av[attr]
                                if Ax then
                                    Av[attr] = true
                                    table.insert(Au, attr)
                                end
                            end
                        end
                        table.sort(Au)
                        return Au
                    end
                    wL = fns.fn727
                end
                Lv_13 = (Lv_13 + 33) % 40
            end
        elseif Lv_9 <= 4 then
            Lv_15 = (vector.create((Lv_13 * 5 + 1) % 11 + 1, (Lv_13 * 6 + 5) % 13 + 1, (Lv_13 * 6 + 14) % 17 + 1))
            Lv_5 = (vector.create((Lv_13 * 6 + 1) % 11 + 1, (Lv_13 * 6 + 2) % 13 + 1, (Lv_13 * 13 + 10) % 17 + 1))
            Lv_10 = (vector.create((Lv_13 * 2 + 7) % 11 + 1, (Lv_13 * 4 + 3) % 13 + 1, (Lv_13 * 3 + 13) % 17 + 1))
            if vector.dot(vector.cross(Lv_15, Lv_5), Lv_10) == vector.dot(vector.cross(Lv_5, Lv_10), Lv_15) + 2 then
                w6.ZoneValues = fn1360
                w6.RarityValues = fn963
                w6.EggValues = fns.fn517
                w6.TrailValues = function()
                    local A1 = yb
                    local A0 = {}
                    if A1 then
                        A1 = type(yb.Directory) == "table"
                    end
                    if A1 then
                        pcall(function()
                            for k in pairs(yb.Directory) do
                                if type(k) == "string" then
                                    table.insert(A0, k)
                                end
                            end
                        end)
                    end
                    table.sort(A0)
                    return A0
                end
                xo = fn1271
                w6.SetStealZones = fn895
                w6.SetStealRarities = fns.fn85
                w6.SetStealEggs = fn830
                w6.SetSellRarities = fns.fn573
                w6.SetPriority = fn1263
                w6.SetSellMaxPrice = fns.fn322
                w6.SetSellPets = fn1098
                w6.SetSellEggs = fn900
                w6.SetKeepPlaced = fns.fn748
                x7 = fns.fn296
                wS = function(dP)
                    local BJ
                    BJ = nil
                    local BK_3
                    BK_3, BJ = wF()
                    if not BJ then
                        return false
                    end
                    local BK_4 = pcall(function()
                        BJ.CFrame = CFrame.new(dP)
                    end)
                    return BK_4
                end
                wF = fn955
            else
                wS.ZoneValues = fn1360
                wS.RarityValues = fn963
                wS.EggValues = fns.fn517
                wS.TrailValues = function()
                    local A1 = yb
                    local A0 = {}
                    if A1 then
                        A1 = type(yb.Directory) == "table"
                    end
                    if A1 then
                        pcall(function()
                            for k in pairs(yb.Directory) do
                                if type(k) == "string" then
                                    table.insert(A0, k)
                                end
                            end
                        end)
                    end
                    table.sort(A0)
                    return A0
                end
                w6 = fn1271
                wS.SetStealZones = fn895
                wS.SetStealRarities = fns.fn85
                wS.SetStealEggs = fn830
                wS.SetSellRarities = fns.fn573
                wS.SetPriority = fn1263
                wS.SetSellMaxPrice = fns.fn322
                wS.SetSellPets = fn1098
                wS.SetSellEggs = fn900
                wS.SetKeepPlaced = fns.fn748
                wF = fns.fn296
                x7 = function(dP)
                    local BJ
                    BJ = nil
                    local BK_1
                    BK_1, BJ = wF()
                    if not BJ then
                        return false
                    end
                    local BK_2 = pcall(function()
                        BJ.CFrame = CFrame.new(dP)
                    end)
                    return BK_2
                end
                xo = fn955
            end
            Lv_13 = (Lv_13 + 33) % 40
        else
            if ((x7 or not w6) and (not xu and x7) or (not xv and not xu or xu and not w6)) and not ((x7 or not w6) and (not xu and x7) or (not xv and not xu or xu and not w6)) then
                w1 = fn920
                xg = fns.fn772
                xR = fns.fn172
                wC = {}
            else
                xg = fn920
                w1 = fns.fn772
                wC = fns.fn172
                xR = {}
            end
            Lv_13 = (Lv_13 + 13) % 40
        end
    elseif Lv_9 <= 8 then
        if Lv_9 <= 7 then
            if Lv_9 <= 6 then
                local Ob = bit32.rrotate(bit32.bxor(bit32.lrotate(Lv_13, 29), string.byte(tostring(xR))), 4)
                if bit32.bxor(bit32.lrotate(bit32.bxor(Ob, 2043866721), 20), 3860307246) ~= bit32.lrotate(Ob, 20) then
                    w3 = fns.fn101
                    wY = fns.fn688
                    xk = 0
                    xK = nil
                else
                    xK = fns.fn101
                    xk = fns.fn688
                    w3 = 0
                    wY = nil
                end
                Lv_13 = (Lv_13 + 3) % 40
            else
                Lv_15 = {
                    "pbpjfydnx",
                    "lwmyzfwdd",
                    "syxukd",
                    "bzrf",
                    "opxobbnhmhp",
                    "gkyahcjimjed",
                    "xhnyxwtkxnr",
                    "uujh",
                    "yeei",
                    "skypudmbg",
                    "fnpiuy",
                    "duegttvd",
                    "dxz",
                    "ptwewfxriybw"
                }
                if Lv_15[(Lv_13 * 47 + 110) % 14 + 1] < Lv_15[(Lv_13 * 47 + 110) % 14 + 1] then
                    Lv_3 = Lv_4("Eggs: RuntimeOwnerUpdated")
                else
                    Lv_4 = Lv_3("Eggs: RuntimeOwnerUpdated")
                end
                Lv_13 = (Lv_13 + 23) % 40
            end
        else
            Lv_15 = (vector.create((Lv_13 * 6 + 1) % 11 + 1, (Lv_13 * 9 + 10) % 13 + 1, (Lv_13 * 11 + 5) % 17 + 1))
            Lv_5 = (vector.create((Lv_13 * 2 + 1) % 11 + 1, (Lv_13 * 7 + 7) % 13 + 1, (Lv_13 * 2 + 12) % 17 + 1))
            local Mb = vector.dot(Lv_15, Lv_5)
            if Mb * Mb >= vector.dot(Lv_15, Lv_15) * vector.dot(Lv_5, Lv_5) + 1 then
                Lv_11 = xP
            else
                xP = Lv_11
            end
            Lv_13 = (Lv_13 + 13) % 40
        end
    elseif Lv_9 <= 9 then
        Lv_9 = { "ywv", "hupm", "kobfzqeu", "dcqvozuig", "kwntswx", "bcdebrwecdv", "jjs", "nvte", "nkmpk" }
        local N4 = Lv_13
        Lv_15 = Lv_9[N4 % 9 + 1]
        if Lv_15:len() >= Lv_15:gsub("(.)", "%1%1", N4 % 3 % 2 + 1):len() then
            xg = fns.fn766
        else
            xI = fns.fn766
        end
        Lv_13 = (Lv_13 + 23) % 40
    else
        Lv_9 = (vector.create((Lv_13 * 2 + 8) % 11 + 1, (Lv_13 * 11 + 11) % 13 + 1, (Lv_13 * 1 + 14) % 17 + 1))
        Lv_15 = (vector.create((Lv_13 * 6 + 3) % 11 + 1, (Lv_13 * 5 + 5) % 13 + 1, (Lv_13 * 5 + 2) % 17 + 1))
        Lv_5 = (vector.create((Lv_13 * 2 + 8) % 11 + 1, (Lv_13 * 11 + 7) % 13 + 1, (Lv_13 * 5 + 7) % 17 + 1))
        if vector.dot(vector.cross(Lv_9, Lv_15), Lv_5) == vector.dot(vector.cross(Lv_15, Lv_5), Lv_9) + 5 then
            xa = fns.fn771
            xA = fns.fn353
        else
            xA = fns.fn771
            xa = fns.fn353
        end
        Lv_13 = (Lv_13 + 13) % 40
    end
until (Lv_13 * 31 + 39) % 40 == 2
if Lv_4 then
    connection = nil
    Lv_11 = 7
    repeat
        Lv_2 = (Lv_11 * 1 + 1) % 2 + 1
        if Lv_2 <= 1 then
            Lv_2 = (vector.create((Lv_11 * 1 + 2) % 11 + 1, (Lv_11 * 8 + 5) % 13 + 1, (Lv_11 * 5 + 2) % 17 + 1))
            Lv_13 = (vector.create((Lv_11 * 1 + 4) % 11 + 1, (Lv_11 * 11 + 8) % 13 + 1, (Lv_11 * 1 + 9) % 17 + 1))
            Lv_9 = (vector.create((Lv_11 * 4 + 2) % 5 + 1, (Lv_11 * 4 + 4) % 7 + 1, (Lv_11 * 1 + 6) % 9 + 1))
            if math.abs((vector.angle(Lv_2, Lv_13, Lv_9))) - math.abs((vector.angle(Lv_13, Lv_2, Lv_9))) == 4 then
                Lv_4 = connection.OnClientEvent:Connect(fns.onOnClientEvent)
            else
                connection = Lv_4.OnClientEvent:Connect(fns.onOnClientEvent)
            end
            Lv_11 = (Lv_11 + 7) % 8
        else
            Lv_2 = (vector.create((Lv_11 * 5 + 9) % 11 + 1, (Lv_11 * 6 + 7) % 13 + 1, (Lv_11 * 14 + 15) % 17 + 1))
            Lv_13 = (vector.create((Lv_11 * 4 + 2) % 11 + 1, (Lv_11 * 6 + 13) % 13 + 1, (Lv_11 * 1 + 12) % 17 + 1))
            Lv_9 = (vector.create((Lv_11 * 7 + 1) % 11 + 1, (Lv_11 * 1 + 4) % 13 + 1, (Lv_11 * 6 + 17) % 17 + 1))
            if vector.dot(vector.cross(Lv_2, Lv_13), Lv_9) == vector.dot(vector.cross(Lv_13, Lv_9), Lv_2) then
                wS.Track(fns.fn673)
            else
                wS.Track(fns.fn673)
            end
            Lv_11 = (Lv_11 + 1) % 8
        end
    until (Lv_11 * 5 + 5) % 8 == 0
end
xM, xi, wz, yc, xF, wJ, ye, wH, xe, wR, wV, xL, wZ, x_ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Lv_2 = 4
repeat
    Lv_11 = (Lv_2 * 7 + 0) % 8 + 1
    if Lv_11 <= 4 then
        if Lv_11 <= 2 then
            if Lv_11 <= 1 then
                if Lv_2 * 14524477 + 3 + 2 <= Lv_2 * 14524477 + 3 + 2 + 5 then
                    wR = function(fG, fH, fI)
                        xe(fG)
                        local fK
                        fK = task.spawn(function()
                            local CJ_2
                            while true do
                                local CI = wy() and xi[fG] == fK
                                local CI_3
                                if CI then
                                    CI_3, CJ_2 = pcall(fI)
                                    if not CI_3 then
                                        wG("Error: " .. tostring(CJ_2))
                                    end
                                    local CI_4 = not wy() or xi[fG] ~= fK
                                    if CI_4 then
                                        break
                                    end
                                    task.wait(fH)
                                    continue
                                end
                                break
                            end
                        end)
                        xi[fG] = fK
                        return fK
                    end
                else
                    yc = function(fG, fH, fI)
                        xe(fG)
                        local fK
                        fK = task.spawn(function()
                            local CJ_1
                            while true do
                                local CI = wy() and xi[fG] == fK
                                local CI_1
                                if CI then
                                    CI_1, CJ_1 = pcall(fI)
                                    if not CI_1 then
                                        wG("Error: " .. tostring(CJ_1))
                                    end
                                    local CI_2 = not wy() or xi[fG] ~= fK
                                    if CI_2 then
                                        break
                                    end
                                    task.wait(fH)
                                    continue
                                end
                                break
                            end
                        end)
                        xi[fG] = fK
                        return fK
                    end
                end
                Lv_2 = (Lv_2 + 39) % 64
            else
                Lv_13 = {
                    "twulv",
                    "hedmd",
                    "glxioi",
                    "uygjhenvpm",
                    "brbovtazj",
                    "picrdwnbq",
                    "banf",
                    "vntivsvgebu",
                    "fnlbj",
                    "rromopi",
                    "werzaekzf"
                }
                local N1 = Lv_2
                Lv_4 = Lv_13[N1 % 11 + 1]
                if Lv_4:len() <= Lv_4:reverse():rep(N1 % 3 + 2):len() then
                    wS.Track(fn827)
                    wV = function()
                        local CQ
                        CQ = nil
                        local CT_2
                        local CS_4, CS_5
                        local CR = not wK.AutoSteal or not xI()
                        local CR_7, CR_9, CR_10
                        if CR then
                            return
                        end
                        CR_7, CS_4 = wF()
                        if not CS_4 then
                            wG("Waiting for character")
                            return
                        end
                        local CR_8 = yc()
                        if CR_8 then
                            wH(CR_8)
                            return
                        end
                        CQ = ye(CS_4)
                        if not CQ then
                            wG("No matching egg")
                            return
                        end
                        wG("Stealing " .. tostring(CQ:GetAttribute("EggType")))
                        CR_9, CS_5 = pcall(function()
                            return CQ:GetPivot().Position
                        end)
                        if not CR_9 then
                            xk(CQ)
                            return
                        end
                        if not x7(CS_5 + Vector3.new(0, x3, 0)) then
                            return
                        end
                        task.wait(xZ)
                        CR_10, CT_2 = wF()
                        if not CT_2 or (CT_2.Position - CS_5).Magnitude > x9 then
                            xk(CQ)
                            return
                        end
                        xW(ya, CQ, CQ:GetAttribute("EggUid"))
                        local CR_12 = os.clock() + xS
                        while true do
                            local CS_6 = wy() and os.clock() < CR_12
                            if CS_6 then
                                if CQ:GetAttribute("CarriedBy") == LocalPlayer.UserId then
                                    wY = CQ
                                    wH(CQ)
                                    return
                                end
                                task.wait(0.05)
                                continue
                            end
                            break
                        end
                        xk(CQ)
                    end
                else
                    wV.Track(fn827)
                    wS = function()
                        local CQ
                        CQ = nil
                        local CT_1
                        local CS_1, CS_2
                        local CR = not wK.AutoSteal or not xI()
                        local CR_1, CR_3, CR_4
                        if CR then
                            return
                        end
                        CR_1, CS_1 = wF()
                        if not CS_1 then
                            wG("Waiting for character")
                            return
                        end
                        local CR_2 = yc()
                        if CR_2 then
                            wH(CR_2)
                            return
                        end
                        CQ = ye(CS_1)
                        if not CQ then
                            wG("No matching egg")
                            return
                        end
                        wG("Stealing " .. tostring(CQ:GetAttribute("EggType")))
                        CR_3, CS_2 = pcall(function()
                            return CQ:GetPivot().Position
                        end)
                        if not CR_3 then
                            xk(CQ)
                            return
                        end
                        if not x7(CS_2 + Vector3.new(0, x3, 0)) then
                            return
                        end
                        task.wait(xZ)
                        CR_4, CT_1 = wF()
                        if not CT_1 or (CT_1.Position - CS_2).Magnitude > x9 then
                            xk(CQ)
                            return
                        end
                        xW(ya, CQ, CQ:GetAttribute("EggUid"))
                        local CR_6 = os.clock() + xS
                        while true do
                            local CS_3 = wy() and os.clock() < CR_6
                            if CS_3 then
                                if CQ:GetAttribute("CarriedBy") == LocalPlayer.UserId then
                                    wY = CQ
                                    wH(CQ)
                                    return
                                end
                                task.wait(0.05)
                                continue
                            end
                            break
                        end
                        xk(CQ)
                    end
                end
                Lv_2 = (Lv_2 + 63) % 64
            end
        elseif Lv_11 <= 3 then
            if (Lv_2 * 1 + 4) * 17 % 4 == ((Lv_2 * 1 + 4) * 17 + 14) % 4 then
                x_.SetAutoSteal = fn968
                wS = fns.fn490
                xL = fns.fn609
                x_.SetAutoPlaceEgg = fns.fn666
                wZ = fn778
            else
                wS.SetAutoSteal = fn968
                xL = fns.fn490
                wZ = fns.fn609
                wS.SetAutoPlaceEgg = fns.fn666
                x_ = fn778
            end
            Lv_2 = (Lv_2 + 31) % 64
        else
            Lv_13 = {
                "hsboi",
                "maghbxgsq",
                "azcgvfnii",
                "mscyy",
                "nhfj",
                "spoqq",
                "dvd",
                "vudaxhc",
                "qmvrft",
                "uegzoxpaflkc",
                "qdcxuuxdmjf",
                "cwovegsbfhwp",
                "ozjm",
                "vkbhmus"
            }
            if Lv_13[(Lv_2 * 32 + 35) % 14 + 1] < Lv_13[(Lv_2 * 32 + 35) % 14 + 1] then
                wz.SetAutoHatchEgg = fns.fn253
                wz.SetAutoEquipBest = fn1419
                wS = nil
            else
                wS.SetAutoHatchEgg = fns.fn253
                wS.SetAutoEquipBest = fn1419
                wz = nil
            end
            Lv_2 = (Lv_2 + 31) % 64
        end
    elseif Lv_11 <= 6 then
        if Lv_11 <= 5 then
            Lv_13 = {
                "nuk",
                "ejghifynpu",
                "hzyolp",
                "dffztqhejfo",
                "oguints",
                "ucla",
                "infx",
                "egwmyqvyp",
                "zfhj",
                "eugclfvh",
                "gcawg"
            }
            local N3 = Lv_2
            Lv_4 = Lv_13[N3 % 11 + 1]
            if Lv_4:len() <= Lv_4:reverse():rep(N3 % 3 + 2):len() then
                yc = fn1232
            else
                ye = fn1232
            end
            Lv_2 = (Lv_2 + 63) % 64
        else
            local M3 = bit32.rrotate(bit32.bxor(bit32.lrotate(Lv_2, 9), string.byte(tostring(ye))), 5)
            if bit32.bxor(bit32.lrotate(bit32.bxor(M3, 2458114321), 8), 2212041106) == bit32.lrotate(M3, 8) then
                xM = {}
                xF = function(eH)
                    if type(eH) ~= "string" then
                        return 0
                    end
                    local Ck = xM[eH]
                    if Ck ~= nil then
                        return Ck
                    end
                    local Ck_2 = wA
                    local Cj = 0
                    if Ck_2 then
                        Ck_2 = type(wA.Rarities) == "table"
                    end
                    if Ck_2 then
                        pcall(function()
                            local Cg = wA.Rarities[eH]
                            local Ch = type(Cg) == "table" and type(Cg.RarityNumber) == "number"
                            if Ch then
                                Cj = Cg.RarityNumber
                            end
                        end)
                    end
                    xM[eH] = Cj
                    return Cj
                end
                wJ = fns.fn360
            else
                wJ = {}
                xM = function(eH)
                    if type(eH) ~= "string" then
                        return 0
                    end
                    local Ck = xM[eH]
                    if Ck ~= nil then
                        return Ck
                    end
                    local Ck_1 = wA
                    local Cj = 0
                    if Ck_1 then
                        Ck_1 = type(wA.Rarities) == "table"
                    end
                    if Ck_1 then
                        pcall(function()
                            local Cg = wA.Rarities[eH]
                            local Ch = type(Cg) == "table" and type(Cg.RarityNumber) == "number"
                            if Ch then
                                Cj = Cg.RarityNumber
                            end
                        end)
                    end
                    xM[eH] = Cj
                    return Cj
                end
                xF = fns.fn360
            end
            Lv_2 = (Lv_2 + 23) % 64
        end
    elseif Lv_11 <= 7 then
        if (Lv_2 * 2 + 8) * 10 % 3 == ((Lv_2 * 2 + 8) * 10 + 4) % 3 then
            wH = function(e_)
                local Cs_2
                local Cr_2
                local Cq_2
                local Cp_2
                local LiveAreaEggs = yd:FindFirstChild("LiveAreaEggs")
                local Co_7
                if not LiveAreaEggs then
                    return nil
                end
                Cq_2, Cp_2 = nil, nil
                for i, child in ipairs(LiveAreaEggs:GetChildren()) do
                    local Cz = child
                    local Co_5 = Cz:IsA("Model") and Cz:GetAttribute("EggType") ~= nil and Cz:GetAttribute("CarriedBy") == nil
                    if Co_5 then
                        local Co_6 = not xK(Cz) and wJ(Cz)
                        if Co_6 then
                            Co_7, Cr_2 = pcall(function()
                                return Cz:GetPivot().Position
                            end)
                            if Co_7 then
                                if wK.Priority == "Rarest" then
                                    Cs_2 = -xF(Cz:GetAttribute("Rarity"))
                                else
                                    Cs_2 = (Cr_2 - e_.Position).Magnitude
                                end
                                if Cp_2 == nil or Cs_2 < Cp_2 then
                                    Cq_2, Cp_2 = Cz, Cs_2
                                end
                            end
                        end
                    end
                end
                return Cq_2
            end
            ye = fns.fn738
        else
            ye = function(e_)
                local Cs_1
                local Cr_1
                local Cq_1
                local Cp_1
                local LiveAreaEggs = yd:FindFirstChild("LiveAreaEggs")
                local Co_3
                if not LiveAreaEggs then
                    return nil
                end
                Cq_1, Cp_1 = nil, nil
                for i, child in ipairs(LiveAreaEggs:GetChildren()) do
                    local Cz = child
                    local Co_1 = Cz:IsA("Model") and Cz:GetAttribute("EggType") ~= nil and Cz:GetAttribute("CarriedBy") == nil
                    if Co_1 then
                        local Co_2 = not xK(Cz) and wJ(Cz)
                        if Co_2 then
                            Co_3, Cr_1 = pcall(function()
                                return Cz:GetPivot().Position
                            end)
                            if Co_3 then
                                if wK.Priority == "Rarest" then
                                    Cs_1 = -xF(Cz:GetAttribute("Rarity"))
                                else
                                    Cs_1 = (Cr_1 - e_.Position).Magnitude
                                end
                                if Cp_1 == nil or Cs_1 < Cp_1 then
                                    Cq_1, Cp_1 = Cz, Cs_1
                                end
                            end
                        end
                    end
                end
                return Cq_1
            end
            wH = fns.fn738
        end
        Lv_2 = (Lv_2 + 39) % 64
    else
        if (Lv_2 * 1 + 9) * 5 % 4 == ((Lv_2 * 1 + 9) * 5 + 6) % 4 then
            xe = {}
            xi = fns.fn378
        else
            xi = {}
            xe = fns.fn378
        end
        Lv_2 = (Lv_2 + 55) % 64
    end
until (Lv_2 * 55 + 48) % 64 == 52
if Lv_7 then
    connection2 = nil
    Lv_11 = 15
    repeat
        Lv_2 = (Lv_11 * 1 + 1) % 2 + 1
        if Lv_2 <= 1 then
            Lv_2 = {
                "uiivxorxltxu",
                "leduffufkm",
                "hiowiz",
                "ftczhbdcsnb",
                "fuuylkv",
                "crwnjnjzcm",
                "rgxtthhlecc",
                "hkqbfwo",
                "wdinzkh"
            }
            if Lv_2[(Lv_11 * 15 + 73) % 9 + 1] < Lv_2[(Lv_11 * 15 + 73) % 9 + 1] then
                Lv_7 = connection2.OnClientEvent:Connect(fns.onOnClientEvent2)
            else
                connection2 = Lv_7.OnClientEvent:Connect(fns.onOnClientEvent2)
            end
            Lv_11 = (Lv_11 + 13) % 16
        else
            Lv_2 = { "gpdbegter", "slonu", "xzods", "mdvfogoh", "dbrmp", "pogxk", "szhqtrzn" }
            local NJ = Lv_11
            Lv_13 = Lv_2[NJ % 7 + 1]
            if Lv_13:len() <= Lv_13:reverse():rep(NJ % 3 + 2):len() then
                wS.Track(fns.fn427)
            else
                wS.Track(fns.fn427)
            end
            Lv_11 = (Lv_11 + 5) % 16
        end
    until (Lv_11 * 9 + 13) % 16 == 6
end
wU, x6, wI, wx, wO, xX, ww, w7, xx, wQ, wt, xm, wB, xU, xb, xY = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
x6 = fn1311
wS.SetAutoRebirth = fn1162
wI = fns.fn634
wx = fn1337
wS.SetAutoClaimIndex = fns.fn734
wO = function()
    local ER = yb
    local EQ = {}
    if ER then
        ER = type(yb.Directory) == "table"
    end
    if ER then
        pcall(function()
            for k, v in pairs(yb.Directory) do
                local EH = type(k) == "string" and type(v) == "table"
                if EH then
                    local insert = table.insert
                    local EI = tonumber(v.Price) or 0
                    insert(EQ, { id = k, price = EI })
                end
            end
        end)
    end
    table.sort(EQ, function(io, ip)
        return io.price < ip.price
    end)
    return EQ
end
xX = fns.fn366
ww = fns.fn756
wS.SetAutoBuyTrail = fns.fn267
wS.SetAutoEquipTrail = fn1270
w7 = fns.fn610
wS.SetAutoDailyLogin = fn1197
xx = fns.fn185
wU = 0
wQ = fns.fn561
wt = fn1405
xm = fn901
wS.SetAutoSell = fns.fn349
wS.SellNow = fn877
wB = fn1461
xU = fns.fn623
xb = fns.fn148
xY = fn1066
wS.SetAutoUpgradePen = fn981
wS.SetAutoUpgradeTreadmill = fn1115
Lv_2 = function()
    local K2
    local K3
    local onDiscord
    K2 = nil
    K3 = nil
    onDiscord = nil
    local Options, SaveManager, K5, K6, Library, Toggles, La, Lb, ThemeManager
    K5 = "Steal An Anime Egg"
    K2 = "https://discord.gg/synapsex"
    La = "https://ouroboros-hub-rbx.web.app/"
    K6 = "https://rscripts.net/@Ouroboros"
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = Library.Toggles
    Options = Library.Options
    xq(wS, Library)
    K3 = function(kP, kQ)
        local GP = wD(setclipboard) and setclipboard
        local GQ = GP
        local GV = if GQ then 1 else 0
        local GT = 120 * GV + 376 * (1 - GV)
        local GU = 3599 * GV + 3446 * (1 - GV)
        if not ((GT * 1495 + GU * 3753 + GT * GU) % 16777213 == 14118327) then
            local GP_1 = wD(toclipboard) and toclipboard
            GQ = GP_1 or nil
        end
        local GP_2 = GQ
        if not GP_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local GQ_1 = pcall(GP_2, kP)
        if GQ_1 then
            Library:Notify(kQ)
        else
            Library:Notify("Failed to copy")
        end
    end
    onDiscord = function()
        K3(K2, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = K2, Copyable = true }, "|", K5, "|", "v0.1" },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    Lb = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "gamepad-2"),
        Player = Window:AddTab("Player", "person-standing"),
        Settings = Window:AddTab("Settings", "settings")
    }
    local function Ld_1(k2)
        local DiscordGroup = k2:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    for k, v in Lb do
        if k ~= "Info" then
            Ld_1(v)
        end
    end
    local function Le()
        local l1
        local StealGroup = Lb.Main:AddRightGroupbox("Steal", "egg")
        local Label = StealGroup:AddLabel(wS.GetStatus(), true)
        StealGroup:AddDivider()
        StealGroup:AddToggle("AutoSteal", {
            Text = "Auto Steal Egg",
            Default = false,
            Tooltip = "Teleports to matching area eggs, steals them and delivers them to your plot.",
            Callback = function(lc)
                wS.SetAutoSteal(lc)
            end
        })
        StealGroup:AddDropdown("StealZones", {
            Text = "Zone Filter",
            Values = wS.ZoneValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Expandable = true,
            Tooltip = "Only steal from these areas. Leave empty to use every area.",
            Callback = function(le)
                wS.SetStealZones(le)
            end
        })
        StealGroup:AddDropdown("StealRarities", {
            Text = "Rarity Filter",
            Values = wS.RarityValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Expandable = true,
            Tooltip = "Steal eggs of these rarities. Leave this and the egg filter empty to steal everything.",
            Callback = function(lg)
                wS.SetStealRarities(lg)
            end
        })
        StealGroup:AddDropdown("StealEggs", {
            Text = "Specific Egg Filter",
            Values = wS.EggValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Expandable = true,
            Tooltip = "Steal these exact eggs. An egg is taken when it matches either filter.",
            Callback = function(li)
                wS.SetStealEggs(li)
            end
        })
        StealGroup:AddDropdown("StealPriority", {
            Text = "Priority",
            Values = { "Nearest", "Rarest" },
            Default = "Nearest",
            Tooltip = "Pick the closest matching egg or the highest rarity one.",
            Callback = function(lk)
                wS.SetPriority(lk)
            end
        })
        local PlotGroup = Lb.Main:AddLeftGroupbox("Plot", "house")
        PlotGroup:AddToggle("AutoPlaceEgg", {
            Text = "Auto Place Egg",
            Default = false,
            Tooltip = "Places every unplaced egg on a free spot of your pen.",
            Callback = function(ln)
                wS.SetAutoPlaceEgg(ln)
            end
        })
        PlotGroup:AddToggle("AutoHatchEgg", {
            Text = "Auto Hatch Egg",
            Default = false,
            Tooltip = "Hatches placed eggs as soon as their growth finishes.",
            Callback = function(lp)
                wS.SetAutoHatchEgg(lp)
            end
        })
        PlotGroup:AddToggle("AutoEquipBest", {
            Text = "Auto Equip Best",
            Default = false,
            Tooltip = "Asks the server to equip your strongest pets.",
            Callback = function(lr)
                wS.SetAutoEquipBest(lr)
            end
        })
        PlotGroup:AddDivider()
        PlotGroup:AddToggle("AutoUpgradePen", {
            Text = "Auto Upgrade Pen",
            Default = false,
            Tooltip = "Buys the next pen level once you can afford it.",
            Callback = function(lt)
                wS.SetAutoUpgradePen(lt)
            end
        })
        PlotGroup:AddToggle("AutoUpgradeTreadmill", {
            Text = "Auto Upgrade Treadmill",
            Default = false,
            Tooltip = "Buys the next treadmill once you can afford it.",
            Callback = function(lv)
                wS.SetAutoUpgradeTreadmill(lv)
            end
        })
        local SellGroup = Lb.Main:AddRightGroupbox("Sell", "banknote")
        SellGroup:AddToggle("AutoSell", {
            Text = "Auto Sell",
            Default = false,
            Tooltip = "Teleports to the sell stand and sells everything that matches the filters below.",
            Callback = function(ly)
                wS.SetAutoSell(ly)
            end
        })
        SellGroup:AddToggle("SellPets", {
            Text = "Sell Pets",
            Default = true,
            Callback = function(lA)
                wS.SetSellPets(lA)
            end
        })
        SellGroup:AddToggle("SellEggs", {
            Text = "Sell Eggs",
            Default = false,
            Callback = function(lC)
                wS.SetSellEggs(lC)
            end
        })
        SellGroup:AddToggle("KeepPlaced", {
            Text = "Keep Placed Pets",
            Default = true,
            Tooltip = "Never sell pets that are currently sitting in your pen.",
            Callback = function(lE)
                wS.SetKeepPlaced(lE)
            end
        })
        SellGroup:AddDropdown("SellRarities", {
            Text = "Rarity Filter",
            Values = wS.RarityValues(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Expandable = true,
            Tooltip = "Only sell these rarities. Leave empty to allow every rarity.",
            Callback = function(lG)
                wS.SetSellRarities(lG)
            end
        })
        SellGroup:AddSlider("SellMaxPrice", {
            Text = "Max Sell Price",
            Default = 0,
            Min = 0,
            Max = 1000000,
            Rounding = 0,
            Suffix = " cash",
            Tooltip = "Skip anything worth more than this. Zero disables the price check.",
            Callback = function(lI)
                wS.SetSellMaxPrice(lI)
            end
        })
        SellGroup:AddButton({
            Text = "Sell Once Now",
            Func = function()
                wS.SellNow()
            end
        })
        local RewardsGroup = Lb.Main:AddLeftGroupbox("Rewards", "gift")
        RewardsGroup:AddToggle("AutoClaimIndex", {
            Text = "Auto Claim Index",
            Default = false,
            Tooltip = "Claims the index reward of every pet you have discovered.",
            Callback = function(lM)
                wS.SetAutoClaimIndex(lM)
            end
        })
        RewardsGroup:AddToggle("AutoDailyLogin", {
            Text = "Auto Claim Daily Login",
            Default = false,
            Callback = function(lO)
                wS.SetAutoDailyLogin(lO)
            end
        })
        RewardsGroup:AddToggle("AutoRebirth", {
            Text = "Auto Rebirth",
            Default = false,
            Tooltip = "Rebirths as soon as the server reports you have enough speed.",
            Callback = function(lQ)
                wS.SetAutoRebirth(lQ)
            end
        })
        RewardsGroup:AddDivider()
        RewardsGroup:AddToggle("AutoBuyTrail", {
            Text = "Auto Buy Trail",
            Default = false,
            Tooltip = "Buys every trail you can afford, cheapest first.",
            Callback = function(lS)
                wS.SetAutoBuyTrail(lS)
            end
        })
        RewardsGroup:AddToggle("AutoEquipTrail", {
            Text = "Auto Equip Best Trail",
            Default = false,
            Callback = function(lU)
                wS.SetAutoEquipTrail(lU)
            end
        })
        l1 = task.spawn(function()
            while not Library.Unloaded do
                pcall(function()
                    Label:SetText(wS.GetStatus())
                end)
                task.wait(0.25)
            end
        end)
        wS.Track(function()
            if coroutine.status(l1) ~= "dead" then
                pcall(task.cancel, l1)
            end
        end)
    end
    Le()
    local function Ld_2()
        local Hf
        local Ho
        local Hk
        local Hg
        Hf = nil
        Hg = nil
        Hk = nil
        Ho = nil
        local Hc, Hd, Label, Hh, Hi, Hj, Hl, Label2, Label3
        Hk = function(l5)
            return (tostring(l5):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        Hg = function(l7, l8)
            return string.format('<font color="%s">%s</font>', l8, Hk(l7))
        end
        Hl = function(mb, mc, md)
            return string.format("<b>%s</b> %s %s", mb, Hg("-", "#5a6070"), Hg(mc, md))
        end
        local Hp = "#8b93a3"
        Hj = "#7fd47f"
        local Hq = "#6ec1ff"
        Hd = "#e8a34d"
        local Hr = wS.Support()
        local Ht = #Hr == 0 and "ready"
        local Hx = if Ht then 1 else 0
        local Hv = 1142 * Hx + 1999 * (1 - Hx)
        local Hw = 3872 * Hx + 831 * (1 - Hx)
        if not ((Hv * 1679 + Hw * 803 + Hv * Hw) % 16777213 == 9448458) then
            Ht = "limited: " .. table.concat(Hr, ", ")
        end
        Hh = "Unknown"
        local Hr_1 = Ht
        pcall(function()
            local GZ_1
            local GY_1
            if wD(identifyexecutor) then
                GZ_1, GY_1 = identifyexecutor()
                local G_ = GZ_1 ~= ""
                local G0 = type(GZ_1) == "string" and G_
                if G0 then
                    local G__1 = type(GY_1) == "string" and GY_1 ~= "" and GZ_1 .. " " .. GY_1
                    Hh = G__1 or GZ_1
                end
            end
        end)
        Ho = os.clock()
        Hi = function()
            local G2 = math.floor(os.clock() - Ho)
            if G2 < 60 then
                return G2 .. "s"
            elseif G2 < 3600 then
                return string.format("%dm %ds", G2 // 60, G2 % 60)
            else
                return string.format("%dh %dm", G2 // 3600, G2 % 3600 // 60)
            end
        end
        local UserGroup = Lb.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(Hl("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, Hj), true)
        UserGroup:AddLabel(Hl("UserId", tostring(LocalPlayer.UserId), Hq), true)
        UserGroup:AddLabel(Hl("Executor", Hh .. "  " .. Hr_1, Hj), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(Hl("Session", Hi(), Hd), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                K3(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                K3("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = Lb.Info:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(Hl("Game", K5, Hq), true)
        Label2 = SessionGroup:AddLabel(Hl("Players", "0/0", Hj), true)
        Hc = tostring(game.JobId)
        local Hq_1 = #Hc > 18 and string.sub(Hc, 1, 18) .. "..."
        local Hs_2 = Hq_1
        local Hx_1 = if Hs_2 then 1 else 0
        local Hv_1 = 493 * Hx_1 + 2996 * (1 - Hx_1)
        local Hw_1 = 3194 * Hx_1 + 1602 * (1 - Hx_1)
        if not ((Hv_1 * 3305 + Hw_1 * 615 + Hv_1 * Hw_1) % 16777213 == 5168317) then
            Hs_2 = Hc
        end
        local Hq_2 = Hs_2
        SessionGroup:AddLabel(Hl("Job", Hq_2, Hp), true)
        Label = SessionGroup:AddLabel(Hl("Ping", "0 ms", Hd), true)
        SessionGroup:AddDivider()
        SessionGroup:AddButton({
            Text = "Rejoin Place",
            Func = function()
                xB:Teleport(game.PlaceId, LocalPlayer)
            end
        })
        SessionGroup:AddButton({
            Text = "Copy Job ID",
            Func = function()
                K3(Hc, "Copied Job ID")
            end
        })
        Hf = task.spawn(function()
            local G8_1
            local G7_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(Hl("Session", Hi(), Hd))
                Label2:SetText(Hl("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), Hj))
                G7_1, G8_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local G7_2 = G7_1 and G8_1 .. " ms" or "n/a"
                Label:SetText(Hl("Ping", G7_2, Hd))
            end
        end)
        wS.Track(function()
            if coroutine.status(Hf) ~= "dead" then
                pcall(task.cancel, Hf)
            end
        end)
        local SocialsGroup = Lb.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                K3(K6, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                K3(La, "Copied website link")
            end
        })
    end
    Ld_2()
    local function Ld_3()
        local nq
        local no
        local nr
        local np
        local MovementGroup = Lb.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = Lb.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        np = {}
        nr = {}
        nq = {}
        local nn = {}
        no = {}
        local function ns()
            for k, v in no do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(no)
        end
        local function nw()
            for k, v in np do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(np)
        end
        local function nA()
            for k, v in nq do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(nq)
        end
        local function nE(nF)
            local HW = if not nF:IsA("ProximityPrompt") then 1 else 0
            if HW == 1 then
                return
            end
            if nr[nF] == nil then
                nr[nF] = {
                    HoldDuration = nF.HoldDuration,
                    MaxActivationDistance = nF.MaxActivationDistance,
                    RequiresLineOfSight = nF.RequiresLineOfSight
                }
            end
            nF.HoldDuration = 0
            nF.MaxActivationDistance = 50
            nF.RequiresLineOfSight = false
        end
        local function nH()
            for k, v in nr do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(nr)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                nA()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                nw()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                ns()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in xp:QueryDescendants("ProximityPrompt") do
                    pcall(nE, v)
                end
            else
                nH()
            end
        end)
        table.insert(nn, xp.DescendantAdded:Connect(function(n_)
            if Toggles.InstantProximityPrompt.Value then
                nE(n_)
            end
        end))
        table.insert(nn, x8.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if no[v] == nil then
                        no[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(nn, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local Io = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and Io then
                Io:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(nn, x8.RenderStepped:Connect(function(om)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local Ir = Character and Character:FindFirstChildOfClass("Humanoid")
            local Is = Character
            if Is then
                Is = Character:FindFirstChild("HumanoidRootPart")
            end
            local Iq_1 = Is
            local CurrentCamera = xp.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and Ir then
                if np[Ir] == nil then
                    np[Ir] = Ir.WalkSpeed
                end
                Ir.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and Iq_1 and Ir and CurrentCamera then
                if nq[Ir] == nil then
                    nq[Ir] = Ir.PlatformStand
                end
                Ir.PlatformStand = true
                local Is_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        Is_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        Is_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        Is_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        Is_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        Is_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        Is_4 -= Vector3.new(0, 1, 0)
                    end
                end
                Iq_1.AssemblyLinearVelocity = Vector3.zero
                if Is_4.Magnitude > 0 then
                    Iq_1.CFrame = Iq_1.CFrame + Is_4.Unit * Options.FlySpeed.Value * om
                end
            end
        end))
        wS.Track(function()
            for k, v in nn do
                v:Disconnect()
            end
            ns()
            nw()
            nA()
            nH()
        end)
    end
    Ld_3()
    local function Ld_4()
        local JI, JJ, JK, Label, JM, JN, JO, JP, JQ, JR, JS, JT, JU, JV
        JM = {}
        JU = {}
        JR = nil
        JS = 0
        JO = 0
        JI = false
        JJ = os.clock()
        local MenuGroup = Lb.Settings:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        JP = function()
            local CurrentCamera
            CurrentCamera = xp.CurrentCamera
            local IH = not CurrentCamera or not wD(VirtualUser.CaptureController) or not wD(VirtualUser.ClickButton2)
            if IH then
                return false
            end
            local IH_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not IH_1 then
                return false
            end
            JS += 1
            JJ = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. JS)
            end)
            return true
        end
        JK = function(o7)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not o7)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = xE:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not o7
                end
            end)
            if not o7 then
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
        JV = function(pn)
            local IN = pn.ClassName == "ParticleEmitter"
            local IR = if IN then 1 else 0
            local IP = 636 * IR + 3656 * (1 - IR)
            local IQ = 423 * IR + 377 * (1 - IR)
            if not ((IP * 2752 + IQ * 3229 + IP * IQ) % 16777213 == 3385167) then
                IN = pn.ClassName == "Trail"
            end
            local IR_1 = if IN then 1 else 0
            local IP_1 = 1882 * IR_1 + 3259 * (1 - IR_1)
            local IQ_1 = 1951 * IR_1 + 1194 * (1 - IR_1)
            if not ((IP_1 * 1001 + IQ_1 * 1498 + IP_1 * IQ_1) % 16777213 == 8478262) then
                IN = pn.ClassName == "Smoke"
            end
            if not IN then
                IN = pn.ClassName == "Fire"
            end
            if not IN then
                IN = pn.ClassName == "Sparkles"
            end
            if not IN then
                IN = pn.ClassName == "Explosion"
            end
            if not IN then
                IN = pn.ClassName == "Beam"
            end
            if IN then
                if JM[pn] == nil then
                    JM[pn] = pn.Enabled
                end
                pcall(function()
                    pn.Enabled = false
                end)
            end
        end
        JT = function()
            for k, v in JM do
                local IW = k
                local IY = v
                if IW.Parent then
                    pcall(function()
                        IW.Enabled = IY
                    end)
                end
            end
            table.clear(JM)
            if JR then
                pcall(function()
                    settings().Rendering.QualityLevel = JR.Quality
                end)
                Lighting.GlobalShadows = JR.Shadows
                Lighting.FogEnd = JR.Fog
                JR = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(pC)
                pcall(function()
                    x8:Set3dRenderingEnabled(not pC)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(pH)
                if pH then
                    if not JR then
                        JR = {
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
                    for k, v in xp:QueryDescendants("ParticleEmitter,Trail,Smoke,Fire,Sparkles,Beam") do
                        pcall(JV, v)
                    end
                else
                    JT()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        JK(true)
        local ScriptGroup = Lb.Settings:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            JK(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            JK(true)
        end
        table.insert(JU, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                JP()
            end
        end))
        table.insert(JU, xp.DescendantAdded:Connect(function(p_)
            if Toggles.FpsBoost.Value then
                JV(p_)
            end
        end))
        JQ = function(p3)
            local Jh = JI or Library.Unloaded
            local Jm = if Jh then 1 else 0
            local Jk = 849 * Jm + 2872 * (1 - Jm)
            local Jl = 2445 * Jm + 1745 * (1 - Jm)
            if not ((Jk * 2344 + Jl * 662 + Jk * Jl) % 16777213 == 5684451) then
                Jh = not Toggles.AutoReconnect.Value
            end
            if Jh then
                return
            end
            JI = true
            local Jg = JO
            local Jh_1 = pcall(function()
                if p3 then
                    xB:Teleport(game.PlaceId, LocalPlayer)
                else
                    xB:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not Jh_1 then
                JI = false
                if not p3 and Jg == JO then
                    task.delay(1.5, function()
                        if Jg == JO then
                            JQ(true)
                        end
                    end)
                end
            end
        end
        table.insert(JU, xB.TeleportInitFailed:Connect(function(ql)
            local Jo
            if ql == LocalPlayer and JI then
                JI = false
                Jo = JO
                task.delay(3, function()
                    if Jo == JO then
                        JQ(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = xE:WaitForChild("RobloxPromptGui", 30)
            local Jw = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not Jw then
                return
            end
            table.insert(JU, Jw.ChildAdded:Connect(function(qA)
                if qA.Name == "ErrorPrompt" then
                    JQ(false)
                end
            end))
        end)
        JN = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    JK(true)
                end
                local Jz = Toggles.AntiAfk.Value and os.clock() - JJ >= 60
                if Jz then
                    JP()
                end
                task.wait(1)
            end
        end)
        wS.Track(function()
            JO += 1
            for k, v in JU do
                v:Disconnect()
            end
            pcall(task.cancel, JN)
            JK(false)
            JT()
            pcall(function()
                x8:Set3dRenderingEnabled(true)
            end)
        end)
    end
    Ld_4()
    local function Ld_5()
        local KT, KU, KV, KW
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("MyScriptHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(Lb.Settings)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/StealAnAnimeEgg")
        local KX = SaveManager:BuildConfigSection(Lb.Settings)
        KW = function(q0, q1)
            local JZ_1 = (q0 == "Toggle" and Toggles or Options)[q1]
            local JY_2 = type(JZ_1) == "table" and JZ_1.Type == q0
            return JY_2 and JZ_1 or nil
        end
        KU = function(ra, rb)
            local Type = rb.Type
            if Type == "Toggle" then
                return { idx = ra, type = "Toggle", value = rb.Value == true }
            elseif Type == "Slider" then
                return { idx = ra, type = "Slider", value = tostring(rb.Value) }
            elseif Type == "Dropdown" then
                return { idx = ra, type = "Dropdown", multi = rb.Multi == true, value = rb.Value }
            elseif Type == "Input" then
                local J2 = rb.Value or ""
                return { idx = ra, type = "Input", text = tostring(J2) }
            elseif Type == "ColorPicker" then
                return { idx = ra, type = "ColorPicker", value = rb.Value:ToHex(), transparency = rb.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = ra,
                    type = "KeyPicker",
                    mode = rb.Mode,
                    key = rb.Value,
                    modifiers = rb.Modifiers,
                    toggled = rb.Toggled
                }
            else
                return nil
            end
        end
        KT = function()
            local Kb = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local Kc = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if Kc then
                        local Kc_1 = KU(k, v)
                        if Kc_1 then
                            Kb[#Kb + 1] = Kc_1
                        end
                    end
                end
            end
            table.sort(Kb, function(rl, rm)
                if rl.type ~= rm.type then
                    return rl.type < rm.type
                end
                return rl.idx < rm.idx
            end)
            return { objects = Kb }
        end
        KV = function(ro)
            local Ky
            Ky = nil
            local Kz = type(ro) ~= "table"
            local KD = if Kz then 1 else 0
            local KB = 1226 * KD + 3818 * (1 - KD)
            local KC = 3889 * KD + 2949 * (1 - KD)
            if not ((KB * 176 + KC * 540 + KB * KC) % 16777213 == 7083750) then
                Kz = type(ro.idx) ~= "string"
            end
            if not Kz then
                Kz = type(ro.type) ~= "string"
            end
            if not Kz then
                Kz = SaveManager.Ignore[ro.idx]
            end
            if Kz then
                return false
            end
            Ky = KW(ro.type, ro.idx)
            if not Ky then
                return false
            end
            local Kz_1 = pcall(function()
                if ro.type == "Input" then
                    if type(ro.text) ~= "string" then
                        return
                    end
                    Ky:SetValue(ro.text)
                elseif ro.type == "ColorPicker" then
                    Ky:SetValueRGB(Color3.fromHex(ro.value), ro.transparency)
                elseif ro.type == "KeyPicker" then
                    Ky:SetValue({ ro.key, ro.mode, ro.modifiers })
                    if ro.mode == "Toggle" and ro.toggled ~= nil then
                        Ky.Toggled = ro.toggled
                        Ky:Update()
                    end
                else
                    Ky:SetValue(ro.value)
                end
            end)
            return Kz_1
        end
        KX:AddDivider()
        KX:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        KX:AddButton("Export Config to Clipboard", function()
            local KF_1
            local KE_1
            KE_1, KF_1 = pcall(HttpService.JSONEncode, HttpService, KT())
            if KE_1 then
                local KE_2 = wD(setclipboard) and setclipboard
                local KG = KE_2
                if not KG then
                    local KE_3 = wD(toclipboard) and toclipboard
                    KG = KE_3 or nil
                end
                local KE_4 = KG
                local KG_1 = type(KE_4) == "function" and pcall(KE_4, KF_1)
                if KG_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        KX:AddButton("Import Config from Clipboard Text", function()
            local KL_1
            local KJ = Options.SaveManager_ImportSource.Value or ""
            local KJ_1
            local KK = tostring(KJ):match("^%s*(.-)%s*$")
            if KK == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #KK > 262144 then
                Library:Notify("That config is too large")
                return
            end
            KJ_1, KL_1 = pcall(HttpService.JSONDecode, HttpService, KK)
            local KK_1 = not KJ_1 or type(KL_1) ~= "table" or type(KL_1.objects) ~= "table"
            if KK_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #KL_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local KJ_2 = 0
            for i, v in ipairs(KL_1.objects) do
                if KV(v) then
                    KJ_2 += 1
                end
            end
            if KJ_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local KL_2 = KJ_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(KJ_2, KL_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        if Options.StealZones then
            wS.SetStealZones(Options.StealZones.Value)
        end
        if Options.StealRarities then
            wS.SetStealRarities(Options.StealRarities.Value)
        end
        if Options.StealEggs then
            wS.SetStealEggs(Options.StealEggs.Value)
        end
        if Options.StealPriority then
            wS.SetPriority(Options.StealPriority.Value)
        end
        if Options.SellRarities then
            wS.SetSellRarities(Options.SellRarities.Value)
        end
        if Options.SellMaxPrice then
            wS.SetSellMaxPrice(Options.SellMaxPrice.Value)
        end
        if Toggles.SellPets then
            wS.SetSellPets(Toggles.SellPets.Value)
        end
        if Toggles.SellEggs then
            wS.SetSellEggs(Toggles.SellEggs.Value)
        end
        if Toggles.KeepPlaced then
            wS.SetKeepPlaced(Toggles.KeepPlaced.Value)
        end
        if Toggles.AutoPlaceEgg then
            wS.SetAutoPlaceEgg(Toggles.AutoPlaceEgg.Value)
        end
        if Toggles.AutoHatchEgg then
            wS.SetAutoHatchEgg(Toggles.AutoHatchEgg.Value)
        end
        if Toggles.AutoEquipBest then
            wS.SetAutoEquipBest(Toggles.AutoEquipBest.Value)
        end
        if Toggles.AutoUpgradePen then
            wS.SetAutoUpgradePen(Toggles.AutoUpgradePen.Value)
        end
        if Toggles.AutoUpgradeTreadmill then
            wS.SetAutoUpgradeTreadmill(Toggles.AutoUpgradeTreadmill.Value)
        end
        if Toggles.AutoClaimIndex then
            wS.SetAutoClaimIndex(Toggles.AutoClaimIndex.Value)
        end
        if Toggles.AutoDailyLogin then
            wS.SetAutoDailyLogin(Toggles.AutoDailyLogin.Value)
        end
        if Toggles.AutoRebirth then
            wS.SetAutoRebirth(Toggles.AutoRebirth.Value)
        end
        if Toggles.AutoBuyTrail then
            wS.SetAutoBuyTrail(Toggles.AutoBuyTrail.Value)
        end
        if Toggles.AutoEquipTrail then
            wS.SetAutoEquipTrail(Toggles.AutoEquipTrail.Value)
        end
        if Toggles.AutoSell then
            wS.SetAutoSell(Toggles.AutoSell.Value)
        end
        if Toggles.AutoSteal then
            wS.SetAutoSteal(Toggles.AutoSteal.Value)
        end
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    Ld_5()
end
Lv_2()
