local fns = {}
local vu_1, vu_4, vu_5, vu_6
local mX
local nE
local Services
local n2
local connection
local nK
local nr
local m8
local nQ
local mQ
local nx
local ne
local nW
local mW
local nD
local nk
local n1
local m1
local nJ
local nq
local connection2
local mP
local nw
local nd
local VirtualUser
local mV
local nC
local nj
local n0
local m0
local nI
local np
local n6
local m6
local PlayerGui
local mO
local nv
local nc
local nU
local mU
local nB
local ni
local n_
local m_
local nH
local no
local CurrentCamera
local m5
local nN
local nu
local nb
local HttpService
local mT
local nA
local nh
local nZ
local mZ
local nG
local nn
local n4
local m4
local nM
local nS
local mS
local nz
local mY
local nF
local nm
local n3
local m3
local m9
local LocalPlayer
local mR
local ny
local nf
local nX
function fns.onCopyLitecoinAddress()
    n0(nC, "Copied Litecoin address")
end
function fns.fn39()
    local uH = {}
    for k, v in { mS, mP } do
        for k, v in v do
            local uI = type(v) == "table" and type(v.Type) == "string" and not mY.Ignore[k]
            if uI then
                local uI_1 = mT(k, v)
                if uI_1 then
                    uH[#uH + 1] = uI_1
                end
            end
        end
    end
    table.sort(uH, function(i9, ja)
        if i9.type ~= ja.type then
            return i9.type < ja.type
        end
        return i9.idx < ja.idx
    end)
    return { objects = uH }
end
function fns.onCopyPayPalLink()
    n0(nh, "Copied PayPal link")
end
function fns.fn72()
    local q9 = mQ()
    local ra = q9 and q9:FindFirstChild("homeZone")
    local ra_1 = np(ra)
    if ra_1 then
        no(ra_1 + Vector3.new(0, 3, 0))
        nZ(function()
            return nb == false
        end, 4)
    end
end
function fns.fn108()
    if ni.Money ~= nil then
        return ni
    end
    if filtergc then
        local pk = filtergc("table", { Keys = { "ownedBars", "Money" } }, true)
        if type(pk) == "table" then
            ni = pk
        end
    end
    return ni
end
function fns.onRenderStepped(hL)
    if nd.Unloaded then
        return
    end
    if mS.WalkSpeedEnabled and mS.WalkSpeedEnabled.Value then
        local tY_1 = nu()
        if tY_1 then
            tY_1.WalkSpeed = mP.WalkSpeed.Value
        end
    end
    if mS.Fly and mS.Fly.Value then
        local tY_3 = m9()
        local tZ = nu()
        if tY_3 and tZ then
            tZ.PlatformStand = true
            local tZ_1 = Vector3.zero
            if nX:IsKeyDown(Enum.KeyCode.W) then
                tZ_1 = tZ_1 + CurrentCamera.CFrame.LookVector
            end
            if nX:IsKeyDown(Enum.KeyCode.S) then
                tZ_1 = tZ_1 - CurrentCamera.CFrame.LookVector
            end
            if nX:IsKeyDown(Enum.KeyCode.A) then
                tZ_1 = tZ_1 - CurrentCamera.CFrame.RightVector
            end
            if nX:IsKeyDown(Enum.KeyCode.D) then
                tZ_1 = tZ_1 + CurrentCamera.CFrame.RightVector
            end
            if nX:IsKeyDown(Enum.KeyCode.Space) then
                tZ_1 = tZ_1 + Vector3.new(0, 1, 0)
            end
            if nX:IsKeyDown(Enum.KeyCode.LeftControl) then
                tZ_1 = tZ_1 - Vector3.new(0, 1, 0)
            end
            tY_3.Velocity = Vector3.zero
            if tZ_1.Magnitude > 0 then
                tY_3.CFrame = tY_3.CFrame + tZ_1.Unit * mP.FlySpeed.Value * hL
            end
        end
    end
end
function fns.fn127()
    local qI = nU()
    if qI then
        return qI:GetPivot().Position
    end
    local qI_1 = typeof(m4) == "Vector3"
    if qI_1 then
        local qJ = os.clock() - m1
        local qK = (tonumber(nD.Lifetime))
        local qR = if qK then 1 else 0
        local qP = 352 * qR + 2952 * (1 - qR)
        local qQ = 3130 * qR + 871 * (1 - qR)
        if not ((qP * 1598 + qQ * 2052 + qP * qQ) % 16777213 == 8087016) then
            qK = 30
        end
        qI_1 = qJ < qK
    end
    if qI_1 then
        return m4
    end
    return nil
end
function fns.onInputBegan()
    nK = tick()
end
function fns.fn147()
    n4:FireServer({ kind = "getData" })
end
function fns.fn156(be)
    local pw = nA()
    local px = m9()
    local py = pw and px and typeof(be) == "Vector3"
    if not py then
        return false
    end
    local py_1 = CFrame.new(be)
    if pw.PivotTo then
        pw:PivotTo(py_1)
    else
        px.CFrame = py_1
    end
    px.AssemblyLinearVelocity = Vector3.zero
    px.AssemblyAngularVelocity = Vector3.zero
    return true
end
function fns.worker5()
    while not nd.Unloaded do
        task.wait(1.2)
        if mU("AutoRebirth") then
            nH("RebirthService", { kind = "rebirth" })
        end
    end
end
function fns.onCopyVenmoLink()
    n0(nc, "Copied Venmo link")
end
function fns.onCopyJoinScript_JobID()
    local tv = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, nf)
    if setclipboard then
        setclipboard(tv)
    elseif toclipboard then
        toclipboard(tv)
    end
    nd:Notify("Copied join script to clipboard")
end
function fns.fn289()
    connection:Disconnect()
    connection2:Disconnect()
    m_(false)
    print("Unloaded!")
end
function fns.fn295(iP, iQ)
    local uA_1 = (iP == "Toggle" and mS or mP)[iQ]
    local uz_2 = type(uA_1) == "table" and uA_1.Type == iP
    return uz_2 and uA_1 or nil
end
function fns.fn323()
    no(m3)
end
function fns.onCopySolanaAddress()
    n0(nm, "Copied Solana address")
end
function fns.worker7()
    while not nd.Unloaded do
        task.wait(0.7)
        if mU("AutoBuyBars") then
            pcall(nW)
        end
    end
end
local function worker()
    local ty_1
    while true do
        task.wait(1)
        if nd.Unloaded then
            break
        end
        local tx = math.floor(os.clock() - mR)
        if tx < 60 then
            ty_1 = tx .. "s"
        elseif tx < 3600 then
            ty_1 = string.format("%dm %ds", tx // 60, tx % 60)
        else
            ty_1 = string.format("%dh %dm", tx // 3600, tx % 3600 // 60)
        end
        nj:SetText(n6("Session time", ty_1, nN))
    end
end
local function fn355(L)
    local DiscordGroup = L:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = nS })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = nS })
end
local function fn406()
    local sn = nQ()
    local so = nz()
    local sp = type(so) == "string" and so ~= "" and so ~= sn.equippedBar
    if sp then
        nH("BarShopService", { kind = "equip", barId = so })
    end
end
local function antiAfkLoop()
    while not nd.Unloaded do
        task.wait(2)
        if mS.AntiAfk.Value then
            local uv = tick() - nK
            local uw = tick() - nG
            if uv >= 300 and uw >= 60 then
                pcall(nr)
            else
                if uv < 300 and uw >= 300 then
                    pcall(nr)
                end
            end
        end
    end
end
local function fn426()
    local oZ = nA()
    local o_ = oZ and oZ:FindFirstChild("HumanoidRootPart")
    return o_
end
local function onOnClientEvent(aB)
    if type(aB) ~= "table" then
        return
    end
    if aB.kind == "data" then
        mW(aB.data)
    elseif aB.kind == "statChanged" then
        ni[aB.statName] = aB.newValue
    end
