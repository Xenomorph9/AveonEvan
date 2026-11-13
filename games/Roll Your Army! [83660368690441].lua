local fns = {}
local vM_1, UserInputService, vM_17
local nc
local mU
local LocalPlayer
local ni
local Enemies
local nH
local onReplaceNow
local no
local Toggles
local connection
local nu
local mT
local mZ
local nG
local mG
local nn
local m4
local nM
local mM
local nt
local na
local mS
local nz
local ng
local mY
local nF
local mF
local nm
local m3
local nL
local mL
local m9
local ny
local Troops2
local mX
local VirtualUser
local Label
local onCollectNow
local nK
local onSellSelectedNow
local nr
local m8
local nQ
local mQ
local nx
local ne
local mW
local Workspace
local mD
local nk
local Options
local mJ
local nq
local Rebirths
local nP
local mP
local nw
local nd
local onUpgradeNow
local nj
local m0
local onBuySkillsNow
local Library
local np
local Skills
local connection2
local mO
local nv
function fns.fn4()
    return nM() < mP()
end
function fns.onRscripts()
    nF(nr, "Copied Rscripts profile to clipboard")
end
function fns.fn23(bz)
    local PlacedTroops = LocalPlayer:FindFirstChild("PlacedTroops")
    if not PlacedTroops then
        return 0
    end
    local pV = 0
    for i, child in ipairs(PlacedTroops:GetChildren()) do
        if child.Value == bz then
            pV += 1
        end
    end
    return pV
end
function fns.fn27()
    local Visuals = Workspace:FindFirstChild("Visuals")
    if not Visuals then
        return
    end
    local RolledTroopModel = Visuals:FindFirstChild("RolledTroopModel")
    if RolledTroopModel then
        RolledTroopModel:Destroy()
    end
end
function fns.onOnClientEvent()
    mW()
    local qy = mL("AutoRoll") and not Library.Unloaded
    if qy then
        local qy_1 = mL("RollRequireRoom") and not mM()
        if not qy_1 then
            task.defer(nc)
        end
    end
end
function fns.onInputChanged(jj)
    local UserInputType = jj.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        np = tick()
    end
end
function fns.worker11()
    while not Library.Unloaded do
        if mL("AutoPlace") then
            nH()
        end
        task.wait(nK("PlaceDelay", 0.35))
    end
end
function fns.fn107()
    local Troops = LocalPlayer:FindFirstChild("Troops")
    local pS = Troops and #Troops:GetChildren()
    return pS or 0
end
function fns.fn117(il)
    local DiscordGroup = il:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = nx })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = nx })
end
local function worker13()
    while not Library.Unloaded do
        if mL("AutoRoll") then
            m3()
        end
        task.wait(nK("RollDelay", 0.5))
    end
end
local function fn143(dC, dD, dE)
    local Ground = dC:FindFirstChild("Ground")
    if not Ground then
        return nil
    end
    local rv = mS()
    if dE then
        for i, v in ipairs(dE) do
            table.insert(rv, v)
        end
    end
    local rw = nP(dC)
    local rx = math.floor(Ground.Size.X * 0.5) - 2
    local ru_1 = math.max(math.floor(dD), 1)
    local ry = nK("PlaceMaxPathDistance", 0)
    local rz = {}
    local rL = -rx
    while ru_1 > 0 and rL <= rx or ru_1 <= 0 and rL >= rx do
        local rM = rL
        local rQ_1 = -rx
        while ru_1 > 0 and rQ_1 <= rx or ru_1 <= 0 and rQ_1 >= rx do
            local rR = rQ_1
            local rA_2 = not nd(dC, rM, rR) and mD(rM, rR, dD, rv)
            if rA_2 then
                local rA_3 = nq(rM, rR, rw)
                if ry <= 0 or rA_3 <= ry * ry then
                    table.insert(rz, { pos = Vector3.new(rM, 0, rR), dist = rA_3 })
                end
            end
            rQ_1 += ru_1
        end
        rL += ru_1
    end
    if #rz == 0 and ry > 0 then
        local rQ_2 = -rx
        while ru_1 > 0 and rQ_2 <= rx or ru_1 <= 0 and rQ_2 >= rx do
            local rT = rQ_2
            local rX = -rx
            while ru_1 > 0 and rX <= rx or ru_1 <= 0 and rX >= rx do
                local rY = rX
                local ry_3 = not nd(dC, rT, rY) and mD(rT, rY, dD, rv)
                if ry_3 then
                    table.insert(rz, { pos = Vector3.new(rT, 0, rY), dist = nq(rT, rY, rw) })
                end
                rX += ru_1
            end
            rQ_2 += ru_1
        end
    end
    table.sort(rz, function(d2, d3)
        return d2.dist < d3.dist
    end)
    local ru_2 = rz[1]
    return ru_2 and ru_2.pos or nil
end
local function fn176()
    local qt = mL("RollRequireRoom") and not mM()
    if qt then
        return
    end
    local qt_1 = ng()
    local qu = qt_1 and mL("AutoBuyRoll") and mF(qt_1)
    if qu then
        return
    end
    nc()
end
local function worker10()
    while not Library.Unloaded do
        if mL("AutoReplace") then
            onReplaceNow()
        end
        task.wait(nK("ReplaceDelay", 0.5))
    end
end
local function fn246()
    local u1_1
    local u0_1
    if identifyexecutor then
        u1_1, u0_1 = identifyexecutor()
        local u2 = u1_1 ~= ""
        local u3 = type(u1_1) == "string" and u2
        if u3 then
            local u2_1 = type(u0_1) == "string" and u0_1 ~= "" and u1_1 .. " " .. u0_1
            mU = u2_1 or u1_1
        end
    end
end
local function fn247()
    return LocalPlayer:GetAttribute("RolledTroop")
end
local function fn249(cc)
    local qm = nu(cc)
    if not qm then
        return false
    elseif not m9(nt("BuyRollRarities"), qm.Rarity) then
        return false
    elseif not mX(nt("BuyRollTroops"), cc) then
        return false
    else
        local qn = (tonumber(qm.Price))
        local qs = if qn then 1 else 0
        local qq = 3363 * qs + 176 * (1 - qs)
        local qr = 2253 * qs + 1095 * (1 - qs)
        if not ((qq * 2963 + qr * 267 + qq * qr) % 16777213 == 1365746) then
            qn = 0
        end
        local qm_1 = qn
        local qn_1 = nK("BuyRollMaxPrice", 0)
        if qn_1 > 0 and qm_1 > qn_1 then
            return false
        end
        local qn_2 = nK("BuyRollMoneyBuffer", 0)
        if mO() - qm_1 < qn_2 then
            return false
        end
        return true
    end
end
local function fn267()
    local PlacedTroops = LocalPlayer:FindFirstChild("PlacedTroops")
    local pM = PlacedTroops and #PlacedTroops:GetChildren()
    local pL_1 = pM
    local pQ = if pL_1 then 1 else 0
    local pO = 154 * pQ + 2258 * (1 - pQ)
    local pP = 779 * pQ + 2394 * (1 - pQ)
    if not ((pO * 583 + pP * 915 + pO * pP) % 16777213 == 922533) then
        pL_1 = 0
    end
    return pL_1
end
local function fn270(go)
    local tB = nu(go)
    if not tB then
        return false
    elseif not m9(nt("UpgradeRarities"), tB.Rarity) then
        return false
    elseif not mX(nt("UpgradeTroops"), go) then
        return false
    else
        return true
    end
