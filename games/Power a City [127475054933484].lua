local fns = {}
local wA_6, wA_9, wA_22
local mL
local BuildCity
local Config
local GetUnlockedCityZones
local BuyItem
local ny
local nf
local nX
local mX
local PickupBuilding
local m2
local HttpService
local GetShopState
local Workspace
local n8
local m8
local VirtualUser
local mQ
local connection2
local ne
local Library
local mW
local nD
local nk
local GetMyPlotFolder
local m1
local nJ
local mJ
local PlaceBuilding
local BuyExpansion
local m7
local nP
local mP
local nw
local nd
local nV
local mV
local nC
local n0
local m0
local CurrentCamera2
local mI
local np
local n6
local m6
local nO
local GetGenerators
local nv
local nc
local GetUnlockedZones
local mU
local Options
local BaseShopEvent
local n_
local m_
local nH
local mH
local LocalPlayer
local BuildingData
local SaveManager
local mN
local nu
local nb
local UserInputService
local mT
local UpgradeCity
local nh
local connection
local mZ
local Toggles
local PurchaseUpgrade
local nn
local n4
local m4
local nM
local mM
local nt
local na
local nS
local mS
local ng
local nY
local mY
local UnlockCityZone
local nm
local n3
local m3
local UnlockZone
function fns.fn2()
    n6(Toggles.AntiGameplayPause.Value)
end
function fns.fn8(aq, ar)
    if setclipboard then
        setclipboard(aq)
    elseif toclipboard then
        toclipboard(aq)
    end
    Library:Notify(ar)
end
function fns.fn12()
    local pX_1
    local pW_1
    pW_1, pX_1 = pcall(function()
        return GetUnlockedZones:InvokeServer()
    end)
    local pY = pW_1
    local pW_2 = { StartingZone = true }
    if pY then
        pY = type(pX_1) == "table"
    end
    if pY then
        for k, v in pairs(pX_1) do
            if v then
                pW_2[tostring(k)] = true
            end
        end
    end
    return pW_2
end
function fns.fn32(i0, i1)
    local Type = i1.Type
    if Type == "Toggle" then
        return { idx = i0, type = "Toggle", value = i1.Value == true }
    elseif Type == "Slider" then
        return { idx = i0, type = "Slider", value = tostring(i1.Value) }
    elseif Type == "Dropdown" then
        return { idx = i0, type = "Dropdown", multi = i1.Multi == true, value = i1.Value }
    elseif Type == "Input" then
        local vC = i1.Value or ""
        return { idx = i0, type = "Input", text = tostring(vC) }
    elseif Type == "ColorPicker" then
        return { idx = i0, type = "ColorPicker", value = i1.Value:ToHex(), transparency = i1.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = i0,
            type = "KeyPicker",
            mode = i1.Mode,
            key = i1.Value,
            modifiers = i1.Modifiers,
            toggled = i1.Toggled
        }
    else
        return nil
    end
end
function fns.fn35()
    local rC = n_("TokenShopItems")
    local rD = {}
    for k, v in pairs(rC) do
        if v then
            rD[k] = true
        end
    end
    return rD
end
function fns.onExportConfigToClipboard()
    local v5_1
    local v4_1
    v4_1, v5_1 = pcall(HttpService.JSONEncode, HttpService, nb())
    if not v4_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local v4_2 = setclipboard
    local wa = if v4_2 then 1 else 0
    local v8 = 649 * wa + 4003 * (1 - wa)
    local v9 = 2521 * wa + 2927 * (1 - wa)
    if not ((v8 * 2972 + v9 * 2514 + v8 * v9) % 16777213 == 9902751) then
        v4_2 = toclipboard
    end
    local v6 = v4_2
    local v4_3 = type(v6) ~= "function" or not pcall(v6, v5_1)
    if v4_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
function fns.fn57()
    local py_1
    local pw_1
    pw_1, py_1 = pcall(function()
        return GetMyPlotFolder:InvokeServer()
    end)
    local pA = pw_1 and typeof(py_1) == "Instance"
    if pA then
        return py_1
    end
    return nil
end
function fns.onInputBegan()
    m3 = tick()
end
function fns.fn65()
    local pk = ny()
    local pl = pk and pk:FindFirstChildOfClass("Humanoid")
    return pl
end
function fns.fn81()
    if not Toggles.Fly.Value then
        local vk = nm()
        if vk then
            vk.PlatformStand = false
        end
    end
end
function fns.onCopyPayPalLink()
    nu(nC, "Copied PayPal link")
end
function fns.fn111()
    nu(nh, "Copied Discord invite to clipboard")
end
function fns.onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local uY_1 = ny()
        if uY_1 then
            for i, descendant in ipairs(uY_1:GetDescendants()) do
                local uY_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if uY_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
