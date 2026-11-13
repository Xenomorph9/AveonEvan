local fns = {}
local Fl
local Gr
local Fr
local FQ
local Gx
local Fx
local Ge
local Fe
local FW
local GD
local FD
local Gk
local Fk
local GJ
local State
local Fq
local F7
local FP
local Gw
local Fw
local Gd
local FV
local GC
local FC
local Fj
local F0
local GI
local FI
local Gp
local Fp
local F6
local FO
local Gv
local Gc
local LocalPlayer
local FU
local GB
local FB
local Gi
local F_
local FH
local Go
local F5
local FN
local Gu
local Fu
local Gb
local CoreGui
local GA
local FA
local Gh
local FZ
local GG
local Gn
local Fn
local F4
local FM
local Ft
local Ga
local Fa
local FS
local Gz
local Fg
local GF
local FF
local Gm
local Fm
local F3
local FL
local F9
local E9
local FR
local Gy
local Fy
local Gf
local FX
local GE
local FE
function fns.fn3(V)
    local Ho = typeof(cloneref) == "function" and typeof(V) == "Instance"
    if Ho then
        return cloneref(V)
    end
    return V
end
function fns.fn20()
    local Plot = State.Plot
    local H3 = Plot and Plot.Parent and Plot:GetAttribute("Owner") == LocalPlayer.UserId
    if H3 then
        return Plot
    end
    State.Plot = nil
    for i, child in ipairs(Gx:GetChildren()) do
        local H2_1 = string.match(child.Name, "^Karenderya") and child:GetAttribute("Owner") == LocalPlayer.UserId
        if H2_1 then
            State.Plot = child
            return child
        end
    end
    return nil
end
function fns.fn25()
    local RB = {}
    local RC = {}
    for k, v in pairs(Fe()) do
        local RD = type(v) == "table" and v.Rarity
        local RD_1 = type(RD) == "string" and not RC[RD]
        if RD_1 then
            RC[RD] = true
            table.insert(RB, RD)
        end
    end
    table.sort(RB)
    return RB
end
function fns.fn27()
    if FA then
        FA:Cancel()
        FA = nil
    end
end
function fns.fn64(kD)
    Ge.ingredientTargets = Fj(kD)
end
function fns.fn81(kT)
    Ge.tables = kT == true
    Ge.Refresh()
end
function fns.fn87(aj)
    local Hv_1
    local Ht = FV[aj]
    if Ht ~= nil then
        if Ht == false then
            return nil
        end
        return Ht
    end
    local Modules = GE:FindFirstChild("Modules")
    local Hu = Modules and Modules:FindFirstChild(aj)
    local Hu_2
    local Hu_1 = not Hu or not Hu:IsA("ModuleScript")
    if Hu_1 then
        FV[aj] = false
        return nil
    end
    Hu_2, Hv_1 = pcall(require, Hu)
    local Ht_3 = not Hu_2 or type(Hv_1) ~= "table"
    if Ht_3 then
        FV[aj] = false
        return nil
    end
    FV[aj] = Hv_1
    return Hv_1
end
function fns.fn90()
    local Q4 = if FX(FZ, { "roll", "hire", "applications", "wake" }) then 1 else 0
    if Q4 == 1 then
        F6(FZ, Fm)
    else
        F4(FZ)
    end
end
function fns.fn99(fC)
    GF.requireIngredients = fC == true
end
function fns.fn112()
    F4(GF)
    F4(Gy)
    F4(Gr)
    F4(Ge)
    F4(F3)
    F4(FZ)
    F4(FW)
    State.Anchor = nil
end
function fns.fn126(ga)
    Gy.rarities = Fj(ga)
end
function fns.fn140(mm)
    local PY = {}
    for k, v in pairs(mm) do
        local PZ = type(v) == "table" and v.Role
        local P_ = PZ
        if not P_ then
            local PZ_1 = type(k) == "string" and k
            P_ = PZ_1 or nil
        end
        local PZ_2 = P_
        if type(PZ_2) == "string" then
            local P__1 = type(v) == "table"
            if P__1 then
                local P1 = v.Template or v.Name or "hired"
                P__1 = tostring(P1)
            end
            local P0_3 = P__1 or "hired"
            PY[PZ_2] = P0_3
        end
    end
    return PY
end
function fns.fn164(jb, jc)
    return tostring(jb) .. " (" .. tostring(jc) .. ")"
end
function fns.fn221()
    local PJ_1
    local PI_1
    PI_1, PJ_1 = {}, {}
    for k, v in pairs(Gm()) do
        local PK = type(v) == "table" and v.Rarity
        local PK_1 = type(PK) == "string" and not PI_1[PK]
        if PK_1 then
            PI_1[PK] = true
            table.insert(PJ_1, PK)
        end
    end
    table.sort(PJ_1)
    return PJ_1
end
function fns.fn224()
    if FW.runaways then
        F6(FW, GJ)
    else
        F4(FW)
    end
end
function fns.fn233(iv)
    Gr.chiller = iv == true
    Gr.repairTries = 0
    Gr.repairAt = 0
    Gr.Refresh()
end
function fns.fn243()
    local Ol_1, Ol_3
    local Oj = Gv()
    local Ok = Oj and Oj:FindFirstChild("DiningPlot1")
    local Ok_1, Ok_8
    if not Ok then
        return
    end
    Ok_1, Ol_1 = FD("GetUnlockedTables")
    local Om = not Ok_1 or type(Ol_1) ~= "table"
    local Om_1
    if Om then
        return
    end
    for k, v in pairs(Ol_1) do
        local Ok_2 = not Fg() or Ge.stopped
        if Ok_2 then
            return
        end
        local Ok_3 = v ~= true and type(k) == "string"
        if Ok_3 then
            local Ok_4 = Ok:FindFirstChild(k)
            local Ol_2 = Ok_4 and Ok_4:FindFirstChild("PromptPart")
            local Ok_5 = Ol_2
            if Ol_2 then
                Ol_2 = Ok_5:FindFirstChildWhichIsA("ProximityPrompt")
            end
            local Ok_6 = Ol_2
            if Ol_2 then
                Ol_2 = tonumber((string.gsub(tostring(Ok_6.ActionText), "%D", "")))
            end
            local Ok_7 = Ol_2
            if Ol_2 then
                Ol_2 = FH() - Ok_7 >= Ge.reserve
            end
            if Ol_2 then
                Ol_3, Ok_8, Om_1 = FD("BuyTableEvent", k)
                if Ol_3 and Ok_8 then
                    State.Bought = State.Bought + 1
                    Gd("Unlocked " .. k)
                else
                    local Ok_9 = Ol_3 and type(Om_1) == "string"
                    if Ok_9 then
                        Gd(Om_1)
                    end
                end
                task.wait(0.3)
            end
        end
    end
end
function fns.fn245()
    local Character = LocalPlayer.Character
    if not Character or not Character.Parent then
        return nil
    end
    return Character
end
function fns.fn251()
    if not FW.runaways then
        return
    end
    if FW.equip then
        Gc()
    end
    if FW.runaways then
        local Ry = Fl("IsRunaway")[1]
        if Ry then
            F5("HitRunawayEvent", Ry.model.Name)
            Gd("Sent hit for runaway " .. tostring(Ry.model.Name))
            return
        end
    end
end
function fns.fn253(lP)
    local Pt = tonumber(lP) or 10
    F3.interval = math.max(3, Pt)
end
function fns.fn254(bG, bH)
    for i, v in ipairs(bH) do
        if bG[v] then
            return true
        end
    end
    return false
end
function fns.fn260(Y)
    return type(Y) == "function"
end
function fns.fn296()
    return FB("IsDirty")
end
function fns.fn297()
    return FB("IsFood")
end
function fns.fn316()
    return FB("IsSoftdrink")
end
function fns.fn334(gh)
    local LO = tonumber(gh) or 0
    Gy.minPrice = LO
end
function fns.fn339(c1, c2)
    local JE = E9()
    local JF = RaycastParams.new()
    JF.FilterType = Enum.RaycastFilterType.Exclude
    local JG = c1:FindFirstAncestorWhichIsA("Model") or c1.Parent
    local JG_1
    local JH = { JG }
    local JH_1
    if JE then
        table.insert(JH, JE)
    end
    JF.FilterDescendantsInstances = JH
    local JE_1 = { Vector3.new(1, 0, 0), Vector3.new(-1, 0, 0), Vector3.new(0, 0, 1), Vector3.new(0, 0, -1) }
    JH_1, JG_1 = nil, nil
    for i, v in ipairs(JE_1) do
        local JE_2 = Gx:Raycast(c2, v * 6, JF)
        local JE_3 = JE_2 and (JE_2.Position - c2).Magnitude or 6
        if JE_3 >= 3 then
            local JE_4 = c2 + v * math.min(JE_3 - 0.5, 3.5)
            local JJ = Gx:Raycast(JE_4 + Vector3.new(0, 6, 0), Vector3.new(0, -25, 0), JF)
            if JJ then
                local JK = JE_3 - math.abs(JJ.Position.Y - (c2.Y - 1.5))
                if not JG_1 or JK > JG_1 then
                    JG_1 = JK
                    JH_1 = CFrame.new(Vector3.new(JE_4.X, JJ.Position.Y + 3, JE_4.Z), c2)
                end
            end
        end
    end
    return JH_1
end
function fns.fn344(kM, kN)
    Ge.categoryItems[kM] = Fj(kN)
end
function fns.fn419(f5)
    if f5 then
        F6(Gy, Gf)
    else
        F4(Gy)
    end
end
function fns.fn478(nU)
    local Ra = tonumber(nU) or 4
    FZ.interval = math.max(1, Ra)
end
function fns.fn486(oH)
    FW.runaways = oH == true
    FW.Refresh()
end
function fns.fn492()
    local Pv = FL("WorkerConfig")
    local Pw = Pv and Pv.RoleOrder
    local Pw_1 = type(Pw) == "table" and #Pw > 0
    if Pw_1 then
        return Pw
    end
    return { "Assigner", "Dishwasher", "Server" }
end
function fns.fn543(af)
    State.Status = tostring(af)
end
function fns.fn563(kB)
    Ge.ingredients = kB == true
    Ge.Refresh()
end
function fns.fn586(gk)
    local LQ = Gv()
    local LR = LQ and LQ:FindFirstChild("Softdrinks")
    local LQ_1 = LR
    if LR then
        LR = LQ_1:FindFirstChild("Chiller")
    end
    local LQ_2 = LR
    if LR then
        LR = LQ_2:FindFirstChild("PromptPart")
    end
    local LS = LR
    if LR then
        LR = LS:FindFirstChild(gk)
    end
    local LS_1 = LR
    if LR then
        LR = LS_1:IsA("ProximityPrompt")
    end
    if LR then
        return LS_1, LQ_2
    end
    return nil, LQ_2
end
function fns.fn591(g_)
    local Mc = g_ and g_:FindFirstChild("Serve")
    if Mc then
        for i, child in ipairs(Mc:GetChildren()) do
            if child:GetAttribute("Occupied") == true then
                return true
            end
        end
    end
    for i, v in ipairs({ "GetFood", "Serve", "GetDirty", "GiveSoftdrink" }) do
        if #Gu(v) > 0 then
            return true
        end
    end
    local Mc_1 = F9()
    local Md_1 = Mc_1 and Mc_1:GetAttribute("HasDishes") == true
    if Md_1 then
        return true
    end
    return false
end
function fns.fn596()
    return CoreGui
end
function fns.fn611()
    local O5_1, O5_4, O5_5, O5_6
    local O4_1, O4_7, O4_10, O4_12
    O4_1, O5_1 = FD("MerchantRemotes/GetMerchantStock")
    local O6 = O4_1 and type(O5_1) == "table" and next(F3.items) ~= nil
    local O6_2, O6_6
    if O6 then
        for i, v in ipairs(O5_1) do
            local O4_2 = not Fg() or F3.stopped
            if O4_2 then
                return
            end
            local O4_3 = type(v) == "table" and tonumber(v.Stock)
            local O5_2 = O4_3 or nil
            local O4_4 = O5_2
            if O5_2 then
                O5_2 = O4_4 > 0
            end
            if O5_2 then
                O5_2 = v.Owned ~= true
            end
            if O5_2 then
                local items = F3.items
                local O6_1 = v.Name or v.Key
                O5_2 = items[Gw(O6_1, v.Category)]
            end
            if O5_2 then
                local O4_6 = tonumber(v.Price) or 0
                if FH() >= O4_6 then
                    O5_4, O4_7, O6_2 = FD("MerchantRemotes/BuyMerchantItem", v.Key)
                    if O5_4 and O4_7 then
                        State.Bought = State.Bought + 1
                        local O4_8 = v.Name or v.Key
                        Gd("Bought " .. tostring(O4_8) .. " from the merchant")
                    else
                        local O4_9 = O5_4 and type(O6_2) == "string"
                        if O4_9 then
                            Gd(O6_2)
                        end
                    end
                    task.wait(0.3)
                end
            end
        end
    end
    if F3.second then
        O4_10, O5_5 = FD("Merchant2Remotes/GetMerchant2Stock")
        local O6_3 = O4_10 and type(O5_5) == "table" and tonumber(O5_5.Stock)
        local O4_11 = O6_3 or nil
        local O6_4 = O4_11
        if O4_11 then
            O4_11 = O6_4 > 0
        end
        if O4_11 then
            local O6_5 = GA()
            local O7_2 = tonumber(O5_5.Price) or 0
            O4_11 = O6_5 >= O7_2
        end
        if O4_11 then
            O5_6, O4_12, O6_6 = FD("Merchant2Remotes/BuyMerchant2Item")
            if O5_6 and O4_12 then
                State.Bought = State.Bought + 1
                Gd("Bought the second merchant's stock")
            else
                local O4_13 = O5_6 and type(O6_6) == "string"
                if O4_13 then
                    Gd(O6_6)
                end
            end
        end
    end
end
function fns.fn612()
    local N5_2
    local N2_1, N2_3
    local N1_1, N1_5, N1_7
    if not Ge.WantsAnyStock() then
        return
    end
    N1_1, N2_1 = FD("ShopRemotes/GetShopInfo")
    local N3 = not N1_1 or type(N2_1) ~= "table"
    local N3_1
    if N3 then
        return
    end
    for k, v in pairs(N2_1) do
        if type(v) == "table" then
            for i, v in ipairs(v) do
                local N1_2 = not Fg() or Ge.stopped
                if N1_2 then
                    return
                end
                local N1_3 = type(v) == "table" and tonumber(v.Stock)
                local N2_2 = N1_3 or nil
                local N1_4 = N2_2
                if N2_2 then
                    N2_2 = N1_4 > 0
                end
                if N2_2 then
                    N2_3, N1_5, N3_1 = FE(v)
                    local N1_6 = Ge.categoryItems[v.Category]
                    local N4 = N1_6
                    local N4_1
                    if N4 then
                        local N5_1 = N3_1 or v.Key
                        N4 = N1_6[tostring(N5_1)]
                    end
                    if N4 then
                        N4 = N2_3
                    end
                    if N4 then
                        N4 = FH() - N2_3 >= Ge.reserve
                    end
                    if N4 then
                        N4_1, N1_7, N5_2 = FD("ShopRemotes/BuyFurniture", v.SystemType, v.Category, v.Key, N2_3)
                        if N4_1 and N1_7 then
                            State.Bought = State.Bought + 1
                            local N1_8 = N3_1 or v.Key
                            Gd("Bought " .. tostring(N1_8))
                        else
                            local N1_9 = N4_1 and type(N5_2) == "string"
                            if N1_9 then
                                Gd(N5_2)
                            end
                        end
                        task.wait(0.3)
                    end
                end
            end
        end
    end
