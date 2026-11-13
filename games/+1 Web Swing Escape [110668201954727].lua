local fns = {}
local wO_13
local ou
local pb
local n8
local HttpService
local nQ
local oA
local Label
local oe
local Toggles
local oG
local nD
local ol
local o4
local n1
local oM
local nJ
local ProductConfig
local pa
local n7
local oS
local oz
local Library
local od
local UserInputService
local nV
local oF
local nC
local oj
local o3
local n0
local oL
local nI
local oq
local o9
local oR
local nO
local oc
local Options
local nU
local oE
local nB
local oi
local o2
local n_
local oK
local nH
local MountConfig
local o8
local n5
local oQ
local nN
local ox
local ob
local oW
local nT
local oD
local nA
local oh
local nZ
local oJ
local nG
local oo
local o7
local n4
local oP
local nM
local ow
local oa
local VirtualUser
local CurrentCamera
local nz
local og
local o0
local connection3
local oI
local World1Teleport
local on
local o6
local n3
local LocalPlayer
local World2Teleport
local ov
local pc
local n9
local oU
local nR
local connection
local ny
local o_
local oH
local nE
local connection2
local SaveManager
local RebirthButtonEvent
local oN
local nK
function fns.fn17(J, K)
    if setclipboard then
        setclipboard(J)
    elseif toclipboard then
        toclipboard(J)
    end
    Library:Notify(K)
end
function fns.fn18(i7, i8)
    local vL = i7 == "Toggle" and Toggles
    local vQ = if vL then 1 else 0
    local vO = 3116 * vQ + 3532 * (1 - vQ)
    local vP = 347 * vQ + 3296 * (1 - vQ)
    if not ((vO * 39 + vP * 291 + vO * vP) % 16777213 == 1303753) then
        vL = Options
    end
    local vL_1 = vL[i8]
    local vK_2 = type(vL_1) == "table" and vL_1.Type == i7
    return vK_2 and vL_1 or nil
end
function fns.fn30(al, am)
    local p2 = Options[al]
    if p2 == nil or p2.Value == nil then
        return am
    end
    return p2.Value
end
function fns.fn35()
    local tK = {}
    for k, v in ProductConfig.Trails do
        local tL = tonumber(v.Wins) or -1
        if tL >= 0 then
            local tL_1 = #tK + 1
            local tN = tostring(k)
            local tO = tonumber(v.SpeedMultiplier) or 0
            tK[tL_1] = { Id = tN, Cost = tL, Multi = tO }
        end
    end
    table.sort(tK, function(fA, fB)
        if fA.Cost == fB.Cost then
            return fA.Multi < fB.Multi
        end
        return fA.Cost < fB.Cost
    end)
    return tK
end
function fns.fn57()
    local qi = tonumber(nD("Rebirths", 0)) or 0
    return qi
end
function fns.fn67()
    local ua = oM()
    local ub = true
    for i, v in ipairs(MountConfig.Mounts) do
        local uc = MountConfig.IsLimitedMount(v.Id)
        local ud = tonumber(v.Cost) or 0
        local ud_4
        local ud_1 = oE(v.Id)
        if ud_1 then
            ub = true
        else
            if uc or ud <= 0 then
                ub = false
            else
                if ub and ua >= ud then
                    local uc_2 = MountConfig.IsW2Mount(v.Id) and ov() ~= 2
                    if uc_2 then
                        if oA() >= ol then
                            o4(2)
                            local uc_3 = ow(v)
                            local ud_3 = uc_3 and uc_3:IsA("BasePart")
                            if ud_4 then
                                oz(pc(uc_3))
                                o2(uc_3)
                                task.wait(0.2)
                                oQ = nil
                            end
                            return
                        end
                        return
                    end
                    local uc_4 = ow(v)
                    ud_4 = uc_4 and uc_4:IsA("BasePart")
                    if ud_4 then
                        oz(pc(uc_4))
                        o2(uc_4)
                        task.wait(0.2)
                        oQ = nil
                    end
                    return
                end
                ub = false
            end
        end
    end
end
function fns.fn93(jf, jg)
    local Type = jg.Type
    if Type == "Toggle" then
        return { idx = jf, type = "Toggle", value = jg.Value == true }
    elseif Type == "Slider" then
        return { idx = jf, type = "Slider", value = tostring(jg.Value) }
    elseif Type == "Dropdown" then
        return { idx = jf, type = "Dropdown", multi = jg.Multi == true, value = jg.Value }
    elseif Type == "Input" then
        local vS = jg.Value or ""
        return { idx = jf, type = "Input", text = tostring(vS) }
    elseif Type == "ColorPicker" then
        return { idx = jf, type = "ColorPicker", value = jg.Value:ToHex(), transparency = jg.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = jf,
            type = "KeyPicker",
            mode = jg.Mode,
            key = jg.Value,
            modifiers = jg.Modifiers,
            toggled = jg.Toggled
        }
    else
        return nil
    end
end
function fns.fn120(Q)
    local DiscordGroup = Q:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = oH })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = oH })
end
function fns.fn122()
    local tv = ny()
    if not tv then
        return
    end
    oz(CFrame.new(tv.Position + Vector3.new(0, 3, 0)))
    local tv_1 = oi()
    if tv_1 and tv_1.Health > 0 then
        tv_1:Move(Vector3.new(0, 0, -1), false)
    end
end
function fns.onCopyBitcoinAddress()
    oU(nM, "Copied Bitcoin address")
end
function fns.worker4()
    while not Library.Unloaded do
        if o_("AutoBuyTrails") then
            pcall(n0)
        end
        local wJ = o_("AutoBuySuits") and not o_("AutoWin")
        if wJ then
            pcall(nV)
        end
        task.wait(1.5)
    end