function fns.worker()
    local uD_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local uC = math.floor(os.clock() - mP)
        if uC < 60 then
            uD_1 = uC .. "s"
        elseif uC < 3600 then
            uD_1 = string.format("%dm %ds", uC // 60, uC % 60)
        else
            uD_1 = string.format("%dh %dm", uC // 3600, uC % 3600 // 60)
        end
        m2:SetText(mX("Session time", uD_1, mH))
    end
end
function fns.fn127(iT, iU)
    local vy_1 = (iT == "Toggle" and Toggles or Options)[iU]
    local vx_2 = type(vy_1) == "table" and vy_1.Type == iT
    return vx_2 and vy_1 or nil
end
function fns.fn130()
    return GetGenerators:InvokeServer()
end
function fns.onCopyJoinScript_JobID()
    local gJ = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, m_)
    nu(gJ, "Copied join script to clipboard")
end
function fns.fn140(ch, ci)
    local qj_3
    if ci == "StartingZone" then
        local StartingZone = ch:FindFirstChild("StartingZone")
        local qj_1 = StartingZone and StartingZone:FindFirstChild("Ground")
        local qi_2 = qj_1
        if qj_1 then
            qj_1 = qi_2:IsA("BasePart")
        end
        if qj_1 then
            return qi_2
        end
        local Unlockables = ch:FindFirstChild("Unlockables")
        local qj_2 = Unlockables and Unlockables:FindFirstChild(tostring(ci))
        local qi_4 = qj_2
        if qj_3 then
            qj_2 = qi_4:FindFirstChild("Ground")
        end
        local qi_5 = qj_2
        if qj_3 then
            qi_5:IsA("BasePart")
        end
        if qj_3 then
            return qi_5
        end
        return nil
    end
    local Unlockables = ch:FindFirstChild("Unlockables")
    qj_3 = Unlockables and Unlockables:FindFirstChild(tostring(ci))
    local qi_7 = qj_3
    if qj_3 then
        qj_3 = qi_7:FindFirstChild("Ground")
    end
    local qi_8 = qj_3
    if qj_3 then
        qj_3 = qi_8:IsA("BasePart")
    end
    if qj_3 then
        return qi_8
    end
    return nil
end
local function fn158(bb)
    local pg = Options[bb]
    return pg and pg.Value or {}
end
local function onCopyVenmoLink()
    nu(nw, "Copied Venmo link")
end
local function fn207()
    local PlayerData = LocalPlayer:FindFirstChild("PlayerData")
    local ur = PlayerData and PlayerData:FindFirstChild("LastDailyReward")
    local uq_1 = ur
    if ur then
        ur = uq_1.Value
    end
    local uq_2 = ur
    local uw = if uq_2 then 1 else 0
    local uu = 2567 * uw + 79 * (1 - uw)
    local uv = 1417 * uw + 38 * (1 - uw)
    if not ((uu * 1639 + uv * 414 + uu * uv) % 16777213 == 8431390) then
        uq_2 = 0
    end
    local ur_1 = uq_2
    local uq_3 = Config.DailyRewardSeconds or 86400
    local uq_4 = ur_1 > 0 and os.time() - ur_1 < uq_3
    if uq_4 then
        return
    end
    pcall(function()
        BaseShopEvent:FireServer("ClaimDailyReward")
    end)
end
local function fn217(cu)
    local qp = mJ()
    local qq = {}
    local qr = {}
    for k in pairs(qp) do
        if m0(cu, k) then
            local qp_1 = tonumber(k)
            if qp_1 then
                table.insert(qq, qp_1)
            else
                table.insert(qr, k)
            end
        end
    end
    table.sort(qr, function(cC, cD)
        if cC == "StartingZone" then
            return true
        elseif cD == "StartingZone" then
            return false
        else
            return cC < cD
        end
    end)
    table.sort(qq)
    for i, v in ipairs(qq) do
        table.insert(qr, tostring(v))
    end
    return qr
end
local function fn228()
    local pq = ny()
    local pr = pq and pq:FindFirstChild("HumanoidRootPart")
    return pr
end
local function fn240(db, dc, dd, de, df)
    local q0_1
    for i, v in ipairs(db) do
        local attr4 = v:GetAttribute("LocalX")
        local attr3 = v:GetAttribute("LocalZ")
        local attr2 = v:GetAttribute("BuildingId")
        local qY_1
        local attr = v:GetAttribute("Rot")
        local q_ = attr2 or ""
        q0_1, qY_1 = mZ(q_, attr)
        if nO(dc, dd, de, df, attr4, attr3, q0_1, qY_1) then
            return true
        end
    end
    return false
end
local function onPickupPower()
    task.spawn(mN)
end
local function fn265(a_)
    local o9 = Toggles[a_]
    return o9 ~= nil and o9.Value == true
end
local function fn270()
    local sR = mY()
    if not sR then
        return
    end
    local CityZones = sR:FindFirstChild("CityZones")
    if not CityZones then
        return
    end
    local sR_1 = nt()
    for i, child in ipairs(CityZones:GetChildren()) do
        local Name = child.Name
        if Name ~= "River" then
            local sT = false
            for i, child in ipairs(child:GetChildren()) do
                local sU_1 = (child:IsA("Model"))
                if sU_1 then
                    local sV = child:GetAttribute("PlacedCity") or child:GetAttribute("CityTier")
                    sU_1 = sV
                end
                if sU_1 then
                    sT = true
                    break
                end
            end
            if sT then
                mM(UpgradeCity, Name)
                task.wait(0.2)
            else
                if sR_1[Name] or Name == "StartingZone" then
                    mM(BuildCity, Name)
                    task.wait(0.2)
                end
            end
        end
    end
end
local function fn309(aA, aB)
    return string.format('<font color="%s">%s</font>', aB, aA)
end
local function onRenderStepped(h5)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local vd_1 = nm()
        if vd_1 then
            vd_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local vd_3 = nc()
        local ve = nm()
        if vd_3 and ve then
            ve.PlatformStand = true
            local ve_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                ve_1 = ve_1 + CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                ve_1 = ve_1 - CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                ve_1 = ve_1 - CurrentCamera2.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                ve_1 = ve_1 + CurrentCamera2.CFrame.RightVector
            end
            local vj = if UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
            if vj == 1 then
                ve_1 = ve_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                ve_1 = ve_1 - Vector3.new(0, 1, 0)
            end
            vd_3.AssemblyLinearVelocity = Vector3.zero
            if ve_1.Magnitude > 0 then
                vd_3.CFrame = vd_3.CFrame + ve_1.Unit * Options.FlySpeed.Value * h5
            end
        end
    end
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            n6(true)
        end
    end
end
local function fn361(cR)
    return math.floor(cR * 2 + 0.5) / 2
end
local function fn365()
    mM(BuyExpansion)
end
local function fn377()
    local sL = mU()
    if next(sL) == nil then
        return
    end
    for k in pairs(sL) do
        mM(PurchaseUpgrade, k)
        task.wait(0.15)
    end
end
local function onCopyLitecoinAddress()
    nu(n4, "Copied Litecoin address")
end
local function fn413(ds, du, dv)
    local rj_1
    local ri_1
    local q8 = m0(ds, du)
    if not q8 then
        return nil
    end
    local q9 = mW(ds, du)
    local rc = q8.Size.X * 0.5
    local rd = q8.Size.Z * 0.5
    local re = { 0, 1, 2, 3 }
    local rf = 2.5
    local rg = nX(-rc + 2.5)
    while rg <= rc - rf + 0.01 do
        local rh = nX(-rd + rf)
        while rh <= rd - rf + 0.01 do
            for i, v in ipairs(re) do
                rj_1, ri_1 = mZ(dv, v)
                local rk = m7(q8, rg, rh, rj_1, ri_1) and not mL(q9, rg, rh, rj_1, ri_1)
                if rk then
                    return rg, rh, v
                end
            end
            rh += rf
        end
        rg += rf
    end
    return nil
end
local function fn416(d9)
    local rW = mT("MinPlaceRarity", "Common")
    local rX = mT("MaxPlaceRarity", "Galactic")
    local rZ = nD[d9 or ""] or 0
    return rZ >= (nD[rW] or 1) and rZ <= (nD[rX] or #nJ)
end
local function fn424(bL)
    local pJ_1
    local pH = BuildingData[bL]
    local pI = pH and pH.Footprint
    local pI_1
    if typeof(pI) == "Vector2" then
        return math.max(1, math.floor(pI.X + 0.5)), math.max(1, math.floor(pI.Y + 0.5))
    elseif type(pI) == "string" then
        pI_1, pJ_1 = string.match(pI, "([%d%.]+)%s*,%s*([%d%.]+)")
        local max = math.max
        local pL = (tonumber(pI_1))
        local pQ = if pL then 1 else 0
        local pO = 3434 * pQ + 431 * (1 - pQ)
        local pP = 800 * pQ + 1913 * (1 - pQ)
        if not ((pO * 2404 + pP * 3174 + pO * pP) % 16777213 == 13541736) then
            pL = 5
        end
        local pI_2 = max(1, math.floor(pL))
        local pM = tonumber(pJ_1) or 5
        return pI_2, max(1, math.floor(pM))
    else
        return 5, 5
    end
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local u8_1 = nm()
        if u8_1 then
            u8_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function onCopyUSDTAddress()
    nu(nP, "Copied USDT address")
end
local function onUnload()
    Library:Unload()
end
local function fn482(hf)
    local DiscordGroup = hf:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = ng })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = ng })
