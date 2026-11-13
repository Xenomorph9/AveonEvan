local fns = {}
local uV_7, uV_12
local n5
local m5
local nN
local mN
local nu
local TrailsConfig
local nb
local HttpService
local connection4
local nA
local mA
local nh
local nZ
local mZ
local nG
local mG
local nn
local OvenConfig
local m4
local nM
local mM
local nt
local oa
local na
local CurrentCamera
local mS
local connection6
local PepperConfig
local connection
local VirtualUser
local mY
local nF
local Config
local Toggles
local UserInputService
local m3
local mL
local ns
local n9
local m9
local mR
local ny
local of
local nf
local nX
local mX
local Library
local mE
local nl
local n2
local TrailEquip
local nK
local mK
local nr
local n8
local m8
local UnlockWorld3AfterStage
local WorldTeleport
local nx
local oe
local ne
local connection3
local mW
local nD
local mD
local ClickHeat
local n1
local m1
local Workspace
local mJ
local SaveManager
local AurasConfig
local TrailBuy
local mP
local nw
local od
local Options
local nV
local AuraEquip
local nC
local connection2
local nj
local n0
local m0
local nI
local mI
local np
local n6
local m6
local connection5
local mO
local nv
local oc
local RebirthRequest
local UnlockAfterStage
local mU
local nB
local mB
local ni
local n_
local AuraBuy
local nH
local mH
local no
function fns.fn6()
    m0(m8, "Copied Discord invite to clipboard")
end
function fns.fn7()
    local si
    for i, v in ipairs(AurasConfig.Auras) do
        if of.auras[v.id] then
            if not si or v.heatMultiplier > si.heatMultiplier then
                si = v
            end
        end
    end
    return si
end
function fns.onCopySolanaAddress()
    m0(m9, "Copied Solana address")
end
function fns.fn21()
    local sr = mS()
    if sr and of.equippedTrail ~= sr.id then
        nI(TrailEquip, sr.id)
        of.equippedTrail = sr.id
    end
end
function fns.worker4()
    while not Library.Unloaded do
        if n8("AutoBuyPeppers") then
            pcall(nF)
        else
            nu = false
        end
        task.wait(0.25)
    end
end
function fns.fn28()
    Library.ScreenGui.Parent = nH:WaitForChild("PlayerGui")
end
function fns.fn31(b_)
    if b_ > UnlockWorld3AfterStage then
        return 3
    elseif b_ > UnlockAfterStage then
        return 2
    else
        return 1
    end
end
function fns.onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local s9_1 = mX()
        if s9_1 then
            for i, descendant in s9_1:GetDescendants() do
                local s9_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if s9_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
function fns.fn84(iP, iQ)
    local t5_1 = (iP == "Toggle" and Toggles or Options)[iQ]
    local t4_2 = type(t5_1) == "table" and t5_1.Type == iP
    return t4_2 and t5_1 or nil
end
function fns.fn94(ea)
    local Base = Workspace:FindFirstChild("Base")
    local rd = Base and Base:FindFirstChild("ButtonPad")
    local rc_1 = rd
    if rd then
        rd = rc_1:FindFirstChild("Buttons")
    end
    local rc_2 = rd
    if rc_2 then
        local rd_1 = PepperConfig.indexForId(ea)
        local re = rd_1 and rc_2:FindFirstChild("Button" .. rd_1)
        if re then
            return re
        end
        for i, child in rc_2:GetChildren() do
            if child:FindFirstChild(ea) then
                return child
            end
        end
        local Mono = Workspace:FindFirstChild("Mono")
        if not Mono then
            return nil
        end
        for i, child in Mono:GetChildren() do
            if child:FindFirstChild(ea) then
                return child
            end
        end
        return nil
    end
    local Mono = Workspace:FindFirstChild("Mono")
    if not Mono then
        return nil
    end
    for i, child in Mono:GetChildren() do
        if child:FindFirstChild(ea) then
            return child
        end
    end
    return nil
end
function fns.onRscripts()
    m0(m3, "Copied Rscripts profile to clipboard")
end
function fns.antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local t0 = tick() - mU
            local t1 = tick() - mO
            if t0 >= 300 and t1 >= 60 then
                pcall(oa)
            else
                if t0 < 300 and t1 >= 300 then
                    pcall(oa)
                end
            end
        end
    end
end
function fns.fn123()
    local sA = ni()
    local sB
    for i, v in ipairs(TrailsConfig.Trails) do
        if not of.trails[v.id] and v.winCost <= sA then
            if not sB or v.heatMultiplier > sB.heatMultiplier then
                sB = v
            end
        end
    end
    if not sB then
        return
    end
    nI(TrailBuy, sB.id)
    nI(TrailEquip, sB.id)
end
function fns.worker6()
    while not Library.Unloaded do
        if n8("AutoRebirth") then
            pcall(mB)
        end
        task.wait(0.1)
    end
end
function fns.fn138()
    local rS = ni()
    local rT
    for i, v in ipairs(PepperConfig.Order) do
        local rU_1 = not PepperConfig.isDevil(v) and not mG(v)
        if rU_1 then
            local rU_2 = PepperConfig.winCost(v)
            if rU_2 <= rS then
                local rU_3 = PepperConfig.get(v)
                local rU_4 = rU_3 and rU_3.heatPerClick or 0
                local rV_2 = not rT
                if not rV_2 then
                    rV_2 = rU_4 > rT.Heat
                end
                if rV_2 then
                    rT = { Id = v, Heat = rU_4 }
                end
            end
        end
    end
    if not rT then
        nu = false
        return
    end
    local rS_1 = mP(rT.Id)
    if not rS_1 then
        nu = false
        return
    end
    local Touch = rS_1:FindFirstChild("Touch")
    local rV_3 = Touch and Touch:FindFirstChildWhichIsA("ProximityPrompt")
    local rW_2 = rV_3 or rS_1:FindFirstChildWhichIsA("ProximityPrompt", true)
    local rV_4 = Touch
    if not rV_4 then
        rV_4 = rS_1:FindFirstChildWhichIsA("BasePart", true)
    end
    local rS_2 = rV_4
    if not rS_2 then
        nu = false
        return
    end
    nu = true
    if not nV(rS_2, 10) then
        m6(rS_2.CFrame + Vector3.new(0, 3, 0))
        local rV_5 = os.clock() + 1.25
        while true do
            local rW_3 = os.clock() < rV_5 and not Library.Unloaded and n8("AutoBuyPeppers")
            if rW_3 then
                if nV(rS_2, 10) then
                    break
                end
                task.wait(0.05)
                continue
            end
            break
        end
    else
        m6(rS_2.CFrame + Vector3.new(0, 3, 0))
    end
    local r5 = if mW(rW_2) then 1 else 0
    if r5 == 1 then
        of.ownedPeppers[rT.Id] = true
        nu = false
        return
    end
    if os.clock() - np >= 1.4 then
        np = os.clock()
        nn(rW_2)
    end
    local rS_3 = os.clock() + 1.6
    while true do
        local rV_6 = os.clock() < rS_3 and not Library.Unloaded and n8("AutoBuyPeppers")
        if rV_6 then
            local rV_7 = mG(rT.Id) or mW(rW_2)
            if rV_7 then
                of.ownedPeppers[rT.Id] = true
                break
            end
            task.wait(0.1)
            continue
        end
        break
    end
    nu = false
