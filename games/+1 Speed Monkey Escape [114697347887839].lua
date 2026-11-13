local hd
local gV
local hg
local gY
local hj
local Trails
local g0
local gI
local g3
local EquipBestCharms
local gL
local g6
local gO
local g9
local gR
local hc
local hf
local connection
local hi
local gX
local g_
local hl
local BuyAura
local g2
local connection2
local gK
local g5
local gN
local Label
local gQ
local hb
local gT
local Charms
local gW
local hh
local gZ
local hk
local g1
local hn
local g4
local gJ
local PlayerUtil
local gM
local ha
local gP
local SelectUpgrade
local function autoEquipBestUpgradeLoop()
    while true do
        task.wait(2)
        if hb.Unloaded then
            break
        end
        if g1.AutoEquipBestUpgrade.Value then
            local kB = -1
            local kC
            for i, child in hl.UnlockedUpgrades:GetChildren() do
                local kD_1 = tonumber(child.Name)
                local kE = kD_1 and gJ[kD_1]
                local kF = kE
                if kE then
                    kE = kF.Multi > kB
                end
                if kE then
                    kC = kD_1
                    kB = kF.Multi
                end
            end
            if kC and hl.SelectedUpgrade.Value ~= kC then
                SelectUpgrade:FireServer(kC)
            end
        end
    end
end
local function autoRebirthLoop()
    while true do
        task.wait(2)
        if hb.Unloaded then
            break
        end
        if g1.AutoRebirth.Value then
            local kk = gO.RebirthLevels[hl.Rebirths.Value + 1]
            local kj_1 = kk and PlayerUtil.GetLevel(hl) >= kk
            if kj_1 then
                gZ:FireServer()
            end
        end
    end
end
local function autoBuyUpgradesLoop()
    while true do
        task.wait(1)
        if hb.Unloaded then
            break
        end
        if g1.AutoBuyUpgrades.Value then
            local km = hh()
            local kn = -1
            local ko
            for k, v in gJ do
                local kp = km >= v.WinsRequirement and v.WinsRequirement > kn and not hl.UnlockedUpgrades:FindFirstChild(tostring(k))
                if kp then
                    ko = k
                    kn = v.WinsRequirement
                end
            end
            if ko then
                SelectUpgrade:FireServer(ko)
            end
        end
    end
end
local function autoWinLoop()
    while true do
        local wait = task.wait
        local j9 = g1.AutoWin.Value and math.max(gY.WinDelay.Value, 0.5)
        local ka = j9 or 0.5
        wait(ka)
        if hb.Unloaded then
            break
        end
        if g1.AutoWin.Value and firetouchinterest then
            local j8_2 = g5[gY.WinPlate.Value]
            local j9_1 = j8_2 and g6(j8_2.World)
            if j9_1 then
                local j9_2 = hf(j8_2)
                local ka_1 = gM()
                if j9_2 and ka_1 then
                    firetouchinterest(ka_1, j9_2, 0)
                    firetouchinterest(ka_1, j9_2, 1)
                else
                    hg(j8_2)
                end
            end
        end
    end
end
local function antiAfkLoop()
    while true do
        task.wait(2)
        if hb.Unloaded then
            break
        end
        if g1.AntiAfk.Value then
            local jZ = tick() - gR
            local j_ = tick() - gN
            if jZ >= 300 and j_ >= 60 then
                pcall(hc)
            else
                if jZ < 300 and j_ >= 300 then
                    pcall(hc)
                end
            end
        end
    end
end
local function fn64(J, K)
    return string.format('<font color="%s">%s</font>', K, J)
end
local function autoBuyTrailsLoop()
    while true do
        task.wait(2)
        if hb.Unloaded then
            break
        end
        if g1.AutoBuyTrails.Value then
            for k, v in Trails do
                local k_ = hh() >= v.Price and not hl.UnlockedTrails:FindFirstChild(k)
                if k_ then
                    gL:FireServer(k)
                    task.wait(0.2)
                end
            end
        end
    end