end
local function fn446()
    local brainrotStands
    local pE_5
    local plots = workspace:FindFirstChild("plots")
    if not plots then
        return nil
    elseif type(ne) == "string" then
        local pE_1 = plots:FindFirstChild(ne)
        if pE_1 then
            return pE_1
        end
        local pE_2 = nQ()
        local brainrotStands2 = pE_2.brainrotStands
        if type(brainrotStands) == "table" then
            for i, child in plots:GetChildren() do
                local Brainrots = child:FindFirstChild("Brainrots")
                if Brainrots then
                    for i, child2 in Brainrots:GetChildren() do
                        for k, v in brainrotStands2 do
                            local pD_2 = type(v) == "table" and child2.Name == tostring(v.uuid)
                            if pD_2 then
                                ne = child.Name
                                return child
                            end
                        end
                    end
                end
            end
        end
        if filtergc then
            local pD_3 = filtergc("table", { Keys = { "plotFolder", "brainrotStands", "ownedStands" } }, true)
            if pE_5 then
                ne = pD_3.plotFolder.Name
                return pD_3.plotFolder
            end
            return nil
        end
        return nil
    else
        local pE_4 = nQ()
        brainrotStands = pE_4.brainrotStands
        if type(brainrotStands) == "table" then
            for i, child in plots:GetChildren() do
                local Brainrots = child:FindFirstChild("Brainrots")
                if Brainrots then
                    for i, child2 in Brainrots:GetChildren() do
                        for k, v in brainrotStands do
                            local pD_5 = type(v) == "table" and child2.Name == tostring(v.uuid)
                            if pD_5 then
                                ne = child.Name
                                return child
                            end
                        end
                    end
                end
            end
        end
        if filtergc then
            local pD_6 = filtergc("table", { Keys = { "plotFolder", "brainrotStands", "ownedStands" } }, true)
            pE_5 = type(pD_6) == "table" and pD_6.plotFolder
            if pE_5 then
                ne = pD_6.plotFolder.Name
                return pD_6.plotFolder
            end
            return nil
        end
        return nil
    end
end
local function fn450()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    nG = tick()
end
local function fn457(iX, iY)
    local Type = iY.Type
    if Type == "Toggle" then
        return { idx = iX, type = "Toggle", value = iY.Value == true }
    elseif Type == "Slider" then
        return { idx = iX, type = "Slider", value = tostring(iY.Value) }
    elseif Type == "Dropdown" then
        return { idx = iX, type = "Dropdown", multi = iY.Multi == true, value = iY.Value }
    elseif Type == "Input" then
        local uE = iY.Value or ""
        return { idx = iX, type = "Input", text = tostring(uE) }
    elseif Type == "ColorPicker" then
        return { idx = iX, type = "ColorPicker", value = iY.Value:ToHex(), transparency = iY.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = iX,
            type = "KeyPicker",
            mode = iY.Mode,
            key = iY.Value,
            modifiers = iY.Modifiers,
            toggled = iY.Toggled
        }
    else
        return nil
    end
end
local function onExportConfigToClipboard()
    local u7_1
    local u6_1
    u6_1, u7_1 = pcall(HttpService.JSONEncode, HttpService, n1())
    if not u6_1 then
        nd:Notify("Failed to encode the config")
        return
    end
    local u6_2 = setclipboard
    local vc = if u6_2 then 1 else 0
    local va = 3633 * vc + 2081 * (1 - vc)
    local vb = 319 * vc + 3140 * (1 - vc)
    if not ((va * 2261 + vb * 3336 + va * vb) % 16777213 == 10437324) then
        u6_2 = toclipboard
    end
    local u8 = u6_2
    local u6_3 = type(u8) ~= "function" or not pcall(u8, u7_1)
    if u6_3 then
        nd:Notify("Your executor does not support copying to the clipboard")
        return
    end
    nd:Notify("Config copied to clipboard", 6)
end
local function fn488()
    return LocalPlayer.Character
end
local function fn496(fK, fL)
    return string.format('<font color="%s">%s</font>', fL, fK)
end
local function fn498(Z)
    local o1 = mS[Z]
    return o1 ~= nil and o1.Value == true
end
local function fn509()
    if not filtergc then
        return nil
    end
    local p5 = filtergc("table", { Keys = { "_beginFall", "_startSession", "ClimbingService" } }, true)
    if type(p5) == "table" then
        return p5
    end
    return nil
end
local function fn516()
    if not mS.Fly.Value then
        local t4 = nu()
        if t4 then
            t4.PlatformStand = false
        end
    end
end
local function fn540()
    nd.ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
local function fn570()
    m_(mS.AntiGameplayPause.Value)
end
local function fn574()
    local tr_1
    local tq_1
    if identifyexecutor then
        tr_1, tq_1 = identifyexecutor()
        local ts = tr_1 ~= ""
        local tt = type(tr_1) == "string" and ts
        if tt then
            local ts_1 = type(tq_1) == "string" and tq_1 ~= "" and tr_1 .. " " .. tq_1
            nJ = ts_1 or tr_1
        end
    end
end
local function onRscripts()
    if setclipboard then
        setclipboard(n2)
    elseif toclipboard then
        toclipboard(n2)
    end
    nd:Notify("Copied Rscripts profile to clipboard")
end
local function onJumpRequest()
    if nd.Unloaded then
        return
    end
    if mS.InfJump and mS.InfJump.Value then
        local tW_1 = nu()
        if tW_1 then
            tW_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function worker6()
    while not nd.Unloaded do
        task.wait(0.8)
        if mU("AutoUpgradeBase") then
            nH("PlotService", { kind = "upgradeBase" })
        end
    end
end
local function fn664(ae)
    local o4 = Services:FindFirstChild(ae)
    local o5 = o4 and o4:FindFirstChild("RE")
    local o4_1 = o5
    if o5 then
        o5 = o4_1:FindFirstChild("remote")
    end
    return o5
end
local function fn672(a8)
    local pm = {}
    if type(a8) ~= "table" then
        return pm
    end
    for k, v in a8 do
        local pn = v == true and type(k) == "string"
        if pn then
            pm[k] = true
        elseif type(v) == "string" then
            pm[v] = true
        else
            local pn_1 = v ~= false
            local po = type(k) == "string" and pn_1
            if po then
                pm[k] = true
            end
        end
    end
    return pm
end
local function onCopyEthereumAddress()
    n0(nv, "Copied Ethereum address")
end
local function onStepped()
    if nd.Unloaded then
        return
    end
    if mS.NoClip and mS.NoClip.Value then
        local tO_1 = nA()
        if tO_1 then
            for i, descendant in tO_1:GetDescendants() do
                local tO_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if tO_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn719(bU)
    local Trusses = workspace:FindFirstChild("Trusses")
    if not (Trusses and bU) then
        return nil
    end
    local attr = Trusses:GetAttribute("VipMaxX")
    local qn
    for i, child in Trusses:GetChildren() do
        if child:IsA("TrussPart") then
            local ql_1 = type(attr) == "number" and child.Position.X <= attr
            local ql_2 = not ql_1
            if ql_2 ~= false then
                ql_2 = not qn or child.Position.Y < qn.Position.Y
            end
            if ql_2 then
                qn = child
            end
        end
    end
    return qn
end
local function worker8()
    while not nd.Unloaded do
        task.wait(0.2)
        if mU("AutoEquipPullBars") then
            pcall(mV)
        end
    end
end
local function fn736()
    pcall(function()
        LocalPlayer:RequestStreamAroundAsync(m8)
    end)
    no(m8)
end
local function fn746()
    local qg_1
    local GameMechanic = workspace:FindFirstChild("GameMechanic")
    if not GameMechanic then
        return nil
    end
    local TrussStartAndSizePart = GameMechanic:FindFirstChild("TrussStartAndSizePart")
    local fallOnPart = GameMechanic:FindFirstChild("fallOnPart", true)
    local TopPart = GameMechanic:FindFirstChild("TopPart")
    local qa_1 = TrussStartAndSizePart and TrussStartAndSizePart:IsA("BasePart")
    if not qa_1 then
        return nil
    end
    local qa_2 = TrussStartAndSizePart.Position.Y + TrussStartAndSizePart.Size.Y * 0.5
    local qe = tonumber(nF.trussHeight) or 10000
    local qe_1
    local qf = qa_2 + qe
    if TopPart then
        qe_1, qg_1 = TopPart:GetBoundingBox()
        qf = qe_1.Position.Y - qg_1.Y * 0.5
    end
    local qd_1 = fallOnPart
    local qe_2 = qa_2
    if qd_1 then
        qd_1 = fallOnPart:IsA("BasePart")
    end
    if qd_1 then
        qe_2 = fallOnPart.Position.Y + fallOnPart.Size.Y * 0.5
    end
    local max = math.max
    local qg_2 = (tonumber(nF.minFallTriggerHeight))
    local qk = if qg_2 then 1 else 0
    local qi = 754 * qk + 2214 * (1 - qk)
    local qj = 501 * qk + 3342 * (1 - qk)
    if not ((qi * 3397 + qj * 2783 + qi * qj) % 16777213 == 4333375) then
        qg_2 = 15
    end
    return {
        startPart = TrussStartAndSizePart,
        fallPart = fallOnPart,
        baseY = qa_2,
        topY = qf,
        groundY = qe_2,
        claimedHeight = max(qg_2, qf - qa_2)
    }