end
function fns.fn617(cW, cX)
    local JA = cW
    while true do
        if not (JA and JA ~= cX) then
            return nil
        end
        local Parent = JA.Parent
        if not Parent then
            return nil
        end
        local JC_1 = JA:IsA("Model") and string.match(Parent.Name, "^DiningPlot")
        if JC_1 then
            break
        end
        JA = Parent
    end
    return JA
end
function fns.fn632(kK)
    Ge.stock = kK == true
    Ge.Refresh()
end
function fns.fn640(kI)
    local OG = tonumber(kI) or 0
    Ge.reserve = math.max(0, math.floor(OG))
end
function fns.fn669()
    local PW_1
    local PV_1
    local PU_1
    local PT_1
    PU_1, PT_1, PV_1, PW_1 = FD("WorkerRemotes/GetWaitingWorkers")
    if not PU_1 then
        return {}, {}
    end
    local PT_2 = type(PV_1) == "table" and PV_1
    local PV_2 = PT_2 or {}
    local PT_3 = type(PW_1) == "table" and PW_1
    return PV_2, PT_3 or {}
end
function fns.fn699()
    local Py = FL("WorkerConfig")
    return Py and Py.Workers or {}
end
function fns.fn718(mx, my)
    if not my then
        return nil
    end
    for i, v in ipairs(Fu()) do
        local P9 = FZ.roleTargets[v]
        local Qa = not mx[v]
        if Qa ~= false then
            Qa = P9
        end
        if Qa then
            Qa = P9[my]
        end
        if Qa then
            return v
        end
    end
    return nil
end
local function fn794()
    local LX = Gv()
    local LY = LX and LX:FindFirstChild("Sink")
    local LX_1 = LY
    if LY then
        LY = LX_1:FindFirstChild("Sink")
    end
    local LX_2 = LY
    if LY then
        LY = LX_2:FindFirstChild("PromptPart")
    end
    local LX_3 = LY
    if LY then
        LY = LX_3:FindFirstChild("Wash")
    end
    local LX_4 = LY
    if LY then
        LY = LX_4:IsA("ProximityPrompt")
    end
    if LY then
        return LX_4
    end
    return nil
end
local function fn857()
    local KS = FL("NPCConfig")
    return KS and KS.Types or {}
end
local function fn925(cx)
    local Jg_1
    local Je_1
    local Jd_1
    local I9 = Fy[cx]
    local I9_2
    if I9 ~= nil then
        return I9 or nil
    end
    local Serve = cx:FindFirstChild("Serve")
    local Kitchen = cx:FindFirstChild("Kitchen")
    local Jb = not Kitchen
    local Jb_1
    local Jc = not Serve or Jb
    local Jc_1
    if Jc then
        Fy[cx] = false
        return nil
    end
    Jc_1, Jd_1, Jb_1, Je_1 = math.huge, -math.huge, math.huge, -math.huge
    local Jf = 0
    local Jf_1
    for i, child in ipairs(Serve:GetChildren()) do
        if child:IsA("BasePart") then
            Jf += 1
            Jc_1 = math.min(Jc_1, child.Position.X)
            Jd_1 = math.max(Jd_1, child.Position.X)
            Jb_1 = math.min(Jb_1, child.Position.Z)
            Je_1 = math.max(Je_1, child.Position.Z)
        end
    end
    I9_2, Jg_1 = nil, nil
    for i, child in ipairs(Kitchen:GetChildren()) do
        if child:IsA("BasePart") then
            local Ja_3 = child.Position - child.Size / 2
            local Jh_1 = child.Position + child.Size / 2
            local Ji = I9_2 and I9_2:Min(Ja_3)
            I9_2 = Ji or Ja_3
            local Ja_4 = Jg_1 and Jg_1:Max(Jh_1)
            Jg_1 = Ja_4 or Jh_1
        end
    end
    local Ja_5 = not I9_2
    local Jh_2 = Jf < 2
    local Jz = if Jh_2 then 1 else 0
    local Jx = 1187 * Jz + 3058 * (1 - Jz)
    local Jy = 794 * Jz + 4044 * (1 - Jz)
    if not ((Jx * 3202 + Jy * 2890 + Jx * Jy) % 16777213 == 7037912) then
        Jh_2 = Ja_5
    end
    if Jh_2 then
        Fy[cx] = false
        return nil
    end
    local Ja_6 = (I9_2 + Jg_1) / 2
    if Jd_1 - Jc_1 <= Je_1 - Jb_1 then
        local new = Vector3.new
        local Jc_2 = Ja_6.X >= Jd_1 and 5 or -5
        Jf_1 = new(Jc_2, 1, 0)
    else
        local new = Vector3.new
        local Ja_7 = Ja_6.Z >= Je_1 and 5 or -5
        Jf_1 = new(0, 1, Ja_7)
    end
    Fy[cx] = Jf_1
    return Jf_1
end
local function fn942(fA)
    local Lv = fA or "First Available"
    GF.priority = tostring(Lv)
end
local function fn944(iN)
    local Ng = {}
    local Nh = FL("IngredientsConfig") or Ng
    local Nh_1 = Nh[iN]
    local Ng_2 = Nh_1 and tonumber(Nh_1.Cost)
    return Ng_2 or nil
end
local function fn949(eM)
    local KZ = Fr()[eM]
    local K_ = KZ and KZ.RequiredIngredients
    local KZ_1 = {}
    if type(K_) ~= "table" then
        return KZ_1
    end
    for i, v in ipairs(K_) do
        if FQ(v) <= 0 then
            table.insert(KZ_1, v)
        end
    end
    return KZ_1
end
local function fn950(ju)
    local NX_5
    local NW_8
    if ju.Category == "Paints" then
        local NV_1 = {}
        local NW_1 = FL("PaintConfig") or NV_1
        local NV_2 = NW_1[ju.Key]
        if NV_2 then
            local NW_2 = tonumber(NV_2.Cost)
            local NX_1 = (tonumber(NV_2.Stars))
            local N0_1 = if NX_1 then 1 else 0
            local NZ_1 = 3193 * N0_1 + 628 * (1 - N0_1)
            local N__1 = 1759 * N0_1 + 2682 * (1 - N0_1)
            if not ((NZ_1 * 3721 + N__1 * 1736 + NZ_1 * N__1) % 16777213 == 3774051) then
                NX_1 = 1
            end
            return NW_2, NX_1, NV_2.Name
        end
        return nil, 1, ju.Key
    elseif ju.Category == "Tiles" then
        local NV_3 = {}
        local NW_3 = FL("TileConfig") or NV_3
        local NV_4 = NW_3[ju.Key]
        if NV_4 then
            local NW_4 = tonumber(NV_4.Cost)
            local NX_2 = Gx:GetAttribute("PisoSaleTiles") == true and not NV_4.Remover
            if NX_2 then
                NW_4 = 1
            end
            local NX_3 = (tonumber(NV_4.Stars))
            local N0_2 = if NX_3 then 1 else 0
            local NZ_2 = 2603 * N0_2 + 3148 * (1 - N0_2)
            local N__2 = 1805 * N0_2 + 3832 * (1 - N0_2)
            if not ((NZ_2 * 115 + N__2 * 1448 + NZ_2 * N__2) % 16777213 == 7611400) then
                NX_3 = 1
            end
            return NW_4, NX_3, NV_4.Name
        end
        return nil, 1, ju.Key
    elseif ju.Category == "Materials" then
        local NV_5 = {}
        local NW_5 = FL("MaterialConfig") or NV_5
        local NV_6 = NW_5[ju.Key]
        if NV_6 then
            local NW_6 = tonumber(NV_6.Cost)
            local NX_4 = tonumber(NV_6.Stars) or 1
            return NW_6, NX_4, NV_6.Name
        end
        return nil, 1, ju.Key
    else
        local NV_7 = FL("FurnitureConfig")
        local NW_7 = NV_7 and Fx(NV_7.GetItemConfig)
        if NW_7 then
            NW_8, NX_5 = pcall(NV_7.GetItemConfig, ju.SystemType, ju.Category, ju.Key)
            local NV_8 = NW_8 and type(NX_5) == "table"
            if NV_8 then
                local NV_9 = tonumber(NX_5.Price)
                local NW_9 = tonumber(NX_5.Stars) or 1
                return NV_9, NW_9, NX_5.Name
            end
            return nil, 1, ju.Key
        end
        return nil, 1, ju.Key
    end
end
local function fn986(dk, dl)
    local JV_1, JV_2
    local JZ_3
    local JY_3
    local JT_6
    local JS = F7(dk)
    if not JS then
        return nil
    elseif dl then
        local Serve = dl:FindFirstChild("Serve")
        local JU = Serve and dk:IsDescendantOf(Serve)
        local JU_1, JU_5
        if JU then
            local JT_2 = Fn(dl)
            if JT_2 then
                return CFrame.new(JS + JT_2, JS)
            end
            local JT_3 = Ft(dk, dl)
            if JT_6 then
                JU_1, JV_1 = JT_3:GetBoundingBox()
                local Position = JU_1.Position
                local JU_2 = (JS - Position) * Vector3.new(1, 0, 1)
                local JW_1 = JU_2.Magnitude > 0.1 and JU_2.Unit
                local JU_3 = JW_1 or Vector3.new(0, 0, 1)
                local JU_4 = Vector3.new(JS.X, Position.Y - JV_1.Y / 2 + 3, JS.Z)
                return CFrame.new(JU_4 + JU_3 * 2.5, JU_4)
            end
            local JT_5 = (Gh(dk, JS))
            if not ((JY_3 * 3634 + JZ_3 * 148 + JY_3 * JZ_3) % 16777213 == 9384412) then
                JT_5 = CFrame.new(JS + Vector3.new(0, 3, 0))
            end
            return JT_5
        end
        JT_6 = Ft(dk, dl)
        if JT_6 then
            JU_5, JV_2 = JT_6:GetBoundingBox()
            local Position = JU_5.Position
            local JU_6 = (JS - Position) * Vector3.new(1, 0, 1)
            local JW_3 = JU_6.Magnitude > 0.1 and JU_6.Unit
            local JU_7 = JW_3 or Vector3.new(0, 0, 1)
            local JU_8 = Vector3.new(JS.X, Position.Y - JV_2.Y / 2 + 3, JS.Z)
            return CFrame.new(JU_8 + JU_7 * 2.5, JU_8)
        end
        local JT_8 = (Gh(dk, JS))
        if not ((JY_3 * 3634 + JZ_3 * 148 + JY_3 * JZ_3) % 16777213 == 9384412) then
            JT_8 = CFrame.new(JS + Vector3.new(0, 3, 0))
        end
        return JT_8
    else
        local JT_9 = (Gh(dk, JS))
        local J__3 = if JT_9 then 1 else 0
        JY_3 = 1435 * J__3 + 1423 * (1 - J__3)
        JZ_3 = 2634 * J__3 + 2542 * (1 - J__3)
        if not ((JY_3 * 3634 + JZ_3 * 148 + JY_3 * JZ_3) % 16777213 == 9384412) then
            JT_9 = CFrame.new(JS + Vector3.new(0, 3, 0))
        end
        return JT_9
    end
end
local function fn988()
    if State.Anchor then
        return
    end
    local IH = Ga()
    if IH then
        State.Anchor = IH.CFrame
    end
end
local function fn991(ey)
    local KD = Gv()
    if not KD then
        return {}
    end
    local KE = {}
    for i, descendant in ipairs(KD:GetDescendants()) do
        local KD_1 = descendant:IsA("ProximityPrompt") and descendant.Enabled and descendant:GetAttribute("TableAction") == ey
        if KD_1 then
            if descendant:GetAttribute("ReservedForServer") ~= true then
                table.insert(KE, descendant)
            end
        end
    end
    return KE
end
local function fn1001(bk)
    local Ie = {}
    if type(bk) == "table" then
        for k, v in pairs(bk) do
            local If = v == true and type(k) == "string"
            if If then
                Ie[k] = true
            elseif type(v) == "string" then
                Ie[v] = true
            end
        end
    end
    return Ie
end
local function fn1006(nI)
    local Q7 = tonumber(nI) or 5
    FZ.rerolls = math.max(1, math.floor(Q7))
end
local function fn1029(nS)
    FZ.wake = nS == true
    FZ.Refresh()
end
local function fn1037()
    local ingredientTargets = Ge.ingredientTargets
    local Nk = next(ingredientTargets) ~= nil
    for i, v in ipairs(GG()) do
        local Nl = not Fg() or Ge.stopped
        local Nl_3
        if Nl then
            return
        end
        if not Nk or ingredientTargets[v] then
            local Nl_2 = Ge.targetStock - FQ(v)
            local Nm = FO(v)
            local Nm_1
            local Nn = Nl_2 > 0 and Nm and Nm > 0
            local Nn_2
            if Nn then
                local Nn_1 = FH() - Ge.reserve
                local No = math.min(Nl_2, math.floor(Nn_1 / Nm))
                if No > 0 then
                    Nm_1, Nl_3, Nn_2 = FD("ShopRemotes/BuyIngredient", v, No, "Cash")
                    if Nm_1 and Nl_3 then
                        State.Bought = State.Bought + 1
                        Gd(string.format("Bought %dx %s", No, v))
                    else
                        local Nl_4 = Nm_1 and type(Nn_2) == "string"
                        if Nl_4 then
                            Gd(Nn_2)
                        end
                    end
                    task.wait(0.2)
                end
            end
        end
    end
end
local function fn1043()
    local MZ_1
    local MY_1
    if Fp then
        return false
    end
    Fp = true
    MY_1, MZ_1 = pcall(FR)
    Fp = false
    if not MY_1 then
        error(MZ_1, 0)
    end
    return MZ_1
end
local function fn1057(aK, ...)
    local HM = FI(aK, "RemoteFunction")
    if not HM then
        return false
    end
    return pcall(HM.InvokeServer, HM, ...)
end
local function fn1067(l1)
    local PC = type(l1) == "string" and Gm()[l1]
    local PD = PC
    local PH = if PD then 1 else 0
    local PF = 800 * PH + 251 * (1 - PH)
    local PG = 610 * PH + 2770 * (1 - PH)
    if not ((PF * 3936 + PG * 3493 + PF * PG) % 16777213 == 5767530) then
        PD = nil
    end
    local PC_1 = PD
    local PD_1 = type(PC_1) == "table" and PC_1.Rarity
    local PC_2 = PD_1
    local PH_1 = if PC_2 then 1 else 0
    local PF_1 = 664 * PH_1 + 3577 * (1 - PH_1)
    local PG_1 = 3918 * PH_1 + 2277 * (1 - PH_1)
    if not ((PF_1 * 2233 + PG_1 * 793 + PF_1 * PG_1) % 16777213 == 7191238) then
        PC_2 = nil
    end
    return PC_2
end
local function fn1075()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local HV = leaderstats and leaderstats:FindFirstChild("Cash")
    local HU_1 = HV
    if HV then
        HV = tonumber(HU_1.Value)
    end
    return HV or 0
end
local function fn1076(fv)
    if fv then
        F6(GF, FF)
    else
        F4(GF)
    end
end
local function fn1077(iz)
    Gr.trash = iz == true
    Gr.Refresh()
end
local function fn1085()
    return not F0.Unloaded
end
local function fn1119(kV)
    local OQ = tonumber(kV) or 6
    Ge.interval = math.max(2, OQ)
end
local function fn1131(nG)
    FZ.roll = nG == true
    FZ.Refresh()
end
local function fn1132(iD)
    local M4 = tonumber(iD) or 0.6
    Gr.interval = math.max(0.2, M4)
end
local function fn1137(kG)
    local OC = tonumber(kG) or 25
    Ge.targetStock = math.max(1, math.floor(OC))
