local fns = {}
local sC_1, sC_4, sC_6, sC_7, sC_9, sC_11, sC_12, sC_15, sC_17, sC_19
local l2
local SaveManager
local mr
local EquipUnit
local l8
local k8
local lQ
local mx
local lx
local me
local le
local lW
local mD
local lD
local mk
local lk
local l1
local lJ
local mq
local connection2
local l7
local lP
local mw
local lw
local ld
local lV
local mC
local lC
local mj
local lj
local l0
local connection
local mp
local lp
local CurrentCamera2
local lO
local mv
local lv
local mc
local lc
local lU
local mB
local lB
local mi
local li
local l_
local lH
local mo
local lo
local l5
local lN
local mu
local MergeAll
local lb
local lT
local Options
local mh
local ResearchStart
local lZ
local Toggles
local mn
local ln
local l4
local lM
local mt
local lt
local ma
local la
local Library
local mz
local lz
local mg
local Label
local lY
local mF
local lF
local SwordSwingEvent
local lm
local l3
local lL
local ms
local ls
local l9
local ResearchComplete
local UnitConfig
local my
local ly
local mf
local lf
local lX
local mE
local lE
local ml
local ll
function fns.fn8()
    local pK = if lY("RebirthMaxed", false) == true then 1 else 0
    if pK == 1 then
        return
    end
    local pF = lY("HeartsNeed", 50) or 50
    if ld() >= pF then
        mE:FireServer()
    end
end
function fns.onInputBegan()
    mv = tick()
end
function fns.fn15(L, M)
    return L.order < M.order
