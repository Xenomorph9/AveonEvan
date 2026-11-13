local fns = {}
local Fg_3, Fg_6, Fg_13, Fg_21, Fg_24, Fg_27
local uv
local vc
local uc
local vi
local tB
local t_
local tH
local uo
local t5
local uu
local ub
local uT
local tT
local uh
local tZ
local un
local t4
local uM
local va
local ua
local tS
local uz
local vg
local Toggles
local ug
local uY
local tY
local tF
local u3
local t3
local tL
local us
local t9
local tR
local uy
local vf
local uf
local uX
local tX
local uE
local vl
local u2
local t2
local uK
local tK
local u8
local t8
local ux
local ve
local tx
local uW
local tW
local t1
local tJ
local uq
local u7
local t7
local tP
local uw
local vd
local tw
local ud
local tV
local uC
local vj
local tC
local u0
local uI
local tI
local up
local u6
local t6
function fns.fn46(h6, h7)
    local Ay = {}
    if not h6 then
        return Ay
    end
    for i, child in h6:GetChildren() do
        local Az = string.match(child.Name, h7)
        if Az then
            Ay[#Ay + 1] = tonumber(Az)
        end
    end
    return Ay
end
function fns.worker2()
    while not tL.Unloaded do
        pcall(uv)
        pcall(uY)
        task.wait(1)
    end
end
function fns.fn89(cU, cV)
    local xj = tX()
    local xk = not xj or typeof(cU) ~= "Vector3"
    if xk then
        return
    end
    local xk_1 = cV
    local xt = if xk_1 then 1 else 0
    local xr = 1921 * xt + 1197 * (1 - xt)
    local xs = 1576 * xt + 60 * (1 - xt)
    if not ((xr * 1416 + xs * 3727 + xr * xs) % 16777213 == 11621384) then
        xk_1 = 8
    end
    local xl = xk_1
    local xk_2 = Vector3.new(cU.X - xj.Position.X, 0, cU.Z - xj.Position.Z)
    local xm = xk_2.Magnitude > 0.1 and xk_2.Unit
    local xk_3 = xm or Vector3.new(0, 0, 1)
    xj.CFrame = CFrame.new(cU + xk_3 * xl + Vector3.new(0, 3, 0))
end
function fns.worker()
    while not tL.Unloaded do
        pcall(uw)
        pcall(t7)
        pcall(uy)
        pcall(tS)
        pcall(uz)
        pcall(tT)
        pcall(tZ)
        pcall(tK)
        pcall(tF)
        pcall(tw)
        pcall(uI)
        pcall(uX)
        task.wait(0.05)
    end
end
function fns.fn130(b9)
    return uh[b9] or b9
end
function fns.fn148()
    uM(vc, "Copied Discord invite to clipboard")
end
function fns.fn168()
    local Character = uf.Character
    local vY = Character and Character:FindFirstChild("HumanoidRootPart")
    return vY
end
function fns.fn182()
    vd("Egg", "AutoUnlockEggs", "lastUnlockEggsAt", u0)
end
local function fn200()
    if not Toggles.AutoRebirth or not Toggles.AutoRebirth.Value then
        return false
    end
    local zX_1 = ux("RebirthLevel", 0)
    local zY = tY[zX_1 + 1]
    if not zY then
        return false
    end
    return ub() < zY.cash
end
local function fn219(aF)
    vg[#vg + 1] = aF
    return aF
end
local function fn224()
    if not Toggles.AutoBuyUpgrades or not Toggles.AutoBuyUpgrades.Value then
        return
    end
    if vi() then
        return
    end
    local Al_1 = os.clock()
    if Al_1 - u6.lastUpgradeAt < 0.75 then
        return
    end
    u6.lastUpgradeAt = Al_1
    local Am_1 = tx[vl.UpgradeAmount and vl.UpgradeAmount.Value or "Single (1)"] or 1
    local Al_4 = false
    for k, v in tJ do
        if uC(vl.UpgradeTarget, v) then
            tI(v, Am_1)
            Al_4 = true
        end
    end
    if not Al_4 then
        tI("BubbleValue", Am_1)
    end
end
local function fn229()
    local MapV3 = un:FindFirstChild("MapV3")
    local wJ = MapV3 and MapV3:FindFirstChild("Attachments")
    local wI_1 = wJ
    if wJ then
        wJ = wI_1:FindFirstChild("Attachments")
    end
    local wI_2 = wJ
    if wJ then
        wJ = wI_2:FindFirstChild("TeleportAttachments")
    end
    return wJ
end
local function fn272()
    local wD_1
    local wC_1
    wC_1, wD_1 = pcall(function()
        return require(uf.PlayerScripts.Weapon.WeaponRenderer)
    end)
    local wE = not wC_1 or type(wD_1) ~= "table"
    if wE then
        return nil
    end
    return wD_1.WeaponRenderer or wD_1
end
local function fn283()
    return ux("Gems", 0)
end
local function fn322()
    local x0 = {}
    local x1 = t2()
    local x2 = x1 and type(x1.renderedBubbles) == "table"
    if x2 then
        for k, v in x1.renderedBubbles do
            local x1_1 = v and v.cachedPrimaryPart
            local x2_1 = x1_1
            if x1_1 then
                x1_1 = x2_1.Parent
            end
            if x1_1 then
                x1_1 = type(k) == "number"
            end
            if x1_1 then
                x0[#x0 + 1] = { id = k, position = x2_1.Position }
            end
        end
    end
    if #x0 > 0 then
        return x0
    end
    local x1_2 = va()
    if not x1_2 then
        return x0
    end
    local x2_2 = uT()
    local x3 = x2_2 and x2_2.accumulators
    if type(x3) == "table" then
        for k, v in x3 do
            local x2_4 = type(k) == "number" and type(v) == "table"
            if x2_4 then
                x0[#x0 + 1] = { id = k, position = nil, maxHealth = v.localMaxHp, currentHealth = v.localCurrentHp }
            end
        end
    end
    local x2_5 = {}
    for i, child in x1_2:GetChildren() do
        local x1_3 = child.PrimaryPart
        local yq = if x1_3 then 1 else 0
        local yo = 3072 * yq + 3205 * (1 - yq)
        local yp = 1228 * yq + 1486 * (1 - yq)
        if not ((yo * 3430 + yp * 443 + yo * yp) % 16777213 == 14853380) then
            x1_3 = child:FindFirstChildWhichIsA("BasePart", true)
        end
        local x3_1 = x1_3
        if x3_1 then
            x2_5[#x2_5 + 1] = x3_1.Position
        end
    end
    for k, v in x0 do
        local x1_4 = not v.position
        if x1_4 ~= false then
            x1_4 = x2_5[k]
        end
        if x1_4 then
            v.position = x2_5[k]
        end
    end
    return x0
end
local function fn332()
    local zB = ux("RebirthLevel", 0)
    if zB >= #tY then
        return false
    end
    local zC = tY[zB + 1]
    if not zC then
        return false
    end
    local zB_1 = ub() < zC.cash
    local zG = if zB_1 then 1 else 0
    local zE = 631 * zG + 527 * (1 - zG)
    local zF = 1514 * zG + 2992 * (1 - zG)
    if not ((zE * 3001 + zF * 2658 + zE * zF) % 16777213 == 6873177) then
        zB_1 = t5() < zC.essence
    end
    if zB_1 then
        return false
    end
    local zB_2 = tR()
    if not zB_2.Candy then
        return false
    end
    return true, zC
end
local function fn391(g0, g1)
    local z_ = g0 and g0.Value
    if type(z_) ~= "table" then
        return false
    end
    return z_[g1] == true
end
local function fn423()
    local BubblesGroup = t_.Main:AddLeftGroupbox("Bubbles", "circle")
    BubblesGroup:AddToggle("AutoPopBubbles", { Text = "Auto Pop Bubbles", Default = false })
    BubblesGroup:AddDropdown("BubbleZoneSelector", { Text = "Farm Zone", Values = t9, Default = 1 })
    BubblesGroup:AddToggle("AutoPopShields", { Text = "Auto Pop Shields", Default = false })
    BubblesGroup:AddToggle("AutoCollectCash", { Text = "Auto Collect Cash", Default = false })
    BubblesGroup:AddToggle("AutoCollectGems", { Text = "Auto Collect Diamonds", Default = false })
    BubblesGroup:AddToggle("AutoCollectEssence", { Text = "Auto Collect Essence", Default = false })
    BubblesGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
    BubblesGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
    local TravelGroup = t_.Main:AddLeftGroupbox("Travel", "map-pin")
    TravelGroup:AddDropdown("TeleportDestination", { Text = "Teleport", Values = t6, Default = 1 })
    local RewardsGroup = t_.Main:AddLeftGroupbox("Rewards", "gift")
    RewardsGroup:AddToggle("AutoClaimTasks", { Text = "Auto Claim Tasks", Default = false })
    RewardsGroup:AddToggle("AutoClaimDailies", { Text = "Auto Claim Dailies", Default = false })
    local EggsGroup = t_.Main:AddRightGroupbox("Eggs", "egg")
    EggsGroup:AddToggle("AutoHatchEggs", { Text = "Auto Hatch Eggs", Default = false })
    EggsGroup:AddDropdown("HatchEggTarget", { Text = "Eggs", Values = vj, Multi = true, Default = ve })
    EggsGroup:AddToggle("HatchEggBatch", { Text = "Batch Hatch x3", Default = false })
    EggsGroup:AddToggle("AutoUnlockEggs", { Text = "Auto Unlock Eggs", Default = false })
    local ShopGroup = t_.Main:AddRightGroupbox("Shop", "shopping-bag")
    ShopGroup:AddToggle("AutoBuyWeapons", { Text = "Auto Buy Weapons", Default = false })
    ShopGroup:AddDropdown("BuyWeaponTier", { Text = "Weapon Tier", Values = tV, Default = 1 })
    ShopGroup:AddToggle("BuyWeaponBatch", { Text = "Batch Mode", Default = false })
    ShopGroup:AddToggle("AutoUnlockLuckyBlocks", { Text = "Auto Unlock Lucky Blocks", Default = false })
    ShopGroup:AddDivider("Upgrades")
    ShopGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
    ShopGroup:AddDropdown("UpgradeTarget", { Text = "Target Upgrade", Values = tJ, Multi = true, Default = tH })
    ShopGroup:AddDropdown("UpgradeAmount", { Text = "Amount", Values = tC, Default = 2 })
    vl.BubbleZoneSelector:OnChanged(function(l8)
        local CJ = l8 ~= ""
        local CK = type(l8) == "string" and CJ
        if CK then
            u6.desiredZone = l8
            vf(l8)
        end
    end)
    vl.TeleportDestination:OnChanged(function(l9)
        local CM = t4[l9]
        local CN = CM ~= ""
        local CO = type(CM) == "string" and CN
        if CO then
            vf(CM)
        end
    end)
end
local function fn479(dJ)
    local MapV3 = un:FindFirstChild("MapV3")
    local xI = MapV3 and MapV3:FindFirstChild("EXTRAS")
    local xH_1 = xI
    if xI then
        xI = xH_1:FindFirstChild("Barrier")
    end
    local xH_2 = xI
    if xI then
        xI = xH_2:FindFirstChild(dJ)
    end
    return xI
end
local function fn505()
    local wh = u7(uf:GetAttribute("SeenZoneEntries"), {})
    local wi = {}
    for k, v in wh do
        if type(v) == "string" then
            wi[v] = true
        end
    end
    return wi
end
local function fn517()
    return ux("Essence", ux("LifetimeEssenceEarned", 0))
end
local function fn571(a9, ba)
    local attr = uf:GetAttribute(a9)
    if type(attr) == "number" then
        return attr
    end
    return ba or 0
end
local function fn599()
    return uE
end
local function fn652()
    local z2 = u7(uf:GetAttribute("UnlockedStations"), {})
    local z3 = {}
    for k, v in z2 do
        if type(v) == "string" then
            z3[v] = true
        end
    end
    return z3
end
local function fn665()
    return string.format("%s_%s", uf.UserId, tostring(os.clock()))
end
local function fn666()
    local zH = not Toggles.AutoRebirth
    local zL = if zH then 1 else 0
    local zJ = 3007 * zL + 2228 * (1 - zL)
    local zK = 2486 * zL + 2602 * (1 - zL)
    if not ((zJ * 3971 + zK * 3203 + zJ * zK) % 16777213 == 10601644) then
        zH = not Toggles.AutoRebirth.Value
    end
    if zH then
        return
    end
    local zH_1 = os.clock()
    if zH_1 - u6.lastRebirthAt < 3 then
        return
    end
    if not t8() then
        return
    end
    u6.lastRebirthAt = zH_1
    pcall(function()
        tW.RebirthRequest:InvokeServer()
    end)
end
local function fn674()
    local y3 = (uf:GetAttribute("OwnedWeapons"))
    local y8 = if y3 then 1 else 0
    local y6 = 1655 * y8 + 2230 * (1 - y8)
    local y7 = 3365 * y8 + 3342 * (1 - y8)
    if not ((y6 * 532 + y7 * 3868 + y6 * y7) % 16777213 == 2688142) then
        y3 = uf:GetAttribute("OwnedWeaponCounts")
    end
    local y4 = y3
    return u7(y4, {})
end
local function fn699(a2, a3)
    local v5 = a2 == ""
    local v5_1
    local v6 = type(a2) ~= "string" or v5
    local v6_1
    if v6 then
        return a3
    end
    v5_1, v6_1 = pcall(uK.JSONDecode, uK, a2)
    local v7 = v5_1 and type(v6_1) == "table"
    if v7 then
        return v6_1
    end
    return a3
end
local function fn707(aI, aJ)
    if setclipboard then
        setclipboard(aI)
    elseif toclipboard then
        toclipboard(aI)
    end
    tL:Notify(aJ)
end
local function fn719(aP)
    local DiscordGroup = aP:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = us })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = us })
end
local function fn762()
    local zc_1
    local zb_1
    local za_1
    local y9 = u8()
    zc_1, zb_1, za_1 = nil, nil, -1
    for k, v in y9 do
        local y9_1 = tonumber(k)
        local zd = y9_1 and type(v) == "table"
        if zd then
            for k, v in v do
                local zd_1 = tonumber(k)
                local ze = tonumber(v) or 0
                local zf = zd_1
                if zf then
                    zf = ze > 0
                end
                if zf then
                    local ze_1 = y9_1 * 1000 + zd_1
                    if ze_1 > za_1 then
                        za_1 = ze_1
                        zc_1 = y9_1
                        zb_1 = zd_1
                    end
                end
            end
        end
    end
    return zc_1, zb_1
end
local function fn767(hr)
    local Ae = tX()
    local Af = not Ae or type(hr) ~= "table"
    if Af then
        return false
    end
    local Af_1 = tP(hr.zone, hr.attachName)
    if not Af_1 then
        vf(hr.zone)
        return false
    end
    if (Ae.Position - Af_1.Position).Magnitude > uq then
        if not ua(hr.zone) then
            vf(hr.zone)
            return false
        end
        Ae.CFrame = Af_1 * CFrame.new(0, uu, 0)
        return false
    end
    return true
end
local function fn787()
    return ux("Cash", 0)
end
local function fn813()
    return un:FindFirstChild("LocalGemDrops_" .. uf.UserId)
end
local function fn838()
    local wU = vl.BubbleZoneSelector and vl.BubbleZoneSelector.Value
    local wU_1 = wU ~= ""
    local wW = type(wU) == "string" and wU_1
    if wW then
        return wU
    end
    return nil
end
local function fn899()
    local xS = tR()
    for k, v in t1 do
        local xT = not xS[v]
        if xT ~= false then
            xT = u2(v)
        end
        if xT then
            return v
        end
    end
    return nil
end
local function fn906()
    return require(u3.GameData.DailyMissionConfig)
end
local function fn938(dS)
    local xK = u2(dS)
    if not xK then
        return nil
    end
    local Seal = xK:FindFirstChild("Seal")
    local xM = Seal
    if xM then
        local xN = Seal.PrimaryPart or Seal:FindFirstChildWhichIsA("BasePart", true)
        xM = xN
    end
    local xL_1 = xM
    if not xL_1 then
        local xM_1 = xK.PrimaryPart or xK:FindFirstChildWhichIsA("BasePart", true)
        xL_1 = xM_1
    end
    return xL_1 and xL_1.Position or nil
end
local function fn975()
    local wG = os.clock()
    if wG - u6.lastCombatPingAt < 1 then
        return
    end
    u6.lastCombatPingAt = wG
    pcall(function()
        tW.FrenzyCombatPing:FireServer()
    end)
end
local function fn987()
    local wz_1
    local wy_1
    wy_1, wz_1 = pcall(function()
        return require(uf.PlayerScripts.Bubbles.BubbleRenderer)
    end)
    local wA = not wy_1 or type(wz_1) ~= "table"
    if wA then
        return nil
    end
    local BubbleRenderer = wz_1.BubbleRenderer
    return BubbleRenderer and BubbleRenderer.instance or nil
end
local function fn995()
    return require(u3.GameData.BatchOpenConfig)
end
local function fn1006()
    vd("Lootbox", "AutoUnlockLuckyBlocks", "lastUnlockLootboxesAt", uW)
end
local function fn1016()
    return un:FindFirstChild("LocalEssenceDrops_" .. uf.UserId)
end
local function fn1045()
    local Character = uf.Character
    local v0 = Character and Character:FindFirstChildOfClass("Humanoid")
    return v0
end
local function fn1062(hc, hd)
    local MapV3 = un:FindFirstChild("MapV3")
    local Ac = MapV3 and MapV3:FindFirstChild("Attachments")
    local Ab_1 = Ac
    if Ac then
        Ac = Ab_1:FindFirstChild("Attachments")
    end
    local Ab_2 = Ac
    if Ac then
        Ac = Ab_2:FindFirstChild("ZoneAttachments")
    end
    local Ab_3 = Ac
    if Ac then
        Ac = Ab_3:FindFirstChild(hc)
    end
    local Ab_4 = Ac
    if Ac then
        Ac = Ab_4:FindFirstChild(hd)
    end
    local Ab_5 = Ac
    if not Ab_5 then
        return nil
    elseif Ab_5:IsA("Attachment") then
        return Ab_5.WorldCFrame
    elseif Ab_5:IsA("BasePart") then
        return Ab_5.CFrame
    else
        return nil
    end
end
local function fn1087(cc)
    local wP_3
    local wN = cc == ""
    local wN_6
    local wO = type(cc) ~= "string" or wN
    if wO then
        return nil
    elseif cc == "Base" then
        local attr = uf:GetAttribute("BaseSpawnAnchorCFrame")
        if typeof(attr) == "CFrame" then
            return attr
        end
        cc = "Hub"
        local wN_2 = ud[cc]
        if wP_3 then
            wN_2 = cc
        end
        if type(wN_2) ~= "string" then
            return nil
        end
        local wO_2 = ug()
        local wP_2 = wO_2 and wO_2:FindFirstChild(wN_2)
        if not wN_6 then
            return nil
        elseif wN_6:IsA("Attachment") then
            return wP_2.WorldCFrame
        elseif wN_6:IsA("BasePart") then
            return wP_2.CFrame
        else
            local BasePart = wP_2:FindFirstChildWhichIsA("BasePart", true)
            return BasePart and BasePart.CFrame or nil
        end
    else
        local wN_5 = ud[cc]
        wP_3 = wN_5 == nil and cc ~= "Base"
        if wP_3 then
            wN_5 = cc
        end
        if type(wN_5) ~= "string" then
            return nil
        end
        local wO_6 = ug()
        local wP_4 = wO_6 and wO_6:FindFirstChild(wN_5)
        wN_6 = wP_4
        if not wN_6 then
            return nil
        elseif wN_6:IsA("Attachment") then
            return wN_6.WorldCFrame
        elseif wN_6:IsA("BasePart") then
            return wN_6.CFrame
        else
            local BasePart = wN_6:FindFirstChildWhichIsA("BasePart", true)
            return BasePart and BasePart.CFrame or nil
        end
    end
end
local function fn1112()
    return un:FindFirstChild("LocalCashDrops_" .. uf.UserId)
end
local function fn1180()
    local xe = up()
    if not xe then
        return true
    elseif ua(xe) then
        return true
    else
        vf(xe)
        return false
    end
end
local function fn1233()
    return un:FindFirstChild("ClientRenderedBubbles_" .. uf.UserId)
end
local function fn1282(cs)
    local w0 = cs == ""
    local w1 = type(cs) ~= "string" or w0
    if w1 then
        return true
    end
    local attr2 = uf:GetAttribute("CurrentZoneName")
    local attr = uf:GetAttribute("PhysicallyVisitedZone")
    local w2 = cs == "Hub"
    local w2_12
    local w3 = cs == "Spawn"
    local w8 = if w3 then 1 else 0
    local w6 = 1379 * w8 + 716 * (1 - w8)
    local w7 = 1723 * w8 + 3160 * (1 - w8)
    if not ((w6 * 831 + w7 * 334 + w6 * w7) % 16777213 == 4097448) then
        w3 = w2
    end
    if w3 then
        local w4_1 = attr2 == "Spawn" or attr2 == "Hub" or attr == "Spawn"
        local w2_3 = attr == "Hub"
        local w3_2 = w4_1
        local w8_1 = if w3_2 then 1 else 0
        local w6_1 = 1668 * w8_1 + 2920 * (1 - w8_1)
        local w7_1 = 3281 * w8_1 + 3128 * (1 - w8_1)
        if not ((w6_1 * 891 + w7_1 * 3025 + w6_1 * w7_1) % 16777213 == 106708) then
            w3_2 = w2_3
        end
        if w3_2 then
            return true
        end
        local w0_2 = tX()
        local w1_2 = tB(cs)
        if w2_12 then
            local w2_5 = w0_2.Position - w1_2.Position
            local w0_3 = Vector3.new(w2_5.X, 0, w2_5.Z)
            return w0_3.Magnitude <= uo
        end
        return false
    elseif cs == "Final" then
        local w2_6 = attr2 == "Coral"
        local w3_3 = attr2 == "Final"
        local w8_2 = if w3_3 then 1 else 0
        local w6_2 = 1213 * w8_2 + 3369 * (1 - w8_2)
        local w7_2 = 3143 * w8_2 + 2223 * (1 - w8_2)
        if not ((w6_2 * 1762 + w7_2 * 426 + w6_2 * w7_2) % 16777213 == 7288683) then
            w3_3 = w2_6
        end
        if w3_3 or attr == "Final" or attr == "Coral" then
            return true
        end
        local w0_4 = tX()
        local w1_3 = tB(cs)
        if w2_12 then
            local w2_10 = w0_4.Position - w1_3.Position
            local w0_5 = Vector3.new(w2_10.X, 0, w2_10.Z)
            return w0_5.Magnitude <= uo
        end
        return false
    else
        if attr2 == cs or attr == cs then
            return true
        end
        local w0_6 = tX()
        local w1_4 = tB(cs)
        w2_12 = w0_6 and w1_4
        if w2_12 then
            local w2_13 = w0_6.Position - w1_4.Position
            local w0_7 = Vector3.new(w2_13.X, 0, w2_13.Z)
            return w0_7.Magnitude <= uo
        end
        return false
    end
end
tw = nil
tx = nil
Toggles = nil
tB = nil
tC = nil
tF = nil
tH = nil
tI = nil
tJ = nil
tK = nil
tL = nil
tP = nil
tR = nil
tS = nil
tT = nil
local tU
tV = nil
tW = nil
tX = nil
tY = nil
tZ = nil
t_ = nil
t1 = nil
t2 = nil
t3 = nil
t4 = nil
t5 = nil
t6 = nil
t7 = nil
t8 = nil
t9 = nil
ua = nil
ub = nil
uc = nil
ud = nil
uf = nil
ug = nil
uh = nil
local tv, ty, tA, tD, tE, tG, tM, tN, tO, tQ, t0, ue
un = nil
uo = nil
up = nil
uq = nil
us = nil
uu = nil
uv = nil
uw = nil
ux = nil
uy = nil
uz = nil
uC = nil
uE = nil
uI = nil
uK = nil
uM = nil
uT = nil
uW = nil
uX = nil
uY = nil
u0 = nil
u2 = nil
u3 = nil
local ui, uj, uk, ul, um, ur, ut, uA, uB, uD, uF, uG, uH, uJ, uL, uN, uO, uP, uQ, uR, uS, uU, uV, uZ, u_, u1, u4
u6 = nil
u7 = nil
u8 = nil
va = nil
vc = nil
vd = nil
ve = nil
vf = nil
vg = nil
vi = nil
vj = nil
vl = nil
local u5, u9, vb, vh, vk
u5 = nil
u9 = nil
vb = nil
vh = nil
vk = nil
local function Fg_18(c)
    return c
end
local Fg_1 = cloneref or Fg_18
Fg_21, vb, u3, uZ, uU, uO, uK, uE, uA, ut, un, uj, uf, Fg_3, uc = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Fg_10 = 47
repeat
    Fg_18 = (Fg_10 * 7 + 7) % 8 + 1
    if Fg_18 <= 4 then
        if Fg_18 <= 2 then
            if Fg_18 <= 1 then
                if Fg_10 * 115735909 + 9 + 6 <= Fg_10 * 115735909 + 9 + 6 + 5 then
                    Fg_21 = Fg_1
                else
                    Fg_1 = Fg_21
                end
                Fg_10 = (Fg_10 + 39) % 64
            else
                local FR = bit32.rrotate(bit32.bxor(bit32.lrotate(Fg_10, 24), string.byte(tostring(ut))), 24)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(FR, 1060086639), 39709300), (bit32.bxor(bit32.band(FR, 3234880656), 1923521036))), 39709300), 1923521036) == FR then
                    vb = Fg_21(game:GetService("Players"))
                else
                    Fg_21 = vb(game:GetService("Players"))
                end
                Fg_10 = (Fg_10 + 63) % 64
            end
        elseif Fg_18 <= 3 then
            Fg_13 = {
                "vqysnifv",
                "ryj",
                "ubdlvubahzx",
                "ywuodsho",
                "kcmuapmiu",
                "uezgofumtyx",
                "afseaidysg",
                "vckqrmps"
            }
            if Fg_13[(Fg_10 * 53 + 41) % 8 + 1] <= Fg_13[(Fg_10 * 53 + 41) % 8 + 1] then
                u3 = Fg_21(game:GetService("ReplicatedStorage"))
                uZ = Fg_21(game:GetService("RunService"))
                uU = Fg_21(game:GetService("UserInputService"))
                uO = Fg_21(game:GetService("VirtualUser"))
            else
                uZ = u3(game:GetService("ReplicatedStorage"))
                Fg_21 = u3(game:GetService("RunService"))
                uO = u3(game:GetService("UserInputService"))
                uU = u3(game:GetService("VirtualUser"))
            end
            Fg_10 = (Fg_10 + 7) % 64
        else
            local Gd = bit32.rrotate(bit32.bxor(bit32.lrotate(Fg_10, 18), string.byte(tostring(vb))), 15)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Gd, 2592576889), 2209903694), (bit32.bxor(bit32.band(Gd, 1702390406), 382985500))), 2209903694), 382985500) == Gd then
                uK = Fg_21(game:GetService("HttpService"))
                uE = Fg_21(game:GetService("CoreGui"))
            else
                Fg_21 = uE(game:GetService("HttpService"))
                uK = uE(game:GetService("CoreGui"))
            end
            Fg_10 = (Fg_10 + 15) % 64
        end
    elseif Fg_18 <= 6 then
        if Fg_18 <= 5 then
            local Ge = bit32.rrotate(bit32.bxor(bit32.lrotate(Fg_10, 18), string.byte(tostring(uc))), 3)
            if bit32.bxor(bit32.lrotate(bit32.bxor(Ge, 1254070116), 22), 3641880549) == bit32.lrotate(Ge, 22) then
                uA = Fg_21(game:GetService("GuiService"))
                ut = Fg_21(game:GetService("TeleportService"))
                un = Fg_21(game:GetService("Workspace"))
                uj = Fg_21(game:GetService("Lighting"))
            else
                Fg_21 = ut(game:GetService("GuiService"))
                un = ut(game:GetService("TeleportService"))
                uj = ut(game:GetService("Workspace"))
                uA = ut(game:GetService("Lighting"))
            end
            Fg_10 = (Fg_10 + 23) % 64
        else
            Fg_13 = {
                "rxfmy",
                "znzeshs",
                "jjjdjtd",
                "pysn",
                "jgsljrykbvp",
                "tvmhyvd",
                "mxwpsbqqo",
                "xuproiqemk",
                "prjlcavta",
                "dkrizmza",
                "oliagbeh",
                "lrzqgolfpbp"
            }
            local GP = Fg_10
            Fg_24 = Fg_13[GP % 12 + 1]
            if Fg_24:len() >= Fg_24:gsub("(.)", "%1%1", GP % 3 % 2 + 1):len() then
                vb = uf.LocalPlayer
            else
                uf = vb.LocalPlayer
            end
            Fg_10 = (Fg_10 + 47) % 64
        end
    elseif Fg_18 <= 7 then
        Fg_18 = { "btmud", "ouwzdzcvo", "wymkhujhmpz", "imrnoyactcr", "cyddk", "fwhuf", "elot" }
        local FD = Fg_10
        Fg_13 = Fg_18[FD % 7 + 1]
        if Fg_13:len() >= Fg_13:reverse():rep(FD % 3 + 2):len() then
            uf = fn599
        else
            uc = fn599
        end
        Fg_10 = (Fg_10 + 39) % 64
    else
        Fg_18 = { "pfb", "ygbqnkm", "tsehss", "two", "ffv", "zwtbukc", "uekv", "sgtqaw", "kofyz", "bxmeqcfdzge" }
        local FX = Fg_10
        Fg_13 = Fg_18[FX % 10 + 1]
        if Fg_13:len() >= Fg_13:reverse():rep(FX % 3 + 2):len() then
            uE = getgenv
        else
            Fg_3 = getgenv
        end
        Fg_10 = (Fg_10 + 23) % 64
    end