end
local function fn273(fh)
    local sL = nu(fh)
    if not sL then
        return false
    elseif not m9(nt("ReplaceWithRarities"), sL.Rarity) then
        return false
    elseif not mX(nt("ReplaceWithTroops"), fh) then
        return false
    elseif nn(fh) >= mY(fh) then
        return false
    else
        return true
    end
end
local function worker2()
    while not Library.Unloaded do
        if mL("KillAura") then
            ne()
        end
        local vC = nK("KillAuraDelay", 0)
        if vC <= 0 then
            vC = nG()
        end
        task.wait(vC)
    end
end
local function fn284(cO, cP, cQ)
    local Ground = cO:FindFirstChild("Ground")
    if not Ground then
        return true
    end
    for i, descendant in ipairs(cO:GetDescendants()) do
        local qE = (descendant:IsA("BasePart"))
        if qE then
            qE = descendant.Name == "Path" or descendant.Name == "AnchorPart"
        end
        if qE then
            local Position = Ground.CFrame:ToObjectSpace(descendant.CFrame).Position
            local qF_2 = descendant.Size.X * 0.5 + 0.75
            local qG = descendant.Size.Z * 0.5 + 0.75
            local qH = math.abs(cP - Position.X) <= qF_2 and math.abs(cQ - Position.Z) <= qG
            if qH then
                return true
            end
        end
    end
    return false
end
local function fn297(aK)
    local pk = Options[aK]
    return pk and pk.Value or {}
end
local function fn314(an, ao)
    return string.format('<font color="%s">%s</font>', ao, an)
end
local function worker4()
    while not Library.Unloaded do
        if mL("AutoSellSelectedBrainrots") then
            onSellSelectedNow()
        end
        task.wait(nK("SellSelectedDelay", 3))
    end
end
local function fn374(a8)
    return Troops2[a8]
end
local function onUnload()
    Library:Unload()
end
local function fn417(K, L)
    if K.order == L.order then
        return K.price < L.price
    end
    return K.order < L.order
end
local function fn423(gS, gT)
    local tR = type(gT) ~= "table"
    local tX = if tR then 1 else 0
    local tV = 3151 * tX + 2852 * (1 - tX)
    local tW = 232 * tX + 834 * (1 - tX)
    if not ((tV * 2525 + tW * 1182 + tV * tW) % 16777213 == 8961531) then
        tR = gT.IsBack
    end
    if tR then
        return false
    end
    local tR_1 = tonumber(gT.Price)
    if not tR_1 or tR_1 <= 0 then
        return false
    end
    local tR_2 = LocalPlayer.SkillTree:FindFirstChild(gS)
    if tR_2 and tR_2.Value == true then
        return false
    end
    local ConnectedTo = gT.ConnectedTo
    local tS_2 = ConnectedTo ~= ""
    local tT = type(ConnectedTo) == "string" and tS_2
    if tT then
        local tS_3 = LocalPlayer.SkillTree:FindFirstChild(ConnectedTo)
        if not (tS_3 and tS_3.Value == true) then
            return false
        end
        return true
    end
    return true
end
local function fn425(y, A)
    return y.order < A.order
end
local function worker8()
    while not Library.Unloaded do
        if mL("AutoBuySkills") then
            onBuySkillsNow()
        end
        task.wait(nK("SkillDelay", 0.35))
    end
end
local function worker6()
    while not Library.Unloaded do
        if mL("AutoCollectMoney") then
            onCollectNow()
        end
        task.wait(nK("CollectDelay", 2))
    end
end
local function fn463(ep)
    local sb = nu(ep)
    if not sb then
        return false
    elseif not m9(nt("PlaceRarities"), sb.Rarity) then
        return false
    else
        local sf = if not mX(nt("PlaceTroops"), ep) then 1 else 0
        if sf == 1 then
            return false
        elseif nn(ep) >= mY(ep) then
            return false
        else
            return true
        end
    end
end
local function fn469(V, W)
    if V.order == W.order then
        return V.mps < W.mps
    end
    return V.order < W.order
end
local function fn477()
    local Currencies = LocalPlayer:FindFirstChild("Currencies")
    local pw = Currencies and Currencies:FindFirstChild("Money")
    local pv_1 = pw
    if pw then
        pw = tonumber(pv_1.Value)
    end
    return pw or 0
end
local function fn482()
    local Misc = LocalPlayer:FindFirstChild("Misc")
    local pJ = Misc and Misc:FindFirstChild("MaxTroops")
    local pI_1 = pJ
    if pJ then
        pJ = tonumber(pI_1.Value)
    end
    return pJ or 6
end
local function fn485()
    local uF = 0.45
    for k, v in pairs(Skills) do
        local uG = type(v) == "table" and v.SkillType == "PlayerFirerate"
        if uG then
            local uG_1 = LocalPlayer.SkillTree:FindFirstChild(k)
            if uG_1 and uG_1.Value == true then
                local uG_2 = tonumber(v.SkillAmount) or 0
                uF *= 1 - uG_2 / 100
            end
        end
    end
    return math.max(uF, 0.05)
end
local function worker3()
    while not Library.Unloaded do
        if mL("AutoSellAllBrainrots") then
            nv()
        end
        task.wait(nK("SellAllDelay", 5))
    end
end
local function onInputBegan()
    np = tick()
end
local function fn504()
    nF(nw, "Copied Discord invite to clipboard")
end
local function fn526()
    pcall(function()
        ni.SellAllBrainrots:FireServer()
    end)
end
local function worker12()
    while not Library.Unloaded do
        if mL("AutoBuyRoll") then
            mG()
        end
        task.wait(nK("BuyRollDelay", 0.25))
    end
end
local function fn549(aP, aQ)
    local pr = not aP or not next(aP)
    if pr then
        return true
    end
    return aP[aQ] == true
end
local function fn550(az)
    local pe = Toggles[az]
    return pe ~= nil and pe.Value == true
end
local function fn553()
    local uj = Rebirths[nL() + 1]
    if type(uj) ~= "number" then
        return
    end
    local uk = nK("RebirthMoneyBuffer", 0)
    if mO() - uj < uk then
        return
    end
    if mO() < uj then
        return
    end
    pcall(function()
        ni.Rebirth:FireServer()
    end)
end
local function fn579(c9, da, db)
    local qZ = math.huge
    for i, v in ipairs(db) do
        local q_ = math.max(math.abs(c9 - v.x) - v.halfX, 0)
        local q0 = math.max(math.abs(da - v.z) - v.halfZ, 0)
        local q1 = q_ * q_ + q0 * q0
        if q1 < qZ then
            qZ = q1
        end
    end
    return qZ
end
local function fn582(aq, ar, as)
    return string.format("<b>%s</b> %s %s", aq, nk("-", "#5a6070"), nk(ar, as))
end
local function worker9()
    while not Library.Unloaded do
        if mL("AutoUpgrade") then
            onUpgradeNow()
        end
        task.wait(nK("UpgradeDelay", 0.35))
    end
end
local function fn594()
    pcall(function()
        ni.RollTroop:FireServer(true)
    end)