end
function fns.fn139(bw)
    if type(bw) ~= "table" then
        return
    end
    if bw.wins ~= nil then
        of.wins = nX(bw.wins)
    end
    if bw.heat ~= nil then
        of.heat = nX(bw.heat)
    elseif bw.wins ~= nil then
        of.heat = nX(bw.wins)
    end
    if bw.rebirths ~= nil then
        local pM_1 = tonumber(bw.rebirths) or of.rebirths
        of.rebirths = pM_1
    end
    if bw.level ~= nil then
        local pM_2 = tonumber(bw.level) or of.level
        of.level = pM_2
    end
    if bw.nextRebirthLevel ~= nil then
        local pM_3 = tonumber(bw.nextRebirthLevel) or of.nextRebirthLevel
        of.nextRebirthLevel = pM_3
    end
    if type(bw.ownedPeppers) == "table" then
        of.ownedPeppers = n9(bw.ownedPeppers)
        of.ownedPeppers[PepperConfig.DEFAULT_ID] = true
    end
    if type(bw.trails) == "table" then
        of.trails = n9(bw.trails)
    end
    if type(bw.auras) == "table" then
        of.auras = n9(bw.auras)
    end
    if type(bw.ownedOvens) == "table" then
        of.ownedOvens = n9(bw.ownedOvens)
    end
    if bw.equippedPepper ~= nil then
        of.equippedPepper = tostring(bw.equippedPepper)
    end
    if bw.equippedTrail ~= nil then
        of.equippedTrail = tostring(bw.equippedTrail)
    end
    if bw.equippedAura ~= nil then
        of.equippedAura = tostring(bw.equippedAura)
    end
    if bw.paidWins ~= nil then
        of.paidWins = bw.paidWins == true
    elseif bw.ownsPaidWins ~= nil then
        of.paidWins = bw.ownsPaidWins == true
    elseif bw.winsPaid ~= nil then
        of.paidWins = bw.winsPaid == true
    end
end
function fns.fn155()
    local leaderstats = nH:FindFirstChild("leaderstats")
    local pY = leaderstats and leaderstats:FindFirstChild("Rebirths")
    if pY then
        return nX(pY.Value)
    end
    return of.rebirths
end
function fns.fn177()
    if not Toggles.Fly.Value then
        local tt = mN()
        if tt then
            tt.PlatformStand = false
        end
    end
end
function fns.antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            n6(true)
        end
    end
end
function fns.fn218()
    nC = nil
    connection:Disconnect()
    connection2:Disconnect()
    connection3:Disconnect()
    connection4:Disconnect()
    connection5:Disconnect()
    connection6:Disconnect()
    n6(false)
    print("Unloaded!")
end
function fns.fn223(gd)
    local DiscordGroup = gd:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = mH })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = mH })
end
function fns.onCopyVenmoLink()
    m0(m1, "Copied Venmo link")
end
function fns.fn247(aK)
    local pd = Options[aK]
    return pd and pd.Value or nil
end
function fns.worker5()
    while not Library.Unloaded do
        if n8("AutoBuyTrails") then
            pcall(mD)
        end
        if n8("AutoBuyAuras") then
            pcall(ny)
        end
        if n8("AutoEquipBestTrail") then
            pcall(nG)
        end
        if n8("AutoEquipBestAura") then
            pcall(nb)
        end
        task.wait(1)
    end
end
function fns.onCopyJoinScript_JobID()
    local gu = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, mE)
    m0(gu, "Copied join script to clipboard")
end
function fns.fn262(ch)
    local Map = Workspace:FindFirstChild("Map")
    local qa = Map and Map:FindFirstChild("Walls")
    local p9_1 = qa
    if qa then
        qa = p9_1:FindFirstChild("Zone" .. ch)
    end
    local p9_2 = qa
    if qa then
        qa = p9_2:IsA("BasePart")
    end
    if qa then
        return p9_2
    end
    return nil
end
function fns.fn274()
    local pm = mX()
    local pn = pm and pm:FindFirstChild("HumanoidRootPart")
    return pn
end
function fns.fn281()
    if not Toggles.WalkSpeedEnabled.Value then
        local tv = mN()
        if tv then
            tv.WalkSpeed = 16
        end
    end
end
function fns.fn289(cq)
    if not cq then
        return true
    end
    return cq.CanCollide == false or cq.Transparency >= 0.9
end
function fns.fn297()
    local sx = n5()
    if sx and of.equippedAura ~= sx.id then
        nI(AuraEquip, sx.id)
        of.equippedAura = sx.id
    end
end
function fns.fn344()
    local pj = mX()
    local pk = pj and pj:FindFirstChildOfClass("Humanoid")
    return pk
end
function fns.onImportConfigFromClipboardTex()
    local uL_1
    local uJ = Options.SaveManager_ImportSource.Value or ""
    local uJ_1
    local uK = tostring(uJ):match("^%s*(.-)%s*$")
    if uK == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    uJ_1, uL_1 = pcall(HttpService.JSONDecode, HttpService, uK)
    local uK_1 = not uJ_1 or type(uL_1) ~= "table" or type(uL_1.objects) ~= "table"
    if uK_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local uJ_2 = 0
    for i, v in ipairs(uL_1.objects) do
        if nM(v) then
            uJ_2 += 1
        end
    end
    if uJ_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local uL_2 = uJ_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(uJ_2, uL_2), 6)