end
function fns.onRenderStepped(h0)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local u8_1 = oi()
        if u8_1 then
            u8_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local u8_3 = n_()
        local u9 = oi()
        if u8_3 and u9 then
            u9.PlatformStand = true
            local u9_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                u9_1 = u9_1 + CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                u9_1 = u9_1 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                u9_1 = u9_1 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                u9_1 = u9_1 + CurrentCamera.CFrame.RightVector
            end
            local vh = if UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
            if vh == 1 then
                u9_1 = u9_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                u9_1 = u9_1 - Vector3.new(0, 1, 0)
            end
            u8_3.Velocity = Vector3.zero
            if u9_1.Magnitude > 0 then
                u8_3.CFrame = u8_3.CFrame + u9_1.Unit * Options.FlySpeed.Value * h0
            end
        end
    end
end
function fns.onCopyJoinScript_JobID()
    local gY = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, o8)
    oU(gY, "Copied join script to clipboard")
end
function fns.fn161(bs, bt, bu)
    local qT = tonumber(bu.Name)
    if not qT then
        return
    end
    local qU = bu:FindFirstChild("Hitbox")
    local qV = qU and qU:IsA("BasePart")
    if not qV then
        qU = bu:FindFirstChild("Win")
    end
    local qV_1 = qU and qU:IsA("BasePart")
    if not qV_1 then
        return
    end
    local qW = n1[bs] or {}
    n1[bs] = qW
    n1[bs][qT] = qU.Position.X
    local qV_3 = n5[bs] or {}
    n5[bs] = qV_3
    n5[bs].y = qU.Position.Y
    if bt then
        n5[bs].doubleZ = qU.Position.Z
    else
        n5[bs].normalZ = qU.Position.Z
    end
end
function fns.worker3()
    while not Library.Unloaded do
        if o_("AutoRebirth") then
            pcall(oR)
        end
        task.wait(2)
    end
end
function fns.fn206()
    local uJ_1
    local uI_1
    if identifyexecutor then
        uJ_1, uI_1 = identifyexecutor()
        local uK = uJ_1 ~= ""
        local uL = type(uJ_1) == "string" and uK
        if uL then
            local uK_1 = type(uI_1) == "string" and uI_1 ~= "" and uJ_1 .. " " .. uI_1
            n7 = uK_1 or uJ_1
        end
    end
end
function fns.onCopyVenmoLink()
    oU(o6, "Copied Venmo link")
end
function fns.fn210()
    local qz = nI("OwnedTrails")
    local qA = {}
    if not qz then
        return qA
    end
    for k, v in on(qz.Value) do
        qA[tostring(v)] = true
    end
    return qA
end
function fns.fn224(fV)
    local t6 = tonumber(fV.Id)
    if not t6 then
        return nil
    elseif MountConfig.IsW2Mount(fV.Id) then
        local SpeedPads_W2 = workspace:FindFirstChild("SpeedPads_W2")
        local t8_1 = SpeedPads_W2 and SpeedPads_W2:FindFirstChild("P" .. tostring(t6 - 100))
        return t8_1
    else
        local SpeedPads = workspace:FindFirstChild("SpeedPads")
        local t8_2 = SpeedPads and SpeedPads:FindFirstChild("P" .. tostring(t6))
        return t8_2
    end
end
function fns.fn227(aB, aC)
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local qc = leaderstats and leaderstats:FindFirstChild(aB)
    local qb_1 = qc
    if qc then
        qc = qb_1:IsA("ValueBase")
    end
    if qc then
        return qb_1.Value
    end
    return aC
end
function fns.fn229(bl)
    if bl == 2 then
        return workspace:FindFirstChild("StageWinPaths_W2")
    end
    return workspace:FindFirstChild("StageWinPaths")
end
function fns.fn232()
    if not Toggles.WalkSpeedEnabled.Value then
        local vk = oi()
        if vk then
            vk.WalkSpeed = 16
        end
    end
end
function fns.fn240()
    local s8_1
    local s7_1
    local s6 = oA()
    s8_1, s7_1 = nil, -1
    local s9 = { workspace:FindFirstChild("_Treadmills"), workspace:FindFirstChild("_Treadmills_W2") }
    for k, v in s9 do
        local s9_1 = v and v:FindFirstChild("Treadmills")
        if s9_1 then
            for i, child in s9_1:GetChildren() do
                local s9_2 = nG(child)
                if s9_2 and s9_2 <= s6 and s9_2 >= s7_1 then
                    local tb
                    for i, child in child:GetChildren() do
                        local ta_2 = child:IsA("BasePart") and string.find(child.Name, "RunArea", 1, true)
                        if ta_2 then
                            tb = child
                            break
                        end
                    end
                    if tb then
                        s8_1, s7_1 = tb, s9_2
                    end
                end
            end
        end
    end
    return s8_1
end
function fns.fn245()
    local tB = tonumber(ob.BaseRebirthLevel) or 7
    local tB_1 = (tonumber(ob.RebirthLevelIncrement))
    local tH = if tB_1 then 1 else 0
    local tF = 2614 * tH + 3657 * (1 - tH)
    local tG = 4045 * tH + 882 * (1 - tH)
    if not ((tF * 2663 + tG * 135 + tF * tG) % 16777213 == 1303574) then
        tB_1 = 6
    end
    local tD = tB_1
    return tB + oA() * tD