end
local function fn1152(nK)
    FZ.hire = nK == true
    FZ.Refresh()
end
local function fn1167(gf)
    local LM = tonumber(gf) or 100
    Gy.maxRunaway = LM
end
local function fn1170(iB)
    Gr.restore = iB == true
end
local function fn1172()
    local Anchor = State.Anchor
    State.Anchor = nil
    if not Anchor then
        return
    end
    if Ga() then
        Gn(Anchor)
    end
end
local function fn1187()
    local Ky = not Gi() and not F_() and not FP()
    return Ky
end
local function fn1212(lK)
    F3.items = Fj(lK)
end
local function fn1233()
    local HR = E9()
    local HS = HR and HR:FindFirstChild("HumanoidRootPart")
    return HS or nil
end
local function fn1275()
    local LI_1
    local LH_1, LH_2
    LH_1, LI_1 = FD("CounterRemotes/GetCounterInfo")
    local LJ = not LH_1 or type(LI_1) ~= "table"
    local LJ_1
    if LJ then
        return
    end
    LH_2, LJ_1 = Fq(LI_1)
    if not LH_2 then
        return
    end
    if F5("CounterRemotes/RejectNPC") then
        State.Rejected = State.Rejected + 1
        local LH_3 = LI_1.TemplateName or "customer"
        Gd("Rejected " .. tostring(LH_3) .. " (" .. tostring(LJ_1) .. ")")
    end
end
local function fn1285(lN)
    F3.second = lN == true
end
local function fn1306()
    local L_ = Ga()
    local GlobalTrashSpawner = Gx:FindFirstChild("GlobalTrashSpawner")
    local L1 = not GlobalTrashSpawner
    local L1_1
    local L2 = not L_ or L1
    local L2_1
    if L2 then
        return nil
    end
    L2_1, L1_1 = nil, nil
    for i, descendant in ipairs(GlobalTrashSpawner:GetDescendants()) do
        local L0_1 = descendant:IsA("ProximityPrompt") and descendant:GetAttribute("IsTrash") and descendant.Enabled
        if L0_1 then
            local L0_2 = F7(descendant)
            if L0_2 then
                local Magnitude = (L0_2 - L_.Position).Magnitude
                if Magnitude <= Gr.trashRange and (not L1_1 or Magnitude < L1_1) then
                    L2_1, L1_1 = descendant, Magnitude
                end
            end
        end
    end
    return L2_1
end
local function fn1325(a7)
    local Ingredients = LocalPlayer:FindFirstChild("Ingredients")
    local H0 = Ingredients and Ingredients:FindFirstChild(a7)
    local H__1 = H0
    if H0 then
        H0 = tonumber(H__1.Value)
    end
    return H0 or 0
end
local function fn1327()
    if FX(Ge, { "ingredients", "stock", "tables" }) then
        F6(Ge, FN)
    else
        F4(Ge)
    end
end
local function fn1347(lF)
    F3.enabled = lF == true
    if lF then
        F6(F3, GI)
    else
        F4(F3)
    end
end
local function fn1348(it)
    Gr.drinks = it == true
    Gr.Refresh()
end
local function fn1350(nQ)
    FZ.applications = nQ == true
    FZ.Refresh()
end
local function fn1362()
    for k, v in pairs(Ge.categoryItems) do
        if next(v) ~= nil then
            return true
        end
    end
    return false
end
local function fn1391()
    local Qn_1
    local Qm_1
    local Ql_1, Ql_6
    local Qj_1, Qj_4, Qj_5, Qj_7, Qj_8
    local Qi = FZ.hire or FZ.roll
    local Qi_1, Qi_9, Qi_11, Qi_13, Qi_16
    if Qi then
        Qi_1, Qj_1 = Fw()
        local Qk_1 = Gp(Qi_1)
        if FZ.hire then
            for i, v in ipairs(Qj_1) do
                local Qi_2 = not Fg() or FZ.stopped
                if Qi_2 then
                    return
                end
                local Qi_3 = type(v) == "table" and type(v.Name) == "string"
                if Qi_3 then
                    local Qi_4 = GB(Qk_1, FU(v.Template))
                    if Qi_4 then
                        Qm_1, Ql_1, Qn_1 = FD("WorkerRemotes/HireWorker", v.Name, Qi_4)
                        if Qm_1 and Ql_1 then
                            local Ql_2 = v.Template or v.Name
                            Qk_1[Qi_4] = tostring(Ql_2)
                            local Ql_3 = v.Template or v.Name
                            Gd("Hired " .. tostring(Ql_3) .. " as " .. Qi_4)
                            task.wait(0.5)
                        else
                            local Qi_5 = Qm_1 and type(Qn_1) == "string"
                            if Qi_5 then
                                Gd(Qn_1)
                            end
                        end
                    end
                end
            end
        end
        if FZ.roll then
            local Qi_6 = false
            for i, v in ipairs(Fu()) do
                local Ql_4 = not Qk_1[v]
                if Ql_4 ~= false then
                    local Qn_2 = FZ.roleTargets[v] or {}
                    Ql_4 = next(Qn_2) ~= nil
                end
                if Ql_4 then
                    Qi_6 = true
                end
            end
            local Ql_5 = false
            for i, v in ipairs(Qj_1) do
                local Qj_2 = type(v) == "table" and GB(Qk_1, FU(v.Template))
                if Qj_2 then
                    Ql_5 = true
                end
            end
            if Qi_6 and not Ql_5 then
                local rerolls = FZ.rerolls
                local QI = 1
                while QI <= rerolls do
                    local Qi_8 = not Fg() or FZ.stopped
                    if Qi_8 then
                        return
                    end
                    Qj_4, Qi_9, Ql_6 = FD("WorkerRemotes/RollWorker", "Roll")
                    if not (Qj_4 and Qi_9) then
                        local Qi_10 = Qj_4 and type(Ql_6) == "string"
                        if Qi_10 then
                            Gd(Ql_6)
                        end
                        break
                    end
                    Gd("Rerolled the workers at spawn")
                    task.wait(0.6)
                    Qi_11, Qj_5 = Fw()
                    local Qi_12 = false
                    for i, v in ipairs(Qj_5) do
                        local Qj_6 = type(v) == "table" and GB(Qk_1, FU(v.Template))
                        if Qj_6 then
                            Qi_12 = true
                        end
                    end
                    if Qi_12 then
                        break
                    end
                    QI += 1
                end
            end
        end
    end
    if FZ.applications then
        Qi_13, Qj_7 = FD("StaffRemotes/GetStaffInfo")
        local Qk_2 = Qi_13 and type(Qj_7) == "table" and type(Qj_7.Applications) == "table"
        if Qk_2 then
            for i, v in ipairs(Qj_7.Applications) do
                local Qi_14 = not Fg() or FZ.stopped
                if Qi_14 then
                    return
                end
                local Qi_15 = type(v) == "table" and v.UserId
                if Qi_15 then
                    Qi_16, Qj_8 = FD("StaffRemotes/RespondApplication", v.UserId, true)
                    if Qi_16 and Qj_8 then
                        local Qi_17 = v.Name or v.UserId
                        Gd("Hired " .. tostring(Qi_17))
                    end
                    task.wait(0.3)
                end
            end
        end
    end
    if FZ.wake then
        local Qi_18 = Gv()
        if Qi_18 then
            for i, descendant in ipairs(Qi_18:GetDescendants()) do
                local Qi_19 = descendant:IsA("Model") and descendant:GetAttribute("IsWorker") == true and descendant:GetAttribute("IsSleeping") == true
                if Qi_19 then
                    F5("WorkerRemotes/WakeWorkerEvent", descendant.Name)
                end
            end
        end
    end
end
local function fn1393()
    local Lo_1
    local Ln_1
    local Lm_1
    Lm_1, Lo_1, Ln_1 = FD("CounterRemotes/GetCounterInfo")
    if not Lm_1 then
        Gd("Counter is unavailable")
        return
    end
    if type(Lo_1) ~= "table" then
        Gd("No one in line")
        return
    end
    local Order = Lo_1.Order
    if GF.requireIngredients and Order then
        local Lp_1 = Gk(Order)
        if #Lp_1 > 0 then
            Gd("Missing " .. table.concat(Lp_1, ", ") .. " for " .. tostring(Order))
            return
        end
    end
    local Lm_3 = FM(Ln_1)[1]
    if not Lm_3 then
        Gd("No free table for the customer")
        return
    end
    local Lp_2 = Lo_1.NpcId or Lo_1.TemplateName or ""
    if Lp_2 == "" then
        Gd("Customer has no identity yet")
        return
    end
    if F5("CounterRemotes/AssignNPC", { Slot = Lm_3.Slot, Seat = Lm_3.Seat, NPCName = Lp_2, NpcId = Lp_2 }) then
        State.Assigned = State.Assigned + 1
        local Lp_3 = Lo_1.TemplateName
        local Lt = if Lp_3 then 1 else 0
        local Lr = 2453 * Lt + 796 * (1 - Lt)
        local Ls = 2680 * Lt + 424 * (1 - Lt)
        if not ((Lr * 3117 + Ls * 1417 + Lr * Ls) % 16777213 == 1240388) then
            Lp_3 = Lp_2
        end
        Gd("Seated " .. tostring(Lp_3) .. " at " .. tostring(Lm_3.Name))
    end
end
local function fn1398(ix)
    Gr.wash = ix == true
    Gr.Refresh()
end
local function fn1432(eg)
    local Kn = E9()
    if not Kn then
        return false
    end
    for i, child in ipairs(Kn:GetChildren()) do
        local Kn_1 = child:IsA("Accessory") and child:GetAttribute(eg)
        if Kn_1 then
            return true
        end
    end
    return false
end
local function fn1444()
    gethui = Gz
end
local function fn1482(ax, ay)
    local Hy_2
    local Hx = FS[ax]
    local Hx_2
    if Hx ~= nil then
        if Hx == false then
            return nil
        elseif Hx.Parent then
            return Hx
        else
            FS[ax] = nil
            local Hx_1 = GE:FindFirstChild("Remotes")
            if not Hx_2 then
                return nil
            end
            for k in string.gmatch(ax, "[^/]+") do
                Hx_1 = Hx_1:FindFirstChild(k)
                if not Hx_1 then
                    FS[ax] = false
                    return nil
                end
            end
            local Hy_1 = ay and not Hx_1:IsA(ay)
            if Hy_2 then
                FS[ax] = false
                return nil
            end
            FS[ax] = Hx_1
            return Hx_1
        end
    else
        Hx_2 = GE:FindFirstChild("Remotes")
        if not Hx_2 then
            return nil
        end
        for k in string.gmatch(ax, "[^/]+") do
            Hx_2 = Hx_2:FindFirstChild(k)
            if not Hx_2 then
                FS[ax] = false
                return nil
            end
        end
        Hy_2 = ay and not Hx_2:IsA(ay)
        if Hy_2 then
            FS[ax] = false
            return nil
        end
        FS[ax] = Hx_2
        return Hx_2
    end
end
local function fn1507(cj)
    local Parent = cj.Parent
    local I1 = Parent and Parent:IsA("BasePart")
    if I1 then
        return Parent
    end
    local I1_1 = Parent and Parent:IsA("Attachment") and Parent.Parent and Parent.Parent:IsA("BasePart")
    if I1_1 then
        return Parent.Parent
    end
    local Model = cj:FindFirstAncestorOfClass("Model")
    if Model then
        local I1_2 = Model.PrimaryPart or Model:FindFirstChildWhichIsA("BasePart", true)
        if I1_2 then
            return I1_2
        end
        return nil
    end
    return nil
end
local function fn1511()
    if Ge.ingredients then
        GC()
    end
    if Ge.stock then
        Fk()
    end
    if Ge.tables then
        Go()
    end
end
local function fn1524()
    local OS_1
    local OT_1
    OS_1, OT_1 = FD("MerchantRemotes/GetMerchantStock")
    local OU = OS_1
    local OS_2 = {}
    if OU then
        OU = type(OT_1) == "table"
    end
    if OU then
        for i, v in ipairs(OT_1) do
            local OT_2 = type(v) == "table" and v.Key
            if OT_2 then
                local insert = table.insert
                local OU_1 = v.Name or v.Key
                insert(OS_2, Gw(OU_1, v.Category))
            end
        end
    end
    table.sort(OS_2)
    return OS_2
end
local function fn1527(cr)
    local I6 = FC(cr)
    return I6 and I6.Position or nil
end
local function fn1548(of)
    local Rn = Ga()
    if not Rn then
        return {}
    end
    local Ro = {}
    for i, descendant in ipairs(Gx:GetDescendants()) do
        local Rp = descendant:IsA("Model") and descendant:GetAttribute(of) == true
        if Rp then
            local Rp_1 = descendant.PrimaryPart or descendant:FindFirstChild("HumanoidRootPart")
            if Rp_1 then
                local Magnitude = (Rp_1.Position - Rn.Position).Magnitude
                if Magnitude <= FW.range then
                    table.insert(Ro, { model = descendant, part = Rp_1, distance = Magnitude })
                end
            end
        end
    end
    table.sort(Ro, function(ou, ov)
        return ou.distance < ov.distance
    end)
    return Ro
end
local function fn1560()
    local Nx = {}
    local Ny = {}
    for i, v in ipairs(GD) do
        local Nz = FL(v.module)
        if Nz and v.path then
            for i, v in ipairs(v.path) do
                local NA_1 = type(Nz) == "table" and Nz[v]
                Nz = NA_1 or nil
            end
        end
        local NA_2 = {}
        if type(Nz) == "table" then
            for k, v in pairs(Nz) do
                local Nz_1 = type(k) == "string" and type(v) == "table"
                if Nz_1 then
                    local insert = table.insert
                    local NB_2 = v.Name or k
                    insert(NA_2, tostring(NB_2))
                end
            end
        end
        table.sort(NA_2)
        Ny[v.category] = NA_2
        table.insert(Nx, v.category)
    end
    return Ny, Nx
end
local function fn1565()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local HY = leaderstats and leaderstats:FindFirstChild("Heart")
    local HX_1 = HY
    if HY then
        HY = tonumber(HX_1.Value)
    end
    return HY or 0
end
local function fn1611()
    local KP = {}
    local KQ = FL("FoodConfig") or KP
    return KQ
end
local function fn1681(aG, ...)
    local HH = FI(aG, "RemoteEvent")
    if not HH then
        return false
    end
    return (pcall(HH.FireServer, HH, ...))
end
local function fn1683()
    local M6 = {}
    local M7 = FL("IngredientsConfig") or M6
    local M6_1 = {}
    for k, v in pairs(M7) do
        local M7_1 = type(v) == "table" and type(k) == "string"
        if M7_1 then
            table.insert(M6_1, k)
        end
    end
    table.sort(M6_1)
    return M6_1
end
local function fn1688(fE)
    local Ly = tonumber(fE) or 1.2
    GF.interval = math.max(0.3, Ly)
end
local function fn1693(ir)
    Gr.food = ir == true
    Gr.Refresh()