end
function fns.fn371(eI, eJ)
    local rL = oe()
    if not (rL and eI) then
        return false
    end
    local Magnitude = (rL.Position - eI.Position).Magnitude
    local rN = eJ
    local rR = if rN then 1 else 0
    local rP = 2340 * rR + 1657 * (1 - rR)
    local rQ = 807 * rR + 3314 * (1 - rR)
    if not ((rP * 1212 + rQ * 1170 + rP * rQ) % 16777213 == 5668650) then
        rN = 12
    end
    return Magnitude <= rN
end
function fns.onCopyUSDTAddress()
    m0(nf, "Copied USDT address")
end
function fns.fn385()
    local sK = ni()
    local sL
    for i, v in ipairs(AurasConfig.Auras) do
        if not of.auras[v.id] and v.winCost <= sK then
            if not sL or v.heatMultiplier > sL.heatMultiplier then
                sL = v
            end
        end
    end
    if not sL then
        return
    end
    nI(AuraBuy, sL.id)
    nI(AuraEquip, sL.id)
end
function fns.fn389()
    local r9
    for i, v in ipairs(TrailsConfig.Trails) do
        if of.trails[v.id] then
            if not r9 or v.heatMultiplier > r9.heatMultiplier then
                r9 = v
            end
        end
    end
    return r9
