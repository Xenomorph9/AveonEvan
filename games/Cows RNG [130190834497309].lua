local fns = {}
local uL_3, ThemeManager, uL_6, uL_7, uL_8, uL_19, uL_20, uL_23, uL_25, uL_26, uL_27, uL_30, uL_34, uL_35, uL_36, uL_39, uL_40
local mW
local nD
local nk
local mk
local m1
local GameConfig
local Library
local mq
local m7
local mP
local nw
local mw
local Workspace
local mV
local mC
local nj
local mI
local mp
local Options
local mO
local nv
local mv
local nc
local mU
local nB
local mB
local ni
local m_
local mo
local m5
local mN
local nu
local mu
local nb
local mT
local nA
local mZ
local nn
local m4
local mM
local nt
local mt
local Toggles
local mS
local nz
local mz
local SaveManager
local mY
local mF
local nm
local mm
local m3
local mL
local Label
local ms
local m9
local mR
local ny
local my
local nf
local mX
local mE
local nl
local ml
local connection2
local mK
local connection
local mr
local m8
local mQ
local MountainMelt
local mx
local ne
function fns.fn32(ay, az)
    return string.format('<font color="%s">%s</font>', az, ay)
end
function fns.onOnClientEvent(bf, bg)
    if bf == "full" then
        mR = bg
        return
    end
    if not mR then
        return
    end
    local pk = bf == "melt" and type(bg) == "table"
    local pk_3
    if pk then
        if bg.stage then
            mR.stage = bg.stage
        end
        if bg.level and mR.walls then
            mR.walls[bg.level] = bg.remaining
        end
        local pl_1 = bg.released or {}
        for k, v in pl_1 do
            if typeof(v) == "table" then
                pk_3 = v.idx
            else
                pk_3 = v
            end
            local pk_4 = mR.items and mR.items[pk_3]
            if pk_4 then
                pk_4.released = true
                local pk_5 = typeof(v) == "table" and v.key
                if pk_5 then
                    pk_4.key = v.key
                end
            end
        end
    else
        local pk_6 = bf == "claimed" and type(bg) == "table"
        if pk_6 then
            local pk_7 = mR.items and mR.items[bg.idx]
            if pk_7 then
                pk_7.claimed = true
            end
        end
    end
end
function fns.fn41()
    local pe = nB()
    local pf = pe and pe:FindFirstChild("HumanoidRootPart")
    return pf
end
function fns.fn49(ed)
    local rk = GameConfig.ZoneWall(ed)
    if not rk then
        return nil
    end
    local rl = GameConfig.WallThickness(ed)
    local rm = mC(ed)
    local rn = GameConfig.WallNearZ(ed)
    local ro = rn + (rl - rm)
    local rl_1 = nn()
    local rm_2 = (rl_1 and rl_1.range or 10) + nA
    local rl_3 = ro - math.clamp(rm_2 * 0.35, 4, 10)
    if rk.ground then
        rl_3 = math.clamp(rl_3, rk.ground.minZ + 2, rk.ground.maxZ - 2)
    end
    local rl_4 = math.min(rl_3, ro + 4)
    return CFrame.new(rk.centerX, 3, rl_4)
end
function fns.sellDelayLoop()
    while not Library.Unloaded do
        if ms("AutoSell") then
            pcall(nu)
            local sO = Options.SellDelay and Options.SellDelay.Value or 1
            task.wait(sO)
        else
            task.wait(0.25)
        end
    end
end
function fns.worker3()
    while not Library.Unloaded do
        if ms("AutoBuyUpgrades") then
            pcall(mq)
            task.wait(0.35)
        else
            task.wait(0.25)
        end
    end
end
function fns.fn101()
    return mw()[1]
end
function fns.onCopyBitcoinAddress()
    m1(m8, "Copied Bitcoin address")
end
function fns.antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local tf = tick() - mF
            local tg = tick() - mB
            if tf >= 300 and tg >= 60 then
                pcall(ml)
            else
                if tf < 300 and tg >= 300 then
                    pcall(ml)
                end
            end
        end
    end