until (Fg_10 * 33 + 24) % 64 == 39
if Fg_3 then
    Fg_3 = getgenv()
end
Fg_18 = Fg_3 or nil
t3 = Fg_18
Fg_18 = t3 and t3.Ouroboros
Fg_1 = Fg_18 or nil
Fg_18 = Fg_1
if t3 then
    t3.gethui = uc
    Fg_1 = {}
    Fg_10 = Fg_18 or Fg_1
    tU, Fg_3 = nil, nil
    Fg_21 = 10
    repeat
        Fg_1 = (Fg_21 * 1 + 2) % 3 + 1
        if Fg_1 <= 2 then
            if Fg_1 <= 1 then
                Fg_1 = {
                    "bihuchgoqrrn",
                    "jwblodzdvwy",
                    "wxbce",
                    "kbk",
                    "roshlzx",
                    "zicwqpshvk",
                    "xokaul",
                    "wsxec",
                    "mqlgyjlsh"
                }
                if Fg_1[(Fg_21 * 4 + 109) % 9 + 1] <= Fg_1[(Fg_21 * 4 + 109) % 9 + 1] then
                    Fg_18 = Fg_10
                else
                    Fg_10 = Fg_18
                end
                Fg_21 = (Fg_21 + 10) % 12
            else
                Fg_1 = (vector.create((Fg_21 * 3 + 7) % 11 + 1, (Fg_21 * 1 + 3) % 13 + 1, (Fg_21 * 2 + 12) % 17 + 1))
                Fg_13 = (vector.create((Fg_21 * 4 + 4) % 11 + 1, (Fg_21 * 7 + 3) % 13 + 1, (Fg_21 * 6 + 17) % 17 + 1))
                local FW = vector.dot(Fg_1, Fg_13)
                if FW * FW <= vector.dot(Fg_1, Fg_1) * vector.dot(Fg_13, Fg_13) then
                    t3.Ouroboros = Fg_18
                    tU = Fg_18.PopBubbles
                else
                    Fg_18.Ouroboros = tU
                    t3 = tU.PopBubbles
                end
                Fg_21 = (Fg_21 + 10) % 12
            end
        else
            Fg_1 = (vector.create((Fg_21 * 2 + 8) % 11 + 1, (Fg_21 * 6 + 2) % 13 + 1, (Fg_21 * 8 + 9) % 17 + 1))
            Fg_13 = (vector.create((Fg_21 * 6 + 5) % 11 + 1, (Fg_21 * 5 + 3) % 13 + 1, (Fg_21 * 5 + 12) % 17 + 1))
            Fg_24 = (vector.create((Fg_21 * 2 + 8) % 11 + 1, (Fg_21 * 6 + 4) % 13 + 1, (Fg_21 * 6 + 11) % 17 + 1))
            Fg_6 = (vector.create((Fg_21 * 3 + 1) % 11 + 1, (Fg_21 * 6 + 4) % 13 + 1, (Fg_21 * 11 + 12) % 17 + 1))
            if vector.dot(vector.cross(Fg_1, Fg_13), (vector.cross(Fg_24, Fg_6))) == vector.dot(Fg_1, Fg_24) * vector.dot(Fg_13, Fg_6) - vector.dot(Fg_1, Fg_6) * vector.dot(Fg_13, Fg_24) then
                Fg_3 = tU
            else
                tU = Fg_3
            end
            Fg_21 = (Fg_21 + 10) % 12
        end
    until (Fg_21 * 7 + 7) % 12 == 11
    if Fg_3 then
        Fg_3 = tU.Library
    end
    if Fg_3 then
        Fg_3 = tU.Library.Unload
    end
    if Fg_3 then
        pcall(function()
            tU.Library:Unload()
        end)
    end
    Fg_1 = t3.__OuroborosPopBubblesLib and t3.__OuroborosPopBubblesLib.Unload
    if Fg_1 then
        pcall(function()
            t3.__OuroborosPopBubblesLib:Unload()
        end)
    end