end
function fns.fn391()
    local uf = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local ug = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if ug then
                local ug_1 = ns(k, v)
                if ug_1 then
                    uf[#uf + 1] = ug_1
                end
            end
        end
    end
    table.sort(uf, function(i8, i9)
        if i8.type ~= i9.type then
            return i8.type < i9.type
        end
        return i8.idx < i9.idx
    end)
    return { objects = uf }
end
function fns.fn402()
    local Stats = nH:FindFirstChild("Stats")
    local p0 = Stats and Stats:FindFirstChild("Level")
    if p0 then
        return nX(p0.Value)
    end
    return of.level
end
function fns.onCharacterAdded()
    nC = nil
end
function fns.fn460()
    local qk = oe()
    if not qk then
        return 1
    end
    local ql = qk.Position.Z
    if ql >= 949 then
        return 3
    elseif ql >= 410 then
        return 2
    else
        return 1
    end
end
function fns.fn467(cU)
    local qx = oe()
    if not qx then
        return
    end
    qx.AssemblyLinearVelocity = Vector3.zero
    qx.AssemblyAngularVelocity = Vector3.zero
    qx.CFrame = cU
    nC = cU
end
function fns.onCopyPayPalLink()
    m0(m5, "Copied PayPal link")
end
function fns.fn471()
    if nv(n1(UnlockWorld3AfterStage)) then
        return 3
    elseif nv(n1(UnlockAfterStage)) then
        return 2
    else
        return 1
    end
end
function fns.fn527()
    if not na() then
        return
    end
    nI(ClickHeat)
end
function fns.fn542(aP, aQ)
    local pg = Options[aP]
    local ph = pg and tonumber(pg.Value)
    if ph then
        return ph
    end
    return aQ
end
function fns.fn544(cJ)
    local qo = oe()
    if not (qo and cJ) then
        return
    end
    if firetouchinterest then
        pcall(firetouchinterest, cJ, qo, 0)
        pcall(firetouchinterest, cJ, qo, 1)
    end
end
function fns.fn590()
    return nH.Character
end
function fns.fn593(iX, iY)
    local Type = iY.Type
    if Type == "Toggle" then
        return { idx = iX, type = "Toggle", value = iY.Value == true }
    elseif Type == "Slider" then
        return { idx = iX, type = "Slider", value = tostring(iY.Value) }
    elseif Type == "Dropdown" then
        return { idx = iX, type = "Dropdown", multi = iY.Multi == true, value = iY.Value }
    elseif Type == "Input" then
        local t9 = iY.Value
        local ud = if t9 then 1 else 0
        local ub = 3838 * ud + 1852 * (1 - ud)
        local uc = 1299 * ud + 711 * (1 - ud)
        if not ((ub * 3093 + uc * 1103 + ub * uc) % 16777213 == 1512080) then
            t9 = ""
        end
        return { idx = iX, type = "Input", text = tostring(t9) }
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
function fns.fn601(dP)
    local q2 = OvenConfig.zoneNameForId(dP)
    if not q2 then
        return nil
    end
    local Map = Workspace:FindFirstChild("Map")
    local q4 = Map and Map:FindFirstChild("OvensZones")
    local q3_1 = q4
    if q4 then
        q4 = q3_1:FindFirstChild(q2)
    end
    local q2_1 = q4
    local q3_2 = q2_1 and q2_1:IsA("BasePart")
    if q3_2 then
        return q2_1
    end
    return nil
end
function fns.fn612(X, Y)
    if setclipboard then
        setclipboard(X)
    elseif toclipboard then
        toclipboard(X)
    end
    Library:Notify(Y)
end
function fns.worker3()
    while not Library.Unloaded do
        if n8("AutoClick") then
            nh()
        end
        task.wait(0.05)
    end
end
function fns.fn683(br)
    local pE = {}
    if type(br) ~= "table" then
        return pE
    end
    for k, v in br do
        if v then
            pE[tostring(k)] = true
        end
    end
    return pE
end
function fns.fn687()
    local Map = Workspace:FindFirstChild("Map")
    local p4 = Map and Map:FindFirstChild("WinPads")
    if not p4 then
        return nil
    elseif of.paidWins then
        local PaidWins = p4:FindFirstChild("PaidWins")
        if PaidWins then
            return PaidWins
        end
        return p4:FindFirstChild("DefaultWins")
    else
        return p4:FindFirstChild("DefaultWins")
    end
end
function fns.fn688(eB)
    if of.ownedPeppers[eB] then
        return true
    end
    local rI = mP(eB)
    if not rI then
        return false
    end
    local ProximityPrompt = rI:FindFirstChildWhichIsA("ProximityPrompt", true)
    if mW(ProximityPrompt) then
        of.ownedPeppers[eB] = true
        return true
    end
    return false
end
function fns.fn690(be)
    local py = mX()
    if not py then
        return
    end
    if py.PrimaryPart then
        py:PivotTo(be)
    else
        local py_1 = oe()
        if py_1 then
            py_1.CFrame = be
        end
    end
end
function fns.fn715()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    mO = tick()
end
function fns.onRenderStepped(hl)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local tp_1 = mN()
        if tp_1 then
            tp_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local tp_3 = oe()
        local tq = mN()
        if tp_3 and tq then
            tq.PlatformStand = true
            local tq_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                tq_1 = tq_1 + CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                tq_1 = tq_1 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                tq_1 = tq_1 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                tq_1 = tq_1 + CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                tq_1 = tq_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                tq_1 = tq_1 - Vector3.new(0, 1, 0)
            end
            tp_3.Velocity = Vector3.zero
            if tq_1.Magnitude > 0 then
                tp_3.CFrame = tp_3.CFrame + tq_1.Unit * Options.FlySpeed.Value * hl
            end
        end
    end
end
local function fn735()
    local sX_1
    local sW_1
    if identifyexecutor then
        sX_1, sW_1 = identifyexecutor()
        local sY = sX_1 ~= ""
        local sZ = type(sX_1) == "string" and sY
        if sZ then
            local sY_1 = type(sW_1) == "string" and sW_1 ~= "" and sX_1 .. " " .. sW_1
            nj = sY_1 or sX_1
        end
    end
end
local function onCopyBitcoinAddress()
    m0(nr, "Copied Bitcoin address")
end
local function fn783()
    n6(Toggles.AntiGameplayPause.Value)
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local tk_1 = mN()
        if tk_1 then
            tk_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn830()
    if not Toggles.AutoTrain.Value then
        nC = nil
    end
end
local function fn839()
    local qz = ne()
    od(nA(qz))
    local qA = mL(qz)
    if not qA then
        local Map = Workspace:FindFirstChild("Map")
        local qC = Map and Map:FindFirstChild("WorldsSpawns")
        local qB_1 = qC
        if qC then
            qC = qB_1:FindFirstChild("World" .. nA(qz))
        end
        local qz_1 = qC
        local qB_2 = qz_1 and qz_1:IsA("BasePart")
        if qB_2 then
            mY(qz_1.Position)
        end
        task.wait(0.25)
        return
    end
    mY(qA.Position)
    nC = nil
    nt(qA.CFrame + Vector3.new(0, 3, 0))
    nN(qA)
    task.wait(math.max(nx("WinDelay", 0.55), 0.2))
end
local function fn840(ca)
    local p6 = nl()
    local p7 = p6 and p6:FindFirstChild("Zone" .. ca)
    local p6_1 = p7
    if p7 then
        p7 = p6_1:IsA("BasePart")
    end
    if p7 then
        return p6_1
    end
    return nil
end
local function worker2()
    while not Library.Unloaded do
        if nu then
            task.wait(0.1)
        elseif n8("AutoWin") then
            pcall(mI)
        elseif n8("AutoTrain") then
            pcall(nD)
            task.wait(0.35)
        else
            if not n8("AutoBuyPeppers") then
                nC = nil
            end
            task.wait(0.25)
        end
    end
end
local function fn847(ah, ai, aj)
    return string.format("<b>%s</b> %s %s", ah, oc("-", "#5a6070"), oc(ai, aj))
end
local function onExportConfigToClipboard()
    local uD_1
    local uC_1
    uC_1, uD_1 = pcall(HttpService.JSONEncode, HttpService, m4())
    if not uC_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local uC_2 = setclipboard or toclipboard
    local uC_3 = type(uC_2) ~= "function" or not pcall(uC_2, uD_1)
    if uC_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function fn893(ey)
    if not ey then
        return false
    end
    local rE = ey.ActionText or ""
    return rE == "Equip" or rE == "Equipped"
end
local function onInputChanged(iq)
    local UserInputType = iq.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        mU = tick()
    end
end
local function fn937()
    if not Toggles.AutoWin.Value then
        nC = nil
    end
end
local function onInputBegan()
    mU = tick()
end
local function onCopyLitecoinAddress()
    m0(nw, "Copied Litecoin address")
end
local function fn953()
    local sU = of.nextRebirthLevel
    if sU <= 0 then
        sU = Config.maxLevel(mJ())
    end
    if nZ() >= sU then
        nI(RebirthRequest)
    end
end
local function fn960(a5)
    if typeof(a5) == "number" then
        return a5
    end
    local ps = (Config.parse(a5))
    local px = if ps then 1 else 0
    local pv = 1049 * px + 2266 * (1 - px)
    local pw = 2882 * px + 2199 * (1 - px)
    if not ((pv * 2268 + pw * 268 + pv * pw) % 16777213 == 6174726) then
        ps = tonumber(a5)
    end
    return ps or 0
end
local function fn971(cD)
    if mM() == cD then
        return
    end
    if os.clock() - mR < 1.25 then
        return
    end
    mR = os.clock()
    nI(WorldTeleport, cD)
    task.wait(0.6)
end
local function worker()
    local s4_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local s3 = math.floor(os.clock() - n_)
        if s3 < 60 then
            s4_1 = s3 .. "s"
        elseif s3 < 3600 then
            s4_1 = string.format("%dm %ds", s3 // 60, s3 % 60)
        else
            s4_1 = string.format("%dh %dm", s3 // 3600, s3 % 3600 // 60)
        end
        mK:SetText(n2("Session time", s4_1, nB))
    end
end
local function onUnload()
    Library:Unload()
end
local function onHeartbeat()
    if Library.Unloaded or not nC then
        return
    end
    local qu_1 = oe()
    if not qu_1 then
        return
    end
    qu_1.AssemblyLinearVelocity = Vector3.zero
    qu_1.AssemblyAngularVelocity = Vector3.zero
    qu_1.CFrame = nC
end
local function onCopyEthereumAddress()
    m0(no, "Copied Ethereum address")
end
local function fn1035()
    local qe = nK("WinPlate")
    if qe == "Random" then
        return math.random(1, n0)
    elseif type(qe) == "string" then
        local qf = tonumber(qe:match("%d+"))
        if qf then
            return math.clamp(qf, 1, n0)
        end
        return n0
    else
        return n0
    end
end
local function fn1047(aE)
    if Library.Unloaded then
        return false
    end
    local pa = Toggles[aE]
    return pa ~= nil and pa.Value == true
end
local function fn1059()
    local q9 = OvenConfig.bestOwnedId(mJ(), of.ownedOvens, mZ()) or OvenConfig.DEFAULT_ID
    od(OvenConfig.worldId(q9))
    local ra = mA(q9)
    if not ra then
        return
    end
    mY(ra.Position)
    m6(ra.CFrame + Vector3.new(0, 3, 0))
end
local function fn1079()
    local leaderstats = nH:FindFirstChild("leaderstats")
    local pV = leaderstats and leaderstats:FindFirstChild("Wins")
    if pV then
        return nX(pV.Value)
    end
    return of.wins
end
local function fn1090(ae, af)
    return string.format('<font color="%s">%s</font>', af, ae)
end
PepperConfig = nil
mA = nil
mB = nil
connection2 = nil
mD = nil
mE = nil
Config = nil
mG = nil
mH = nil
mI = nil
mJ = nil
mK = nil
mL = nil
mM = nil
mN = nil
mO = nil
mP = nil
WorldTeleport = nil
mR = nil
mS = nil
connection4 = nil
mU = nil
AuraEquip = nil
mW = nil
mX = nil
mY = nil
mZ = nil
AuraBuy = nil
m0 = nil
m1 = nil
TrailEquip = nil
m3 = nil
m4 = nil
m5 = nil
m6 = nil
TrailBuy = nil
m8 = nil
m9 = nil
na = nil
nb = nil
RebirthRequest = nil
Options = nil
ne = nil
nf = nil
connection = nil
nh = nil
ni = nil
nj = nil
ClickHeat = nil
nl = nil
Toggles = nil
nn = nil
no = nil
np = nil
SaveManager = nil
nr = nil
ns = nil
nt = nil
nu = nil
nv = nil
nw = nil
nx = nil
ny = nil
connection6 = nil
nA = nil
nB = nil
nC = nil
nD = nil
Library = nil
nF = nil
nG = nil
nH = nil
nI = nil
Workspace = nil
nK = nil
nM = nil
nN = nil
connection5 = nil
UnlockWorld3AfterStage = nil
CurrentCamera = nil
HttpService = nil
UnlockAfterStage = nil
nV = nil
connection3 = nil
nX = nil
VirtualUser = nil
nZ = nil
n_ = nil
n0 = nil
n1 = nil
n2 = nil
UserInputService = nil
OvenConfig = nil
n5 = nil
n6 = nil
AurasConfig = nil
n8 = nil
local CoreGui, GuiService, nR
n9 = nil
oa = nil
TrailsConfig = nil
oc = nil
od = nil
oe = nil
of = nil
UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, nH = nil, nil, nil, nil, nil, nil, nil
local uV_22 = game:GetService("Players")
local uV_38 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
nH = uV_22.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return nH:WaitForChild("PlayerGui")
    end
end
if setthreadidentity then
    setthreadidentity(8)
end
uV_7, ClickHeat, RebirthRequest, TrailBuy, TrailEquip, AuraBuy, AuraEquip, WorldTeleport, uV_12, Config, PepperConfig, TrailsConfig, AurasConfig, OvenConfig, n0, UnlockAfterStage, UnlockWorld3AfterStage = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local uV_42 = "+1 Heat Per Click"
local uV_40 = uV_38:WaitForChild("TreeGame")
local uV_9 = uV_40:WaitForChild("Remotes")
if uV_7 and not uV_7 and (not uV_40 and uV_12) or (uV_40 or not uV_12 or uV_40 and false) or (not uV_40 or uV_12 or (not uV_7 or not uV_12)) and (not uV_12 and uV_40 and (not uV_12 or uV_40)) or not (uV_7 and not uV_7 and (not uV_40 and uV_12) or (uV_40 or not uV_12 or uV_40 and false) or (not uV_40 or uV_12 or (not uV_7 or not uV_12)) and (not uV_12 and uV_40 and (not uV_12 or uV_40))) then
    uV_7 = uV_38:WaitForChild("Configs")
else
    uV_7:WaitForChild("Configs")
end
ClickHeat = uV_9:WaitForChild("ClickHeat")
RebirthRequest = uV_9:WaitForChild("RebirthRequest")
TrailBuy = uV_9:WaitForChild("TrailBuy")
TrailEquip = uV_9:WaitForChild("TrailEquip")
AuraBuy = uV_9:WaitForChild("AuraBuy")
AuraEquip = uV_9:WaitForChild("AuraEquip")
WorldTeleport = uV_9:WaitForChild("WorldTeleport")
uV_12 = uV_9:WaitForChild("StateSync")
Config = require(uV_40:WaitForChild("Config"))
uV_22 = require(uV_7:WaitForChild("GameConfig"))
PepperConfig = require(uV_7:WaitForChild("PepperConfig"))
TrailsConfig = require(uV_7:WaitForChild("TrailsConfig"))
AurasConfig = require(uV_7:WaitForChild("AurasConfig"))
OvenConfig = require(uV_7:WaitForChild("OvenConfig"))
n0 = #uV_22.ZoneWins
UnlockAfterStage = uV_22.Worlds.UnlockAfterStage
UnlockWorld3AfterStage = uV_22.Worlds.UnlockWorld3AfterStage
local uV_29 = { "Best", "Random" }
local oY = 1
local uV_36 = n0
while oY <= uV_36 do
    local oZ = oY
    uV_29[#uV_29 + 1] = "Zone " .. oZ
    oY += 1
end
Library, SaveManager, Toggles, Options, m8, m3, nB, nw, nr, no, nf, m9, m5, m1, of, mR, nC, connection, nu, np, m0, mH, oc, n2, n8, nK, nx, mX, mN, oe, nX, nI, nt, mY, n9, ni, mJ, nZ, nA, nl, mL, n1, nv, ne, mM, od, nN, m6, mI, na, nh, mZ, mA, nD, mP, nn, mW, mG, nV, nF, mS, n5, nG, nb, mD, ny, mB = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
pcall(fns.fn28)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
m8 = "https://discord.gg/ehKVq7pf7v"
m3 = "https://rscripts.net/@Ouroboros"
m0 = fns.fn612
mH = fns.fn6
oc = fn1090
n2 = fn847
local uV_35 = "#7fd47f"
local uV_5 = "#6ec1ff"
nB = "#e8a34d"
local uV_18 = "#8b93a3"
nw = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
nr = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
no = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
nf = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
m9 = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
m5 = "https://paypal.me/TheTruckerGOD"
m1 = "https://venmo.com/u/miserablemusic"
local uV_3 = "#345d9d"
local uV_16 = "#f7931a"
local uV_31 = "#627eea"
local uV_1 = "#26a17b"
local uV_14 = "#14f195"
local uV_26 = "#0070ba"
local uV_6 = "#008cff"
n8 = fn1047
nK = fns.fn247
nx = fns.fn542
mX = fns.fn590
mN = fns.fn344
oe = fns.fn274
nX = fn960
nI = function(a9, ...)
    local ba
    ba = { ... }
    pcall(function()
        a9:FireServer(table.unpack(ba))
    end)
end
nt = fns.fn690
mY = function(bk)
    if typeof(bk) ~= "Vector3" then
        return
    end
    if not Workspace.StreamingEnabled then
        return
    end
    pcall(function()
        nH:RequestStreamAroundAsync(bk)
    end)
end
of = {
    wins = 0,
    heat = 0,
    rebirths = 0,
    level = 1,
    ownedPeppers = { [PepperConfig.DEFAULT_ID] = true },
    trails = {},
    auras = {},
    equippedPepper = PepperConfig.DEFAULT_ID,
    equippedTrail = "",
    equippedAura = "",
    ownedOvens = {},
    paidWins = false,
    nextRebirthLevel = Config.maxLevel(0)
}
n9 = fns.fn683
uV_38 = fns.fn139
uV_12.OnClientEvent:Connect(uV_38)
ni = fn1079
mJ = fns.fn155
nZ = fns.fn402
nA = fns.fn31
nl = fns.fn687
mL = fn840
n1 = fns.fn262
nv = fns.fn289
ne = fn1035
mR = 0
mM = fns.fn460
od = fn971
nN = fns.fn544
nC = nil
connection = RunService.Heartbeat:Connect(onHeartbeat)
if (false and (nZ and nN) or (nZ or not nN) and (nZ or nZ)) and (false and nZ and (not nZ or not nN) or (false or nZ or nr and not nZ)) and not ((false and (nZ and nN) or (nZ or not nN) and (nZ or nZ)) and (false and nZ and (not nZ or not nN) or (false or nZ or nr and not nZ))) then
    na.CharacterAdded:Connect(fns.onCharacterAdded)
    mI = fns.fn467
    nH = fn839
    mZ = function()
        local qJ = mX()
        if not qJ then
            return false
        end
        for i, child in qJ:GetChildren() do
            local qK_4 = child:IsA("Tool") and PepperConfig.isValid(child.Name)
            if qK_4 then
                return true
            end
        end
        local qK_5 = of.equippedPepper
        local Stats = nH:FindFirstChild("Stats")
        local qM = Stats and Stats:FindFirstChild("EquippedPepper")
        local qL_3 = qM
        if qM then
            qM = type(qL_3.Value) == "string"
        end
        if qM then
            qM = qL_3.Value ~= ""
        end
        if qM then
            qK_5 = qL_3.Value
        end
        local Backpack = nH:FindFirstChild("Backpack")
        local qM_2 = (qJ:FindFirstChild(qK_5))
        local q_ = if qM_2 then 1 else 0
        local qY = 1608 * q_ + 910 * (1 - q_)
        local qZ = 1267 * q_ + 3596 * (1 - q_)
        if not ((qY * 220 + qZ * 1589 + qY * qZ) % 16777213 == 4404359) then
            local qN = Backpack and Backpack:FindFirstChild(qK_5)
            qM_2 = qN
        end
        local qH = qM_2
        local qK_6 = qH and qH:IsA("Tool")
        if not qK_6 then
            return false
        end
        local qI = mN()
        if qI then
            pcall(function()
                qI:EquipTool(qH)
            end)
        end
        return qJ:FindFirstChildOfClass("Tool") ~= nil
    end
    m6 = fns.fn527
    nh = fns.fn471
else
    nH.CharacterAdded:Connect(fns.onCharacterAdded)
    m6 = fns.fn467
    mI = fn839
    na = function()
        local qJ = mX()
        if not qJ then
            return false
        end
        for i, child in qJ:GetChildren() do
            local qK_1 = child:IsA("Tool") and PepperConfig.isValid(child.Name)
            if qK_1 then
                return true
            end
        end
        local qK_2 = of.equippedPepper
        local Stats = nH:FindFirstChild("Stats")
        local qM = Stats and Stats:FindFirstChild("EquippedPepper")
        local qL_1 = qM
        if qM then
            qM = type(qL_1.Value) == "string"
        end
        if qM then
            qM = qL_1.Value ~= ""
        end
        if qM then
            qK_2 = qL_1.Value
        end
        local Backpack = nH:FindFirstChild("Backpack")
        local qM_1 = (qJ:FindFirstChild(qK_2))
        local q_ = if qM_1 then 1 else 0
        local qY = 1608 * q_ + 910 * (1 - q_)
        local qZ = 1267 * q_ + 3596 * (1 - q_)
        if not ((qY * 220 + qZ * 1589 + qY * qZ) % 16777213 == 4404359) then
            local qN = Backpack and Backpack:FindFirstChild(qK_2)
            qM_1 = qN
        end
        local qH = qM_1
        local qK_3 = qH and qH:IsA("Tool")
        if not qK_3 then
            return false
        end
        local qI = mN()
        if qI then
            pcall(function()
                qI:EquipTool(qH)
            end)
        end
        return qJ:FindFirstChildOfClass("Tool") ~= nil
    end
    nh = fns.fn527
    mZ = fns.fn471
end
mA = fns.fn601
nD = fn1059
mP = fns.fn94
nu = false
np = 0
nn = function(et)
    if not et then
        return
    end
    if fireproximityprompt then
        pcall(function()
            fireproximityprompt(et)
        end)
        return
    end
    pcall(function()
        et:InputHoldBegin()
    end)
    local rw = et.HoldDuration
    local rD = if rw then 1 else 0
    local rB = 278 * rD + 2704 * (1 - rD)
    local rC = 1129 * rD + 696 * (1 - rD)
    if not ((rB * 1376 + rC * 1112 + rB * rC) % 16777213 == 1951838) then
        rw = 0
    end
    task.wait(rw)
    pcall(function()
        et:InputHoldEnd()
    end)
end
mW = fn893
mG = fns.fn688
nV = fns.fn371
nF = fns.fn138
mS = fns.fn389
n5 = fns.fn7
nG = fns.fn21
nb = fns.fn297
mD = fns.fn123
ny = fns.fn385
mB = fn953
uV_7 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = m8, Copyable = true }, "|", uV_42 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
local uV_20 = {
    Info = uV_7:AddTab("Info", "info"),
    Main = uV_7:AddTab("Main", "flame"),
    Shop = uV_7:AddTab("Shop", "shopping-bag"),
    Player = uV_7:AddTab("Player", "person-standing"),
    Settings = uV_7:AddTab("Settings", "settings")
}
uV_40 = fns.fn223
for k, v in uV_20 do
    uV_40(v)
end
nj, uV_7, uV_9, mK, mE, uV_38 = nil, nil, nil, nil, nil, nil
uV_22 = 4
repeat
    uV_40 = (uV_22 * 1 + 2) % 3 + 1
    if uV_40 <= 2 then
        if uV_40 <= 1 then
            if (uV_22 or not uV_7) and (uV_7 or not uV_22) and (not uV_22 and uV_7 or (uV_7 or not uV_22)) or not ((uV_22 or not uV_7) and (uV_7 or not uV_22) and (not uV_22 and uV_7 or (uV_7 or not uV_22))) then
                nj = "Unknown"
                pcall(fn735)
                uV_7 = uV_20.Info:AddLeftGroupbox("Account", "circle-user")
                uV_7:AddLabel(n2("User", nH.Name, uV_35), true)
                uV_7:AddLabel(n2("Status", "Keyless", uV_35), true)
                uV_7:AddLabel(n2("Executor", nj, uV_35), true)
                uV_9 = uV_20.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                uV_9:AddLabel(oc(uV_42 .. " [" .. tostring(game.PlaceId) .. "]", uV_5), true)
                uV_9:AddLabel(n2("Place ID", tostring(game.PlaceId), uV_5), true)
                mK = uV_9:AddLabel(n2("Session time", "0s", nB), true)
            else
                n2 = "Unknown"
                pcall(fn735)
                uV_9 = nH.Info:AddLeftGroupbox("Account", "circle-user")
                uV_9:AddLabel(nj("User", mK.Name, uV_7), true)
                uV_9:AddLabel(nj("Status", "Keyless", uV_7), true)
                uV_9:AddLabel(nj("Executor", n2, uV_7), true)
                oc = nH.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                oc:AddLabel(uV_35(nB .. " [" .. tostring(game.PlaceId) .. "]", uV_20), true)
                oc:AddLabel(nj("Place ID", tostring(game.PlaceId), uV_20), true)
                uV_42 = oc:AddLabel(nj("Session time", "0s", uV_5), true)
            end
            uV_22 = (uV_22 + 10) % 12
        else
            uV_40 = (vector.create((uV_22 * 4 + 1) % 11 + 1, (uV_22 * 7 + 2) % 13 + 1, (uV_22 * 8 + 2) % 17 + 1))
            uV_12 = (vector.create((uV_22 * 5 + 6) % 11 + 1, (uV_22 * 8 + 4) % 13 + 1, (uV_22 * 1 + 15) % 17 + 1))
            local v7 = vector.cross(uV_40, uV_12)
            local v8 = vector.dot(uV_40, uV_12)
            if vector.dot(v7, v7) + v8 * v8 == vector.dot(uV_40, uV_40) * vector.dot(uV_12, uV_12) + 2 then
                mK = tostring(game.JobId)
            else
                mE = tostring(game.JobId)
            end
            uV_22 = (uV_22 + 4) % 12
        end
    else
        uV_40 = {
            "yntivceswe",
            "erptmrty",
            "aomlbxd",
            "fayuiocnizk",
            "lzacglgcjcb",
            "ouhuwl",
            "gqcwexv",
            "zhaqtz",
            "wfcktufixn",
            "pliscahih",
            "pdwuhimof"
        }
        if uV_40[(uV_22 * 50 + 84) % 11 + 1] < uV_40[(uV_22 * 50 + 84) % 11 + 1] then
            mE = #uV_38 > 18
        else
            uV_38 = #mE > 18
        end
        uV_22 = (uV_22 + 10) % 12
    end
until (uV_22 * 11 + 9) % 12 == 5
if uV_38 then
    uV_22 = 0
    repeat
        if (uV_22 * 1 + 6) * 9 % 4 == ((uV_22 * 1 + 6) * 9 + 7) % 4 then
            mE = string.sub(uV_38, 1, 18) .. "..."
        else
            uV_38 = string.sub(mE, 1, 18) .. "..."
        end
        uV_22 = (uV_22 + 1) % 4
    until (uV_22 * 1 + 3) % 4 == 0
end
uV_22 = uV_38 or mE
n_, uV_12, connection2, connection3, CurrentCamera, connection4, uV_38, mU, mO, connection5, connection6, n6, oa, nR, ns, m4, nM = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
uV_7 = uV_22
uV_9:AddLabel(n2("Server", uV_7, uV_18), true)
uV_9:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
n_ = os.clock()
task.spawn(worker)
local ScriptsGroup = uV_20.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(oc("Included in this hub", uV_18), true)
ScriptsGroup:AddLabel(oc(uV_42, uV_5), true)
local FeaturesGroup = uV_20.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(oc("Auto Farm", uV_5), true)
FeaturesGroup:AddLabel(oc("Auto Shop", uV_35), true)
FeaturesGroup:AddLabel(oc("Misc Utilities", uV_18), true)
local SocialsGroup = uV_20.Info:AddRightGroupbox("Socials", "link")
if (not connection6 or not connection6) and (not connection6 and not uV_38) and (uV_38 and uV_38 or not uV_38 and not ns) or not ((not connection6 or not connection6) and (not connection6 and not uV_38) and (uV_38 and uV_38 or not uV_38 and not ns)) then
    SocialsGroup:AddButton({ Text = "Discord", Func = mH })
    SocialsGroup:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
    uV_12 = uV_20.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
else
    mH:AddButton({ Text = "Discord", Func = uV_20 })
    mH:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
    uV_12.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
end
uV_12:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
uV_12:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
uV_12:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
uV_12:AddButton({ Text = "Copy Discord Invite", Func = mH })
uV_40 = uV_20.Info:AddRightGroupbox("Donations", "heart")
uV_40:AddLabel(oc("All donations are optional but appreciated.", nB), true)
uV_40:AddLabel(oc("If you donate you get a special role, just PING after you donate.", uV_35), true)
uV_40:AddDivider()
uV_40:AddLabel(oc("LTC / Litecoin", uV_3), true)
uV_40:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
uV_40:AddLabel(oc("BTC / Bitcoin", uV_16), true)
uV_40:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
uV_40:AddLabel(oc("ETH / Ethereum", uV_31), true)
uV_40:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
uV_40:AddLabel(oc("USDT", uV_1), true)
uV_40:AddButton({ Text = "Copy USDT Address", Func = fns.onCopyUSDTAddress })
uV_40:AddLabel(oc("Solana", uV_14), true)
uV_40:AddButton({ Text = "Copy Solana Address", Func = fns.onCopySolanaAddress })
uV_40:AddLabel(oc("PayPal", uV_26), true)
uV_40:AddButton({ Text = "Copy PayPal Link", Func = fns.onCopyPayPalLink })
uV_40:AddLabel(oc("Venmo", uV_6), true)
uV_40:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
uV_40:AddDivider()
uV_40:AddLabel(oc("Don't have any of the listed currencies but still wanna donate?", uV_18), true)
uV_40:AddLabel(oc("DM me and we'll work something out.", uV_5), true)
local FaqGroup = uV_20.Info:AddRightGroupbox("FAQ", "circle-help")
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
local FarmGroup = uV_20.Main:AddLeftGroupbox("Farm", "flame")
FarmGroup:AddToggle("AutoWin", { Text = "Auto Win", Default = false })
FarmGroup:AddDropdown("WinPlate", { Text = "Win Plate", Values = uV_29, Default = "Best" })
FarmGroup:AddSlider("WinDelay", { Text = "Win Delay", Default = 0.55, Min = 0.2, Max = 3, Rounding = 2 })
FarmGroup:AddToggle("AutoClick", { Text = "Auto Click", Default = false })
local TrainGroup = uV_20.Main:AddRightGroupbox("Train", "footprints")
TrainGroup:AddToggle("AutoTrain", { Text = "Auto Train", Default = false })
local RebirthGroup = uV_20.Main:AddRightGroupbox("Rebirth", "rotate-ccw")
RebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local PeppersGroup = uV_20.Shop:AddLeftGroupbox("Peppers", "shopping-basket")
PeppersGroup:AddToggle("AutoBuyPeppers", { Text = "Auto Buy Peppers", Default = false })
local CosmeticsGroup = uV_20.Shop:AddRightGroupbox("Cosmetics", "sparkles")
CosmeticsGroup:AddToggle("AutoBuyTrails", { Text = "Auto Buy Trails", Default = false })
CosmeticsGroup:AddToggle("AutoBuyAuras", { Text = "Auto Buy Auras", Default = false })
CosmeticsGroup:AddToggle("AutoEquipBestTrail", { Text = "Auto Equip Best Trail", Default = false })
CosmeticsGroup:AddToggle("AutoEquipBestAura", { Text = "Auto Equip Best Aura", Default = false })
local MovementGroup = uV_20.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = uV_20.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
connection2 = RunService.Stepped:Connect(fns.onStepped)
connection3 = UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera = workspace.CurrentCamera
connection4 = RunService.RenderStepped:Connect(fns.onRenderStepped)
Toggles.Fly:OnChanged(fns.fn177)
Toggles.WalkSpeedEnabled:OnChanged(fns.fn281)
n6 = function(hH)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not hH)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not hH
        end
    end)
    if not hH then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(nH, "GameplayPaused", false)
        else
            nH.GameplayPaused = false
        end
    end)