end
local function fn758()
    local s4 = nQ()
    local s5 = tonumber(s4.shards) or 0
    local s5_1 = nI(s4.ownedPullUpAnims)
    local s7 = nw.DEFAULT_ID or "classic"
    s5_1[s7] = true
    local s7_1 = false
    for k, v in nw.order do
        local s8_1 = nw.isLive(v) and not s5_1[v]
        if s8_1 then
            local s8_2 = nw.anims[v]
            if s8_2 and not s8_2.robuxOnly then
                local s9_2 = tonumber(s8_2.cost) or 0
                if s9_2 > 0 and s5 >= s9_2 then
                    nH("PullUpAnimService", { kind = "buyWithShards", animId = v })
                    s7_1 = true
                    break
                end
            end
        end
    end
    if s7_1 then
        return
    end
    local s6_1 = s4.equippedPullUpAnim
    local s7_2 = -1
    for k, v in nw.order do
        local s8_4 = nw.anims[v]
        if s8_4 and s5_1[v] then
            local s9_5 = tonumber(s8_4.powerMult) or 1
            if s9_5 >= s7_2 then
                s7_2 = s9_5
                s6_1 = v
            end
        end
    end
    local s5_2 = type(s6_1) == "string" and s6_1 ~= "" and s6_1 ~= s4.equippedPullUpAnim
    if s5_2 then
        nH("PullUpAnimService", { kind = "equip", animId = s6_1 })
    end
end
local function onImportConfigFromClipboardTex()
    local vf_1
    local vd = mP.SaveManager_ImportSource.Value or ""
    local vd_1
    local ve = tostring(vd):match("^%s*(.-)%s*$")
    if ve == "" then
        nd:Notify("Paste an exported config into the box first")
        return
    end
    vd_1, vf_1 = pcall(HttpService.JSONDecode, HttpService, ve)
    local ve_1 = not vd_1
    local vj = if ve_1 then 1 else 0
    local vh = 218 * vj + 3449 * (1 - vj)
    local vi = 1988 * vj + 816 * (1 - vj)
    if not ((vh * 816 + vi * 2079 + vh * vi) % 16777213 == 4744324) then
        ve_1 = type(vf_1) ~= "table"
    end
    if not ve_1 then
        ve_1 = type(vf_1.objects) ~= "table"
    end
    if ve_1 then
        nd:Notify("That is not a valid exported config")
        return
    end
    local vd_2 = 0
    for k, v in vf_1.objects do
        if nn(v) then
            vd_2 += 1
        end
    end
    if vd_2 == 0 then
        nd:Notify("No settings in that config matched this script")
        return
    end
    mP.SaveManager_ImportSource:SetValue("")
    local vf_2 = vd_2 == 1 and "" or "s"
    nd:Notify(("Imported %d setting%s"):format(vd_2, vf_2), 6)
end
local function fn763()
    local sb = nQ()
    local sc = nI(sb.ownedBars)
    sc.bar1 = true
    local sd = sb.equippedBar
    local sb_1 = -1
    for k, v in ny.order do
        local se = ny.bars[v]
        if se and sc[v] then
            local sf_1 = tonumber(se.power) or 0
            if sf_1 >= sb_1 then
                sb_1 = sf_1
                sd = v
            end
        end
    end
    return sd
end
local function worker4()
    while not nd.Unloaded do
        task.wait(1)
        if mU("AutoEquipBest") then
            nH("PlotService", { kind = "equipBest" })
        end
    end
end
local function onCopyUSDTAddress()
    n0(nq, "Copied USDT address")
end
local function onUnload()
    nd:Unload()
end
local function fn795()
    local sx = nA()
    if sx then
        for i, child in sx:GetChildren() do
            if nM(child) then
                return child, true
            end
        end
    end
    local Backpack = LocalPlayer:FindFirstChild("Backpack")
    if Backpack then
        for i, child in Backpack:GetChildren() do
            if nM(child) then
                return child, false
            end
        end
    end
    return nil, false
end
local function fn804(ay)
    if type(ay) ~= "table" then
        return
    end
    ni = ay
end
local function fn822(eL)
    local sr = eL and eL:IsA("Tool")
    if sr then
        local ss = eL:GetAttribute("PullUpBarTool") ~= nil or eL.Name == "Pull Up Bar"
        sr = ss
    end
    return sr
end
local function onCopyBitcoinAddress()
    n0(nx, "Copied Bitcoin address")
end
local function worker10()
    while not nd.Unloaded do
        task.wait(0.7)
        if mU("AutoBuyStyles") then
            pcall(m6)
        end
    end
end
local function fn884()
    local sQ = nQ()
    local sR = (tonumber(sQ.Money))
    local sY = if sR then 1 else 0
    local sW = 1083 * sY + 1509 * (1 - sY)
    local sX = 1544 * sY + 3184 * (1 - sY)
    if not ((sW * 563 + sX * 2085 + sW * sX) % 16777213 == 5501121) then
        sR = 0
    end
    local sS = sR
    local sR_1 = nI(sQ.ownedBars)
    sR_1.bar1 = true
    local sQ_1 = false
    for k, v in ny.order do
        local sT = ny.bars[v]
        if sT and not sT.dynamic and not sR_1[v] then
            local sU_1 = tonumber(sT.cost) or 0
            if sU_1 > 0 and sS >= sU_1 then
                nH("BarShopService", { kind = "buyWithCash", barId = v })
                sQ_1 = true
                break
            end
        end
    end
    if sQ_1 then
        return
    end
    n3()
end
local function fn889()
    local qA = { "LocalClaimBrainrot", "LocalDroppedBrainrot" }
    for k, v in qA do
        local qA_1 = workspace:FindFirstChild(v)
        if qA_1 then
            return qA_1
        end
        if workspace.CurrentCamera then
            local qA_2 = workspace.CurrentCamera:FindFirstChild(v)
            if qA_2 then
                return qA_2
            end
        end
    end
    return nil
end
local function fn897()
    n0(mO, "Copied Discord invite to clipboard")
end
local function antiGameplayPauseLoop()
    while not nd.Unloaded do
        task.wait(1)
        if mS.AntiGameplayPause.Value then
            m_(true)
        end
    end
end
local function worker2()
    while not nd.Unloaded do
        if m5() then
            pcall(m0)
        elseif mU("AutoClimb") then
            pcall(n_)
        else
            task.wait(0.15)
        end
    end
end
local function worker3()
    while not nd.Unloaded do
        task.wait(0.45)
        if mU("AutoCollectMoney") then
            pcall(nk)
        end
    end
end
local function fn959()
    local rc = (mU("AutoPickup"))
    if rc then
        local rd = nb or nU() ~= nil or nE() ~= nil
        rc = rd
    end
    return rc
end
local function fn981(bD)
    if not bD then
        return nil
    elseif bD:IsA("BasePart") then
        return bD.Position
    else
        local p4 = if bD:IsA("Model") then 1 else 0
        if p4 == 1 then
            return bD:GetPivot().Position
        end
        return nil
    end
end
local function fn991()
    local sM_1
    local sL_1
    sM_1, sL_1 = nB()
    if sL_1 or not sM_1 then
        return
    end
    local sL_2 = nu()
    if sL_2 then
        sL_2:EquipTool(sM_1)
    end
end
local function fn1033()
    if not mS.WalkSpeedEnabled.Value then
        local t9 = nu()
        if t9 then
            t9.WalkSpeed = 16
        end
    end