end
function fns.fn253(cO)
    local r0 = 0
    local r1 = n1[cO]
    if r1 then
        for k in r1 do
            if k > r0 then
                r0 = k
            end
        end
    end
    for k, v in { false, true } do
        local r1_1 = nK(cO, v)
        if r1_1 then
            for i, child in r1_1:GetChildren() do
                local r1_2 = tonumber(child.Name)
                if r1_2 and r1_2 > r0 then
                    r0 = r1_2
                end
            end
        end
    end
    return math.clamp(r0, 1, oo)
end
function fns.fn256()
    local qk = tonumber(LocalPlayer:GetAttribute("World")) or 1
    return qk
end
function fns.fn264()
    if not Toggles.Fly.Value then
        local vi = oi()
        if vi then
            vi.PlatformStand = false
        end
    end
end
function fns.fn266(ct, cu, cv)
    local rR = nA(ct, cu)
    if not rR then
        return nil
    end
    local rS = n5[ct] or n5[1]
    local rT = cv
    if rT then
        rT = rS.doubleZ or 739
    end
    local rS_2 = rT
    if not rS_2 then
        rS_2 = rS.normalZ or 656
    end
    local rT_2 = rS_2
    local new = Vector3.new
    local rV = rS.y or 252
    return new(rR, rV, rT_2)
end
function fns.onRscripts()
    oU(oF, "Copied Rscripts profile to clipboard")
end
function fns.onHeartbeat()
    if not oQ then
        return
    end
    local sk = n_()
    if not sk then
        return
    end
    sk.AssemblyLinearVelocity = Vector3.zero
    sk.AssemblyAngularVelocity = Vector3.zero
    sk.CFrame = oQ
end
function fns.fn339(d3, d4, d5, d6, d7)
    local sO = nJ(d6)
    local sP = os.clock()
    local sR = sP + (d7 or 3)
    oz(sO)
    oc(d6)
    while true do
        if not (os.clock() < sR) then
            oz(CFrame.new(d6 + Vector3.new(0, 4, 0)))
            oc(d6)
            task.wait(0.2)
            return o0(d3, d4, d5)
        end
        local sP_1 = Library.Unloaded or not o_("AutoWin")
        if sP_1 then
            return nil
        end
        sP = o0(d3, d4, d5)
        if sP then
            break
        end
        oz(sO)
        if os.clock() - oN >= 0.25 then
            oc(d6)
        end
        task.wait(0.05)
    end
    return sP
end
function fns.worker5()
    while not Library.Unloaded do
        if o_("AutoClaimQuests") then
            pcall(nO)
        end
        if o_("AutoClaimPlaytime") then
            pcall(oP)
        end
        task.wait(3)
    end
end
function fns.fn374(dP)
    local sJ_2
    local sI_2
    if ov() == dP then
        return true
    elseif os.clock() - o7 < 4 then
        return ov() == dP
    else
        o7 = os.clock()
        if dP == 2 then
            local sN = if oA() < ol then 1 else 0
            if sN == 1 then
                return false
            end
            pcall(function()
                World2Teleport:FireServer()
            end)
            local sI_1 = os.clock() + 6
            while true do
                if not (os.clock() < sI_2) then
                    return ov() == dP
                end
                local sJ_1 = Library.Unloaded or not o_("AutoWin")
                if sJ_2 then
                    return false
                end
                if ov() == dP then
                    break
                end
                task.wait(0.2)
            end
            ox(dP)
            return true
        end
        pcall(function()
            World1Teleport:FireServer()
        end)
        sI_2 = os.clock() + 6
        while true do
            if not (os.clock() < sI_2) then
                return ov() == dP
            end
            sJ_2 = Library.Unloaded or not o_("AutoWin")
            if sJ_2 then
                return false
            end
            if ov() == dP then
                break
            end
            task.wait(0.2)
        end
        ox(dP)
        return true
    end
end
function fns.fn424()
    return { World = ov(), Stage = math.random(1, oo), Double = false }
end
function fns.onUnload()
    Library:Unload()
end
function fns.onImportConfigFromClipboardTex()
    local wt_1
    local wr = Options.SaveManager_ImportSource.Value or ""
    local wr_1
    local ws = tostring(wr):match("^%s*(.-)%s*$")
    if ws == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    wr_1, wt_1 = pcall(HttpService.JSONDecode, HttpService, ws)
    local ws_1 = not wr_1 or type(wt_1) ~= "table"
    local wx = if ws_1 then 1 else 0
    local wv = 298 * wx + 920 * (1 - wx)
    local ww = 663 * wx + 3798 * (1 - wx)
    if not ((wv * 316 + ww * 1546 + wv * ww) % 16777213 == 1316740) then
        ws_1 = type(wt_1.objects) ~= "table"
    end
    if ws_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local wr_2 = 0
    for i, v in ipairs(wt_1.objects) do
        if ou(v) then
            wr_2 += 1
        end
    end
    if wr_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local wt_2 = wr_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(wr_2, wt_2), 6)
end
function fns.fn445(dj)
    return CFrame.new(dj.X, dj.Y + od, dj.Z)
end
function fns.fn492(c8)
    local sp = n_()
    if not sp then
        return
    end
    oQ = c8
    sp.AssemblyLinearVelocity = Vector3.zero
    sp.AssemblyAngularVelocity = Vector3.zero
    sp.CFrame = c8
end
function fns.antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local vG = tick() - oW
            local vH = tick() - oS
            if vG >= 300 and vH >= 60 then
                pcall(oD)
            else
                if vG < 300 and vH >= 300 then
                    pcall(oD)
                end
            end
        end
    end
end
function fns.fn540(ag)
    local p_ = Toggles[ag]
    return p_ ~= nil and p_.Value == true