end
function fns.fn138()
    local p3 = mE and os.clock() - mz < 5
    if p3 then
        return mE
    end
    local p3_1 = {}
    local Map = Workspace:FindFirstChild("Map")
    if Map then
        for i, descendant in Map:GetDescendants() do
            local p4_1 = descendant.Name == "CollectMedals" and descendant:IsA("BasePart")
            if p4_1 then
                p3_1[#p3_1 + 1] = descendant
            end
        end
        table.sort(p3_1, function(ch, ci)
            local pY = (tonumber(ch:GetAttribute("ZoneReward")))
            local p2 = if pY then 1 else 0
            local p0 = 2190 * p2 + 2565 * (1 - p2)
            local p1 = 1316 * p2 + 3768 * (1 - p2)
            if not ((p0 * 2551 + p1 * 1493 + p0 * p1) % 16777213 == 10433518) then
                pY = 0
            end
            local pZ = tonumber(ci:GetAttribute("ZoneReward")) or 0
            return pY > pZ
        end)
    end
    mE = p3_1
    mz = os.clock()
    return p3_1
end
function fns.fn139()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    nw:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    nw:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    mB = tick()
end
function fns.fn159(iz, iA)
    local tR_1 = (iz == "Toggle" and Toggles or Options)[iA]
    local tQ_2 = type(tR_1) == "table" and tR_1.Type == iz
    return tQ_2 and tR_1 or nil
end
function fns.fn173()
    local ra
    local q5 = mS()
    local q9 = q5
    local q7 = mu
    while true do
        if not (q9 <= q7) then
            return q5
        end
        ra = q9
        if mC(ra) > 0.15 then
            break
        end
        q9 += 1
    end
    return ra
end
function fns.onOnClientEvent2(bd)
    mV = bd
end
function fns.onInputBegan()
    mF = tick()
end
function fns.worker5()
    while not Library.Unloaded do
        if ms("AutoBuyBackpacks") then
            pcall(nk)
            task.wait(0.5)
        else
            task.wait(0.25)
        end
    end
end
function fns.onCopySolanaAddress()
    m1(mU, "Copied Solana address")
end
function fns.fn195()
    local sk_1
    local sj_1
    if identifyexecutor then
        sk_1, sj_1 = identifyexecutor()
        local sl = sk_1 ~= ""
        local sm = type(sk_1) == "string" and sl
        if sm then
            local sl_1 = type(sj_1) == "string" and sj_1 ~= "" and sk_1 .. " " .. sj_1
            mr = sl_1 or sk_1
        end
    end
end
function fns.worker2()
    while not Library.Unloaded do
        local sC = ms("AutoMelt") and not ms("AutoFarmMelt")
        if sC then
            pcall(function()
                MountainMelt:FireServer()
            end)
            task.wait(0.1)
        else
            task.wait(0.25)
        end
    end
end
function fns.fn251()
    local qc = nc()
    if not (qc and firetouchinterest) then
        return
    end
    local qd_1 = nf()
    if not qd_1 then
        return
    end
    pcall(firetouchinterest, qd_1, qc, 0)
    pcall(firetouchinterest, qd_1, qc, 1)
end
function fns.collectDelayLoop()
    while not Library.Unloaded do
        if ms("AutoFarmMelt") then
            local sx = mY()
            if sx == "collect" then
                local wait = task.wait
                local sA = Options.CollectDelay and Options.CollectDelay.Value or 0.15
                wait(sA)
            else
                if sx == "full" or sx == "weapon" then
                    task.wait(0.5)
                else
                    task.wait(0.1)
                end
            end
        else
            task.wait(0.25)
        end
    end
end
function fns.fn268(cw)
    return GameConfig.BackpackById and GameConfig.BackpackById[cw] or nil
end
function fns.fn279()
    local rt = mR
    local ru = {}
    if rt then
        rt = type(mR.items) == "table"
    end
    if not rt then
        return ru
    end
    for k, v in mR.items do
        local rt_1 = v and v.released and not v.claimed and v.key and type(v.x) == "number" and type(v.z) == "number" and my(v.key, "CollectMode", "CollectRarities", "CollectItems")
        if rt_1 then
            local rt_2 = #ru + 1
            local rw = v.x
            local rx = v.y or 3
            ru[rt_2] = { idx = k, item = v, pos = Vector3.new(rw, rx, v.z) }
        end
    end
    return ru
end
function fns.fn281(iH, iI)
    local Type = iI.Type
    if Type == "Toggle" then
        return { idx = iH, type = "Toggle", value = iI.Value == true }
    elseif Type == "Slider" then
        return { idx = iH, type = "Slider", value = tostring(iI.Value) }
    elseif Type == "Dropdown" then
        return { idx = iH, type = "Dropdown", multi = iI.Multi == true, value = iI.Value }
    elseif Type == "Input" then
        local tY = iI.Value or ""
        return { idx = iH, type = "Input", text = tostring(tY) }
    elseif Type == "ColorPicker" then
        return { idx = iH, type = "ColorPicker", value = iI.Value:ToHex(), transparency = iI.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = iH,
            type = "KeyPicker",
            mode = iI.Mode,
            key = iI.Value,
            modifiers = iI.Modifiers,
            toggled = iI.Toggled
        }
    else
        return nil
    end
end
function fns.fn288()
    connection:Disconnect()
    connection2:Disconnect()
    mx(false)
    print("Unloaded!")
end
function fns.fn292()
    local pb = nB()
    local pc = pb and pb:FindFirstChildOfClass("Humanoid")
    return pc
end
function fns.onCopyUSDTAddress()
    m1(mZ, "Copied USDT address")
end
function fns.fn341()
    local rc = nB()
    local rd = rc and rc:FindFirstChildOfClass("Tool")
    if rd then
        local attr = rd:GetAttribute("WeaponId")
        if attr and GameConfig.WeaponById then
            return GameConfig.WeaponById[attr], rd
        end
        return nil, rd
    end
    return nil, rd
end
function fns.fn350()
    if not Toggles.Fly.Value then
        local tJ = nv()
        if tJ then
            tJ.PlatformStand = false
        end
    end
end
local function onImportConfigFromClipboardTex()
    local uw_1
    local uu = Options.SaveManager_ImportSource.Value or ""
    local uu_1
    local uv = tostring(uu):match("^%s*(.-)%s*$")
    if uv == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    uu_1, uw_1 = pcall(nt.JSONDecode, nt, uv)
    local uv_1 = not uu_1 or type(uw_1) ~= "table" or type(uw_1.objects) ~= "table"
    if uv_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local uu_2 = 0
    for k, v in uw_1.objects do
        if mk(v) then
            uu_2 += 1
        end
    end
    if uu_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local uw_2 = uu_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(uu_2, uw_2), 6)
end
local function fn354(aB, aC, aD)
    return string.format("<b>%s</b> %s %s", aB, mv("-", "#5a6070"), mv(aC, aD))
end
local function fn367(bv)
    local pz = Options[bv]
    local pA = {}
    if not pz then
        return pA
    end
    local Value = pz.Value
    if type(Value) ~= "table" then
        return pA
    end
    for k, v in Value do
        if v == true then
            pA[k] = true
        else
            local pz_1 = type(k) == "number" and type(v) == "string"
            if pz_1 then
                pA[v] = true
            end
        end
    end
    return pA
end
local function fn370(an, ao)
    if setclipboard then
        setclipboard(an)
    elseif toclipboard then
        toclipboard(an)
    end
    Library:Notify(ao)
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local tz_1 = nv()
        if tz_1 then
            tz_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function worker()
    local su_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local st = math.floor(os.clock() - mW)
        if st < 60 then
            su_1 = st .. "s"
        elseif st < 3600 then
            su_1 = string.format("%dm %ds", st // 60, st % 60)
        else
            su_1 = string.format("%dh %dm", st // 3600, st % 3600 // 60)
        end
        Label:SetText(mm("Session time", su_1, nj))
    end
end
local function fn481(bW)
    local pN = not bW
    local pO = 0
    if not pN then
        pN = type(bW.Items) ~= "table"
    end
    if pN then
        return 0
    end
    for k, v in bW.Items do
        if type(v) == "number" then
            pO += v
        end
    end
    return pO
end
local function worker6()
    while not Library.Unloaded do
        if ms("AutoBuyPotions") then
            pcall(ny)
            task.wait(1)
        else
            task.wait(0.25)
        end
    end
end
local function fn561(au)
    local DiscordGroup = au:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = mK })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = mK })
end
local function fn564()
    local rh_1
    local rg_1
    rg_1, rh_1 = nn()
    if rh_1 then
        return true
    end
    local Backpack = m9:FindFirstChild("Backpack")
    local rh_2 = Backpack and Backpack:FindFirstChildOfClass("Tool")
    local rh_3 = nv()
    if rh_2 and rh_3 then
        rh_3:EquipTool(rh_2)
        return true
    end
    return false
end
local function fn573()
    local q0 = Options.FarmStage and Options.FarmStage.Value
    if type(q0) == "number" then
        return math.clamp(math.floor(q0), 1, mu)
    elseif type(q0) == "string" then
        local q0_1 = tonumber(string.match(q0, "%d+"))
        if q0_1 then
            return math.clamp(q0_1, 1, mu)
        end
        return 1
    else
        return 1
    end
end
local function fn598()
    m1(mX, "Copied Discord invite to clipboard")
end
local function fn613(bE)
    local bG, bH = GameConfig.SellValueFor(bE)
    return bH
end
local function fn621(cs)
    return GameConfig.WeaponById and GameConfig.WeaponById[cs] or nil
end
local function fn644()
    if not Toggles.WalkSpeedEnabled.Value then
        local tO = nv()
        if tO then
            tO.WalkSpeed = 16
        end
    end
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local tr_1 = nB()
        if tr_1 then
            for i, descendant in ipairs(tr_1:GetDescendants()) do
                local tr_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if tr_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function onCopyJoinScript_JobID()
    local sr = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, nl)
    if setclipboard then
        setclipboard(sr)
    elseif toclipboard then
        toclipboard(sr)
    end
    Library:Notify("Copied join script to clipboard")