end
local function worker()
    local jH_1
    while true do
        task.wait(1)
        if hb.Unloaded then
            break
        end
        local jG = math.floor(os.clock() - gI)
        if jG < 60 then
            jH_1 = jG .. "s"
        elseif jG < 3600 then
            jH_1 = string.format("%dm %ds", jG // 60, jG % 60)
        else
            jH_1 = string.format("%dh %dm", jG // 3600, jG % 3600 // 60)
        end
        Label:SetText(gK("Session time", jH_1, g4))
    end
end
local function onChanged()
    table.clear(hi)
end
local function fn161()
    if setclipboard then
        setclipboard(g0)
    elseif toclipboard then
        toclipboard(g0)
    end
    hb:Notify("Copied Discord invite to clipboard")
end
local function fn218(bn)
    for i, descendant in bn:GetDescendants() do
        local i5 = descendant:IsA("BasePart") and hk:HasTag(descendant, "Treadmill")
        if i5 then
            return descendant
        end
    end
    return nil
end
local function autoBuyItemsLoop()
    while true do
        task.wait(2)
        if hb.Unloaded then
            break
        end
        if g1.AutoBuyItems.Value then
            local CharmShop = hl.CharmShop
            for i, child in CharmShop:GetChildren() do
                local kO = tonumber(child.Name:match("^Slot(%d+)$"))
                local kP = kO and CharmShop:FindFirstChild("Bought" .. kO)
                local kQ = kO
                if kQ then
                    kQ = child.Value ~= ""
                end
                if kQ then
                    kQ = Charms.Items[child.Value]
                end
                local kP_1 = kQ
                if kQ then
                    kQ = kP
                end
                if kQ then
                    kQ = not kP.Value
                end
                if kQ then
                    kQ = hh() >= kP_1.Price
                end
                if kQ then
                    gQ:FireServer(kO)
                    task.wait(0.2)
                end
            end
        end
    end
end
local function onRscripts()
    if setclipboard then
        setclipboard(gX)
    elseif toclipboard then
        toclipboard(gX)
    end
    hb:Notify("Copied Rscripts profile to clipboard")
end
local function fn279(ap)
    local Map = workspace:FindFirstChild("Map")
    local iC = Map and Map:FindFirstChild("World" .. tostring(ap.World))
    local iB_1 = iC
    if iC then
        iC = iB_1:FindFirstChild("Stages")
    end
    local iB_2 = iC
    if iC then
        iC = iB_2:FindFirstChild("Stage" .. tostring(ap.Order))
    end
    local iB_3 = iC
    if iC then
        local iE = ap.Double and "VipWin" or "NormalWin"
        iC = iB_3:FindFirstChild(iE)
    end
    local iB_4 = iC
    if iC then
        iC = iB_4:FindFirstChild("Button")
    end
    return iC
end
local function autoTreadmillLoop()
    while true do
        local wait = task.wait
        local kf = g1.AutoTreadmill.Value and 0.03 or 0.5
        wait(kf)
        if hb.Unloaded then
            break
        end
        if g1.AutoTreadmill.Value then
            local kd_1 = g2[gY.Treadmill.Value]
            local ke_1 = kd_1 and g_(kd_1)
            local Character = g9.Character
            local kf_1 = Character and Character:FindFirstChild("HumanoidRootPart")
            local kg = Character
            if kg then
                kg = Character:FindFirstChildOfClass("Humanoid")
            end
            local ke_3 = ke_1
            local kf_2 = kg
            if ke_3 then
                ke_3 = kf_1
            end
            if ke_3 then
                ke_3 = kf_2
            end
            if ke_3 then
                ke_3 = kf_2.Health > 0
            end
            if ke_3 then
                if (kf_1.Position - ke_1.Position).Magnitude > 6 then
                    kf_1.AssemblyLinearVelocity = Vector3.zero
                    kf_1.AssemblyAngularVelocity = Vector3.zero
                    kf_1.CFrame = CFrame.new(ke_1.Position + Vector3.new(0, 2, 0))
                end
                kf_2:Move(Vector3.new(0, 0, -1), false)
            end
        end
    end
end
local function fn287()
    if not workspace.CurrentCamera then
        return
    end
    ha:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    ha:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    gN = tick()
end
local function fn317(bt)
    local Map = workspace:FindFirstChild("Map")
    local je = Map and Map:FindFirstChild("World" .. tostring(hl.World.Value))
    local jd_1 = je
    if je then
        je = jd_1:FindFirstChild("Stages")
    end
    local jd_2 = je
    if je then
        je = jd_2:FindFirstChild("Spawn")
    end
    local jf = je
    if je then
        je = jf:FindFirstChild("Treadmills")
    end
    local jf_1 = je
    if je then
        je = jf_1:FindFirstChild(bt.Model)
    end
    local jf_2 = je
    if je then
        je = hn(jf_2)
    end
    local jf_3 = je
    if jf_3 then
        return jf_3
    elseif not jd_2 then
        return nil
    else
        for i, child in jd_2:GetChildren() do
            for i, child in child:GetChildren() do
                if child.Name == bt.Model then
                    local jf_4 = hn(child)
                    if jf_4 then
                        return jf_4
                    end
                end
            end
        end
        return nil
    end
end
local function fn357(aE)
    if hl.World.Value == aE then
        return true
    end
    local iG = gO.WorldRebirthsRequired["World" .. tostring(aE)]
    if iG and hl.Rebirths.Value < iG then
        if not hi[aE] then
            hi[aE] = true
            hb:Notify("World " .. tostring(aE) .. " needs " .. tostring(iG) .. " rebirths")
        end
        return false
    end
    if os.clock() - hd >= 5 then
        hd = os.clock()
        gV:FireServer(aE)
    end
    return false
end
local function onInputChanged(cH)
    local UserInputType = cH.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        gR = tick()
    end
end
local function autoEquipBestItemLoop()
    while true do
        task.wait(3)
        if hb.Unloaded then
            break
        end
        if g1.AutoEquipBestItem.Value then
            EquipBestCharms:FireServer()
        end
    end
end
local function fn383()
    return hl.Wins.Value
end
local function fn384()
    local jx_1
    local jw_1
    if identifyexecutor then
        jx_1, jw_1 = identifyexecutor()
        local jy = jx_1 ~= ""
        local jz = type(jx_1) == "string" and jy
        if jz then
            local jy_1 = type(jw_1) == "string" and jw_1 ~= "" and jx_1 .. " " .. jw_1
            gP = jy_1 or jx_1
        end
    end
end
local function autoBuyAurasLoop()
    while true do
        task.wait(2)
        if hb.Unloaded then
            break
        end
        if g1.AutoBuyAuras.Value then
            for k, v in hj do
                local k7 = hh() >= v.Price and not hl.UnlockedAuras:FindFirstChild(k)
                if k7 then
                    BuyAura:FireServer(k)
                    task.wait(0.2)
                end
            end
        end
    end
end
local function fn440()
    local Character = g9.Character
    local iw = Character and Character:FindFirstChild("HumanoidRootPart")
    return iw
end
local function onUnload()
    hb:Unload()
end
local function fn474(bQ)
    local DiscordGroup = bQ:AddLeftGroupbox("Discord", nil, true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = gW })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = gW })
end
local function onCopyJoinScript_JobID()
    local jE = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, g3)
    if setclipboard then
        setclipboard(jE)
    elseif toclipboard then
        toclipboard(jE)
    end
    hb:Notify("Copied join script to clipboard")
end
local function onInputBegan()
    gR = tick()
end
local function fn580(M, N, O)
    return string.format("<b>%s</b> %s %s", M, gT("-", "#5a6070"), gT(N, O))
end
local function fn584()
    connection:Disconnect()
    connection2:Disconnect()
    print("+1 Speed Monkey Escape unloaded")