end
local function fn1034(E, F)
    if setclipboard then
        setclipboard(E)
    elseif toclipboard then
        toclipboard(E)
    end
    nd:Notify(F)
end
local function fn1085(cE, cF)
    local q5 = os.clock()
    local q7 = q5 + (cF or 2)
    while true do
        local q5_1 = os.clock() < q7 and not nd.Unloaded
        if q5_1 then
            if cE() then
                return true
            end
            task.wait(0.05)
            continue
        end
        break
    end
    return cE()
end
local function worker9()
    while not nd.Unloaded do
        task.wait(0.05)
        if mU("Auto2x") then
            local main = PlayerGui:FindFirstChild("main")
            local tJ = main and main:FindFirstChild("x2Popup")
            local tI_1 = tJ
            if tJ then
                tJ = tI_1.Visible
            end
            if tJ then
                nH("PullUpService", { kind = "popupClicked" })
            end
        end
    end
end
local function fn1100()
    local oT = nA()
    local oU = oT and oT:FindFirstChildOfClass("Humanoid")
    return oU
end
local function fn1109(fN, fO, fP)
    return string.format("<b>%s</b> %s %s", fN, mX("-", "#5a6070"), mX(fO, fP))
end
local function onInputChanged(iv)
    local UserInputType = iv.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        nK = tick()
    end
end
mO = nil
mP = nil
mQ = nil
mR = nil
mS = nil
mT = nil
mU = nil
mV = nil
mW = nil
mX = nil
mY = nil
mZ = nil
m_ = nil
m0 = nil
m1 = nil
connection = nil
m3 = nil
m4 = nil
m5 = nil
m6 = nil
m8 = nil
m9 = nil
nb = nil
nc = nil
nd = nil
ne = nil
nf = nil
nh = nil
ni = nil
nj = nil
nk = nil
Services = nil
nm = nil
nn = nil
no = nil
np = nil
nq = nil
nr = nil
nu = nil
nv = nil
nw = nil
nx = nil
ny = nil
nz = nil
nA = nil
local m7, na, ng, BaseUpgradeConfig, nt
nB = nil
nC = nil
nD = nil
nE = nil
nF = nil
nG = nil
nH = nil
nI = nil
nJ = nil
nK = nil
nM = nil
nN = nil
PlayerGui = nil
nQ = nil
LocalPlayer = nil
nS = nil
HttpService = nil
nU = nil
VirtualUser = nil
nW = nil
nX = nil
nZ = nil
n_ = nil
n0 = nil
n1 = nil
n2 = nil
n3 = nil
n4 = nil
CurrentCamera = nil
n6 = nil
connection2 = nil
local nL, nP, nY, of, og, oh, oi, oj, ok, ol, om, oo
nL = nil
nP = nil
nY = nil
local op, oq
nX, VirtualUser, HttpService, LocalPlayer, PlayerGui = nil, nil, nil, nil, nil
local vu_7 = game:GetService("Players")
local vu_2 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
nX = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
LocalPlayer = vu_7.LocalPlayer
PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
if getgenv then
    getgenv().gethui = function()
        return LocalPlayer:WaitForChild("PlayerGui")
    end
end
if setthreadidentity then
    setthreadidentity(8)
end
vu_1, vu_6, nF, nD, ny, nw, BaseUpgradeConfig, Services, vu_5, nd, of, mY, mS, mP, mO, n2, ni, ne, nb, m4, m1, mZ, n0, nS, vu_4, nA, nu, m9, mU, nY, nH, mW = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
vu_7 = 18
repeat
    og = (vu_7 * 5 + 2) % 13 + 1
    if og <= 7 then
        if og <= 4 then
            if og <= 2 then
                if og <= 1 then
                    oh = {
                        "ifjwayfwek",
                        "szvrxgnftb",
                        "kvyddjeyf",
                        "rbootn",
                        "ifb",
                        "fdawjuyihtd",
                        "fygcp",
                        "qqtttlbxam",
                        "cmzellup",
                        "rjh",
                        "akeddbcudvc"
                    }
                    local wG = vu_7
                    oi = oh[wG % 11 + 1]
                    if oi:len() >= oi:reverse():rep(wG % 3 + 2):len() then
                        mW = nil
                        mZ = fn804
                    else
                        mZ = nil
                        mW = fn804
                    end
                    vu_7 = (vu_7 + 73) % 104
                else
                    oh = { "mcstert", "jug", "qul", "nendozi", "hcyemtp", "ecbxu", "zfkkwrohoi", "mpdvae" }
                    if oh[(vu_7 * 76 + 73) % 8 + 1] <= oh[(vu_7 * 76 + 73) % 8 + 1] then
                        vu_1 = "Climb and Drop a Lucky Block"
                    else
                        nb = "Climb and Drop a Lucky Block"
                    end
                    vu_7 = (vu_7 + 47) % 104
                end
            elseif og <= 3 then
                oh = (vector.create((vu_7 * 5 + 1) % 11 + 1, (vu_7 * 2 + 1) % 13 + 1, (vu_7 * 6 + 1) % 17 + 1))
                oi = (vector.create((vu_7 * 4 + 1) % 11 + 1, (vu_7 * 11 + 1) % 13 + 1, (vu_7 * 10 + 3) % 17 + 1))
                oj = (vector.create((vu_7 * 1 + 1) % 5 + 1, (vu_7 * 4 + 2) % 7 + 1, (vu_7 * 5 + 3) % 9 + 1))
                if math.abs((vector.angle(oh, oi, oj))) - math.abs((vector.angle(oi, oh, oj))) == 0 then
                    vu_6 = vu_2:WaitForChild("Datas")
                else
                    vu_2 = vu_6:WaitForChild("Datas")
                end
                vu_7 = (vu_7 + 21) % 104
            else
                oh = {
                    "zodne",
                    "llbltlfygcll",
                    "thozsyvviy",
                    "wukw",
                    "ymrm",
                    "hgz",
                    "hzwfitu",
                    "srk",
                    "tlognhg",
                    "xdaxbluuse",
                    "ijr"
                }
                if oh[(vu_7 * 46 + 78) % 11 + 1] < oh[(vu_7 * 46 + 78) % 11 + 1] then
                    ny = require(BaseUpgradeConfig:WaitForChild("ClimbConfig"))
                    nw = require(BaseUpgradeConfig:WaitForChild("CarryConfig"))
                    nF = require(BaseUpgradeConfig:WaitForChild("Bars"))
                    vu_6 = require(BaseUpgradeConfig:WaitForChild("PullUpAnimations"))
                    nD = require(BaseUpgradeConfig:WaitForChild("BaseUpgradeConfig"))
                else
                    nF = require(vu_6:WaitForChild("ClimbConfig"))
                    nD = require(vu_6:WaitForChild("CarryConfig"))
                    ny = require(vu_6:WaitForChild("Bars"))
                    nw = require(vu_6:WaitForChild("PullUpAnimations"))
                    BaseUpgradeConfig = require(vu_6:WaitForChild("BaseUpgradeConfig"))
                end
                vu_7 = (vu_7 + 99) % 104
            end
        elseif og <= 6 then
            if og <= 5 then
                if vu_7 * 18217853 + 11 + 2 >= vu_7 * 18217853 + 11 + 2 + 2 then
                    vu_2 = Services:WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services")
                else
                    Services = vu_2:WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services")
                end
                vu_7 = (vu_7 + 21) % 104
            else
                oh = {
                    "fhqja",
                    "gyhjuj",
                    "lmbhkjerhoye",
                    "kflspr",
                    "ljybfrvcin",
                    "lrog",
                    "evvodfvmjv",
                    "xeyspfugvcqu",
                    "fehrx",
                    "qdggp",
                    "vgvnoystcjv",
                    "yohymh"
                }
                if oh[(vu_7 * 29 + 97) % 12 + 1] < oh[(vu_7 * 29 + 97) % 12 + 1] then
                    nu = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                else
                    vu_5 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                end
                vu_7 = (vu_7 + 34) % 104
            end
        else
            oh = {
                "tutfbzygd",
                "gfo",
                "tewme",
                "lxvphye",
                "trwfwkxabsz",
                "hbjnhfxdnz",
                "qzsrypnqf",
                "wyddqhhae",
                "ipw",
                "mjmmrba",
                "djdfnsry",
                "gpb",
                "lwnu",
                "zjvfc",
                "kbdouhnm"
            }
            if oh[(vu_7 * 9 + 1) % 15 + 1] <= oh[(vu_7 * 9 + 1) % 15 + 1] then
                nd = loadstring(game:HttpGet(vu_5 .. "Library.lua"))()
                pcall(fn540)
                of = loadstring(game:HttpGet(vu_5 .. "addons/ThemeManager.lua"))()
                mY = loadstring(game:HttpGet(vu_5 .. "addons/SaveManager.lua"))()
                mS = nd.Toggles
                mP = nd.Options
            else
                mY = loadstring(game:HttpGet(mS .. "Library.lua"))()
                pcall(fn540)
                mP = loadstring(game:HttpGet(mS .. "addons/ThemeManager.lua"))()
                of = loadstring(game:HttpGet(mS .. "addons/SaveManager.lua"))()
                vu_5 = mY.Toggles
                nd = mY.Options
            end
            vu_7 = (vu_7 + 8) % 104
        end
    elseif og <= 10 then
        if og <= 9 then
            if og <= 8 then
                local wf = bit32.rrotate(bit32.bxor(bit32.lrotate(vu_7, 3), string.byte(tostring(mP))), 12)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(wf, 3293511877), 91725785), (bit32.bxor(bit32.band(wf, 1001455418), 2567296361))), 91725785), 2567296361) ~= wf then
                    m4 = "https://discord.gg/ehKVq7pf7v"
                else
                    mO = "https://discord.gg/ehKVq7pf7v"
                end
                vu_7 = (vu_7 + 21) % 104
            else
                if not nH and not n2 and (n2 and nH) or (nH or not n2 or (not n2 or not n2)) or not (not nH and not n2 and (n2 and nH) or (nH or not n2 or (not n2 or not n2))) then
                    n2 = "https://rscripts.net/@Ouroboros"
                    n0 = fn1034
                    nS = fn897
                    vu_4 = fn355
                    nA = fn488
                else
                    n0 = "https://rscripts.net/@Ouroboros"
                    n2 = fn1034
                    nA = fn897
                    nS = fn355
                    vu_4 = fn488
                end
                vu_7 = (vu_7 + 86) % 104
            end
        else
            if (vu_7 * 3 + 3) * 5 % 4 == ((vu_7 * 3 + 3) * 5 + 11) % 4 then
                nY = fn1100
                nu = fn426
                m9 = fn498
                mU = fn664
            else
                nu = fn1100
                m9 = fn426
                mU = fn498
                nY = fn664
            end
            vu_7 = (vu_7 + 60) % 104
        end
    elseif og <= 12 then
        if og <= 11 then
            if (((Services or n2) and (not nb or nb) or not vu_1 and not Services and (not n2 or nb)) and ((Services and not n2 or n2 and n2) and ((not n2 or nb) and (vu_1 and Services))) or (n2 and not nb or (nb or nb) or (vu_1 and Services or (nb or not vu_1)) or (Services and Services or (nb or n2) or nb and Services and (not n2 or not nb)))) and not (((Services or n2) and (not nb or nb) or not vu_1 and not Services and (not n2 or nb)) and ((Services and not n2 or n2 and n2) and ((not n2 or nb) and (vu_1 and Services))) or (n2 and not nb or (nb or nb) or (vu_1 and Services or (nb or not vu_1)) or (Services and Services or (nb or n2) or nb and Services and (not n2 or not nb)))) then
                ni = function(al, am)
                    local o7
                    o7 = nil
                    o7 = nY(al)
                    if not o7 then
                        return
                    end
                    pcall(function()
                        o7:FireServer(am)
                    end)
                end
                nH = {}
            else
                nH = function(al, am)
                    local o7
                    o7 = nil
                    o7 = nY(al)
                    if not o7 then
                        return
                    end
                    pcall(function()
                        o7:FireServer(am)
                    end)
                end
                ni = {}
            end
            vu_7 = (vu_7 + 73) % 104
        else
            if vu_7 * 96554663 + 2 + 7 >= vu_7 * 96554663 + 2 + 7 + 1 then
                m4 = nil
                ne = false
                nb = nil
            else
                ne = nil
                nb = false
                m4 = nil
            end
            vu_7 = (vu_7 + 8) % 104
        end
    else
        if "https://discord.gg/ehKVq7pf7v" and (false or m4 and m4) and not ("https://discord.gg/ehKVq7pf7v" and (false or m4 and m4)) then
            mS = 0
        else
            m1 = 0
        end
        vu_7 = (vu_7 + 73) % 104
    end