end
function fns.fn22()
    local rP = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local rQ = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if rQ then
                local rQ_1 = l0(k, v)
                if rQ_1 then
                    rP[#rP + 1] = rQ_1
                end
            end
        end
    end
    table.sort(rP, function(hl, hm)
        if hl.type ~= hm.type then
            return hl.type < hm.type
        end
        return hl.idx < hm.idx
    end)
    return { objects = rP }
end
function fns.fn47()
    for i, child in l9:GetChildren() do
        local nQ = child:IsA("Folder") and child.Name:match("^Plot%d+$") and child:GetAttribute("OwnerId") == l4.UserId
        if nQ then
            return child
        end
    end
end
function fns.worker2()
    local qM_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local qL = math.floor(os.clock() - mf)
        if qL < 60 then
            qM_1 = qL .. "s"
        elseif qL < 3600 then
            qM_1 = string.format("%dm %ds", qL // 60, qL % 60)
        else
            qM_1 = string.format("%dh %dm", qL // 3600, qL % 3600 // 60)
        end
        Label:SetText(mz("Session time", qM_1, l1))
    end
end
function fns.onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = l4.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local rb_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if rb_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
function fns.fn95()
    return l4.Character
end
function fns.onUnload()
    Library:Unload()
end
function fns.fn110()
    local CurrentCamera = l9.CurrentCamera
    if not CurrentCamera then
        return
    end
    mq:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    mq:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    mo = tick()
end
function fns.fn116(bH)
    local Upgrades = l4:FindFirstChild("Upgrades")
    local ok = Upgrades and Upgrades:FindFirstChild(bH)
    if not ok then
        return 0
    end
    local op = if ok:IsA("BoolValue") then 1 else 0
    if op == 1 then
        return ok.Value and 1 or 0
    end
    local ok_2 = tonumber(ok.Value) or 0
    return ok_2
end
function fns.fn119()
    lw(l_, "Copied Discord invite to clipboard")
end
function fns.antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            mj(true)
        end
    end
end
function fns.fn128()
    local p4 = (lY("MaxZone", 1))
    local qb = if p4 then 1 else 0
    local p9 = 258 * qb + 1915 * (1 - qb)
    local qa = 1255 * qb + 2159 * (1 - qb)
    if not ((p9 * 3951 + qa * 3940 + p9 * qa) % 16777213 == 6287848) then
        p4 = 1
    end
    local p5 = p4
    local p4_1 = lQ()
    local p6 = p4_1
    if p6 then
        local p7 = p4_1:GetAttribute("Zone") or 1
        p6 = p7
    end
    if (p6 or 1) ~= p5 then
        ms:FireServer(p5)
    end
end
function fns.fn130()
    local name
    for k, v in me do
        if ma(v.name) then
            name = v.name
        end
    end
    if not name then
        return
    end
    local o0 = lY("EquippedSword", "Blade") or "Blade"
    if o0 == name then
        return
    end
    ln:FireServer(name)
end
function fns.fn135()
    if not Toggles.Fly.Value then
        local rv = mi()
        if rv then
            rv.PlatformStand = false
        end
    end
end
function fns.fn136()
    local Shards = l4:FindFirstChild("Shards")
    local nF = Shards and tonumber(Shards.Value)
    return nF or 0
end
function fns.fn137(dU)
    local qe = (dU:FindFirstChild("HumanoidRootPart"))
    local qi = if qe then 1 else 0
    local qg = 3155 * qi + 992 * (1 - qi)
    local qh = 622 * qi + 3774 * (1 - qi)
    if not ((qg * 1362 + qh * 1048 + qg * qh) % 16777213 == 6911376) then
        qe = dU.PrimaryPart
    end
    return qe
end
function fns.fn145(aM, aN)
    local attr = l4:GetAttribute(aM)
    if attr == nil then
        return aN
    end
    return attr
end
function fns.fn178(aB)
    local nt = Toggles[aB]
    return nt ~= nil and nt.Value == true
end
function fns.fn198()
    local qE_1
    local qD_1
    if identifyexecutor then
        qE_1, qD_1 = identifyexecutor()
        local qF = qE_1 ~= ""
        local qG = type(qE_1) == "string" and qF
        if qG then
            local qF_1 = type(qD_1) == "string" and qD_1 ~= "" and qE_1 .. " " .. qD_1
            lB = qF_1 or qE_1
        end
    end
end
function fns.fn234()
    local pk = lY("ResearchActive", "") or ""
    if pk == "" then
        return true
    elseif lY("PassSecondScientist", false) then
        local pk_1 = lY("ResearchActive2", "") or ""
        return pk_1 == ""
    else
        return false
    end
end
function fns.onInputChanged(fG)
    local UserInputType = fG.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        mv = tick()
    end
end
function fns.onCopyJoinScript_JobID()
    local eG = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, lc)
    lw(eG, "Copied join script to clipboard")
end
function fns.worker4()
    while not Library.Unloaded do
        task.wait(0.45)
        if mF("AutoMerge") then
            pcall(la)
        end
    end
end
function fns.fn307(ha, hb)
    local Type = hb.Type
    if Type == "Toggle" then
        return { idx = ha, type = "Toggle", value = hb.Value == true }
    elseif Type == "Slider" then
        return { idx = ha, type = "Slider", value = tostring(hb.Value) }
    elseif Type == "Dropdown" then
        return { idx = ha, type = "Dropdown", multi = hb.Multi == true, value = hb.Value }
    elseif Type == "Input" then
        local rJ = hb.Value or ""
        return { idx = ha, type = "Input", text = tostring(rJ) }
    elseif Type == "ColorPicker" then
        return { idx = ha, type = "ColorPicker", value = hb.Value:ToHex(), transparency = hb.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = ha,
            type = "KeyPicker",
            mode = hb.Mode,
            key = hb.Value,
            modifiers = hb.Modifiers,
            toggled = hb.Toggled
        }
    else
        return nil
    end
end
function fns.onCopyVenmoLink()
    lw(lx, "Copied Venmo link")
end
function fns.fn328()
    local Coins = l4:FindFirstChild("Coins")
    local nC = Coins and tonumber(Coins.Value)
    return nC or 0
end
local function fn343(dX, dY)
    local qj = lQ()
    local qk = qj and qj:FindFirstChild("ActiveEnemies")
    if not qk then
        return nil, math.huge
    end
    local qk_1 = nil
    local ql = dY
    for i, child in qk:GetChildren() do
        local qj_2 = child:IsA("Model") and le(child)
        if qj_2 then
            local qj_3 = mB(child)
            if qj_3 then
                local Magnitude = (qj_3.Position - dX).Magnitude
                if Magnitude <= ql then
                    qk_1 = qj_3
                    ql = Magnitude
                end
            end
        end
    end
    return qk_1, ql
end
local function fn347(c_)
    return lY("Research" .. c_, false) == true
end
local function onExportConfigToClipboard()
    local sf_1
    local se_1
    se_1, sf_1 = pcall(mk.JSONEncode, mk, lM())
    if not se_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local se_2 = setclipboard
    local sk = if se_2 then 1 else 0
    local si = 3597 * sk + 3681 * (1 - sk)
    local sj = 1524 * sk + 3067 * (1 - sk)
    if not ((si * 2168 + sj * 919 + si * sj) % 16777213 == 14680680) then
        se_2 = toclipboard
    end
    local sg = se_2
    local se_3 = type(sg) ~= "function" or not pcall(sg, sf_1)
    if se_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function fn357()
    local Hearts = l4:FindFirstChild("Hearts")
    local nI = Hearts and tonumber(Hearts.Value)
    return nI or 0
end
local function fn359()
    pcall(function()
        connection:Disconnect()
    end)
    pcall(function()
        connection2:Disconnect()
    end)
    mj(false)
    local sy = mi()
    if sy then
        sy.PlatformStand = false
        sy.WalkSpeed = 16
    end
end
local function onCopySolanaAddress()
    lw(lH, "Copied Solana address")
end
local function onCopyBitcoinAddress()
    lw(lT, "Copied Bitcoin address")
end
local function fn433(dR)
    local Humanoid = dR:FindFirstChildOfClass("Humanoid")
    if Humanoid then
        return Humanoid.Health > 0
    end
    return true
end
local function fn443()
    local qu = l2()
    local qv = mi()
    local qv_1
    local qw = not qu or not qv or qv.Health <= 0
    local qw_1
    if qw then
        return
    end
    qw_1, qv_1 = ml(qu.Position, mh("KillAuraRange", 80))
    if not qw_1 then
        return
    end
    local qx = Vector3.new(qw_1.Position.X, qu.Position.Y, qw_1.Position.Z)
    if qv_1 > 8 then
        local qv_2 = Vector3.new(qw_1.Position.X - qu.Position.X, 0, qw_1.Position.Z - qu.Position.Z)
        if qv_2.Magnitude > 0.05 then
            local qy = qw_1.Position - qv_2.Unit * 5
            qu.CFrame = CFrame.lookAt(Vector3.new(qy.X, qu.Position.Y, qy.Z), qx)
        end
    elseif (qx - qu.Position).Magnitude > 0.05 then
        qu.CFrame = CFrame.lookAt(qu.Position, qx)
    end
    local qu_1 = lY("UpPlayerSwing", 0) or 0
    local qv_3 = 0.45 / (1 + qu_1)
    local qu_2 = os.clock()
    if qu_2 - lo < qv_3 then
        return
    end
    lo = qu_2
    SwordSwingEvent:FireServer()
end
local function fn451(bP, bQ)
    if bQ.Repeat then
        return lN.repeatCost(bQ, lt(bP))
    end
    return bQ.Cost or 0
end
local function fn483()
    mj(Toggles.AntiGameplayPause.Value)
end
local function fn522(ab, ac)
    return string.format('<font color="%s">%s</font>', ac, ab)
end
local function onCopyPayPalLink()
    lw(lC, "Copied PayPal link")
end
local function fn557(g4, g5)
    local rF_1 = (g4 == "Toggle" and Toggles or Options)[g5]
    local rE_2 = type(rF_1) == "table" and rF_1.Type == g4
    return rE_2 and rF_1 or nil
end
local function onImportConfigFromClipboardTex()
    local sn_1
    local sl = Options.SaveManager_ImportSource.Value or ""
    local sl_1
    local sm = tostring(sl):match("^%s*(.-)%s*$")
    if sm == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    sl_1, sn_1 = pcall(mk.JSONDecode, mk, sm)
    local sm_1 = not sl_1 or type(sn_1) ~= "table" or type(sn_1.objects) ~= "table"
    if sm_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local sl_2 = 0
    for i, v in ipairs(sn_1.objects) do
        if mt(v) then
            sl_2 += 1
        end
    end
    if sl_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local sn_2 = sl_2 == 1 and ""
    local sx = if sn_2 then 1 else 0
    local sv = 3558 * sx + 1699 * (1 - sx)
    local sw = 931 * sx + 2730 * (1 - sx)
    if not ((sv * 2050 + sw * 703 + sv * sw) % 16777213 == 11260891) then
        sn_2 = "s"
    end
    Library:Notify(("Imported %d setting%s"):format(sl_2, sn_2), 6)
end
local function worker6()
    while not Library.Unloaded do
        task.wait(0.05)
        if mF("SwordKillAura") then
            pcall(ll)
        end
    end
end
local function fn588(fc)
    local DiscordGroup = fc:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = lm })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = lm })