end
local function fn507()
    local tb = mY()
    if not tb then
        return
    end
    local tc = mJ()
    local Unlockables = tb:FindFirstChild("Unlockables")
    if Unlockables then
        local te = {}
        for i, child in ipairs(Unlockables:GetChildren()) do
            local td_1 = tonumber(child.Name)
            if td_1 then
                table.insert(te, td_1)
            end
        end
        table.sort(te)
        for i, v in ipairs(te) do
            if not tc[tostring(v)] then
                mM(UnlockZone, v)
                task.wait(0.2)
            end
        end
    end
    local td_2 = nt()
    local CityZones = tb:FindFirstChild("CityZones")
    if CityZones then
        local tb_1 = {}
        for i, child in ipairs(CityZones:GetChildren()) do
            local tc_2 = tonumber(child.Name)
            if tc_2 then
                table.insert(tb_1, tc_2)
            end
        end
        table.sort(tb_1)
        for i, v in ipairs(tb_1) do
            if not td_2[tostring(v)] then
                mM(UnlockCityZone, v)
                task.wait(0.2)
            end
        end
    end
end
local function fn564(a4, a5)
    local pc = Options[a4]
    local pd = pc and pc.Value
    local pd_1 = pd ~= ""
    local pe = type(pd) == "string" and pd_1
    if pe then
        return pd
    end
    return a5
end
local function fn568()
    return LocalPlayer.Character
end
local function fn612()
    if not Toggles.WalkSpeedEnabled.Value then
        local vm = nm()
        if vm then
            vm.WalkSpeed = 16
        end
    end
end
local function fn622()
    local rs = n_("PowerShopItems")
    local rt = {}
    for k, v in pairs(rs) do
        if v then
            local rs_1 = na[k] or k
            rt[rs_1] = true
        end
    end
    return rt
end
local function fn627(cT, cU, cV, cW, cX, cY, cZ, c_)
    local qQ = math.abs(cT - cX) < (cV + cZ) * 0.5 - 0.01 and math.abs(cU - cY) < (cW + c_) * 0.5 - 0.01
    return qQ
end
local function fn643()
    pcall(function()
        connection:Disconnect()
    end)
    pcall(function()
        connection2:Disconnect()
    end)
    n6(false)
    local wo = nm()
    if wo then
        wo.PlatformStand = false
        wo.WalkSpeed = 16
    end
end
local function fn648(cH, cI)
    local Buildings = cH:FindFirstChild("Buildings")
    local qE = Buildings and Buildings:FindFirstChild(tostring(cI))
    local qD_1 = {}
    if qE then
        for i, child in ipairs(qE:GetChildren()) do
            local qE_1 = child:IsA("Model") and child:GetAttribute("LocalX") ~= nil and child:GetAttribute("LocalZ") ~= nil
            if qE_1 then
                table.insert(qD_1, child)
            end
        end
    end
    return qD_1
end
local function onInputChanged(hE)
    local UserInputType = hE.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        m3 = tick()
    end
end
local function fn723()
    local sE_1
    local sD_1
    local sC = ne()
    if next(sC) == nil then
        return
    end
    sD_1, sE_1 = pcall(function()
        return GetShopState:InvokeServer()
    end)
    local sF = sD_1 and type(sE_1) == "table"
    local sF_1 = sF and sE_1 or {}
    for k in pairs(sC) do
        local sC_1 = sF_1[k]
        if sC_1 == nil or sC_1 > 0 then
            mM(BuyItem, k)
            task.wait(0.15)
        end
    end
end
local function fn735()
    local p9_1
    local p8_1
    p8_1, p9_1 = pcall(function()
        return GetUnlockedCityZones:InvokeServer()
    end)
    local qa = p8_1
    local p8_2 = {}
    if qa then
        qa = type(p9_1) == "table"
    end
    if qa then
        for k, v in pairs(p9_1) do
            if v then
                p8_2[tostring(k)] = true
            end
        end
    end
    return p8_2
end
local function onImportConfigFromClipboardTex()
    local wd_1
    local wb = Options.SaveManager_ImportSource.Value or ""
    local wb_1
    local wc = tostring(wb):match("^%s*(.-)%s*$")
    if wc == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    wb_1, wd_1 = pcall(HttpService.JSONDecode, HttpService, wc)
    local wc_1 = not wb_1 or type(wd_1) ~= "table" or type(wd_1.objects) ~= "table"
    if wc_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local wb_2 = 0
    for i, v in ipairs(wd_1.objects) do
        if nV(v) then
            wb_2 += 1
        end
    end
    if wb_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local wd_2 = wb_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(wb_2, wd_2), 6)
end
local function fn744()
    local rL = n_("PlacePowerItems")
    local rM = false
    local rN = {}
    for k, v in pairs(rL) do
        if v then
            rM = true
            local rL_1 = na[k] or k
            rN[rL_1] = true
        end
    end
    return rN, rM
end
local function fn786(aD, aE, aF)
    return string.format("<b>%s</b> %s %s", aD, m6("-", "#5a6070"), m6(aE, aF))
end
local function onCopyEthereumAddress()
    nu(nS, "Copied Ethereum address")