end
BuyAura = nil
gI = nil
gJ = nil
gK = nil
gL = nil
gM = nil
gN = nil
gO = nil
gP = nil
gQ = nil
gR = nil
SelectUpgrade = nil
gT = nil
connection = nil
gV = nil
gW = nil
gX = nil
gY = nil
gZ = nil
g_ = nil
g0 = nil
g1 = nil
g2 = nil
g3 = nil
g4 = nil
g5 = nil
g6 = nil
PlayerUtil = nil
Label = nil
g9 = nil
ha = nil
hb = nil
hc = nil
hd = nil
Charms = nil
hf = nil
hg = nil
hh = nil
hi = nil
hj = nil
hk = nil
hl = nil
Trails = nil
hn = nil
connection2 = nil
EquipBestCharms = nil
local ht
local hs_1, hs_7
local hq_1, AccountGroup
local hu, hw, hx, hy, hz, hB, hC, hD, hE, hF, hG, hH, hK, hL
local hA_1
local hv_1
hq_1, hv_1, hk, hG, ha, g9, hB, g0, gX, ht, hs_1, gO, gJ, hy, Trails, hj, Charms, hx, PlayerUtil, hw, gZ, gV, SelectUpgrade, gQ, gL, BuyAura, EquipBestCharms, hl, hu, hb, hE, hC, g1, gY, hz, hD, g4, hA_1, hF, g5, gT, gK, gW, gM, hh = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local hr = 83
local hr_3
repeat
    hH = (hr * 2 + 16) % 21 + 1
    if hH <= 11 then
        if hH <= 6 then
            if hH <= 3 then
                if hH <= 2 then
                    if hH <= 1 then
                        local hI_1 = {
                            "ydeg",
                            "www",
                            "hjrykqripi",
                            "hshtjkgopvu",
                            "sgbocacadw",
                            "mefmvmqzcb",
                            "sqqscf",
                            "ttecwph",
                            "djbzby",
                            "vngbczh",
                            "pymbzqf",
                            "blgeyyzeu"
                        }
                        local md = hr
                        local hJ_1 = hI_1[md % 12 + 1]
                        if hJ_1:len() <= hJ_1:gsub("(.)", "%1%1", md % 3 % 2 + 1):len() then
                            hs_1 = hv_1:WaitForChild("Config")
                        else
                            hv_1 = hs_1:WaitForChild("Config")
                        end
                        hr = (hr + 32) % 84
                    else
                        if (ht or not hC) and (not ht or hr) or not hr and not ht and (hr and hr) or not ((ht or not hC) and (not ht or hr) or not hr and not ht and (hr and hr)) then
                            gO = require(hs_1:WaitForChild("Main"))
                            gJ = require(hs_1:WaitForChild("Upgrades"))
                            hy = require(hs_1:WaitForChild("Treadmills"))
                            Trails = require(hs_1:WaitForChild("Trails"))
                        else
                            hy = require(Trails:WaitForChild("Main"))
                            gO = require(Trails:WaitForChild("Upgrades"))
                            gJ = require(Trails:WaitForChild("Treadmills"))
                            hs_1 = require(Trails:WaitForChild("Trails"))
                        end
                        hr = (hr + 53) % 84
                    end
                else
                    local hI_2 = { "rrhtrse", "kanadf", "mqloqtfmmjn", "zpxvskquhr", "lkeookzlix", "ysrou", "fqiuhhwg", "wovihwodu" }
                    if hI_2[(hr * 86 + 23) % 8 + 1] < hI_2[(hr * 86 + 23) % 8 + 1] then
                        hx = require(Charms:WaitForChild("Auras"))
                        hs_1 = require(Charms:WaitForChild("Charms"))
                        hj = require(Charms:WaitForChild("ProductIDs"))
                    else
                        hj = require(hs_1:WaitForChild("Auras"))
                        Charms = require(hs_1:WaitForChild("Charms"))
                        hx = require(hs_1:WaitForChild("ProductIDs"))
                    end
                    hr = (hr + 74) % 84
                end
            elseif hH <= 5 then
                if hH <= 4 then
                    if hr * 48445297 + 2 + 2 <= hr * 48445297 + 2 + 2 + 6 then
                        PlayerUtil = require(hv_1:WaitForChild("Util"):WaitForChild("PlayerUtil"))
                    else
                        hv_1 = require(PlayerUtil:WaitForChild("Util"):WaitForChild("PlayerUtil"))
                    end
                    hr = (hr + 53) % 84
                else
                    local hI_3 = (vector.create((hr * 3 + 4) % 11 + 1, (hr * 3 + 11) % 13 + 1, (hr * 7 + 13) % 17 + 1))
                    local hJ_2 = (vector.create((hr * 6 + 3) % 11 + 1, (hr * 7 + 1) % 13 + 1, (hr * 12 + 5) % 17 + 1))
                    local lV = vector.cross(hI_3, hJ_2)
                    local lW = vector.dot(hI_3, hJ_2)
                    if vector.dot(lV, lV) + lW * lW == vector.dot(hI_3, hI_3) * vector.dot(hJ_2, hJ_2) + 2 then
                        gZ = require(hw.Util:WaitForChild("Formatter"))
                        gV = SelectUpgrade:WaitForChild("Rebirth")
                        gQ = SelectUpgrade:WaitForChild("TeleportWorld")
                        hv_1 = SelectUpgrade:WaitForChild("SelectUpgrade")
                        ht = SelectUpgrade:WaitForChild("BuyCharm")
                    else
                        hw = require(hv_1.Util:WaitForChild("Formatter"))
                        gZ = ht:WaitForChild("Rebirth")
                        gV = ht:WaitForChild("TeleportWorld")
                        SelectUpgrade = ht:WaitForChild("SelectUpgrade")
                        gQ = ht:WaitForChild("BuyCharm")
                    end
                    hr = (hr + 32) % 84
                end
            else
                local hI_4 = (vector.create((hr * 5 + 4) % 11 + 1, (hr * 10 + 13) % 13 + 1, (hr * 1 + 6) % 17 + 1))
                local hJ_3 = (vector.create((hr * 6 + 5) % 11 + 1, (hr * 9 + 12) % 13 + 1, (hr * 10 + 10) % 17 + 1))
                local lI = vector.dot(hI_4, hJ_3)
                if lI * lI <= vector.dot(hI_4, hI_4) * vector.dot(hJ_3, hJ_3) then
                    gL = ht:WaitForChild("BuyTrail")
                    BuyAura = ht:WaitForChild("BuyAura")
                    EquipBestCharms = ht:WaitForChild("EquipBestCharms")
                    hl = g9:WaitForChild("Data")
                else
                    ht = BuyAura:WaitForChild("BuyTrail")
                    gL = BuyAura:WaitForChild("BuyAura")
                    hl = BuyAura:WaitForChild("EquipBestCharms")
                    g9 = EquipBestCharms:WaitForChild("Data")
                end
                hr = (hr + 74) % 84
            end
        elseif hH <= 9 then
            if hH <= 8 then
                if hH <= 7 then
                    if hr * 25309581 + 9 + 5 >= hr * 25309581 + 9 + 5 + 2 then
                        gV = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                    else
                        hu = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                    end
                    hr = (hr + 74) % 84
                else
                    local hI_5 = (vector.create((hr * 3 + 2) % 11 + 1, (hr * 1 + 7) % 13 + 1, (hr * 13 + 5) % 17 + 1))
                    local hJ_4 = (vector.create((hr * 3 + 9) % 11 + 1, (hr * 1 + 12) % 13 + 1, (hr * 12 + 15) % 17 + 1))
                    local l3 = vector.cross(hI_5, hJ_4)
                    local l4 = vector.dot(hI_5, hJ_4)
                    if vector.dot(l3, l3) + l4 * l4 == vector.dot(hI_5, hI_5) * vector.dot(hJ_4, hJ_4) + 2 then
                        gY = loadstring(game:HttpGet(hC .. "Library.lua"))()
                        hb = loadstring(game:HttpGet(hC .. "addons/ThemeManager.lua"))()
                        hu = loadstring(game:HttpGet(hC .. "addons/SaveManager.lua"))()
                        hE = gY.Toggles
                        g1 = gY.Options
                    else
                        hb = loadstring(game:HttpGet(hu .. "Library.lua"))()
                        hE = loadstring(game:HttpGet(hu .. "addons/ThemeManager.lua"))()
                        hC = loadstring(game:HttpGet(hu .. "addons/SaveManager.lua"))()
                        g1 = hb.Toggles
                        gY = hb.Options
                    end
                    hr = (hr + 11) % 84
                end
            else
                local lU = bit32.rrotate(bit32.bxor(bit32.lrotate(hr, 27), string.byte(tostring(gO))), 16)
                if bit32.bxor(bit32.lrotate(bit32.bxor(lU, 666886808), 0), 666886808) ~= bit32.lrotate(lU, 0) then
                    gK = fn64
                    gT = fn580
                else
                    gT = fn64
                    gK = fn580
                end
                hr = (hr + 74) % 84
            end
        elseif hH <= 10 then
            if (g1 or gW) and (hb or g9) or g1 and not gW and (not g9 and not gW) or (gW or not hb or g1 and not hC) and (hb and hb or (hb or not gW)) or not ((g1 or gW) and (hb or g9) or g1 and not gW and (not g9 and not gW) or (gW or not hb or g1 and not hC) and (hb and hb or (hb or not gW))) then
                hz = "#7fd47f"
            else
                gK = "#7fd47f"
            end
            hr = (hr + 32) % 84
        else
            local hI_6 = (vector.create((hr * 5 + 7) % 11 + 1, (hr * 3 + 1) % 13 + 1, (hr * 3 + 2) % 17 + 1))
            local lO = vector.floor(hI_6) + vector.ceil(hI_6 * -1)
            if vector.dot(lO, lO) == 0 then
                hD = "#6ec1ff"
                g4 = "#e8a34d"
            else
                g4 = "#6ec1ff"
                hD = "#e8a34d"
            end
            hr = (hr + 74) % 84
        end
    elseif hH <= 16 then
        if hH <= 14 then
            if hH <= 13 then
                if hH <= 12 then
                    local lT = bit32.rrotate(bit32.bxor(bit32.lrotate(hr, 27), string.byte(tostring(hA_1))), 23)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(lT, 4011580601), 4256026318), (bit32.bxor(bit32.band(lT, 283386694), 1450872663))), 4256026318), 1450872663) == lT then
                        hA_1 = "#8b93a3"
                        gW = fn161
                    else
                        gW = "#8b93a3"
                        hA_1 = fn161
                    end
                    hr = (hr + 74) % 84
                else
                    local hI_7 = (vector.create((hr * 7 + 5) % 11 + 1, (hr * 8 + 3) % 13 + 1, (hr * 10 + 10) % 17 + 1))
                    local hJ_5 = (vector.create((hr * 7 + 7) % 11 + 1, (hr * 9 + 1) % 13 + 1, (hr * 15 + 3) % 17 + 1))
                    local l0 = vector.cross(hI_7, hJ_5)
                    local l1 = vector.dot(hI_7, hJ_5)
                    if vector.dot(l0, l0) + l1 * l1 == vector.dot(hI_7, hI_7) * vector.dot(hJ_5, hJ_5) + 1 then
                        hD = fn440
                    else
                        gM = fn440
                    end
                    hr = (hr + 74) % 84
                end
            else
                local hI_8 = (vector.create((hr * 7 + 8) % 11 + 1, (hr * 4 + 13) % 13 + 1, (hr * 7 + 2) % 17 + 1))
                local hJ_6 = (vector.create((hr * 2 + 9) % 11 + 1, (hr * 7 + 8) % 13 + 1, (hr * 3 + 1) % 17 + 1))
                hK = (vector.create((hr * 1 + 9) % 11 + 1, (hr * 2 + 1) % 13 + 1, (hr * 1 + 2) % 17 + 1))
                if vector.dot(vector.cross(hI_8, hJ_6), hK) == vector.dot(vector.cross(hJ_6, hK), hI_8) + 4 then
                    g5 = fn383
                    hh = {}
                    hF = {}
                else
                    hh = fn383
                    hF = {}
                    g5 = {}
                end
                hr = (hr + 11) % 84
            end
        elseif hH <= 15 then
            local hI_9 = { "yjzwvrd", "xlsomzhbzv", "rurt", "nnyziepgqre", "hnl", "iwfj", "ltamcbqbror" }
            local lH = hr
            local hJ_7 = hI_9[lH % 7 + 1]
            if hJ_7:len() >= hJ_7:gsub("(.)", "%1%1", lH % 3 % 2 + 1):len() then
                hw = game:GetService("Players")
            else
                hq_1 = game:GetService("Players")
            end
            hr = (hr + 11) % 84
        else
            local hI_10 = {
                "phgcpnuxh",
                "luag",
                "bvcowzkesiu",
                "zfxlnlwrr",
                "qmod",
                "ceatvbxbbwy",
                "gosyqzukb",
                "zhmvs",
                "vscpxz",
                "vpfytidi",
                "ueojknelu"
            }
            if hI_10[(hr * 25 + 71) % 11 + 1] < hI_10[(hr * 25 + 71) % 11 + 1] then
                hs_1 = game:GetService("ReplicatedStorage")
            else
                hv_1 = game:GetService("ReplicatedStorage")
            end
            hr = (hr + 11) % 84
        end
    elseif hH <= 19 then
        if hH <= 18 then
            if hH <= 17 then
                local hI_11 = {
                    "thtuubsc",
                    "gjlnybb",
                    "gglkuhr",
                    "tgunuh",
                    "qtnsabbi",
                    "zbdgfycnft",
                    "qccvzhgoylr",
                    "ipe",
                    "pymn"
                }
                local mb = hr
                local hJ_8 = hI_11[mb % 9 + 1]
                if hJ_8:len() <= hJ_8:gsub("(.)", "%1%1", mb % 3 % 2 + 1):len() then
                    hk = game:GetService("CollectionService")
                    hG = game:GetService("UserInputService")
                    ha = game:GetService("VirtualUser")
                else
                    ha = game:GetService("CollectionService")
                    hk = game:GetService("UserInputService")
                    hG = game:GetService("VirtualUser")
                end
                hr = (hr + 53) % 84
            else
                local hI_12 = (vector.create((hr * 1 + 7) % 11 + 1, (hr * 7 + 13) % 13 + 1, (hr * 14 + 7) % 17 + 1))
                local hJ_9 = (vector.create((hr * 7 + 7) % 11 + 1, (hr * 8 + 2) % 13 + 1, (hr * 3 + 4) % 17 + 1))
                hK = (vector.create((hr * 5 + 5) % 11 + 1, (hr * 1 + 3) % 13 + 1, (hr * 14 + 14) % 17 + 1))
                hL = (vector.create((hr * 3 + 2) % 5 + 1, (hr * 3 + 6) % 7 + 1, (hr * 5 + 7) % 9 + 1))
                if vector.dot(vector.cross(hI_12, (vector.cross(hJ_9, hK))), hL) == vector.dot(hJ_9 * vector.dot(hI_12, hK) - hK * vector.dot(hI_12, hJ_9), hL) then
                    g9 = hq_1.LocalPlayer
                else
                    hq_1 = g9.LocalPlayer
                end
                hr = (hr + 53) % 84
            end
        else
            local lS = bit32.rrotate(bit32.bxor(bit32.lrotate(hr, 4), string.byte(tostring(g4))), 26)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(lS, 1790992379), 334129806), (bit32.bxor(bit32.band(lS, 2503974916), 2560079233))), 334129806), 2560079233) == lS then
                hB = "+1 Speed Monkey Escape"
                g0 = "https://discord.gg/ehKVq7pf7v"
            else
                g0 = "+1 Speed Monkey Escape"
                hB = "https://discord.gg/ehKVq7pf7v"
            end
            hr = (hr + 11) % 84
        end
    elseif hH <= 20 then
        local mi = bit32.rrotate(bit32.bxor(bit32.lrotate(hr, 17), string.byte(tostring(PlayerUtil))), 30)
        if bit32.bxor(bit32.lrotate(bit32.bxor(mi, 3172346937), 14), 2332979013) ~= bit32.lrotate(mi, 14) then
            hz = "https://rscripts.net/@Ouroboros"
        else
            gX = "https://rscripts.net/@Ouroboros"
        end
        hr = (hr + 74) % 84
    else
        hH = { "djx", "mkonjqus", "hysc", "kejvkryue", "kugktcjptph", "anvlc", "byrbudhzy" }
        local mj = hr
        local hI_13 = hH[mj % 7 + 1]
        if hI_13:len() <= hI_13:gsub("(.)", "%1%1", mj % 3 % 2 + 1):len() then
            ht = hv_1:WaitForChild("Remotes")
        else
            hv_1 = ht:WaitForChild("Remotes")
        end
        hr = (hr + 53) % 84
    end