end
function fns.fn541()
    local sT = oA() >= ol and 2
    local sT_1 = sT or 1
    if ov() == 2 then
        sT_1 = 2
    end
    ox(sT_1)
    local sU_1 = oj(sT_1)
    local sV = math.min(oo, sU_1 + 1)
    local sW = sU_1 < oo and not o0(sT_1, sV, false)
    if sW then
        return { World = sT_1, Stage = sV, Double = false }
    end
    return { World = sT_1, Stage = sU_1, Double = false }
end
function fns.fn546()
    oQ = nil
    connection:Disconnect()
    connection2:Disconnect()
    connection3:Disconnect()
    oe(false)
    print("Unloaded!")
end
function fns.fn551(dm)
    return CFrame.new(dm.Position.X, dm.Position.Y + dm.Size.Y / 2 + 3, dm.Position.Z)
end
function fns.onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local u3_1 = oi()
        if u3_1 then
            u3_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
function fns.fn556()
    local SpawnLocation = workspace:FindFirstChild("SpawnLocation")
    local sE = SpawnLocation and SpawnLocation:IsA("BasePart")
    if sE then
        return CFrame.new(SpawnLocation.Position + Vector3.new(0, 4, 0))
    end
    return nil
end
function fns.antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            oe(true)
        end
    end
end
function fns.onCopySolanaAddress()
    oU(nz, "Copied Solana address")
end
function fns.fn575()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    oS = tick()
end
function fns.fn590()
    oe(Toggles.AntiGameplayPause.Value)