end
local function fn806()
    local vF = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local vG = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if vG then
                local vG_1 = nk(k, v)
                if vG_1 then
                    vF[#vF + 1] = vG_1
                end
            end
        end
    end
    table.sort(vF, function(jb, jc)
        if jb.type ~= jc.type then
            return jb.type < jc.type
        end
        return jb.idx < jc.idx
    end)
    return { objects = vF }
end
local function onCopySolanaAddress()
    nu(nH, "Copied Solana address")
end
local function onRscripts()
    nu(nf, "Copied Rscripts profile to clipboard")
end
local function fn824()
    local tZ = mY()
    if not tZ then
        return
    end
    local Buildings = tZ:FindFirstChild("Buildings")
    if not Buildings then
        return
    end
    local tZ_1 = {}
    for i, child in ipairs(Buildings:GetChildren()) do
        for i, child2 in ipairs(child:GetChildren()) do
            if child2:IsA("Model") then
                local t__1 = child2:GetAttribute("BuildingId")
                local attr2 = child2:GetAttribute("LocalX")
                local attr = child2:GetAttribute("LocalZ")
                local t2 = child2:GetAttribute("ZoneName") or child.Name
                local t3 = t__1
                if t3 then
                    t3 = BuildingData[t__1]
                end
                local t2_1 = t3
                local t3_1 = type(t__1) == "string" and t2_1 and t2_1.Type == "Generator"
                if t3_1 and attr2 ~= nil and attr ~= nil then
                    table.insert(tZ_1, { zoneName = t2, buildingId = t__1, x = attr2, z = attr })
                end
            end
        end
    end
    for i, v in ipairs(tZ_1) do
        mM(PickupBuilding, v.zoneName, v.buildingId, v.x, v.z)
        task.wait(0.08)
    end
end
local function worker2()
    while not Library.Unloaded do
        task.wait(0.75)
        if m4("AutoBuyPowerShop") then
            pcall(nd)
        end
        if m4("AutoBuyTokenShop") then
            pcall(n3)
        end
        if m4("AutoBuyZones") then
            pcall(n8)
        end
        if m4("AutoExpandPlot") then
            pcall(mI)
        end
        if m4("AutoUpgradeNeighbourhood") then
            pcall(nv)
        end
        if m4("AutoPlacePower") then
            pcall(n0)
        end
        if m4("AutoClaimDailyRewards") then
            pcall(mV)
        end
    end
end
local function fn868()
    local tJ_1
    local tI_1
    local tH_1
    local tD = mY()
    if not tD then
        return
    end
    local tE = nM(tD)
    local tF = mQ()
    if #tF == 0 or #tE == 0 then
        return
    end
    local tO = false
    for i, v in ipairs(tF) do
        local tN = 10
        while true do
            if tN < 5 then
                if tN < 2 then
                    if tN < 1 then
                        tN = 2
                    else
                        tN = 8
                    end
                elseif tN < 3 then
                    tN = if tF > 0 then 7 else 4
                elseif tN < 4 then
                    break
                else
                    tN = 8
                end
            elseif tN < 8 then
                if tN < 6 then
                    tN = 0
                elseif tN < 7 then
                    tO = true
                    tN = 3
                else
                    local tG_1 = false
                    for i, v2 in ipairs(tE) do
                        tI_1, tJ_1, tH_1 = m8(tD, v2, v.id)
                        if tI_1 ~= nil and tJ_1 ~= nil then
                            local id = v.id
                            local tL_1 = tH_1 or 0
                            local tH_2 = mM(PlaceBuilding, v2, id, tI_1, tJ_1, tL_1)
                            if tH_2 == true then
                                tG_1 = true
                                tF -= 1
                                task.wait(0.15)
                                break
                            end
                        end
                    end
                    tN = if not tG_1 then 1 else 9
                end
            elseif tN < 9 then
                tN = 3
            elseif tN < 10 then
                tN = 5
            else
                tF = v.amount
                tN = 0
            end
        end
        if tO then
            break
        end
    end
end
local function fn913(c2, c3, c4, c5, c6)
    local qS = c2.Size.X * 0.5
    local qT = c2.Size.Z * 0.5
    local qU = math.abs(c3) + c5 * 0.5 <= qS + 0.01 and math.abs(c4) + c6 * 0.5 <= qT + 0.01
    return qU
end
local function fn926()
    local uy_1
    local ux_1
    if identifyexecutor then
        uy_1, ux_1 = identifyexecutor()
        local uz = uy_1 ~= ""
        local uA = type(uy_1) == "string" and uz
        if uA then
            local uz_1 = type(ux_1) == "string" and ux_1 ~= "" and uy_1 .. " " .. ux_1
            np = uz_1 or uy_1
        end
    end
end
local function fn939()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    m1 = tick()
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local uU = tick() - m3
            local uV = tick() - m1
            if uU >= 300 and uV >= 60 then
                pcall(mS)
            else
                if uU < 300 and uV >= 300 then
                    pcall(mS)
                end
            end
        end
    end
end
local function onCopyBitcoinAddress()
    nu(nY, "Copied Bitcoin address")
end
local function fn986(bT, bU)
    local pS_1
    local pR_1
    pR_1, pS_1 = nn(bT)
    local pT = tonumber(bU) or 0
    if pT % 2 == 1 then
        return pS_1, pR_1
    end
    return pR_1, pS_1
end
PurchaseUpgrade = nil
mH = nil
mI = nil
mJ = nil
GetShopState = nil
mL = nil
mM = nil
mN = nil
GetGenerators = nil
mP = nil
mQ = nil
BuyItem = nil
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
m2 = nil
m3 = nil
m4 = nil
BuildingData = nil
m6 = nil
m7 = nil
m8 = nil
Config = nil
na = nil
nb = nil
nc = nil
nd = nil
ne = nil
nf = nil
ng = nil
nh = nil
BaseShopEvent = nil
nk = nil
PickupBuilding = nil
nm = nil
nn = nil
LocalPlayer = nil
np = nil
PlaceBuilding = nil
Workspace = nil
BuildCity = nil
local nj
nt = nil
nu = nil
nv = nil
nw = nil
connection2 = nil
ny = nil
UpgradeCity = nil
Options = nil
nC = nil
nD = nil
UnlockCityZone = nil
Toggles = nil
nH = nil
CurrentCamera2 = nil
nJ = nil
HttpService = nil
UnlockZone = nil
nM = nil
SaveManager = nil
nO = nil
nP = nil
VirtualUser = nil
GetUnlockedCityZones = nil
nS = nil
UserInputService = nil
GetUnlockedZones = nil
nV = nil
Library = nil
nX = nil
nY = nil
connection = nil
n_ = nil
n0 = nil
GetMyPlotFolder = nil
n3 = nil
n4 = nil
n6 = nil
BuyExpansion = nil
n8 = nil
local CoreGui, GuiService, n2
CoreGui = nil
GuiService = nil
n2 = nil
local n5
local ou, ov, ow, oy, oA, oB
UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, LocalPlayer, nh, nf, Config, BuildingData, BuyItem, GetGenerators, GetShopState, PurchaseUpgrade, BuyExpansion, GetMyPlotFolder, GetUnlockedZones, GetUnlockedCityZones, UnlockZone, UnlockCityZone, UpgradeCity, BuildCity, PlaceBuilding, PickupBuilding, BaseShopEvent, na = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local wA_2 = game:GetService("Players")
local wA_10 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
LocalPlayer = wA_2.LocalPlayer
local wA_3 = "Power a City"
nh = "https://discord.gg/ehKVq7pf7v"
nf = "https://rscripts.net/@Ouroboros"
local wA_1 = wA_10:WaitForChild("Shared"):WaitForChild("Modules")
Config = require(wA_1:WaitForChild("Config"))
BuildingData = require(wA_1:WaitForChild("BuildingData"))
local wA_17 = wA_10:WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0"):WaitForChild("knit"):WaitForChild("Services")
local wA_8 = wA_17:WaitForChild("ShopService"):WaitForChild("RF")
local wA_24 = wA_17:WaitForChild("UpgradeService"):WaitForChild("RF")
local wA_14 = wA_17:WaitForChild("PlotService"):WaitForChild("RF")
local wA_4 = wA_17:WaitForChild("CityService"):WaitForChild("RF")
local wA_11 = wA_17:WaitForChild("BuildService"):WaitForChild("RF")
BuyItem = wA_8:WaitForChild("BuyItem")
GetGenerators = wA_8:WaitForChild("GetGenerators")
GetShopState = wA_8:WaitForChild("GetShopState")
PurchaseUpgrade = wA_24:WaitForChild("PurchaseUpgrade")
BuyExpansion = wA_14:WaitForChild("BuyExpansion")
GetMyPlotFolder = wA_14:WaitForChild("GetMyPlotFolder")
GetUnlockedZones = wA_14:WaitForChild("GetUnlockedZones")
GetUnlockedCityZones = wA_14:WaitForChild("GetUnlockedCityZones")
UnlockZone = wA_14:WaitForChild("UnlockZone")
UnlockCityZone = wA_14:WaitForChild("UnlockCityZone")
UpgradeCity = wA_4:WaitForChild("UpgradeCity")
BuildCity = wA_4:WaitForChild("BuildCity")
PlaceBuilding = wA_11:WaitForChild("PlaceBuilding")
PickupBuilding = wA_11:WaitForChild("PickupBuilding")
BaseShopEvent = wA_10:WaitForChild("Assets"):WaitForChild("Events"):WaitForChild("BaseShopEvent")
local wA_16 = {}
local wA_19 = {}
na = {}
wA_6, wA_9 = pcall(fns.fn130)
local wA_26 = wA_6
if wA_26 then
    wA_2 = 6
    repeat
        local xo = bit32.rrotate(bit32.bxor(bit32.lrotate(wA_2, 5), string.byte(tostring(wA_2))), 18)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(xo, 1033730673), 2878727588), (bit32.bxor(bit32.band(xo, 3261236622), 977035286))), 2878727588), 977035286) == xo then
            wA_26 = type(wA_9) == "table"
        else
            wA_9 = type(wA_26) == "table"
        end
        wA_2 = (wA_2 + 7) % 8
    until (wA_2 * 5 + 6) % 8 == 7