end
pcall(function()
    gethui = uc
end)
if setthreadidentity then
    setthreadidentity(8)
end
vh, vc, u4, u_, uV, uR, uL, uG, uB, uu, uo, uk, uh, ud, t9, t6, t4, t1, tY, tV, tO, tJ, tH, tC, tx, vj, ve, u5, u0, uW, uS = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Fg_1 = 57
repeat
    Fg_10 = (Fg_1 * 8 + 1) % 9 + 1
    if Fg_10 <= 5 then
        if Fg_10 <= 3 then
            if Fg_10 <= 2 then
                if Fg_10 <= 1 then
                    Fg_21 = (vector.create((Fg_1 * 6 + 8) % 11 + 1, (Fg_1 * 3 + 12) % 13 + 1, (Fg_1 * 13 + 2) % 17 + 1))
                    Fg_3 = (vector.create((Fg_1 * 3 + 6) % 11 + 1, (Fg_1 * 4 + 12) % 13 + 1, (Fg_1 * 14 + 9) % 17 + 1))
                    local GG = vector.cross(Fg_21, Fg_3)
                    local GH = vector.dot(Fg_21, Fg_3)
                    if vector.dot(GG, GG) + GH * GH == vector.dot(Fg_21, Fg_21) * vector.dot(Fg_3, Fg_3) + 5 then
                        uL = 210
                    else
                        uG = 210
                    end
                    Fg_1 = (Fg_1 + 8) % 72
                else
                    if (Fg_1 * 2 + 9) * 7 % 3 == ((Fg_1 * 2 + 9) * 7 + 1) % 3 then
                        uo = 0.55
                        uB = 3
                        uk = 90
                        uu = 250
                    else
                        uB = 0.55
                        uu = 3
                        uo = 90
                        uk = 250
                    end
                    Fg_1 = (Fg_1 + 26) % 72
                end
            else
                if Fg_1 * 101887473 + 9 + 6 >= Fg_1 * 101887473 + 9 + 6 + 5 then
                    t6 = { Spawn = "Hub", Final = "Coral" }
                    t9 = { Final = "Coral", Base = nil }
                    ud = {
                        "Candy",
                        "Final",
                        "Dunes",
                        "VIP",
                        "Fusion",
                        "Magma",
                        "Coral",
                        "Base",
                        "Shoreline",
                        "Grove",
                        "Tundra",
                        "Hub",
                        "Asteroid",
                        "Peaks",
                        "Spawn",
                        "Fossil",
                        "Toy"
                    }
                    t4 = {
                        "Toy",
                        "My Plot",
                        "Fusion",
                        "Shoreline",
                        "Magma",
                        "Fossil",
                        "Peaks",
                        "Hub",
                        "Coral",
                        "Grove",
                        "Asteroid",
                        "Dunes",
                        "VIP",
                        "Candy",
                        "Spawn",
                        "Final",
                        "Tundra"
                    }
                    uh = {
                        Grove = "Grove",
                        Peaks = "Peaks",
                        Shoreline = "Shoreline",
                        Fossil = "Fossil",
                        Candy = "Candy",
                        Toy = "Toy",
                        ["My Plot"] = "Base",
                        Spawn = "Spawn",
                        Hub = "Hub",
                        Dunes = "Dunes",
                        Asteroid = "Asteroid",
                        Coral = "Coral",
                        VIP = "VIP",
                        Final = "Final",
                        Tundra = "Tundra",
                        Fusion = "Fusion",
                        Magma = "Magma"
                    }
                else
                    uh = { Spawn = "Hub", Final = "Coral" }
                    ud = { Final = "Coral", Base = nil }
                    t9 = {
                        "Spawn",
                        "Grove",
                        "Tundra",
                        "Dunes",
                        "Candy",
                        "Shoreline",
                        "Peaks",
                        "Asteroid",
                        "Fossil",
                        "Toy",
                        "Magma",
                        "Coral",
                        "Final",
                        "VIP",
                        "Hub",
                        "Base",
                        "Fusion"
                    }
                    t6 = {
                        "Hub",
                        "My Plot",
                        "Spawn",
                        "Fusion",
                        "VIP",
                        "Grove",
                        "Tundra",
                        "Dunes",
                        "Candy",
                        "Shoreline",
                        "Peaks",
                        "Asteroid",
                        "Fossil",
                        "Toy",
                        "Magma",
                        "Coral",
                        "Final"
                    }
                    t4 = {
                        Hub = "Hub",
                        ["My Plot"] = "Base",
                        Spawn = "Spawn",
                        Fusion = "Fusion",
                        VIP = "VIP",
                        Grove = "Grove",
                        Tundra = "Tundra",
                        Dunes = "Dunes",
                        Candy = "Candy",
                        Shoreline = "Shoreline",
                        Peaks = "Peaks",
                        Asteroid = "Asteroid",
                        Fossil = "Fossil",
                        Toy = "Toy",
                        Magma = "Magma",
                        Coral = "Coral",
                        Final = "Final"
                    }
                end
                Fg_1 = (Fg_1 + 8) % 72
            end
        elseif Fg_10 <= 4 then
            Fg_21 = (vector.create((Fg_1 * 5 + 5) % 11 + 1, (Fg_1 * 4 + 6) % 13 + 1, (Fg_1 * 6 + 14) % 17 + 1))
            Fg_3 = (vector.create((Fg_1 * 7 + 6) % 11 + 1, (Fg_1 * 8 + 5) % 13 + 1, (Fg_1 * 11 + 2) % 17 + 1))
            local F_ = vector.dot(Fg_21, Fg_3)
            if F_ * F_ >= vector.dot(Fg_21, Fg_21) * vector.dot(Fg_3, Fg_3) + 1 then
                tY = {
                    "Candy",
                    "Magma",
                    "Peaks",
                    "Grove",
                    "Dunes",
                    "Fossil",
                    "Shoreline",
                    "Toy",
                    "Tundra",
                    "Coral",
                    "Asteroid"
                }
                tO = {
                    { cash = 2600000000, essence = 8100000 },
                    { cash = 90000000, essence = 110000 },
                    { cash = 17000000000, essence = 68000000 },
                    { cash = 12121000000000, essence = 970000000 },
                    { cash = 2000000, essence = 4200 },
                    { cash = 550000000, essence = 1000000 },
                    { cash = 50000, essence = 50 }
                }
                t1 = { "Legendary (1,250 Gems)", "Rare (500 Gems)", "Uncommon (200 Gems)", "Common (50 Gems)" }
                tV = {
                    ["Rare (500 Gems)"] = { id = 2, cost = 500 },
                    ["Legendary (1,250 Gems)"] = { id = 4, cost = 1250 },
                    ["Common (50 Gems)"] = { id = 0, cost = 50 },
                    ["Uncommon (200 Gems)"] = { id = 1, cost = 200 }
                }
            else
                t1 = {
                    "Grove",
                    "Tundra",
                    "Dunes",
                    "Candy",
                    "Shoreline",
                    "Peaks",
                    "Asteroid",
                    "Fossil",
                    "Toy",
                    "Magma",
                    "Coral"
                }
                tY = {
                    { cash = 50000, essence = 50 },
                    { cash = 2000000, essence = 4200 },
                    { cash = 90000000, essence = 110000 },
                    { cash = 550000000, essence = 1000000 },
                    { cash = 2600000000, essence = 8100000 },
                    { cash = 17000000000, essence = 68000000 },
                    { cash = 12121000000000, essence = 970000000 }
                }
                tV = { "Common (50 Gems)", "Uncommon (200 Gems)", "Rare (500 Gems)", "Legendary (1,250 Gems)" }
                tO = {
                    ["Common (50 Gems)"] = { id = 0, cost = 50 },
                    ["Uncommon (200 Gems)"] = { id = 1, cost = 200 },
                    ["Rare (500 Gems)"] = { id = 2, cost = 500 },
                    ["Legendary (1,250 Gems)"] = { id = 4, cost = 1250 }
                }
            end
            Fg_1 = (Fg_1 + 62) % 72
        else
            Fg_21 = (vector.create((Fg_1 * 4 + 5) % 11 + 1, (Fg_1 * 10 + 8) % 13 + 1, (Fg_1 * 1 + 9) % 17 + 1))
            Fg_3 = (vector.create((Fg_1 * 1 + 2) % 11 + 1, (Fg_1 * 8 + 8) % 13 + 1, (Fg_1 * 12 + 5) % 17 + 1))
            Fg_13 = (vector.create((Fg_1 * 2 + 4) % 11 + 1, (Fg_1 * 9 + 6) % 13 + 1, (Fg_1 * 8 + 11) % 17 + 1))
            Fg_24 = (vector.create((Fg_1 * 4 + 5) % 5 + 1, (Fg_1 * 2 + 5) % 7 + 1, (Fg_1 * 3 + 2) % 9 + 1))
            if vector.dot(vector.cross(Fg_21, (vector.cross(Fg_3, Fg_13))), Fg_24) == vector.dot(Fg_3 * vector.dot(Fg_21, Fg_13) - Fg_13 * vector.dot(Fg_21, Fg_3), Fg_24) + 2 then
                tC = { "MultiPopChance", "BubbleValue", "BubbletChance", "MaxBubbles", "BubbleSpawnRate", "Luck" }
                tJ = {
                    BubbleSpawnRate = true,
                    BubbleValue = true,
                    BubbletChance = true,
                    MaxBubbles = true,
                    Luck = true,
                    MultiPopChance = true
                }
                tH = { "Max (-1)", "Single (1)" }
            else
                tJ = { "BubbleValue", "MaxBubbles", "BubbleSpawnRate", "MultiPopChance", "Luck", "BubbletChance" }
                tH = {
                    BubbleValue = true,
                    MaxBubbles = true,
                    BubbleSpawnRate = true,
                    MultiPopChance = true,
                    Luck = true,
                    BubbletChance = true
                }
                tC = { "Max (-1)", "Single (1)" }
            end
            Fg_1 = (Fg_1 + 53) % 72
        end
    elseif Fg_10 <= 7 then
        if Fg_10 <= 6 then
            if Fg_1 * 96217693 + 1 + 7 <= Fg_1 * 96217693 + 1 + 7 + 1 then
                tx = { ["Max (-1)"] = -1, ["Single (1)"] = 1 }
                vj = {
                    "Farm Egg (E1)",
                    "Candy Egg (E2)",
                    "Pirate Egg (E3)",
                    "Evil Egg (E4)",
                    "Brainrot Egg (E5)",
                    "Reef Egg (E6)"
                }
                ve = {
                    ["Farm Egg (E1)"] = true,
                    ["Candy Egg (E2)"] = true,
                    ["Pirate Egg (E3)"] = true,
                    ["Evil Egg (E4)"] = true,
                    ["Brainrot Egg (E5)"] = true,
                    ["Reef Egg (E6)"] = true
                }
                u5 = {
                    ["Farm Egg (E1)"] = { id = "E1", stationId = "EggE1", cost = 150, zone = "Dunes" },
                    ["Candy Egg (E2)"] = { id = "E2", stationId = "EggE2", cost = 400, zone = "Shoreline" },
                    ["Pirate Egg (E3)"] = { id = "E3", stationId = "EggE3", cost = 1000, zone = "Asteroid" },
                    ["Evil Egg (E4)"] = { id = "E4", stationId = "EggE4", cost = 2500, zone = "Toy" },
                    ["Brainrot Egg (E5)"] = { id = "E5", stationId = "EggE5", cost = 8000, zone = "Magma" },
                    ["Reef Egg (E6)"] = { id = "E6", stationId = "EggE6", cost = 24000, zone = "Coral" }
                }
                u0 = {
                    { stationId = "EggE1", zone = "Dunes", attachName = "Egg" },
                    { stationId = "EggE2", zone = "Shoreline", attachName = "Egg" },
                    { stationId = "EggE3", zone = "Asteroid", attachName = "Egg" },
                    { stationId = "EggE4", zone = "Toy", attachName = "Egg" },
                    { stationId = "EggE5", zone = "Magma", attachName = "Egg" },
                    { stationId = "EggE6", zone = "Coral", attachName = "Egg" }
                }
            else
                u5 = { ["Max (-1)"] = -1, ["Single (1)"] = 1 }
                tx = {
                    "Pirate Egg (E3)",
                    "Reef Egg (E6)",
                    "Evil Egg (E4)",
                    "Brainrot Egg (E5)",
                    "Farm Egg (E1)",
                    "Candy Egg (E2)"
                }
                u0 = {
                    ["Reef Egg (E6)"] = true,
                    ["Candy Egg (E2)"] = true,
                    ["Pirate Egg (E3)"] = true,
                    ["Brainrot Egg (E5)"] = true,
                    ["Farm Egg (E1)"] = true,
                    ["Evil Egg (E4)"] = true
                }
                vj = {
                    ["Candy Egg (E2)"] = { zone = "Shoreline", cost = 400, stationId = "EggE2", id = "E2" },
                    ["Farm Egg (E1)"] = { cost = 150, stationId = "EggE1", id = "E1", zone = "Dunes" },
                    ["Reef Egg (E6)"] = { stationId = "EggE6", id = "E6", zone = "Coral", cost = 24000 },
                    ["Brainrot Egg (E5)"] = { zone = "Magma", stationId = "EggE5", id = "E5", cost = 8000 },
                    ["Pirate Egg (E3)"] = { cost = 1000, id = "E3", stationId = "EggE3", zone = "Asteroid" },
                    ["Evil Egg (E4)"] = { stationId = "EggE4", id = "E4", zone = "Toy", cost = 2500 }
                }
                ve = {
                    { zone = "Magma", stationId = "EggE5", attachName = "Egg" },
                    { attachName = "Egg", stationId = "EggE4", zone = "Toy" },
                    { stationId = "EggE2", attachName = "Egg", zone = "Shoreline" },
                    { stationId = "EggE6", zone = "Coral", attachName = "Egg" },
                    { zone = "Dunes", attachName = "Egg", stationId = "EggE1" },
                    { attachName = "Egg", stationId = "EggE3", zone = "Asteroid" }
                }
            end
            Fg_1 = (Fg_1 + 44) % 72
        else
            if (Fg_1 * 1 + 4) * 13 % 4 == ((Fg_1 * 1 + 4) * 13 + 12) % 4 then
                uW = {
                    { stationId = "Lootbox0", zone = "Candy", attachName = "Lootbox" },
                    { stationId = "Lootbox1", zone = "Peaks", attachName = "Lootbox" },
                    { stationId = "Lootbox2", zone = "Fossil", attachName = "Lootbox" },
                    { stationId = "Lootbox4", zone = "Magma", attachName = "Lootbox" }
                }
                uS = 3
            else
                uS = {
                    { attachName = "Lootbox", stationId = "Lootbox2", zone = "Fossil" },
                    { attachName = "Lootbox", stationId = "Lootbox1", zone = "Peaks" },
                    { zone = "Magma", stationId = "Lootbox4", attachName = "Lootbox" },
                    { zone = "Candy", attachName = "Lootbox", stationId = "Lootbox0" }
                }
                uW = 3
            end
            Fg_1 = (Fg_1 + 35) % 72
        end
    elseif Fg_10 <= 8 then
        Fg_10 = (vector.create((Fg_1 * 2 + 7) % 11 + 1, (Fg_1 * 2 + 11) % 13 + 1, (Fg_1 * 4 + 9) % 17 + 1))
        Fg_21 = (vector.create((Fg_1 * 1 + 3) % 11 + 1, (Fg_1 * 4 + 7) % 13 + 1, (Fg_1 * 6 + 5) % 17 + 1))
        Fg_3 = (vector.create((Fg_1 * 7 + 8) % 11 + 1, (Fg_1 * 4 + 8) % 13 + 1, (Fg_1 * 10 + 9) % 17 + 1))
        Fg_13 = (vector.create((Fg_1 * 2 + 3) % 5 + 1, (Fg_1 * 3 + 7) % 7 + 1, (Fg_1 * 3 + 6) % 9 + 1))
        if vector.dot(vector.cross(Fg_10, (vector.cross(Fg_21, Fg_3))), Fg_13) == vector.dot(Fg_21 * vector.dot(Fg_10, Fg_3) - Fg_3 * vector.dot(Fg_10, Fg_21), Fg_13) + 5 then
            u4 = "Pop Bubbles"
            uV = "https://discord.gg/synapsex"
            vc = "https://rscripts.net/@Ouroboros"
            vh = "https://ouroboros-hub-rbx.web.app/"
            u_ = 200
        else
            vh = "Pop Bubbles"
            vc = "https://discord.gg/synapsex"
            u4 = "https://rscripts.net/@Ouroboros"
            u_ = "https://ouroboros-hub-rbx.web.app/"
            uV = 200
        end
        Fg_1 = (Fg_1 + 62) % 72
    else
        local GO = bit32.rrotate(bit32.bxor(bit32.lrotate(Fg_1, 23), string.byte(tostring(uo))), 21)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(GO, 542703283), 393581542), (bit32.bxor(bit32.band(GO, 3752264012), 3080922491))), 393581542), 3080922491) ~= GO then
            uL = 240
            uR = 2
        else
            uR = 240
            uL = 2
        end
        Fg_1 = (Fg_1 + 71) % 72
    end
