local fns = {}
local tq
local s7
local EggToolDisplay
local tw
local Assets
local td
local tV
local tC
local tj
local up
local tp
local t6
local s6
local tO
local uv
local tv
local uc
local tc
local ui
local ti
local AreaEggSlotIdentity
local PlotCmds
local to
local Trails
local tN
local Save
local tu
local ub
local tb
local tT
local uh
local tZ
local tG
local t4
local s4
local tM
local LocalPlayer
local Trails2
local ua
local tS
local tz
local ug
local tg
local Backpack2
local um
local tm
local t3
local s3
local Options
local t9
local s9
local tR
local Index
local uf
local AssetInventory
local BaseUpgradeClient
local Plots2
local s2
local tK
local EggCmds
local tr
local s8
local tQ
local Toggles
local ue
local tW
local tD
local tk
local t1
local Library
local uq
function fns.fn2(i8)
    uc("BuyTrails", i8, function()
        return tO.TrailDelay
    end, s6)
end
function fns.fn15()
    local xo_1
    local xm = tG()
    local xm_2
    local xm_1 = xm and xm.Position or Vector3.zero
    xo_1, xm_2 = nil, -math.huge
    for i, v in ipairs(tW()) do
        if v.State == nil or v.State == "Slot" or v.State == "Available" then
            local xp_1 = ti(tO.StealZones, v.AreaId) and ti(tO.StealRarities, v.Rarity)
            if xp_1 then
                local xp_2 = typeof(v.BottomCFrame) == "CFrame" and v.BottomCFrame.Position
                local xq_1 = v.Rank * 1000000 - ((xp_2 or xm_1) - xm_1).Magnitude
                if xq_1 > xm_2 then
                    xm_2 = xq_1
                    xo_1 = v
                end
            end
        end
    end
    return xo_1
end
function fns.fn60(aG, aH)
    if aG.num == aH.num then
        return aG.name < aH.name
    end
    return aG.num < aH.num
end
function fns.fn66(iJ)
    tO.PlaceRarities = s4(iJ)
end
function fns.fn79()
    return not tR.Unloaded
end
function fns.fn90(cb)
    local wA = {}
    if type(cb) ~= "table" then
        return wA
    end
    for k, v in pairs(cb) do
        local wB = v == true
        local wC = type(k) == "string" and wB
        local wC_1 = wC and k or v
        if type(wC_1) == "string" then
            wA[wC_1] = true
        end
    end
    return wA
end
function fns.fn114(jE)
    local BL = tonumber(jE) or 32
    t1.WalkSpeed = math.clamp(BL, 16, 250)
    if t1.WalkSpeedEnabled then
        tR.SetWalkSpeedEnabled(true)
    end
end
function fns.fn139()
    local yQ = t3()
    if yQ then
        tm(yQ)
        task.wait(0.1)
    end
end
function fns.fn153()
    local yt = uf()
    local yu = yt and yt.EggInventory
    if type(yu) ~= "table" then
        return nil
    end
    for k, v in pairs(yu) do
        local yt_2 = type(v) == "table" and v.Placement == nil
        if yt_2 then
            local yt_3 = v.AssetCategory or v.Category or v.Id
            local yu_1 = t9(yt_3)
            if ti(tO.PlaceRarities, yu_1) then
                return tostring(k), yu_1
            end
        end
    end
    return nil
end
function fns.fn155(iv)
    uc("Hatch", iv, function()
        return tO.HatchDelay
    end, to)
end
function fns.fn227(a1)
    tO.Status = tostring(a1)
end
function fns.fn228(iZ)
    uc("UpgradeTreadmill", iZ, function()
        return tO.UpgradeDelay
    end, tV)
end
function fns.fn248()
    local AG_1
    local AD = uf()
    local AE = AD and AD.Inventory
    local AE_1
    AE_1, AG_1 = {}, {}
    local AH = AD and type(AD.EquippedAssets) == "table"
    if AH then
        for k, v in pairs(AD.EquippedAssets) do
            AE_1[tostring(v)] = true
        end
    end
    local AH_1 = AD and type(AD.FavoriteAssets) == "table"
    if AH_1 then
        for k, v in pairs(AD.FavoriteAssets) do
            if v == true then
                AG_1[tostring(k)] = true
            elseif type(v) == "string" then
                AG_1[v] = true
            end
        end
    end
    local AD_1 = {}
    if type(AE) ~= "table" then
        return AD_1
    end
    for k, v in pairs(AE) do
        local AF_1 = tostring(k)
        local AH_2 = not AE_1[AF_1]
        if AH_2 ~= false then
            AH_2 = not AG_1[AF_1]
        end
        if AH_2 then
            local AH_3 = type(v) == "table"
            if AH_3 then
                local AI_1 = v.Category or v.AssetCategory
                local A1 = if AI_1 then 1 else 0
                local A_ = 3983 * A1 + 2083 * (1 - A1)
                local A0 = 1684 * A1 + 3784 * (1 - A1)
                if not ((A_ * 290 + A0 * 1372 + A_ * A0) % 16777213 == 10172890) then
                    AI_1 = v.Id
                end
                AH_3 = AI_1
            end
            local AH_4 = AH_3 or nil
            local AI_3 = t9(AH_4)
            if ti(tO.SellRarities, AI_3) then
                table.insert(AD_1, AF_1)
            end
        end
    end
    return AD_1
end
function fns.fn265()
    tZ(t1.Conns)
    tR.SetInfJump(false)
    tR.SetNoClip(false)
    tR.SetFly(false)
    tR.SetInstantProximityPrompt(false)
    tR.SetWalkSpeedEnabled(false)
end
function fns.fn267()
    local Backpack = LocalPlayer:FindFirstChild("Backpack")
    if not Backpack then
        return nil
    end
    for i, child in ipairs(Backpack:GetChildren()) do
        if tv(child) then
            return child
        end
    end
    return nil
end
function fns.fn276()
    AreaEggSlotIdentity = require(tj.Library.Util.AreaEggSlotIdentity)
end
local function onStepped()
    local Cq = not tq() or not t1.NoClip
    if Cq then
        return
    end
    local Character = LocalPlayer.Character
    if not Character then
        return
    end
    for i, descendant in ipairs(Character:GetDescendants()) do
        if descendant:IsA("BasePart") then
            if t1.CollisionSnap[descendant] == nil then
                t1.CollisionSnap[descendant] = descendant.CanCollide
            end
            descendant.CanCollide = false
        end
    end
end
local function fn325(aW, aX)
    return aW.price < aX.price
end
local function fn334(hb)
    local Ae = hb or uf()
    hb = Ae
    local Af = {}
    if Ae then
        Ae = hb.TrailInventory
    end
    local Ag = Ae
    if type(Ag) == "table" then
        for k, v in pairs(Ag) do
            local Ae_1 = v == true or type(v) == "table"
            if Ae_1 then
                Af[tostring(k)] = true
            elseif type(v) == "string" then
                Af[v] = true
            end
        end
    end
    return Af
end
local function fn358(jU)
    local B5 = tonumber(jU) or 60
    t1.FlySpeed = math.clamp(B5, 10, 400)
end
local function fn414(Q)
    local vI = typeof(cloneref) == "function" and typeof(Q) == "Instance"
    if vI then
        return cloneref(Q)
    end
    return Q
end
local function fn460(iW)
    uc("Treadmill", iW, 0.35, ub)
end
local function fn466()
    local zL_1
    local zK_1
    zK_1, zL_1 = uv(Backpack2.EQUIP_BEST)
    local zL_2 = zK_1 and zL_1 == true and "Equip Best: ok"
    local zR = if zL_2 then 1 else 0
    local zP = 3938 * zR + 2963 * (1 - zR)
    local zQ = 3637 * zR + 16 * (1 - zR)
    if not ((zP * 3015 + zQ * 3510 + zP * zQ) % 16777213 == 5407020) then
        zL_2 = "Equip Best: failed"
    end
    up(zL_2)
end
local function fn489()
    for k in pairs(tO.Enabled) do
        tO.Enabled[k] = false
        local Gens = tO.Gens
        local Br = tO.Gens[k] or 0
        Gens[k] = Br + 1
    end
end
local function fn491(b7, b8)
    if not tC(b7) then
        return true
    end
    return b7[tostring(b8)] == true
end
local function fn492(b3)
    if type(b3) ~= "table" then
        return false
    end
    for k, v in pairs(b3) do
        if v then
            return true
        end
    end
    return false
end
local function fn500(bT)
    local wk = bT == ""
    local wl = type(bT) ~= "string" or wk
    if wl then
        return nil
    end
    local wk_1 = Assets.Directory and Assets.Directory[bT]
    local wl_1 = wk_1
    if wk_1 then
        wk_1 = wl_1.Rarity
    end
    local wl_2 = wk_1
    if type(wl_2) == "table" then
        return wl_2.DisplayName or wl_2._id
    elseif type(wl_2) == "string" then
        return wl_2
    else
        return nil
    end
end
local function onDescendantAdded(kr)
    local CG = t1.InstantPrompt and kr:IsA("ProximityPrompt")
    if CG then
        tR.SetInstantProximityPrompt(true)
    end
end
local function fn518()
    local Character = LocalPlayer.Character
    if not Character then
        return nil
    end
    local AreaEggCarryTool = Character:FindFirstChild("AreaEggCarryTool")
    local yb = AreaEggCarryTool and AreaEggCarryTool:IsA("Tool")
    if yb then
        return AreaEggCarryTool
    end
    for i, child in ipairs(Character:GetChildren()) do
        if tK(child) then
            return child
        end
    end
    return nil