end
if wA_26 then
    for i, v in ipairs(wA_9) do
        wA_2 = v.id
        wA_11 = v.shopName or wA_2
        wA_22 = wA_11
        if type(wA_2) == "string" then
            table.insert(wA_16, wA_22)
            table.insert(wA_19, wA_2)
            na[wA_22] = wA_2
            na[wA_2] = wA_2
        end
    end
end
wA_2 = {}
wA_11 = Config.PLAYTIME_UPGRADE_IDS
if type(wA_11) == "table" then
    for i, v in ipairs(wA_11) do
        table.insert(wA_2, v)
    end
end
Library, SaveManager, Toggles, Options, mH, n4, nY, nS, nP, nH, nC, nw, nJ, nD, nu, ng, m6, mX, m4, mT, n_, ny, nm, nc, mY, mM = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
wA_26 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
nu = fns.fn8
ng = fns.fn111
m6 = fn309
mX = fn786
wA_14 = "#7fd47f"
wA_4 = "#6ec1ff"
mH = "#e8a34d"
local wA_18 = "#8b93a3"
n4 = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
nY = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
nS = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
nP = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
nH = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
nC = "https://paypal.me/TheTruckerGOD"
nw = "https://venmo.com/u/miserablemusic"
wA_6 = "#345d9d"
wA_19 = "#f7931a"
wA_10 = "#627eea"
wA_1 = "#26a17b"
wA_17 = "#14f195"
wA_8 = "#0070ba"
wA_24 = "#008cff"
if false or (not Toggles or false) or (not Toggles or not Toggles) and (mY and not mY) or not Toggles and mY and (mY or not Toggles) and (false and Toggles and (false and Toggles)) or not (false or (not Toggles or false) or (not Toggles or not Toggles) and (mY and not mY) or not Toggles and mY and (mY or not Toggles) and (false and Toggles and (false and Toggles))) then
    m4 = fn265
else
    nm = fn265
end
mT = fn564
n_ = fn158
ny = fn568
nm = fns.fn65
nc = fn228
mY = fns.fn57
mM = function(bA, ...)
    local pF_1
    local pE_1
    local pD_1
    local pC_1
    pC_1, pF_1, pD_1, pE_1 = pcall(function(...)
        return bA:InvokeServer(...)
    end, ...)
    if not pC_1 then
        return false, tostring(pF_1)
    end
    return pF_1, pD_1, pE_1
end
nJ = { "Common", "Uncommon", "Rare", "Legendary", "Mythic", "Royal", "Galactic" }
nD = {}
for i, v in ipairs(nJ) do
    nD[v] = i