until (Fg_1 * 29 + 3) % 72 == 45
Fg_10, Fg_13, Fg_3 = nil, nil, nil
Fg_21 = 7
repeat
    Fg_1 = (Fg_21 * 1 + 1) % 2 + 1
    if Fg_1 <= 1 then
        if Fg_21 * 18934239 + 13 + 7 <= Fg_21 * 18934239 + 13 + 7 + 2 then
            Fg_10, Fg_13 = pcall(fn995)
        else
            Fg_13, Fg_10 = pcall(fn995)
        end
        Fg_21 = (Fg_21 + 13) % 16
    else
        Fg_1 = {
            "nhzj",
            "nfcpq",
            "moffobdnr",
            "zcd",
            "ezoa",
            "rpllpenp",
            "ftar",
            "vnk",
            "mqqkvkw",
            "qay",
            "hjqt",
            "lnjkjeeys",
            "cxxrduzcnio"
        }
        if Fg_1[(Fg_21 * 53 + 96) % 13 + 1] <= Fg_1[(Fg_21 * 53 + 96) % 13 + 1] then
            Fg_3 = Fg_10
        else
            Fg_10 = Fg_3
        end
        Fg_21 = (Fg_21 + 5) % 16
    end
until (Fg_21 * 5 + 6) % 16 == 3
if Fg_3 then
    Fg_1 = 5
    repeat
        Fg_10 = (vector.create((Fg_1 * 2 + 4) % 11 + 1, (Fg_1 * 9 + 6) % 13 + 1, (Fg_1 * 12 + 7) % 17 + 1))
        Fg_21 = (vector.create((Fg_1 * 7 + 9) % 11 + 1, (Fg_1 * 6 + 3) % 13 + 1, (Fg_1 * 8 + 12) % 17 + 1))
        Fg_24 = (vector.create((Fg_1 * 7 + 5) % 11 + 1, (Fg_1 * 6 + 4) % 13 + 1, (Fg_1 * 3 + 10) % 17 + 1))
        Fg_6 = (vector.create((Fg_1 * 1 + 7) % 5 + 1, (Fg_1 * 2 + 7) % 7 + 1, (Fg_1 * 5 + 6) % 9 + 1))
        if vector.dot(vector.cross(Fg_10, (vector.cross(Fg_21, Fg_24))), Fg_6) == vector.dot(Fg_21 * vector.dot(Fg_10, Fg_24) - Fg_24 * vector.dot(Fg_10, Fg_21), Fg_6) then
            Fg_3 = type(Fg_13) == "table"
        else
            Fg_13 = type(Fg_3) == "table"
        end
        Fg_1 = (Fg_1 + 3) % 8
    until (Fg_1 * 3 + 2) % 8 == 2