until (hr * 17 + 65) % 84 == 48
local h1 = 1
while h1 <= 4 do
    local h2 = h1
    local h3 = h2
    local hq_2 = gO.StageWins["World" .. tostring(h3)]
    if hq_2 then
        for i, v in ipairs(hq_2) do
            for k, v2 in { false, true } do
                local hq_4 = v2 and v * 2 or v
                local format = string.format
                h3 = h2
                ht = v2 and "Double" or "Normal"
                local hs_3 = format("World %d - Stage %d - %s (+%s)", h3, i, ht, hw.Format(hq_4))
                if v2 then
                    hs_3 = hs_3 .. " [Gamepass]"
                end
                table.insert(hF, hs_3)
                g5[hs_3] = { World = h3, Order = i, Double = v2 }
            end
        end
    end
    h1 += 1
end
hi, hd, hr_3, hu, g2, ht, hf, g6, hg = nil, nil, nil, nil, nil, nil, nil, nil, nil
local hq_5 = 22
repeat
    local hs_4 = (hq_5 * 4 + 2) % 5 + 1
    if hs_4 <= 3 then
        if hs_4 <= 2 then
            if hs_4 <= 1 then
                local hv_2 = (vector.create((hq_5 * 4 + 7) % 11 + 1, (hq_5 * 9 + 5) % 13 + 1, (hq_5 * 1 + 7) % 17 + 1))
                hw = (vector.create((hq_5 * 1 + 1) % 11 + 1, (hq_5 * 3 + 10) % 13 + 1, (hq_5 * 1 + 12) % 17 + 1))
                hH = (vector.create((hq_5 * 3 + 9) % 11 + 1, (hq_5 * 4 + 10) % 13 + 1, (hq_5 * 5 + 4) % 17 + 1))
                local hI_14 = (vector.create((hq_5 * 1 + 4) % 11 + 1, (hq_5 * 6 + 4) % 13 + 1, (hq_5 * 6 + 6) % 17 + 1))
                if vector.dot(vector.cross(hv_2, hw), (vector.cross(hH, hI_14))) == vector.dot(hv_2, hH) * vector.dot(hw, hI_14) - vector.dot(hv_2, hI_14) * vector.dot(hw, hH) + 3 then
                    hr_3 = fn279
                else
                    hf = fn279
                end
                hq_5 = (hq_5 + 19) % 40
            else
                local l8 = bit32.rrotate(bit32.bxor(bit32.lrotate(hq_5, 19), string.byte(tostring(hd))), 1)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(l8, 1698175147), 3088874695), (bit32.bxor(bit32.band(l8, 2596792148), 756416866))), 3088874695), 756416866) ~= l8 then
                    g6 = {}
                    hi = 0
                    hd.Rebirths.Changed:Connect(onChanged)
                    hl = fn357
                else
                    hi = {}
                    hd = 0
                    hl.Rebirths.Changed:Connect(onChanged)
                    g6 = fn357
                end
                hq_5 = (hq_5 + 4) % 40
            end
        else
            if (hq_5 * 3 + 3) * 13 % 4 == ((hq_5 * 3 + 3) * 13 + 11) % 4 then
                hi = function(aO)
                    local iM
                    local Map = workspace:FindFirstChild("Map")
                    local iO = Map and Map:FindFirstChild("Checkpoints")
                    local iN_7 = iO
                    if iO then
                        iO = iN_7:FindFirstChild("World" .. tostring(aO.World))
                    end
                    local iN_8 = iO
                    if not iN_8 then
                        return
                    end
                    local iO_5 = iN_8:FindFirstChild("Checkpoint" .. tostring(aO.Order))
                    if not iO_5 then
                        local iP_3 = 0
                        for i, child in iN_8:GetChildren() do
                            local iN_9 = tonumber(child.Name:match("^Checkpoint(%d+)$"))
                            if iN_9 and iN_9 > iP_3 and iN_9 < aO.Order then
                                iP_3 = iN_9
                                iO_5 = child
                            end
                        end
                    end
                    local iN_10 = iO_5
                    if iN_10 then
                        local iP_4 = iO_5:FindFirstChild("SpawnPoint") or iO_5:FindFirstChild("Hitbox")
                        iN_10 = iP_4
                    end
                    local iO_6 = iN_10
                    local iN_11 = not iO_6 or not iO_6:IsA("BasePart")
                    local i_ = if iN_11 then 1 else 0
                    local iY = 2752 * i_ + 1648 * (1 - i_)
                    local iZ = 1276 * i_ + 2344 * (1 - i_)
                    if not ((iY * 1426 + iZ * 2667 + iY * iZ) % 16777213 == 10838996) then
                        iN_11 = not gM()
                    end
                    if iN_11 then
                        return
                    end
                    iM = iO_6.Position + Vector3.new(0, 5, 0)
                    pcall(function()
                        g9:RequestStreamAroundAsync(iM)
                    end)
                    local iN_12 = RaycastParams.new()
                    iN_12.FilterType = Enum.RaycastFilterType.Exclude
                    iN_12.FilterDescendantsInstances = { g9.Character }
                    local i2 = 1
                    while i2 <= 60 do
                        local i3 = i2
                        local iO_7 = gM()
                        if not iO_7 then
                            return
                        end
                        iO_7.AssemblyLinearVelocity = Vector3.zero
                        iO_7.AssemblyAngularVelocity = Vector3.zero
                        iO_7.CFrame = CFrame.new(iM)
                        local iO_8 = i3 > 4 and workspace:Raycast(iM, Vector3.new(0, -100, 0), iN_12)
                        if iO_8 then
                            break
                        end
                        task.wait(0.05)
                        i2 += 1
                    end
                end
            else
                hg = function(aO)
                    local iM
                    local Map = workspace:FindFirstChild("Map")
                    local iO = Map and Map:FindFirstChild("Checkpoints")
                    local iN_1 = iO
                    if iO then
                        iO = iN_1:FindFirstChild("World" .. tostring(aO.World))
                    end
                    local iN_2 = iO
                    if not iN_2 then
                        return
                    end
                    local iO_1 = iN_2:FindFirstChild("Checkpoint" .. tostring(aO.Order))
                    if not iO_1 then
                        local iP_1 = 0
                        for i, child in iN_2:GetChildren() do
                            local iN_3 = tonumber(child.Name:match("^Checkpoint(%d+)$"))
                            if iN_3 and iN_3 > iP_1 and iN_3 < aO.Order then
                                iP_1 = iN_3
                                iO_1 = child
                            end
                        end
                    end
                    local iN_4 = iO_1
                    if iN_4 then
                        local iP_2 = iO_1:FindFirstChild("SpawnPoint") or iO_1:FindFirstChild("Hitbox")
                        iN_4 = iP_2
                    end
                    local iO_2 = iN_4
                    local iN_5 = not iO_2 or not iO_2:IsA("BasePart")
                    local i_ = if iN_5 then 1 else 0
                    local iY = 2752 * i_ + 1648 * (1 - i_)
                    local iZ = 1276 * i_ + 2344 * (1 - i_)
                    if not ((iY * 1426 + iZ * 2667 + iY * iZ) % 16777213 == 10838996) then
                        iN_5 = not gM()
                    end
                    if iN_5 then
                        return
                    end
                    iM = iO_2.Position + Vector3.new(0, 5, 0)
                    pcall(function()
                        g9:RequestStreamAroundAsync(iM)
                    end)
                    local iN_6 = RaycastParams.new()
                    iN_6.FilterType = Enum.RaycastFilterType.Exclude
                    iN_6.FilterDescendantsInstances = { g9.Character }
                    local i2 = 1
                    while i2 <= 60 do
                        local i3 = i2
                        local iO_3 = gM()
                        if not iO_3 then
                            return
                        end
                        iO_3.AssemblyLinearVelocity = Vector3.zero
                        iO_3.AssemblyAngularVelocity = Vector3.zero
                        iO_3.CFrame = CFrame.new(iM)
                        local iO_4 = i3 > 4 and workspace:Raycast(iM, Vector3.new(0, -100, 0), iN_6)
                        if iO_4 then
                            break
                        end
                        task.wait(0.05)
                        i2 += 1
                    end
                end
            end
            hq_5 = (hq_5 + 24) % 40
        end
    elseif hs_4 <= 4 then
        if hq_5 * 64829005 + 12 + 7 <= hq_5 * 64829005 + 12 + 7 + 4 then
            hr_3 = {
                { Name = "Celestial", Model = "TreadmillCelestial" },
                { Name = "Void", Model = "TreadmillVoid" },
                { Name = "Galaxy", Model = "TreadmillGalaxy" },
                { Name = "Diamond", Model = "TreadmillDiamond" },
                { Name = "Golden", Model = "TreadmillGold" },
                { Name = "Reward", Model = "TreadmillPlaytime" },
                { Name = "Basic", Model = "TreadmillBasic" }
            }
        else
            g2 = {
                { Name = "Void", Model = "TreadmillVoid" },
                { Name = "Reward", Model = "TreadmillPlaytime" },
                { Name = "Celestial", Model = "TreadmillCelestial" },
                { Name = "Galaxy", Model = "TreadmillGalaxy" },
                { Name = "Diamond", Model = "TreadmillDiamond" },
                { Name = "Basic", Model = "TreadmillBasic" },
                { Name = "Golden", Model = "TreadmillGold" }
            }
        end
        hq_5 = (hq_5 + 4) % 40
    else
        local hs_5 = (vector.create((hq_5 * 3 + 2) % 11 + 1, (hq_5 * 10 + 8) % 13 + 1, (hq_5 * 4 + 14) % 17 + 1))
        local l9 = vector.floor(hs_5) + vector.ceil(hs_5 * -1)
        if vector.dot(l9, l9) == 0 then
            hu = {}
            g2 = {}
            ht = nil
        else
            ht = {}
            hu = {}
            g2 = nil
        end
        hq_5 = (hq_5 + 9) % 40
    end