end
wA_9, ow, np, wA_22, ov, m2, m_, ou, nn, mZ, mJ, nt, m0, nM, mW, nX, nO, m7, mL, m8, ne, mU, n5, nj, mQ, nd, n3, nv, n8, mI, n0, mN, mV = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
wA_11 = 34
repeat
    oy = (wA_11 * 13 + 10) % 14 + 1
    if oy <= 7 then
        if oy <= 4 then
            if oy <= 2 then
                if oy <= 1 then
                    oA = {
                        "hhnjptmnyac",
                        "wqlaklbumf",
                        "oulb",
                        "etfdnkflrw",
                        "azcxn",
                        "bzp",
                        "uslsfg",
                        "jxnkamppf",
                        "slegfp",
                        "qpnoxnastf"
                    }
                    local xg = wA_11
                    oB = oA[xg % 10 + 1]
                    if oB:len() <= oB:gsub("(.)", "%1%1", xg % 3 % 2 + 1):len() then
                        ow = {
                            Info = wA_9:AddTab("Info", "info"),
                            Main = wA_9:AddTab("Main", "zap"),
                            Player = wA_9:AddTab("Player", "person-standing"),
                            Settings = wA_9:AddTab("Settings", "settings")
                        }
                    else
                        wA_9 = {
                            Main = ow:AddTab("Main", "zap"),
                            Info = ow:AddTab("Info", "info"),
                            Settings = ow:AddTab("Settings", "settings"),
                            Player = ow:AddTab("Player", "person-standing")
                        }
                    end
                    wA_11 = (wA_11 + 27) % 56
                else
                    oA = (vector.create((wA_11 * 7 + 4) % 11 + 1, (wA_11 * 2 + 1) % 13 + 1, (wA_11 * 14 + 6) % 17 + 1))
                    oB = (vector.create((wA_11 * 7 + 6) % 11 + 1, (wA_11 * 9 + 9) % 13 + 1, (wA_11 * 6 + 4) % 17 + 1))
                    local xN = vector.cross(oA, oB)
                    local xO = vector.dot(oA, oB)
                    if vector.dot(xN, xN) + xO * xO == vector.dot(oA, oA) * vector.dot(oB, oB) + 3 then
                        ov = "Unknown"
                        pcall(fn926)
                        m2 = (nil):AddLeftGroupbox("Account", "circle-user")
                        m2:AddLabel(wA_22("User", mX.Name, LocalPlayer), true)
                        m2:AddLabel(wA_22("Status", "Keyless", LocalPlayer), true)
                        m2:AddLabel(wA_22("Executor", "Unknown", LocalPlayer), true)
                        np = (nil):AddLeftGroupbox("Game Info", "gamepad-2")
                        np:AddLabel(wA_3(m6 .. " [" .. tostring(game.PlaceId) .. "]", mH), true)
                        np:AddLabel(wA_22("Place ID", tostring(game.PlaceId), mH), true)
                        ow = np:AddLabel(wA_22("Session time", "0s", wA_14), true)
                    else
                        np = "Unknown"
                        pcall(fn926)
                        wA_22 = ow.Info:AddLeftGroupbox("Account", "circle-user")
                        wA_22:AddLabel(mX("User", LocalPlayer.Name, wA_14), true)
                        wA_22:AddLabel(mX("Status", "Keyless", wA_14), true)
                        wA_22:AddLabel(mX("Executor", np, wA_14), true)
                        ov = ow.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                        ov:AddLabel(m6(wA_3 .. " [" .. tostring(game.PlaceId) .. "]", wA_4), true)
                        ov:AddLabel(mX("Place ID", tostring(game.PlaceId), wA_4), true)
                        m2 = ov:AddLabel(mX("Session time", "0s", mH), true)
                    end
                    wA_11 = (wA_11 + 13) % 56
                end
            elseif oy <= 3 then
                oA = {
                    "zjqhv",
                    "lhfgm",
                    "yzxcdt",
                    "yurafcra",
                    "qgi",
                    "bhxq",
                    "hpdimqhvwblu",
                    "tuygnoupa",
                    "vqfspndonz",
                    "wcyw",
                    "mffme",
                    "rqzzvfuxnvbf",
                    "djhehregadpo",
                    "qnadyrggn"
                }
                if oA[(wA_11 * 7 + 18) % 14 + 1] < oA[(wA_11 * 7 + 18) % 14 + 1] then
                    np = tostring(game.JobId)
                else
                    m_ = tostring(game.JobId)
                end
                wA_11 = (wA_11 + 55) % 56
            else
                oA = {
                    "mqvhtc",
                    "aixqgvkts",
                    "mveuhtwmhul",
                    "tsdvkochh",
                    "xvqf",
                    "zxeoniozmp",
                    "tubrslzgw",
                    "wbyxlqwak",
                    "yjeewydl",
                    "zyilkxxgjj",
                    "xiafvxckvn",
                    "dfzpgerfs",
                    "vfzsmsm",
                    "eladtnj"
                }
                if oA[(wA_11 * 62 + 74) % 14 + 1] < oA[(wA_11 * 62 + 74) % 14 + 1] then
                    m_ = #ou > 18
                else
                    ou = #m_ > 18
                end
                wA_11 = (wA_11 + 41) % 56
            end
        elseif oy <= 6 then
            if oy <= 5 then
                if (mN and not nj or (not ov or not ov)) and (ov or nj or mN and nd) or (not m_ and nj or (ov or m_)) and (not ov and ov and (not nj and mN)) or not ((mN and not nj or (not ov or not ov)) and (ov or nj or mN and nd) or (not m_ and nj or (ov or m_)) and (not ov and ov and (not nj and mN))) then
                    nn = fn424
                    mZ = fn986
                else
                    mZ = fn424
                    nn = fn986
                end
                wA_11 = (wA_11 + 41) % 56
            else
                oA = {
                    "anniba",
                    "mmivxur",
                    "fyg",
                    "whrxcxetokn",
                    "slgb",
                    "pkqmn",
                    "haxbafrmwa",
                    "qqvad",
                    "ebsa",
                    "bhzxrh",
                    "stkhqecdl"
                }
                local xn = wA_11
                oB = oA[xn % 11 + 1]
                if oB:len() <= oB:gsub("(.)", "%1%1", xn % 3 % 2 + 1):len() then
                    mJ = fns.fn12
                    nt = fn735
                    m0 = fns.fn140
                    nM = fn217
                    mW = fn648
                else
                    nM = fns.fn12
                    mW = fn735
                    nt = fns.fn140
                    m0 = fn217
                    mJ = fn648
                end
                wA_11 = (wA_11 + 13) % 56
            end
        else
            local xu = bit32.rrotate(bit32.bxor(bit32.lrotate(wA_11, 29), string.byte(tostring(n8))), 24)
            if bit32.bxor(bit32.lrotate(bit32.bxor(xu, 234062847), 14), 3774858108) ~= bit32.lrotate(xu, 14) then
                nO = fn361
                nX = fn627
            else
                nX = fn361
                nO = fn627
            end
            wA_11 = (wA_11 + 13) % 56
        end
    elseif oy <= 11 then
        if oy <= 9 then
            if oy <= 8 then
                local xH = bit32.rrotate(bit32.bxor(bit32.lrotate(wA_11, 17), string.byte(tostring(ne))), 7)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(xH, 622198827), 2905152247), (bit32.bxor(bit32.band(xH, 3672768468), 3637817665))), 2905152247), 3637817665) == xH then
                    m7 = fn913
                    mL = fn240
                    m8 = fn413
                    ne = fn622
                else
                    ne = fn913
                    m7 = fn240
                    mL = fn413
                    m8 = fn622
                end
                wA_11 = (wA_11 + 13) % 56
            else
                oA = {
                    "mrnusc",
                    "nieibsjcmk",
                    "xhkf",
                    "qkzpluq",
                    "fsciob",
                    "elwykooktn",
                    "ubgcnskl",
                    "fmgqmsalqm",
                    "ophwcbiu",
                    "aaiqsuwpg",
                    "mpa",
                    "ooxadbjn",
                    "kcotfsxmp",
                    "qzggxdg",
                    "rllawervk"
                }
                if oA[(wA_11 * 35 + 61) % 15 + 1] <= oA[(wA_11 * 35 + 61) % 15 + 1] then
                    mU = fns.fn35
                    n5 = fn744
                else
                    n5 = fns.fn35
                    mU = fn744
                end
                wA_11 = (wA_11 + 41) % 56
            end
        elseif oy <= 10 then
            if (wA_11 * 2 + 6) * 10 % 3 == ((wA_11 * 2 + 6) * 10 + 3) % 3 then
                nj = fn416
            else
                wA_22 = fn416
            end
            wA_11 = (wA_11 + 27) % 56
        else
            local xr = bit32.rrotate(bit32.bxor(bit32.lrotate(wA_11, 19), string.byte(tostring(nj))), 15)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(xr, 1422052065), 2732369249), (bit32.bxor(bit32.band(xr, 2872915230), 921600388))), 2732369249), 921600388) == xr then
                mQ = function()
                    local sl, sm, sn, so, sp
                    sl = {}
                    so = {}
                    sp, sn = n5()
                    local function sq(eq)
                        if not eq then
                            return
                        end
                        for i, child in ipairs(eq:GetChildren()) do
                            local r0 = child:IsA("Tool") and not sl[child]
                            if r0 then
                                local attr = child:GetAttribute("BuildingId")
                                local r1 = attr and BuildingData[attr]
                                local r1_4 = type(attr) == "string" and r1 and r1.Type == "Generator"
                                if r1_4 then
                                    local r1_5 = (nj(r1.Rarity))
                                    if r1_5 then
                                        r1_5 = not sn or sp[attr]
                                    end
                                    if r1_5 then
                                        sl[child] = true
                                        local r1_6 = tonumber(child:GetAttribute("Amount")) or 1
                                        table.insert(so, { tool = child, id = attr, amount = math.max(1, r1_6), rarity = r1.Rarity })
                                    end
                                end
                            end
                        end
                    end
                    sq(LocalPlayer:FindFirstChild("Backpack"))
                    sq(ny())
                    sq = mT("PlacePriority", "Best")
                    if sq == "Random" then
                        local sw = #so
                        local sv = -1
                        while false and sw <= 2 or true and sw >= 2 do
                            local sx = sw
                            local sr_2 = math.random(sx)
                            so[sx], so[sr_2] = so[sr_2], so[sx]
                            sw += sv
                        end
                    else
                        sm = sq ~= "Worst"
                        table.sort(so, function(eE, eF)
                            local si = nD[eE.rarity or ""] or 0
                            local si_4 = nD[eF.rarity or ""] or 0
                            if si ~= si_4 then
                                if sm then
                                    return si > si_4
                                end
                                return si < si_4
                            end
                            return eE.id < eF.id
                        end)
                    end
                    return so
                end
                nd = fn723
                n3 = fn377
                nv = fn270
                n8 = fn507
            else
                nd = function()
                    local sl, sm, sn, so, sp
                    sl = {}
                    so = {}
                    sp, sn = n5()
                    local function sq(eq)
                        if not eq then
                            return
                        end
                        for i, child in ipairs(eq:GetChildren()) do
                            local r0 = child:IsA("Tool") and not sl[child]
                            if r0 then
                                local attr = child:GetAttribute("BuildingId")
                                local r1 = attr and BuildingData[attr]
                                local r1_1 = type(attr) == "string" and r1 and r1.Type == "Generator"
                                if r1_1 then
                                    local r1_2 = (nj(r1.Rarity))
                                    if r1_2 then
                                        r1_2 = not sn or sp[attr]
                                    end
                                    if r1_2 then
                                        sl[child] = true
                                        local r1_3 = tonumber(child:GetAttribute("Amount")) or 1
                                        table.insert(so, { tool = child, id = attr, amount = math.max(1, r1_3), rarity = r1.Rarity })
                                    end
                                end
                            end
                        end
                    end
                    sq(LocalPlayer:FindFirstChild("Backpack"))
                    sq(ny())
                    sq = mT("PlacePriority", "Best")
                    if sq == "Random" then
                        local sw = #so
                        local sv = -1
                        while false and sw <= 2 or true and sw >= 2 do
                            local sx = sw
                            local sr_1 = math.random(sx)
                            so[sx], so[sr_1] = so[sr_1], so[sx]
                            sw += sv
                        end
                    else
                        sm = sq ~= "Worst"
                        table.sort(so, function(eE, eF)
                            local si = nD[eE.rarity or ""] or 0
                            local si_2 = nD[eF.rarity or ""] or 0
                            if si ~= si_2 then
                                if sm then
                                    return si > si_2
                                end
                                return si < si_2
                            end
                            return eE.id < eF.id
                        end)
                    end
                    return so
                end
                mQ = fn723
                n8 = fn377
                n3 = fn270
                nv = fn507
            end
            wA_11 = (wA_11 + 41) % 56
        end
    elseif oy <= 13 then
        if oy <= 12 then
            if wA_11 * 125256863 + 6 + 6 >= wA_11 * 125256863 + 6 + 6 + 1 then
                mN = fn365
                mI = fn868
                n0 = fn824
            else
                mI = fn365
                n0 = fn868
                mN = fn824
            end
            wA_11 = (wA_11 + 55) % 56
        else
            oy = {
                "fvkwpj",
                "lxnbqbkhdai",
                "nfbmbhsbbu",
                "bxlr",
                "ytak",
                "hvfxahjjub",
                "fpwvqpc",
                "lpyt",
                "jwzmkf",
                "xwg",
                "yuvxem",
                "uqlodtqjnu"
            }
            local xQ = wA_11
            oA = oy[xQ % 12 + 1]
            if oA:len() >= oA:gsub("(.)", "%1%1", xQ % 3 % 2 + 1):len() then
                ne = fn207
            else
                mV = fn207
            end
            wA_11 = (wA_11 + 41) % 56
        end
    else
        if wA_11 * 132681483 + 10 + 1 <= wA_11 * 132681483 + 10 + 1 + 2 then
            wA_9 = Library:CreateWindow({
                Title = "Ouroboros Hub",
                Footer = { { Text = nh, Copyable = true }, "|", wA_3 },
                Icon = 12645376577,
                NotifySide = "Right",
                ShowCustomCursor = false,
                CornerRadius = 10
            })
        else
            wA_3 = nh:CreateWindow({
                CornerRadius = 10,
                ShowCustomCursor = false,
                Icon = 12645376577,
                Title = "Ouroboros Hub",
                NotifySide = "Right",
                Footer = { { Text = Library, Copyable = true }, wA_9, "|" }
            })
        end
        wA_11 = (wA_11 + 27) % 56
    end