end
local function onRenderStepped(h6)
    if Library.Unloaded then
        return
    end
    m4 = Workspace.CurrentCamera
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local tB_1 = nv()
        if tB_1 then
            tB_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local tB_3 = nc()
        local tC = nv()
        if tB_3 and tC and m4 then
            tC.PlatformStand = true
            local tC_1 = Vector3.zero
            if nz:IsKeyDown(Enum.KeyCode.W) then
                tC_1 = tC_1 + m4.CFrame.LookVector
            end
            local tI = if nz:IsKeyDown(Enum.KeyCode.S) then 1 else 0
            if tI == 1 then
                tC_1 = tC_1 - m4.CFrame.LookVector
            end
            if nz:IsKeyDown(Enum.KeyCode.A) then
                tC_1 = tC_1 - m4.CFrame.RightVector
            end
            if nz:IsKeyDown(Enum.KeyCode.D) then
                tC_1 = tC_1 + m4.CFrame.RightVector
            end
            if nz:IsKeyDown(Enum.KeyCode.Space) then
                tC_1 = tC_1 + Vector3.new(0, 1, 0)
            end
            local tI_1 = if nz:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
            if tI_1 == 1 then
                tC_1 = tC_1 - Vector3.new(0, 1, 0)
            end
            tB_3.Velocity = Vector3.zero
            if tC_1.Magnitude > 0 then
                tB_3.CFrame = tB_3.CFrame + tC_1.Unit * Options.FlySpeed.Value * h6
            end
        end
    end
end
local function fn692()
    return #mO() > 0
end
local function fn699()
    return m9.Character
end
local function onCopyEthereumAddress()
    m1(m3, "Copied Ethereum address")
end
local function onCopyPayPalLink()
    m1(mQ, "Copied PayPal link")
end
local function worker7()
    while not Library.Unloaded do
        task.wait(5)
        pcall(function()
            mN.RequestData:FireServer()
        end)
        if not mR then
            pcall(function()
                mN.MountainState:FireServer()
            end)
        end
    end
end
local function fn789(b1)
    if not b1 then
        return true
    end
    local pW = GameConfig.BackpackCapacityFor(b1)
    if type(pW) ~= "number" then
        return false
    end
    return ne(b1) >= pW
end
local function worker4()
    while not Library.Unloaded do
        if ms("AutoBuyWeapons") then
            pcall(m7)
            task.wait(0.5)
        else
            task.wait(0.25)
        end
    end
end
local function collectDelayLoop2()
    while not Library.Unloaded do
        if ms("AutoCollectLoot") then
            pcall(mp)
            local sK = Options.CollectDelay and Options.CollectDelay.Value or 0.2
            task.wait(sK)
        else
            task.wait(0.25)
        end
    end