until (vu_7 * 21 + 40) % 104 == 2
n4 = nY("DataManagerService")
if n4 then
    vu_7 = 5
    repeat
        local wU = bit32.rrotate(bit32.bxor(bit32.lrotate(vu_7, 25), string.byte(tostring(vu_7))), 16)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(wU, 2856326433), 2628616629), (bit32.bxor(bit32.band(wU, 1438640862), 3921285581))), 2628616629), 3921285581) ~= wU then
            n4.OnClientEvent:Connect(onOnClientEvent)
            pcall(fns.fn147)
        else
            n4.OnClientEvent:Connect(onOnClientEvent)
            pcall(fns.fn147)
        end
        vu_7 = (vu_7 + 5) % 8
    until (vu_7 * 7 + 5) % 8 == 3
end
vu_7 = nY("PlotService")
if vu_7 then
    vu_7.OnClientEvent:Connect(function(aG)
        if type(aG) ~= "table" then
            return
        end
        local pb = aG.kind == "givePlot" and type(aG.plotDatas) == "table"
        if pb then
            ne = aG.plotDatas.plotName
        end
    end)
end
og = nY("CarryService")
vu_2 = Services:FindFirstChild("CarryService")
vu_6 = vu_2 and vu_2:FindFirstChild("RE")
vu_7 = vu_6
vu_5 = vu_7 and vu_7:FindFirstChild("carryStarted")
vu_2 = vu_7
vu_6 = vu_5
if vu_2 then
    vu_2 = vu_7:FindFirstChild("carryEnded")
end
vu_7 = vu_2
if vu_6 then
    vu_6.OnClientEvent:Connect(function()
        nb = true
        m4 = nil
    end)
end
if vu_7 then
    vu_7.OnClientEvent:Connect(function()
        nb = false
    end)
end
if og then
    og.OnClientEvent:Connect(function(aU)
        local pd = type(aU) ~= "table" or type(aU.kind) ~= "string"
        if pd then
            return
        end
        local pd_1 = aU.kind == "carryDropped" and typeof(aU.position) == "Vector3"
        if pd_1 then
            m4 = aU.position
            m1 = os.clock()
            nb = false
        else
            if aU.kind == "delivered" or aU.kind == "dropExpired" then
                m4 = nil
                nb = false
            end
        end
    end)
end
vu_7 = nY("RollResultService")
if vu_7 then
    vu_7.OnClientEvent:Connect(function(a1)
        if type(a1) ~= "table" then
            return
        end
        if a1.kind == "revealStart" and a1.claimId ~= nil then
            mZ = a1.claimId
        end
    end)
end
m8, m3, nQ, nI, no, mQ, np, ng, m7, nP, nU, nE, na, nZ, nL, m5, n_, m0, nk, nz, n3, nM, nB, mV, nW, m6 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
nQ = fns.fn108
nI = fn672
no = fns.fn156
mQ = fn446
np = fn981
ng = fn509
m7 = fn746
if (nZ or nZ or not nZ and nZ) and 58 and (not nZ and 58 and (nZ or nE) or (not nE and not nE or nZ and not nE)) or not ((nZ or nZ or not nZ and nZ) and 58 and (not nZ and 58 and (nZ or nE) or (not nE and not nE or nZ and not nE))) then
    nP = fn719
    m8 = Vector3.new(-470, 10018, 43)
    m3 = Vector3.new(-470, 16, -57)
else
    m3 = fn719
    nP = Vector3.new(-470, 10018, 43)
    m8 = Vector3.new(-470, 16, -57)