until (hq_5 * 17 + 28) % 40 == 22
for k, v in hr_3 do
    local hr_4 = hy.Multis[v.Name] or 1
    local hq_7 = v.Name .. " (x" .. tostring(hr_4) .. " Speed)"
    if hx[v.Name] then
        hq_7 = hq_7 .. " [Robux]"
    end
    table.insert(hu, hq_7)
    g2[hq_7] = v
    local hr_5 = not ht
    if hr_5 ~= false then
        hr_5 = not hx[v.Name]
    end
    if hr_5 then
        ht = hq_7
    end
end
hn, g_ = nil, nil
hn = fn218
g_ = fn317
local Window = hb:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = g0, Copyable = true }, "|", hB },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10,
    Size = UDim2.fromOffset(940, 720)
})
hw = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gamepad-2"),
    Shop = Window:AddTab("Shop", "shopping-cart"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in hw do
    fn474(v)
end
gP, AccountGroup, hx, Label, g3, hs_7 = nil, nil, nil, nil, nil, nil
local hr_6 = 7
repeat
    local hv_4 = (hr_6 * 2 + 2) % 3 + 1
    if hv_4 <= 2 then
        if hv_4 <= 1 then
            local mk = bit32.rrotate(bit32.bxor(bit32.lrotate(hr_6, 12), string.byte(tostring(hx))), 12)
            if bit32.bxor(bit32.lrotate(bit32.bxor(mk, 842339379), 6), 2370112716) ~= bit32.lrotate(mk, 6) then
                g3 = #hs_7 > 18
            else
                hs_7 = #g3 > 18
            end
            hr_6 = (hr_6 + 23) % 24
        else
            local hv_5 = {
                "gork",
                "rovsjonnw",
                "xfrygwkcjz",
                "ugsntmwhzhf",
                "tzyxxcftwyj",
                "hlx",
                "ptzeyvk",
                "fdhpha",
                "vowib",
                "nqnx"
            }
            if hv_5[(hr_6 * 89 + 87) % 10 + 1] < hv_5[(hr_6 * 89 + 87) % 10 + 1] then
                gK = "Unknown"
                pcall(fn384)
                hx = Label.Info:AddLeftGroupbox("Account", "circle-user")
                hx:AddLabel(gT("User", g4.Name, hw), true)
                hx:AddLabel(gT("Status", "Keyless", hw), true)
                hx:AddLabel(gT("Executor", gK, hw), true)
                gP = Label.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                gP:AddLabel(AccountGroup(g9 .. " [" .. tostring(game.PlaceId) .. "]", hB), true)
                gP:AddLabel(gT("Place ID", tostring(game.PlaceId), hB), true)
                hz = gP:AddLabel(gT("Session time", "0s", hD), true)
            else
                gP = "Unknown"
                pcall(fn384)
                AccountGroup = hw.Info:AddLeftGroupbox("Account", "circle-user")
                AccountGroup:AddLabel(gK("User", g9.Name, hz), true)
                AccountGroup:AddLabel(gK("Status", "Keyless", hz), true)
                AccountGroup:AddLabel(gK("Executor", gP, hz), true)
                hx = hw.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                hx:AddLabel(gT(hB .. " [" .. tostring(game.PlaceId) .. "]", hD), true)
                hx:AddLabel(gK("Place ID", tostring(game.PlaceId), hD), true)
                Label = hx:AddLabel(gK("Session time", "0s", g4), true)
            end
            hr_6 = (hr_6 + 11) % 24
        end
    else
        local hv_6 = { "aikrthzbfd", "rturgblo", "zsrvdiq", "yga", "qyuflh", "nlgfcb", "hfmsdagqte", "ndc" }
        if hv_6[(hr_6 * 50 + 101) % 8 + 1] <= hv_6[(hr_6 * 50 + 101) % 8 + 1] then
            g3 = tostring(game.JobId)
        else
            hx = tostring(game.JobId)
        end
        hr_6 = (hr_6 + 2) % 24
    end
until (hr_6 * 5 + 7) % 24 == 6
if hs_7 then
    local hq_9 = 0
    repeat
        local hr_7 = (vector.create((hq_9 * 7 + 9) % 11 + 1, (hq_9 * 4 + 6) % 13 + 1, (hq_9 * 12 + 8) % 17 + 1))
        local hv_7 = (vector.create((hq_9 * 2 + 6) % 11 + 1, (hq_9 * 11 + 10) % 13 + 1, (hq_9 * 9 + 1) % 17 + 1))
        local lJ = vector.cross(hr_7, hv_7)
        local lK = vector.dot(hr_7, hv_7)
        if vector.dot(lJ, lJ) + lK * lK == vector.dot(hr_7, hr_7) * vector.dot(hv_7, hv_7) + 1 then
            g3 = string.sub(hs_7, 1, 18) .. "..."
        else
            hs_7 = string.sub(g3, 1, 18) .. "..."
        end
        hq_9 = (hq_9 + 7) % 8
    until (hq_9 * 3 + 7) % 8 == 4
end
local hq_10 = hs_7 or g3
gI, hz, gR, gN, connection, connection2, hc = nil, nil, nil, nil, nil, nil, nil
hy = hq_10
hx:AddLabel(gK("Server", hy, hA_1), true)
hx:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
gI = os.clock()
task.spawn(worker)
hH = hw.Info:AddRightGroupbox("Scripts", "package")
hH:AddLabel(gT("Included in this hub", hA_1), true)
hH:AddLabel(gT(hB, hD), true)
local FeaturesGroup = hw.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(gT("Auto Win", hD), true)
FeaturesGroup:AddLabel(gT("Auto Treadmill", hD), true)
FeaturesGroup:AddLabel(gT("Auto Rebirth", g4), true)
FeaturesGroup:AddLabel(gT("Auto Buy and Equip Speed Upgrades", hD), true)
FeaturesGroup:AddLabel(gT("Auto Buy Items, Trails and Auras", g4), true)
FeaturesGroup:AddLabel(gT("Auto Equip Best Item", hA_1), true)
local SocialsGroup = hw.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = gW })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = hw.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = gW })
local FaqGroup = hw.Info:AddRightGroupbox("FAQ", "circle-help")
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
local AutoWinGroup = hw.Main:AddLeftGroupbox("Auto Win", "trophy")
AutoWinGroup:AddLabel("Game doesn't let you get the best possible win, it has speed checks, get high speed and you'll be able to get better wins.", true)
AutoWinGroup:AddToggle("AutoWin", { Text = "Auto Win", Default = false })
AutoWinGroup:AddDropdown("WinPlate", { Text = "Win Plate", Values = hF, Default = hF[1] })
AutoWinGroup:AddSlider("WinDelay", { Text = "Win Delay", Default = 2, Min = 0.5, Max = 10, Rounding = 1 })
local AutoTreadmillGroup = hw.Main:AddLeftGroupbox("Auto Treadmill", "footprints")
AutoTreadmillGroup:AddToggle("AutoTreadmill", { Text = "Auto Treadmill", Default = false })
AutoTreadmillGroup:AddDropdown("Treadmill", { Text = "Treadmill", Values = hu, Default = ht })
local AutoRebirthGroup = hw.Main:AddRightGroupbox("Auto Rebirth", "rotate-ccw")
AutoRebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
hL = hw.Main:AddRightGroupbox("Auto Buy Speed Upgrades", "arrow-up-circle")
hL:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Speed Upgrades", Default = false })
hL:AddToggle("AutoEquipBestUpgrade", { Text = "Auto Equip Best Speed Upgrade", Default = false })
hK = hw.Shop:AddLeftGroupbox("Auto Buy Items", "gem")
hK:AddToggle("AutoBuyItems", { Text = "Auto Buy Items", Default = false })
hK:AddToggle("AutoEquipBestItem", { Text = "Auto Equip Best Item", Default = false })
local AutoBuyTrailsGroup = hw.Shop:AddRightGroupbox("Auto Buy Trails", "wind")
if ((not AutoTreadmillGroup and AutoTreadmillGroup or hH and AutoTreadmillGroup) and (not AutoTreadmillGroup or hH or (AutoTreadmillGroup or hH)) or (not hH or not hH) and (not hH or AutoTreadmillGroup) and (hH and hH and (not AutoTreadmillGroup or hH))) and not ((not AutoTreadmillGroup and AutoTreadmillGroup or hH and AutoTreadmillGroup) and (not AutoTreadmillGroup or hH or (AutoTreadmillGroup or hH)) or (not hH or not hH) and (not hH or AutoTreadmillGroup) and (hH and hH and (not AutoTreadmillGroup or hH))) then
    hz:AddToggle("AutoBuyTrails", { Text = "Auto Buy Trails", Default = false })
    hw = AutoBuyTrailsGroup.Shop:AddRightGroupbox("Auto Buy Auras", "sparkles")