end
local function fn1707(fH)
    local LC_5
    if type(fH) ~= "table" then
        return false
    end
    local TemplateName = fH.TemplateName
    local LA_5, Order
    local LB = TemplateName and Fe()[TemplateName]
    local LB_16
    local LB_1 = next(Gy.rarities) ~= nil and LB
    if LB_1 then
        local Rarity = LB.Rarity
        if Rarity and Gy.rarities[Rarity] then
            return true, "rarity " .. tostring(Rarity)
        elseif LB then
            local LB_3 = tonumber(LB.RunawayChance)
            if LA_5 then
                return true, "runaway chance " .. tostring(LB_3)
            end
            local Order2 = fH.Order
            if Order then
                local LB_4 = Fr()[Order2]
                local LC_2 = LB_4 and tonumber(LB_4.Cost)
                if LC_5 then
                    return true, "order worth " .. tostring(LC_2)
                end
                local LB_6 = Gy.missing and #Gk(Order2) > 0
                if LB_16 then
                    return true, "missing ingredients"
                end
                return false
            end
            return false
        else
            local Order2 = fH.Order
            if Order then
                local LB_7 = Fr()[Order2]
                local LC_3 = LB_7 and tonumber(LB_7.Cost)
                if LC_5 then
                    return true, "order worth " .. tostring(LC_3)
                end
                local LB_9 = Gy.missing and #Gk(Order2) > 0
                if LB_16 then
                    return true, "missing ingredients"
                end
                return false
            end
            return false
        end
    elseif LB then
        local LB_10 = tonumber(LB.RunawayChance)
        LA_5 = LB_10 and LB_10 > Gy.maxRunaway
        if LA_5 then
            return true, "runaway chance " .. tostring(LB_10)
        end
        local Order2 = fH.Order
        if Order then
            local LB_11 = Fr()[Order2]
            local LC_4 = LB_11 and tonumber(LB_11.Cost)
            if LC_5 then
                return true, "order worth " .. tostring(LC_4)
            end
            local LB_13 = Gy.missing and #Gk(Order2) > 0
            if LB_16 then
                return true, "missing ingredients"
            end
            return false
        end
        return false
    else
        Order = fH.Order
        if Order then
            local LB_14 = Fr()[Order]
            LC_5 = LB_14 and tonumber(LB_14.Cost)
            local LB_15 = LC_5
            if LC_5 then
                LC_5 = LB_15 < Gy.minPrice
            end
            if LC_5 then
                return true, "order worth " .. tostring(LB_15)
            end
            LB_16 = Gy.missing and #Gk(Order) > 0
            if LB_16 then
                return true, "missing ingredients"
            end
            return false
        end
        return false
    end
end
local function fn1731()
    if FX(Gr, { "food", "drinks", "wash", "trash", "chiller" }) then
        F6(Gr, Fa)
    else
        F4(Gr)
        if Gr.restore and not Fp then
            Gb()
        end
    end
end
local function fn1743(nM, nN)
    FZ.roleTargets[nM] = Fj(nN)
end
local function fn1757(bE)
    bE.stopped = true
    local Iv = bE.generation
    local Iz = if Iv then 1 else 0
    local Ix = 2933 * Iz + 436 * (1 - Iz)
    local Iy = 1146 * Iz + 157 * (1 - Iz)
    if not ((Ix * 1734 + Iy * 1921 + Ix * Iy) % 16777213 == 10648506) then
        Iv = 0
    end
    bE.generation = Iv + 1
end
local function fn1764(gd)
    Gy.missing = gd == true
end
E9 = nil
Fa = nil
LocalPlayer = nil
Fe = nil
Fg = nil
Fj = nil
Fk = nil
Fl = nil
Fm = nil
Fn = nil
Fp = nil
Fq = nil
Fr = nil
Ft = nil
Fu = nil
Fw = nil
Fx = nil
Fy = nil
FA = nil
FB = nil
FC = nil
FD = nil
FE = nil
FF = nil
FH = nil
FI = nil
FL = nil
FM = nil
FN = nil
FO = nil
FP = nil
FQ = nil
FR = nil
FS = nil
CoreGui = nil
FU = nil
FV = nil
local Players, Fb, Fd, Ff, Workspace, Fi, TweenService, Fs, Fv, Lighting, TeleportService, FJ, FK
FW = nil
FX = nil
FZ = nil
F_ = nil
F0 = nil
F3 = nil
F4 = nil
F5 = nil
F6 = nil
F7 = nil
F9 = nil
Ga = nil
Gb = nil
Gc = nil
Gd = nil
Ge = nil
Gf = nil
Gh = nil
Gi = nil
Gk = nil
Gm = nil
Gn = nil
Go = nil
Gp = nil
State = nil
Gr = nil
Gu = nil
Gv = nil
Gw = nil
Gx = nil
Gy = nil
Gz = nil
GA = nil
GB = nil
GC = nil
GD = nil
GE = nil
GF = nil
GG = nil
GI = nil
local GuiService, HttpService, F2, VirtualUser, Gg, Gj, UserInputService, RunService, Gt, GH
GJ = nil
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, TweenService, Workspace, LocalPlayer, Gz = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
TweenService = game:GetService("TweenService")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local GM = "OuroborosKarinderya"
Gz = fns.fn596
if getgenv then
    getgenv().gethui = Gz