end
Toggles.AntiGameplayPause:OnChanged(fn783)
task.spawn(fns.antiGameplayPauseLoop)
Toggles.AutoWin:OnChanged(fn937)
Toggles.AutoTrain:OnChanged(fn830)
task.spawn(worker2)
task.spawn(fns.worker3)
task.spawn(fns.worker4)
task.spawn(fns.worker5)
task.spawn(fns.worker6)
uV_38 = uV_20.Settings:AddLeftGroupbox("Menu", "menu")
uV_38:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
mU = tick()
mO = tick()
pcall(function()
    for k, v in getconnections(nH.Idled) do
        local tS = v
        pcall(function()
            tS:Disable()
        end)
    end
end)
oa = fns.fn715
connection5 = UserInputService.InputBegan:Connect(onInputBegan)
connection6 = UserInputService.InputChanged:Connect(onInputChanged)
uV_38:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
uV_38:AddButton("Unload", onUnload)
task.spawn(fns.antiAfkLoop)
Library:OnUnload(fns.fn218)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(uV_20.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/Plus1HeatPerClick")
local uV_2 = SaveManager:BuildConfigSection(uV_20.Settings)
nR = fns.fn84
ns = fns.fn593
m4 = fns.fn391
if (false and not m4 or false and not m4 or (false or nM) and (false or m4)) and ((not m4 or false) and (nM and nM) or false and not m4 and (m4 or not m4)) and not ((false and not m4 or false and not m4 or (false or nM) and (false or m4)) and ((not m4 or false) and (nM and nM) or false and not m4 and (m4 or not m4))) then
    oa = function(jb)
        local uw
        uw = nil
        local ux = type(jb) ~= "table" or type(jb.idx) ~= "string" or type(jb.type) ~= "string" or SaveManager.Ignore[jb.idx]
        if ux then
            return false
        end
        uw = nR(jb.type, jb.idx)
        if not uw then
            return false
        end
        local ux_2 = pcall(function()
            if jb.type == "Input" then
                if type(jb.text) ~= "string" then
                    return
                end
                uw:SetValue(jb.text)
            elseif jb.type == "ColorPicker" then
                uw:SetValueRGB(Color3.fromHex(jb.value), jb.transparency)
            elseif jb.type == "KeyPicker" then
                uw:SetValue({ jb.key, jb.mode, jb.modifiers })
                if jb.mode == "Toggle" and jb.toggled ~= nil then
                    uw.Toggled = jb.toggled
                    uw:Update()
                end
            else
                uw:SetValue(jb.value)
            end
        end)
        return ux_2
    end
else
    nM = function(jb)
        local uw
        uw = nil
        local ux = type(jb) ~= "table" or type(jb.idx) ~= "string" or type(jb.type) ~= "string" or SaveManager.Ignore[jb.idx]
        if ux then
            return false
        end
        uw = nR(jb.type, jb.idx)
        if not uw then
            return false
        end
        local ux_1 = pcall(function()
            if jb.type == "Input" then
                if type(jb.text) ~= "string" then
                    return
                end
                uw:SetValue(jb.text)
            elseif jb.type == "ColorPicker" then
                uw:SetValueRGB(Color3.fromHex(jb.value), jb.transparency)
            elseif jb.type == "KeyPicker" then
                uw:SetValue({ jb.key, jb.mode, jb.modifiers })
                if jb.mode == "Toggle" and jb.toggled ~= nil then
                    uw.Toggled = jb.toggled
                    uw:Update()
                end
            else
                uw:SetValue(jb.value)
            end
        end)
        return ux_1
    end
end
uV_2:AddDivider()
uV_2:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
uV_2:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
uV_2:AddButton("Import Config from Clipboard Text", fns.onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
Library:Notify(uV_42 .. " loaded")