end
local function fn605(bi)
    local nZ_1
    local nY_1
    nY_1, nZ_1 = UnitConfig.parseKey(bi)
    local n_ = UnitConfig.Units[nY_1]
    if not n_ then
        return 0
    end
    local nY_2 = nZ_1 and UnitConfig.Enchants[nZ_1]
    local n2_1 = n_.Damage * (nY_2 and nY_2.DamageMult or 1) / (n_.SwingEvery / (nY_2 and nY_2.SpeedMult or 1))
    local nY_5 = n_.EffMult
    local n6 = if nY_5 then 1 else 0
    local n4 = 735 * n6 + 1046 * (1 - n6)
    local n5 = 3984 * n6 + 3406 * (1 - n6)
    if not ((n4 * 3982 + n5 * 2886 + n4 * n5) % 16777213 == 575621) then
        nY_5 = 1
    end
    return n2_1 * nY_5
end
local function fn644(aG, aH)
    local nw = Options[aG]
    local nx = nw and tonumber(nw.Value)
    return nx or aH
end
local function onRscripts()
    lw(lW, "Copied Rscripts profile to clipboard")
end
local function fn665(bv)
    if bv == "Blade" then
        return true
    end
    local oa = lY("OwnedSwordsList", "") or ""
    for k in oa:gmatch("[^|]+") do
        if k == bv then
            return true
        end
    end
    return false
end
local function fn678()
    local o8 = lD()
    local o9 = lp()
    for k, v in lN.Upgrades do
        if not (v.Auto or v.Hub) then
            local pa_1 = v.NeedsGlitched and lY("ResearchGlitched", false) ~= true
            if not pa_1 then
                if not not k8(v) then
                    local pa_2 = not v.Repeat
                    if pa_2 ~= false then
                        pa_2 = lZ(k)
                    end
                    if not pa_2 then
                        local pa_3 = mr(k, v)
                        if pa_3 <= (v.Tree == "Shards" and o9 or o8) then
                            lk:FireServer(k)
                            if v.Tree == "Shards" then
                                o9 -= pa_3
                            else
                                o8 -= pa_3
                            end
                        end
                    end
                end
            end
        end
    end
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local rj_1 = mi()
        if rj_1 then
            rj_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn687()
    local n7 = lY("UpSlots", 0) or 0
    local n8 = 1 + n7
    if lY("ResearchSlot7", false) then
        n8 += 1
    end
    if lY("ResearchSlot8", false) then
        n8 += 1
    end
    return n8
end
local function fn690(bM)
    local Requires = bM.Requires
    local ot = Requires == ""
    local ou = type(Requires) ~= "string" or ot
    if ou then
        return true
    end
    return lZ(Requires)
end
local function worker3()
    while not Library.Unloaded do
        if mF("AutoRoll") then
            pcall(li)
            task.wait(mh("RollDelay", 0.15))
        else
            task.wait(0.2)
        end
    end
end
local function fn717()
    for k, v in lF.Tiers do
        local id = v.id
        if not (lY("IndexClaim_" .. id, false) == true) then
            local pM = 0
            for k, v in lF.unitsFor(id) do
                if lO(v, id) then
                    pM += 1
                end
            end
            if (v.Req or 0) <= pM then
                mx:FireServer(id)
            end
        end
    end
end
local function onOnClientEvent(bS)
    if type(bS) == "table" then
        l5 = bS
    elseif type(bS) == "string" then
        l5[bS] = true
    end
end
local function onCopyUSDTAddress()
    lw(lL, "Copied USDT address")
end
local function fn750()
    lv:FireServer()
end
local function fn754()
    local nK = mu()
    local nL = nK and nK:FindFirstChildOfClass("Humanoid")
    return nL
end
local function onCopyEthereumAddress()
    lw(lP, "Copied Ethereum address")
end
local function fn798(ae, af, ag)
    return string.format("<b>%s</b> %s %s", ae, lb("-", "#5a6070"), lb(af, ag))
end
local function fn811(U, V)
    if setclipboard then
        setclipboard(U)
    elseif toclipboard then
        toclipboard(U)
    end
    Library:Notify(V)
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local q2 = tick() - mv
            local q3 = tick() - mo
            if q2 >= 300 and q3 >= 60 then
                pcall(l3)
            else
                if q2 < 300 and q3 >= 300 then
                    pcall(l3)
                end
            end
        end
    end
end
local function fn816()
    local p0 = lY("MaxZone", 1) or 1
    local p0_1 = p0 + 1
    local p1_1 = lz[p0_1]
    if type(p1_1) ~= "table" then
        return
    end
    local p2 = p1_1.Price or 0
    if p2 <= lD() then
        ms:FireServer(p0_1)
    end
end
local function fn819(bz)
    local og = lN.Upgrades[bz]
    if not og then
        return false
    elseif og.Auto then
        return true
    else
        local Upgrades = l4:FindFirstChild("Upgrades")
        local oh = Upgrades and Upgrades:FindFirstChild(bz)
        if not oh then
            return false
        elseif oh:IsA("BoolValue") then
            return oh.Value == true
        else
            local oh_1 = tonumber(oh.Value) or 0
            return oh_1 > 0
        end
    end
end
local function worker5()
    while not Library.Unloaded do
        task.wait(1)
        if mF("AutoEquipTroops") then
            pcall(my)
        end
        if mF("AutoEquipSword") then
            pcall(mn)
        end
    end
end
local function worker()
    l4:WaitForChild("Coins", 60)
    task.wait(1)
    mC:FireServer()
end
local function onRenderStepped(gn)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local ro_1 = mi()
        if ro_1 then
            ro_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local ro_3 = l2()
        local rp = mi()
        if ro_3 and rp then
            rp.PlatformStand = true
            local rp_1 = Vector3.zero
            if mw:IsKeyDown(Enum.KeyCode.W) then
                rp_1 = rp_1 + CurrentCamera2.CFrame.LookVector
            end
            if mw:IsKeyDown(Enum.KeyCode.S) then
                rp_1 = rp_1 - CurrentCamera2.CFrame.LookVector
            end
            if mw:IsKeyDown(Enum.KeyCode.A) then
                rp_1 = rp_1 - CurrentCamera2.CFrame.RightVector
            end
            if mw:IsKeyDown(Enum.KeyCode.D) then
                rp_1 = rp_1 + CurrentCamera2.CFrame.RightVector
            end
            if mw:IsKeyDown(Enum.KeyCode.Space) then
                rp_1 = rp_1 + Vector3.new(0, 1, 0)
            end
            if mw:IsKeyDown(Enum.KeyCode.LeftControl) then
                rp_1 = rp_1 - Vector3.new(0, 1, 0)
            end
            ro_3.Velocity = Vector3.zero
            if rp_1.Magnitude > 0 then
                ro_3.CFrame = ro_3.CFrame + rp_1.Unit * Options.FlySpeed.Value * gn
            end
        end
    end