end
if Fg_3 then
    Fg_1 = 3
    repeat
        if (Fg_1 * 2 + 7) * 16 % 3 == ((Fg_1 * 2 + 7) * 16 + 8) % 3 then
            Fg_13 = type(Fg_3.BATCH_OPEN_COUNT) == "number"
        else
            Fg_3 = type(Fg_13.BATCH_OPEN_COUNT) == "number"
        end
        Fg_1 = (Fg_1 + 0) % 4
    until (Fg_1 * 3 + 3) % 4 == 0
end
if Fg_3 then
    uS = Fg_13.BATCH_OPEN_COUNT
end
uq, ul, tW, Fg_1, tL, Fg_3, tD = nil, nil, nil, nil, nil, nil, nil
Fg_21 = 5
repeat
    Fg_13 = (Fg_21 * 1 + 1) % 3 + 1
    if Fg_13 <= 2 then
        if Fg_13 <= 1 then
            if Fg_21 * 99807697 + 10 + 2 >= Fg_21 * 99807697 + 10 + 2 + 4 then
                ul = 32
                u3 = uq:WaitForChild("Remotes")
            else
                uq = 32
                ul = u3:WaitForChild("Remotes")
            end
            Fg_21 = (Fg_21 + 19) % 24
        else
            local FQ = bit32.rrotate(bit32.bxor(bit32.lrotate(Fg_21, 22), string.byte(tostring(Fg_1))), 4)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(FQ, 3643150151), 3380817742), (bit32.bxor(bit32.band(FQ, 651817144), 1424863812))), 3380817742), 1424863812) ~= FQ then
                tW = function(ao)
                    local vQ_2
                    local vP_3
                    vP_3, vQ_2 = pcall(function()
                        return ul:WaitForChild(ao, 5)
                    end)
                    return vP_3 and vQ_2 or nil
                end
                Fg_10 = {
                    LootboxRoll = tW("LootboxRoll"),
                    BubbletEquipBestRequest = tW("BubbletEquipBestRequest"),
                    ThrowWeapon = tW("ThrowWeapon"),
                    RebirthRequest = tW("RebirthRequest"),
                    FrenzyCombatPing = tW("FrenzyCombatPing"),
                    PetHatchRequest = tW("PetHatchRequest"),
                    PetHatchBatchRequest = tW("PetHatchBatchRequest"),
                    UpgradeRequest = tW("UpgradeRequest"),
                    TeleportIntent = tW("TeleportIntent"),
                    EquipWeapon = tW("EquipWeapon"),
                    DailyMissionClaim = tW("DailyMissionClaim"),
                    GemDropCollect = tW("GemDropCollect"),
                    LootboxBatchRoll = tW("LootboxBatchRoll"),
                    PetEquipBestRequest = tW("PetEquipBestRequest"),
                    DailyMissionCompleteAllClaim = tW("DailyMissionCompleteAllClaim"),
                    BubblePopRequest = tW("BubblePopRequest"),
                    DailyPlaytimeRewardClaim = tW("DailyPlaytimeRewardClaim"),
                    EssenceDropCollect = tW("EssenceDropCollect"),
                    SealHitRequest = tW("SealHitRequest"),
                    CashDropCollect = tW("CashDropCollect"),
                    ObjectiveClaim = tW("ObjectiveClaim"),
                    StationUnlockRequest = tW("StationUnlockRequest"),
                    ClaimDailyReward = tW("ClaimDailyReward")
                }
            else
                Fg_10 = function(ao)
                    local vQ_1
                    local vP_1
                    vP_1, vQ_1 = pcall(function()
                        return ul:WaitForChild(ao, 5)
                    end)
                    return vP_1 and vQ_1 or nil
                end
                tW = {
                    BubblePopRequest = Fg_10("BubblePopRequest"),
                    ThrowWeapon = Fg_10("ThrowWeapon"),
                    TeleportIntent = Fg_10("TeleportIntent"),
                    SealHitRequest = Fg_10("SealHitRequest"),
                    BubbletEquipBestRequest = Fg_10("BubbletEquipBestRequest"),
                    PetEquipBestRequest = Fg_10("PetEquipBestRequest"),
                    EquipWeapon = Fg_10("EquipWeapon"),
                    RebirthRequest = Fg_10("RebirthRequest"),
                    LootboxRoll = Fg_10("LootboxRoll"),
                    LootboxBatchRoll = Fg_10("LootboxBatchRoll"),
                    UpgradeRequest = Fg_10("UpgradeRequest"),
                    FrenzyCombatPing = Fg_10("FrenzyCombatPing"),
                    CashDropCollect = Fg_10("CashDropCollect"),
                    ObjectiveClaim = Fg_10("ObjectiveClaim"),
                    DailyMissionClaim = Fg_10("DailyMissionClaim"),
                    DailyMissionCompleteAllClaim = Fg_10("DailyMissionCompleteAllClaim"),
                    ClaimDailyReward = Fg_10("ClaimDailyReward"),
                    DailyPlaytimeRewardClaim = Fg_10("DailyPlaytimeRewardClaim"),
                    GemDropCollect = Fg_10("GemDropCollect"),
                    EssenceDropCollect = Fg_10("EssenceDropCollect"),
                    PetHatchRequest = Fg_10("PetHatchRequest"),
                    PetHatchBatchRequest = Fg_10("PetHatchBatchRequest"),
                    StationUnlockRequest = Fg_10("StationUnlockRequest")
                }
            end
            Fg_21 = (Fg_21 + 19) % 24
        end
    else
        if Fg_21 * 70478067 + 12 + 2 >= Fg_21 * 70478067 + 12 + 2 + 3 then
            tD = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
            Fg_1 = loadstring(game:HttpGet(tD .. "Library.lua"))()
            tL = loadstring(game:HttpGet(tD .. "addons/ThemeManager.lua"))()
            Fg_3 = loadstring(game:HttpGet(tD .. "addons/SaveManager.lua"))()
        else
            Fg_1 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
            tL = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
            Fg_3 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
            tD = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
        end
        Fg_21 = (Fg_21 + 13) % 24
    end
until (Fg_21 * 5 + 18) % 24 == 10
if t3 then
    t3.__OuroborosPopBubblesLib = tL
    Fg_1 = {}
    Fg_10 = Fg_18 or Fg_1
    Fg_21 = 13
    repeat
        Fg_1 = (Fg_21 * 1 + 1) % 2 + 1
        if Fg_1 <= 1 then
            local Gy = bit32.rrotate(bit32.bxor(bit32.lrotate(Fg_21, 28), string.byte(tostring(Fg_21))), 16)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Gy, 2521886223), 1760958351), (bit32.bxor(bit32.band(Gy, 1773081072), 1102772268))), 1760958351), 1102772268) ~= Gy then
                Fg_10 = Fg_18
            else
                Fg_18 = Fg_10
            end
            Fg_21 = (Fg_21 + 1) % 16
        else
            if (Fg_21 * 2 + 9) * 10 % 3 == ((Fg_21 * 2 + 9) * 10 + 0) % 3 then
                Fg_18.PopBubbles = { Library = tL, Loaded = true }
                t3.Ouroboros = Fg_18
            else
                t3.PopBubbles = { Library = Fg_18, Loaded = true }
                tL.Ouroboros = t3
            end
            Fg_21 = (Fg_21 + 15) % 16
        end
    until (Fg_21 * 7 + 13) % 16 == 8
end
Toggles, vl, vg, u6, t_, ty, u1, uM, us, tX, tE, u7, ux, ub, t5, t0, tR, va, uT, t2, tv, uP, uF, ug, tN, tB, up, ua, vf, tQ, vk, um, u2, ui, tG, uQ, uH, t7, uw, u8, uJ, tF, t8, tw, uI, vi, uC, ue, tP, ur, tI, uX, tM, tA, u9, uy, tS, uN, uz, tT, vd, tZ, tK = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Toggles = tL.Toggles
vl = tL.Options
vg = {}
u6 = {
    lastTeleportAt = 0,
    lastCombatPingAt = 0,
    lastThrowAt = 0,
    lastEquipAt = 0,
    lastRebirthAt = 0,
    lastBuyWeaponAt = 0,
    lastUpgradeAt = 0,
    lastCollectCashAt = 0,
    lastClaimTasksAt = 0,
    lastClaimDailiesAt = 0,
    lastCollectGemsAt = 0,
    lastCollectEssenceAt = 0,
    lastHatchAt = 0,
    lastUnlockEggsAt = 0,
    lastUnlockLootboxesAt = 0,
    desiredZone = nil
}
u1 = fn219
uM = fn707
us = fns.fn148
if (not uP and not u7 or not tP and false or tP and false and (u1 and not tP) or ((uP or not u7) and (not uX or not uX) or (not uX or not uX or (u7 or u1)))) and ((not tP and uP and (false and u7) or (not uX or tP or (not u7 or vf))) and ((false or uP) and (not u1 or not tP) and (not u7 or not uP or tP and uX))) or not ((not uP and not u7 or not tP and false or tP and false and (u1 and not tP) or ((uP or not u7) and (not uX or not uX) or (not uX or not uX or (u7 or u1)))) and ((not tP and uP and (false and u7) or (not uX or tP or (not u7 or vf))) and ((false or uP) and (not u1 or not tP) and (not u7 or not uP or tP and uX)))) then
    Fg_13 = fn719
    Fg_1 = tL:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = vc, Copyable = true }, "|", vh },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Fg_1:SetGlow(true, { Color = Color3.fromRGB(242, 154, 196), Radius = 24, Transparency = 0.3 })
    t_ = {
        Info = Fg_1:AddTab("Info", "info"),
        Main = Fg_1:AddTab("Main", "gamepad-2"),
        Player = Fg_1:AddTab("Player", "person-standing"),
        Settings = Fg_1:AddTab("Settings", "settings")
    }
    Fg_13(t_.Main)
    Fg_13(t_.Player)
    Fg_13(t_.Settings)
    tX = fns.fn168
else
    Fg_1 = fn719
    Fg_13 = tX:CreateWindow({
        Footer = { t_, { Text = tL, Copyable = true }, "|" },
        Icon = 78539693571783,
        NotifySide = "Right",
        Font = Enum.Font.BuilderSans,
        Title = "Ouroboros",
        CornerRadius = 0,
        TabSwipeFrom = "bottom",
        SidebarCompacted = true,
        ShowCustomCursor = false,
        Animations = { TabSwitch = true }
    })
    Fg_13:SetGlow(true, { Color = Color3.fromRGB(242, 154, 196), Transparency = 0.3, Radius = 24 })
    vc = {
        Settings = Fg_13:AddTab("Settings", "settings"),
        Player = Fg_13:AddTab("Player", "person-standing"),
        Info = Fg_13:AddTab("Info", "info"),
        Main = Fg_13:AddTab("Main", "gamepad-2")
    }
    Fg_1(vc.Main)
    Fg_1(vc.Player)
    Fg_1(vc.Settings)
    vh = fns.fn168