end
local function fn519(jJ)
    local BR = jJ and true or false
    t1.NoClip = BR
    if not t1.NoClip then
        for k, v in pairs(t1.CollisionSnap) do
            if k and k.Parent then
                k.CanCollide = v
            end
        end
        table.clear(t1.CollisionSnap)
    end
end
local function fn530()
    local v3_1
    local v1 = uq()
    local v2 = v1 and typeof(v1.RespawnPointCFrame) == "CFrame"
    local v2_1
    if v2 then
        return v1.RespawnPointCFrame
    end
    v2_1, v3_1 = pcall(function()
        return PlotCmds.GetRespawnPointCFrame()
    end)
    local v4 = v2_1 and typeof(v3_1) == "CFrame"
    if v4 then
        return v3_1
    end
    local v2_2 = v1 and typeof(v1.CenterPoint) == "Instance" and v1.CenterPoint:IsA("BasePart")
    if v2_2 then
        return v1.CenterPoint.CFrame
    end
    return nil
end
local function fn543(T)
    return type(T) == "function"
end
local function fn562()
    local wf = uq()
    local wh = wf and wf.PlotFolder
    if typeof(wh) ~= "Instance" then
        local wg_1 = wf and wf.Slot
        local Plots = td:FindFirstChild("Plots")
        local wi = wg_1 and Plots and Plots:FindFirstChild(tostring(wg_1))
        wh = wi
    end
    if typeof(wh) ~= "Instance" then
        return nil
    end
    local wf_2 = wh:FindFirstChild("TreadmillBottom", true) or wh:FindFirstChild("TreadmillFloor", true)
    local wg_3 = wf_2
    if wf_2 then
        wf_2 = wg_3:IsA("BasePart")
    end
    if wf_2 then
        return wg_3.CFrame
    end
    return nil
end
local function fn571()
    return s2.CoreGui
end
local function fn580(b0)
    local wn = s7[tostring(b0)] or 0
    return wn
end
local function fn623(dW)
    if not dW then
        return nil
    end
    local xZ = (dW:GetAttribute("Rarity"))
    if not xZ then
        local x_ = dW:GetAttribute("Category") or dW:GetAttribute("AssetCategory")
        xZ = t9(x_)
    end
    return xZ
end
local function fn624(jj)
    tO.SellRarities = s4(jj)
    if tO.Enabled.Sell then
        tc()
    end
end
local function fn661(jd)
    if jd then
        tc()
    end
    uc("Sell", jd, function()
        return tO.SellDelay
    end, ug)
end
local function fn668(iG)
    tO.StealRarities = s4(iG)
end
local function fn673()
    tR.SetAntiAfk(false)
    tR.SetNoGameplayPaused(false)
    tR.SetAutoReconnect(false)
    tR.SetDisable3D(false)
    tR.SetFpsBoost(false)
end
local function fn681(ik)
    uc("Steal", ik, function()
        return tO.StealDelay
    end, s8)
end
local function onRenderStepped(kh)
    local CB = not tq() or not t1.Fly
    if CB then
        return
    end
    if s2.UserInputService:GetFocusedTextBox() then
        return
    end
    local CB_1 = tG()
    local CurrentCamera = td.CurrentCamera
    if not CB_1 or not CurrentCamera then
        return
    end
    local CD_1 = Vector3.zero
    if s2.UserInputService:IsKeyDown(Enum.KeyCode.W) then
        CD_1 += CurrentCamera.CFrame.LookVector
    end
    if s2.UserInputService:IsKeyDown(Enum.KeyCode.S) then
        CD_1 -= CurrentCamera.CFrame.LookVector
    end
    if s2.UserInputService:IsKeyDown(Enum.KeyCode.A) then
        CD_1 -= CurrentCamera.CFrame.RightVector
    end
    if s2.UserInputService:IsKeyDown(Enum.KeyCode.D) then
        CD_1 += CurrentCamera.CFrame.RightVector
    end
    if s2.UserInputService:IsKeyDown(Enum.KeyCode.Space) then
        CD_1 += Vector3.yAxis
    end
    if s2.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
        CD_1 -= Vector3.yAxis
    end
    if CD_1.Magnitude > 0 then
        CB_1.CFrame = CB_1.CFrame + CD_1.Unit * t1.FlySpeed * kh
        CB_1.AssemblyLinearVelocity = Vector3.zero
    end
end
local function fn707()
    um(tk.Player)
    local MovementGroup = tk.Player:AddLeftGroupbox("Movement", "person-standing")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = tk.Player:AddRightGroupbox("Fly", "plane")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    Toggles.WalkSpeedEnabled:OnChanged(function(oo)
        tR.SetWalkSpeedEnabled(oo)
    end)
    Options.WalkSpeed:OnChanged(function(ou)
        tR.SetWalkSpeedValue(ou)
    end)
    Toggles.InfJump:OnChanged(function(ow)
        tR.SetInfJump(ow)
    end)
    Toggles.NoClip:OnChanged(function(oy)
        tR.SetNoClip(oy)
    end)
    Toggles.InstantProximityPrompt:OnChanged(function(oA)
        tR.SetInstantProximityPrompt(oA)
    end)
    Toggles.Fly:OnChanged(function(oC)
        tR.SetFly(oC)
    end)
    Options.FlySpeed:OnChanged(function(oE)
        tR.SetFlySpeed(oE)
    end)
end
local function fn717(i3)
    uc("UpgradePen", i3, function()
        return tO.UpgradeDelay
    end, ui)
end
local function fn728(iA)
    local Bh = {}
    for k in pairs(s4(iA)) do
        local Bi = tS[k] or k
        Bh[Bi] = true
    end
    tO.StealZones = Bh
end
local function fn736(dM)
    local xX_2
    local xW_2
    local xT_3
    local xS_1
    if not tv(dM) then
        return nil
    end
    local xR = EggToolDisplay and type(EggToolDisplay.GetToolUid) == "function"
    local xR_1
    if xR then
        xR_1, xS_1 = pcall(EggToolDisplay.GetToolUid, EggToolDisplay, dM)
        local xT_1 = xR_1 and type(xS_1) == "string"
        if xT_1 and xS_1 ~= "" then
            return xS_1
        end
        local xR_3 = dM:GetAttribute("UID") or dM:GetAttribute("Uid")
        if not ((xW_2 * 2848 + xX_2 * 3337 + xW_2 * xX_2) % 16777213 == 7013481) then
            xR_3 = dM:GetAttribute("EggUid")
        end
        local xS_2 = xR_3
        if xT_3 then
            return xS_2
        end
        return nil
    end
    local xR_5 = dM:GetAttribute("UID") or dM:GetAttribute("Uid")
    local xY_2 = if xR_5 then 1 else 0
    xW_2 = 1222 * xY_2 + 510 * (1 - xY_2)
    xX_2 = 775 * xY_2 + 51 * (1 - xY_2)
    if not ((xW_2 * 2848 + xX_2 * 3337 + xW_2 * xX_2) % 16777213 == 7013481) then
        xR_5 = dM:GetAttribute("EggUid")
    end
    local xS_3 = xR_5
    local xR_6 = xS_3 ~= ""
    xT_3 = type(xS_3) == "string" and xR_6
    if xT_3 then
        return xS_3
    end
    return nil
end
local function fn741()
    local yj = s9() ~= nil or t6.IsCarrying == true
    return yj