end
local function fn853()
    MergeAll:FireServer()
end
local function fn860()
    if not Toggles.WalkSpeedEnabled.Value then
        local rx = mi()
        if rx then
            rx.WalkSpeed = 16
        end
    end
end
local function fn887(bX, bY)
    local oz = lF.keyFor(bX, bY)
    if l5[oz] then
        return true
    end
    local UnitCounts = l4:FindFirstChild("UnitCounts")
    local oB = UnitCounts ~= nil and UnitCounts:FindFirstChild(oz) ~= nil
    return oB
end
local function onCopyLitecoinAddress()
    lw(lX, "Copied Litecoin address")
end
local function fn905()
    local nN = mu()
    local nO = nN and nN:FindFirstChild("HumanoidRootPart")
    return nO
end
local function fn908()
    local pn = os.time()
    local po = lY("ResearchActive", "") or ""
    local po_1 = (lY("ResearchEndsAt", 0))
    local py = if po_1 then 1 else 0
    local pw = 1775 * py + 121 * (1 - py)
    local px = 4069 * py + 1246 * (1 - py)
    if not ((pw * 2209 + px * 3588 + pw * px) % 16777213 == 8965809) then
        po_1 = 0
    end
    local pq = po_1
    if po ~= "" and pq > 0 and pn >= pq then
        ResearchComplete:FireServer(po)
    end
    local po_3 = lY("ResearchActive2", "") or ""
    local po_4 = lY("ResearchEndsAt2", 0) or 0
    if po_3 ~= "" and po_4 > 0 and pn >= po_4 then
        ResearchComplete:FireServer(po_3)
    end
    local pn_1 = lY("ScientistLevel", 0) or 0
    if pn_1 < lJ.Scientist.MaxLevel then
        local pn_3 = lJ.Scientist.Costs[pn_1 + 1]
        local po_7 = type(pn_3) == "number" and pn_3 <= lD()
        if po_7 then
            lf:FireServer()
        end
    end
    if not l7() then
        return
    end
    local pn_4 = lY("Rebirths", 0) or 0
    local pn_5 = lD()
    for k, v in mc do
        local id = v.id
        local ps = lJ.Projects[id]
        if not not ps then
            if not mg(id) then
                if not (po == id or po_3 == id) then
                    local pt_1 = ps.Requires and not mg(ps.Requires)
                    if not pt_1 then
                        local pt_2 = not ps.Starter
                        if pt_2 ~= false then
                            pt_2 = pn_4 < (lJ.RequireRebirths or 1)
                        end
                        if not pt_2 then
                            if (ps.Price or 0) <= pn_5 then
                                ResearchStart:FireServer(id)
                                return
                            end
                        end
                    end
                end
            end
        end
    end