end
F0, GE, Gx, State, FV, FS, Gn, FA, Fp, Fy, GF, Gy, Gr, Ge, F3, FZ, FW, GD, Fi, Fx, Fg, Gd, FL, FI, F5, FD, E9, Ga, FH, GA, FQ, Gv, Fj, F6, F4, FX, Ff, Gb, FC, F7, Fn, Ft, Gh, Fd, FK, Fb, FB, Gi, F_, FP, Fv, Gu, Fr, Fe, Gk, FM, FF, Fq, Gf, Gg, F9, Gj, FJ, FR, Fa, GG, FO, GC, Gw, F2, FE, Fk, Go, FN, Gt, GI, Fu, Gm, FU, GH, Fw, Gp, GB, Fm, Gc, Fl, GJ, Fs = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fn1444)
local function GO(u)
    local Ha
    local Hb
    local G9
    G9 = nil
    Ha = nil
    Hb = nil
    local Hc = u ~= ""
    local Hd = type(u) == "string" and Hc
    assert(Hd, "A namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    Ha = getgenv()
    assert(type(Ha) == "table", "getgenv did not return a table")
    local Hc_1 = Ha[u]
    if Hc_1 ~= nil then
        local Hd_1 = type(Hc_1) == "table" and type(Hc_1.Unload) == "function"
        assert(Hd_1, "Namespace is occupied")
        Hc_1.Unload()
        assert(Ha[u] == nil, "Previous instance did not release its namespace")
    end
    Hb = {}
    G9 = { State = {}, Unloaded = false }
    G9.Track = function(A)
        assert(type(A) == "function", "Cleanup must be callable")
        if G9.Unloaded then
            A()
        else
            table.insert(Hb, A)
        end
        return A
    end
    G9.Unload = function()
        local G2_1
        local G1_1
        if G9.Unloaded then
            return
        end
        G9.Unloaded = true
        local G_ = {}
        local G6 = #Hb
        local G5 = -1
        while false and G6 <= 1 or true and G6 >= 1 do
            local G7 = G6
            local G0_1 = table.remove(Hb, G7)
            G1_1, G2_1 = pcall(G0_1)
            if not G1_1 then
                table.insert(G_, tostring(G2_1))
            end
            G6 += G5
        end
        table.clear(G9.State)
        if #G_ > 0 then
            error("Cleanup incomplete: " .. table.concat(G_, "; "), 0)
        end
        if Ha[u] == G9 then
            Ha[u] = nil
        end
    end
    Ha[u] = G9
    return G9
end
Fi = function(N, O)
    local Hj = type(N) == "table" and type(N.Track) == "function"
    assert(Hj, "FeatureAPI required")
    local Hj_1 = type(O) == "table" and type(O.OnUnload) == "function"
    assert(Hj_1, "UI library required")
    assert(type(O.Unload) == "function", "UI unload required")
    N.Track(function()
        if not O.Unloaded then
            O:Unload()
        end
    end)
    O:OnUnload(function()
        N.Unload()
    end)
end
F0 = GO(GM)
Fx = fns.fn260
Fg = fn1085
GE = fns.fn3(ReplicatedStorage)
Gx = fns.fn3(Workspace)
State = F0.State
State.Notifications = {}
State.Status = "Idle"
State.Anchor = nil
State.Served = 0
State.Assigned = 0
State.Rejected = 0
State.Bought = 0
Gd = fns.fn543
FV = {}
FL = fns.fn87
FS = {}
FI = fn1482
F5 = fn1681
FD = fn1057
E9 = fns.fn245
Ga = fn1233
FH = fn1075
GA = fn1565
FQ = fn1325
Gv = fns.fn20
Fj = fn1001
F6 = function(br, bs)
    local generation
    local It = br.generation or 0
    br.generation = It + 1
    br.stopped = false
    generation = br.generation
    task.spawn(function()
        local Io_1
        while true do
            local In = Fg() and not br.stopped and br.generation == generation
            local In_1
            if In then
                In_1, Io_1 = pcall(bs)
                if not In_1 then
                    warn("[Ouroboros] loop error: " .. tostring(Io_1))
                end
                local Ip = not Fg() or br.stopped or br.generation ~= generation
                if Ip then
                    break
                end
                if In_1 and Io_1 == true then
                    local wait = task.wait
                    local Io_2 = br.busyInterval or 0.05
                    wait(Io_2)
                else
                    task.wait(br.interval)
                end
                continue
            end
            break
        end
    end)
end
F4 = fn1757
FX = fns.fn254
Ff = fn988
Gb = fn1172
Fp = false
F0.Track(fns.fn27)
Gn = function(bX, bY)
    local IV
    IV = Ga()
    local function IW()
        local IP = Fg() and Ga() == IV
        if IP then
            local IQ = not bY or bY()
            IP = IQ
        end
        return IP
    end
    local IX = not IV or typeof(bX) ~= "CFrame" or not IW()
    if IX then
        return false
    end
    local IX_1 = math.max((IV.Position - bX.Position).Magnitude / 16, 0.1)
    if IX_1 > 60 then
        return false
    end
    if FA then
        FA:Cancel()
    end
    local IY = TweenService:Create(IV, TweenInfo.new(IX_1, Enum.EasingStyle.Linear), { CFrame = bX })
    FA = IY
    IY:Play()
    local IZ = os.clock() + IX_1 + 0.5
    while true do
        local IX_2 = IW() and IY.PlaybackState == Enum.PlaybackState.Playing and os.clock() < IZ
        if IX_2 then
            task.wait(0.03)
            continue
        end
        break
    end
    local IX_3 = IW() and IY.PlaybackState == Enum.PlaybackState.Completed
    IW = IX_3
    IY:Cancel()
    if FA == IY then
        FA = nil
    end
    return IW
end
FC = fn1507
F7 = fn1527
Fy = {}
Fn = fn925
Ft = fns.fn617
Gh = fns.fn339
Fd = fn986
FK = function(dE, dF, dG)
    if not dE.Enabled then
        return false
    end
    local HoldDuration = dE.HoldDuration
    if HoldDuration <= 0 then
        if Fx(fireproximityprompt) then
            return (pcall(fireproximityprompt, dE))
        end
        return (pcall(function()
            dE:InputHoldBegin()
            dE:InputHoldEnd()
        end))
    end
    local J1 = pcall(function()
        dE:InputHoldBegin()
    end)
    if not J1 then
        return false
    end
    local J1_1 = os.clock() + HoldDuration + 0.5
    while os.clock() < J1_1 do
        local J0_1 = not Fg()
        if not J0_1 then
            local J2_1 = dF and not dF()
            J0_1 = J2_1
        end
        if not J0_1 then
            J0_1 = not dE.Parent
        end
        if not J0_1 then
            J0_1 = not dE.Enabled
        end
        if not J0_1 then
            local J2_2 = dG and dG()
            J0_1 = J2_2
        end
        if J0_1 then
            break
        end
        if dE.Name == "Wash" then
            Gd("Washing dishes: " .. math.max(0, math.ceil(J1_1 - os.clock() - 0.5)) .. "s remaining")
        end
        task.wait(0.15)
    end
    pcall(function()
        dE:InputHoldEnd()
    end)
    return true
end
Fb = function(dV, dW, dX)
    local Ki_1
    local function Kg()
        local Ka = (Fg())
        if Ka then
            local Kb = not dX
            local Kf = if Kb then 1 else 0
            local Kd = 2935 * Kf + 577 * (1 - Kf)
            local Ke = 12 * Kf + 1805 * (1 - Kf)
            if not ((Kd * 1458 + Ke * 2674 + Kd * Ke) % 16777213 == 4346538) then
                Kb = dX()
            end
            Ka = Kb
        end
        return Ka
    end
    if not Kg() then
        return false
    end
    local Kh = typeof(dV) ~= "Instance" or not dV:IsA("ProximityPrompt") or not dV.Parent
    if Kh then
        return false
    end
    local Kh_1 = dW and dW()
    if Kh_1 then
        return true
    end
    local Kh_2 = Fd(dV, Gv())
    if not Kh_2 then
        return false
    end
    Ff()
    if not Gn(Kh_2, dX) then
        return false
    elseif not Kg() then
        return false
    else
        local Kh_3 = dW and dW()
        if Kh_3 then
            return true
        elseif not FK(dV, dX, dW) then
            return false
        elseif not dW then
            return true
        else
            local Kh_4 = os.clock() + 0.6
            repeat
                task.wait(0.03)
                if not Kg() then
                    return false
                end
                Ki_1 = dW() or os.clock() > Kh_4
            until Ki_1
            return dW()
        end
    end
end
FB = fn1432
Gi = fns.fn297
F_ = fns.fn296
FP = fns.fn316
Fv = fn1187
Gu = fn991
Fr = fn1611
Fe = fn857
Gk = fn949
if (State and Ff or F6 and State or not Ff and not Fa and (false or not F_)) and (Fa or Fa or F_ and not Fa or (false or (not Ff or not F_))) or not ((State and Ff or F6 and State or not Ff and not Fa and (false or not F_)) and (Fa or Fa or F_ and not Fa or (false or (not Ff or not F_)))) then
    GF = { interval = 1.2, priority = "First Available", requireIngredients = true }
else
    Fu = { interval = 1.2, priority = "First Available", requireIngredients = true }
end
if (Fk and FM or not Fk and not Fk or (not Fm or FI) and (Gk and Gk)) and not (Fk and FM or not Fk and not Fk or (not Fm or FI) and (Gk and Gk)) then
    Gi = { missing = true, interval = 1.2, minPrice = 0, rarities = {}, maxRunaway = 100 }
else
    Gy = { interval = 1.2, rarities = {}, missing = true, maxRunaway = 100, minPrice = 0 }
end
Gr = {
    interval = 0.6,
    food = false,
    drinks = false,
    wash = false,
    trash = false,
    chiller = false,
    trashRange = 250,
    restore = true
}
Ge = {
    interval = 6,
    ingredients = false,
    ingredientTargets = {},
    targetStock = 25,
    reserve = 0,
    stock = false,
    categoryItems = {},
    tables = false
}
F3 = { interval = 10, enabled = false, items = {}, second = false }
FZ = {
    interval = 4,
    roll = false,
    rerolls = 5,
    hire = false,
    roleTargets = {},
    applications = false,
    wake = false
}
FW = { interval = 0.5, runaways = false, range = 400, equip = true, weapon = "Pan" }
FM = function(e2)
    local Ld = {}
    if type(e2) ~= "table" then
        return Ld
    end
    for i, v in ipairs(e2) do
        local Le = type(v) == "table" and v.Slot ~= nil and v.Seat ~= nil
        if Le then
            table.insert(Ld, v)
        end
    end
    local priority = GF.priority
    if priority ~= "First Available" then
        table.sort(Ld, function(e9, fa)
            local match2 = string.match
            local K9 = e9.Name or ""
            local K8_1 = tonumber(match2(tostring(K9), "%d+")) or 0
            local match = string.match
            local La = fa.Name or ""
            local K8_3 = tonumber(match(tostring(La), "%d+")) or 0
            if priority == "Highest Table Number" then
                return K8_1 > K8_3
            end
            return K8_1 < K8_3
        end)
    end
    return Ld
end
FF = fn1393
GF.SetEnabled = fn1076
GF.SetPriority = fn942
GF.SetRequireIngredients = fns.fn99
GF.SetDelay = fn1688
Fq = fn1707
Gf = fn1275
Gy.SetEnabled = fns.fn419
Gy.SetRarities = fns.fn126
Gy.SetMissing = fn1764
Gy.SetMaxRunaway = fn1167
Gy.SetMinPrice = fns.fn334
Gg = fns.fn586
F9 = fn794
Gj = fn1306
if (not FW or GA) and (GB or not GA) and (FD and FW or (FD or FW)) or not ((not FW or GA) and (GB or not GA) and (FD and FW or (FD or FW))) then
    FJ = fns.fn591
    FR = function()
        local generation, My
        local ME_15
        generation = Gr.generation
        My = E9()
        local function MA()
            local Mr = Fg() and not Gr.stopped and Gr.generation == generation and E9() == My
            return Mr
        end
        local function MB()
            local Mt = Gr.food and not Gr.stopped and Gr.generation == generation and E9() == My
            return Mt
        end
        local MB_6
        if not FX(Gr, { "food", "drinks", "wash", "trash", "chiller" }) then
            return
        end
        local MC = Gv()
        if not MC then
            Gd("Your karinderya was not found")
            return
        end
        local MD = Gr.wash and F9()
        local Mz = MD
        local MD_9 = Mz and Mz:GetAttribute("HasDishes") == true
        if MD_9 then
            local MD_10 = Gr.washWaitingAt or os.clock()
            Gr.washWaitingAt = MD_10
        else
            Gr.washWaitingAt = nil
        end
        local MD_11 = Mz and Gr.washWaitingAt and Fv()
        if MD_11 then
            local ME_9 = os.clock() - Gr.washWaitingAt >= 10
            local ML = if ME_9 then 1 else 0
            local MJ = 276 * ML + 479 * (1 - ML)
            local MK = 3511 * ML + 3463 * (1 - ML)
            if not ((MJ * 1638 + MK * 2696 + MJ * MK) % 16777213 == 10886780) then
                ME_9 = not Gr.food
            end
            if not ME_9 then
                ME_9 = #Gu("GetFood") == 0
            end
            MD_11 = ME_9
        end
        if MD_11 then
            Gd("Moving to wash dishes")
            local MD_12 = Fb(Mz, function()
                local Mv = not Mz.Parent or Mz:GetAttribute("HasDishes") ~= true
                return Mv
            end, MA)
            if not MA() then
                return false
            end
            if MD_12 then
                Gr.washWaitingAt = nil
                Gd("Finished washing dishes")
            else
                Gr.washWaitingAt = os.clock()
                Gd("Wash not confirmed")
            end
            return MD_12
        end
        local MD_13 = Gr.food and Gi()
        if MD_13 then
            local MD_14 = Gu("Serve")[1]
            if MD_14 then
                local ME_10 = Fb(MD_14, function()
                    return not Gi()
                end, MB)
                local MF_7 = not Fg() or not MB()
                if MF_7 then
                    return false
                end
                if ME_10 then
                    State.Served = State.Served + 1
                    Gd("Served " .. tostring(MD_14.ActionText))
                else
                    Gd("Delivery not confirmed for " .. tostring(MD_14.ActionText))
                end
                return ME_10
            end
            Gd("Holding food with no table waiting for it")
        end
        local MD_15 = Gu("GiveSoftdrink")[1]
        local ME_11 = Gr.drinks and FP()
        if ME_11 then
            if MD_15 then
                if Fb(MD_15, function()
                    return not FP()
                end, MA) then
                    Gd("Handed over a softdrink")
                end
                return true
            end
        end
        local ME_12 = Gr.food and Fv()
        if ME_12 then
            local ME_13 = Gu("GetFood")[1]
            if ME_13 then
                local MF_8 = tostring(ME_13.ActionText)
                local MG_4 = Fb(ME_13, Gi, MB)
                local ME_14 = not Fg()
                local MX = if ME_14 then 1 else 0
                local MV = 1125 * MX + 2186 * (1 - MX)
                local MW = 1418 * MX + 3204 * (1 - MX)
                if not ((MV * 1920 + MW * 1555 + MV * MW) % 16777213 == 5960240) then
                    ME_14 = not MB()
                end
                if ME_14 then
                    return false
                end
                if MG_4 then
                    Gd("Picked up " .. MF_8)
                else
                    Gd("Could not pick up " .. MF_8)
                end
                return MG_4
            end
        end
        if Gr.chiller then
            MB_6, ME_15 = Gg("Repair")
            local MF_9 = MB_6 and MB_6.Enabled and ME_15 and ME_15:GetAttribute("IsRepaired") ~= true
            if not MF_9 then
                Gr.repairTries = 0
            else
                local MG_6 = (Gr.repairTries or 0) < 3
                if MG_6 then
                    local MF_11 = os.clock()
                    MG_6 = MF_11 >= (Gr.repairAt or 0)
                end
                if MG_6 then
                    local MF_12 = Gr.repairTries or 0
                    Gr.repairTries = MF_12 + 1
                    Gr.repairAt = os.clock() + 10
                    Fb(MB_6, nil, MA)
                    if ME_15:GetAttribute("IsRepaired") == true then
                        Gr.repairTries = 0
                        Gd("Repaired the chiller")
                    else
                        Gd("Chiller would not repair, leaving it alone")
                    end
                    return true
                end
            end
        end
        local MB_7 = Gr.drinks and Fv()
        if MB_7 and MD_15 then
            local MB_8 = Gg("Get")
            if MB_8 and MB_8.Enabled then
                if Fb(MB_8, FP, MA) then
                    Gd("Took a softdrink from the chiller")
                end
                return true
            end
        end
        local MB_9 = Gr.trash and not FJ(MC)
        if MB_9 then
            local MB_10 = Gj()
            if MB_10 then
                if Fb(MB_10, nil, MA) then
                    Gd("Cleaned up trash")
                end
                return true
            end
        end
        MA = Gr.restore and State.Anchor
        if MA then
            Gb()
        end
    end
    Fa = fn1043
    Gr.Refresh = fn1731
    Gr.SetFood = fn1693
    Gr.SetDrinks = fn1348
    Gr.SetChiller = fns.fn233
    Gr.SetWash = fn1398
    Gr.SetTrash = fn1077
    Gr.SetRestore = fn1170
    Gr.SetDelay = fn1132
    GG = fn1683
else
    GG = fns.fn591
    Gr = function()
        local generation, My
        local ME_7
        generation = Gr.generation
        My = E9()
        local function MA()
            local Mr = Fg() and not Gr.stopped and Gr.generation == generation and E9() == My
            return Mr
        end
        local function MB()
            local Mt = Gr.food and not Gr.stopped and Gr.generation == generation and E9() == My
            return Mt
        end
        local MB_1
        if not FX(Gr, { "food", "drinks", "wash", "trash", "chiller" }) then
            return
        end
        local MC = Gv()
        if not MC then
            Gd("Your karinderya was not found")
            return
        end
        local MD = Gr.wash and F9()
        local Mz = MD
        local MD_1 = Mz and Mz:GetAttribute("HasDishes") == true
        if MD_1 then
            local MD_2 = Gr.washWaitingAt or os.clock()
            Gr.washWaitingAt = MD_2
        else
            Gr.washWaitingAt = nil
        end
        local MD_3 = Mz and Gr.washWaitingAt and Fv()
        if MD_3 then
            local ME_1 = os.clock() - Gr.washWaitingAt >= 10
            local ML = if ME_1 then 1 else 0
            local MJ = 276 * ML + 479 * (1 - ML)
            local MK = 3511 * ML + 3463 * (1 - ML)
            if not ((MJ * 1638 + MK * 2696 + MJ * MK) % 16777213 == 10886780) then
                ME_1 = not Gr.food
            end
            if not ME_1 then
                ME_1 = #Gu("GetFood") == 0
            end
            MD_3 = ME_1
        end
        if MD_3 then
            Gd("Moving to wash dishes")
            local MD_4 = Fb(Mz, function()
                local Mv = not Mz.Parent or Mz:GetAttribute("HasDishes") ~= true
                return Mv
            end, MA)
            if not MA() then
                return false
            end
            if MD_4 then
                Gr.washWaitingAt = nil
                Gd("Finished washing dishes")
            else
                Gr.washWaitingAt = os.clock()
                Gd("Wash not confirmed")
            end
            return MD_4
        end
        local MD_5 = Gr.food and Gi()
        if MD_5 then
            local MD_6 = Gu("Serve")[1]
            if MD_6 then
                local ME_2 = Fb(MD_6, function()
                    return not Gi()
                end, MB)
                local MF_1 = not Fg() or not MB()
                if MF_1 then
                    return false
                end
                if ME_2 then
                    State.Served = State.Served + 1
                    Gd("Served " .. tostring(MD_6.ActionText))
                else
                    Gd("Delivery not confirmed for " .. tostring(MD_6.ActionText))
                end
                return ME_2
            end
            Gd("Holding food with no table waiting for it")
        end
        local MD_7 = Gu("GiveSoftdrink")[1]
        local ME_3 = Gr.drinks and FP()
        if ME_3 then
            if MD_7 then
                if Fb(MD_7, function()
                    return not FP()
                end, MA) then
                    Gd("Handed over a softdrink")
                end
                return true
            end
        end
        local ME_4 = Gr.food and Fv()
        if ME_4 then
            local ME_5 = Gu("GetFood")[1]
            if ME_5 then
                local MF_2 = tostring(ME_5.ActionText)
                local MG_1 = Fb(ME_5, Gi, MB)
                local ME_6 = not Fg()
                local MX = if ME_6 then 1 else 0
                local MV = 1125 * MX + 2186 * (1 - MX)
                local MW = 1418 * MX + 3204 * (1 - MX)
                if not ((MV * 1920 + MW * 1555 + MV * MW) % 16777213 == 5960240) then
                    ME_6 = not MB()
                end
                if ME_6 then
                    return false
                end
                if MG_1 then
                    Gd("Picked up " .. MF_2)
                else
                    Gd("Could not pick up " .. MF_2)
                end
                return MG_1
            end
        end
        if Gr.chiller then
            MB_1, ME_7 = Gg("Repair")
            local MF_3 = MB_1 and MB_1.Enabled and ME_7 and ME_7:GetAttribute("IsRepaired") ~= true
            if not MF_3 then
                Gr.repairTries = 0
            else
                local MG_3 = (Gr.repairTries or 0) < 3
                if MG_3 then
                    local MF_5 = os.clock()
                    MG_3 = MF_5 >= (Gr.repairAt or 0)
                end
                if MG_3 then
                    local MF_6 = Gr.repairTries or 0
                    Gr.repairTries = MF_6 + 1
                    Gr.repairAt = os.clock() + 10
                    Fb(MB_1, nil, MA)
                    if ME_7:GetAttribute("IsRepaired") == true then
                        Gr.repairTries = 0
                        Gd("Repaired the chiller")
                    else
                        Gd("Chiller would not repair, leaving it alone")
                    end
                    return true
                end
            end
        end
        local MB_2 = Gr.drinks and Fv()
        if MB_2 and MD_7 then
            local MB_3 = Gg("Get")
            if MB_3 and MB_3.Enabled then
                if Fb(MB_3, FP, MA) then
                    Gd("Took a softdrink from the chiller")
                end
                return true
            end
        end
        local MB_4 = Gr.trash and not FJ(MC)
        if MB_4 then
            local MB_5 = Gj()
            if MB_5 then
                if Fb(MB_5, nil, MA) then
                    Gd("Cleaned up trash")
                end
                return true
            end
        end
        MA = Gr.restore and State.Anchor
        if MA then
            Gb()
        end
    end
    FR = fn1043
    FJ.Refresh = fn1731
    FJ.SetFood = fn1693
    FJ.SetDrinks = fn1348
    FJ.SetChiller = fns.fn233
    FJ.SetWash = fn1398
    FJ.SetTrash = fn1077
    FJ.SetRestore = fn1170
    FJ.SetDelay = fn1132
    Fa = fn1683
end
FO = fn944
GC = fn1037
GD = {
    { category = "Tables", module = "FurnitureConfig", path = { "Dining", "Tables" } },
    { category = "Chairs", module = "FurnitureConfig", path = { "Dining", "Chairs" } },
    { category = "Stoves", module = "FurnitureConfig", path = { "Kitchen", "Stoves" } },
    { category = "Paints", module = "PaintConfig" },
    { category = "Materials", module = "MaterialConfig" },
    { category = "Tiles", module = "TileConfig" }
}
Gw = fns.fn164
F2 = fn1560
FE = fn950
Fk = fns.fn612
Go = fns.fn243
FN = fn1511
Ge.Refresh = fn1327
Ge.SetIngredients = fns.fn563
Ge.SetIngredientTargets = fns.fn64
Ge.SetTargetStock = fn1137
Ge.SetReserve = fns.fn640
Ge.SetStock = fns.fn632
Ge.SetCategoryItems = fns.fn344
Ge.WantsAnyStock = fn1362
Ge.SetTables = fns.fn81
Ge.SetDelay = fn1119
Gt = fn1524
GI = fns.fn611
F3.SetEnabled = fn1347
F3.SetItems = fn1212
F3.SetSecond = fn1285
F3.SetDelay = fns.fn253
Fu = fns.fn492
Gm = fns.fn699
FU = fn1067
GH = fns.fn221
Fw = fns.fn669
Gp = fns.fn140
GB = fns.fn718
Fm = fn1391
FZ.Refresh = fns.fn90
FZ.SetRoll = fn1131
FZ.SetRerolls = fn1006
FZ.SetHire = fn1152
FZ.SetRoleTargets = fn1743
FZ.SetApplications = fn1350
FZ.SetWake = fn1029
FZ.SetDelay = fns.fn478
Gc = function()
    local Re = E9()
    local Backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
    local Rg = Re and Re:FindFirstChildOfClass("Humanoid")
    local Rc = Rg
    if not Re or not Backpack or not Rc then
        return false
    end
    local weapon = FW.weapon
    local Tool = Re:FindFirstChildOfClass("Tool")
    local Re_1 = Tool
    if Re_1 then
        Re_1 = weapon == "" or Tool.Name == weapon
    end
    if Re_1 then
        return true
    end
    local Re_2 = weapon ~= "" and Backpack:FindFirstChild(weapon)
    local Rg_4 = Re_2
    local Rm = if Rg_4 then 1 else 0
    local Rk = 491 * Rm + 1150 * (1 - Rm)
    local Rl = 41 * Rm + 1979 * (1 - Rm)
    if not ((Rk * 3684 + Rl * 944 + Rk * Rl) % 16777213 == 1867679) then
        Rg_4 = Backpack:FindFirstChildOfClass("Tool")
    end
    local Rd = Rg_4
    local Re_3 = Rd and Rd:IsA("Tool")
    if Re_3 then
        return (pcall(function()
            Rc:EquipTool(Rd)
        end))
    end
    return Tool ~= nil
end
Fl = fn1548
GJ = fns.fn251
FW.Refresh = fns.fn224
FW.SetRunaways = fns.fn486
F0.Track(fns.fn112)
Fs = fns.fn25
local function GN()
    local YT
    local Zi
    local onDiscord
    local Zz
    local Y5
    local Zk
    local Zc
    local Zr
    YT = nil
    Y5 = nil
    Zc = nil
    Zi = nil
    Zk = nil
    onDiscord = nil
    Zr = nil
    Zz = nil
    local YN, YO, YP, YQ, Label9, onAutoPlay, Label6, YV, YW, YX, YY, Label4, Label10, Y0, Label7, Y2, Y3, Options, Y6, Y7, Y8, Label11, Za, Zb, Zd, Toggles, Zf, Label12, Zh, SaveManager, Zl, Zm, Zn, Label13, ThemeManager, Zs, Zt, Zu, Zv, Label8, Label5, Library
    Zi = "https://discord.gg/synapsex"
    Zu = "Karinderya"
    Zb = "https://rscripts.net/@Ouroboros"
    Y2 = "https://ouroboros-hub-rbx.web.app/"
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = Library.Toggles
    Options = Library.Options
    Fi(F0, Library)
    Zm = Fs()
    Y7 = GG()
    YN, Zt = F2()
    Zh = Gt()
    Y0 = GH()
    local ZB = { "Auto" }
    for i, v in ipairs(Fu()) do
        table.insert(ZB, v)
    end
    Zc = function(pt, pu)
        local RM = Fx(setclipboard) and setclipboard
        local RN = RM
        if not RN then
            local RM_1 = Fx(toclipboard) and toclipboard
            RN = RM_1 or nil
        end
        local RM_2 = RN
        if not RM_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        if pcall(RM_2, pt) then
            Library:Notify(pu)
        else
            Library:Notify("Failed to copy")
        end
    end
    onDiscord = function()
        Zc(Zi, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = Zi, Copyable = true }, "|", Zu, "|", "v0.24" },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    YP = {
        [1] = Window:AddTab("Info", "info"),
        [2] = Window:AddTab("Main", "gamepad-2"),
        [3] = Window:AddTab({ Name = "Shop", Icon = "shopping-cart", SingleColumn = true }),
        [4] = Window:AddTab({ Name = "Merchant", Icon = "handshake", SingleColumn = true }),
        [5] = Window:AddTab("Player", "person-standing"),
        [6] = Window:AddTab("Settings", "settings")
    }
    Zv = { [1] = YP[2]:AddSubTab("Service", "utensils"), [2] = YP[2]:AddSubTab("Staff", "users") }
    local function ZA(pH)
        local DiscordGroup = pH:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    ZA(Zv[1])
    ZA(YP[3])
    ZA(YP[4])
    ZA(Zv[2])
    ZA(YP[5])
    ZA(YP[6])
    Zz = "#ffc9e6"
    YT = "#ff8fd0"
    Zr = "#b9719b"
    Zk = function(pO)
        return (tostring(pO):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
    end
    Y5 = function(pQ, pR)
        return string.format('<font color="%s">%s</font>', pR, Zk(pQ))
    end
    Zn = function(pU)
        local RU_1
        local RR = tonumber(pU) or 0
        local RT = tostring(math.floor(RR))
        repeat
            RT, RU_1 = string.gsub(RT, "^(-?%d+)(%d%d%d)", "%1,%2")
        until RU_1 == 0
        return RT
    end
    YV = function(p3)
        return table.concat(p3, Y5("   |   ", Zr))
    end
    Zd = utf8.char(8369)
    Y3 = { "Assigner", "Dishwasher", "Server" }
    YW = function(p9)
        return string.format('<font color="%s"><b>%s</b></font>', YT, Zk(p9))
    end
    Zf = function(qd, qe, qf)
        local RW = Y5(qd .. ":", Zz)
        local RX = qf or YT
        return RW .. " " .. Y5(qe, RX)
    end
    Za = function()
        local RZ = Gv()
        if not RZ then
            return Zf("Stall", "not found", Zr)
        end
        local R_ = RZ:GetAttribute("IsForceClosed") ~= true
        local Name = RZ.Name
        local R__1 = R_ and " (OPEN)" or " (CLOSED)"
        return YV({ Zf("Stall", Name .. R__1), Zf("Cash", Zd .. Zn(FH())), Zf("Hearts", Zn(GA())) })
    end
    YX = function()
        local R6 = E9()
        if R6 then
            for i, child in ipairs(R6:GetChildren()) do
                if child:IsA("Accessory") then
                    if child:GetAttribute("IsFood") then
                        return child.Name
                    end
                    if child:GetAttribute("IsDirty") then
                        return "dirty dishes"
                    end
                    if child:GetAttribute("IsSoftdrink") then
                        return child.Name
                    end
                end
            end
        end
        return "nothing"
    end
    YY = function()
        return YV({
            Zf("Ready", tostring(#Gu("GetFood"))),
            Zf("To Serve", tostring(#Gu("Serve"))),
            Zf("Dirty", tostring(#Gu("GetDirty"))),
            Zf("Carrying", YX())
        })
    end
    Label7, Label6, Label5 = nil, nil, nil
    Zs = function()
        local Sl_1
        local Se_1, Se_3
        local Sf_1, Sf_7
        if Label7 then
            Label7:SetText(YV({ Zf("Cash", Zd .. Zn(FH())), Zf("Hearts", Zn(GA())) }))
        end
        if Label6 then
            Se_1, Sf_1 = FD("MerchantRemotes/GetMerchantStock")
            local Sg_1 = Se_1
            local Se_2 = {}
            local Sh = 0
            if Sg_1 then
                Sg_1 = type(Sf_1) == "table"
            end
            if Sg_1 then
                for i, v in ipairs(Sf_1) do
                    local Sf_2 = type(v) == "table" and v.Key
                    if Sf_2 then
                        local Sf_3 = v.Name or v.Key
                        local Sg_2 = tostring(Sf_3)
                        local rep = string.rep
                        local clamp = math.clamp
                        local Sj = tonumber(v.Stars) or 1
                        local Sj_1
                        local Sk = rep("*", clamp(Sj, 1, 5))
                        local Sf_5 = tonumber(v.Stock) or 0
                        if v.Owned == true then
                            Sj_1, Sl_1 = "Owned", Zr
                        elseif Sf_5 > 0 then
                            local Sf_6 = v.Price or 0
                            Sj_1, Sl_1 = "In Stock x" .. Sf_5 .. " - " .. Zd .. Zn(Sf_6), YT
                            Sh = Sh + 1
                        else
                            Sj_1, Sl_1 = "Out of Stock", Zr
                        end
                        table.insert(Se_2, Y5(Sk .. " " .. Sg_2 .. " - ", Zz) .. Y5(Sj_1, Sl_1))
                    end
                end
            end
            if #Se_2 == 0 then
                Label6:SetText(Y5("Merchant stock unavailable", Zr))
            else
                if Sh == 0 then
                    table.insert(Se_2, Y5("Nothing in stock, waiting for a restock", Zr))
                end
                Label6:SetText(table.concat(Se_2, "\n"))
            end
        end
        if Label5 then
            Se_3, Sf_7 = FD("Merchant2Remotes/GetMerchant2Stock")
            local Sg_3 = Se_3 and type(Sf_7) == "table"
            if Sg_3 then
                local Se_4 = tonumber(Sf_7.Stock) or 0
                if Se_4 > 0 then
                    local Se_5 = Sf_7.Price or 0
                    Label5:SetText(Zf("Second merchant", "In Stock x" .. Se_4 .. " - " .. Zn(Se_5) .. " hearts"))
                else
                    Label5:SetText(Zf("Second merchant", "Out of Stock", Zr))
                end
            else
                Label5:SetText(Zf("Second merchant", "not here", Zr))
            end
        end
    end
    Y8, Label4 = nil, nil
    YQ = function()
        local Sx_1
        local Sw_1
        Sw_1, Sx_1 = Fw()
        local Sy = Gp(Sw_1)
        if Y8 then
            for i, v in ipairs(Fu()) do
                local Sw_2 = Y8[v]
                if Sw_2 then
                    local Sz_1 = FZ.roleTargets[v]
                    local SA_1 = {}
                    if Sz_1 then
                        for k in pairs(Sz_1) do
                            table.insert(SA_1, k)
                        end
                    end
                    table.sort(SA_1)
                    local Sz_2 = Sy[v]
                    local SC = Sz_2 and "Hired (" .. Sz_2 .. ")" or "Not Hired"
                    local SC_1 = #SA_1 > 0 and table.concat(SA_1, ", ")
                    local SA_2 = SC_1 or "None"
                    local SA_3 = Y5(v .. ":", Zz)
                    local Sz_3 = Sz_2 and YT or Zr
                    Sw_2:SetText(SA_3 .. " " .. Y5(SC, Sz_3) .. " " .. Y5("(Targets: " .. SA_2 .. ")", Zr))
                end
            end
        end
        if Label4 then
            local Sw_3 = {}
            for i, v in ipairs(Sx_1) do
                if type(v) == "table" then
                    local Sx_2 = v.Template or v.Name
                    local Sy_1 = tostring(Sx_2)
                    local Sx_3 = FU(v.Template)
                    local insert = table.insert
                    local SA_4 = Y5(Sy_1, YT)
                    local SB_3 = Sx_3 or "?"
                    insert(Sw_3, SA_4 .. " " .. Y5("(" .. tostring(SB_3) .. ")", Zz))
                end
            end
            if #Sw_3 == 0 then
                Label4:SetText(Y5("No waiting workers at spawn", Zr))
            else
                Label4:SetText(table.concat(Sw_3, Y5("  |  ", Zr)))
            end
        end
    end
    Y6 = function()
        local SZ_1
        local SY_1
        local SX_1
        local SW = {}
        SY_1, SX_1, SZ_1 = FD("WorkerRemotes/GetWaitingWorkers")
        local SX_2 = SY_1 and type(SZ_1) == "table"
        if SX_2 then
            for k, v in pairs(SZ_1) do
                local SX_3 = type(v) == "table" and v.Role
                local SY_2 = SX_3
                if not SY_2 then
                    local SX_4 = type(k) == "string" and k
                    SY_2 = SX_4 or nil
                end
                local SX_5 = SY_2
                local SY_3 = type(v) == "table"
                if SY_3 then
                    SY_3 = v.Template or v.Name
                end
                local SZ_4 = SY_3 or nil
                if type(SX_5) == "string" then
                    local S4 = if SZ_4 then 1 else 0
                    local S2 = 2221 * S4 + 1958 * (1 - S4)
                    local S3 = 918 * S4 + 326 * (1 - S4)
                    if not ((S2 * 484 + S3 * 3780 + S2 * S3) % 16777213 == 6583882) then
                        SZ_4 = "hired"
                    end
                    SW[SX_5] = tostring(SZ_4)
                end
            end
        end
        local SX_6 = {}
        for i, v in ipairs(Y3) do
            local SY_4 = SW[v]
            local insert = table.insert
            local S_ = SY_4 or "none"
            local SY_5 = SY_4 and YT or Zr
            insert(SX_6, Zf(v, S_, SY_5))
        end
        return Y5("Workers:", Zz) .. " " .. YV(SX_6)
    end
    YO = function()
        local Th = {}
        for k, v in pairs(Fr()) do
            local Ti_1 = type(v) == "table" and type(v.RequiredIngredients) == "table"
            if Ti_1 then
                for i, v in ipairs(v.RequiredIngredients) do
                    Th[v] = true
                end
            end
        end
        local Ti_2 = {}
        for k in pairs(Th) do
            if FQ(k) <= 0 then
                table.insert(Ti_2, k)
            end
        end
        table.sort(Ti_2)
        if #Ti_2 == 0 then
            return Zf("Stock", "All in stock")
        end
        return Zf("Stock", "out of " .. table.concat(Ti_2, ", "), Zr)
    end
    Zl = function()
        return YV({
            Zf("Seated", Zn(State.Assigned)),
            Zf("Served", Zn(State.Served)),
            Zf("Rejected", Zn(State.Rejected)),
            Zf("Bought", Zn(State.Bought))
        })
    end
    Label13, Label12, Label11, Label10, Label9, Label8 = nil, nil, nil, nil, nil, nil
    local function ZA_1()
        local StatusGroup = Zv[1]:AddLeftGroupbox("Status", "activity")
        StatusGroup:AddLabel(YW("Auto Play Status"), true)
        Label13 = StatusGroup:AddLabel(Za(), true)
        StatusGroup:AddLabel(Zf("Scope", "My Karinderya Only"), true)
        Label12 = StatusGroup:AddLabel(YY(), true)
        Label11 = StatusGroup:AddLabel(Y5("Workers:", Zz), true)
        Label10 = StatusGroup:AddLabel(Zf("Stock", "checking"), true)
        Label9 = StatusGroup:AddLabel(Zl(), true)
        Label8 = StatusGroup:AddLabel(Zf("Activity", State.Status), true)
    end
    onAutoPlay = function(sy)
        GF.SetEnabled(sy)
        Gr.SetFood(sy)
        Gr.SetDrinks(sy)
    end
    local function ZB_2()
        local AutoPlayGroup = Zv[1]:AddLeftGroupbox("Auto Play", "play")
        AutoPlayGroup:AddToggle("AutoPlay", {
            Text = "Auto Play",
            Default = false,
            Tooltip = "Seats customers at the counter, carries cooked plates to their table, and hands out the softdrinks they ask for.",
            Callback = onAutoPlay
        })
        AutoPlayGroup:AddToggle("AutoHitRunaways", {
            Text = "Auto Hit Runaways",
            Default = false,
            Tooltip = "Hits customers who bolt without paying.",
            Callback = function(sH)
                FW.SetRunaways(sH)
            end
        })
        AutoPlayGroup:AddDropdown("AssignPriority", {
            Text = "Table Priority",
            Values = { "First Available", "Lowest Table Number", "Highest Table Number" },
            Default = "First Available",
            Multi = false,
            AllowNull = false,
            Callback = function(sL)
                GF.SetPriority(sL)
            end
        })
        AutoPlayGroup:AddToggle("AssignNeedsIngredients", {
            Text = "Only Seat Orders You Can Cook",
            Default = true,
            Tooltip = "Waits instead of seating while an ingredient for the order is missing.",
            Callback = function(sO)
                GF.SetRequireIngredients(sO)
            end
        })
        AutoPlayGroup:AddDivider()
        AutoPlayGroup:AddToggle("ServiceRestore", {
            Text = "Return To Start",
            Default = true,
            Tooltip = "Puts you back where you were once there is nothing left to do.",
            Callback = function(sQ)
                Gr.SetRestore(sQ)
            end
        })
        local RejectingGroup = Zv[1]:AddLeftGroupbox("Rejecting", "user-x")
        RejectingGroup:AddToggle("AutoReject", {
            Text = "Auto Reject Customers",
            Default = false,
            Tooltip = "Turns away whoever is at the counter when they match the filters below.",
            Callback = function(sU)
                Gy.SetEnabled(sU)
            end
        })
        RejectingGroup:AddDropdown("RejectRarities", {
            Text = "Reject Rarities",
            Values = Zm,
            Default = {},
            Multi = true,
            AllowNull = true,
            Tooltip = "Customers of these rarities are rejected on sight.",
            Callback = function(sZ)
                Gy.SetRarities(sZ)
            end
        })
        RejectingGroup:AddToggle("RejectMissing", {
            Text = "Reject Uncookable Orders",
            Default = true,
            Tooltip = "Rejects an order when an ingredient for it is missing.",
            Callback = function(s0)
                Gy.SetMissing(s0)
            end
        })
        RejectingGroup:AddSlider("RejectRunaway", {
            Text = "Max Runaway Chance",
            Default = 100,
            Min = 0,
            Max = 100,
            Rounding = 0,
            Suffix = "%",
            Tooltip = "Customers above this runaway chance are rejected.",
            Callback = function(s2)
                Gy.SetMaxRunaway(s2)
            end
        })
        RejectingGroup:AddSlider("RejectPrice", {
            Text = "Min Order Price",
            Default = 0,
            Min = 0,
            Max = 5000,
            Rounding = 0,
            Suffix = " cash",
            Tooltip = "Orders worth less than this are rejected.",
            Callback = function(s4)
                Gy.SetMinPrice(s4)
            end
        })
        local CleaningGroup = Zv[1]:AddRightGroupbox("Cleaning", "brush-cleaning")
        CleaningGroup:AddToggle("AutoWash", {
            Text = "Auto Wash Dishes",
            Default = false,
            Tooltip = "Works the sink whenever it is holding dirty dishes.",
            Callback = function(s7)
                Gr.SetWash(s7)
            end
        })
        CleaningGroup:AddToggle("AutoTrash", {
            Text = "Auto Clean Trash",
            Default = false,
            Tooltip = "Sweeps up the trash that spawns around the street.",
            Callback = function(s9)
                Gr.SetTrash(s9)
            end
        })
        CleaningGroup:AddDivider()
        CleaningGroup:AddToggle("AutoRepairChiller", {
            Text = "Auto Repair Chiller",
            Default = false,
            Tooltip = "Repairs the chiller so drinks can be taken again.",
            Callback = function(tb)
                Gr.SetChiller(tb)
            end
        })
    end
    local function ZC()
        local AutoBuyGroup = YP[3]:AddLeftGroupbox("Auto Buy", "shopping-bag")
        AutoBuyGroup:AddToggle("AutoShopStock", {
            Text = "Auto Buy Shop Items",
            Default = false,
            Tooltip = "Buys the items you tick below whenever the shop restocks them.",
            Callback = function(tg)
                Ge.SetStock(tg)
            end
        })
        AutoBuyGroup:AddSlider("ShopReserve", {
            Text = "Keep Cash Above",
            Default = 0,
            Min = 0,
            Max = 1000000,
            Rounding = 0,
            Suffix = " cash",
            Tooltip = "Buying stops before your cash drops under this amount.",
            Callback = function(tk)
                Ge.SetReserve(tk)
            end
        })
        for i, v in ipairs(Zt) do
            local TI = v
            local Tz = "ShopItems" .. TI
            local TB = YN[TI] or {}
            AutoBuyGroup:AddDropdown(Tz, {
                Text = TI,
                Values = TB,
                Default = {},
                Multi = true,
                AllowNull = true,
                Searchable = true,
                Tooltip = "Tick the " .. string.lower(TI) .. " to buy when the shop has them in stock.",
                Callback = function(tq)
                    Ge.SetCategoryItems(TI, tq)
                end
            })
        end
        local DiningPlotGroup = YP[3]:AddLeftGroupbox("Dining Plot", "table-2")
        DiningPlotGroup:AddToggle("AutoUnlockTables", {
            Text = "Auto Buy Table Slots",
            Default = false,
            Tooltip = "Unlocks the locked table spots in your dining area.",
            Callback = function(tu)
                Ge.SetTables(tu)
            end
        })
        DiningPlotGroup:AddSlider("ShopDelay", {
            Text = "Shop Check Delay",
            Default = 6,
            Min = 2,
            Max = 60,
            Rounding = 0,
            Suffix = "s",
            Callback = function(tw)
                Ge.SetDelay(tw)
            end
        })
        local GroceriesGroup = YP[3]:AddLeftGroupbox("Groceries", "carrot")
        GroceriesGroup:AddToggle("AutoIngredients", {
            Text = "Auto Buy Ingredients",
            Default = false,
            Tooltip = "Tops every selected ingredient back up to the target stock.",
            Callback = function(tz)
                Ge.SetIngredients(tz)
            end
        })
        GroceriesGroup:AddDropdown("IngredientTargets", {
            Text = "Ingredients",
            Values = Y7,
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Tooltip = "Leave everything unticked to restock every ingredient.",
            Callback = function(tC)
                Ge.SetIngredientTargets(tC)
            end
        })
        GroceriesGroup:AddSlider("IngredientStock", {
            Text = "Target Stock",
            Default = 25,
            Min = 1,
            Max = 200,
            Rounding = 0,
            Callback = function(tE)
                Ge.SetTargetStock(tE)
            end
        })
    end
    local function ZD()
        local MerchantStatusGroup = YP[4]:AddLeftGroupbox("Merchant Status", "store")
        MerchantStatusGroup:AddLabel(YW("Traveling Merchant"), true)
        Label7 = MerchantStatusGroup:AddLabel(Zf("Cash", Zd .. Zn(FH())), true)
        MerchantStatusGroup:AddDivider()
        Label6 = MerchantStatusGroup:AddLabel(Y5("Checking stock...", Zr), true)
        MerchantStatusGroup:AddDivider()
        Label5 = MerchantStatusGroup:AddLabel(Y5("Second merchant: unknown", Zr), true)
        local AutoBuyGroup = YP[4]:AddLeftGroupbox("Auto Buy", "handshake")
        AutoBuyGroup:AddDropdown("MerchantItems", {
            Text = "Merchant Items To Buy",
            Values = Zh,
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Tooltip = "Tick what the merchant should buy for you when it comes back in stock. Nothing ticked buys nothing.",
            Callback = function(tV)
                F3.SetItems(tV)
            end
        })
        AutoBuyGroup:AddToggle("AutoMerchant", {
            Text = "Auto Buy Merchant Items",
            Default = false,
            Tooltip = "Buys the ticked items whenever the merchant has them in stock.",
            Callback = function(tZ)
                F3.SetEnabled(tZ)
            end
        })
        AutoBuyGroup:AddDivider()
        AutoBuyGroup:AddToggle("MerchantSecond", {
            Text = "Include Second Merchant",
            Default = false,
            Tooltip = "The second merchant charges hearts instead of cash.",
            Callback = function(t0)
                F3.SetSecond(t0)
            end
        })
        AutoBuyGroup:AddSlider("MerchantDelay", {
            Text = "Merchant Check Delay",
            Default = 10,
            Min = 3,
            Max = 120,
            Rounding = 0,
            Suffix = "s",
            Callback = function(t2)
                F3.SetDelay(t2)
            end
        })
    end
    local function ZE()
        local WorkerStatusGroup = Zv[2]:AddLeftGroupbox("Worker Status", "users")
        WorkerStatusGroup:AddLabel(YW("Hired & Waiting Staff"), true)
        WorkerStatusGroup:AddLabel(Y5("Current Hired Staff:", Zz), true)
        Y8 = {}
        for i, v in ipairs(Fu()) do
            Y8[v] = WorkerStatusGroup:AddLabel(Zf(v, "Not Hired", Zr), true)
        end
        WorkerStatusGroup:AddDivider()
        WorkerStatusGroup:AddLabel(Y5("Waiting Workers at Spawn:", Zz), true)
        Label4 = WorkerStatusGroup:AddLabel(Y5("No waiting workers at spawn", Zr), true)
        local AutoHireWorkerGroup = Zv[2]:AddRightGroupbox("Auto Hire Worker", "user-plus")
        AutoHireWorkerGroup:AddToggle("AutoHireWorkers", {
            Text = "Auto Hire Worker",
            Default = false,
            Tooltip = "Checks the workers waiting at spawn and hires matching rarities for Assigner, Dishwasher and Server. Leave a role empty to never hire for it.",
            Callback = function(ui)
                FZ.SetHire(ui)
            end
        })
        for i, v in ipairs(Fu()) do
            local TW = v
            AutoHireWorkerGroup:AddDropdown("WorkerTargets" .. TW, {
                Text = TW .. " Target Rarities",
                Values = Y0,
                Default = {},
                Multi = true,
                AllowNull = true,
                Tooltip = "Rarities worth hiring as " .. TW .. ". Nothing ticked means this role is never filled.",
                Callback = function(uo)
                    FZ.SetRoleTargets(TW, uo)
                end
            })
        end
        AutoHireWorkerGroup:AddDivider()
        AutoHireWorkerGroup:AddToggle("AutoRollWorkers", {
            Text = "Auto Reroll Worker",
            Default = false,
            Tooltip = "Rerolls the workers at spawn when none of them match the rarities you picked.",
            Callback = function(ur)
                FZ.SetRoll(ur)
            end
        })
        AutoHireWorkerGroup:AddSlider("WorkerRerolls", {
            Text = "Max Rerolls",
            Default = 5,
            Min = 1,
            Max = 25,
            Rounding = 0,
            Tooltip = "How many rerolls one check is allowed to spend before giving up.",
            Callback = function(ut)
                FZ.SetRerolls(ut)
            end
        })
        local CrewGroup = Zv[2]:AddRightGroupbox("Crew", "badge-check")
        CrewGroup:AddToggle("AutoAcceptStaff", {
            Text = "Auto Accept Job Applications",
            Default = false,
            Tooltip = "Accepts other players applying to work at your karinderya.",
            Callback = function(uw)
                FZ.SetApplications(uw)
            end
        })
        CrewGroup:AddToggle("AutoWakeWorkers", {
            Text = "Auto Wake Sleeping Workers",
            Default = false,
            Tooltip = "Wakes your hired workers whenever they doze off.",
            Callback = function(uy)
                FZ.SetWake(uy)
            end
        })
        CrewGroup:AddSlider("StaffDelay", {
            Text = "Staff Check Delay",
            Default = 4,
            Min = 1,
            Max = 60,
            Rounding = 0,
            Suffix = "s",
            Callback = function(uA)
                FZ.SetDelay(uA)
            end
        })
    end
    local function ZF()
        local u2
        local uD, uE, uF = 0, nil, nil
        u2 = task.spawn(function()
            while not Library.Unloaded do
                pcall(function()
                    if os.clock() >= uD then
                        uD = os.clock() + 5
                        uE = Y6()
                        uF = YO()
                        YQ()
                        Zs()
                    end
                    if Label13 then
                        Label13:SetText(Za())
                    end
                    if Label12 then
                        Label12:SetText(YY())
                    end
                    if Label11 and uE then
                        Label11:SetText(uE)
                    end
                    if Label10 and uF then
                        Label10:SetText(uF)
                    end
                    if Label9 then
                        Label9:SetText(Zl())
                    end
                    if Label8 then
                        Label8:SetText(Zf("Activity", State.Status))
                    end
                end)
                local T2 = false
                repeat
                    local TZ
                    if State.Notifications and #State.Notifications > 0 then
                        TZ = table.remove(State.Notifications, 1)
                        pcall(function()
                            Library:Notify(TZ.text, TZ.time)
                        end)
                    else
                        T2 = true
                    end
                until T2
                task.wait(0.3)
            end
        end)
        F0.Track(function()
            if coroutine.status(u2) ~= "dead" then
                pcall(task.cancel, u2)
            end
        end)
    end
    ZA_1()
    ZB_2()
    ZC()
    ZD()
    ZE()
    ZF()
    local function ZA_2()
        local Us
        local Uu
        local Uz
        local Ut
        Us = nil
        Ut = nil
        Uu = nil
        Uz = nil
        local Up, Label2, Label3, Uv, Uw, Ux, Label, UA, UB
        Uu = function(u7)
            return (tostring(u7):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        Us = function(u9, va)
            return string.format('<font color="%s">%s</font>', va, Uu(u9))
        end
        Ux = function(vd, ve, vf)
            return string.format("<b>%s</b> %s %s", vd, Us("-", "#5a6070"), Us(ve, vf))
        end
        Uv = "#7fd47f"
        Up = "#e8a34d"
        local UC = {}
        local UD = "#6ec1ff"
        local UE = "#8b93a3"
        if not Gx:FindFirstChild("GlobalTrashSpawner") then
            table.insert(UC, "street trash")
        end
        local UK = if not Gv() then 1 else 0
        if UK == 1 then
            table.insert(UC, "your karinderya plot")
        end
        if not FI("CounterRemotes/GetCounterInfo", "RemoteFunction") then
            table.insert(UC, "the counter")
        end
        if not FI("ShopRemotes/GetShopInfo", "RemoteFunction") then
            table.insert(UC, "shop buying")
        end
        if not FI("WorkerRemotes/GetWaitingWorkers", "RemoteFunction") then
            table.insert(UC, "hiring")
        end
        if not FI("HitRunawayEvent", "RemoteEvent") then
            table.insert(UC, "runaways")
        end
        local UG = #UC == 0 and "ready"
        local UN = if UG then 1 else 0
        local UL = 952 * UN + 1083 * (1 - UN)
        local UM = 3063 * UN + 1986 * (1 - UN)
        if not ((UL * 1304 + UM * 2138 + UL * UM) % 16777213 == 10706078) then
            UG = "limited: " .. table.concat(UC, ", ")
        end
        UB = "Unknown"
        local UC_1 = UG
        pcall(function()
            local T5_1
            local T4_1
            if Fx(identifyexecutor) then
                T5_1, T4_1 = identifyexecutor()
                local T6 = T5_1 ~= ""
                local T7 = type(T5_1) == "string" and T6
                if T7 then
                    local T6_1 = type(T4_1) == "string" and T4_1 ~= "" and T5_1 .. " " .. T4_1
                    UB = T6_1 or T5_1
                end
            end
        end)
        Ut = os.clock()
        UA = function()
            local Uc = math.floor(os.clock() - Ut)
            if Uc < 60 then
                return Uc .. "s"
            elseif Uc < 3600 then
                return string.format("%dm %ds", Uc // 60, Uc % 60)
            else
                return string.format("%dh %dm", Uc // 3600, Uc % 3600 // 60)
            end
        end
        local UserGroup = YP[1]:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(Ux("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, Uv), true)
        UserGroup:AddLabel(Ux("UserId", tostring(LocalPlayer.UserId), UD), true)
        UserGroup:AddLabel(Ux("Executor", UB .. "  " .. UC_1, Uv), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(Ux("Session", UA(), Up), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                Zc(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                Zc("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = YP[1]:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(Ux("Game", Zu, UD), true)
        Label2 = SessionGroup:AddLabel(Ux("Players", "0/0", Uv), true)
        Uw = tostring(game.JobId)
        local UD_1 = #Uw > 18 and string.sub(Uw, 1, 18) .. "..."
        local UF_2 = UD_1
        local UN_1 = if UF_2 then 1 else 0
        local UL_1 = 1364 * UN_1 + 332 * (1 - UN_1)
        local UM_1 = 1299 * UN_1 + 507 * (1 - UN_1)
        if not ((UL_1 * 505 + UM_1 * 3431 + UL_1 * UM_1) % 16777213 == 6917525) then
            UF_2 = Uw
        end
        local UD_2 = UF_2
        SessionGroup:AddLabel(Ux("Job", UD_2, UE), true)
        Label = SessionGroup:AddLabel(Ux("Ping", "0 ms", Up), true)
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
                Zc(Uw, "Copied Job ID")
            end
        })
        Uz = task.spawn(function()
            local Ui_1
            local Uh_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(Ux("Session", UA(), Up))
                Label2:SetText(Ux("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), Uv))
                Uh_1, Ui_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local Uh_2 = Uh_1 and Ui_1 .. " ms" or "n/a"
                Label:SetText(Ux("Ping", Uh_2, Up))
            end
        end)
        F0.Track(function()
            local Uo = if coroutine.status(Uz) ~= "dead" then 1 else 0
            if Uo == 1 then
                task.cancel(Uz)
            end
        end)
        local SocialsGroup = YP[1]:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                Zc(Zb, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                Zc(Y2, "Copied website link")
            end
        })
    end
    ZA_2()
    local function ZA_3()
        local wv
        local wx
        local wy
        local ww
        local MovementGroup = YP[5]:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = YP[5]:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        wy = {}
        wx = {}
        local wu = {}
        ww = {}
        wv = {}
        local function wz()
            for k, v in pairs(wv) do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(wv)
        end
        local function wD()
            for k, v in pairs(ww) do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(ww)
        end
        local function wH()
            for k, v in pairs(wx) do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(wx)
        end
        local function wL(wM)
            local Vb = if not wM:IsA("ProximityPrompt") then 1 else 0
            if Vb == 1 then
                return
            end
            if wy[wM] == nil then
                wy[wM] = { HoldDuration = wM.HoldDuration }
            end
            wM.HoldDuration = 0
        end
        local function wO()
            for k, v in pairs(wy) do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                end
            end
            table.clear(wy)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                wH()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                wD()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                wz()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for i, descendant in ipairs(Workspace:GetDescendants()) do
                    local Vv = if descendant:IsA("ProximityPrompt") then 1 else 0
                    if Vv == 1 then
                        pcall(wL, descendant)
                    end
                end
            else
                wO()
            end
        end)
        table.insert(wu, Workspace.DescendantAdded:Connect(function(w6)
            local Vw = Toggles.InstantProximityPrompt.Value and w6:IsA("ProximityPrompt")
            if Vw then
                pcall(wL, w6)
            end
        end))
        table.insert(wu, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    if descendant:IsA("BasePart") then
                        if wv[descendant] == nil then
                            wv[descendant] = descendant.CanCollide
                        end
                        descendant.CanCollide = false
                    end
                end
            end
        end))
        table.insert(wu, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local VO = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and VO then
                VO:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(wu, RunService.RenderStepped:Connect(function(xt)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local VU = Character and Character:FindFirstChildOfClass("Humanoid")
            local VV = Character
            if VV then
                VV = Character:FindFirstChild("HumanoidRootPart")
            end
            local VT_1 = VV
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and VU then
                if ww[VU] == nil then
                    ww[VU] = VU.WalkSpeed
                end
                VU.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and VT_1 and VU and CurrentCamera then
                if wx[VU] == nil then
                    wx[VU] = VU.PlatformStand
                end
                VU.PlatformStand = true
                local VV_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        VV_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        VV_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        VV_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        VV_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        VV_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        VV_4 -= Vector3.new(0, 1, 0)
                    end
                end
                VT_1.AssemblyLinearVelocity = Vector3.zero
                if VV_4.Magnitude > 0 then
                    VT_1.CFrame = VT_1.CFrame + VV_4.Unit * Options.FlySpeed.Value * xt
                end
            end
        end))
        F0.Track(function()
            for i, v in ipairs(wu) do
                v:Disconnect()
            end
            wz()
            wD()
            wH()
            wO()
        end)
    end
    ZA_3()
    local function ZA_4()
        local Xh, Xi, Xj, Xk, Xl, Xm, Xn, Label, Xp, Xq, Xr, Xs, Xt, Xu
        Xp = {}
        Xj = {}
        Xu = nil
        Xr = 0
        Xh = 0
        Xl = false
        Xm = os.clock()
        local MenuGroup = YP[6]:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        Xs = function()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local V9 = not CurrentCamera
            local Wd = if V9 then 1 else 0
            local Wb = 3089 * Wd + 3131 * (1 - Wd)
            local Wc = 1738 * Wd + 3644 * (1 - Wd)
            if not ((Wb * 1226 + Wc * 3809 + Wb * Wc) % 16777213 == 15775838) then
                V9 = not Fx(VirtualUser.CaptureController)
            end
            if not V9 then
                V9 = not Fx(VirtualUser.ClickButton2)
            end
            if V9 then
                return false
            end
            local V9_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not V9_1 then
                return false
            end
            Xh += 1
            Xm = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. Xh)
            end)
            return true
        end
        Xn = function(yc)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not yc)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not yc
                end
            end)
            if not yc then
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
        Xk = function(ys)
            local Wo = ys.ClassName == "ParticleEmitter" or ys.ClassName == "Trail"
            local Ws = if Wo then 1 else 0
            local Wq = 1441 * Ws + 1661 * (1 - Ws)
            local Wr = 1213 * Ws + 1302 * (1 - Ws)
            if not ((Wq * 1067 + Wr * 1367 + Wq * Wr) % 16777213 == 4943651) then
                Wo = ys.ClassName == "Smoke"
            end
            if not Wo then
                Wo = ys.ClassName == "Fire"
            end
            if not Wo then
                Wo = ys.ClassName == "Sparkles"
            end
            if not Wo then
                Wo = ys.ClassName == "Explosion"
            end
            if not Wo then
                Wo = ys.ClassName == "Beam"
            end
            if Wo then
                if Xp[ys] == nil then
                    Xp[ys] = ys.Enabled
                end
                pcall(function()
                    ys.Enabled = false
                end)
            end
        end
        Xi = function()
            for k, v in pairs(Xp) do
                local Wx = k
                local Wz = v
                if Wx.Parent then
                    pcall(function()
                        Wx.Enabled = Wz
                    end)
                end
            end
            table.clear(Xp)
            if Xu then
                pcall(function()
                    settings().Rendering.QualityLevel = Xu.Quality
                end)
                Lighting.GlobalShadows = Xu.Shadows
                Lighting.FogEnd = Xu.Fog
                Xu = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(yH)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not yH)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(yM)
                if yM then
                    if not Xu then
                        Xu = {
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
                    for i, descendant in ipairs(Workspace:GetDescendants()) do
                        pcall(Xk, descendant)
                    end
                else
                    Xi()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        Xn(true)
        local ScriptGroup = YP[6]:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            Xn(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            Xn(true)
        end
        table.insert(Xj, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                Xs()
            end
        end))
        table.insert(Xj, Workspace.DescendantAdded:Connect(function(y4)
            if Toggles.FpsBoost.Value then
                Xk(y4)
            end
        end))
        Xt = function(y8)
            if Xl or Library.Unloaded or not Toggles.AutoReconnect.Value then
                return
            end
            Xl = true
            local WP = Xr
            local WQ_1 = pcall(function()
                if y8 then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not WQ_1 then
                Xl = false
                if not y8 and WP == Xr then
                    task.delay(1.5, function()
                        if WP == Xr then
                            Xt(true)
                        end
                    end)
                end
            end
        end
        table.insert(Xj, TeleportService.TeleportInitFailed:Connect(function(zq)
            local W0
            if zq == LocalPlayer and Xl then
                Xl = false
                W0 = Xr
                task.delay(3, function()
                    if W0 == Xr then
                        Xt(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local W5 = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not W5 then
                return
            end
            table.insert(Xj, W5.ChildAdded:Connect(function(zF)
                if zF.Name == "ErrorPrompt" then
                    Xt(false)
                end
            end))
        end)
        Xq = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    Xn(true)
                end
                local W8 = Toggles.AntiAfk.Value and os.clock() - Xm >= 60
                if W8 then
                    Xs()
                end
                task.wait(1)
            end
        end)
        F0.Track(function()
            Xr += 1
            for i, v in ipairs(Xj) do
                v:Disconnect()
            end
            pcall(task.cancel, Xq)
            Xn(false)
            Xi()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    ZA_4()
    local function ZA_5()
        local Ys, Yt, Yu, Yv
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("OuroborosHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(YP[6])
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/Karinderya")
        local Yw = SaveManager:BuildConfigSection(YP[6])
        Yt = function(z5, z6)
            local Xy_1 = (z5 == "Toggle" and Toggles or Options)[z6]
            local Xx_2 = type(Xy_1) == "table" and Xy_1.Type == z5
            return Xx_2 and Xy_1 or nil
        end
        Yv = function(Af, Ag)
            local Type = Ag.Type
            if Type == "Toggle" then
                return { idx = Af, type = "Toggle", value = Ag.Value == true }
            elseif Type == "Slider" then
                return { idx = Af, type = "Slider", value = tostring(Ag.Value) }
            elseif Type == "Dropdown" then
                return { idx = Af, type = "Dropdown", multi = Ag.Multi == true, value = Ag.Value }
            elseif Type == "Input" then
                local XF = Ag.Value or ""
                return { idx = Af, type = "Input", text = tostring(XF) }
            elseif Type == "ColorPicker" then
                return { idx = Af, type = "ColorPicker", value = Ag.Value:ToHex(), transparency = Ag.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = Af,
                    type = "KeyPicker",
                    mode = Ag.Mode,
                    key = Ag.Value,
                    modifiers = Ag.Modifiers,
                    toggled = Ag.Toggled
                }
            else
                return nil
            end
        end
        Yu = function()
            local XL = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local XM = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if XM then
                        local XM_1 = Yv(k, v)
                        if XM_1 then
                            XL[#XL + 1] = XM_1
                        end
                    end
                end
            end
            table.sort(XL, function(Aq, Ar)
                if Aq.type ~= Ar.type then
                    return Aq.type < Ar.type
                end
                return Aq.idx < Ar.idx
            end)
            return { objects = XL }
        end
        Ys = function(At)
            local X4
            X4 = nil
            local X5 = type(At) ~= "table"
            local X9 = if X5 then 1 else 0
            local X7 = 3688 * X9 + 2887 * (1 - X9)
            local X8 = 1972 * X9 + 1665 * (1 - X9)
            if not ((X7 * 3394 + X8 * 1364 + X7 * X8) % 16777213 == 5702403) then
                X5 = type(At.idx) ~= "string"
            end
            local X9_1 = if X5 then 1 else 0
            local X7_1 = 1394 * X9_1 + 3783 * (1 - X9_1)
            local X8_1 = 3791 * X9_1 + 861 * (1 - X9_1)
            if not ((X7_1 * 3506 + X8_1 * 1826 + X7_1 * X8_1) % 16777213 == 317171) then
                X5 = type(At.type) ~= "string"
            end
            if not X5 then
                X5 = SaveManager.Ignore[At.idx]
            end
            if X5 then
                return false
            end
            X4 = Yt(At.type, At.idx)
            if not X4 then
                return false
            end
            return (pcall(function()
                if At.type == "Input" then
                    if type(At.text) ~= "string" then
                        return
                    end
                    X4:SetValue(At.text)
                elseif At.type == "ColorPicker" then
                    X4:SetValueRGB(Color3.fromHex(At.value), At.transparency)
                elseif At.type == "KeyPicker" then
                    X4:SetValue({ At.key, At.mode, At.modifiers })
                    if At.mode == "Toggle" and At.toggled ~= nil then
                        X4.Toggled = At.toggled
                        X4:Update()
                    end
                else
                    X4:SetValue(At.value)
                end
            end))
        end
        Yw:AddDivider()
        Yw:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        Yw:AddButton("Export Config to Clipboard", function()
            local Yb_1
            local Ya_1
            Ya_1, Yb_1 = pcall(HttpService.JSONEncode, HttpService, Yu())
            if Ya_1 then
                local Ya_2 = Fx(setclipboard) and setclipboard
                local Yc = Ya_2
                if not Yc then
                    local Ya_3 = Fx(toclipboard) and toclipboard
                    local Yd = Ya_3
                    local Yh = if Yd then 1 else 0
                    local Yf = 1074 * Yh + 1933 * (1 - Yh)
                    local Yg = 3028 * Yh + 3344 * (1 - Yh)
                    if not ((Yf * 3531 + Yg * 3415 + Yf * Yg) % 16777213 == 607773) then
                        Yd = nil
                    end
                    Yc = Yd
                end
                local Ya_4 = Yc
                local Yc_1 = type(Ya_4) == "function" and pcall(Ya_4, Yb_1)
                if Yc_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        Yw:AddButton("Import Config from Clipboard Text", function()
            local Yk_1
            local Yi = Options.SaveManager_ImportSource.Value or ""
            local Yi_1
            local Yj = tostring(Yi):match("^%s*(.-)%s*$")
            if Yj == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #Yj > 262144 then
                Library:Notify("That config is too large")
                return
            end
            Yi_1, Yk_1 = pcall(HttpService.JSONDecode, HttpService, Yj)
            local Yj_1 = not Yi_1 or type(Yk_1) ~= "table" or type(Yk_1.objects) ~= "table"
            if Yj_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #Yk_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local Yi_2 = 0
            for i, v in ipairs(Yk_1.objects) do
                if Ys(v) then
                    Yi_2 += 1
                end
            end
            if Yi_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local Yk_2 = Yi_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(Yi_2, Yk_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        if Options.AssignPriority then
            GF.SetPriority(Options.AssignPriority.Value)
        end
        if Toggles.AssignNeedsIngredients then
            GF.SetRequireIngredients(Toggles.AssignNeedsIngredients.Value)
        end
        if Options.RejectRarities then
            Gy.SetRarities(Options.RejectRarities.Value)
        end
        if Toggles.RejectMissing then
            Gy.SetMissing(Toggles.RejectMissing.Value)
        end
        if Options.RejectRunaway then
            Gy.SetMaxRunaway(Options.RejectRunaway.Value)
        end
        if Options.RejectPrice then
            Gy.SetMinPrice(Options.RejectPrice.Value)
        end
        if Toggles.ServiceRestore then
            Gr.SetRestore(Toggles.ServiceRestore.Value)
        end
        if Options.IngredientTargets then
            Ge.SetIngredientTargets(Options.IngredientTargets.Value)
        end
        if Options.IngredientStock then
            Ge.SetTargetStock(Options.IngredientStock.Value)
        end
        for i, v in ipairs(Zt) do
            local Yw_1 = Options["ShopItems" .. v]
            if Yw_1 then
                Ge.SetCategoryItems(v, Yw_1.Value)
            end
        end
        if Options.ShopReserve then
            Ge.SetReserve(Options.ShopReserve.Value)
        end
        if Options.ShopDelay then
            Ge.SetDelay(Options.ShopDelay.Value)
        end
        if Options.MerchantItems then
            F3.SetItems(Options.MerchantItems.Value)
        end
        if Toggles.MerchantSecond then
            F3.SetSecond(Toggles.MerchantSecond.Value)
        end
        if Options.MerchantDelay then
            F3.SetDelay(Options.MerchantDelay.Value)
        end
        for i, v in ipairs(Fu()) do
            local Yw_2 = Options["WorkerTargets" .. v]
            if Yw_2 then
                FZ.SetRoleTargets(v, Yw_2.Value)
            end
        end
        if Options.WorkerRerolls then
            FZ.SetRerolls(Options.WorkerRerolls.Value)
        end
        if Options.StaffDelay then
            FZ.SetDelay(Options.StaffDelay.Value)
        end
        if Toggles.AutoPlay then
            onAutoPlay(Toggles.AutoPlay.Value)
        end
        if Toggles.AutoReject then
            Gy.SetEnabled(Toggles.AutoReject.Value)
        end
        if Toggles.AutoRepairChiller then
            Gr.SetChiller(Toggles.AutoRepairChiller.Value)
        end
        if Toggles.AutoWash then
            Gr.SetWash(Toggles.AutoWash.Value)
        end
        if Toggles.AutoTrash then
            Gr.SetTrash(Toggles.AutoTrash.Value)
        end
        if Toggles.AutoIngredients then
            Ge.SetIngredients(Toggles.AutoIngredients.Value)
        end
        if Toggles.AutoShopStock then
            Ge.SetStock(Toggles.AutoShopStock.Value)
        end
        if Toggles.AutoUnlockTables then
            Ge.SetTables(Toggles.AutoUnlockTables.Value)
        end
        if Toggles.AutoMerchant then
            F3.SetEnabled(Toggles.AutoMerchant.Value)
        end
        if Toggles.AutoHireWorkers then
            FZ.SetHire(Toggles.AutoHireWorkers.Value)
        end
        if Toggles.AutoRollWorkers then
            FZ.SetRoll(Toggles.AutoRollWorkers.Value)
        end
        if Toggles.AutoAcceptStaff then
            FZ.SetApplications(Toggles.AutoAcceptStaff.Value)
        end
        if Toggles.AutoWakeWorkers then
            FZ.SetWake(Toggles.AutoWakeWorkers.Value)
        end
        if Toggles.AutoHitRunaways then
            FW.SetRunaways(Toggles.AutoHitRunaways.Value)
        end
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    ZA_5()
end
GN()