end
vu_6 = fn736
og = fns.fn323
nU = fn889
nE = fns.fn127
na = function(cv)
    if not cv then
        return
    end
    for i, descendant in cv:GetDescendants() do
        if descendant:IsA("ProximityPrompt") then
            if fireproximityprompt then
                pcall(fireproximityprompt, descendant)
            elseif firesignal then
                pcall(firesignal, descendant.Triggered, LocalPlayer)
            elseif getconnections then
                for k, v in getconnections(descendant.Triggered) do
                    local q4 = v
                    pcall(function()
                        if q4.Fire then
                            q4:Fire(LocalPlayer)
                        elseif q4.Function then
                            q4.Function(LocalPlayer)
                        end
                    end)
                end
            end
        end
    end
end
nZ = fn1085
nL = fns.fn72
m5 = fn959
n_ = function()
    local rh
    rh = nil
    local rj
    if m5() then
        return
    end
    local rk = m9()
    rh = nu()
    local rl = m7()
    local rm = nP(rl)
    if not (rk and rh and rl and rm) then
        task.wait(0.3)
        return
    end
    local claimedHeight = rl.claimedHeight
    local ro_1 = tonumber(nF.effectiveMaxClimbSpeed) or 4500
    local ro_2 = (tonumber(nF.cheatMarginFactor))
    local rz = if ro_2 then 1 else 0
    local rx = 2850 * rz + 1046 * (1 - rz)
    local ry = 1041 * rz + 646 * (1 - rz)
    if not ((rx * 2067 + ry * 2611 + rx * ry) % 16777213 == 11575851) then
        ro_2 = 2
    end
    local rq = ro_2
    local ro_3 = claimedHeight / math.max(1, ro_1 * rq)
    local max2 = math.max
    local rq_1 = tonumber(nF.climbStartCooldown) or 1
    local rr = tonumber(nF.climbJumpCooldown) or 1
    local ro_4 = max2(ro_3, rq_1, rr)
    ro_4 += 0.15
    local rp_2 = Vector3.new(rm.Position.X, rl.baseY + 4, rm.Position.Z)
    no(rp_2)
    pcall(function()
        rh:ChangeState(Enum.HumanoidStateType.Climbing)
    end)
    local rp_3 = os.clock()
    nH("ClimbingService", { kind = "climbStarted", startTime = rp_3, startY = rl.baseY })
    rj = Vector3.new(rm.Position.X, rl.topY - 8, rm.Position.Z)
    pcall(function()
        LocalPlayer:RequestStreamAroundAsync(rj)
    end)
    no(rj)
    local rq_2 = rp_3 + ro_4
    while true do
        local ro_5 = os.clock() < rq_2 and mU("AutoClimb") and not nd.Unloaded
        if ro_5 then
            if m5() then
                return
            end
            no(rj)
            task.wait(0.05)
            continue
        end
        break
    end
    local ro_6 = not mU("AutoClimb") or nd.Unloaded or m5()
    if ro_6 then
        return
    end
    local ri = ng()
    if ri and ri._active then
        local max = math.max
        local rp_4 = tonumber(ri._maxYReached) or 0
        ri._maxYReached = max(rp_4, rl.topY)
        pcall(function()
            ri:_beginFall()
        end)
    else
        nH("ClimbingService", { kind = "fallStarted" })
    end
    local new = Vector3.new
    local rp_5 = rm.Position.X
    local rq_3 = rl.groundY + 3
    local rs = rl.fallPart and rl.fallPart.Position.Z or rm.Position.Z
    local rr_2 = new(rp_5, rq_3, rs)
    no(rr_2)
    pcall(function()
        rh:ChangeState(Enum.HumanoidStateType.Landed)
    end)
    task.wait(0.08)
    local rk_1 = m9()
    local rk_2 = rk_1 and rk_1.Position or rr_2
    nH("ClimbingService", { kind = "fallEnded", endTime = os.clock(), claimedHeight = claimedHeight, landPosition = rk_2 })
    local max = math.max
    local rl_2 = tonumber(nF.rollCooldown) or 5
    local rm_1 = max(rl_2, 8)
    nZ(function()
        local rf = nU() ~= nil or nb
        return rf
    end, rm_1)
end
m0 = function()
    if nb then
        nL()
        return
    end
    local rD = nU()
    local rE = rD and rD:GetPivot().Position
    local rF = rE or nE()
    if not rF then
        task.wait(0.15)
        return
    end
    no(rF + Vector3.new(0, 3, 0))
    task.wait(0.08)
    local rC = nY("CarryService")
    if rC then
        pcall(function()
            rC:FireServer({ kind = "requestPickup" })
        end)
    end
    if mZ ~= nil then
        nH("RollResultService", { kind = "claimRequest", claimId = mZ })
    end
    na(rD)
    nZ(function()
        local rA = nb or nU() == nil
        return rA
    end, 2)
    if nb then
        nL()
    end
    if nU() == nil then
        mZ = nil
    end
end
nk = function()
    local rN = nY("PlotService")
    if not rN then
        return
    end
    local rO = {}
    local rP = {}
    local rQ = mQ()
    if rQ then
        for i, descendant in rQ:GetDescendants() do
            local rQ_1 = descendant:IsA("Model") and string.match(descendant.Name, "^Stand%d+$") and not rO[descendant.Name]
            if rQ_1 then
                rO[descendant.Name] = true
                rP[#rP + 1] = descendant.Name
            end
        end
    end
    if #rP == 0 then
        local rO_1 = tonumber(BaseUpgradeConfig.TotalStands) or 30
        local r_ = 1
        while r_ <= rO_1 do
            local r0 = r_
            rP[r0] = "Stand" .. r0
            r_ += 1
        end
    end
    table.sort(rP, function(eh, ei)
        local rH = tonumber(string.match(eh, "%d+")) or 0
        local rI = (tonumber(string.match(ei, "%d+")))
        local rM = if rI then 1 else 0
        local rK = 294 * rM + 3601 * (1 - rM)
        local rL = 1817 * rM + 626 * (1 - rM)
        if not ((rK * 2460 + rL * 2433 + rK * rL) % 16777213 == 5678199) then
            rI = 0
        end
        return rH < rI
    end)
    for k, v in rP do
        local sa = v
        local rO_2 = nd.Unloaded or not mU("AutoCollectMoney")
        if rO_2 then
            return
        end
        pcall(function()
            rN:FireServer({ stand = sa, kind = "collectMoney" })
        end)
        task.wait(0.12)
    end
end
nz = fn763
n3 = fn406
nM = fn822
nB = fn795
mV = fn991
nW = fn884
m6 = fn758
vu_5 = nd:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = mO, Copyable = true }, "|", vu_1 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
oh = {
    Info = vu_5:AddTab("Info", "info"),
    Main = vu_5:AddTab("Main", "gamepad-2"),
    Player = vu_5:AddTab("Player", "person-standing"),
    Settings = vu_5:AddTab("Settings", "settings")
}
for k, v in { oh.Main, oh.Player, oh.Settings } do
    vu_4(v)