end
local function fn915()
    if mD then
        return
    end
    mD = true
    local oD = {}
    local UnitCounts = l4:FindFirstChild("UnitCounts")
    if UnitCounts then
        for i, child in UnitCounts:GetChildren() do
            if child.Value > 0 then
                oD[#oD + 1] = child.Name
            end
        end
    end
    if #oD == 0 then
        mD = false
        return
    end
    table.sort(oD, function(cg, ch)
        return ls(ch) < ls(cg)
    end)
    local oE_1 = 0
    local oF = {}
    local oG = mp()
    for k, v in oD do
        if UnitConfig.Units[UnitConfig.parseKey(v)] then
            oF[v] = true
            oE_1 += 1
            if oG <= oE_1 then
                break
            end
        end
    end
    local oD_1 = lQ()
    local oE_2 = oD_1 and oD_1:FindFirstChild("ActiveUnits")
    local oD_2 = {}
    if oE_2 then
        for i, child in oE_2:GetChildren() do
            oD_2[child.Name] = true
            if not oF[child.Name] then
                EquipUnit:FireServer(child.Name)
            end
        end
    end
    task.wait(0.25)
    for k in oF do
        if not oD_2[k] then
            EquipUnit:FireServer(k)
        end
    end
    mD = false
end
local function worker7()
    while not Library.Unloaded do
        task.wait(1)
        if mF("AutoUpgradeTree") then
            pcall(lU)
        end
        if mF("AutoResearch") then
            pcall(lV)
        end
        if mF("AutoRebirth") then
            pcall(ly)
        end
        if mF("AutoClaimIndex") then
            pcall(lj)
        end
        if mF("AutoBuyZones") then
            pcall(l8)
        end
        if mF("AutoSwitchZone") then
            pcall(lE)
        end
    end
end
k8 = nil
ResearchComplete = nil
la = nil
lb = nil
lc = nil
ld = nil
le = nil
lf = nil
Label = nil
ResearchStart = nil
li = nil
lj = nil
lk = nil
ll = nil
lm = nil
ln = nil
lo = nil
lp = nil
connection2 = nil
EquipUnit = nil
ls = nil
lt = nil
MergeAll = nil
lv = nil
lw = nil
lx = nil
ly = nil
lz = nil
Options = nil
lB = nil
lC = nil
lD = nil
lE = nil
lF = nil
Toggles = nil
lH = nil
connection = nil
lJ = nil
SaveManager = nil
lL = nil
lM = nil
lN = nil
lO = nil
lP = nil
lQ = nil
UnitConfig = nil
Library = nil
lT = nil
lU = nil
lV = nil
lW = nil
lX = nil
lY = nil
lZ = nil
l_ = nil
l0 = nil
l1 = nil
l2 = nil
l3 = nil
l4 = nil
l5 = nil
CurrentCamera2 = nil
l7 = nil
l8 = nil
l9 = nil
ma = nil
mc = nil
me = nil
mf = nil
mg = nil
mh = nil
mi = nil
mj = nil
mk = nil
ml = nil
SwordSwingEvent = nil
mn = nil
mo = nil
mp = nil
mq = nil
mr = nil
ms = nil
mt = nil
mu = nil
mv = nil
mw = nil
mx = nil
my = nil
mz = nil
mB = nil
mC = nil
mD = nil
mE = nil
mF = nil
local CoreGui, md
CoreGui = nil
md = nil
local mA
sC_12, sC_7, sC_1, mw, mq, mk, md, CoreGui, l9, l4, sC_15, l_, lW, UnitConfig, lN, lJ, lF, lz, lv, MergeAll, EquipUnit, ln, lk, ResearchStart, lf, ResearchComplete, mE, mC, mx, ms, SwordSwingEvent, me, mc = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local sC_22 = 66
repeat
    sC_9 = (sC_22 * 5 + 5) % 12 + 1
    if sC_9 <= 6 then
        if sC_9 <= 3 then
            if sC_9 <= 2 then
                if sC_9 <= 1 then
                    local tz = bit32.rrotate(bit32.bxor(bit32.lrotate(sC_22, 9), string.byte(tostring(mC))), 19)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(tz, 7423249), 18), 340001221) == bit32.lrotate(tz, 18) then
                        sC_7 = game:GetService("ReplicatedStorage")
                    else
                        ms = game:GetService("ReplicatedStorage")
                    end
                    sC_22 = (sC_22 + 29) % 96
                else
                    local tg = bit32.rrotate(bit32.bxor(bit32.lrotate(sC_22, 13), string.byte(tostring(lN))), 4)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(tg, 3634942392), 28), 2374667547) == bit32.lrotate(tg, 28) then
                        sC_1 = game:GetService("RunService")
                        mw = game:GetService("UserInputService")
                        mq = game:GetService("VirtualUser")
                        mk = game:GetService("HttpService")
                        md = game:GetService("GuiService")
                    else
                        mk = game:GetService("RunService")
                        sC_1 = game:GetService("UserInputService")
                        md = game:GetService("VirtualUser")
                        mq = game:GetService("HttpService")
                        mw = game:GetService("GuiService")
                    end
                    sC_22 = (sC_22 + 53) % 96
                end
            else
                sC_17 = {
                    "kfdnydoif",
                    "jetidnr",
                    "mpdpchrestz",
                    "rvyhqzwko",
                    "meuicfr",
                    "wesa",
                    "tyyiaas",
                    "xkdowxafbxi",
                    "busrjaj",
                    "yvqabtkwofr",
                    "tiltohi",
                    "ucjjmes",
                    "ctdfyi",
                    "qnku"
                }
                if sC_17[(sC_22 * 93 + 17) % 14 + 1] < sC_17[(sC_22 * 93 + 17) % 14 + 1] then
                    l4 = game:GetService("CoreGui")
                    sC_15 = game:GetService("Workspace")
                    sC_12 = CoreGui.LocalPlayer
                    l9 = "Roll an Army"
                else
                    CoreGui = game:GetService("CoreGui")
                    l9 = game:GetService("Workspace")
                    l4 = sC_12.LocalPlayer
                    sC_15 = "Roll an Army"
                end
                sC_22 = (sC_22 + 89) % 96
            end
        elseif sC_9 <= 5 then
            if sC_9 <= 4 then
                local tK = bit32.rrotate(bit32.bxor(bit32.lrotate(sC_22, 2), string.byte(tostring(UnitConfig))), 20)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(tK, 3165701635), 563644178), (bit32.bxor(bit32.band(tK, 1129265660), 75485433))), 563644178), 75485433) ~= tK then
                    lW = "https://discord.gg/ehKVq7pf7v"
                    l_ = "https://rscripts.net/@Ouroboros"
                else
                    l_ = "https://discord.gg/ehKVq7pf7v"
                    lW = "https://rscripts.net/@Ouroboros"
                end
                sC_22 = (sC_22 + 89) % 96
            else
                sC_17 = (vector.create((sC_22 * 1 + 1) % 11 + 1, (sC_22 * 10 + 3) % 13 + 1, (sC_22 * 8 + 15) % 17 + 1))
                sC_4 = (vector.create((sC_22 * 1 + 8) % 11 + 1, (sC_22 * 5 + 4) % 13 + 1, (sC_22 * 2 + 16) % 17 + 1))
                sC_11 = (vector.create((sC_22 * 2 + 9) % 11 + 1, (sC_22 * 8 + 13) % 13 + 1, (sC_22 * 7 + 2) % 17 + 1))
                sC_19 = (vector.create((sC_22 * 1 + 6) % 11 + 1, (sC_22 * 7 + 8) % 13 + 1, (sC_22 * 8 + 1) % 17 + 1))
                if vector.dot(vector.cross(sC_17, sC_4), (vector.cross(sC_11, sC_19))) == vector.dot(sC_17, sC_11) * vector.dot(sC_4, sC_19) - vector.dot(sC_17, sC_19) * vector.dot(sC_4, sC_11) then
                    UnitConfig = require(sC_7:WaitForChild("UnitConfig"))
                    lN = require(sC_7:WaitForChild("UpgradeConfig"))
                    lJ = require(sC_7:WaitForChild("ResearchConfig"))
                    lF = require(sC_7:WaitForChild("IndexConfig"))
                else
                    lF = require(UnitConfig:WaitForChild("UnitConfig"))
                    sC_7 = require(UnitConfig:WaitForChild("UpgradeConfig"))
                    lN = require(UnitConfig:WaitForChild("ResearchConfig"))
                    lJ = require(UnitConfig:WaitForChild("IndexConfig"))
                end
                sC_22 = (sC_22 + 41) % 96
            end
        else
            local s9 = bit32.rrotate(bit32.bxor(bit32.lrotate(sC_22, 23), string.byte(tostring(mc))), 10)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(s9, 1826329615), 2925781025), (bit32.bxor(bit32.band(s9, 2468637680), 1771299888))), 2925781025), 1771299888) == s9 then
                lz = require(sC_7:WaitForChild("ZoneConfig"))
                lv = sC_7:WaitForChild("RollRequest")
                MergeAll = sC_7:WaitForChild("MergeAll")
            else
                sC_7 = require(MergeAll:WaitForChild("ZoneConfig"))
                lz = MergeAll:WaitForChild("RollRequest")
                lv = MergeAll:WaitForChild("MergeAll")
            end
            sC_22 = (sC_22 + 29) % 96
        end
    elseif sC_9 <= 9 then
        if sC_9 <= 8 then
            if sC_9 <= 7 then
                sC_17 = (vector.create((sC_22 * 7 + 3) % 11 + 1, (sC_22 * 6 + 5) % 13 + 1, (sC_22 * 13 + 13) % 17 + 1))
                sC_4 = (vector.create((sC_22 * 1 + 6) % 11 + 1, (sC_22 * 4 + 3) % 13 + 1, (sC_22 * 8 + 16) % 17 + 1))
                sC_11 = (vector.create((sC_22 * 5 + 7) % 5 + 1, (sC_22 * 2 + 2) % 7 + 1, (sC_22 * 1 + 1) % 9 + 1))
                if math.abs((vector.angle(sC_17, sC_4, sC_11))) - math.abs((vector.angle(sC_4, sC_17, sC_11))) == 4 then
                    sC_7 = EquipUnit:WaitForChild("EquipUnit")
                else
                    EquipUnit = sC_7:WaitForChild("EquipUnit")
                end
                sC_22 = (sC_22 + 29) % 96
            else
                if (lf or not ms) and (sC_22 or not mk) and (not mk or mk or sC_22 and EquipUnit) or (not lf or lz or lz and sC_22) and ((not lz or not EquipUnit) and (lf and ms)) or not ((lf or not ms) and (sC_22 or not mk) and (not mk or mk or sC_22 and EquipUnit) or (not lf or lz or lz and sC_22) and ((not lz or not EquipUnit) and (lf and ms))) then
                    ln = sC_7:WaitForChild("EquipSwordEvent")
                    lk = sC_7:WaitForChild("BuyUpgrade")
                    ResearchStart = sC_7:WaitForChild("ResearchStart")
                    lf = sC_7:WaitForChild("ResearchScientist")
                else
                    sC_7 = ResearchStart:WaitForChild("EquipSwordEvent")
                    lf = ResearchStart:WaitForChild("BuyUpgrade")
                    lk = ResearchStart:WaitForChild("ResearchStart")
                    ln = ResearchStart:WaitForChild("ResearchScientist")
                end
                sC_22 = (sC_22 + 17) % 96
            end
        else
            if sC_22 * 4812591 + 6 + 5 <= sC_22 * 4812591 + 6 + 5 + 2 then
                ResearchComplete = sC_7:WaitForChild("ResearchComplete")
                mE = sC_7:WaitForChild("RebirthRequest")
                mC = sC_7:WaitForChild("IndexData")
                mx = sC_7:WaitForChild("IndexClaim")
                ms = sC_7:WaitForChild("ZoneSwitch")
            else
                mC = ResearchComplete:WaitForChild("ResearchComplete")
                mx = ResearchComplete:WaitForChild("RebirthRequest")
                sC_7 = ResearchComplete:WaitForChild("IndexData")
                ms = ResearchComplete:WaitForChild("IndexClaim")
                mE = ResearchComplete:WaitForChild("ZoneSwitch")
            end
            sC_22 = (sC_22 + 77) % 96
        end
    elseif sC_9 <= 11 then
        if sC_9 <= 10 then
            sC_9 = { "jquxk", "rfasinxbalq", "fdrdheygx", "mszvdwfncp", "pdszoqbb", "gbnbf", "iml" }
            local tA = sC_22
            sC_17 = sC_9[tA % 7 + 1]
            if sC_17:len() <= sC_17:gsub("(.)", "%1%1", tA % 3 % 2 + 1):len() then
                SwordSwingEvent = sC_7:WaitForChild("SwordSwingEvent")
            else
                sC_7 = SwordSwingEvent:WaitForChild("SwordSwingEvent")
            end
            sC_22 = (sC_22 + 17) % 96
        else
            sC_9 = { "rth", "hohwztikgp", "cfpsosed", "asguwrusbwl", "djifbq", "ojpsb", "yvlmver", "kxmzdnwge" }
            local tt = sC_22
            sC_17 = sC_9[tt % 8 + 1]
            if sC_17:len() <= sC_17:gsub("(.)", "%1%1", tt % 3 % 2 + 1):len() then
                me = {
                    { name = "Blade", rebirths = 0 },
                    { name = "Royal Flush", rebirths = 1 },
                    { name = "King Maker", rebirths = 2 },
                    { name = "Grave Fang", rebirths = 3 },
                    { name = "Violet Thorn", rebirths = 4 },
                    { name = "Reaper", rebirths = 5 },
                    { name = "Inferno Reaper", rebirths = 6 }
                }
                mc = {}
            else
                mc = {
                    { name = "Inferno Reaper", rebirths = 6 },
                    { name = "Blade", rebirths = 0 },
                    { name = "Royal Flush", rebirths = 1 },
                    { name = "King Maker", rebirths = 2 },
                    { name = "Reaper", rebirths = 5 },
                    { name = "Grave Fang", rebirths = 3 },
                    { name = "Violet Thorn", rebirths = 4 }
                }
                me = {}
            end
            sC_22 = (sC_22 + 89) % 96
        end
    else
        if (sC_22 * 2 + 8) * 10 % 3 == ((sC_22 * 2 + 8) * 10 + 0) % 3 then
            sC_12 = game:GetService("Players")
        else
            mw = game:GetService("Players")
        end
        sC_22 = (sC_22 + 65) % 96
    end