end
local function fn831()
    local t3 = {}
    for k, v in { Toggles, Options } do
        for k, v in v do
            local t4 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if t4 then
                local t4_1 = ni(k, v)
                if t4_1 then
                    t3[#t3 + 1] = t4_1
                end
            end
        end
    end
    table.sort(t3, function(iU, iV)
        if iU.type ~= iV.type then
            return iU.type < iV.type
        end
        return iU.idx < iV.idx
    end)
    return { objects = t3 }
end
local function fn839(bJ, bK, bL, bM)
    local pK = Options[bK] and Options[bK].Value or "All"
    if pK == "All" then
        return true
    end
    local pK_1 = mI(bJ)
    if not pK_1 then
        return false
    elseif pK == "Rarity" then
        local pL = nm(bL)
        return pL[pK_1.rarity] == true
    elseif pK == "Selected" then
        local pJ_2 = nm(bM)
        return pJ_2[pK_1.name] == true
    else
        return false
    end
end
local function fn855()
    local r5 = ms("AutoCollectLoot") and mt()
    if r5 then
        return "collect"
    elseif mP(mV) then
        return "full"
    elseif not mM() then
        return "weapon"
    elseif not mR then
        pcall(function()
            mN.MountainState:FireServer()
        end)
        return "state"
    else
        local r5_1 = nD()
        local r6 = mo(r5_1)
        local r5_2 = nc()
        if not (r6 and r5_2) then
            return "move"
        end
        if (r5_2.Position - r6.Position).Magnitude > 5 then
            r5_2.CFrame = r6
            task.wait(0.12)
        end
        pcall(function()
            MountainMelt:FireServer()
        end)
        return "melt"
    end
end
local function onUnload()
    Library:Unload()
end
local function fn909()
    mx(Toggles.AntiGameplayPause.Value)
end
local function onInputChanged(hq)
    local UserInputType = hq.UserInputType
    local ta = UserInputType == Enum.UserInputType.MouseMovement
    local te = if ta then 1 else 0
    local tc = 39 * te + 3298 * (1 - te)
    local td = 2043 * te + 1694 * (1 - te)
    if not ((tc * 833 + td * 514 + tc * td) % 16777213 == 1162266) then
        ta = UserInputType == Enum.UserInputType.Gamepad1
    end
    if ta then
        mF = tick()
    end
end
local function onRscripts()
    if setclipboard then
        setclipboard(mT)
    elseif toclipboard then
        toclipboard(mT)
    end
    Library:Notify("Copied Rscripts profile to clipboard")
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            mx(true)
        end
    end
end
local function onExportConfigToClipboard()
    local ur_1
    local uq_1
    uq_1, ur_1 = pcall(nt.JSONEncode, nt, m_())
    if not uq_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local uq_2 = setclipboard or toclipboard
    local uq_3 = type(uq_2) ~= "function" or not pcall(uq_2, ur_1)
    if uq_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function fn955(aY)
    local o8 = Toggles[aY]
    return o8 ~= nil and o8.Value == true
end
local function onCopyLitecoinAddress()
    m1(nb, "Copied Litecoin address")
end
local function fn969(dK)
    local q3 = mR and type(mR.walls) == "table"
    if q3 then
        local q3_1 = mR.walls[dK]
        if type(q3_1) == "number" then
            return q3_1
        end
        return GameConfig.WallThickness(dK)
    end
    return GameConfig.WallThickness(dK)
end
local function medalDelayLoop()
    while not Library.Unloaded do
        if ms("AutoCollectMedals") then
            pcall(m5)
            local sG = Options.MedalDelay and Options.MedalDelay.Value or 0.05
            task.wait(sG)
        else
            task.wait(0.25)
        end
    end
end
local function onCopyVenmoLink()
    m1(mL, "Copied Venmo link")
end
mk = nil
ml = nil
mm = nil
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
mE = nil
mF = nil
mI = nil
GameConfig = nil
mK = nil
mL = nil
mM = nil
mN = nil
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
m1 = nil
connection2 = nil
m3 = nil
m4 = nil
m5 = nil
local mj, mn, mA, mD, mG, mH, m0
Options = nil
m7 = nil
m8 = nil
m9 = nil
Toggles = nil
nb = nil
nc = nil
Workspace = nil
ne = nil
nf = nil
SaveManager = nil
ni = nil
nj = nil
nk = nil
nl = nil
nm = nil
nn = nil
Library = nil
connection = nil
Label = nil
nt = nil
nu = nil
nv = nil
nw = nil
MountainMelt = nil
ny = nil
nz = nil
nA = nil
nB = nil
nD = nil
local CoreGui, no, np, nC
CoreGui = nil
no = nil
np = nil
nC = nil
uL_30, uL_3, uL_23, nz, nw, nt, no, CoreGui, Workspace, m9, m4, uL_36, mX, mT, mN, GameConfig, uL_6, uL_20, uL_34, mD = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local uL_18 = 21
repeat
    uL_8 = (uL_18 * 2 + 7) % 9 + 1
    if uL_8 <= 5 then
        if uL_8 <= 3 then
            if uL_8 <= 2 then
                if uL_8 <= 1 then
                    if (uL_18 * 2 + 9) * 16 % 3 == ((uL_18 * 2 + 9) * 16 + 0) % 3 then
                        Workspace = game:GetService("Workspace")
                        m9 = uL_30.LocalPlayer
                        m4 = Workspace.CurrentCamera
                    else
                        m4 = game:GetService("Workspace")
                        uL_30 = Workspace.LocalPlayer
                        m9 = m4.CurrentCamera
                    end
                    uL_18 = (uL_18 + 32) % 36
                else
                    local vG = bit32.rrotate(bit32.bxor(bit32.lrotate(uL_18, 19), string.byte(tostring(uL_30))), 16)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(vG, 1334957265), 24), 3511652820) == bit32.lrotate(vG, 24) then
                        uL_36 = "Melt The Ice"
                        mX = "https://discord.gg/ehKVq7pf7v"
                        mT = "https://rscripts.net/@Ouroboros"
                        mN = require(uL_3:WaitForChild("Modules"):WaitForChild("Remotes"))
                    else
                        mX = "Melt The Ice"
                        uL_3 = "https://discord.gg/ehKVq7pf7v"
                        mN = "https://rscripts.net/@Ouroboros"
                        uL_36 = require(mT:WaitForChild("Modules"):WaitForChild("Remotes"))
                    end
                    uL_18 = (uL_18 + 14) % 36
                end
            else
                uL_39 = (vector.create((uL_18 * 3 + 9) % 11 + 1, (uL_18 * 4 + 2) % 13 + 1, (uL_18 * 14 + 7) % 17 + 1))
                local v6 = vector.floor(uL_39) + vector.ceil(uL_39 * -1)
                if vector.dot(v6, v6) == 0 then
                    GameConfig = require(uL_3.Modules.GameConfig)
                else
                    uL_3 = require(GameConfig.Modules.GameConfig)
                end
                uL_18 = (uL_18 + 14) % 36
            end
        elseif uL_8 <= 4 then
            uL_39 = {
                "trf",
                "trngvsyskj",
                "jkzopuydfs",
                "qijkyvq",
                "jqvwowfa",
                "strr",
                "dplc",
                "yeepbtglwbu",
                "aylmfzryc",
                "ljzbhfip",
                "qhocdc"
            }
            local vH = uL_18
            uL_25 = uL_39[vH % 11 + 1]
            if uL_25:len() <= uL_25:reverse():rep(vH % 3 + 2):len() then
                uL_6 = { "Common", "Rare", "Epic", "Legendary", "Secret", "Transcendent" }
                uL_20 = { "All", "Rarity", "Selected" }
                uL_34 = {}
                mD = {}
            else
                uL_34 = { "Secret", "Rare", "Transcendent", "Common", "Epic", "Legendary" }
                uL_6 = { "Rarity", "All", "Selected" }
                mD = {}
                uL_20 = {}
            end
            uL_18 = (uL_18 + 14) % 36
        else
            uL_39 = { "nzhjjrs", "mwkgcpu", "sla", "iqtu", "clq", "qaeyod", "mockt", "ygfsavdhixgs", "uowcggwl" }
            if uL_39[(uL_18 * 94 + 51) % 9 + 1] <= uL_39[(uL_18 * 94 + 51) % 9 + 1] then
                uL_30 = game:GetService("Players")
            else
                nw = game:GetService("Players")
            end
            uL_18 = (uL_18 + 23) % 36
        end
    elseif uL_8 <= 7 then
        if uL_8 <= 6 then
            if uL_18 * 83993505 + 13 + 3 <= uL_18 * 83993505 + 13 + 3 + 1 then
                uL_3 = game:GetService("ReplicatedStorage")
            else
                mX = game:GetService("ReplicatedStorage")
            end
            uL_18 = (uL_18 + 32) % 36
        else
            if (uL_18 * 2 + 6) * 10 % 3 == ((uL_18 * 2 + 6) * 10 + 5) % 3 then
                nz = game:GetService("RunService")
                uL_23 = game:GetService("UserInputService")
            else
                uL_23 = game:GetService("RunService")
                nz = game:GetService("UserInputService")
            end
            uL_18 = (uL_18 + 14) % 36
        end
    elseif uL_8 <= 8 then
        uL_8 = {
            "fnnfvixd",
            "jtixz",
            "olrbzyi",
            "lwxsevt",
            "goirtydmp",
            "minntopk",
            "zdep",
            "hjfgvl",
            "yvwylrvkp",
            "jda",
            "ypiiddmzmpg"
        }
        local vI = uL_18
        uL_39 = uL_8[vI % 11 + 1]
        if uL_39:len() <= uL_39:reverse():rep(vI % 3 + 2):len() then
            nw = game:GetService("VirtualUser")
            nt = game:GetService("HttpService")
            no = game:GetService("GuiService")
        else
            nt = game:GetService("VirtualUser")
            no = game:GetService("HttpService")
            nw = game:GetService("GuiService")
        end
        uL_18 = (uL_18 + 5) % 36
    else
        uL_8 = {
            "mho",
            "irwin",
            "yhhhnhtyxwkq",
            "frhy",
            "cibvtj",
            "fedrmwjtmnl",
            "mjuzclim",
            "ycpmkrena",
            "bbirdqf",
            "bbyybf",
            "upizuwuos"
        }
        if uL_8[(uL_18 * 77 + 64) % 11 + 1] <= uL_8[(uL_18 * 77 + 64) % 11 + 1] then
            CoreGui = game:GetService("CoreGui")
        else
            mN = game:GetService("CoreGui")
        end
        uL_18 = (uL_18 + 14) % 36
    end