end
ol, ok, nN, oj, nJ, vu_7, oi, nj, nf, vu_2, mX, n6 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
vu_5 = 29
repeat
    vu_4 = (vu_5 * 5 + 6) % 9 + 1
    if vu_4 <= 5 then
        if vu_4 <= 3 then
            if vu_4 <= 2 then
                if vu_4 <= 1 then
                    if (vu_5 * 2 + 2) * 4 % 3 == ((vu_5 * 2 + 2) * 4 + 1) % 3 then
                        vu_7 = "#7fd47f"
                    else
                        ol = "#7fd47f"
                    end
                    vu_5 = (vu_5 + 2) % 36
                else
                    if ((oj or vu_2) and (not ol or not mX) and (vu_7 and mX or (vu_2 or nj)) or (ol or ol or not vu_2 and ol or (not ol or not mX or (vu_2 or not mX)))) and ((vu_2 and not ol or (ol or nj)) and (not oj and vu_7 and (mX or vu_2)) or (not oj or vu_2 or not nj and vu_2 or (not vu_7 and oj or vu_7 and not oj))) or not (((oj or vu_2) and (not ol or not mX) and (vu_7 and mX or (vu_2 or nj)) or (ol or ol or not vu_2 and ol or (not ol or not mX or (vu_2 or not mX)))) and ((vu_2 and not ol or (ol or nj)) and (not oj and vu_7 and (mX or vu_2)) or (not oj or vu_2 or not nj and vu_2 or (not vu_7 and oj or vu_7 and not oj)))) then
                        ok = "#6ec1ff"
                    else
                        n6 = "#6ec1ff"
                    end
                    vu_5 = (vu_5 + 20) % 36
                end
            else
                if (vu_5 * 3 + 8) * 9 % 4 == ((vu_5 * 3 + 8) * 9 + 6) % 4 then
                    oj = "#e8a34d"
                else
                    nN = "#e8a34d"
                end
                vu_5 = (vu_5 + 20) % 36
            end
        elseif vu_4 <= 4 then
            if vu_5 * 33442569 + 8 + 2 >= vu_5 * 33442569 + 8 + 2 + 2 then
                ol = "#8b93a3"
            else
                oj = "#8b93a3"
            end
            vu_5 = (vu_5 + 29) % 36
        else
            om = (vector.create((vu_5 * 6 + 9) % 11 + 1, (vu_5 * 2 + 10) % 13 + 1, (vu_5 * 11 + 8) % 17 + 1))
            oo = (vector.create((vu_5 * 2 + 6) % 11 + 1, (vu_5 * 5 + 8) % 13 + 1, (vu_5 * 4 + 3) % 17 + 1))
            op = (vector.create((vu_5 * 4 + 1) % 11 + 1, (vu_5 * 1 + 8) % 13 + 1, (vu_5 * 10 + 15) % 17 + 1))
            oq = (vector.create((vu_5 * 6 + 3) % 11 + 1, (vu_5 * 1 + 8) % 13 + 1, (vu_5 * 1 + 8) % 17 + 1))
            if vector.dot(vector.cross(om, oo), (vector.cross(op, oq))) == vector.dot(om, op) * vector.dot(oo, oq) - vector.dot(om, oq) * vector.dot(oo, op) + 2 then
                nj = "Unknown"
                pcall(fn574)
                vu_1 = nJ.Info:AddLeftGroupbox("Account", "circle-user")
                vu_1:AddLabel(vu_7("User", mX.Name, LocalPlayer), true)
                vu_1:AddLabel(vu_7("Status", "Keyless", LocalPlayer), true)
                vu_1:AddLabel(vu_7("Executor", nj, LocalPlayer), true)
                oh = nJ.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                oh:AddLabel(nN(ok .. " [" .. tostring(game.PlaceId) .. "]", oi), true)
                oh:AddLabel(vu_7("Place ID", tostring(game.PlaceId), oi), true)
                ol = oh:AddLabel(vu_7("Session time", "0s", n6), true)
            else
                nJ = "Unknown"
                pcall(fn574)
                vu_7 = oh.Info:AddLeftGroupbox("Account", "circle-user")
                vu_7:AddLabel(n6("User", LocalPlayer.Name, ol), true)
                vu_7:AddLabel(n6("Status", "Keyless", ol), true)
                vu_7:AddLabel(n6("Executor", nJ, ol), true)
                oi = oh.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                oi:AddLabel(mX(vu_1 .. " [" .. tostring(game.PlaceId) .. "]", ok), true)
                oi:AddLabel(n6("Place ID", tostring(game.PlaceId), ok), true)
                nj = oi:AddLabel(n6("Session time", "0s", nN), true)
            end
            vu_5 = (vu_5 + 29) % 36
        end
    elseif vu_4 <= 7 then
        if vu_4 <= 6 then
            local wu = bit32.rrotate(bit32.bxor(bit32.lrotate(vu_5, 7), string.byte(tostring(nf))), 19)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(wu, 4052246589), 876421983), (bit32.bxor(bit32.band(wu, 242720706), 2410491897))), 876421983), 2410491897) == wu then
                nf = tostring(game.JobId)
            else
                vu_7 = tostring(game.JobId)
            end
            vu_5 = (vu_5 + 29) % 36
        else
            om = { "nstj", "vcmsjb", "htzc", "qtdiez", "euerbwo", "gzskupvvun", "riyexg" }
            local wS = vu_5
            oo = om[wS % 7 + 1]
            if oo:len() >= oo:gsub("(.)", "%1%1", wS % 3 % 2 + 1):len() then
                nf = #vu_2 > 18
            else
                vu_2 = #nf > 18
            end
            vu_5 = (vu_5 + 20) % 36
        end
    elseif vu_4 <= 8 then
        vu_4 = {
            "acrozquscml",
            "pmhkspqvus",
            "bpdffpfkim",
            "bknydjsjwz",
            "qzuenrczrv",
            "ofzht",
            "voy",
            "yobilymibx",
            "bprogpbm",
            "oknnqjdbj",
            "uqsampuwevr",
            "tbpyyzuwg"
        }
        local wA = vu_5
        om = vu_4[wA % 12 + 1]
        if om:len() >= om:gsub("(.)", "%1%1", wA % 3 % 2 + 1):len() then
            nf = fn496
        else
            mX = fn496
        end
        vu_5 = (vu_5 + 11) % 36
    else
        if (vu_5 * 3 + 4) * 5 % 4 == ((vu_5 * 3 + 4) * 5 + 7) % 4 then
            ol = fn1109
        else
            n6 = fn1109
        end
        vu_5 = (vu_5 + 11) % 36
    end
until (vu_5 * 11 + 30) % 36 == 34
if vu_2 then
    vu_7 = 3
    repeat
        vu_5 = (vector.create((vu_7 * 1 + 1) % 11 + 1, (vu_7 * 8 + 2) % 13 + 1, (vu_7 * 15 + 1) % 17 + 1))
        vu_4 = (vector.create((vu_7 * 4 + 9) % 11 + 1, (vu_7 * 6 + 1) % 13 + 1, (vu_7 * 10 + 10) % 17 + 1))
        om = (vector.create((vu_7 * 1 + 5) % 11 + 1, (vu_7 * 2 + 12) % 13 + 1, (vu_7 * 5 + 1) % 17 + 1))
        if vector.dot(vector.cross(vu_5, vu_4), om) == vector.dot(vector.cross(vu_4, om), vu_5) then
            vu_2 = string.sub(nf, 1, 18) .. "..."
        else
            nf = string.sub(vu_2, 1, 18) .. "..."
        end
        vu_7 = (vu_7 + 1) % 4
    until (vu_7 * 3 + 0) % 4 == 0