end
local function fn764()
    tc()
    local Ba = tg()
    if #Ba == 0 then
        up("Sell: nothing matched")
        return
    end
    local Bb = ue(AssetInventory.SELL_ALL_ASSETS, Ba)
    local Bc = Bb and "Sell: fired " .. tostring(#Ba)
    local Ba_1 = Bc or "Sell: fire failed"
    up(Ba_1)
end
local function fn805(l3, l4)
    local DN
    if tD(setclipboard) then
        DN = setclipboard
    elseif tD(toclipboard) then
        DN = toclipboard
    end
    if not DN then
        Library:Notify("Clipboard unavailable", 3)
        return
    end
    local DO = pcall(DN, l3)
    local DN_2 = DO and (l4 or "Copied") or "Copy failed"
    Library:Notify(DN_2, 3)
end
local function fn831()
    local Character = LocalPlayer.Character
    local vT = Character and Character:FindFirstChild("HumanoidRootPart")
    return vT
end
local function fn854(dE)
    local xM_1
    local xL = typeof(dE) ~= "Instance" or not dE:IsA("Tool")
    local xL_2
    if xL then
        return false
    elseif tK(dE) then
        return false
    else
        local xL_1 = EggToolDisplay and type(EggToolDisplay.IsEggTool) == "function"
        if xL_1 then
            xL_2, xM_1 = pcall(EggToolDisplay.IsEggTool, EggToolDisplay, dE)
            if xL_2 then
                return xM_1 == true
            end
            return dE:GetAttribute("ItemType") == "AssetEgg"
        end
        return dE:GetAttribute("ItemType") == "AssetEgg"
    end
end
local function fn867()
    gethui = t4
end
local function fn899()
    local zS = tw()
    if not zS then
        up("Treadmill: pad missing")
        return
    end
    tm(zS)
    up("Treadmill: running")
end
local function fn904(iR)
    uc("EquipBest", iR, function()
        return tO.EquipDelay
    end, s3)
end
local function onJumpRequest()
    local Cn = not tq() or not t1.InfJump
    if Cn then
        return
    end
    local Cn_1 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if Cn_1 then
        Cn_1:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end
local function fn928()
    local z7_1
    local z6_1
    z6_1, z7_1 = pcall(function()
        return BaseUpgradeClient.RequestCashUpgrade()
    end)
    if z6_1 and z7_1 == true then
        up("Pen upgrade: ok")
        return
    end
    local z6_2 = ue(Plots2.REQUEST_BASE_UPGRADE)
    local z6_3 = z6_2 and "Pen upgrade: fired"
    local Ad = if z6_3 then 1 else 0
    local Ab = 1850 * Ad + 85 * (1 - Ad)
    local Ac = 3111 * Ad + 496 * (1 - Ad)
    if not ((Ab * 2033 + Ac * 698 + Ab * Ac) % 16777213 == 11687878) then
        z6_3 = "Pen upgrade: failed"
    end
    up(z6_3)
end
local function fn963(le)
    local Dh = le and true or false
    tQ.AutoReconnect = Dh
    tZ(tQ.ReconnectConns)
    if not tQ.AutoReconnect then
        return
    end
    table.insert(tQ.ReconnectConns, s2.TeleportService.TeleportInitFailed:Connect(function()
        local Db = not tq() or not tQ.AutoReconnect
        if Db then
            return
        end
        task.wait(1)
        local Db_1 = tq() and tQ.AutoReconnect
        if Db_1 then
            pcall(function()
                s2.TeleportService:Teleport(game.PlaceId, LocalPlayer)
            end)
        end
    end))
end
local function fn983(jH)
    local BO = jH and true or false
    t1.InfJump = BO
end
local function fn984()
    local vZ_1
    local vY_1
    vY_1, vZ_1 = pcall(function()
        return PlotCmds.GetPlotData()
    end)
    local v_ = vY_1 and type(vZ_1) == "table"
    if v_ then
        return vZ_1
    end
    return nil
end
local function fn997(ba)
    local vP = ba or uf()
    ba = vP
    if vP then
        local vQ_1 = tonumber(ba.Money) or 0
        vP = vQ_1
    end
    return vP or 0
end
local function fn1002()
    EggCmds.AreaEggCarryStateChanged:Connect(function(du)
        if type(du) ~= "table" then
            return
        end
        t6.IsCarrying = du.IsCarrying == true
        local xD = type(du.Uid) == "string" and du.Uid
        local xE = xD or nil
        t6.Uid = xE
        local xD_1 = du.AssetCategory or du.Category
        t6.AssetCategory = xD_1
    end)
end
local function fn1023()
    local y4 = if not ua() then 1 else 0
    if y4 == 1 then
        return true
    end
    up("Bank: leave zone")
    tr()
    local y_ = os.clock() + 3
    while true do
        local y0 = tq() and ua() and os.clock() < y_
        if y0 then
            tr()
            task.wait(0.2)
            continue
        end
        break
    end
    if ua() then
        up("Bank: still carrying")
        return false
    end
    t6.IsCarrying = false
    t6.Uid = nil
    t6.AssetCategory = nil
    up("Bank: backpack")
    return true
end
local function fn1031(jV)
    local B9 = jV and true or false
    t1.InstantPrompt = B9
    if not t1.InstantPrompt then
        for k, v in pairs(t1.PromptSnap) do
            if k and k.Parent then
                k.HoldDuration = v.HoldDuration
                k.MaxActivationDistance = v.MaxActivationDistance
                k.RequiresLineOfSight = v.RequiresLineOfSight
            end
        end
        table.clear(t1.PromptSnap)
        return
    end
    local function B8_2(j_)
        if not j_:IsA("ProximityPrompt") then
            return
        end
        if t1.PromptSnap[j_] == nil then
            t1.PromptSnap[j_] = {
                HoldDuration = j_.HoldDuration,
                MaxActivationDistance = j_.MaxActivationDistance,
                RequiresLineOfSight = j_.RequiresLineOfSight
            }
        end
        j_.HoldDuration = 0
        j_.MaxActivationDistance = 50
        j_.RequiresLineOfSight = false
    end
    for i, descendant in ipairs(td:GetDescendants()) do
        B8_2(descendant)
    end
end
local function fn1047()
    local CM = not tD(s2.VirtualUser.CaptureController) or not tD(s2.VirtualUser.ClickButton2)
    if CM then
        return false
    end
    return pcall(function()
        s2.VirtualUser:CaptureController()
        s2.VirtualUser:ClickButton2(Vector2.new())
    end)
end
local function fn1050(dA)
    local xJ = typeof(dA) ~= "Instance" or not dA:IsA("Tool")
    if xJ then
        return false
    end
    local xJ_1 = dA.Name == "AreaEggCarryTool" or dA:GetAttribute("TemporaryAreaEggCarry") == true
    return xJ_1
end
local function fn1053()
    local Character = LocalPlayer.Character
    if not Character then
        return nil
    end
    for i, child in ipairs(Character:GetChildren()) do
        if tv(child) then
            return child
        end
    end
    return nil
end
local function fn1059()
    EggToolDisplay = require(tj.Library.Client.Eggs.EggToolDisplay)
end
local function fn1068()
    if not tC(tO.TrailTargets) then
        up("Trails: none selected")
        return
    end
    local Ao = uf()
    local Ap = tM(Ao)
    local Aq = tT(Ao)
    for k, v in pairs(tO.TrailTargets) do
        if v then
            local Ao_1 = tu[k]
            local Ar = Ao_1 and Trails.Directory and Trails.Directory[Ao_1]
            local Ar_2
            local As = Ao_1
            local As_2
            if As then
                As = Ar
            end
            if As then
                As = not Ap[Ao_1]
            end
            if As then
                local Ar_1 = tonumber(Ar.Price) or 0
                if Aq >= Ar_1 then
                    Ar_2, As_2 = uv(Trails2.REQUEST_PURCHASE, Ao_1)
                    if Ar_2 and As_2 == true then
                        local Ar_3 = Ar.DisplayName or Ao_1
                        up("Trail bought: " .. tostring(Ar_3))
                        return
                    end
                end
            end
        end
    end
    up("Trails: nothing to buy")
end
local function fn1069(iq)
    uc("Place", iq, function()
        return tO.PlaceDelay
    end, tz)
end
local function fn1081(jO)
    local B_ = jO and true or false
    t1.Fly = B_
    local BZ_1 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if not BZ_1 then
        return
    end
    if t1.Fly then
        if t1.FlySnap[BZ_1] == nil then
            t1.FlySnap[BZ_1] = BZ_1.PlatformStand
        end
        BZ_1.PlatformStand = true
    else
        local BZ_2 = t1.FlySnap[BZ_1]
        if BZ_2 ~= nil then
            BZ_1.PlatformStand = BZ_2
        end
        t1.FlySnap[BZ_1] = nil
    end
end
local function fn1091(iM)
    uc("ClaimIndex", iM, function()
        return tO.ClaimDelay
    end, tp)
end
local function fn1094()
    local vM_1
    local vL_1
    vL_1, vM_1 = pcall(function()
        return Save.Get()
    end)
    local vN = vL_1 and type(vM_1) == "table"
    if vN then
        return vM_1
    end
    return nil
end
local function fn1097()
    local zG_1
    local zF_1
    zF_1, zG_1 = uv(Index.REQUEST_CLAIM_ALL)
    local zG_2 = zF_1 and zG_1 == true and "Index: claimed" or "Index: nothing / failed"
    up(zG_2)
end
local function fn1098(jn)
    tO.TrailTargets = s4(jn)
end
local function fn1099(jy)
    local BF = jy and true
    local BJ = if BF then 1 else 0
    local BH = 2924 * BJ + 398 * (1 - BJ)
    local BI = 3213 * BJ + 60 * (1 - BJ)
    if not ((BH * 3255 + BI * 289 + BH * BI) % 16777213 == 3063776) then
        BF = false
    end
    t1.WalkSpeedEnabled = BF
    local BE_1 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if not BE_1 then
        return
    end
    if t1.WalkSpeedEnabled then
        if t1.SpeedSnap[BE_1] == nil then
            t1.SpeedSnap[BE_1] = BE_1.WalkSpeed
        end
        BE_1.WalkSpeed = t1.WalkSpeed
    else
        local BE_2 = t1.SpeedSnap[BE_1]
        if BE_2 ~= nil then
            BE_1.WalkSpeed = BE_2
        end
        t1.SpeedSnap[BE_1] = nil
    end
end
local function fn1117(ls)
    local Dk = ls and true or false
    tQ.Disable3D = Dk
    pcall(function()
        s2.RunService:Set3dRenderingEnabled(not tQ.Disable3D)
    end)
end
local function fn1121()
    local A2 = {}
    for i, v in ipairs(tb) do
        if tO.SellRarities[v] then
            A2[v] = true
        end
    end
    return uv(Backpack2.SET_AUTO_SELL_STATE, A2)
end
local function fn1136(kN)
    local CU = kN and true
    local CY = if CU then 1 else 0
    local CW = 794 * CY + 2680 * (1 - CY)
    local CX = 1356 * CY + 953 * (1 - CY)
    if not ((CW * 2345 + CX * 2415 + CW * CX) % 16777213 == 6213334) then
        CU = false
    end
    tQ.AntiAfk = CU
    if tQ.AfkConn then
        tQ.AfkConn:Disconnect()
        tQ.AfkConn = nil
    end
    if tQ.AfkTask then
        pcall(task.cancel, tQ.AfkTask)
        tQ.AfkTask = nil
    end
    if not tQ.AntiAfk then
        return
    end
    tQ.AfkConn = LocalPlayer.Idled:Connect(function()
        local CO = tq() and tQ.AntiAfk
        if CO then
            tN()
        end
    end)
    tQ.AfkTask = task.spawn(function()
        local CQ = os.clock()
        while true do
            local CR = tq() and tQ.AntiAfk
            if CR then
                task.wait(1)
                local CR_1 = not tq() or not tQ.AntiAfk
                if CR_1 then
                    break
                end
                if os.clock() - CQ >= 60 then
                    CQ = os.clock()
                    tN()
                end
                continue
            end
            break
        end
    end)
end
local function fn1201(ma)
    local DiscordGroup = ma:AddLeftGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = uh,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
end
s2 = nil
s3 = nil
s4 = nil
s6 = nil
s7 = nil
s8 = nil
s9 = nil
tb = nil
tc = nil
td = nil
AssetInventory = nil
tg = nil
ti = nil
tj = nil
tk = nil
Plots2 = nil
tm = nil
to = nil
tp = nil
tq = nil
tr = nil
Options = nil
Trails2 = nil
tu = nil
tv = nil
tw = nil
Toggles = nil
Index = nil
tz = nil
tC = nil
tD = nil
Backpack2 = nil
tG = nil
Library = nil
tK = nil
tM = nil
tN = nil
tO = nil
EggToolDisplay = nil
local Network, ta, te, th, Treadmills2, tA, tB, SaveManager, tH, ThemeManager, tL
tQ = nil
tR = nil
tS = nil
tT = nil
tV = nil
tW = nil
tZ = nil
AreaEggSlotIdentity = nil
t1 = nil
t3 = nil
t4 = nil
Trails = nil
t6 = nil
t9 = nil
ua = nil
ub = nil
uc = nil
Assets = nil
ue = nil
uf = nil
ug = nil
uh = nil
ui = nil
BaseUpgradeClient = nil
um = nil
PlotCmds = nil
up = nil
uq = nil
EggCmds = nil
LocalPlayer = nil
Save = nil
uv = nil
local tU, tX, tY, t0, Treadmills, t7, t8, uj, uk, un, us
tU = nil
tX = nil
tY = nil
t0 = nil
Treadmills = nil
t7 = nil
t8 = nil
uj = nil
uk = nil
un = nil
us = nil
local uE
local uO = if not game:IsLoaded() then 1 else 0
if uO == 1 then
    game.Loaded:Wait()
end
s2, LocalPlayer, uj, uh, t8, t7, t4 = nil, nil, nil, nil, nil, nil, nil
s2 = {}
s2.Players = game:GetService("Players")
s2.ReplicatedStorage = game:GetService("ReplicatedStorage")
s2.RunService = game:GetService("RunService")
s2.UserInputService = game:GetService("UserInputService")
s2.VirtualUser = game:GetService("VirtualUser")
s2.HttpService = game:GetService("HttpService")
s2.TeleportService = game:GetService("TeleportService")
s2.Workspace = game:GetService("Workspace")
s2.Lighting = game:GetService("Lighting")
s2.Stats = game:GetService("Stats")
s2.CoreGui = game:GetService("CoreGui")
LocalPlayer = s2.Players.LocalPlayer
local ER_9 = "OuroborosStealAndHatchBrainrotEggs"
local ER_15 = "v0.5"
uj = "Steal & Hatch Brainrot Eggs"
uh = "https://discord.gg/synapsex"
t8 = "https://rscripts.net/@Ouroboros"
t7 = "https://ouroboros-hub-rbx.web.app/"
t4 = fn571
if getgenv then
    getgenv().gethui = t4
end
tR, tO, tj, td, Network, Save, EggCmds, PlotCmds, BaseUpgradeClient, uE, Assets, Trails, Treadmills, AreaEggSlotIdentity, EggToolDisplay, Backpack2, Index, Trails2, Treadmills2, Plots2, AssetInventory, tb, s7, tD, tq = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fn867)
local function uC(o)
    local vv
    local vt
    local vu
    vt = nil
    vu = nil
    vv = nil
    local vw = o ~= ""
    local vx = type(o) == "string" and vw
    assert(vx, "Namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    vv = getgenv()
    assert(type(vv) == "table", "getgenv did not return a table")
    local vw_1 = vv[o]
    if vw_1 ~= nil then
        local vx_1 = type(vw_1) == "table" and type(vw_1.Unload) == "function"
        assert(vx_1, "Namespace is occupied")
        vw_1.Unload()
        assert(vv[o] == nil, "Previous instance did not release its namespace")
    end
    vt = {}
    vu = { State = {}, Unloaded = false }
    vu.Track = function(u)
        assert(type(u) == "function", "Cleanup must be callable")
        if vu.Unloaded then
            u()
        else
            table.insert(vt, u)
        end
        return u
    end
    vu.Unload = function()
        local vm_1
        local vl_1
        if vu.Unloaded then
            return
        end
        vu.Unloaded = true
        local vj = {}
        local vq = #vt
        local vp = -1
        while false and vq <= 1 or true and vq >= 1 do
            local vr = vq
            local vk_1 = table.remove(vt, vr)
            vl_1, vm_1 = pcall(vk_1)
            if not vl_1 then
                table.insert(vj, tostring(vm_1))
            end
            vq += vp
        end
        table.clear(vu.State)
        if #vj > 0 then
            error("Cleanup incomplete: " .. table.concat(vj, "; "), 0)
        end
        if vv[o] == vu then
            vv[o] = nil
        end
    end
    vv[o] = vu
    return vu
end
local function uG(H, I)
    local vD = type(H) == "table" and type(H.Track) == "function"
    assert(vD, "FeatureAPI required")
    local vD_1 = type(I) == "table" and type(I.OnUnload) == "function"
    assert(vD_1, "UI library required")
    assert(type(I.Unload) == "function", "UI unload required")
    H.Track(function()
        if not I.Unloaded then
            I:Unload()
        end
    end)
    I:OnUnload(function()
        H.Unload()
    end)
end
tR = uC(ER_9)
tO = tR.State
local ER_16 = fn414
tD = fn543
tq = fns.fn79
tj = ER_16(s2.ReplicatedStorage)
td = ER_16(s2.Workspace)
local ER_6 = tj:WaitForChild("Library"):WaitForChild("Client")
local ER_4 = tj:WaitForChild("Directory")
Network = require(ER_6:WaitForChild("Network"))
Save = require(ER_6:WaitForChild("Save"))
EggCmds = require(ER_6:WaitForChild("EggCmds"))
PlotCmds = require(ER_6:WaitForChild("PlotCmds"))
BaseUpgradeClient = require(ER_6:WaitForChild("BaseUpgradeClient"))
if ((PlotCmds or PlotCmds or (tO or PlotCmds)) and (tO and not tO or not tO and PlotCmds) or (PlotCmds or PlotCmds or (PlotCmds or tO)) and (not PlotCmds and not tO or (PlotCmds or not tO))) and not ((PlotCmds or PlotCmds or (tO or PlotCmds)) and (tO and not tO or not tO and PlotCmds) or (PlotCmds or PlotCmds or (PlotCmds or tO)) and (not PlotCmds and not tO or (PlotCmds or not tO))) then
    tj = require(uE.Library.Globals.Constants)
else
    uE = require(tj.Library.Globals.Constants)
end
Assets = require(ER_4:WaitForChild("Assets"))
local Areas = require(ER_4:WaitForChild("Areas"))
Trails = require(ER_4:WaitForChild("Trails"))
Treadmills = require(ER_4:WaitForChild("Treadmills"))
AreaEggSlotIdentity = nil
pcall(fns.fn276)
EggToolDisplay = nil
pcall(fn1059)
local ER_11 = uE.NETWORK_MAP
Backpack2 = ER_11.Backpack
Index = ER_11.Index
Trails2 = ER_11.Trails
Treadmills2 = ER_11.Treadmills
Plots2 = ER_11.Plots
AssetInventory = ER_11.AssetInventory
tb = {}
s7 = {}
local uH = {}
ER_4 = {}
ER_9 = {}
ER_6 = Assets.Directory or ER_9
for k, v in pairs(ER_6) do
    ER_9 = v and v.Rarity
    ER_6 = ER_9
    ER_9 = type(ER_6) == "table" and type(ER_6.DisplayName) == "string" and not ER_4[ER_6.DisplayName]
    if ER_9 then
        ER_4[ER_6.DisplayName] = true
        ER_9 = table.insert
        ER_11 = ER_6.DisplayName
        ER_16 = tonumber(ER_6.RarityNumber) or 0
        ER_9(uH, { name = ER_11, num = ER_16 })
    end
end
ER_11 = 1
repeat
    ER_4 = {
        "eioonknffyx",
        "xjdqzprukj",
        "cakzii",
        "gssksfdjli",
        "sxcptbrfxfc",
        "xas",
        "peumugfo",
        "jjrffvsoinc",
        "kxvspp"
    }
    if ER_4[(ER_11 * 68 + 40) % 9 + 1] <= ER_4[(ER_11 * 68 + 40) % 9 + 1] then
        table.sort(uH, fns.fn60)
    else
        table.sort(uH, fns.fn60)
    end
    ER_11 = (ER_11 + 7) % 8
until (ER_11 * 7 + 5) % 8 == 5
for i, v in ipairs(uH) do
    table.insert(tb, v.name)
    s7[v.name] = v.num
end
tS = {}
tX = {}
ER_4 = {}
ER_9 = Areas.Directory or ER_4
for k, v in pairs(ER_9) do
    ER_4 = type(v) == "table"
    if ER_4 then
        ER_9 = v.DisplayName or k
        ER_4 = tostring(ER_9)
    end
    ER_9 = ER_4 or tostring(k)
    ER_4 = ER_9
    table.insert(tX, ER_4)
    tS[ER_4] = tostring(k)
    tS[tostring(k)] = tostring(k)
end
table.sort(tX)
tu = {}
tA = {}
ER_4 = {}
ER_9 = {}
ER_6 = Trails.Directory or ER_9
for k, v in pairs(ER_6) do
    ER_9 = table.insert
    ER_6 = tostring(k)
    ER_11 = v.DisplayName or k
    ER_16 = tostring(ER_11)
    uC = tonumber(v.Price) or 0
    ER_9(ER_4, { id = ER_6, name = ER_16, price = uC })
end
ER_6 = 3
repeat
    ER_9 = {
        "tzinko",
        "golezq",
        "fkxmm",
        "giigfdsu",
        "lfylzbwym",
        "crysnilbtu",
        "yyvqnktfs",
        "zuvim",
        "qyqmuqkmft",
        "zlhvbpljdr"
    }
    local Gb = ER_6
    ER_11 = ER_9[Gb % 10 + 1]
    if ER_11:len() >= ER_11:gsub("(.)", "%1%1", Gb % 3 % 2 + 1):len() then
        table.sort(ER_4, fn325)
    else
        table.sort(ER_4, fn325)
    end
    ER_6 = (ER_6 + 0) % 4
until (ER_6 * 3 + 0) % 4 == 1
for i, v in ipairs(ER_4) do
    ER_4 = string.format("%s ($%s)", v.name, tostring(v.price))
    table.insert(tA, ER_4)
    tu[ER_4] = v.id
end
t6, t1, up, uf, tT, tG, tm, uq, t3, tw, t9, tL, tC, ti, s4, uc, uv, ue, tW, un, th, tK, tv, us, tU, tB, s9, ua, tY, tH, uk, tr, ta, t0, tz, s8, to, tp, s3, ub, tV, ui, tM, s6, tg, tc, ug, tZ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if not tM and not tM and (tM or tg) and (uf and tM or (not tM or not tg)) or not (not tM and not tM and (tM or tg) and (uf and tM or (not tM or not tg))) then
    tO.Enabled = {
        Steal = false,
        Place = false,
        Hatch = false,
        ClaimIndex = false,
        EquipBest = false,
        Treadmill = false,
        UpgradeTreadmill = false,
        UpgradePen = false,
        BuyTrails = false,
        Sell = false
    }
    tO.Gens = {}
    tO.StealZones = {}
    tO.StealRarities = {}
    tO.PlaceRarities = {}
    tO.SellRarities = {}
    tO.TrailTargets = {}
    tO.StealDelay = 0.35
    tO.PlaceDelay = 0.45
    tO.HatchDelay = 0.75
    tO.SellDelay = 2
    tO.UpgradeDelay = 1
    tO.ClaimDelay = 2
    tO.EquipDelay = 3
    tO.TrailDelay = 1.25
    tO.Status = "Idle"
    up = fns.fn227
else
    up.Enabled = {
        UpgradePen = false,
        Treadmill = false,
        EquipBest = false,
        Steal = false,
        Place = false,
        Sell = false,
        Hatch = false,
        BuyTrails = false,
        ClaimIndex = false,
        UpgradeTreadmill = false
    }
    up.Gens = {}
    up.StealZones = {}
    up.StealRarities = {}
    up.PlaceRarities = {}
    up.SellRarities = {}
    up.TrailTargets = {}
    up.StealDelay = 0.35
    up.PlaceDelay = 0.45
    up.HatchDelay = 0.75
    up.SellDelay = 2
    up.UpgradeDelay = 1
    up.ClaimDelay = 2
    up.EquipDelay = 3
    up.TrailDelay = 1.25
    up.Status = "Idle"
    tO = fns.fn227
end
uf = fn1094
tT = fn997
tG = fn831
tm = function(bj)
    local vV
    vV = nil
    vV = tG()
    local vW = not vV or typeof(bj) ~= "CFrame"
    if vW then
        return false
    end
    return pcall(function()
        vV.CFrame = bj + Vector3.new(0, 3, 0)
        vV.AssemblyLinearVelocity = Vector3.zero
        vV.AssemblyAngularVelocity = Vector3.zero
    end)
end
uq = fn984
t3 = fn530
tw = fn562
t9 = fn500
tL = fn580
tC = fn492
ti = fn491
s4 = fns.fn90
uc = function(ci, cj, ck, cl)
    local wQ
    local Enabled = tO.Enabled
    local wT = cj and true or false
    Enabled[ci] = wT
    local Gens = tO.Gens
    local wS_1 = tO.Gens[ci] or 0
    Gens[ci] = wS_1 + 1
    wQ = tO.Gens[ci]
    if not tO.Enabled[ci] then
        return
    end
    task.spawn(function()
        local wL_1
        while true do
            local wK = tq() and tO.Enabled[ci] and tO.Gens[ci] == wQ
            local wK_1
            if wK then
                wK_1, wL_1 = pcall(cl)
                if not wK_1 then
                    up(tostring(ci) .. " error: " .. tostring(wL_1))
                end
                local wK_2 = 0.5
                if type(ck) == "function" then
                    local wL_2 = tonumber(ck()) or 0.5
                    wK_2 = wL_2
                elseif type(ck) == "number" then
                    wK_2 = ck
                end
                task.wait(math.max(0.05, wK_2))
                continue
            end
            break
        end
    end)
end
uv = function(cA, ...)
    local wV = cA == ""
    local wW = type(cA) ~= "string" or wV
    if wW then
        return false, "missing remote"
    end
    return pcall(function(...)
        return Network.Invoke(cA, ...)
    end, ...)
end
ue = function(cF, ...)
    local wY = cF == ""
    local wZ = type(cF) ~= "string"
    local w2 = if wZ then 1 else 0
    local w0 = 690 * w2 + 3512 * (1 - w2)
    local w1 = 615 * w2 + 403 * (1 - w2)
    if not ((w0 * 1091 + w1 * 2111 + w0 * w1) % 16777213 == 2475405) then
        wZ = wY
    end
    if wZ then
        return false
    end
    return pcall(function(...)
        Network.Fire(cF, ...)
    end, ...)
end
tW = function()
    local w3
    w3 = nil
    local w4 = {}
    pcall(function()
        w3 = EggCmds.GetAreaEggSnapshot()
    end)
    if type(w3) ~= "table" then
        pcall(function()
            EggCmds.RequestAreaEggSnapshot()
            w3 = EggCmds.GetAreaEggSnapshot()
        end)
    end
    local w5 = type(w3) == "table"
    if w5 then
        w5 = w3.Records or w3
    end
    local w6_2 = w5 or nil
    if type(w6_2) ~= "table" then
        return w4
    end
    for k, v in pairs(w6_2) do
        local w5_2 = type(v) == "table" and type(v.Uid) == "string"
        if w5_2 then
            local w5_3 = v.AssetCategory or v.Category
            local w5_4 = t9(w5_3)
            local Uid = v.Uid
            local w9 = v.AreaId or ""
            local xa = tostring(w9)
            local xb = v.NestId or ""
            table.insert(w4, {
                Uid = Uid,
                AreaId = xa,
                NestId = tostring(xb),
                Category = w5_3,
                Rarity = w5_4,
                Rank = tL(w5_4),
                BottomCFrame = v.BottomCFrame,
                State = v.State
            })
        end
    end
    return w4
end
un = fns.fn15
th = function(dh)
    local xy, xz
    if not AreaEggSlotIdentity or not dh then
        return nil
    end
    xz = false
    pcall(function()
        xz = AreaEggSlotIdentity.IsFirstAreaUid(dh.Uid) == true
    end)
    if not xz then
        return nil
    end
    xy = nil
    pcall(function()
        xy = AreaEggSlotIdentity.BuildSlotKey(dh.AreaId, dh.NestId)
    end)
    return xy
end
t6 = { IsCarrying = false, Uid = nil, AssetCategory = nil }
pcall(fn1002)
tK = fn1050
tv = fn854
us = fn736
tU = fn623
tB = fn1053
s9 = fn518
ua = fn741
tY = fns.fn267
tH = fns.fn153
uk = function()
    local yH = uq()
    local yI = yH and yH.CenterPoint
    local yI_1 = typeof(yI) ~= "Instance" or not yI:IsA("BasePart")
    if yI_1 then
        return nil
    end
    local yI_2 = {
        Vector3.zero,
        Vector3.new(4, 0, 0),
        Vector3.new(-4, 0, 0),
        Vector3.new(0, 0, 4),
        Vector3.new(0, 0, -4),
        Vector3.new(6, 0, 6),
        Vector3.new(-6, 0, 6),
        Vector3.new(6, 0, -6),
        Vector3.new(-6, 0, -6)
    }
    for i, v in ipairs(yI_2) do
        local yG, yF
        yG = yI.CFrame * CFrame.new(v)
        yF = true
        pcall(function()
            yF = PlotCmds.IsWorldPositionWithinLocalPlotBounds(yG.Position) ~= false
        end)
        if yF then
            return yI.CFrame:ToObjectSpace(CFrame.new(yG.Position))
        end
    end
    return yI.CFrame:ToObjectSpace(yI.CFrame)
end
tr = fns.fn139
ta = function(eV)
    local yS
    local yV_1
    local yU_1
    local yT_1
    yS = uk()
    if typeof(yS) ~= "CFrame" then
        up("Place: no plot center")
        return false
    end
    yT_1, yU_1, yV_1 = pcall(function()
        return EggCmds.RequestPlaceEgg(eV, yS)
    end)
    if not yT_1 then
        up("Place invoke failed")
        return false
    elseif yU_1 ~= true then
        up("Place rejected: " .. tostring(yV_1))
        return false
    else
        up("Place: success")
        return true
    end
end
t0 = fn1023
tz = function()
    local y9
    if ua() then
        t0()
        return
    end
    local za = tB()
    if za then
        local zb_1 = us(za)
        local zc_1 = tU(za)
        local zd_1 = zc_1 ~= nil and not ti(tO.PlaceRarities, zc_1)
        if zd_1 then
            up("Place: held filtered")
            return
        elseif type(zb_1) ~= "string" then
            up("Place: held egg missing uid")
            return
        else
            up("Place: held egg")
            tr()
            ta(zb_1)
            return
        end
    end
    local y8 = tY()
    if y8 then
        local zb_2 = us(y8)
        local zc_2 = tU(y8)
        local zd_2 = zc_2 ~= nil and not ti(tO.PlaceRarities, zc_2)
        if zd_2 then
            up("Place: backpack filtered")
            return
        elseif type(zb_2) ~= "string" then
            up("Place: backpack egg missing uid")
            return
        else
            up("Place: equip backpack egg")
            tr()
            pcall(function()
                local y5 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                if y5 then
                    y5:EquipTool(y8)
                end
            end)
            task.wait(0.15)
            ta(zb_2)
            return
        end
    end
    y9 = tH()
    if not y9 then
        up("Place: no egg")
        return
    end
    up("Place: equip inventory egg")
    tr()
    pcall(function()
        EggCmds.RequestEquipTool(y9)
    end)
    task.wait(0.2)
    local za_1 = tB()
    if za_1 then
        local zb_3 = us(za_1) or y9
        ta(zb_3)
        return
    end
    ta(y9)
end
s8 = function()
    local zi, zj
    local zm_1
    local zl_1
    if ua() then
        t0()
        return
    end
    zi = un()
    if not zi then
        up("Steal: no matching egg")
        return
    end
    up(string.format("Steal: %s (%s)", tostring(zi.Category), tostring(zi.Rarity)))
    if typeof(zi.BottomCFrame) == "CFrame" then
        tm(zi.BottomCFrame)
        task.wait(0.15)
    end
    local zk = not tq() or not tO.Enabled.Steal
    local zk_1
    if zk then
        return
    end
    if ua() then
        t0()
        return
    end
    zj = th(zi)
    zk_1, zl_1, zm_1 = pcall(function()
        return EggCmds.RequestCarryAreaEgg(zi.Uid, zj)
    end)
    if not zk_1 then
        up("Steal invoke failed")
        return
    end
    if zl_1 ~= true then
        up("Steal rejected: " .. tostring(zm_1))
        return
    end
    t6.IsCarrying = true
    t6.Uid = zi.Uid
    t6.AssetCategory = zi.Category
    up("Steal: carried")
    task.wait(0.1)
    local zk_2 = tq() and tO.Enabled.Steal
    if zk_2 then
        t0()
    end
end
to = function()
    local zs
    local zu_1
    zs = nil
    pcall(function()
        zs = EggCmds.GetOwnerRuntimeRecords(LocalPlayer.UserId)
    end)
    if type(zs) ~= "table" then
        pcall(function()
            EggCmds.RequestRuntimeSnapshot()
            zs = EggCmds.GetOwnerRuntimeRecords(LocalPlayer.UserId)
        end)
    end
    if type(zs) ~= "table" then
        up("Hatch: no placed eggs")
        return
    end
    for k in pairs(zs) do
        local zr
        local zE = k
        local zt = not tq() or not tO.Enabled.Hatch
        local zt_1
        if zt then
            return
        end
        zr = false
        pcall(function()
            zr = EggCmds.IsLocalEggReady(tostring(zE)) == true
        end)
        if zr then
            up("Hatch: " .. tostring(zE))
            zt_1, zu_1 = pcall(function()
                return EggCmds.RequestHatchEgg(tostring(zE))
            end)
            if zt_1 and zu_1 == true then
                task.wait(0.2)
                pcall(function()
                    EggCmds.RequestCompleteHatchEgg(tostring(zE))
                end)
                return
            end
        end
    end
    up("Hatch: none ready")
end
tp = fn1097
s3 = fn466
ub = fn899
tV = function()
    local zU, zV
    local zY_4
    local zW = uf()
    local zW_2
    local zX = zW
    if zX then
        local zY_1 = (tonumber(zW.TreadmillUpgradeLevel))
        local z2_1 = if zY_1 then 1 else 0
        local z0_1 = 520 * z2_1 + 3876 * (1 - z2_1)
        local z1_1 = 2925 * z2_1 + 1176 * (1 - z2_1)
        if not ((z0_1 * 396 + z1_1 * 1378 + z0_1 * z1_1) % 16777213 == 5757570) then
            zY_1 = 1
        end
        zX = zY_1
    end
    local zY_2 = zX
    local z2_2 = if zY_2 then 1 else 0
    local z0_2 = 872 * z2_2 + 3237 * (1 - z2_2)
    local z1_2 = 15 * z2_2 + 2213 * (1 - z2_2)
    if not ((z0_2 * 1464 + z1_2 * 5 + z0_2 * z1_2) % 16777213 == 1289763) then
        zY_2 = 1
    end
    zV = nil
    zU = zY_2
    pcall(function()
        zV = Treadmills.GetByUpgradeLevel(zU + 1)
    end)
    if type(zV) ~= "table" then
        up("Treadmill upgrade: max")
        return
    end
    local zX_1 = (tonumber(zV.Price))
    local z2_3 = if zX_1 then 1 else 0
    local z0_3 = 3321 * z2_3 + 1257 * (1 - z2_3)
    local z1_3 = 2899 * z2_3 + 1550 * (1 - z2_3)
    if not ((z0_3 * 276 + z1_3 * 3323 + z0_3 * z1_3) % 16777213 == 3400339) then
        zX_1 = 0
    end
    local zY_3 = zX_1
    if tT(zW) < zY_3 then
        up("Treadmill upgrade: can't afford")
        return
    end
    local zW_1 = zV._id
    local z2_4 = if zW_1 then 1 else 0
    local z0_4 = 3557 * z2_4 + 3247 * (1 - z2_4)
    local z1_4 = 1474 * z2_4 + 2048 * (1 - z2_4)
    if not ((z0_4 * 3265 + z1_4 * 4064 + z0_4 * z1_4) % 16777213 == 6069746) then
        zW_1 = zV.Id
    end
    local z5 = if zW_1 then 1 else 0
    local z3 = 220 * z5 + 1826 * (1 - z5)
    local z4 = 1064 * z5 + 2471 * (1 - z5)
    if not ((z3 * 546 + z4 * 2899 + z3 * z4) % 16777213 == 3438736) then
        zW_1 = zV.id
    end
    local zX_2 = zW_1
    if type(zX_2) ~= "string" then
        up("Treadmill upgrade: missing id")
        return
    end
    zW_2, zY_4 = uv(Treadmills2.REQUEST_UPGRADE, zX_2)
    local zX_4 = zW_2 and zY_4 == true and "Treadmill upgrade: ok" or "Treadmill upgrade: failed"
    up(zX_4)
end
ui = fn928
tM = fn334
s6 = fn1068
tg = fns.fn248
tc = fn1121
ug = fn764
tR.SetSteal = fn681
tR.SetPlace = fn1069
tR.SetHatch = fns.fn155
tR.SetStealZones = fn728
tR.SetStealRarities = fn668
tR.SetPlaceRarities = fns.fn66
tR.SetClaimIndex = fn1091
tR.SetEquipBest = fn904
tR.SetTreadmill = fn460
tR.SetUpgradeTreadmill = fns.fn228
tR.SetUpgradePen = fn717
tR.SetBuyTrails = fns.fn2
tR.SetSell = fn661
tR.SetSellRarities = fn624
tR.SetTrailTargets = fn1098
tR.Track(fn489)
t1 = {
    WalkSpeedEnabled = false,
    WalkSpeed = 32,
    InfJump = false,
    NoClip = false,
    Fly = false,
    FlySpeed = 60,
    InstantPrompt = false,
    SpeedSnap = {},
    CollisionSnap = {},
    PromptSnap = {},
    FlySnap = {},
    Conns = {}
}
tZ = function(ju)
    for i, v in ipairs(ju) do
        local BD = v
        pcall(function()
            BD:Disconnect()
        end)
    end
    table.clear(ju)
end
tR.SetWalkSpeedEnabled = fn1099
tR.SetWalkSpeedValue = fns.fn114
tR.SetInfJump = fn983
tR.SetNoClip = fn519
tR.SetFly = fn1081
tR.SetFlySpeed = fn358
tR.SetInstantProximityPrompt = fn1031
ER_4 = 7
repeat
    local Gm = bit32.rrotate(bit32.bxor(bit32.lrotate(ER_4, 29), string.byte(tostring(ER_4))), 15)
    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Gm, 1763990355), 1742820339), (bit32.bxor(bit32.band(Gm, 2530976940), 3241172542))), 1742820339), 3241172542) ~= Gm then
        table.insert(s2.Conns, tR.UserInputService.JumpRequest:Connect(onJumpRequest))
        table.insert(s2.Conns, tR.RunService.Stepped:Connect(onStepped))
        table.insert(s2.Conns, tR.RunService.RenderStepped:Connect(onRenderStepped))
        table.insert(s2.Conns, LocalPlayer.DescendantAdded:Connect(onDescendantAdded))
        table.insert(s2.Conns, t1.CharacterAdded:Connect(function(kw)
            task.defer(function()
                if not tq() then
                    return
                end
                kw:WaitForChild("Humanoid", 10)
                if t1.WalkSpeedEnabled then
                    tR.SetWalkSpeedEnabled(true)
                end
                if t1.Fly then
                    tR.SetFly(true)
                end
            end)
        end))
        td.Track(fns.fn265)
    else
        table.insert(t1.Conns, s2.UserInputService.JumpRequest:Connect(onJumpRequest))
        table.insert(t1.Conns, s2.RunService.Stepped:Connect(onStepped))
        table.insert(t1.Conns, s2.RunService.RenderStepped:Connect(onRenderStepped))
        table.insert(t1.Conns, td.DescendantAdded:Connect(onDescendantAdded))
        table.insert(t1.Conns, LocalPlayer.CharacterAdded:Connect(function(kw)
            task.defer(function()
                if not tq() then
                    return
                end
                kw:WaitForChild("Humanoid", 10)
                if t1.WalkSpeedEnabled then
                    tR.SetWalkSpeedEnabled(true)
                end
                if t1.Fly then
                    tR.SetFly(true)
                end
            end)
        end))
        tR.Track(fns.fn265)
    end
    ER_4 = (ER_4 + 3) % 8