else
    AutoBuyTrailsGroup:AddToggle("AutoBuyTrails", { Text = "Auto Buy Trails", Default = false })
    hz = hw.Shop:AddRightGroupbox("Auto Buy Auras", "sparkles")
end
hz:AddToggle("AutoBuyAuras", { Text = "Auto Buy Auras", Default = false })
local MenuGroup = hw.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
hb.ToggleKeybind = gY.MenuKeybind
gR = tick()
gN = tick()
pcall(function()
    for i, v in ipairs(getconnections(g9.Idled)) do
        local jT = v
        pcall(function()
            jT:Disable()
        end)
    end
end)
hc = fn287
connection = hG.InputBegan:Connect(onInputBegan)
connection2 = hG.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
hE:SetLibrary(hb)
hE:SetFolder("OuroborosHub")
hE:SaveDefault("Monochrome")
hC:SetLibrary(hb)
hC:IgnoreThemeSettings()
hC:SetIgnoreIndexes({ "MenuKeybind" })
hC:SetFolder("OuroborosHub/SpeedMonkeyEscape")
hC:BuildConfigSection(hw.Settings)
hE:ApplyToTab(hw.Settings)
hE:LoadDefault()
hC:LoadAutoloadConfig()
hb:OnUnload(fn584)
task.spawn(antiAfkLoop)
task.spawn(autoWinLoop)
task.spawn(autoTreadmillLoop)
task.spawn(autoRebirthLoop)
task.spawn(autoBuyUpgradesLoop)
task.spawn(autoEquipBestUpgradeLoop)
task.spawn(autoBuyItemsLoop)
task.spawn(autoEquipBestItemLoop)
task.spawn(autoBuyTrailsLoop)
task.spawn(autoBuyAurasLoop)