end
if ((ue or tK) and (vg or not uN) or (ue and vg or (not u1 or vg))) and ((not tK or not tK) and (not uN or not vg) or uN and ue and (not vg or not u1)) and (u1 and u1 and (vg or not tK) and (tK and not u1 or (not ue or not vg)) and ((tK and ue or (uN or not vg)) and (not u1 and not tK or u1 and not uN))) and not (((ue or tK) and (vg or not uN) or (ue and vg or (not u1 or vg))) and ((not tK or not tK) and (not uN or not vg) or uN and ue and (not vg or not u1)) and (u1 and u1 and (vg or not tK) and (tK and not u1 or (not ue or not vg)) and ((tK and ue or (uN or not vg)) and (not u1 and not tK or u1 and not uN)))) then
    u7 = fn1045
    tE = fn699
else
    tE = fn1045
    u7 = fn699
end
if (Fg_1 or not Fg_1) and (Toggles or not Fg_1) and (not Toggles and not Fg_1 or (not Toggles or not Fg_1)) or not ((Fg_1 or not Fg_1) and (Toggles or not Fg_1) and (not Toggles and not Fg_1 or (not Toggles or not Fg_1))) then
    ux = fn571
    ub = fn787
    t5 = fn517
    t0 = fn283
else
    t0 = fn571
    ux = fn787
    ub = fn517
    t5 = fn283
end
tR = fn505
va = fn1233
uT = function()
    local ws_1, ws_2
    local wr_1, wr_3
    wr_1, ws_1 = pcall(function()
        return require(uf.PlayerScripts.Bubbles.BubbleHitTracker)
    end)
    local wt = not wr_1 or type(ws_1) ~= "table"
    if wt then
        return nil
    end
    local BubbleHitTracker = ws_1.BubbleHitTracker
    local wr_2 = type(BubbleHitTracker) == "table" and type(BubbleHitTracker.getInstance) == "function"
    if wr_2 then
        wr_3, ws_2 = pcall(function()
            return BubbleHitTracker:getInstance()
        end)
        if wr_3 then
            return ws_2
        end
        return BubbleHitTracker and BubbleHitTracker.instance or nil
    end
    return BubbleHitTracker and BubbleHitTracker.instance or nil
end
t2 = fn987
tv = fn272
uP = fn665
uF = fn975
ug = fn229
tN = fns.fn130
tB = fn1087
up = fn838
ua = fn1282
vf = function(cB)
    local w9
    local xa = cB == ""
    local xb = type(cB) ~= "string" or xa
    if xb then
        return false
    end
    local xa_1 = os.clock()
    if xa_1 - u6.lastTeleportAt < uB then
        return false
    end
    local xb_1 = tB(cB)
    if not xb_1 then
        return false
    end
    local xc = tX()
    if not xc then
        return false
    end
    u6.lastTeleportAt = xa_1
    u6.desiredZone = cB
    w9 = xb_1 * CFrame.new(0, uu, 0)
    pcall(function()
        uf:RequestStreamAroundAsync(w9.Position, 8)
    end)
    xc.CFrame = w9
    pcall(function()
        tW.TeleportIntent:FireServer(tN(cB))
    end)
    return true
end
tQ = fn1180
vk = fns.fn89
um = function(c4, c5)
    local xv, xz
    local xA = tX()
    local xB = not xA
    local xG = if xB then 1 else 0
    local xE = 1303 * xG + 3980 * (1 - xG)
    local xF = 1338 * xG + 2662 * (1 - xG)
    if not ((xE * 3270 + xF * 1868 + xE * xF) % 16777213 == 8503608) then
        xB = typeof(c4) ~= "Vector3"
    end
    if xB then
        return nil
    end
    local xB_1 = math.max(0.2, ux("WeaponFireRate", 1))
    local xC = 1 / xB_1
    local xB_2 = os.clock()
    if xB_2 - u6.lastThrowAt < xC then
        return nil
    end
    u6.lastThrowAt = xB_2
    local xx = xA.Position + Vector3.new(0, 2, 0)
    local xB_3 = c4 - xx
    xv = xB_3.Magnitude > 0.1 and xB_3.Unit or xA.CFrame.LookVector
    xz = uP()
    local xw = uf:GetAttribute("EquippedWeaponId")
    local xu = uf:GetAttribute("EquippedWeaponGrade")
    if type(xw) ~= "number" then
        xw = 0
    end
    if type(xu) ~= "number" then
        xu = 0
    end
    local xy = tv()
    local xA_1 = xy and type(xy.spawnWeapon) == "function"
    if xA_1 then
        pcall(function()
            xy:spawnWeapon(xw, xx, xv, uR, uV, xz, xu, uL, false, nil)
        end)
    end
    pcall(function()
        tW.ThrowWeapon:FireServer(xv, xz, c5 ~= false)
    end)
    uF()
    return xz
end
u2 = fn479
ui = fn938
tG = fn899
uQ = fn322
uH = function(eB, eC)
    local yv = type(eB) ~= "number" or type(eC) ~= "number"
    if yv then
        return
    end
    pcall(function()
        tW.BubblePopRequest:FireServer({
            entries = {
                {
                    bubbleId = eB,
                    totalDamage = eC,
                    elapsedMs = 50,
                    lastHitWasCrit = false,
                    lastHitWasSuperCrit = false
                }
            },
            source = "player"
        })
    end)
end
t7 = function()
    local yD
    yD = nil
    if not Toggles.AutoPopBubbles or not Toggles.AutoPopBubbles.Value then
        return
    end
    local yG_1 = Toggles.AutoPopShields and Toggles.AutoPopShields.Value and tG()
    if yG_1 then
        return
    end
    if not tQ() then
        return
    end
    local yG_2 = up()
    yD = tX()
    if not yD then
        return
    end
    local yH = yG_2 and tB(yG_2)
    local yG_3 = yH or nil
    local yG_4 = uQ()
    if #yG_4 == 0 then
        return
    end
    table.sort(yG_4, function(eX, eY)
        local position2 = eX.position
        local position = eY.position
        if not position2 then
            return false
        elseif not position then
            return true
        else
            return (position2 - yD.Position).Magnitude < (position - yD.Position).Magnitude
        end
    end)
    local yE
    for k, v in yG_4 do
        if v.position then
            local yG_5 = true
            if yG_3 then
                local yI_1 = v.position - yG_3.Position
                local yJ_1 = Vector3.new(yI_1.X, 0, yI_1.Z)
                yG_5 = yJ_1.Magnitude <= uk
            end
            if yG_5 then
                yE = v
                break
            end
        end
    end
    if not yE or not yE.position then
        return
    end
    if (yE.position - yD.Position).Magnitude > uV then
        vk(yE.position, 10)
        return
    end
    local yG_8 = um(yE.position, true)
    if not yG_8 then
        return
    end
    local yF = uT()
    local yG_9 = yF and yF.accumulators and yF.accumulators[yE.id]
    local yG_10 = ux("Damage", 135)
    local yI_2 = yG_10
    if yG_9 then
        local max = math.max
        local yK = yG_9.localMaxHp or yG_10
        local yL = yG_9.totalDamage or yG_10
        yI_2 = max(yK, yL, yG_10)
        pcall(function()
            yF:onHit(yE.id, ux("EquippedWeaponGrade", 0), "player")
        end)
    end
    uH(yE.id, yI_2)
end
uw = function()
    local yW, yX
    if not Toggles.AutoPopShields or not Toggles.AutoPopShields.Value then
        return
    end
    local yY_1 = tG()
    if not yY_1 then
        return
    end
    yX = ui(yY_1)
    if not yX then
        return
    end
    local yY_2 = tX()
    if not yY_2 then
        return
    end
    if (yY_2.Position - yX).Magnitude > uG then
        vk(yX, 40)
        return
    end
    yW = um(yX, true)
    if not yW then
        return
    end
    pcall(function()
        tW.SealHitRequest:FireServer({ { spawnedWeaponId = yW, originatingWeaponId = yW, hitPosition = yX } })
    end)
end
u8 = fn674
uJ = fn762
tF = function()
    local zu, zv
    if not Toggles.AutoEquipBest or not Toggles.AutoEquipBest.Value then
        return
    end
    local zw_1 = os.clock()
    if zw_1 - u6.lastEquipAt < 2 then
        return
    end
    u6.lastEquipAt = zw_1
    pcall(function()
        tW.BubbletEquipBestRequest:InvokeServer()
    end)
    pcall(function()
        tW.PetEquipBestRequest:InvokeServer()
    end)
    zu, zv = uJ()
    if zu ~= nil and zv ~= nil then
        local attr2 = uf:GetAttribute("EquippedWeaponId")
        local attr = uf:GetAttribute("EquippedWeaponGrade")
        if attr2 ~= zu or attr ~= zv then
            pcall(function()
                tW.EquipWeapon:FireServer(zu, zv)
            end)
        end
    end
end
t8 = fn332
tw = fn666
uI = function()
    if not Toggles.AutoBuyWeapons or not Toggles.AutoBuyWeapons.Value then
        return
    end
    local zQ_1 = os.clock()
    if zQ_1 - u6.lastBuyWeaponAt < 1.25 then
        return
    end
    local zP = tO[vl.BuyWeaponTier and vl.BuyWeaponTier.Value]
    if not zP then
        return
    end
    if t0() < zP.cost then
        return
    end
    u6.lastBuyWeaponAt = zQ_1
    if Toggles.BuyWeaponBatch and Toggles.BuyWeaponBatch.Value then
        if t0() < zP.cost * 3 then
            return
        end
        pcall(function()
            tW.LootboxBatchRoll:InvokeServer(zP.id, 3)
        end)
    else
        pcall(function()
            tW.LootboxRoll:InvokeServer(zP.id)
        end)
    end
end
vi = fn200
uC = fn391
ue = fn652
tP = fn1062
ur = fn767
tI = function(hD, hE)
    pcall(function()
        tW.UpgradeRequest:InvokeServer(hD, hE)
    end)
end
uX = fn224
tM = fn1112
tA = fn813
u9 = fns.fn46
uy = function()
    local AH
    if not Toggles.AutoCollectCash or not Toggles.AutoCollectCash.Value then
        return
    end
    local AI_1 = os.clock()
    if AI_1 - u6.lastCollectCashAt < 0.2 then
        return
    end
    AH = u9(tM(), "^CashDrop_(%d+)$")
    if #AH == 0 then
        return
    end
    u6.lastCollectCashAt = AI_1
    pcall(function()
        tW.CashDropCollect:FireServer(AH)
    end)
end
tS = function()
    local AK
    if not Toggles.AutoCollectGems or not Toggles.AutoCollectGems.Value then
        return
    end
    local AL_1 = os.clock()
    if AL_1 - u6.lastCollectGemsAt < 0.2 then
        return
    end
    AK = u9(tA(), "^GemDrop_(%d+)$")
    if #AK == 0 then
        return
    end
    u6.lastCollectGemsAt = AL_1
    pcall(function()
        tW.GemDropCollect:FireServer(AK)
    end)
end
uN = fn1016
uz = function()
    local AN
    if not Toggles.AutoCollectEssence or not Toggles.AutoCollectEssence.Value then
        return
    end
    local AO_1 = os.clock()
    if AO_1 - u6.lastCollectEssenceAt < 0.2 then
        return
    end
    AN = u9(uN(), "^EssenceDrop_(%d+)$")
    if #AN == 0 then
        return
    end
    u6.lastCollectEssenceAt = AO_1
    pcall(function()
        tW.EssenceDropCollect:FireServer(AN)
    end)
end
tT = function()
    if not Toggles.AutoHatchEggs or not Toggles.AutoHatchEggs.Value then
        return
    end
    local AR_1 = os.clock()
    if AR_1 - u6.lastHatchAt < 1 then
        return
    end
    local AS = ue()
    local AT = Toggles.HatchEggBatch and Toggles.HatchEggBatch.Value
    local AT_1 = t0()
    local AV = ux("EggTokens", 0)
    for k, v in vj do
        if uC(vl.HatchEggTarget, v) then
            local AQ = u5[v]
            if AQ and AS[AQ.stationId] then
                local cost = AQ.cost
                local AY = AT and uS or 1
                if AV >= AY or AT_1 >= cost * AY then
                    u6.lastHatchAt = AR_1
                    if AT then
                        pcall(function()
                            tW.PetHatchBatchRequest:InvokeServer({ eggId = AQ.id, count = uS })
                        end)
                    else
                        pcall(function()
                            tW.PetHatchRequest:InvokeServer({ eggId = AQ.id })
                        end)
                    end
                    return
                end
            end
        end
    end