end
vu_7 = vu_2 or nf
mR, nC, nx, nv, nq, nm, nh, nc = nil, nil, nil, nil, nil, nil, nil, nil
local ot = vu_7
oi:AddLabel(n6("Server", ot, oj), true)
oi:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
mR = os.clock()
task.spawn(worker)
local ScriptsGroup = oh.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(mX("Included in this hub", oj), true)
ScriptsGroup:AddLabel(mX(vu_1, ok), true)
local FeaturesGroup = oh.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(mX("Auto Farm", ok), true)
FeaturesGroup:AddLabel(mX("Auto Pickup", nN), true)
FeaturesGroup:AddLabel(mX("Base Automation", ol), true)
FeaturesGroup:AddLabel(mX("Misc Utilities", oj), true)
local SocialsGroup = oh.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = nS })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = oh.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = nS })
nC = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
nx = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
nv = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
nq = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
nm = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
nh = "https://paypal.me/TheTruckerGOD"
nc = "https://venmo.com/u/miserablemusic"
local ou = "#345d9d"
oq = "#f7931a"
op = "#627eea"
oo = "#26a17b"
vu_4 = "#14f195"
vu_2 = "#0070ba"
vu_5 = "#008cff"
local DonationsGroup = oh.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(mX("All donations are optional but appreciated.", nN), true)
DonationsGroup:AddLabel(mX("If you donate you get a special role, just PING after you donate.", ol), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(mX("LTC / Litecoin", ou), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = fns.onCopyLitecoinAddress })
DonationsGroup:AddLabel(mX("BTC / Bitcoin", oq), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
DonationsGroup:AddLabel(mX("ETH / Ethereum", op), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(mX("USDT", oo), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
DonationsGroup:AddLabel(mX("Solana", vu_4), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = fns.onCopySolanaAddress })
DonationsGroup:AddLabel(mX("PayPal", vu_2), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = fns.onCopyPayPalLink })
DonationsGroup:AddLabel(mX("Venmo", vu_5), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(mX("Don't have any of the listed currencies but still wanna donate?", oj), true)
DonationsGroup:AddLabel(mX("DM me and we'll work something out.", ok), true)
local FaqGroup = oh.Info:AddRightGroupbox("FAQ", "circle-help")
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
local FarmGroup = oh.Main:AddLeftGroupbox("Farm", "mountain")
FarmGroup:AddToggle("AutoClimb", { Text = "Auto Climb", Default = false })
FarmGroup:AddToggle("AutoPickup", { Text = "Auto Pickup", Default = false })
FarmGroup:AddButton({ Text = "Teleport to Top", Func = vu_6 })
FarmGroup:AddButton({ Text = "Teleport to Ground", Func = og })
local ShopGroup = oh.Main:AddLeftGroupbox("Shop", "store")
ShopGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
ShopGroup:AddToggle("AutoBuyStyles", { Text = "Auto Buy Styles", Default = false })
ShopGroup:AddToggle("AutoBuyBars", { Text = "Auto Buy Bars", Default = false })
ShopGroup:AddToggle("AutoEquipPullBars", { Text = "Auto Equip Pull Bars", Default = false })
ShopGroup:AddToggle("Auto2x", { Text = "Auto 2x", Default = false })
local BaseGroup = oh.Main:AddRightGroupbox("Base", "house")
BaseGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
BaseGroup:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
BaseGroup:AddToggle("AutoUpgradeBase", { Text = "Auto Upgrade Base", Default = false })
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(fns.worker5)
task.spawn(worker6)
task.spawn(fns.worker7)
task.spawn(worker8)
task.spawn(worker9)
vu_7 = nY("PullUpService")
if vu_7 then
    vu_7.OnClientEvent:Connect(function(hm)
        local tL = nd.Unloaded or not mU("Auto2x")
        if tL then
            return
        end
        local tL_1 = type(hm) == "table" and hm.kind == "showPopup"
        if tL_1 then
            nH("PullUpService", { kind = "popupClicked" })
        end
    end)
end
CurrentCamera, nK, nG, connection, connection2, vu_5, m_, nr, nt, mT, n1, nn = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
task.spawn(worker10)
vu_6 = oh.Player:AddLeftGroupbox("Movement", "footprints")
vu_6:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
vu_6:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
vu_6:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
vu_6:AddToggle("NoClip", { Text = "NoClip", Default = false })
vu_6:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
vu_2 = oh.Player:AddRightGroupbox("Fly", "feather")
vu_2:AddToggle("Fly", { Text = "Fly", Default = false })
vu_2:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
RunService.Stepped:Connect(onStepped)
nX.JumpRequest:Connect(onJumpRequest)
CurrentCamera = workspace.CurrentCamera
RunService.RenderStepped:Connect(fns.onRenderStepped)
mS.Fly:OnChanged(fn516)
mS.WalkSpeedEnabled:OnChanged(fn1033)
m_ = function(h5)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not h5)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not h5
        end
    end)
    if not h5 then
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
mS.AntiGameplayPause:OnChanged(fn570)
task.spawn(antiGameplayPauseLoop)
vu_4 = oh.Settings:AddLeftGroupbox("Menu", "menu")
vu_4:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
nd.ToggleKeybind = mP.MenuKeybind
nK = tick()
nG = tick()
pcall(function()
    for k, v in getconnections(LocalPlayer.Idled) do
        local up = v
        pcall(function()
            up:Disable()
        end)
    end
end)
nr = fn450
if ((CurrentCamera or CurrentCamera) and (CurrentCamera and nr) or (not CurrentCamera and not vu_2 or (nr or not nr)) or (not nr and nr or not vu_2 and not CurrentCamera) and ((nr or vu_2) and (not nr or not CurrentCamera))) and ((CurrentCamera or nr) and (not vu_2 or CurrentCamera) and (CurrentCamera or nr or not CurrentCamera and CurrentCamera) or (vu_2 or not vu_2) and (CurrentCamera and CurrentCamera) and (not nr and vu_2 or (not CurrentCamera or vu_2))) and not (((CurrentCamera or CurrentCamera) and (CurrentCamera and nr) or (not CurrentCamera and not vu_2 or (nr or not nr)) or (not nr and nr or not vu_2 and not CurrentCamera) and ((nr or vu_2) and (not nr or not CurrentCamera))) and ((CurrentCamera or nr) and (not vu_2 or CurrentCamera) and (CurrentCamera or nr or not CurrentCamera and CurrentCamera) or (vu_2 or not vu_2) and (CurrentCamera and CurrentCamera) and (not nr and vu_2 or (not CurrentCamera or vu_2)))) then
    nX = connection.InputBegan:Connect(fns.onInputBegan)
else
    connection = nX.InputBegan:Connect(fns.onInputBegan)
end
connection2 = nX.InputChanged:Connect(onInputChanged)
if (not nr or n1 or (n1 or n1) or (not n1 and not nr or (not connection2 or not connection2))) and (not n1 and not n1 and (not n1 or not n1) or connection2 and not n1 and (n1 or connection2)) and ((nr and n1 and (not connection2 or n1) or (not nr or not nr or (not nr or n1))) and ((not n1 or not connection2) and (n1 or not n1) or not connection2 and not connection2 and (n1 and nr))) or not ((not nr or n1 or (n1 or n1) or (not n1 and not nr or (not connection2 or not connection2))) and (not n1 and not n1 and (not n1 or not n1) or connection2 and not n1 and (n1 or connection2)) and ((nr and n1 and (not connection2 or n1) or (not nr or not nr or (not nr or n1))) and ((not n1 or not connection2) and (n1 or not n1) or not connection2 and not connection2 and (n1 and nr)))) then
    vu_4:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    vu_4:AddButton("Unload", onUnload)
    task.spawn(antiAfkLoop)
    nd:OnUnload(fns.fn289)
    of:SetLibrary(nd)
    of:SetFolder("OuroborosHub")
    of:SaveDefault("Evil Hello Kitty")
    of:ApplyToTab(oh.Settings)
    of:LoadDefault()
    mY:SetLibrary(nd)
    mY:IgnoreThemeSettings()
    mY:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    mY:SetFolder("OuroborosHub/ClimbAndDropALuckyBlock")
    vu_5 = mY:BuildConfigSection(oh.Settings)
else
    vu_5:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    vu_5:AddButton("Unload", onUnload)
    task.spawn(antiAfkLoop)
    vu_4:OnUnload(fns.fn289)
    nd:SetLibrary(vu_4)
    nd:SetFolder("OuroborosHub")
    nd:SaveDefault("Evil Hello Kitty")
    nd:ApplyToTab(of.Settings)
    nd:LoadDefault()
    oh:SetLibrary(vu_4)
    oh:IgnoreThemeSettings()
    oh:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    oh:SetFolder("OuroborosHub/ClimbAndDropALuckyBlock")
    mY = oh:BuildConfigSection(of.Settings)
end
nt = fns.fn295
mT = fn457
n1 = fns.fn39
nn = function(jc)
    local u3
    u3 = nil
    local u4 = type(jc) ~= "table" or type(jc.idx) ~= "string" or type(jc.type) ~= "string" or mY.Ignore[jc.idx]
    if u4 then
        return false
    end
    u3 = nt(jc.type, jc.idx)
    if not u3 then
        return false
    end
    local u4_1 = pcall(function()
        if jc.type == "Input" then
            if type(jc.text) ~= "string" then
                return
            end
            u3:SetValue(jc.text)
        elseif jc.type == "ColorPicker" then
            u3:SetValueRGB(Color3.fromHex(jc.value), jc.transparency)
        elseif jc.type == "KeyPicker" then
            u3:SetValue({ jc.key, jc.mode, jc.modifiers })
            if jc.mode == "Toggle" and jc.toggled ~= nil then
                u3.Toggled = jc.toggled
                u3:Update()
            end
        else
            u3:SetValue(jc.value)
        end
    end)
    return u4_1
end
vu_5:AddDivider()
vu_5:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
vu_5:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
vu_5:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
mY:LoadAutoloadConfig()