until (wA_11 * 9 + 1) % 56 == 27
if ou then
    wA_11 = 0
    repeat
        local xz = bit32.rrotate(bit32.bxor(bit32.lrotate(wA_11, 18), string.byte(tostring(wA_11))), 10)
        if bit32.bxor(bit32.lrotate(bit32.bxor(xz, 2971889335), 24), 3081839470) ~= bit32.lrotate(xz, 24) then
            m_ = string.sub(ou, 1, 18) .. "..."
        else
            ou = string.sub(m_, 1, 18) .. "..."
        end
        wA_11 = (wA_11 + 3) % 8
    until (wA_11 * 5 + 0) % 8 == 7
end
wA_11 = ou or m_
mP = nil
wA_22 = wA_11
ov:AddLabel(mX("Server", wA_22, wA_18), true)
ov:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
mP = os.clock()
task.spawn(fns.worker)
local ScriptsGroup = ow.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(m6("Included in this hub", wA_18), true)
ScriptsGroup:AddLabel(m6(wA_3, wA_4), true)
oB = ow.Info:AddRightGroupbox("Features", "list")
oB:AddLabel(m6("Auto Buy", mH), true)
oB:AddLabel(m6("Auto Upgrade", wA_4), true)
oB:AddLabel(m6("Auto Place", wA_14), true)
oB:AddLabel(m6("Auto Claim", wA_4), true)
oB:AddLabel(m6("Player Utilities", wA_18), true)
oA = ow.Info:AddRightGroupbox("Socials", "link")
oA:AddButton({ Text = "Discord", Func = ng })
oA:AddButton({ Text = "Rscripts", Func = onRscripts })
oy = ow.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
oy:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
oy:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
oy:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
oy:AddButton({ Text = "Copy Discord Invite", Func = ng })
ou = ow.Info:AddRightGroupbox("Donations", "heart")
ou:AddLabel(m6("All donations are optional but appreciated.", mH), true)
ou:AddLabel(m6("If you donate you get a special role, just PING after you donate.", wA_14), true)
ou:AddDivider()
ou:AddLabel(m6("LTC / Litecoin", wA_6), true)
ou:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
ou:AddLabel(m6("BTC / Bitcoin", wA_19), true)
ou:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
ou:AddLabel(m6("ETH / Ethereum", wA_10), true)
ou:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
ou:AddLabel(m6("USDT", wA_1), true)
ou:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
ou:AddLabel(m6("Solana", wA_17), true)
ou:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
ou:AddLabel(m6("PayPal", wA_8), true)
ou:AddButton({ Text = "Copy PayPal Link", Func = fns.onCopyPayPalLink })
ou:AddLabel(m6("Venmo", wA_24), true)
ou:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
ou:AddDivider()
ou:AddLabel(m6("Don't have any of the listed currencies but still wanna donate?", wA_18), true)
ou:AddLabel(m6("DM me and we'll work something out.", wA_4), true)
local FaqGroup = ow.Info:AddRightGroupbox("FAQ", "circle-help")
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
for k, v in pairs(ow) do
    if v ~= ow.Info then
        fn482(v)
    end