end
if ((not ui or ub) and (not us or ui) or us and ui and (not Fg_1 and not Fg_1)) and not ((not ui or ub) and (not us or ui) or us and ui and (not Fg_1 and not Fg_1)) then
    vl = function(jk, jl, jm, jn)
        local A5 = not Toggles[jl]
        local Ba = if A5 then 1 else 0
        local A8 = 1396 * Ba + 2006 * (1 - Ba)
        local A9 = 2971 * Ba + 3981 * (1 - Ba)
        if not ((A8 * 2260 + A9 * 283 + A8 * A9) % 16777213 == 8143269) then
            A5 = not Toggles[jl].Value
        end
        if A5 then
            return
        end
        local A5_2 = os.clock()
        if A5_2 - u6[jm] < 1.5 then
            return
        end
        local A6 = ue()
        for k, v in jn do
            local Bg = v
            if not A6[Bg.stationId] then
                u6[jm] = A5_2
                if not ur(Bg) then
                    return
                end
                pcall(function()
                    tW.StationUnlockRequest:InvokeServer(Bg.stationId)
                end)
                return
            end
        end
    end
else
    vd = function(jk, jl, jm, jn)
        local A5 = not Toggles[jl]
        local Ba = if A5 then 1 else 0
        local A8 = 1396 * Ba + 2006 * (1 - Ba)
        local A9 = 2971 * Ba + 3981 * (1 - Ba)
        if not ((A8 * 2260 + A9 * 283 + A8 * A9) % 16777213 == 8143269) then
            A5 = not Toggles[jl].Value
        end
        if A5 then
            return
        end
        local A5_1 = os.clock()
        if A5_1 - u6[jm] < 1.5 then
            return
        end
        local A6 = ue()
        for k, v in jn do
            local Bg = v
            if not A6[Bg.stationId] then
                u6[jm] = A5_1
                if not ur(Bg) then
                    return
                end
                pcall(function()
                    tW.StationUnlockRequest:InvokeServer(Bg.stationId)
                end)
                return
            end
        end
    end
end
tZ = fns.fn182
tK = fn1006
ty = {
    "pop_200_bubbles",
    "pop_500_bubbles",
    "pop_1500_bubbles",
    "purchase_5_upgrades",
    "purchase_15_upgrades",
    "defeat_1_boss",
    "defeat_3_bosses",
    "open_1_lootbox",
    "open_3_lootboxes",
    "spin_daily_wheel_2",
    "cash_earned_small_a",
    "cash_earned_small_b",
    "cash_earned_medium_a",
    "cash_earned_medium_b",
    "gems_earned_small_a",
    "gems_earned_small_b",
    "gems_earned_medium_a",
    "gems_earned_medium_b",
    "capture_20_bubblets",
    "capture_50_bubblets",
    "level_bubblets_10",
    "level_bubblets_30",
    "hatch_2_pets",
    "claim_3_playtime_gifts",
    "boost_own_bubblets_5",
    "boost_other_bubblets_5"
}
Fg_10, Fg_6, Fg_21 = nil, nil, nil
Fg_18 = 13
repeat
    Fg_1 = (Fg_18 * 1 + 1) % 2 + 1
    if Fg_1 <= 1 then
        local Gb = bit32.rrotate(bit32.bxor(bit32.lrotate(Fg_18, 19), string.byte(tostring(Fg_6))), 25)
        if bit32.bxor(bit32.lrotate(bit32.bxor(Gb, 271079890), 2), 1084319560) ~= bit32.lrotate(Gb, 2) then
            Fg_6, Fg_10 = pcall(fn906)
        else
            Fg_10, Fg_6 = pcall(fn906)
        end
        Fg_18 = (Fg_18 + 11) % 16
    else
        Fg_1 = {
            "rsfbngcfyzj",
            "icoco",
            "yfxmkmludb",
            "jvfv",
            "mnvjt",
            "elygsbwsmcpr",
            "gndzmpycx",
            "yvnqasb",
            "ipjtjdltyupo"
        }
        if Fg_1[(Fg_18 * 36 + 86) % 9 + 1] < Fg_1[(Fg_18 * 36 + 86) % 9 + 1] then
            Fg_10 = Fg_21
        else
            Fg_21 = Fg_10
        end
        Fg_18 = (Fg_18 + 7) % 16
    end
until (Fg_18 * 13 + 6) % 16 == 9
if Fg_21 then
    Fg_18 = 5
    repeat
        Fg_1 = { "bpigmu", "tyryydjrdl", "vsjh", "mbkorlh", "phnacco", "xef", "hdmindsfi" }
        local FS = Fg_18
        Fg_10 = Fg_1[FS % 7 + 1]
        if Fg_10:len() >= Fg_10:reverse():rep(FS % 3 + 2):len() then
            Fg_6 = type(Fg_21) == "table"
        else
            Fg_21 = type(Fg_6) == "table"
        end
        Fg_18 = (Fg_18 + 4) % 8
    until (Fg_18 * 5 + 6) % 8 == 3
end
if Fg_21 then
    Fg_18 = 3
    repeat
        Fg_1 = {
            "umsazwphxalk",
            "wsovdrekxpo",
            "mkks",
            "pkdjnmfmm",
            "wxwkvllubdep",
            "zesexilowt",
            "msuuxiolyqw",
            "lqoikc",
            "puxaa",
            "ckhgzxf",
            "esst",
            "zvipkmuwjsf"
        }
        if Fg_1[(Fg_18 * 75 + 76) % 12 + 1] <= Fg_1[(Fg_18 * 75 + 76) % 12 + 1] then
            Fg_21 = type(Fg_6.MissionPool) == "table"
        else
            Fg_6 = type(Fg_21.MissionPool) == "table"
        end
        Fg_18 = (Fg_18 + 0) % 4
    until (Fg_18 * 3 + 2) % 4 == 3
end
if Fg_21 then
    Fg_18 = {}
    for k, v in Fg_6.MissionPool do
        Fg_1 = type(v) == "table" and type(v.id) == "string"
        if Fg_1 then
            Fg_18[#Fg_18 + 1] = v.id
        end
    end
    if #Fg_18 > 0 then
        ty = Fg_18
    end
end
uD, Fg_6, Fg_27, uv, uY, Fg_24, Fg_1 = nil, nil, nil, nil, nil, nil, nil
uD = 5
uv = function()
    if not Toggles.AutoClaimTasks or not Toggles.AutoClaimTasks.Value then
        return
    end
    local Bh_1 = os.clock()
    if Bh_1 - u6.lastClaimTasksAt < 1.25 then
        return
    end
    u6.lastClaimTasksAt = Bh_1
    local Bh_2 = u7(uf:GetAttribute("ObjectivesReady"), {})
    for k, v in Bh_2 do
        local Bm = k
        local Bh_3 = v == true and type(Bm) == "string"
        if Bh_3 then
            pcall(function()
                tW.ObjectiveClaim:InvokeServer(Bm)
            end)
        end
    end
    for k, v in ty do
        local Bu = v
        pcall(function()
            tW.DailyMissionClaim:InvokeServer(Bu)
        end)
    end
    pcall(function()
        tW.DailyMissionCompleteAllClaim:InvokeServer()
    end)
end
uY = function()
    if not Toggles.AutoClaimDailies or not Toggles.AutoClaimDailies.Value then
        return
    end
    local Bv_1 = os.clock()
    if Bv_1 - u6.lastClaimDailiesAt < 2 then
        return
    end
    u6.lastClaimDailiesAt = Bv_1
    if uf:GetAttribute("DailyRewardAvailable") == true then
        pcall(function()
            tW.ClaimDailyReward:InvokeServer()
        end)
    end
    for i = 1, uD do
        local BA = i
        pcall(function()
            tW.DailyPlaytimeRewardClaim:InvokeServer(BA)
        end)
    end
end
task.spawn(fns.worker)
task.spawn(fns.worker2)
local function Fg_16()
    local Cu
    local Cq
    local Cx
    local Cv
    local Cr
    local Cw
    Cq = nil
    Cr = nil
    Cu = nil
    Cv = nil
    Cw = nil
    Cx = nil
    local Label3, Cs, Label, Cy, Cz, Label2
    Cx = function(kE, kF)
        return string.format('<font color="%s">%s</font>', kF, kE)
    end
    Cz = function(kH, kI, kJ)
        return string.format("<b>%s</b> %s %s", kH, Cx("-", "#5a6070"), Cx(kI, kJ))
    end
    Cq = "#e05a5a"
    local CB = "#8b93a3"
    Cu = "#e8a34d"
    Cw = "#7fd47f"
    local function CD()
        local BD = hookfunction ~= nil
        local BE = hookmetamethod ~= nil
        local BF = getrawmetatable ~= nil
        local BG = setrawmetatable ~= nil
        local BH = getgc ~= nil
        local BI = getgenv ~= nil
        local BJ = getreg ~= nil
        local BK = getconnections ~= nil
        local BL = firesignal ~= nil
        local BM = getcallbackvalue ~= nil
        local BN = setclipboard ~= nil
        local BO = getcustomasset ~= nil
        local BP = getnamecallmethod ~= nil
        local BQ = isexecutorclosure ~= nil
        local BR = fireproximityprompt ~= nil
        local BS = firetouchinterest ~= nil
        local BT = WebSocket ~= nil
        local BU = readfile ~= nil
        local BV = writefile ~= nil
        local BX = (request or http_request) ~= nil
        local BZ = (debug and debug.getupvalues) ~= nil
        local B0 = (debug and debug.setupvalue) ~= nil
        local B1 = 0
        local B2 = { BD, BE, BF, BG, BH, BI, BJ, BK, BL, BM, BN, BO, BP, BQ, BR, BS, BT, BU, BV, BX, BZ, B0 }
        for i, v in ipairs(B2) do
            if v then
                B1 += 1
            end
        end
        local BD_1 = B1 / #B2
        if BD_1 >= 0.9 then
            return Cx("Full Support", Cw)
        elseif BD_1 >= 0.6 then
            return Cx("Half Support", Cu)
        else
            return Cx("Low Support", Cq)
        end
    end
    Cr = "Unknown"
    pcall(function()
        local Cb_1
        local Ca_1
        if identifyexecutor then
            Cb_1, Ca_1 = identifyexecutor()
            local Cc = Cb_1 ~= ""
            local Cd = type(Cb_1) == "string" and Cc
            if Cd then
                local Cc_1 = type(Ca_1) == "string" and Ca_1 ~= "" and Cb_1 .. " " .. Ca_1
                Cr = Cc_1 or Cb_1
            end
        end
    end)
    local CE = CD()
    Cv = os.clock()
    Cy = function()
        local Ci = math.floor(os.clock() - Cv)
        if Ci < 60 then
            return Ci .. "s"
        elseif Ci < 3600 then
            return string.format("%dm %ds", Ci // 60, Ci % 60)
        else
            return string.format("%dh %dm", Ci // 3600, Ci % 3600 // 60)
        end
    end
    local UserGroup = t_.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = uf, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(Cz("User", uf.DisplayName .. " @" .. uf.Name, Cw), true)
    UserGroup:AddLabel(Cz("UserId", tostring(uf.UserId), "#6ec1ff"), true)
    UserGroup:AddLabel(Cz("Executor", Cr .. "  " .. CE, Cw), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(Cz("Session", Cy(), Cu), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            uM(uf.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            uM("https://www.roblox.com/users/" .. tostring(uf.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = t_.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(Cz("Game", vh, "#6ec1ff"), true)
    Label2 = SessionGroup:AddLabel(Cz("Players", "0/0", Cw), true)
    Cs = tostring(game.JobId)
    local CC = #Cs > 18 and string.sub(Cs, 1, 18) .. "..."
    local CE_1 = CC or Cs
    SessionGroup:AddLabel(Cz("Job", CE_1, CB), true)
    Label = SessionGroup:AddLabel(Cz("Ping", "0 ms", Cu), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            ut:Teleport(game.PlaceId, uf)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            uM(Cs, "Copied Job ID")
        end
    })
    task.spawn(function()
        local Cl_1
        local Ck_1
        while true do
            task.wait(1)
            if tL.Unloaded then
                break
            end
            Label3:SetText(Cz("Session", Cy(), Cu))
            Label2:SetText(Cz("Players", #vb:GetPlayers() .. "/" .. tostring(vb.MaxPlayers), Cw))
            Ck_1, Cl_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local Ck_2 = Ck_1 and Cl_1 .. " ms" or "n/a"
            Label:SetText(Cz("Ping", Ck_2, Cu))
        end
    end)
    local SocialsGroup = t_.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = us })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            if setclipboard then
                setclipboard(u4)
            elseif toclipboard then
                toclipboard(u4)
            end
            tL:Notify("Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            uM(u_, "Copied website link")
        end
    })
end
if (not Fg_1 and Fg_1 and (not Fg_6 and not Fg_1) or (false and not Fg_6 or (Fg_1 or Fg_16)) or (not Fg_1 and Fg_6 or (false or Fg_1) or (Fg_16 and Fg_6 or uv and Fg_16))) and ((Fg_27 or not Fg_1) and (Fg_16 and uv) or (not Fg_1 and false or Fg_27 and Fg_16) or ((uv or not Fg_1) and (Fg_6 or Fg_1) or (not Fg_1 or uv or false))) and not ((not Fg_1 and Fg_1 and (not Fg_6 and not Fg_1) or (false and not Fg_6 or (Fg_1 or Fg_16)) or (not Fg_1 and Fg_6 or (false or Fg_1) or (Fg_16 and Fg_6 or uv and Fg_16))) and ((Fg_27 or not Fg_1) and (Fg_16 and uv) or (not Fg_1 and false or Fg_27 and Fg_16) or ((uv or not Fg_1) and (Fg_6 or Fg_1) or (not Fg_1 or uv or false)))) then
else
    Fg_24 = fn423
end
Fg_13 = function()
    local connection
    local MovementGroup = t_.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = t_.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    u1(uZ.Stepped:Connect(function()
        if tL.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = uf.Character
            if Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    local CT_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if CT_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end))
    u1(uU.JumpRequest:Connect(function()
        if tL.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local C3_1 = tE()
            if C3_1 then
                C3_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end))
    u1(uZ.RenderStepped:Connect(function(mA)
        if tL.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local C5_1 = tE()
            if C5_1 then
                C5_1.WalkSpeed = vl.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local C5_3 = tX()
            local C6 = tE()
            local CurrentCamera = un.CurrentCamera
            if C5_3 and C6 and CurrentCamera then
                C6.PlatformStand = true
                local C6_1 = Vector3.zero
                if uU:IsKeyDown(Enum.KeyCode.W) then
                    C6_1 += CurrentCamera.CFrame.LookVector
                end
                if uU:IsKeyDown(Enum.KeyCode.S) then
                    C6_1 -= CurrentCamera.CFrame.LookVector
                end
                if uU:IsKeyDown(Enum.KeyCode.A) then
                    C6_1 -= CurrentCamera.CFrame.RightVector
                end
                if uU:IsKeyDown(Enum.KeyCode.D) then
                    C6_1 += CurrentCamera.CFrame.RightVector
                end
                if uU:IsKeyDown(Enum.KeyCode.Space) then
                    C6_1 += Vector3.new(0, 1, 0)
                end
                if uU:IsKeyDown(Enum.KeyCode.LeftControl) then
                    C6_1 -= Vector3.new(0, 1, 0)
                end
                C5_3.AssemblyLinearVelocity = Vector3.zero
                if C6_1.Magnitude > 0 then
                    C5_3.CFrame = C5_3.CFrame + C6_1.Unit * vl.FlySpeed.Value * mA
                end
            end
        end
    end))
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local Dk = tE()
            if Dk then
                Dk.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local Dm = tE()
            if Dm then
                Dm.WalkSpeed = 16
            end
        end
    end)
    local function mY(mZ)
        if not mZ:IsA("ProximityPrompt") then
            return
        end
        mZ.HoldDuration = 0
        mZ.MaxActivationDistance = 50
        mZ.RequiresLineOfSight = false
    end
    connection = nil
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in ipairs(un:GetDescendants()) do
                pcall(mY, descendant)
            end
            connection = un.DescendantAdded:Connect(function(m6)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(mY, m6)
                end
            end)
            u1(connection)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    tL:OnUnload(function()
        if connection then
            connection:Disconnect()
        end
    end)
end
Fg_10 = function()
    local MenuGroup = t_.Settings:AddLeftGroupbox("Menu", "logs")
    local ne = 0
    local nf = tick()
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = MenuGroup:AddLabel("AFK triggers: 0")
    local function nh()
        local CurrentCamera = un.CurrentCamera
        if not CurrentCamera then
            return
        end
        uO:CaptureController()
        uO:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        ne += 1
        nf = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. ne)
        end)
    end
    local connection2 = uf.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(nh)
        end
    end)
    u1(connection2)
    task.spawn(function()
        while not tL.Unloaded do
            task.wait(2)
            local DE = Toggles.AntiAfk.Value and tick() - nf >= 60
            if DE then
                pcall(nh)
            end
        end
    end)
    MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3D", { Text = "Disable 3D Rendering", Default = false })
    MenuGroup:AddToggle("FpsBoost", { Text = "FPS Boost", Default = false })
    MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    tL.ToggleKeybind = vl.MenuKeybind
    local function nF(nG)
        pcall(function()
            uA:SetGameplayPausedNotificationEnabled(not nG)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = uE:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not nG
            end
        end)
        if not nG then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(uf, "GameplayPaused", false)
            else
                uf.GameplayPaused = false
            end
        end)
    end
    Toggles.AntiGameplayPause:OnChanged(function()
        nF(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not tL.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                nF(true)
            end
        end
    end)
    local nX = false
    local function nY()
        local JobId, PlaceId
        if nX then
            return
        end
        nX = true
        PlaceId, JobId = game.PlaceId, game.JobId
        local DN = pcall(function()
            ut:TeleportToPlaceInstance(PlaceId, JobId, uf)
        end)
        if not DN then
            pcall(function()
                ut:Teleport(PlaceId, uf)
            end)
        end
    end
    task.spawn(function()
        local RobloxPromptGui = uE:WaitForChild("RobloxPromptGui", 30)
        local DS = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
        if not DS then
            return
        end
        u1(DS.ChildAdded:Connect(function(og)
            if tL.Unloaded then
                return
            end
            if Toggles.AutoReconnect.Value and og.Name == "ErrorPrompt" then
                nY()
            end
        end))
    end)
    u1(ut.TeleportInitFailed:Connect(function()
        if Toggles.AutoReconnect.Value then
            nX = false
            nY()
        end
    end))
    Toggles.Disable3D:OnChanged(function()
        pcall(function()
            uZ:Set3dRenderingEnabled(not Toggles.Disable3D.Value)
        end)
    end)
    local oz = {
        ParticleEmitter = true,
        Trail = true,
        Smoke = true,
        Fire = true,
        Sparkles = true,
        Explosion = true,
        Beam = true
    }
    local function oA(oB)
        if oz[oB.ClassName] then
            pcall(function()
                oB.Enabled = false
            end)
        end
    end
    local connection
    Toggles.FpsBoost:OnChanged(function()
        if Toggles.FpsBoost.Value then
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
            end)
            pcall(function()
                uj.GlobalShadows = false
            end)
            pcall(function()
                uj.FogEnd = 9000000000
            end)
            for i, descendant in ipairs(un:GetDescendants()) do
                pcall(oA, descendant)
            end
            connection = un.DescendantAdded:Connect(function(oQ)
                if Toggles.FpsBoost.Value then
                    pcall(oA, oQ)
                end
            end)
            u1(connection)
        else
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Automatic
            end)
            pcall(function()
                uj.GlobalShadows = true
            end)
            if connection then
                connection:Disconnect()
                connection = nil
            end
        end
    end)
    local ScriptGroup = t_.Settings:AddLeftGroupbox("Script", "terminal")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            tL:Unload()
        end
    })
    tL:OnUnload(function()
        if connection2 then
            connection2:Disconnect()
        end
        nF(false)
        pcall(function()
            uZ:Set3dRenderingEnabled(true)
        end)
        if connection then
            connection:Disconnect()
        end
        for k, v in vg do
            local Ej = v
            pcall(function()
                Ej:Disconnect()
            end)
        end
        table.clear(vg)
        local D9 = tX()
        if D9 then
            D9.Anchored = false
        end
        local D9_1 = tE()
        if D9_1 then
            D9_1.PlatformStand = false
            D9_1.WalkSpeed = 16
        end
        if t3 then
            t3.__OuroborosPopBubblesLib = nil
            if t3.Ouroboros and t3.Ouroboros.PopBubbles then
                t3.Ouroboros.PopBubbles.Loaded = nil
                t3.Ouroboros.PopBubbles.Library = nil
            end
        end
    end)