until (sC_22 * 7 + 43) % 96 == 73
for k, v in lJ.Projects do
    sC_12 = #mc + 1
    sC_22 = v.Order or 0
    mc[sC_12] = { id = k, order = sC_22 }
end
sC_7 = 2
repeat
    sC_12 = {
        "zrjbm",
        "gsguuzwnlabg",
        "drtlikaeyt",
        "gjskod",
        "mmdatdlop",
        "iklrub",
        "pfn",
        "oyxtwsifzdql",
        "czixpak",
        "dsjhxq",
        "zsnzzouwpoz",
        "qbgdyrb",
        "phuryariou",
        "ldnyacyk",
        "cmgcrbehp"
    }
    if sC_12[(sC_7 * 43 + 32) % 15 + 1] <= sC_12[(sC_7 * 43 + 32) % 15 + 1] then
        table.sort(mc, fns.fn15)
    else
        table.sort(mc, fns.fn15)
    end
    sC_7 = (sC_7 + 0) % 4
until (sC_7 * 3 + 2) % 4 == 0
Library, SaveManager, Toggles, Options, l1, lX, lT, lP, lL, lH, lC, lx, l5, mD, lo, lB, Label, lc, sC_4, lw, lm, lb, mz, mF, mh, lY, lD, lp, ld, mu, mi, l2, lQ, ls, mp, ma, lZ, lt, k8, mr, lO, li, la, my, mn, lU, mg, l7, lV, ly, lj, l8, lE, le, mB, ml, ll = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
lw = fn811
lm = fns.fn119
lb = fn522
mz = fn798
local sC_5 = "#7fd47f"
local sC_18 = "#6ec1ff"
l1 = "#e8a34d"
local sC_10 = "#8b93a3"
lX = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
lT = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
lP = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
lL = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
lH = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
lC = "https://paypal.me/TheTruckerGOD"
lx = "https://venmo.com/u/miserablemusic"
local sC_2 = "#345d9d"
local sC_16 = "#f7931a"
local sC_8 = "#627eea"
local sC_23 = "#26a17b"
local sC_14 = "#14f195"
sC_19 = "#0070ba"
sC_11 = "#008cff"
mF = fns.fn178
mh = fn644
lY = fns.fn145
lD = fns.fn328
lp = fns.fn136
ld = fn357
mu = fns.fn95
mi = fn754
l2 = fn905
lQ = fns.fn47
ls = fn605
mp = fn687
ma = fn665
lZ = fn819
lt = fns.fn116
k8 = fn690
mr = fn451
l5 = {}
mC.OnClientEvent:Connect(onOnClientEvent)
task.spawn(worker)
lO = fn887
li = fn750
la = fn853
mD = false
my = fn915
mn = fns.fn130
lU = fn678
mg = fn347
l7 = fns.fn234
lV = fn908
ly = fns.fn8
lj = fn717
l8 = fn816
lE = fns.fn128
le = fn433
mB = fns.fn137
ml = fn343
lo = 0
ll = fn443
sC_22 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = l_, Copyable = true }, "|", sC_15 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local mZ = {
    Info = sC_22:AddTab("Info", "info"),
    Main = sC_22:AddTab("Main", "swords"),
    Player = sC_22:AddTab("Player", "person-standing"),
    Settings = sC_22:AddTab("Settings", "settings")
}
do
    mZ.Roll = mZ.Main:AddSubTab("Roll", "dices")
    mZ.Army = mZ.Main:AddSubTab("Army", "shield")
    mZ.Progress = mZ.Main:AddSubTab("Progress", "sprout")
    mZ.Zones = mZ.Main:AddSubTab("Zones", "map")
    lB = "Unknown"
    pcall(fns.fn198)
    sC_12 = mZ.Info:AddLeftGroupbox("Account", "circle-user")
    sC_12:AddLabel(mz("User", l4.Name, sC_5), true)
    sC_12:AddLabel(mz("Status", "Keyless", sC_5), true)
    sC_12:AddLabel(mz("Executor", lB, sC_5), true)
    sC_6 = mZ.Info:AddLeftGroupbox("Game Info", "gamepad-2")
    sC_6:AddLabel(lb(sC_15 .. " [" .. tostring(game.PlaceId) .. "]", sC_18), true)
    sC_6:AddLabel(mz("Place ID", tostring(game.PlaceId), sC_18), true)
    Label = sC_6:AddLabel(mz("Session time", "0s", l1), true)