until (ER_4 * 3 + 4) % 8 == 2
tQ, Library, ThemeManager, SaveManager, Toggles, Options, tk, tN, te, um = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
tQ = {
    AntiAfk = true,
    NoGameplayPaused = true,
    AutoReconnect = false,
    Disable3D = false,
    FpsBoost = false,
    AfkConn = nil,
    AfkTask = nil,
    ReconnectConns = {},
    FpsSnapshots = {},
    FpsConn = nil,
    PausedConn = nil
}
tN = fn1047
tR.SetAntiAfk = fn1136
tR.SetNoGameplayPaused = function(k1)
    local C7
    local C9 = k1 and true or false
    tQ.NoGameplayPaused = C9
    if tQ.PausedConn then
        tQ.PausedConn:Disconnect()
        tQ.PausedConn = nil
    end
    if not tQ.NoGameplayPaused then
        return
    end
    C7 = function()
        pcall(function()
            local RobloxPromptGui = s2.CoreGui:FindFirstChild("RobloxPromptGui", true)
            if not RobloxPromptGui then
                return
            end
            for i, descendant in ipairs(RobloxPromptGui:GetDescendants()) do
                local CZ_1 = descendant:IsA("TextLabel") and string.find(string.lower(descendant.Text), "paused", 1, true)
                if CZ_1 then
                    local Frame = descendant:FindFirstAncestorOfClass("Frame")
                    if Frame then
                        Frame.Visible = false
                    end
                end
            end
        end)
    end
    C7()
    tQ.PausedConn = s2.CoreGui.DescendantAdded:Connect(function()
        if tQ.NoGameplayPaused then
            C7()
        end
    end)