end
Fg_1 = function(pf)
    local function pg(ph, pi)
        local El_1 = (ph == "Toggle" and Toggles or vl)[pi]
        local Ek_2 = type(El_1) == "table" and El_1.Type == ph
        return Ek_2 and El_1 or nil
    end
    local function pq(pr, ps)
        local Type = ps.Type
        if Type == "Toggle" then
            return { idx = pr, type = "Toggle", value = ps.Value == true }
        elseif Type == "Slider" then
            return { idx = pr, type = "Slider", value = tostring(ps.Value) }
        elseif Type == "Dropdown" then
            return { idx = pr, type = "Dropdown", multi = ps.Multi == true, value = ps.Value }
        elseif Type == "Input" then
            local Ep = ps.Value or ""
            return { idx = pr, type = "Input", text = tostring(Ep) }
        elseif Type == "ColorPicker" then
            return { idx = pr, type = "ColorPicker", value = ps.Value:ToHex(), transparency = ps.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = pr,
                type = "KeyPicker",
                mode = ps.Mode,
                key = ps.Value,
                modifiers = ps.Modifiers,
                toggled = ps.Toggled
            }
        else
            return nil
        end
    end
    local function pu()
        local Ey = {}
        for i, v in ipairs({ Toggles, vl }) do
            for k, v in pairs(v) do
                local Ez = type(v) == "table" and type(v.Type) == "string" and not tD.Ignore[k]
                if Ez then
                    local Ez_1 = pq(k, v)
                    if Ez_1 then
                        Ey[#Ey + 1] = Ez_1
                    end
                end
            end
        end
        table.sort(Ey, function(pE, pF)
            if pE.type ~= pF.type then
                return pE.type < pF.type
            end
            return pE.idx < pF.idx
        end)
        return { objects = Ey }
    end
    local function pG(pH)
        local EV
        EV = nil
        local EW = type(pH) ~= "table" or type(pH.idx) ~= "string" or type(pH.type) ~= "string" or tD.Ignore[pH.idx]
        if EW then
            return false
        end
        EV = pg(pH.type, pH.idx)
        if not EV then
            return false
        end
        local EW_1 = pcall(function()
            if pH.type == "Input" then
                if type(pH.text) ~= "string" then
                    return
                end
                EV:SetValue(pH.text)
            elseif pH.type == "ColorPicker" then
                EV:SetValueRGB(Color3.fromHex(pH.value), pH.transparency)
            elseif pH.type == "KeyPicker" then
                EV:SetValue({ pH.key, pH.mode, pH.modifiers })
                if pH.mode == "Toggle" and pH.toggled ~= nil then
                    EV.Toggled = pH.toggled
                    EV:Update()
                end
            else
                EV:SetValue(pH.value)
            end
        end)
        return EW_1
    end
    pf:AddDivider()
    pf:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    pf:AddButton("Export Config to Clipboard", function()
        local EZ_1
        local EY_1
        EY_1, EZ_1 = pcall(uK.JSONEncode, uK, pu())
        if not EY_1 then
            tL:Notify("Failed to encode the config")
            return
        end
        local EY_2 = setclipboard or toclipboard
        local EY_3 = type(EY_2) ~= "function" or not pcall(EY_2, EZ_1)
        if EY_3 then
            tL:Notify("Your executor does not support copying to the clipboard")
            return
        end
        tL:Notify("Config copied to clipboard", 6)
    end)
    pf:AddButton("Import Config from Clipboard Text", function()
        local E3_1
        local E1 = vl.SaveManager_ImportSource.Value or ""
        local E1_1
        local E2 = tostring(E1):match("^%s*(.-)%s*$")
        if E2 == "" then
            tL:Notify("Paste an exported config into the box first")
            return
        end
        E1_1, E3_1 = pcall(uK.JSONDecode, uK, E2)
        local E2_1 = not E1_1
        local E7 = if E2_1 then 1 else 0
        local E5 = 2920 * E7 + 3757 * (1 - E7)
        local E6 = 3104 * E7 + 1242 * (1 - E7)
        if not ((E5 * 1206 + E6 * 717 + E5 * E6) % 16777213 == 14810768) then
            E2_1 = type(E3_1) ~= "table"
        end
        if not E2_1 then
            E2_1 = type(E3_1.objects) ~= "table"
        end
        if E2_1 then
            tL:Notify("That is not a valid exported config")
            return
        end
        local E1_2 = 0
        for i, v in ipairs(E3_1.objects) do
            if pG(v) then
                E1_2 += 1
            end
        end
        if E1_2 == 0 then
            tL:Notify("No settings in that config matched this script")
            return
        end
        vl.SaveManager_ImportSource:SetValue("")
        local E3_2 = E1_2 == 1 and "" or "s"
        tL:Notify(("Imported %d setting%s"):format(E1_2, E3_2), 6)
    end)
end
Fg_16()
Fg_24()
Fg_13()
Fg_10()
Fg_3:SetLibrary(tL)
Fg_3:SetFolder("OuroborosHub")
Fg_3:SaveDefault("Evil Hello Kitty")
Fg_3:ApplyToTab(t_.Settings)
Fg_3:LoadDefault()
tD:SetLibrary(tL)
tD:IgnoreThemeSettings()
tD:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
tD:SetFolder("OuroborosHub/PopBubbles")
Fg_6 = tD:BuildConfigSection(t_.Settings)
Fg_1(Fg_6)
tD:LoadAutoloadConfig()
Fg_27 = Toggles.HideUiOnStart and Toggles.HideUiOnStart.Value
if Fg_27 then
    tL:Toggle(false)
end