end
local function worker()
    local u9_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local u8 = math.floor(os.clock() - nz)
        if u8 < 60 then
            u9_1 = u8 .. "s"
        elseif u8 < 3600 then
            u9_1 = string.format("%dm %ds", u8 // 60, u8 % 60)
        else
            u9_1 = string.format("%dh %dm", u8 // 3600, u8 % 3600 // 60)
        end
        Label:SetText(m8("Session time", u9_1, mQ))
    end
end
local function worker14()
    while not Library.Unloaded do
        task.wait(2)
        if mL("AntiAfk") then
            local vn = tick() - np
            local vo = tick() - nj
            if vn >= 300 and vo >= 60 then
                pcall(m4)
            else
                if vn < 300 and vo >= 300 then
                    pcall(m4)
                end
            end
        end
    end
end
local function fn605(ag, ah)
    if setclipboard then
        setclipboard(ag)
    elseif toclipboard then
        toclipboard(ag)
    end
    Library:Notify(ah)
end
local function fn618()
    local Currencies = LocalPlayer:FindFirstChild("Currencies")
    local pz = Currencies and Currencies:FindFirstChild("Rebirth")
    local py_1 = pz
    if pz then
        pz = tonumber(py_1.Value)
    end
    return pz or 0
end
local function fn628()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    nj = tick()
end
local function fn632()
    connection:Disconnect()
    connection2:Disconnect()
end
local function fn635()
    local qw = ng()
    if not qw then
        return
    end
    if not mF(qw) then
        return
    end
    pcall(function()
        ni.BuyRolledTroop:FireServer()
    end)
end
local function fn640()
    local NotSaving = LocalPlayer:FindFirstChild("NotSaving")
    local pC = NotSaving and NotSaving:FindFirstChild("PlayerPlot")
    if not pC then
        return nil
    end
    local Plots = Workspace:FindFirstChild("Plots")
    local pD = Plots and Plots:FindFirstChild(pC.Value)
    return pD
end
local function fn664(bG)
    local p2 = nu(bG)
    if not p2 or p2.MaxPlaced == nil then
        return math.huge
    end
    local p3_1 = tonumber(p2.MaxPlaced) or 0
    local p4 = p3_1
    local MaxPlacedSkillIncrease = p2.MaxPlacedSkillIncrease
    if MaxPlacedSkillIncrease then
        for k, v in pairs(Skills) do
            local p2_1 = type(v) == "table" and v.SkillType == MaxPlacedSkillIncrease
            if p2_1 then
                local p2_2 = LocalPlayer.SkillTree:FindFirstChild(k)
                if p2_2 and p2_2.Value == true then
                    local p2_3 = tonumber(v.SkillAmount) or 0
                    p4 += p2_3
                end
            end
        end
    end
    return p4
end
local function worker7()
    while not Library.Unloaded do
        if mL("AutoRebirth") then
            mJ()
        end
        task.wait(nK("RebirthDelay", 2))
    end
end
local function fn686(dq, dr, ds, dt)
    local rk = ds * ds
    for i, v in ipairs(dt) do
        local rl = dq - v.x
        local rm = dr - v.z
        if rl * rl + rm * rm < rk then
            return false
        end
    end
    return true
end
local function fn693()
    pcall(function()
        ni.EquipBestBrainrots:FireServer()
    end)
end
local function fn704(aE, aF)
    local ph = Options[aE]
    local pi = ph and tonumber(ph.Value)
    return pi or aF
end
local function fn761(c1)
    local Ground = c1:FindFirstChild("Ground")
    local qQ = {}
    if not Ground then
        return qQ
    end
    for i, descendant in ipairs(c1:GetDescendants()) do
        local qR = descendant:IsA("BasePart") and descendant.Name == "Path"
        if qR then
            local Position = Ground.CFrame:ToObjectSpace(descendant.CFrame).Position
            table.insert(qQ, { x = Position.X, z = Position.Z, halfX = descendant.Size.X * 0.5, halfZ = descendant.Size.Z * 0.5 })
        end
    end
    return qQ
end
local function fn813()
    local uv = 10
    for k, v in pairs(Skills) do
        local uw = type(v) == "table" and v.SkillType == "PlayerRange"
        if uw then
            local uw_1 = LocalPlayer.SkillTree:FindFirstChild(k)
            if uw_1 and uw_1.Value == true then
                local uw_2 = tonumber(v.SkillAmount) or 0
                uv += uw_2
            end
        end
    end
    return uv
end
local function fn817(fa)
    local sG = nu(fa)
    if not sG then
        return false
    end
    local sK = if not m9(nt("ReplaceFromRarities"), sG.Rarity) then 1 else 0
    if sK == 1 then
        return false
    elseif not mX(nt("ReplaceFromTroops"), fa) then
        return false
    else
        return true
    end
end
local function onCopyJoinScript_JobID()
    local iD = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, nQ)
    nF(iD, "Copied join script to clipboard")
end
local function fn828()
    local q9 = {}
    local PlacedTroops = LocalPlayer:FindFirstChild("PlacedTroops")
    if not PlacedTroops then
        return q9
    end
    for i, child in ipairs(PlacedTroops:GetChildren()) do
        local insert = table.insert
        local rb = tonumber(child:GetAttribute("XPosition")) or 0
        local rc = tonumber(child:GetAttribute("ZPosition")) or 0
        insert(q9, { x = rb, z = rc })
    end
    return q9
end
local function fn841(fW)
    local tf = nt("SellBrainrotTypes")
    local tg = nt("SellBrainrotRarities")
    local th = tf and next(tf) ~= nil
    local ti = tg
    if ti then
        ti = next(tg) ~= nil
    end
    local th_1 = ti
    local ti_1 = not th_1
    local tk = not th
    if tk ~= false then
        tk = ti_1
    end
    if tk then
        return false
    end
    local ti_2 = Enemies[fW]
    local tk_1 = ti_2 and ti_2.Rarity
    local ti_3 = th
    if ti_3 then
        ti_3 = tf[fW] ~= true
    end
    if ti_3 then
        return false
    end
    local tf_1 = th_1
    if tf_1 then
        tf_1 = not tk_1 or tg[tk_1] ~= true
    end
    if tf_1 then
        return false
    end
    return true
end
local function fn843(aT, aU)
    local pt = not aT or not next(aT)
    if pt then
        return true
    end
    return aT[aU] == true
end
local function worker5()
    while not Library.Unloaded do
        if mL("AutoEquipBest") then
            ny()
        end
        task.wait(nK("EquipBestDelay", 5))
    end
end
local function fn877()
    if not mM() then
        return
    end
    local sh = na()
    if not sh then
        return
    end
    local Troops = LocalPlayer:FindFirstChild("Troops")
    if not Troops then
        return
    end
    local sj = nK("PlaceSpacing", 3)
    local sk = {}
    for i, child in ipairs(Troops:GetChildren()) do
        local si_1 = m0[child.Name]
        local sl_1 = si_1 and tick() < si_1
        local si_2 = not sl_1
        if si_2 ~= false then
            si_2 = no(child.Value)
        end
        if si_2 then
            local si_3 = nu(child.Value)
            local sl_2 = si_3 and si_3.MaxPlaced ~= nil
            local insert = table.insert
            local Value = child.Value
            local si_5 = sl_2 and 1 or 0
            insert(sk, { troop = child, name = Value, priority = si_5, score = mZ(child.Value, 1) })
        end
    end
    table.sort(sk, function(e_, e0)
        if e_.priority == e0.priority then
            return e_.score > e0.score
        end
        return e_.priority < e0.priority
    end)
    for i, v in ipairs(sk) do
        if not mM() then
            break
        elseif not not no(v.name) then
            local si_6 = false
            local sk_1 = {}
            local sD = 1
            while sD <= 12 do
                local sl_4 = nm(sh, sj, sk_1)
                if not sl_4 then
                    break
                elseif mT(v.troop, sl_4) then
                    si_6 = true
                    task.wait(nK("PlaceDelay", 0.35))
                    break
                else
                    table.insert(sk_1, { x = sl_4.X, z = sl_4.Z })
                    sD += 1
                end
            end
            if not si_6 then
                m0[v.troop.Name] = tick() + 5
            end
        end
    end
end
mD = nil
Label = nil
mF = nil
mG = nil
onReplaceNow = nil
Library = nil
mJ = nil
onSellSelectedNow = nil
mL = nil
mM = nil
connection = nil
mO = nil
mP = nil
mQ = nil
mS = nil
mT = nil
mU = nil
onUpgradeNow = nil
mW = nil
mX = nil
mY = nil
mZ = nil
Enemies = nil
m0 = nil
m3 = nil
m4 = nil
Skills = nil
Rebirths = nil
m8 = nil
m9 = nil
na = nil
nc = nil
nd = nil
ne = nil
Troops2 = nil
ng = nil
ni = nil
nj = nil
nk = nil
onCollectNow = nil
nm = nil
nn = nil
no = nil
np = nil
local mR, m1, m2, m5, Rarities, nh
nq = nil
nr = nil
nt = nil
nu = nil
nv = nil
nw = nil
nx = nil
ny = nil
nz = nil
LocalPlayer = nil
Workspace = nil
VirtualUser = nil
nF = nil
nG = nil
nH = nil
onBuySkillsNow = nil
Options = nil
nK = nil
nL = nil
nM = nil
Toggles = nil
connection2 = nil
nP = nil
nQ = nil
local ns, nA, n3
ns = nil
nA = nil
local nC
vM_1, UserInputService, VirtualUser, Workspace, LocalPlayer, nw, nr, ni, Troops2, Rarities, Rebirths, Skills, m1, Enemies = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if (LocalPlayer or not UserInputService or not UserInputService and UserInputService) and (UserInputService and not UserInputService or UserInputService and not Workspace) and (not Workspace or not UserInputService or LocalPlayer and UserInputService or (not Workspace and not Workspace or (not LocalPlayer or UserInputService))) or ((UserInputService or not Workspace) and (not UserInputService or Workspace) or (not Workspace and not Workspace or (LocalPlayer or UserInputService))) and (LocalPlayer and not UserInputService and (not LocalPlayer and not LocalPlayer) or (UserInputService or not UserInputService or (not Workspace or not Workspace))) or not ((LocalPlayer or not UserInputService or not UserInputService and UserInputService) and (UserInputService and not UserInputService or UserInputService and not Workspace) and (not Workspace or not UserInputService or LocalPlayer and UserInputService or (not Workspace and not Workspace or (not LocalPlayer or UserInputService))) or ((UserInputService or not Workspace) and (not UserInputService or Workspace) or (not Workspace and not Workspace or (LocalPlayer or UserInputService))) and (LocalPlayer and not UserInputService and (not LocalPlayer and not LocalPlayer) or (UserInputService or not UserInputService or (not Workspace or not Workspace)))) then
    vM_1 = game:GetService("Players")
else
    m1 = game:GetService("Players")
end
local vM_4 = game:GetService("ReplicatedStorage")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
Workspace = game:GetService("Workspace")
LocalPlayer = vM_1.LocalPlayer
local vM_22 = "Roll Your Army"
nw = "https://discord.gg/ehKVq7pf7v"
nr = "https://rscripts.net/@Ouroboros"
local vM_12 = vM_4:WaitForChild("Modules")
ni = vM_4:WaitForChild("Remotes")
Troops2 = require(vM_12:WaitForChild("Troops"))
Rarities = require(vM_12:WaitForChild("Rarities"))
Rebirths = require(vM_12:WaitForChild("Rebirths"))
Skills = require(vM_12:WaitForChild("SkillTree"):WaitForChild("Skills"))
m1 = require(vM_12:WaitForChild("Util"))
Enemies = require(vM_12:WaitForChild("Enemies"))
local vM_13 = {}
local vM_15 = {}
for k, v in pairs(Rarities) do
    if type(v) == "table" then
        vM_1 = table.insert
        vM_12 = v.LayoutOrder or 999
        vM_1(vM_15, { name = k, order = vM_12 })
    end
end
local vM_20 = 3
repeat
    vM_1 = {
        "vzxaxa",
        "csjsbexw",
        "xplbnfygexi",
        "rzfghwnpdba",
        "isnqmmltajt",
        "dydbkj",
        "iwzeizo",
        "bvkgqdfugslx",
        "jneouqx",
        "xozi",
        "lhme",
        "pnxqewkf",
        "gsqyydpq",
        "qqqzduv"
    }
    if vM_1[(vM_20 * 63 + 21) % 14 + 1] <= vM_1[(vM_20 * 63 + 21) % 14 + 1] then
        table.sort(vM_15, fn425)
    else
        table.sort(vM_15, fn425)
    end
    vM_20 = (vM_20 + 5) % 8
until (vM_20 * 5 + 5) % 8 == 5
for i, v in ipairs(vM_15) do
    table.insert(vM_13, v.name)
end
vM_1 = {}
vM_12 = {}
for k, v in pairs(Troops2) do
    vM_20 = type(v) == "table" and v.Rarity
    if vM_20 then
        vM_20 = 999
        vM_4 = Rarities[v.Rarity]
        if type(vM_4) == "table" then
            vM_15 = vM_4.LayoutOrder or 999
            vM_20 = vM_15
        end
        vM_4 = table.insert
        vM_15 = tonumber(v.Price) or 0
        vM_4(vM_12, { name = k, order = vM_20, price = vM_15 })
    end
end
local vM_24 = 2
repeat
    if vM_24 * 132642495 + 4 + 2 <= vM_24 * 132642495 + 4 + 2 + 2 then
        table.sort(vM_12, fn417)
    else
        table.sort(vM_12, fn417)
    end
    vM_24 = (vM_24 + 2) % 4
until (vM_24 * 3 + 2) % 4 == 2
for i, v in ipairs(vM_12) do
    table.insert(vM_1, v.name)
end
vM_12 = {}
vM_20 = {}
for k, v in pairs(Enemies) do
    vM_4 = type(v) == "table" and v.Rarity
    if vM_4 then
        vM_4 = 999
        vM_15 = Rarities[v.Rarity]
        if type(vM_15) == "table" then
            vM_24 = vM_15.LayoutOrder or 999
            vM_4 = vM_24
        end
        vM_15 = table.insert
        vM_24 = tonumber(v.MoneyPerSecond) or 0
        vM_15(vM_20, { name = k, order = vM_4, mps = vM_24 })
    end
end
table.sort(vM_20, fn469)
for i, v in ipairs(vM_20) do
    table.insert(vM_12, v.name)
end
Library, Toggles, Options, mQ, m0, vM_15, nF, nx, nk, m8, mL, nK, nt, m9, mX, mO, nL, nu, ng, na, mP, nM, nn, mY, nC, mW, mM, mF, nc, m3, mG, nd, nP, nq, mS, mD, nm, mZ, no, mT, nH, ns, m5, onReplaceNow, nA, onSellSelectedNow, nv, nh, onUpgradeNow, m2, onBuySkillsNow, mJ, ny, onCollectNow, mR, nG, ne, vM_17 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
nF = fn605
nx = fn504
nk = fn314
m8 = fn582
local n5 = "#7fd47f"
local n4 = "#6ec1ff"
if ((ThemeManager or nh or ThemeManager and SaveManager or (ThemeManager and nh or ThemeManager and not nH)) and ((SaveManager or SaveManager) and (nh or not SaveManager) and (not nh or SaveManager or (not nH or SaveManager))) or (ThemeManager or nH or not ThemeManager and ThemeManager or (not SaveManager or SaveManager) and (nH and not ThemeManager)) and (SaveManager and SaveManager or (not nH or not nh) or nH and nH and (not nH and nH))) and not ((ThemeManager or nh or ThemeManager and SaveManager or (ThemeManager and nh or ThemeManager and not nH)) and ((SaveManager or SaveManager) and (nh or not SaveManager) and (not nh or SaveManager or (not nH or SaveManager))) or (ThemeManager or nH or not ThemeManager and ThemeManager or (not SaveManager or SaveManager) and (nH and not ThemeManager)) and (SaveManager and SaveManager or (not nH or not nh) or nH and nH and (not nH and nH))) then
    n3 = "#e8a34d"
    mQ = "#8b93a3"
    nK = fn550
    mL = fn704
else
    mQ = "#e8a34d"
    n3 = "#8b93a3"
    mL = fn550
    nK = fn704
end
nt = fn297
m9 = fn549
mX = fn843
mO = fn477
nL = fn618
nu = fn374
ng = fn247
na = fn640
mP = fn482
nM = fn267
nn = fns.fn23
mY = fn664
nC = function(bU, bV)
    local qe_1
    local qd_1
    qd_1, qe_1 = pcall(function()
        return m1:GetTroopUpgradePrice(LocalPlayer, bU, bV)
    end)
    if qd_1 then
        local qd_2 = tonumber(qe_1) or 0
        return qd_2
    end
    return 0
end
m0 = {}
mW = fns.fn27
mM = fns.fn4
mF = fn249
nc = fn594
m3 = fn176
mG = fn635
if (((not mD or not nG) and (mD or n3) or not nG and nG and (not nG and not n3)) and (not n3 or not mD or (not mD or not mD) or (not nG and mD or not mD and mD)) or ((not mD or n3) and (nG or not nG) or (nG or nG) and (mD and not n3)) and ((mD or not mD or (not mD or nG)) and ((n3 or nG) and (not n3 or not n3)))) and not (((not mD or not nG) and (mD or n3) or not nG and nG and (not nG and not n3)) and (not n3 or not mD or (not mD or not mD) or (not nG and mD or not mD and mD)) or ((not mD or n3) and (nG or not nG) or (nG or nG) and (mD and not n3)) and ((mD or not mD or (not mD or nG)) and ((n3 or nG) and (not n3 or not n3)))) then
    nq.BuyRolledTroop.OnClientEvent:Connect(fns.onOnClientEvent)
    nP = fn284
    nd = fn761
    ni = fn579
else
    ni.BuyRolledTroop.OnClientEvent:Connect(fns.onOnClientEvent)
    nd = fn284
    nP = fn761
    nq = fn579
end
if not nd and not vM_15 or Library and mX or (not nd or not onUpgradeNow) and (nd or not Library) or not (not nd and not vM_15 or Library and mX or (not nd or not onUpgradeNow) and (nd or not Library)) then
    mS = fn828
else
    vM_17 = fn828
end
mD = fn686
if (mW or mW) and (fns.fn107 or not mY) or (not mY or mX or mW and fns.fn107) or (not mX and nL and (mW and false) or mY and nL and (not mX and not mX)) or not ((mW or mW) and (fns.fn107 or not mY) or (not mY or mX or mW and fns.fn107) or (not mX and nL and (mW and false) or mY and nL and (not mX and not mX))) then
    nm = fn143
    mZ = function(d7, d8, d9)
        local r5
        local r6 = nu(d7)
        if not r6 then
            return -math.huge
        end
        local r7 = 0
        local r8 = Rarities[r6.Rarity]
        if type(r8) == "table" then
            local r9_3 = tonumber(r8.LayoutOrder) or 0
            r7 = r9_3
        end
        r5 = 0
        pcall(function()
            local r_ = d8
            local r4 = if r_ then 1 else 0
            local r2 = 3311 * r4 + 3764 * (1 - r4)
            local r3 = 479 * r4 + 2292 * (1 - r4)
            if not ((r2 * 1027 + r3 * 67 + r2 * r3) % 16777213 == 5018459) then
                r_ = 1
            end
            local r0 = tonumber(m1:GetDPS(LocalPlayer, d7, r_, d9)) or 0
            r5 = r0
        end)
        local r8_2 = r7 * 1000000000000 + r5 * 1000
        local r9_4 = tonumber(r6.Price) or 0
        return r8_2 + r9_4
    end
    no = fn463
    mT = function(ey, ez)
        local eA = false
        pcall(function()
            eA = ni.PlaceTroop:InvokeServer({ UUID = ey.Name, Rotation = 0, Position = ez }) == true
        end)
        return eA
    end
else
    mT = fn143
    nm = function(d7, d8, d9)
        local r5
        local r6 = nu(d7)
        if not r6 then
            return -math.huge
        end
        local r7 = 0
        local r8 = Rarities[r6.Rarity]
        if type(r8) == "table" then
            local r9_1 = tonumber(r8.LayoutOrder) or 0
            r7 = r9_1
        end
        r5 = 0
        pcall(function()
            local r_ = d8
            local r4 = if r_ then 1 else 0
            local r2 = 3311 * r4 + 3764 * (1 - r4)
            local r3 = 479 * r4 + 2292 * (1 - r4)
            if not ((r2 * 1027 + r3 * 67 + r2 * r3) % 16777213 == 5018459) then
                r_ = 1
            end
            local r0 = tonumber(m1:GetDPS(LocalPlayer, d7, r_, d9)) or 0
            r5 = r0
        end)
        local r8_1 = r7 * 1000000000000 + r5 * 1000
        local r9_2 = tonumber(r6.Price) or 0
        return r8_1 + r9_2
    end
    mZ = fn463
    no = function(ey, ez)
        local eA = false
        pcall(function()
            eA = ni.PlaceTroop:InvokeServer({ UUID = ey.Name, Rotation = 0, Position = ez }) == true
        end)
        return eA
    end
end
nH = fn877
ns = fn817
m5 = fn273
onReplaceNow = function()
    local sN, sO
    local sP = na()
    if not sP then
        return
    end
    local Troops = LocalPlayer:FindFirstChild("Troops")
    local PlacedTroops = LocalPlayer:FindFirstChild("PlacedTroops")
    if not Troops or not PlacedTroops then
        return
    end
    local sS_1 = nil
    for i, child in ipairs(Troops:GetChildren()) do
        if m5(child.Value) then
            local sQ_1 = mZ(child.Value, 1)
            if not sS_1 or sQ_1 > sS_1.score then
                sS_1 = { troop = child, name = child.Value, score = sQ_1 }
            end
        end
    end
    if not sS_1 then
        return
    end
    sN = nil
    for i, child in ipairs(PlacedTroops:GetChildren()) do
        if ns(child.Value) then
            local Value2 = child.Value
            local sR_1 = child:GetAttribute("Level") or 1
            local sT_2 = mZ(Value2, sR_1, child:GetAttribute("Enchant"))
            local sQ_3 = not sN
            local s9 = if sQ_3 then 1 else 0
            local s7 = 3414 * s9 + 1279 * (1 - s9)
            local s8 = 845 * s9 + 1450 * (1 - s9)
            if not ((s7 * 3827 + s8 * 1208 + s7 * s8) % 16777213 == 193755) then
                sQ_3 = sT_2 < sN.score
            end
            if sQ_3 then
                local Value = child.Value
                local sR_2 = tonumber(child:GetAttribute("XPosition")) or 0
                local sU = tonumber(child:GetAttribute("ZPosition")) or 0
                sN = { troop = child, name = Value, score = sT_2, x = sR_2, z = sU }
            end
        end
    end
    if not sN then
        return
    end
    if sS_1.score <= sN.score then
        return
    end
    sO = false
    pcall(function()
        sO = ni.PickupTroop:InvokeServer(sN.troop.Name) == true
    end)
    if not sO then
        return
    end
    task.wait(0.15)
    local sQ_5 = Vector3.new(sN.x, 0, sN.z)
    if mT(sS_1.troop, sQ_5) then
        task.wait(nK("ReplaceDelay", 0.5))
        return
    end
    local sQ_6 = { { x = sN.x, z = sN.z } }
    local sR_3 = nK("PlaceSpacing", 3)
    local tc = 1
    while tc <= 10 do
        local sT_3 = nm(sP, sR_3, sQ_6)
        if not sT_3 then
            break
        end
        if mT(sS_1.troop, sT_3) then
            task.wait(nK("ReplaceDelay", 0.5))
            return
        end
        table.insert(sQ_6, { x = sT_3.X, z = sT_3.Z })
        tc += 1
    end
end
nA = fn841
onSellSelectedNow = function()
    local tp
    local Brainrots = LocalPlayer:FindFirstChild("Brainrots")
    if not Brainrots then
        return
    end
    tp = {}
    for i, child in ipairs(Brainrots:GetChildren()) do
        if nA(child.Value) then
            table.insert(tp, child.Name)
        end
    end
    if #tp == 0 then
        return
    end
    pcall(function()
        ni.SellSpecific:FireServer(tp)
    end)
end
nv = fn526
if (not m9 and not nK or (not nK or vM_17) or (nK or vM_17 or (nK or not nK)) or (not nu and not vM_17 or nK and not nu or (nK or m9 or (m9 or vM_17)))) and ((nu and not vM_17 or m9 and not nK) and (not m9 and not vM_17 or not nK and nK) or not nK and not vM_17 and (not vM_17 and m9) and (not nK and nK and (not nK and nu))) or not ((not m9 and not nK or (not nK or vM_17) or (nK or vM_17 or (nK or not nK)) or (not nu and not vM_17 or nK and not nu or (nK or m9 or (m9 or vM_17)))) and ((nu and not vM_17 or m9 and not nK) and (not m9 and not vM_17 or not nK and nK) or not nK and not vM_17 and (not vM_17 and m9) and (not nK and nK and (not nK and nu)))) then
    nh = fn270
    onUpgradeNow = function()
        local PlacedTroops = LocalPlayer:FindFirstChild("PlacedTroops")
        if not PlacedTroops then
            return
        end
        local tG = nK("UpgradeMoneyBuffer", 0)
        local tH = nK("UpgradeMaxPrice", 0)
        local tE = mL("UpgradeUseMax")
        for i, child in ipairs(PlacedTroops:GetChildren()) do
            local tQ = child
            local Value = tQ.Value
            if nh(Value) then
                local tI = tonumber(tQ:GetAttribute("Level")) or 1
                local tI_2 = nC(Value, tI)
                local tF_4 = tI_2 > 0 and mO() - tI_2 >= tG
                if tF_4 then
                    tF_4 = tH <= 0 or tI_2 <= tH
                end
                if tF_4 then
                    pcall(function()
                        if tE then
                            ni.UpgradeMaxTroop:FireServer(tQ.Name)
                        else
                            ni.UpgradeTroop:FireServer(tQ.Name)
                        end
                    end)
                    task.wait(nK("UpgradeDelay", 0.35))
                end
            end
        end
    end
    m2 = fn423
else
    m2 = fn270
    nh = function()
        local PlacedTroops = LocalPlayer:FindFirstChild("PlacedTroops")
        if not PlacedTroops then
            return
        end
        local tG = nK("UpgradeMoneyBuffer", 0)
        local tH = nK("UpgradeMaxPrice", 0)
        local tE = mL("UpgradeUseMax")
        for i, child in ipairs(PlacedTroops:GetChildren()) do
            local tQ = child
            local Value = tQ.Value
            if nh(Value) then
                local tI = tonumber(tQ:GetAttribute("Level")) or 1
                local tI_1 = nC(Value, tI)
                local tF_2 = tI_1 > 0 and mO() - tI_1 >= tG
                if tF_2 then
                    tF_2 = tH <= 0 or tI_1 <= tH
                end
                if tF_2 then
                    pcall(function()
                        if tE then
                            ni.UpgradeMaxTroop:FireServer(tQ.Name)
                        else
                            ni.UpgradeTroop:FireServer(tQ.Name)
                        end
                    end)
                    task.wait(nK("UpgradeDelay", 0.35))
                end
            end
        end
    end
    onUpgradeNow = fn423
end
onBuySkillsNow = function()
    local t0 = nK("SkillMoneyBuffer", 0)
    local t1 = nK("SkillMaxPrice", 0)
    local t2 = {}
    for k, v in pairs(Skills) do
        if m2(k, v) then
            local t3 = tonumber(v.Price) or 0
            local t3_1 = mO() - t3 >= t0 and (t1 <= 0 or t3 <= t1)
            if t3_1 then
                table.insert(t2, { name = k, price = t3 })
            end
        end
    end
    table.sort(t2, function(he, hf)
        return he.price < hf.price
    end)
    for i, v in ipairs(t2) do
        local ui = v
        if mO() - ui.price < t0 then
            break
        end
        pcall(function()
            ni.BuySkill:FireServer(ui.name)
        end)
        task.wait(nK("SkillDelay", 0.35))
    end
end
mJ = fn553
ny = fn693
onCollectNow = function()
    local BrainrotSlots = LocalPlayer:FindFirstChild("BrainrotSlots")
    if not BrainrotSlots then
        return
    end
    for i, child in ipairs(BrainrotSlots:GetChildren()) do
        local uu = child
        local um_1 = uu.Value == true
        if um_1 then
            local un = tonumber(uu:GetAttribute("GeneratedMoney")) or 0
            um_1 = un > 0
        end
        if um_1 then
            pcall(function()
                ni.ClaimBrainrotSlotMoney:FireServer(uu.Name)
            end)
        end
    end
end
mR = fn813
nG = fn485
ne = function()
    local Character = LocalPlayer.Character
    local uR = Character and Character:FindFirstChild("HumanoidRootPart")
    if not uR then
        return
    end
    local Visuals = Workspace:FindFirstChild("Visuals")
    local uS = Visuals and Visuals:FindFirstChild("PlayerEnemies")
    if not uS then
        return
    end
    local uS_1 = nK("KillAuraRange", 0)
    if uS_1 <= 0 then
        uS_1 = mR()
    end
    local uT = Vector3.new(uR.Position.X, 0, uR.Position.Z)
    local uQ_2 = uS_1
    local uP
    for i, child in ipairs(uS:GetChildren()) do
        local PrimaryPart = child.PrimaryPart
        if PrimaryPart then
            local Magnitude = (uT - Vector3.new(PrimaryPart.Position.X, 0, PrimaryPart.Position.Z)).Magnitude
            if Magnitude < uQ_2 then
                uQ_2 = Magnitude
                uP = child
            end
        end
    end
    if uP then
        pcall(function()
            ni.PlayerDamageBrainrot:FireServer(uP.Name)
        end)
    end
end
vM_24 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = nw, Copyable = true }, "|", vM_22 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local n6 = {}
n6.Info = vM_24:AddTab("Info", "info")
vM_15 = vM_24:AddTab("Main", "gamepad-2")
n6.Settings = vM_24:AddTab("Settings", "settings")
vM_15:SetSubTabAlignment("Center")
n6.Roll = vM_15:AddSubTab("Roll", "dices")
n6.Units = vM_15:AddSubTab("Units", "swords")
n6.Skills = vM_15:AddSubTab("Skills", "network")
vM_17 = fns.fn117
for k, v in n6 do
    vM_17(v)