end
tR.SetAutoReconnect = fn963
tR.SetDisable3D = fn1117
tR.SetFpsBoost = function(lx)
    local DD
    local DF = lx and true or false
    tQ.FpsBoost = DF
    if tQ.FpsConn then
        tQ.FpsConn:Disconnect()
        tQ.FpsConn = nil
    end
    local function DE_1()
        for k, v in pairs(tQ.FpsSnapshots) do
            local Dr = k
            if Dr and Dr.Parent then
                for k, v in pairs(v) do
                    local Dx = k
                    local Dz = v
                    pcall(function()
                        Dr[Dx] = Dz
                    end)
                end
            end
        end
        table.clear(tQ.FpsSnapshots)
    end
    if not tQ.FpsBoost then
        DE_1()
        return
    end
    DD = function(lK)
        if tQ.FpsSnapshots[lK] then
            return
        end
        local DA = lK:IsA("ParticleEmitter") or lK:IsA("Trail") or lK:IsA("Beam") or lK:IsA("Fire") or lK:IsA("Smoke") or lK:IsA("Sparkles")
        if DA then
            tQ.FpsSnapshots[lK] = { Enabled = lK.Enabled }
            lK.Enabled = false
        end
    end
    for i, descendant in ipairs(td:GetDescendants()) do
        DD(descendant)
    end
    if tQ.FpsSnapshots[s2.Lighting] == nil then
        tQ.FpsSnapshots[s2.Lighting] = { GlobalShadows = s2.Lighting.GlobalShadows, FogEnd = s2.Lighting.FogEnd }
        s2.Lighting.GlobalShadows = false
    end
    tQ.FpsConn = td.DescendantAdded:Connect(function(lR)
        if tQ.FpsBoost then
            DD(lR)
        end
    end)