until (uL_18 * 31 + 25) % 36 == 10
for k, v in GameConfig.ItemById do
    uL_30 = v.name or tostring(k)
    uL_18 = uL_30
    uL_34[#uL_34 + 1] = uL_18
    mD[uL_18] = k
end
uL_3, mj = nil, nil
uL_30 = 9
repeat
    uL_18 = (uL_30 * 1 + 0) % 2 + 1
    if uL_18 <= 1 then
        uL_18 = (vector.create((uL_30 * 6 + 5) % 11 + 1, (uL_30 * 11 + 1) % 13 + 1, (uL_30 * 13 + 14) % 17 + 1))
        uL_8 = (vector.create((uL_30 * 4 + 2) % 11 + 1, (uL_30 * 2 + 7) % 13 + 1, (uL_30 * 6 + 13) % 17 + 1))
        uL_39 = (vector.create((uL_30 * 3 + 2) % 5 + 1, (uL_30 * 5 + 4) % 7 + 1, (uL_30 * 2 + 3) % 9 + 1))
        if math.abs((vector.angle(uL_18, uL_8, uL_39))) - math.abs((vector.angle(uL_8, uL_18, uL_39))) == 5 then
            uL_3 = {}
        else
            mj = {}
        end
        uL_30 = (uL_30 + 1) % 16
    else
        uL_18 = (vector.create((uL_30 * 5 + 4) % 11 + 1, (uL_30 * 1 + 8) % 13 + 1, (uL_30 * 13 + 7) % 17 + 1))
        uL_8 = (vector.create((uL_30 * 6 + 8) % 11 + 1, (uL_30 * 1 + 5) % 13 + 1, (uL_30 * 14 + 16) % 17 + 1))
        uL_39 = (vector.create((uL_30 * 1 + 8) % 11 + 1, (uL_30 * 8 + 11) % 13 + 1, (uL_30 * 14 + 9) % 17 + 1))
        if vector.dot(vector.cross(uL_18, uL_8), uL_39) == vector.dot(vector.cross(uL_8, uL_39), uL_18) then
            table.sort(uL_34)
            uL_3 = {}
        else
            table.sort(uL_3)
            uL_34 = {}
        end
        uL_30 = (uL_30 + 13) % 16
    end
until (uL_30 * 9 + 6) % 16 == 5
for k, v in GameConfig.UPGRADES do
    uL_30 = v.name or tostring(k)
    uL_18 = uL_30
    uL_3[#uL_3 + 1] = uL_18
    mj[uL_18] = k
end
uL_8, np = nil, nil
uL_30 = 6
repeat
    uL_18 = (vector.create((uL_30 * 4 + 2) % 11 + 1, (uL_30 * 4 + 10) % 13 + 1, (uL_30 * 9 + 5) % 17 + 1))
    local vp = vector.floor(uL_18) + vector.ceil(uL_18 * -1)
    if vector.dot(vp, vp) == 1 then
        table.sort(np)
        uL_3 = {}
        uL_8 = {}
    else
        table.sort(uL_3)
        uL_8 = {}
        np = {}
    end
    uL_30 = (uL_30 + 0) % 8
until (uL_30 * 7 + 0) % 8 == 2
for k, v in GameConfig.WEAPONS do
    uL_30 = v.name and v.id
    if uL_30 then
        uL_8[#uL_8 + 1] = v.name
        np[v.name] = v.id
    end
end
m0 = {}
uL_30 = {}
for k, v in GameConfig.BACKPACKS do
    uL_18 = v.name and v.id
    if uL_18 then
        uL_30[#uL_30 + 1] = v.name
        m0[v.name] = v.id
    end
end
mG = {}
uL_18 = {}
for k, v in GameConfig.POTIONS do
    uL_39 = v.name and v.id
    if uL_39 then
        uL_18[#uL_18 + 1] = v.name
        mG[v.name] = v.id
    end
end
uL_39 = GameConfig.MOUNTAIN and GameConfig.MOUNTAIN.zoneCount
uL_25 = uL_39 or #GameConfig.LAYERS
uL_39 = {}
mu = uL_25
local oS = 1
local oQ = mu
while oS <= oQ do
    local oT = oS
    uL_39[oT] = "Stage " .. oT
    oS += 1
end
uL_25 = GameConfig.MOUNTAIN and GameConfig.MOUNTAIN.pickupRange
local uL_11 = uL_25 or 14
nC = nil
nC = uL_11
local uL_42 = GameConfig.MOUNTAIN and GameConfig.MOUNTAIN.meltRangeSlack
uL_25 = uL_42
local o_ = if uL_25 then 1 else 0
local oY = 3840 * o_ + 3858 * (1 - o_)
local oZ = 1178 * o_ + 2848 * (1 - o_)
if not ((oY * 1855 + oZ * 1864 + oY * oZ) % 16777213 == 13842512) then
    uL_25 = 16
end
nA, MountainMelt, Library, ThemeManager, SaveManager, Toggles, Options, nj, nb, m8, m3, mZ, mU, mQ, mL, uL_27, mV, mR, mE, mz, m1, mK, mv, mm, ms, nB, nv, nc, nm, mI, my, ne, mP, mw, nf, m5, mH, mA, mq, m7, nk, ny, mS, mC, nD, nn, mM, mo, mO, mt, mp, mY, nu = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if false or not ThemeManager and not ThemeManager or (ThemeManager or uL_27) and (false or not ThemeManager) or (not ThemeManager or false) and (not ThemeManager and false) and (false or not ThemeManager or not ThemeManager and false) or (not ThemeManager or not ThemeManager or (ThemeManager or ThemeManager)) and (ThemeManager and uL_27 and false) and (ThemeManager or not ThemeManager or (false or not ThemeManager) or (ThemeManager or ThemeManager or (false or not ThemeManager))) or not (false or not ThemeManager and not ThemeManager or (ThemeManager or uL_27) and (false or not ThemeManager) or (not ThemeManager or false) and (not ThemeManager and false) and (false or not ThemeManager or not ThemeManager and false) or (not ThemeManager or not ThemeManager or (ThemeManager or ThemeManager)) and (ThemeManager and uL_27 and false) and (ThemeManager or not ThemeManager or (false or not ThemeManager) or (ThemeManager or ThemeManager or (false or not ThemeManager)))) then
    nA = uL_25
end
MountainMelt = mN.MountainMelt
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
m1 = fn370
mK = fn598
local uL_12 = fn561
mv = fns.fn32
mm = fn354
local uL_22 = "#7fd47f"
if nf and not mP and (Options or not mP) and ((not nf or not nf) and (mP and mP)) or (Options and uL_27 or false and not nf) and ((Options or not mP) and (mP or not nf)) or not (nf and not mP and (Options or not mP) and ((not nf or not nf) and (mP and mP)) or (Options and uL_27 or false and not nf) and ((Options or not mP) and (mP or not nf))) then
    uL_35 = "#6ec1ff"
    nj = "#e8a34d"
    uL_19 = "#8b93a3"
    nb = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
    m8 = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
else
    m8 = "#6ec1ff"
    uL_35 = "#e8a34d"
    nb = "#8b93a3"
    nj = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
    uL_19 = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
end
m3 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
mZ = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
mU = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
mQ = "https://paypal.me/TheTruckerGOD"
mL = "https://venmo.com/u/miserablemusic"
local uL_31 = "#345d9d"
local uL_2 = "#f7931a"
local uL_15 = "#627eea"
local uL_29 = "#26a17b"
local uL_45 = "#14f195"
uL_27 = "#0070ba"
local uL_44 = "#008cff"
ms = fn955
nB = fn699
nv = fns.fn292
if mO and false and (not mP and not mP) and (mM or not mO or mO and mM) and not (mO and false and (not mP and not mP) and (mM or not mO or mO and mM)) then
    mI = fns.fn41
    mR = nil
    nc = nil
    nm.DataUpdate.OnClientEvent:Connect(fns.onOnClientEvent2)
    nm.MountainState.OnClientEvent:Connect(fns.onOnClientEvent)
    nm.RequestData:FireServer()
    nm.MountainState:FireServer()
    mN = fn367
    mV = fn613
else
    nc = fns.fn41
    mV = nil
    mR = nil
    mN.DataUpdate.OnClientEvent:Connect(fns.onOnClientEvent2)
    mN.MountainState.OnClientEvent:Connect(fns.onOnClientEvent)
    mN.RequestData:FireServer()
    mN.MountainState:FireServer()
    nm = fn367
    mI = fn613
end
my = fn839
ne = fn481
mP = fn789
mE = nil
mz = 0
mw = fns.fn138
nf = fns.fn101
m5 = fns.fn251
mH = fn621
mA = fns.fn268
mq = function()
    local qp = nm("BuyUpgradeList")
    if not mV then
        return
    end
    for k in qp do
        local qo = mj[k]
        if qo then
            pcall(function()
                mN.BuyUpgrade:InvokeServer(qo, 1)
            end)
        end
    end
end
m7 = function()
    local qB_1
    local qx = nm("BuyWeaponList")
    local qx_3
    local qy = mV
    if not qy then
        return
    end
    local qA = qy.OwnedWeapons or {}
    local qA_1 = tonumber(qy.Cash) or 0
    local qy_1 = qA_1
    for k in qx do
        local qw = np[k]
        local qx_1 = qw and mH(qw)
        local qA_2 = qx_1
        if qx_1 then
            qx_1 = not qA[qw]
        end
        if qx_1 then
            local qx_2 = tonumber(qA_2.cost) or 0
            if qx_2 <= qy_1 then
                qx_3, qB_1 = pcall(function()
                    return mN.BuyWeapon:InvokeServer(qw)
                end)
                if qx_3 and qB_1 then
                    pcall(function()
                        mN.EquipWeapon:InvokeServer(qw)
                    end)
                    qy_1 -= qx_2
                end
            end
        end
    end
end
nk = function()
    local qN_1
    local qJ = nm("BuyBackpackList")
    local qJ_3
    local qK = mV
    if not qK then
        return
    end
    local qM = qK.OwnedBackpacks or {}
    local qM_1 = tonumber(qK.Cash) or 0
    local qK_1 = qM_1
    for k in qJ do
        local qI = m0[k]
        local qJ_1 = qI and mA(qI)
        local qM_2 = qJ_1
        if qJ_1 then
            qJ_1 = not qM[qI]
        end
        if qJ_1 then
            local qJ_2 = tonumber(qM_2.cost) or 0
            if qJ_2 <= qK_1 then
                qJ_3, qN_1 = pcall(function()
                    return mN.BuyBackpack:InvokeServer(qI)
                end)
                if qJ_3 and qN_1 then
                    pcall(function()
                        mN.EquipBackpack:InvokeServer(qI)
                    end)
                    qK_1 -= qJ_2
                end
            end
        end
    end
end
ny = function()
    local qV = nm("BuyPotionList")
    if not mV then
        return
    end
    for k in qV do
        local qU = mG[k]
        if qU then
            pcall(function()
                mN.BuyPotion:InvokeServer(qU)
            end)
        end
    end
end
mS = fn573
mC = fn969
nD = fns.fn173
nn = fns.fn341
mM = fn564
mo = fns.fn49
mO = fns.fn279
mt = fn692
mp = function()
    local rI
    rI = nil
    local rT = if mP(mV) then 1 else 0
    if rT == 1 then
        return false
    end
    rI = nc()
    if not rI then
        return false
    end
    local rJ = mO()
    if #rJ == 0 then
        local MyMountain = Workspace:FindFirstChild("MyMountain")
        if MyMountain then
            for i, descendant in MyMountain:GetDescendants() do
                if descendant:IsA("ProximityPrompt") then
                    local attr = descendant:GetAttribute("MountainIdx")
                    if attr ~= nil then
                        local rL = mR and mR.items and mR.items[attr]
                        local rL_2
                        local rM = rL
                        if rL then
                            rL = rM.key
                        end
                        local rN = rL
                        if not rN then
                            local ObjectText = descendant.ObjectText
                            rN = ObjectText and mD[ObjectText]
                        end
                        if rN then
                            rL_2 = my(rN, "CollectMode", "CollectRarities", "CollectItems")
                        else
                            rL_2 = (Options.CollectMode and Options.CollectMode.Value or "All") == "All"
                        end
                        if rL_2 and rM and not rM.claimed then
                            local Parent = descendant.Parent
                            local rN_3 = Parent and Parent:IsA("BasePart")
                            if rN_3 then
                                rJ[#rJ + 1] = { idx = attr, item = rM, pos = Parent.Position }
                            else
                                local rL_4 = rM and type(rM.x) == "number"
                                if rL_4 then
                                    local rL_5 = #rJ + 1
                                    local new = Vector3.new
                                    local rO_3 = rM.x
                                    local rP = rM.y or 3
                                    rJ[rL_5] = { idx = attr, item = rM, pos = new(rO_3, rP, rM.z) }
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    if #rJ == 0 then
        return false
    end
    table.sort(rJ, function(e_, e0)
        return (e_.pos - rI.Position).Magnitude < (e0.pos - rI.Position).Magnitude
    end)
    local rK_3 = false
    for k, v in rJ do
        local r4 = v
        if mP(mV) then
            break
        end
        rI = nc()
        if not rI then
            break
        elseif (rI.Position - r4.pos).Magnitude > nC - 1 then
            rI.CFrame = CFrame.new(r4.pos + Vector3.new(0, 3, 0))
            task.wait(0.12)
            rI = nc()
            if not rI then
                break
            end
            pcall(function()
                mN.MountainPickup:FireServer(r4.idx)
            end)
            if r4.item then
                r4.item.claimed = true
            end
            rK_3 = true
            task.wait(0.05)
        else
            pcall(function()
                mN.MountainPickup:FireServer(r4.idx)
            end)
            if r4.item then
                r4.item.claimed = true
            end
            rK_3 = true
            task.wait(0.05)
        end
    end
    return rK_3
end
mY = fn855
nu = function()
    local r9 = mV
    local sa = not r9 or type(r9.Items) ~= "table"
    if sa then
        return
    end
    if (Options.SellMode and Options.SellMode.Value or "All") == "All" then
        pcall(function()
            mN.SellAll:InvokeServer()
        end)
        return
    end
    for k, v in r9.Items do
        local sg = k
        local r9_1 = type(v) == "number" and v > 0
        if r9_1 then
            if my(sg, "SellMode", "SellRarities", "SellItems") then
                pcall(function()
                    mN.SellItem:InvokeServer(sg)
                end)
            end
        end
    end
end
uL_42 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = mX, Copyable = true }, "|", uL_36 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
local uL_14 = {
    Info = uL_42:AddTab("Info", "info"),
    Main = uL_42:AddTab("Main", "flame"),
    Player = uL_42:AddTab("Player", "person-standing"),
    Settings = uL_42:AddTab("Settings", "settings")
}
for k, v in uL_14 do
    uL_12(v)
end
mr, uL_26, Label, nl, uL_42 = nil, nil, nil, nil, nil
uL_25 = 10
repeat
    uL_12 = (uL_25 * 2 + 2) % 3 + 1
    if uL_12 <= 2 then
        if uL_12 <= 1 then
            uL_12 = {
                "ues",
                "dwrpmhkb",
                "bgmdwc",
                "vdmedex",
                "kqnguo",
                "jrp",
                "vnqfltum",
                "qokldchl",
                "epwafz",
                "ovjenwghu",
                "ijosdjja",
                "ixsw",
                "bkpcm"
            }
            if uL_12[(uL_25 * 7 + 109) % 13 + 1] < uL_12[(uL_25 * 7 + 109) % 13 + 1] then
                nl = #uL_42 > 18
            else
                uL_42 = #nl > 18
            end
            uL_25 = (uL_25 + 14) % 24
        else
            uL_12 = (vector.create((uL_25 * 3 + 7) % 11 + 1, (uL_25 * 4 + 11) % 13 + 1, (uL_25 * 9 + 8) % 17 + 1))
            uL_7 = (vector.create((uL_25 * 2 + 8) % 11 + 1, (uL_25 * 9 + 1) % 13 + 1, (uL_25 * 3 + 9) % 17 + 1))
            uL_40 = (vector.create((uL_25 * 5 + 9) % 11 + 1, (uL_25 * 10 + 1) % 13 + 1, (uL_25 * 11 + 1) % 17 + 1))
            if vector.dot(vector.cross(uL_12, uL_7), uL_40) == vector.dot(vector.cross(uL_7, uL_40), uL_12) + 2 then
                pcall(fns.fn195)
                uL_14 = nj.Info:AddLeftGroupbox("Account", "circle-user")
                uL_14:AddLabel(uL_26("User", uL_35.Name, mm), true)
                uL_14:AddLabel(uL_26("Status", "Keyless", mm), true)
                uL_14:AddLabel(uL_26("Executor", "Unknown", mm), true)
                m9 = nj.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                m9:AddLabel(mr(mv .. " [" .. tostring(game.PlaceId) .. "]", Label), true)
                m9:AddLabel(uL_26("Place ID", tostring(game.PlaceId), Label), true)
                uL_22 = m9:AddLabel(uL_26("Session time", "0s", uL_36), true)
            else
                mr = "Unknown"
                pcall(fns.fn195)
                uL_11 = uL_14.Info:AddLeftGroupbox("Account", "circle-user")
                uL_11:AddLabel(mm("User", m9.Name, uL_22), true)
                uL_11:AddLabel(mm("Status", "Keyless", uL_22), true)
                uL_11:AddLabel(mm("Executor", mr, uL_22), true)
                uL_26 = uL_14.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                uL_26:AddLabel(mv(uL_36 .. " [" .. tostring(game.PlaceId) .. "]", uL_35), true)
                uL_26:AddLabel(mm("Place ID", tostring(game.PlaceId), uL_35), true)
                Label = uL_26:AddLabel(mm("Session time", "0s", nj), true)
            end
            uL_25 = (uL_25 + 2) % 24
        end
    else
        uL_12 = {
            "bwywdpsofq",
            "uprf",
            "bshqk",
            "knjndjgbmy",
            "beoljvd",
            "smgankrx",
            "xdpo",
            "mhriadbn",
            "vhk",
            "ianxkjxctn",
            "rnxqsskgnzuu",
            "verhedi",
            "aunsolbxzcrg",
            "uirnilzv",
            "cllfsdbst"
        }
        if uL_12[(uL_25 * 16 + 108) % 15 + 1] <= uL_12[(uL_25 * 16 + 108) % 15 + 1] then
            nl = tostring(game.JobId)
        else
            uL_26 = tostring(game.JobId)
        end
        uL_25 = (uL_25 + 23) % 24
    end
until (uL_25 * 17 + 15) % 24 == 8
if uL_42 then
    uL_25 = 0
    repeat
        if (uL_25 * 1 + 6) * 13 % 4 == ((uL_25 * 1 + 6) * 13 + 7) % 4 then
            nl = string.sub(uL_42, 1, 18) .. "..."
        else
            uL_42 = string.sub(nl, 1, 18) .. "..."
        end
        uL_25 = (uL_25 + 0) % 8
    until (uL_25 * 7 + 6) % 8 == 6
end
uL_25 = uL_42 or nl
mW, mF, mB, connection, connection2, ml, mx, mn, ni, m_, mk = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local oe = uL_25
uL_26:AddLabel(mm("Server", oe, uL_19), true)
uL_26:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
mW = os.clock()
task.spawn(worker)
uL_40 = uL_14.Info:AddRightGroupbox("Scripts", "package")
uL_40:AddLabel(mv("Included in this hub", uL_19), true)
uL_40:AddLabel(mv(uL_36, uL_35), true)
uL_12 = uL_14.Info:AddRightGroupbox("Features", "list")
uL_12:AddLabel(mv("Auto Farm", uL_35), true)
uL_12:AddLabel(mv("Auto Collect", nj), true)
uL_12:AddLabel(mv("Auto Sell", uL_22), true)
uL_12:AddLabel(mv("Auto Buy", uL_35), true)
uL_12:AddLabel(mv("Player Movement", uL_19), true)
uL_42 = uL_14.Info:AddRightGroupbox("Socials", "link")
uL_42:AddButton({ Text = "Discord", Func = mK })
uL_42:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = uL_14.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = mK })
local DonationsGroup = uL_14.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(mv("All donations are optional but appreciated.", nj), true)
DonationsGroup:AddLabel(mv("If you donate you get a special role, just PING after you donate.", uL_22), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(mv("LTC / Litecoin", uL_31), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(mv("BTC / Bitcoin", uL_2), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = fns.onCopyBitcoinAddress })
DonationsGroup:AddLabel(mv("ETH / Ethereum", uL_15), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(mv("USDT", uL_29), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = fns.onCopyUSDTAddress })
DonationsGroup:AddLabel(mv("Solana", uL_45), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = fns.onCopySolanaAddress })
DonationsGroup:AddLabel(mv("PayPal", uL_27), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(mv("Venmo", uL_44), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(mv("Don't have any of the listed currencies but still wanna donate?", uL_19), true)
DonationsGroup:AddLabel(mv("DM me and we'll work something out.", uL_35), true)
local FaqGroup = uL_14.Info:AddRightGroupbox("FAQ", "circle-help")
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
local AutoMeltGroup = uL_14.Main:AddLeftGroupbox("Auto Melt", "flame")
AutoMeltGroup:AddToggle("AutoFarmMelt", { Text = "Auto Farm Melt", Default = false })
AutoMeltGroup:AddDropdown("FarmStage", { Text = "Farm Stage", Values = uL_39, Default = uL_39[1] })
AutoMeltGroup:AddToggle("AutoMelt", { Text = "Auto Melt Ice", Default = false })
local MedalsGroup = uL_14.Main:AddLeftGroupbox("Medals", "medal")
MedalsGroup:AddToggle("AutoCollectMedals", { Text = "Auto Collect Medals", Default = false })
MedalsGroup:AddSlider("MedalDelay", { Text = "Medal Delay", Default = 0.05, Min = 0, Max = 2, Rounding = 2 })
local ShopGroup = uL_14.Main:AddLeftGroupbox("Shop", "shopping-cart")
ShopGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
ShopGroup:AddDropdown("BuyUpgradeList", { Text = "Upgrades", Values = uL_3, Default = uL_3, Multi = true, SelectAllButtons = true })
ShopGroup:AddToggle("AutoBuyWeapons", { Text = "Auto Buy Weapons", Default = false })
ShopGroup:AddDropdown("BuyWeaponList", {
    Text = "Weapons",
    Values = uL_8,
    Default = {},
    Multi = true,
    Searchable = true,
    Expandable = true,
    ExpandColumns = 2
})
ShopGroup:AddToggle("AutoBuyBackpacks", { Text = "Auto Buy Backpacks", Default = false })
ShopGroup:AddDropdown("BuyBackpackList", { Text = "Backpacks", Values = uL_30, Default = uL_30, Multi = true, SelectAllButtons = true })
ShopGroup:AddToggle("AutoBuyPotions", { Text = "Auto Buy Potions", Default = false })
ShopGroup:AddDropdown("BuyPotionList", {
    Text = "Potions",
    Values = uL_18,
    Default = {},
    Multi = true,
    Searchable = true,
    Expandable = true
})
local AutoCollectGroup = uL_14.Main:AddRightGroupbox("Auto Collect", "package")
AutoCollectGroup:AddToggle("AutoCollectLoot", { Text = "Auto Collect Loot", Default = false })
AutoCollectGroup:AddDropdown("CollectMode", { Text = "Collect Mode", Values = uL_20, Default = "All" })
AutoCollectGroup:AddDropdown("CollectRarities", {
    Text = "Collect Rarities",
    Values = uL_6,
    Default = { "Common", "Rare", "Epic", "Legendary", "Secret", "Transcendent" },
    Multi = true,
    SelectAllButtons = true,
    Expandable = true
})
AutoCollectGroup:AddDropdown("CollectItems", {
    Text = "Collect Items",
    Values = uL_34,
    Default = {},
    Multi = true,
    Searchable = true,
    Expandable = true,
    ExpandColumns = 2
})
AutoCollectGroup:AddSlider("CollectDelay", { Text = "Collect Delay", Default = 0.2, Min = 0.05, Max = 3, Rounding = 2 })
uL_7 = uL_14.Main:AddRightGroupbox("Auto Sell", "tag")
uL_7:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
uL_7:AddDropdown("SellMode", { Text = "Sell Mode", Values = uL_20, Default = "All" })
uL_7:AddDropdown("SellRarities", {
    Text = "Sell Rarities",
    Values = uL_6,
    Default = { "Common", "Rare", "Epic" },
    Multi = true,
    SelectAllButtons = true,
    Expandable = true
})
uL_7:AddDropdown("SellItems", {
    Text = "Sell Items",
    Values = uL_34,
    Default = {},
    Multi = true,
    Searchable = true,
    Expandable = true,
    ExpandColumns = 2
})
uL_7:AddSlider("SellDelay", { Text = "Sell Delay", Default = 1, Min = 0.2, Max = 10, Rounding = 1 })
task.spawn(fns.collectDelayLoop)
task.spawn(fns.worker2)
task.spawn(medalDelayLoop)
task.spawn(collectDelayLoop2)
task.spawn(fns.sellDelayLoop)
task.spawn(fns.worker3)
task.spawn(worker4)
task.spawn(fns.worker5)
task.spawn(worker6)
task.spawn(worker7)
local MovementGroup = uL_14.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = uL_14.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
local MenuGroup = uL_14.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton({ Text = "Unload", Func = onUnload })
mF = tick()
mB = tick()
pcall(function()
    for i, v in ipairs(getconnections(m9.Idled)) do
        local s3 = v
        pcall(function()
            s3:Disable()
        end)
    end
end)
ml = fns.fn139
connection = nz.InputBegan:Connect(fns.onInputBegan)
connection2 = nz.InputChanged:Connect(onInputChanged)
task.spawn(fns.antiAfkLoop)
mx = function(hF)
    pcall(function()
        no:SetGameplayPausedNotificationEnabled(not hF)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not hF
        end
    end)
    if not hF then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(m9, "GameplayPaused", false)
        else
            m9.GameplayPaused = false
        end
    end)
end
Toggles.AntiGameplayPause:OnChanged(fn909)
task.spawn(antiGameplayPauseLoop)
uL_23.Stepped:Connect(onStepped)
nz.JumpRequest:Connect(onJumpRequest)
uL_23.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fns.fn350)
Toggles.WalkSpeedEnabled:OnChanged(fn644)
Library:OnUnload(fns.fn288)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(uL_14.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/MeltTheIce")
uL_11 = SaveManager:BuildConfigSection(uL_14.Settings)
mn = fns.fn159
ni = fns.fn281
m_ = fn831
mk = function(iX)
    local un
    un = nil
    local uo = type(iX) ~= "table" or type(iX.idx) ~= "string" or type(iX.type) ~= "string" or SaveManager.Ignore[iX.idx]
    if uo then
        return false
    end
    un = mn(iX.type, iX.idx)
    if not un then
        return false
    end
    local uo_1 = pcall(function()
        if iX.type == "Input" then
            if type(iX.text) ~= "string" then
                return
            end
            un:SetValue(iX.text)
        elseif iX.type == "ColorPicker" then
            un:SetValueRGB(Color3.fromHex(iX.value), iX.transparency)
        elseif iX.type == "KeyPicker" then
            un:SetValue({ iX.key, iX.mode, iX.modifiers })
            if iX.mode == "Toggle" and iX.toggled ~= nil then
                un.Toggled = iX.toggled
                un:Update()
            end
        else
            un:SetValue(iX.value)
        end
    end)
    return uo_1
end
uL_11:AddDivider()
uL_11:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
uL_11:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
uL_11:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