end
mU, Label, nQ = nil, nil, nil
mU = "Unknown"
pcall(fn246)
vM_20 = n6.Info:AddLeftGroupbox("Account", "circle-user")
vM_20:AddLabel(m8("User", LocalPlayer.Name, n5), true)
vM_20:AddLabel(m8("Status", "Keyless", n5), true)
vM_20:AddLabel(m8("Executor", mU, n5), true)
vM_24 = n6.Info:AddLeftGroupbox("Game Info", "gamepad-2")
vM_24:AddLabel(nk(vM_22 .. " [" .. tostring(game.PlaceId) .. "]", n4), true)
vM_24:AddLabel(m8("Place ID", tostring(game.PlaceId), n4), true)
Label = vM_24:AddLabel(m8("Session time", "0s", mQ), true)
nQ = tostring(game.JobId)
vM_15 = #nQ > 18
if vM_15 then
    vM_20 = 1
    repeat
        local wQ = bit32.rrotate(bit32.bxor(bit32.lrotate(vM_20, 6), string.byte(tostring(vM_20))), 6)
        if bit32.bxor(bit32.lrotate(bit32.bxor(wQ, 2955543423), 22), 3756788352) == bit32.lrotate(wQ, 22) then
            vM_15 = string.sub(nQ, 1, 18) .. "..."
        else
            nQ = string.sub(vM_15, 1, 18) .. "..."
        end
        vM_20 = (vM_20 + 1) % 4
    until (vM_20 * 3 + 0) % 4 == 2