end
lc = tostring(game.JobId)
if (lY and not sC_22 or (not lY or not lY)) and ((lY or sC_22) and (not lY and sC_18)) or not ((lY and not sC_22 or (not lY or not lY)) and ((lY or sC_22) and (not lY and sC_18))) then
    sC_4 = #lc > 18
else
    lc = #sC_4 > 18
end
if sC_4 then
    sC_12 = 1
    repeat
        local s6 = bit32.rrotate(bit32.bxor(bit32.lrotate(sC_12, 22), string.byte(tostring(sC_12))), 16)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(s6, 2640011819), 2786721394), (bit32.bxor(bit32.band(s6, 1654955476), 1725801451))), 2786721394), 1725801451) == s6 then
            sC_4 = string.sub(lc, 1, 18) .. "..."
        else
            lc = string.sub(sC_4, 1, 18) .. "..."
        end
        sC_12 = (sC_12 + 5) % 8
    until (sC_12 * 7 + 0) % 8 == 2
end
sC_12 = sC_4 or lc
mf = nil
local m2 = sC_12
sC_6:AddLabel(mz("Server", m2, sC_10), true)
sC_6:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
mf = os.clock()
task.spawn(fns.worker2)
local ScriptsGroup = mZ.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(lb("Included in this hub", sC_10), true)
ScriptsGroup:AddLabel(lb(sC_15, sC_18), true)
sC_4 = mZ.Info:AddRightGroupbox("Features", "list")
sC_4:AddLabel(lb("Auto Roll / Merge", sC_18), true)
sC_4:AddLabel(lb("Auto Equip", l1), true)
sC_4:AddLabel(lb("Auto Upgrade / Research", sC_5), true)
sC_4:AddLabel(lb("Auto Rebirth / Index / Zones", sC_18), true)
sC_4:AddLabel(lb("Kill Aura", l1), true)
sC_4:AddLabel(lb("Player Utilities", sC_10), true)
sC_17 = mZ.Info:AddRightGroupbox("Socials", "link")
sC_17:AddButton({ Text = "Discord", Func = lm })
sC_17:AddButton({ Text = "Rscripts", Func = onRscripts })
sC_9 = mZ.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
sC_9:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
sC_9:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
sC_9:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
sC_9:AddButton({ Text = "Copy Discord Invite", Func = lm })
sC_7 = mZ.Info:AddRightGroupbox("Donations", "heart")
sC_7:AddLabel(lb("All donations are optional but appreciated.", l1), true)
sC_7:AddLabel(lb("If you donate you get a special role, just PING after you donate.", sC_5), true)
sC_7:AddDivider()
sC_7:AddLabel(lb("LTC / Litecoin", sC_2), true)
sC_7:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
sC_7:AddLabel(lb("BTC / Bitcoin", sC_16), true)
sC_7:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
sC_7:AddLabel(lb("ETH / Ethereum", sC_8), true)
sC_7:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
sC_7:AddLabel(lb("USDT", sC_23), true)
sC_7:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
sC_7:AddLabel(lb("Solana", sC_14), true)
sC_7:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
sC_7:AddLabel(lb("PayPal", sC_19), true)
sC_7:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
sC_7:AddLabel(lb("Venmo", sC_11), true)
sC_7:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
sC_7:AddDivider()
sC_7:AddLabel(lb("Don't have any of the listed currencies but still wanna donate?", sC_10), true)
sC_7:AddLabel(lb("DM me and we'll work something out.", sC_18), true)
local FaqGroup = mZ.Info:AddRightGroupbox("FAQ", "circle-help")
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
for k, v in mZ do
    sC_12 = v ~= mZ.Info and v ~= mZ.Main
    if sC_12 then
        fn588(v)
    end