end
m3, m1, connection, connection2, CurrentCamera2, mS, n6, n2, nk, nb, nV = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
wA_8 = ow.Main:AddLeftGroupbox("Automation", "bot")
wA_8:AddToggle("AutoBuyPowerShop", { Text = "Auto Buy Power Shop", Default = false })
wA_8:AddDropdown("PowerShopItems", {
    Text = "Power Shop Items",
    Values = wA_16,
    Default = {},
    Multi = true,
    AllowNull = true,
    Searchable = true
})
wA_8:AddToggle("AutoUpgradeNeighbourhood", { Text = "Auto Upgrade Neighbourhood", Default = false })
wA_8:AddToggle("AutoBuyZones", { Text = "Auto Buy Zones", Default = false })
wA_8:AddToggle("AutoExpandPlot", { Text = "Auto Expand Plot", Default = false })
wA_8:AddToggle("AutoBuyTokenShop", { Text = "Auto Buy Token Shop", Default = false })
wA_8:AddDropdown("TokenShopItems", { Text = "Token Shop Items", Values = wA_2, Default = {}, Multi = true, AllowNull = true })
wA_24 = ow.Main:AddRightGroupbox("Place & Rewards", "plug")
wA_24:AddToggle("AutoPlacePower", { Text = "Auto Place Power", Default = false })
wA_24:AddDropdown("PlacePriority", { Text = "Place Priority", Values = { "Best", "Random", "Worst" }, Default = "Best" })
wA_24:AddDropdown("MinPlaceRarity", { Text = "Min Place Rarity", Values = nJ, Default = "Common" })
wA_24:AddDropdown("MaxPlaceRarity", { Text = "Max Place Rarity", Values = nJ, Default = "Galactic" })
wA_24:AddDropdown("PlacePowerItems", {
    Text = "Place Power Items",
    Values = wA_16,
    Default = {},
    Multi = true,
    AllowNull = true,
    Searchable = true
})
wA_24:AddButton({ Text = "Pickup Power", Func = onPickupPower })
wA_24:AddToggle("AutoClaimDailyRewards", { Text = "Auto Claim Daily Rewards", Default = false })
wA_14 = ow.Player:AddLeftGroupbox("Movement", "footprints")
wA_14:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
wA_14:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
wA_14:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
wA_14:AddToggle("NoClip", { Text = "NoClip", Default = false })
wA_14:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
wA_4 = ow.Player:AddRightGroupbox("Fly", "feather")
wA_4:AddToggle("Fly", { Text = "Fly", Default = false })
wA_4:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
wA_22 = ow.Settings:AddLeftGroupbox("Menu")
wA_22:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
wA_22:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
wA_22:AddButton({ Text = "Unload", Func = onUnload })
m3 = tick()
m1 = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local uO = v
        pcall(function()
            uO:Disable()
        end)
    end
end)
mS = fn939
connection = UserInputService.InputBegan:Connect(fns.onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
task.spawn(antiAfkLoop)
RunService.Stepped:Connect(fns.onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera2 = Workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fns.fn81)
Toggles.WalkSpeedEnabled:OnChanged(fn612)
n6 = function(it)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not it)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not it
        end
    end)
    if not it then
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
do
    Toggles.AntiGameplayPause:OnChanged(fns.fn2)
    task.spawn(antiGameplayPauseLoop)
    task.spawn(worker2)
    wA_26:SetLibrary(Library)
    wA_26:SetFolder("OuroborosHub")
    wA_26:SaveDefault("Monochrome")
    wA_26:ApplyToTab(ow.Settings)
    wA_26:LoadDefault()
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    SaveManager:SetFolder("OuroborosHub/PowerACity")
    wA_17 = SaveManager:BuildConfigSection(ow.Settings)
end
n2 = fns.fn127
nk = fns.fn32
nb = fn806
nV = function(je)
    local vZ
    vZ = nil
    local v_ = type(je) ~= "table" or type(je.idx) ~= "string" or type(je.type) ~= "string" or SaveManager.Ignore[je.idx]
    if v_ then
        return false
    end
    vZ = n2(je.type, je.idx)
    if not vZ then
        return false
    end
    local v__1 = pcall(function()
        if je.type == "Input" then
            if type(je.text) ~= "string" then
                return
            end
            vZ:SetValue(je.text)
        elseif je.type == "ColorPicker" then
            vZ:SetValueRGB(Color3.fromHex(je.value), je.transparency)
        elseif je.type == "KeyPicker" then
            vZ:SetValue({ je.key, je.mode, je.modifiers })
            if je.mode == "Toggle" and je.toggled ~= nil then
                vZ.Toggled = je.toggled
                vZ:Update()
            end
        else
            vZ:SetValue(je.value)
        end
    end)
    return v__1
end
wA_17:AddDivider()
wA_17:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
wA_17:AddButton("Export Config to Clipboard", fns.onExportConfigToClipboard)
wA_17:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
Library:OnUnload(fn643)