end
vM_20 = vM_15 or nQ
nz, vM_15, np, nj, connection, connection2, m4 = nil, nil, nil, nil, nil, nil, nil
local oj = vM_20
vM_24:AddLabel(m8("Server", oj, n3), true)
vM_24:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
nz = os.clock()
task.spawn(worker)
local ScriptsGroup = n6.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(nk("Included in this hub", n3), true)
ScriptsGroup:AddLabel(nk(vM_22, n4), true)
local FeaturesGroup = n6.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(nk("Auto Roll / Buy Roll", n4), true)
FeaturesGroup:AddLabel(nk("Auto Place / Replace / Upgrade", n5), true)
FeaturesGroup:AddLabel(nk("Auto Skill Tree / Rebirth", mQ), true)
FeaturesGroup:AddLabel(nk("Auto Equip / Collect / Sell", n4), true)
FeaturesGroup:AddLabel(nk("Kill Aura", mQ), true)
FeaturesGroup:AddLabel(nk("Misc Utilities", n3), true)
local SocialsGroup = n6.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = nx })
SocialsGroup:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
local OuroborosHubGroup = n6.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = nx })
local FaqGroup = n6.Info:AddRightGroupbox("FAQ", "circle-help")
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
local AutoRollGroup = n6.Roll:AddLeftGroupbox("Auto Roll", "dices")
AutoRollGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
AutoRollGroup:AddSlider("RollDelay", { Text = "Roll delay", Default = 0.5, Min = 0.1, Max = 10, Rounding = 2, Suffix = "s" })
AutoRollGroup:AddToggle("RollRequireRoom", { Text = "Require place room", Default = false })
AutoRollGroup:AddButton({ Text = "Roll Now", Func = m3 })
local AutoBuyRollGroup = n6.Roll:AddRightGroupbox("Auto Buy Roll", "shopping-bag")
AutoBuyRollGroup:AddToggle("AutoBuyRoll", { Text = "Auto Buy Roll", Default = false })
AutoBuyRollGroup:AddSlider("BuyRollDelay", { Text = "Buy delay", Default = 0.25, Min = 0.05, Max = 5, Rounding = 2, Suffix = "s" })
AutoBuyRollGroup:AddSlider("BuyRollMaxPrice", { Text = "Max price", Default = 0, Min = 0, Max = 1000000000000, Rounding = 0, Suffix = "$" })
AutoBuyRollGroup:AddSlider("BuyRollMoneyBuffer", { Text = "Keep money", Default = 0, Min = 0, Max = 1000000000000, Rounding = 0, Suffix = "$" })
AutoBuyRollGroup:AddDropdown("BuyRollRarities", { Text = "Rarities", Values = vM_13, Multi = true, AllowNull = true, Default = {} })
AutoBuyRollGroup:AddDropdown("BuyRollTroops", {
    Text = "Troops",
    Values = vM_1,
    Multi = true,
    AllowNull = true,
    Default = {},
    Expandable = true,
    ExpandColumns = 2
})
AutoBuyRollGroup:AddButton({ Text = "Buy Roll Now", Func = mG })
vM_17 = n6.Units:AddLeftGroupbox("Auto Place", "map-pin")
if not oj and m4 or m4 and not m4 or (oj or not m4) and (not m4 or not m4) or (not oj or not m4) and (not oj and not oj) and (m4 and not m4 or m4 and m4) or not (not oj and m4 or m4 and not m4 or (oj or not m4) and (not m4 or not m4) or (not oj or not m4) and (not oj and not oj) and (m4 and not m4 or m4 and m4)) then
    vM_17:AddToggle("AutoPlace", { Text = "Auto Place Units", Default = false })
    vM_17:AddSlider("PlaceDelay", { Text = "Place delay", Default = 0.35, Min = 0.1, Max = 10, Rounding = 2, Suffix = "s" })
    vM_17:AddSlider("PlaceSpacing", { Text = "Spacing", Default = 3, Min = 1, Max = 10, Rounding = 0 })
    vM_17:AddSlider("PlaceMaxPathDistance", { Text = "Max path distance", Default = 6, Min = 0, Max = 30, Rounding = 0 })
    vM_17:AddDropdown("PlaceRarities", { Text = "Rarities", Values = vM_13, Multi = true, AllowNull = true, Default = {} })
    vM_17:AddDropdown("PlaceTroops", {
        Text = "Troops",
        Values = vM_1,
        Multi = true,
        AllowNull = true,
        Default = {},
        Expandable = true,
        ExpandColumns = 2
    })
    vM_17:AddButton({ Text = "Place Now", Func = nH })
    vM_15 = n6.Units:AddLeftGroupbox("Auto Replace", "replace")