end
mv, mo, connection, connection2, CurrentCamera2, l3, mj, mA, l0, lM, mt = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
sC_19 = mZ.Roll:AddLeftGroupbox("Roll", "dices")
sC_19:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
sC_19:AddSlider("RollDelay", { Text = "Roll Delay", Default = 0.15, Min = 0.05, Max = 1, Rounding = 2 })
sC_4 = mZ.Roll:AddRightGroupbox("Merge", "layers")
sC_4:AddToggle("AutoMerge", { Text = "Auto Merge", Default = false })
sC_17 = mZ.Army:AddLeftGroupbox("Equip", "swords")
sC_17:AddToggle("AutoEquipTroops", { Text = "Auto Equip Best Troops", Default = false })
sC_17:AddToggle("AutoEquipSword", { Text = "Auto Equip Best Sword", Default = false })
sC_9 = mZ.Army:AddRightGroupbox("Combat", "swords")
sC_9:AddToggle("SwordKillAura", { Text = "Sword Kill Aura", Default = false })
sC_9:AddSlider("KillAuraRange", { Text = "Kill Aura Range", Default = 80, Min = 10, Max = 200, Rounding = 0 })
sC_15 = mZ.Progress:AddLeftGroupbox("Upgrades", "git-branch")
sC_15:AddToggle("AutoUpgradeTree", { Text = "Auto Upgrade Tree", Default = false })
sC_15:AddToggle("AutoResearch", { Text = "Auto Research", Default = false })
sC_7 = mZ.Progress:AddRightGroupbox("Progress", "trophy")
sC_7:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
sC_7:AddToggle("AutoClaimIndex", { Text = "Auto Claim Index", Default = false })
sC_22 = mZ.Zones:AddLeftGroupbox("Zones", "map")
sC_22:AddToggle("AutoBuyZones", { Text = "Auto Buy Zones", Default = false })
sC_22:AddToggle("AutoSwitchZone", { Text = "Auto Switch Highest Zone", Default = false })
sC_12 = mZ.Player:AddLeftGroupbox("Movement", "footprints")
sC_12:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
sC_12:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
sC_12:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
sC_12:AddToggle("NoClip", { Text = "NoClip", Default = false })
sC_12:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
sC_23 = mZ.Player:AddRightGroupbox("Fly", "feather")
sC_23:AddToggle("Fly", { Text = "Fly", Default = false })
sC_23:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
sC_14 = mZ.Settings:AddLeftGroupbox("Menu")
sC_14:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
sC_14:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
sC_14:AddButton({ Text = "Unload", Func = fns.onUnload })
mv = tick()
if ((l3 or false) and (not l3 or not l3) or (sC_15 and 4 or (sC_15 or not sC_15))) and (not l3 or not sC_15) and ((not sC_15 or not l3) and (not l3 or 4) or 4 or (l3 or l3 or (not l3 or not l3) or l3 and sC_15 and false)) and not (((l3 or false) and (not l3 or not l3) or (sC_15 and 4 or (sC_15 or not sC_15))) and (not l3 or not sC_15) and ((not sC_15 or not l3) and (not l3 or 4) or 4 or (l3 or l3 or (not l3 or not l3) or l3 and sC_15 and false))) then
    l0 = tick()
else
    mo = tick()
end
pcall(function()
    for i, v in ipairs(getconnections(l4.Idled)) do
        local qU = v
        pcall(function()
            qU:Disable()
        end)
    end
end)
l3 = fns.fn110
connection = mw.InputBegan:Connect(fns.onInputBegan)
connection2 = mw.InputChanged:Connect(fns.onInputChanged)
task.spawn(antiAfkLoop)
mj = function(fV)
    pcall(function()
        md:SetGameplayPausedNotificationEnabled(not fV)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not fV
        end
    end)
    if not fV then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(l4, "GameplayPaused", false)
        else
            l4.GameplayPaused = false
        end
    end)
end
Toggles.AntiGameplayPause:OnChanged(fn483)
task.spawn(fns.antiGameplayPauseLoop)
sC_1.Stepped:Connect(fns.onStepped)
mw.JumpRequest:Connect(onJumpRequest)
CurrentCamera2 = l9.CurrentCamera
sC_1.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fns.fn135)
Toggles.WalkSpeedEnabled:OnChanged(fn860)
task.spawn(worker3)
task.spawn(fns.worker4)
task.spawn(worker5)
task.spawn(worker6)
task.spawn(worker7)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
ThemeManager:ApplyToTab(mZ.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/RollAnArmy")
sC_6 = SaveManager:BuildConfigSection(mZ.Settings)
mA = fn557
l0 = fns.fn307
lM = fns.fn22
if not sC_12 or sC_4 or (not sC_7 or not sC_7) or (mo or sC_15) and (not mo or not sC_12) or not (not sC_12 or sC_4 or (not sC_7 or not sC_7) or (mo or sC_15) and (not mo or not sC_12)) then
    mt = function(ho)
        local r8
        r8 = nil
        local r9 = type(ho) ~= "table"
        local sd = if r9 then 1 else 0
        local sb = 479 * sd + 3120 * (1 - sd)
        local sc = 2287 * sd + 2804 * (1 - sd)
        if not ((sb * 2313 + sc * 4087 + sb * sc) % 16777213 == 11550369) then
            r9 = type(ho.idx) ~= "string"
        end
        if not r9 then
            r9 = type(ho.type) ~= "string"
        end
        if not r9 then
            r9 = SaveManager.Ignore[ho.idx]
        end
        if r9 then
            return false
        end
        r8 = mA(ho.type, ho.idx)
        if not r8 then
            return false
        end
        local r9_1 = pcall(function()
            if ho.type == "Input" then
                if type(ho.text) ~= "string" then
                    return
                end
                r8:SetValue(ho.text)
            elseif ho.type == "ColorPicker" then
                r8:SetValueRGB(Color3.fromHex(ho.value), ho.transparency)
            elseif ho.type == "KeyPicker" then
                r8:SetValue({ ho.key, ho.mode, ho.modifiers })
                if ho.mode == "Toggle" and ho.toggled ~= nil then
                    r8.Toggled = ho.toggled
                    r8:Update()
                end
            else
                r8:SetValue(ho.value)
            end
        end)
        return r9_1
    end
end
sC_6:AddDivider()
sC_6:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
sC_6:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
sC_6:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
Library:OnUnload(fn359)