end
tR.Track(fn673)
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles, Options = Library.Toggles, Library.Options
uG(tR, Library)
ER_9 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = uh, Copyable = true }, "|", uj, "|", ER_15 },
    Icon = 132608042600488,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
tk = {
    Info = ER_9:AddTab("Info", "info"),
    Main = ER_9:AddTab("Main", "gamepad-2"),
    Player = ER_9:AddTab("Player", "person-standing"),
    Settings = ER_9:AddTab("Settings", "settings")
}
te = fn805
um = fn1201
local function uD()
    local Ec
    local D8
    local D4
    local Ee
    D4 = nil
    D8 = nil
    Ec = nil
    Ee = nil
    local Label2, Label, D7, D9, Label3, Eb, Ed
    local Eg_1
    local Ef_1
    Ec = function(mf)
        return (tostring(mf):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
    end
    D8 = function(mh, mi)
        return string.format('<font color="%s">%s</font>', mi, Ec(mh))
    end
    Ed = function(ml, mm, mn)
        return string.format("<b>%s</b> %s %s", ml, D8("-", "#5a6070"), D8(mm, mn))
    end
    Eb, Ef_1, D9, Eg_1 = "#7fd47f", "#6ec1ff", "#e8a34d", "#8b93a3"
    D4 = "Unknown"
    pcall(function()
        local DS_1
        local DR_1
        if type(identifyexecutor) == "function" then
            DS_1, DR_1 = identifyexecutor()
            local DT = DS_1 ~= ""
            local DU = type(DS_1) == "string" and DT
            if DU then
                local DT_1 = type(DR_1) == "string" and DR_1 ~= "" and DS_1 .. " " .. DR_1
                D4 = DT_1 or DS_1
            end
        end
    end)
    Ee = os.clock()
    D7 = function()
        local DZ = math.floor(os.clock() - Ee)
        if DZ < 60 then
            return DZ .. "s"
        elseif DZ < 3600 then
            return string.format("%dm %ds", DZ // 60, DZ % 60)
        else
            return string.format("%dh %dm", DZ // 3600, DZ % 3600 // 60)
        end
    end
    local UserGroup = tk.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(Ed("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, Eb), true)
    UserGroup:AddLabel(Ed("UserId", tostring(LocalPlayer.UserId), Ef_1), true)
    UserGroup:AddLabel(Ed("Executor", D4, Eb), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(Ed("Session", D7(), D9), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            te(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            te("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local DiscordGroup = tk.Info:AddRightGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = uh,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    local SessionGroup = tk.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddLabel(Ed("Game", uj, Ef_1), true)
    Label2 = SessionGroup:AddLabel(Ed("Players", "0/0", Eb), true)
    local Ef_2 = tostring(game.JobId)
    local Ei = #Ef_2 > 18 and string.sub(Ef_2, 1, 18) .. "..."
    local Ej = Ei or Ef_2
    SessionGroup:AddLabel(Ed("Job", Ej, Eg_1), true)
    Label = SessionGroup:AddLabel(Ed("Ping", "0 ms", D9), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Place",
        Func = function()
            s2.TeleportService:Teleport(game.PlaceId, LocalPlayer)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            te(tostring(game.JobId), "Copied Job ID")
        end
    })
    local SocialsGroup = tk.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({
        Text = "Copy Discord Invite",
        Func = function()
            te(uh, "Copied Discord invite")
        end
    })
    SocialsGroup:AddButton({
        Text = "Copy Rscripts Link",
        Func = function()
            te(t8, "Copied Rscripts link")
        end
    })
    SocialsGroup:AddButton({
        Text = "Copy Website Link",
        Func = function()
            te(t7, "Copied website link")
        end
    })
    task.spawn(function()
        local D3 = false
        repeat
            local D0
            if tq() then
                Label3:SetText(Ed("Session", D7(), D9))
                Label2:SetText(Ed("Players", tostring(#s2.Players:GetPlayers()) .. "/" .. tostring(s2.Players.MaxPlayers), Eb))
                D0 = 0
                pcall(function()
                    D0 = math.floor(s2.Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                Label:SetText(Ed("Ping", tostring(D0) .. " ms", D9))
                task.wait(1)
            else
                D3 = true
            end
        until D3
    end)
end
uE = function()
    um(tk.Main)
    local StealGroup = tk.Main:AddLeftGroupbox("Steal", "egg")
    local Label = StealGroup:AddLabel(tO.Status, true)
    StealGroup:AddDivider()
    StealGroup:AddToggle("AutoSteal", { Text = "Auto Steal", Default = false })
    StealGroup:AddDropdown("StealZones", { Text = "Zone Filter", Values = tX, Default = {}, Multi = true, AllowNull = true })
    StealGroup:AddDropdown("StealRarities", { Text = "Rarity Filter", Values = tb, Default = {}, Multi = true, AllowNull = true })
    StealGroup:AddSlider("StealDelay", { Text = "Steal Delay", Default = 0.35, Min = 0.1, Max = 5, Rounding = 2, Suffix = "s" })
    local Place_HatchGroup = tk.Main:AddLeftGroupbox("Place / Hatch", "package")
    Place_HatchGroup:AddToggle("AutoPlace", { Text = "Auto Place Eggs", Default = false })
    Place_HatchGroup:AddDropdown("PlaceRarities", { Text = "Rarity Filter", Values = tb, Default = {}, Multi = true, AllowNull = true })
    Place_HatchGroup:AddSlider("PlaceDelay", { Text = "Place Delay", Default = 0.45, Min = 0.1, Max = 5, Rounding = 2, Suffix = "s" })
    Place_HatchGroup:AddToggle("AutoHatch", { Text = "Auto Hatch Eggs", Default = false })
    Place_HatchGroup:AddSlider("HatchDelay", { Text = "Hatch Delay", Default = 0.75, Min = 0.2, Max = 10, Rounding = 2, Suffix = "s" })
    local ProgressGroup = tk.Main:AddRightGroupbox("Progress", "sparkles")
    ProgressGroup:AddToggle("AutoClaimIndex", { Text = "Auto Claim Index", Default = false })
    ProgressGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
    ProgressGroup:AddToggle("AutoTreadmill", { Text = "Auto Go on Treadmill", Default = false })
    ProgressGroup:AddToggle("AutoUpgradeTreadmill", { Text = "Auto Upgrade Treadmill", Default = false })
    ProgressGroup:AddToggle("AutoUpgradePen", { Text = "Auto Upgrade Pen", Default = false })
    ProgressGroup:AddSlider("UpgradeDelay", { Text = "Upgrade Delay", Default = 1, Min = 0.3, Max = 10, Rounding = 1, Suffix = "s" })
    local TrailsGroup = tk.Main:AddRightGroupbox("Trails", "footprints")
    TrailsGroup:AddToggle("AutoBuyTrails", { Text = "Auto Buy Trails", Default = false })
    TrailsGroup:AddDropdown("TrailTargets", { Text = "Trails", Values = tA, Default = {}, Multi = true, AllowNull = true })
    local SellGroup = tk.Main:AddRightGroupbox("Sell", "dollar-sign")
    SellGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
    SellGroup:AddDropdown("SellRarities", { Text = "Sell Rarities", Values = tb, Default = {}, Multi = true, AllowNull = true })
    SellGroup:AddSlider("SellDelay", { Text = "Sell Delay", Default = 2, Min = 0.5, Max = 30, Rounding = 1, Suffix = "s" })
    SellGroup:AddButton({
        Text = "Sell Now",
        Func = function()
            ug()
        end
    })
    task.spawn(function()
        while tq() do
            Label:SetText(tO.Status)
            task.wait(0.25)
        end
    end)
    Toggles.AutoSteal:OnChanged(function(nC)
        tR.SetSteal(nC)
    end)
    Options.StealZones:OnChanged(function(nG)
        tR.SetStealZones(nG)
    end)
    Options.StealRarities:OnChanged(function(nI)
        tR.SetStealRarities(nI)
    end)
    Options.StealDelay:OnChanged(function(nK)
        local Em = (tonumber(nK))
        local Eq = if Em then 1 else 0
        local Eo = 2317 * Eq + 18 * (1 - Eq)
        local Ep = 690 * Eq + 2009 * (1 - Eq)
        if not ((Eo * 1886 + Ep * 726 + Eo * Ep) % 16777213 == 6469532) then
            Em = 0.35
        end
        tO.StealDelay = Em
    end)
    Toggles.AutoPlace:OnChanged(function(nM)
        tR.SetPlace(nM)
    end)
    Options.PlaceRarities:OnChanged(function(nO)
        tR.SetPlaceRarities(nO)
    end)
    Options.PlaceDelay:OnChanged(function(nQ)
        local Er = tonumber(nQ) or 0.45
        tO.PlaceDelay = Er
    end)
    Toggles.AutoHatch:OnChanged(function(nS)
        tR.SetHatch(nS)
    end)
    Options.HatchDelay:OnChanged(function(nU)
        local Et = tonumber(nU) or 0.75
        tO.HatchDelay = Et
    end)
    Toggles.AutoClaimIndex:OnChanged(function(nW)
        tR.SetClaimIndex(nW)
    end)
    Toggles.AutoEquipBest:OnChanged(function(nY)
        tR.SetEquipBest(nY)
    end)
    Toggles.AutoTreadmill:OnChanged(function(n_)
        tR.SetTreadmill(n_)
    end)
    Toggles.AutoUpgradeTreadmill:OnChanged(function(n1)
        tR.SetUpgradeTreadmill(n1)
    end)
    Toggles.AutoUpgradePen:OnChanged(function(n3)
        tR.SetUpgradePen(n3)
    end)
    Options.UpgradeDelay:OnChanged(function(n5)
        local Ev = tonumber(n5) or 1
        tO.UpgradeDelay = Ev
    end)
    Toggles.AutoBuyTrails:OnChanged(function(n7)
        tR.SetBuyTrails(n7)
    end)
    Options.TrailTargets:OnChanged(function(n9)
        tR.SetTrailTargets(n9)
    end)
    Toggles.AutoSell:OnChanged(function(ob)
        tR.SetSell(ob)
    end)
    Options.SellRarities:OnChanged(function(od)
        tR.SetSellRarities(od)
    end)
    Options.SellDelay:OnChanged(function(of)
        local Ex = tonumber(of) or 2
        tO.SellDelay = Ex
    end)
end
ER_16 = fn707
uC = function()
    um(tk.Settings)
    local MenuGroup = tk.Settings:AddLeftGroupbox("Menu", "settings")
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    MenuGroup:AddToggle("NoGameplayPaused", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3DRendering", { Text = "Disable 3D Rendering", Default = false })
    MenuGroup:AddToggle("FPSBoost", { Text = "FPS Boost", Default = false })
    MenuGroup:AddToggle("HideUIOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local ScriptGroup = tk.Settings:AddLeftGroupbox("Script", "scroll-text")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            Library:Unload()
        end
    })
    Toggles.AntiAfk:OnChanged(function(oP)
        tR.SetAntiAfk(oP)
    end)
    Toggles.NoGameplayPaused:OnChanged(function(oS)
        tR.SetNoGameplayPaused(oS)
    end)
    Toggles.AutoReconnect:OnChanged(function(oU)
        tR.SetAutoReconnect(oU)
    end)
    Toggles.Disable3DRendering:OnChanged(function(oW)
        tR.SetDisable3D(oW)
    end)
    Toggles.FPSBoost:OnChanged(function(oY)
        tR.SetFpsBoost(oY)
    end)
    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder("MyScriptHub")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    ThemeManager:ApplyToTab(tk.Settings)
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    SaveManager:SetFolder("OuroborosHub/StealAndHatchBrainrotEggs")
    local EN_2 = SaveManager:BuildConfigSection(tk.Settings)
    if EN_2 then
        EN_2:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Default = "", Finished = true, AllowEmpty = true })
        EN_2:AddButton({
            Text = "Export Config to Clipboard",
            Func = function()
                local EB_1
                local EA_1
                EA_1, EB_1 = pcall(function()
                    if tD(SaveManager.ExportConfig) then
                        return SaveManager:ExportConfig()
                    end
                    error("unavailable")
                end)
                local EC = EA_1 and type(EB_1) == "string"
                if EC then
                    te(EB_1, "Copied config")
                else
                    Library:Notify("Export unavailable", 3)
                end
            end
        })
        EN_2:AddButton({
            Text = "Import Config from Paste",
            Func = function()
                local EI
                EI = Options.SaveManager_ImportSource and Options.SaveManager_ImportSource.Value or ""
                if EI == "" then
                    Library:Notify("Paste a config first", 3)
                    return
                end
                local EJ_1 = pcall(function()
                    local EH = if tD(SaveManager.ImportConfig) then 1 else 0
                    if EH == 1 then
                        SaveManager:ImportConfig(EI)
                    elseif tD(SaveManager.LoadConfigFromJSON) then
                        SaveManager:LoadConfigFromJSON(EI)
                    else
                        error("unavailable")
                    end
                end)
                local EL = EJ_1 and "Imported config" or "Import failed"
                Library:Notify(EL, 3)
                if EJ_1 and Options.SaveManager_ImportSource then
                    Options.SaveManager_ImportSource:SetValue("")
                end
            end
        })
    end
    pcall(function()
        ThemeManager:LoadDefault()
    end)
    pcall(function()
        SaveManager:LoadAutoloadConfig()
    end)
    if Toggles.HideUIOnStart.Value then
        pcall(function()
            Library:Toggle(false)
        end)
    end
end
uD()
uE()
ER_16()
uC()
tR.SetAntiAfk(Toggles.AntiAfk.Value)
tR.SetNoGameplayPaused(Toggles.NoGameplayPaused.Value)
Library:Notify("Steal & Hatch Brainrot Eggs v0.5 loaded", 4)