end
function fns.fn616()
    local v0 = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local v1 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if v1 then
                local v1_1 = nZ(k, v)
                if v1_1 then
                    v0[#v0 + 1] = v1_1
                end
            end
        end
    end
    table.sort(v0, function(js, jt)
        if js.type ~= jt.type then
            return js.type < jt.type
        end
        return js.idx < jt.idx
    end)
    return { objects = v0 }
end
local function fn625()
    oU(oJ, "Copied Discord invite to clipboard")
end
local function fn666()
    local sY = oK("FarmMode", "Best")
    local sZ = sY == "Random" and nQ()
    local sY_1 = sZ or oG()
    sY_1.Double = false
    if not o4(sY_1.World) then
        sY_1.World = ov()
    end
    local sY_2 = oh(sY_1.World, sY_1.Stage, false)
    local s_ = o0(sY_1.World, sY_1.Stage, false)
    if not sY_2 then
        nU()
        return
    end
    if not s_ then
        s_ = oa(sY_1.World, sY_1.Stage, false, sY_2, 3)
    end
    if not s_ then
        local s0 = oj(sY_1.World)
        if s0 ~= sY_1.Stage then
            sY_1.Stage = s0
            s_ = o0(sY_1.World, s0, false)
            if not s_ then
                local sY_3 = oh(sY_1.World, s0, false)
                if sY_3 then
                    s_ = oa(sY_1.World, s0, false, sY_3, 2)
                end
            end
        end
    end
    if not s_ then
        nU()
        return
    end
    oz(nJ(s_.Position))
    oc(s_.Position)
    task.wait(0.04)
    oz(pc(s_))
    o2(s_)
    task.wait(0.08)
    oQ = nil
end
local function worker()
    local uR_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local uQ = math.floor(os.clock() - oL)
        if uQ < 60 then
            uR_1 = uQ .. "s"
        elseif uQ < 3600 then
            uR_1 = string.format("%dm %ds", uQ // 60, uQ % 60)
        else
            uR_1 = string.format("%dh %dm", uQ // 3600, uQ % 3600 // 60)
        end
        Label:SetText(n3("Session time", uR_1, o9))
    end
end
local function fn709()
    local qe = tonumber(nD("Wins", 0)) or 0
    return qe
end
local function fn710(X, Y, Z)
    return string.format("<b>%s</b> %s %s", X, og("-", "#5a6070"), og(Y, Z))
end
local function fn717()
    local qg = tonumber(nD("Level", 1)) or 1
    return qg
end
local function fn720()
    local p8 = oq()
    local p9 = p8 and p8:FindFirstChild("HumanoidRootPart")
    return p9
end
local function onExportConfigToClipboard()
    local wl_1
    local wk_1
    wk_1, wl_1 = pcall(HttpService.JSONEncode, HttpService, nE())
    if not wk_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local wk_2 = setclipboard or toclipboard
    local wk_3 = type(wk_2) ~= "function" or not pcall(wk_2, wl_1)
    if wk_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function fn732()
    local p5 = oq()
    local p6 = p5 and p5:FindFirstChildOfClass("Humanoid")
    return p6
end
local function onCopyEthereumAddress()
    oU(nH, "Copied Ethereum address")
end
local function onCopyPayPalLink()
    oU(pa, "Copied PayPal link")
end
local function fn765()
    if oI() < pb() then
        return
    end
    pcall(function()
        RebirthButtonEvent:FireServer()
    end)
end
local function onCopyLitecoinAddress()
    oU(nR, "Copied Litecoin address")
end
local function fn797()
    local sG = n9()
    if not sG then
        oQ = nil
        return
    end
    oz(sG)
    oc(sG.Position)
    task.wait(0.25)
    oQ = nil
end
local function fn803(bC)
    for k, v in { false, true } do
        local q0 = nK(bC, v)
        if q0 then
            for i, child in q0:GetChildren() do
                o3(bC, v, child)
            end
        end
    end
end
local function fn809(eT)
    if string.find(eT.Name, "Starter", 1, true) then
        return 0
    end
    return tonumber(string.match(eT.Name, "Rebirth(%d+)"))
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local uT_1 = oq()
        if uT_1 then
            for i, descendant in uT_1:GetDescendants() do
                local uT_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if uT_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn822(cD, cE, cF)
    local rX = nK(cD, cF)
    local rY = rX and rX:FindFirstChild(tostring(cE))
    if not rY then
        return nil
    end
    local Hitbox = rY:FindFirstChild("Hitbox")
    local rZ = Hitbox and Hitbox:IsA("BasePart")
    if rZ then
        o3(cD, cF, rY)
        return Hitbox
    end
    local Win = rY:FindFirstChild("Win")
    local rZ_1 = Win and Win:IsA("BasePart")
    if rZ_1 then
        o3(cD, cF, rY)
        return Win
    end
    return nil
end
local function fn833(ba)
    local OwnedMounts = LocalPlayer:FindFirstChild("OwnedMounts")
    local qJ = OwnedMounts ~= nil and OwnedMounts:FindFirstChild(tostring(ba)) ~= nil
    return qJ
end
local function onCopyUSDTAddress()
    oU(nC, "Copied USDT address")
end
local function onInputChanged(iM)
    local UserInputType = iM.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        oW = tick()
    end
end
local function fn908(bn, bo)
    local qP = nT(bn)
    if not qP then
        return nil
    end
    local qR = bo and "Double" or "Normal"
    return qP:FindFirstChild(qR)
end
local function onInputBegan()
    oW = tick()
end
local function worker2()
    while not Library.Unloaded do
        if o_("AutoWin") then
            pcall(nB)
            task.wait(n8)
        elseif o_("AutoTrain") then
            pcall(n4)
            task.wait(0.05)
        else
            if oQ then
                oQ = nil
            end
            task.wait(0.2)
        end
    end
end
local function fn926(cc, cd)
    local rv_1
    local rt_1
    local rs_1
    local rr = n1[cc]
    if not rr then
        return nil
    elseif rr[cd] then
        return rr[cd]
    else
        rs_1, rt_1 = nil, nil
        local ru = cd - 1
        local ru_1
        local rF = ru
        local rE = -1
        while false and rF <= 1 or true and rF >= 1 do
            local rG = rF
            if rr[rG] then
                rs_1, rt_1 = rG, rr[rG]
                break
            end
            rF += rE
        end
        rv_1, ru_1 = nil, nil
        local rK = cd + 1
        local rI = oo
        while rK <= rI do
            local rL = rK
            if rr[rL] then
                rv_1, ru_1 = rL, rr[rL]
                break
            end
            rK += 1
        end
        if rt_1 and ru_1 then
            return rt_1 + (ru_1 - rt_1) * ((cd - rs_1) / (rv_1 - rs_1))
        elseif rt_1 then
            local rw_3 = 280
            local rK_1 = rs_1 - 1
            local rJ = -1
            while false and rK_1 <= 1 or true and rK_1 >= 1 do
                local rN = rK_1
                if rr[rN] then
                    rw_3 = (rt_1 - rr[rN]) / (rs_1 - rN)
                    break
                end
                rK_1 += rJ
            end
            return rt_1 + rw_3 * (cd - rs_1)
        elseif ru_1 then
            local rs_2 = 280
            local rK_2 = rv_1 + 1
            local rI_1 = oo
            while rK_2 <= rI_1 do
                local rP = rK_2
                if rr[rP] then
                    rs_2 = (rr[rP] - ru_1) / (rP - rv_1)
                    break
                end
                rK_2 += 1
            end
            return ru_1 - rs_2 * (rv_1 - cd)
        else
            return nil
        end
    end
end
local function fn956(U, V)
    return string.format('<font color="%s">%s</font>', V, U)
end
local function fn964(aZ)
    local HiddenStats = LocalPlayer:FindFirstChild("HiddenStats")
    local qu = HiddenStats and HiddenStats:FindFirstChild(aZ)
    return qu
end
local function fn982()
    return LocalPlayer.Character
end
local function onChildAdded(b4)
    if b4.Name == "StageWinPaths" then
        task.defer(function()
            ox(1)
            nN(1)
        end)
    elseif b4.Name == "StageWinPaths_W2" then
        task.defer(function()
            ox(2)
            nN(2)
        end)
    end
end
Library = nil
Label = nil
ny = nil
nz = nil
nA = nil
nB = nil
nC = nil
nD = nil
nE = nil
World1Teleport = nil
nG = nil
nH = nil
nI = nil
nJ = nil
nK = nil
World2Teleport = nil
nM = nil
nN = nil
nO = nil
nQ = nil
nR = nil
CurrentCamera = nil
nT = nil
nU = nil
nV = nil
connection3 = nil
nZ = nil
n_ = nil
n0 = nil
n1 = nil
RebirthButtonEvent = nil
n3 = nil
n4 = nil
n5 = nil
n7 = nil
n8 = nil
n9 = nil
oa = nil
ob = nil
oc = nil
od = nil
oe = nil
og = nil
oh = nil
oi = nil
local PlaytimeClaimRequest, nW, QuestClaimRequest, TrailEquipRequest, of
oj = nil
ol = nil
connection2 = nil
on = nil
oo = nil
MountConfig = nil
oq = nil
ProductConfig = nil
ou = nil
ov = nil
ow = nil
ox = nil
oz = nil
oA = nil
connection = nil
oD = nil
oE = nil
oF = nil
oG = nil
oH = nil
oI = nil
oJ = nil
oK = nil
oL = nil
oM = nil
oN = nil
LocalPlayer = nil
oP = nil
oQ = nil
oR = nil
oS = nil
HttpService = nil
oU = nil
VirtualUser = nil
oW = nil
Options = nil
UserInputService = nil
Toggles = nil
o_ = nil
o0 = nil
o2 = nil
o3 = nil
o4 = nil
SaveManager = nil
o6 = nil
o7 = nil
o8 = nil
local oy, oC, o1
o9 = nil
pa = nil
pb = nil
pc = nil
wO_13, UserInputService, VirtualUser, HttpService, LocalPlayer, oJ, oF, ProductConfig, MountConfig, of, ob, TrailEquipRequest, RebirthButtonEvent, QuestClaimRequest, PlaytimeClaimRequest, World2Teleport, World1Teleport, Library, SaveManager, Toggles, Options, o9, oo, ol, od, n8, n5, n1, oQ, oN, connection, o7, nW, oU, oH, og, n3, o_, oK, oq, oi, n_, nD, oM, oI, oA, ov, on, nI, o1, oE, nT, nK, o3, ox, nN, nA, oh, o0, oj, oz, oc, nJ, pc, o2, n9, nU, o4, oa, oG, nQ, nB, nG, ny, n4, pb, oR, oC, n0, ow, nV, nO, oP = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if (not pc or oa) and (oa or oa) and (pc and oa or not oa and oa) and (oa and not pc or (not pc or not oa) or (oa or pc or not oa and pc)) and not ((not pc or oa) and (oa or oa) and (pc and oa or not oa and oa) and (oa and not pc or (not pc or not oa) or (oa or pc or not oa and pc))) then
    ox = game:GetService("Players")
else
    wO_13 = game:GetService("Players")
end
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
LocalPlayer = wO_13.LocalPlayer
local wO_10 = "+1 Web Swing Escape"
oJ = "https://discord.gg/ehKVq7pf7v"
oF = "https://rscripts.net/@Ouroboros"
local wO_7 = ReplicatedStorage:WaitForChild("Remotes")
local wO_28 = ReplicatedStorage:WaitForChild("Shared")
local wO_5 = wO_28:WaitForChild("Config")
ProductConfig = require(wO_5:WaitForChild("ProductConfig"))
MountConfig = require(wO_5:WaitForChild("MountConfig"))
local wO_26 = require(wO_5:WaitForChild("QuestConfig"))
if oi or not oI or (not oK or not oK) or (oi or oK) and (not oK and oK) or not (oi or not oI or (not oK or not oK) or (oi or oK) and (not oK and oK)) then
    of = require(wO_5:WaitForChild("PlaytimeRewards"))
    ob = require(wO_5:WaitForChild("GameConfig"))
    TrailEquipRequest = wO_7:WaitForChild("TrailEquipRequest")
    RebirthButtonEvent = wO_7:WaitForChild("RebirthButtonEvent")
else
    require(TrailEquipRequest:WaitForChild("PlaytimeRewards"))
    of = require(TrailEquipRequest:WaitForChild("GameConfig"))
    wO_7 = RebirthButtonEvent:WaitForChild("TrailEquipRequest")
    ob = RebirthButtonEvent:WaitForChild("RebirthButtonEvent")
end
QuestClaimRequest = wO_7:WaitForChild("QuestClaimRequest")
PlaytimeClaimRequest = wO_7:WaitForChild("PlaytimeClaimRequest")
World2Teleport = wO_7:WaitForChild("World2Teleport")
World1Teleport = wO_7:WaitForChild("World1Teleport")
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
oU = fns.fn17
oH = fn625
local wO_20 = fns.fn120
og = fn956
n3 = fn710
local wO_32 = "#7fd47f"
local wO_9 = "#6ec1ff"
o9 = "#e8a34d"
local wO_23 = "#8b93a3"
o_ = fns.fn540
oK = fns.fn30
oq = fn982
oi = fn732
n_ = fn720
nD = fns.fn227
oM = fn709
oI = fn717
oA = fns.fn57
ov = fns.fn256
on = function(aR)
    local qn_1
    local qm_1
    qm_1, qn_1 = pcall(function()
        return HttpService:JSONDecode(tostring(aR))
    end)
    local qo = qm_1 and type(qn_1) == "table"
    if qo then
        return qn_1
    end
    return {}
end
nI = fn964
o1 = fns.fn210
oE = fn833
oo = 13
ol = 5
od = 400
n8 = 1.2
n5 = { [1] = { y = 252, normalZ = 656, doubleZ = 739 }, [2] = { y = 252, normalZ = 656, doubleZ = 739 } }
n1 = { [1] = { [1] = -519, [2] = -356, [3] = -185, [4] = 21, [5] = 307 }, [2] = {} }
nT = fns.fn229
nK = fn908
o3 = fns.fn161
ox = fn803
ox(1)
ox(2)
nN = function(bL)
    local re = nT(bL)
    if not re then
        return
    end
    for k, v in { "Normal", "Double" } do
        local rm = v
        local rf = re:FindFirstChild(rm)
        if rf then
            rf.ChildAdded:Connect(function(bR)
                task.defer(function()
                    o3(bL, rm == "Double", bR)
                end)
            end)
        end
    end
    re.ChildAdded:Connect(function()
        task.defer(function()
            ox(bL)
        end)
    end)
end
nN(1)
nN(2)
workspace.ChildAdded:Connect(onChildAdded)
nA = fn926
oh = fns.fn266
o0 = fn822
oj = fns.fn253
oQ = nil
oN = 0
connection = RunService.Heartbeat:Connect(fns.onHeartbeat)
oz = fns.fn492
oc = function(dd)
    if typeof(dd) ~= "Vector3" then
        return
    end
    oN = os.clock()
    pcall(function()
        LocalPlayer:RequestStreamAroundAsync(dd)
    end)
end
nJ = fns.fn445
pc = fns.fn551
o2 = function(dp)
    local ss = n_()
    if not ss or not dp then
        return
    end
    if firetouchinterest then
        local st_1 = oq() and oq():FindFirstChild("LowerTorso")
        local su_1 = oq() and oq():FindFirstChild("UpperTorso")
        local sv = { ss, st_1, su_1 }
        for k, v in sv do
            local sC = v
            local ss_1 = sC and sC:IsA("BasePart")
            if ss_1 then
                pcall(function()
                    firetouchinterest(sC, dp, 0)
                    firetouchinterest(sC, dp, 1)
                end)
            end
        end
        return
    end
    oz(pc(dp))
end
n9 = fns.fn556
nU = fn797
o7 = 0
o4 = fns.fn374
oa = fns.fn339
oG = fns.fn541
nQ = fns.fn424
nB = fn666
nG = fn809
ny = fns.fn240
n4 = fns.fn122
pb = fns.fn245
oR = fn765
oC = fns.fn35
n0 = function()
    local Id
    local tZ_1
    local tX = oM()
    local tY = o1()
    Id, tZ_1 = nil, -1
    for k, v in oC() do
        local t5 = v
        if tY[t5.Id] then
            if t5.Multi > tZ_1 then
                Id, tZ_1 = t5.Id, t5.Multi
            end
        elseif tX >= t5.Cost then
            pcall(function()
                TrailEquipRequest:FireServer(t5.Id)
            end)
            return
        end
    end
    local tX_1 = nI("TrailId") and nI("TrailId").Value
    local tY_1 = tX_1 or "none"
    local tX_2 = tostring(tY_1)
    if Id and tX_2 ~= Id then
        pcall(function()
            TrailEquipRequest:FireServer(Id)
        end)
    end
end
ow = fns.fn224
nV = fns.fn67
nW = { wO_26.Daily, wO_26.Weekly, wO_26.Event, wO_26.Race }
nO = function()
    for k, v in nW do
        if type(v) == "table" then
            for i, v in ipairs(v) do
                local uz = v
                local um = type(uz) == "table" and uz.Id
                if um then
                    pcall(function()
                        QuestClaimRequest:FireServer(uz.Id)
                    end)
                end
            end
        end
    end
end
oP = function()
    for i, v in ipairs(of.Tiers) do
        local uH = v
        local uA = type(uH) == "table" and uH.Id
        if uA then
            pcall(function()
                PlaytimeClaimRequest:FireServer(uH.Id)
            end)
        end
    end
end
local wO_15 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = oJ, Copyable = true }, "|", wO_10 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
local wO_22 = {
    Info = wO_15:AddTab("Info", "info"),
    Main = wO_15:AddTab("Main", "zap"),
    Player = wO_15:AddTab("Player", "person-standing"),
    Settings = wO_15:AddTab("Settings", "settings")
}
for k, v in { wO_22.Main, wO_22.Player, wO_22.Settings } do
    wO_20(v)
end
n7, Label, o8 = nil, nil, nil
n7 = "Unknown"
pcall(fns.fn206)
wO_13 = wO_22.Info:AddLeftGroupbox("Account", "circle-user")
wO_13:AddLabel(n3("User", LocalPlayer.Name, wO_32), true)
wO_13:AddLabel(n3("Status", "Keyless", wO_32), true)
wO_13:AddLabel(n3("Executor", n7, wO_32), true)
wO_15 = wO_22.Info:AddLeftGroupbox("Game Info", "gamepad-2")
wO_15:AddLabel(og(wO_10 .. " [" .. tostring(game.PlaceId) .. "]", wO_9), true)
wO_15:AddLabel(n3("Place ID", tostring(game.PlaceId), wO_9), true)
Label = wO_15:AddLabel(n3("Session time", "0s", o9), true)
o8 = tostring(game.JobId)
wO_26 = #o8 > 18
if wO_26 then
    wO_13 = 5
    repeat
        if wO_13 * 36625589 + 8 + 3 <= wO_13 * 36625589 + 8 + 3 + 4 then
            wO_26 = string.sub(o8, 1, 18) .. "..."
        else
            o8 = string.sub(wO_26, 1, 18) .. "..."
        end
        wO_13 = (wO_13 + 0) % 8
    until (wO_13 * 3 + 7) % 8 == 6
end
wO_13 = wO_26
local pS = if wO_13 then 1 else 0
local pQ = 3820 * pS + 3261 * (1 - pS)
local pR = 2438 * pS + 2243 * (1 - pS)
if not ((pQ * 4092 + pR * 987 + pQ * pR) % 16777213 == 10573693) then
    wO_13 = o8
end
oL, nR, nM, nH, nC, nz, pa, o6, CurrentCamera, oW, oS, connection2, connection3, oe, oD, oy, nZ, nE, ou = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local wO_19 = wO_13
wO_15:AddLabel(n3("Server", wO_19, wO_23), true)
wO_15:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
oL = os.clock()
task.spawn(worker)
local ScriptsGroup = wO_22.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(og("Included in this hub", wO_23), true)
ScriptsGroup:AddLabel(og(wO_10, wO_9), true)
wO_28 = wO_22.Info:AddRightGroupbox("Features", "list")
wO_28:AddLabel(og("Auto Farm", wO_9), true)
wO_28:AddLabel(og("Auto Train", wO_9), true)
wO_28:AddLabel(og("Auto Buy", o9), true)
wO_28:AddLabel(og("Auto Claim", wO_23), true)
wO_5 = wO_22.Info:AddRightGroupbox("Socials", "link")
wO_5:AddButton({ Text = "Discord", Func = oH })
wO_5:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
wO_26 = wO_22.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
wO_26:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
wO_26:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
wO_26:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
wO_26:AddButton({ Text = "Copy Discord Invite", Func = oH })
nR = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
nM = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
nH = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
nC = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
nz = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
pa = "https://paypal.me/TheTruckerGOD"
o6 = "https://venmo.com/u/miserablemusic"
local wO_8 = "#345d9d"
local wO_16 = "#f7931a"
local wO_4 = "#627eea"
local wO_25 = "#26a17b"
local wO_12 = "#14f195"
local wO_24 = "#0070ba"
local wO_34 = "#008cff"
wO_20 = wO_22.Info:AddRightGroupbox("Donations", "heart")
wO_20:AddLabel(og("All donations are optional but appreciated.", o9), true)
wO_20:AddLabel(og("If you donate you get a special role, just PING after you donate.", wO_32), true)
wO_20:AddDivider()
wO_20:AddLabel(og("LTC / Litecoin", wO_8), true)
wO_20:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
wO_20:AddLabel(og("BTC / Bitcoin", wO_16), true)
wO_20:AddButton({ Text = "Copy Bitcoin Address", Func = fns.onCopyBitcoinAddress })
wO_20:AddLabel(og("ETH / Ethereum", wO_4), true)
wO_20:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
wO_20:AddLabel(og("USDT", wO_25), true)
wO_20:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
wO_20:AddLabel(og("Solana", wO_12), true)
wO_20:AddButton({ Text = "Copy Solana Address", Func = fns.onCopySolanaAddress })
wO_20:AddLabel(og("PayPal", wO_24), true)
wO_20:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
wO_20:AddLabel(og("Venmo", wO_34), true)
wO_20:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
wO_20:AddDivider()
wO_20:AddLabel(og("Don't have any of the listed currencies but still wanna donate?", wO_23), true)
wO_20:AddLabel(og("DM me and we'll work something out.", wO_9), true)
local FaqGroup = wO_22.Info:AddRightGroupbox("FAQ", "circle-help")
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
local AutoFarmWinGroup = wO_22.Main:AddLeftGroupbox("Auto Farm Win", "trophy")
AutoFarmWinGroup:AddToggle("AutoWin", { Text = "Auto Farm Win", Default = false })
AutoFarmWinGroup:AddDropdown("FarmMode", { Text = "Farm Mode", Values = { "Best", "Random" }, Default = "Best" })
local AutoTrainGroup = wO_22.Main:AddLeftGroupbox("Auto Train", "footprints")
AutoTrainGroup:AddToggle("AutoTrain", { Text = "Auto Train", Default = false })
local AutoRebirthGroup = wO_22.Main:AddRightGroupbox("Auto Rebirth", "rotate-ccw")
AutoRebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local AutoBuyGroup = wO_22.Main:AddRightGroupbox("Auto Buy", "shopping-bag")
AutoBuyGroup:AddToggle("AutoBuyTrails", { Text = "Auto Buy Trails", Default = false })
AutoBuyGroup:AddToggle("AutoBuySuits", { Text = "Auto Buy Suits", Default = false })
local AutoClaimGroup = wO_22.Main:AddRightGroupbox("Auto Claim", "gift")
AutoClaimGroup:AddToggle("AutoClaimQuests", { Text = "Auto Claim Quests", Default = false })
AutoClaimGroup:AddToggle("AutoClaimPlaytime", { Text = "Auto Claim Playtime", Default = false })
local MovementGroup = wO_22.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = wO_22.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(fns.onJumpRequest)
CurrentCamera = workspace.CurrentCamera
RunService.RenderStepped:Connect(fns.onRenderStepped)
Toggles.Fly:OnChanged(fns.fn264)
Toggles.WalkSpeedEnabled:OnChanged(fns.fn232)
oe = function(io)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not io)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not io
        end
    end)
    if not io then
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
Toggles.AntiGameplayPause:OnChanged(fns.fn590)
task.spawn(fns.antiGameplayPauseLoop)
local MenuGroup = wO_22.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
oW = tick()
oS = tick()
pcall(function()
    for k, v in getconnections(LocalPlayer.Idled) do
        local vx = v
        pcall(function()
            vx:Disable()
        end)
    end
end)
oD = fns.fn575
connection2 = UserInputService.InputBegan:Connect(onInputBegan)
connection3 = UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", fns.onUnload)
task.spawn(fns.antiAfkLoop)
Library:OnUnload(fns.fn546)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(wO_22.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/WebSwingEscape")
wO_7 = SaveManager:BuildConfigSection(wO_22.Settings)
oy = fns.fn18
nZ = fns.fn93
nE = fns.fn616
ou = function(jv)
    local wh
    wh = nil
    local wi = type(jv) ~= "table" or type(jv.idx) ~= "string" or type(jv.type) ~= "string" or SaveManager.Ignore[jv.idx]
    if wi then
        return false
    end
    wh = oy(jv.type, jv.idx)
    if not wh then
        return false
    end
    local wi_1 = pcall(function()
        if jv.type == "Input" then
            if type(jv.text) ~= "string" then
                return
            end
            wh:SetValue(jv.text)
        elseif jv.type == "ColorPicker" then
            wh:SetValueRGB(Color3.fromHex(jv.value), jv.transparency)
        elseif jv.type == "KeyPicker" then
            wh:SetValue({ jv.key, jv.mode, jv.modifiers })
            if jv.mode == "Toggle" and jv.toggled ~= nil then
                wh.Toggled = jv.toggled
                wh:Update()
            end
        else
            wh:SetValue(jv.value)
        end
    end)
    return wi_1
end
wO_7:AddDivider()
wO_7:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
wO_7:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
wO_7:AddButton("Import Config from Clipboard Text", fns.onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
task.spawn(worker2)
task.spawn(fns.worker3)
task.spawn(fns.worker4)
task.spawn(fns.worker5)