else
    vM_13:AddToggle("AutoPlace", { Text = "Auto Place Units", Default = false })
    vM_13:AddSlider("PlaceDelay", { Suffix = "s", Min = 0.1, Max = 10, Default = 0.35, Rounding = 2, Text = "Place delay" })
    vM_13:AddSlider("PlaceSpacing", { Default = 3, Text = "Spacing", Max = 10, Rounding = 0, Min = 1 })
    vM_13:AddSlider("PlaceMaxPathDistance", { Text = "Max path distance", Min = 0, Default = 6, Rounding = 0, Max = 30 })
    vM_13:AddDropdown("PlaceRarities", { Text = "Rarities", Multi = true, AllowNull = true, Default = {}, Values = vM_15 })
    vM_13:AddDropdown("PlaceTroops", {
        Multi = true,
        Default = {},
        AllowNull = true,
        ExpandColumns = 2,
        Values = n6,
        Expandable = true,
        Text = "Troops"
    })
    vM_13:AddButton({ Text = "Place Now", Func = vM_17 })
    vM_1 = nH.Units:AddLeftGroupbox("Auto Replace", "replace")
end
vM_15:AddToggle("AutoReplace", { Text = "Auto Replace Units", Default = false })
vM_15:AddSlider("ReplaceDelay", { Text = "Replace delay", Default = 0.5, Min = 0.1, Max = 10, Rounding = 2, Suffix = "s" })
vM_15:AddDropdown("ReplaceFromRarities", { Text = "Replace from rarities", Values = vM_13, Multi = true, AllowNull = true, Default = {} })
vM_15:AddDropdown("ReplaceFromTroops", {
    Text = "Replace from troops",
    Values = vM_1,
    Multi = true,
    AllowNull = true,
    Default = {},
    Expandable = true,
    ExpandColumns = 2
})
vM_15:AddDropdown("ReplaceWithRarities", { Text = "Replace with rarities", Values = vM_13, Multi = true, AllowNull = true, Default = {} })
vM_15:AddDropdown("ReplaceWithTroops", {
    Text = "Replace with troops",
    Values = vM_1,
    Multi = true,
    AllowNull = true,
    Default = {},
    Expandable = true,
    ExpandColumns = 2
})
vM_15:AddButton({ Text = "Replace Now", Func = onReplaceNow })
vM_4 = n6.Units:AddRightGroupbox("Auto Upgrade", "arrow-up")
vM_4:AddToggle("AutoUpgrade", { Text = "Auto Upgrade Units", Default = false })
vM_4:AddToggle("UpgradeUseMax", { Text = "Upgrade max affordable", Default = true })
vM_4:AddSlider("UpgradeDelay", { Text = "Upgrade delay", Default = 0.35, Min = 0.1, Max = 30, Rounding = 2, Suffix = "s" })
vM_4:AddSlider("UpgradeMaxPrice", { Text = "Max price", Default = 0, Min = 0, Max = 1000000000000, Rounding = 0, Suffix = "$" })
vM_4:AddSlider("UpgradeMoneyBuffer", { Text = "Keep money", Default = 0, Min = 0, Max = 1000000000000, Rounding = 0, Suffix = "$" })
vM_4:AddDropdown("UpgradeRarities", { Text = "Rarities", Values = vM_13, Multi = true, AllowNull = true, Default = {} })
vM_4:AddDropdown("UpgradeTroops", {
    Text = "Troops",
    Values = vM_1,
    Multi = true,
    AllowNull = true,
    Default = {},
    Expandable = true,
    ExpandColumns = 2
})
vM_4:AddButton({ Text = "Upgrade Now", Func = onUpgradeNow })
local Collect_EquipGroup = n6.Units:AddLeftGroupbox("Collect / Equip", "hand-coins")
Collect_EquipGroup:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
Collect_EquipGroup:AddSlider("CollectDelay", { Text = "Collect delay", Default = 2, Min = 0.5, Max = 60, Rounding = 1, Suffix = "s" })
Collect_EquipGroup:AddButton({ Text = "Collect Now", Func = onCollectNow })
Collect_EquipGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
Collect_EquipGroup:AddSlider("EquipBestDelay", { Text = "Equip best delay", Default = 5, Min = 1, Max = 120, Rounding = 1, Suffix = "s" })
Collect_EquipGroup:AddButton({ Text = "Equip Best Now", Func = ny })
local SellSelectedGroup = n6.Units:AddRightGroupbox("Sell Selected", "badge-dollar-sign")
SellSelectedGroup:AddToggle("AutoSellSelectedBrainrots", { Text = "Auto Sell Selected", Default = false })
SellSelectedGroup:AddSlider("SellSelectedDelay", { Text = "Sell delay", Default = 3, Min = 0.5, Max = 120, Rounding = 1, Suffix = "s" })
SellSelectedGroup:AddDropdown("SellBrainrotRarities", { Text = "Rarities", Values = vM_13, Multi = true, AllowNull = true, Default = {} })
SellSelectedGroup:AddDropdown("SellBrainrotTypes", {
    Text = "Brainrots",
    Values = vM_12,
    Multi = true,
    AllowNull = true,
    Default = {},
    Expandable = true,
    ExpandColumns = 2
})
SellSelectedGroup:AddButton({ Text = "Sell Selected Now", Func = onSellSelectedNow })
local SellAllGroup = n6.Units:AddRightGroupbox("Sell All", "trash-2")
SellAllGroup:AddToggle("AutoSellAllBrainrots", { Text = "Auto Sell All", Default = false })
SellAllGroup:AddSlider("SellAllDelay", { Text = "Sell delay", Default = 5, Min = 0.5, Max = 120, Rounding = 1, Suffix = "s" })
SellAllGroup:AddButton({ Text = "Sell All Now", Func = nv })
local CombatGroup = n6.Units:AddRightGroupbox("Combat", "crosshair")
CombatGroup:AddToggle("KillAura", { Text = "Kill Aura", Default = false })
CombatGroup:AddSlider("KillAuraRange", { Text = "Range", Default = 0, Min = 0, Max = 100, Rounding = 0 })
CombatGroup:AddSlider("KillAuraDelay", { Text = "Delay", Default = 0, Min = 0, Max = 2, Rounding = 2, Suffix = "s" })
local SkillTreeGroup = n6.Skills:AddLeftGroupbox("Skill Tree", "network")
SkillTreeGroup:AddToggle("AutoBuySkills", { Text = "Auto Buy Affordable Skills", Default = false })
SkillTreeGroup:AddSlider("SkillDelay", { Text = "Skill delay", Default = 0.35, Min = 0.1, Max = 30, Rounding = 2, Suffix = "s" })
SkillTreeGroup:AddSlider("SkillMaxPrice", { Text = "Max price", Default = 0, Min = 0, Max = 1000000000000, Rounding = 0, Suffix = "$" })
SkillTreeGroup:AddSlider("SkillMoneyBuffer", { Text = "Keep money", Default = 0, Min = 0, Max = 1000000000000, Rounding = 0, Suffix = "$" })
SkillTreeGroup:AddButton({ Text = "Buy Skills Now", Func = onBuySkillsNow })
local RebirthGroup = n6.Skills:AddRightGroupbox("Rebirth", "refresh-cw")
RebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
RebirthGroup:AddSlider("RebirthDelay", { Text = "Rebirth delay", Default = 2, Min = 0.5, Max = 60, Rounding = 1, Suffix = "s" })
RebirthGroup:AddSlider("RebirthMoneyBuffer", { Text = "Keep money", Default = 0, Min = 0, Max = 1000000000000, Rounding = 0, Suffix = "$" })
RebirthGroup:AddButton({ Text = "Rebirth Now", Func = mJ })
local MenuGroup = n6.Settings:AddLeftGroupbox("Menu", "menu")
Library.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton({ Text = "Unload", Func = onUnload })
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
ThemeManager:ApplyToTab(n6.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/roll-your-army")
SaveManager:BuildConfigSection(n6.Settings)
SaveManager:LoadAutoloadConfig()
np = tick()
nj = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local vh = v
        pcall(function()
            vh:Disable()
        end)
    end
end)
m4 = fn628
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(fns.onInputChanged)
if Collect_EquipGroup and SkillTreeGroup and (SkillTreeGroup and not connection2) or (not connection2 and Collect_EquipGroup or connection2 and connection2) or not (Collect_EquipGroup and SkillTreeGroup and (SkillTreeGroup and not connection2) or (not connection2 and Collect_EquipGroup or connection2 and connection2)) then
    Library:OnUnload(fn632)
    task.spawn(worker14)
    task.spawn(worker13)
    task.spawn(worker12)
    task.spawn(fns.worker11)
    task.spawn(worker10)
    task.spawn(worker9)
    task.spawn(worker8)
    task.spawn(worker7)
    task.spawn(worker6)
    task.spawn(worker5)
    task.spawn(worker4)
    task.spawn(worker3)
    task.spawn(worker2)
else
    Library:OnUnload(fn632)
    task.spawn(worker14)
    task.spawn(worker13)
    task.spawn(worker12)
    task.spawn(fns.worker11)
    task.spawn(worker10)
    task.spawn(worker9)
    task.spawn(worker8)
    task.spawn(worker7)
    task.spawn(worker6)
    task.spawn(worker5)
    task.spawn(worker4)
    task.spawn(worker3)
    task.spawn(worker2)
end
