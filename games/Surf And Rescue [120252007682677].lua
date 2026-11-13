local fns = {}
local Kw_2, Kw_4, Kw_12, Kw_14, Kw_16, Kw_18, Kw_23, Kw_24, Kw_26, Kw_27
local xc
local xU
local wU
local xB
local yi
local connection7
local x_
local Economy
local x5
local w5
local xN
local wN
local xu
local connection11
local Options
local wT
local xA
local connection2
local xh
local connection4
local connection9
local yn
local xn
local w4
local wM
local Library
local yt
local ya
local connection8
local xS
local wS
local xz
local yg
local wY
local ym
local xm
local w3
local ys
local wL
local xs
local connection3
local w9
local wR
local xy
local Toggles
local xX
local connection5
local yl
local xl
local x2
local w2
local yr
local wK
local x8
local connection6
local w8
local xQ
local wQ
local xx
local connection10
local ye
local xe
local connection12
local wW
local xD
local yk
local w1
local xJ
local wJ
local xq
local x7
local yq
local w7
local xP
local yw
local xw
local yd
local wP
local xV
local wV
local yj
local xj
local w0
local xI
local xp
local x6
local w6
local xO
local yv
local wO
function fns.fn9(bu)
    if not bu then
        return nil
    end
    local attr2 = bu:GetAttribute("Rarity")
    local attr = bu:GetAttribute("Size")
    local Ak = bu:GetAttribute("Mutation") or "None"
    return {
        Rarity = attr2,
        Size = attr,
        Mutation = Ak,
        Species = bu:GetAttribute("Species"),
        Weight = bu:GetAttribute("Weight"),
        Wild = bu:GetAttribute("Wild"),
        Dirty = bu:GetAttribute("Dirty"),
        InTank = bu:GetAttribute("InTank"),
        Far = bu:GetAttribute("Far")
    }
end
function fns.onOnClientEvent4(fQ, fR)
    xu.Cleaning = true
    xu.CleanDirt = fR
end
function fns.fn33()
    local Plots = wV:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    for i, child in ipairs(Plots:GetChildren()) do
        local TankSign = child:FindFirstChild("TankSign")
        local An = TankSign and TankSign:GetAttribute("OwnerId") == yr.UserId
        if An then
            return child
        end
    end
    return nil
end
function fns.fn52()
    local EJ = tonumber(yr:GetAttribute("HoseLevel")) or 1
    local EJ_1 = Economy.hoseUpgradeCost(EJ + 1)
    local EK_1 = type(EJ_1) == "number" and EJ_1 > 0 and wK() >= EJ_1
    if EK_1 then
        pcall(function()
            xA.HoseUpgrade:FireServer()
        end)
    end
end
function fns.fn77()
    for k, v in pairs(xu.Esp.Entries) do
        if v.Gui then
            v.Gui:Destroy()
        end
        if v.Highlight then
            v.Highlight:Destroy()
        end
    end
    table.clear(xu.Esp.Entries)
    if xu.Esp.Folder then
        xu.Esp.Folder:Destroy()
        xu.Esp.Folder = nil
    end
end
function fns.fn90()
    local Dv_1
    local Du_1
    local Dt_1
    local Ds = x7()
    if not Ds then
        return nil, nil
    end
    Du_1, Dt_1, Dv_1 = nil, nil, nil
    for i, v in ipairs(wS:GetTagged(yk.LiveAnimal)) do
        local Dw = v:IsA("Model") and v.Parent
        if Dw then
            local Dw_1 = ya(v)
            if x8(Dw_1, xu.Grab) then
                local Dw_2 = wO(v, "Grab")
                local Dx = v:FindFirstChild("RootPart") or v.PrimaryPart
                local Dy = Dw_2
                if Dy then
                    Dy = Dx
                end
                if Dy then
                    Dy = Dx:IsA("BasePart")
                end
                if Dy then
                    local Magnitude = (Dx.Position - Ds.Position).Magnitude
                    if not Dt_1 or Magnitude < Dt_1 then
                        Du_1 = v
                        Dt_1 = Magnitude
                        Dv_1 = Dw_2
                    end
                end
            end
        end
    end
    return Du_1, Dv_1
end
function fns.onOnClientEvent2()
    xu.Grabbing = true
end
function fns.onOnClientEvent7()
    xu.BagFullPulse = os.clock()
end
function fns.onOnClientEvent9(f2, f3)
    if type(f2) == "table" then
        xu.TankAnimals = f2
    end
    if f3 ~= nil then
        local Dk = (tonumber(f3))
        local Do = if Dk then 1 else 0
        local Dm = 1181 * Do + 946 * (1 - Do)
        local Dn = 3583 * Do + 1626 * (1 - Do)
        if not ((Dm * 3712 + Dn * 1321 + Dm * Dn) % 16777213 == 13348538) then
            Dk = xu.TankCap
        end
        xu.TankCap = Dk
    end
end
function fns.fn198()
    local zz = yg()
    local zA = zz and zz:FindFirstChild("HumanoidRootPart")
    return zA
end
function fns.fn204(kJ)
    local Esp = xu.Esp
    local Gu = kJ and true or false
    Esp.Enabled = Gu
    if xu.Esp.Conn then
        xu.Esp.Conn:Disconnect()
        xu.Esp.Conn = nil
    end
    if not xu.Esp.Enabled then
        wN()
        return
    end
    xu.Esp.Conn = wJ.RunService.RenderStepped:Connect(function()
        local Gp = w3() and xu.Esp.Enabled
        if Gp then
            w8()
        end
    end)
    xy.Track(function()
        if xu.Esp.Conn then
            xu.Esp.Conn:Disconnect()
            xu.Esp.Conn = nil
        end
        wN()
    end)
end
function fns.fn232(lh)
    return (tostring(lh):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
end
function fns.fn251(lD, lE, lF)
    return string.format("<b>%s</b> %s %s", lD, wT("-", "#5a6070"), wT(lE, lF))
end
function fns.fn270()
    local EM = x_()
    local EN = EM and EM:FindFirstChild("Pool")
    if not EN then
        return
    end
    local EN_1 = tonumber(EN:GetAttribute("PoolLevel")) or 1
    local EN_2 = Economy.poolUpgradeCost(EN_1 + 1)
    local EM_3 = type(EN_2) == "number" and EN_2 > 0 and wK() >= EN_2
    if EM_3 then
        pcall(function()
            xA.PoolUpgrade:FireServer()
        end)
    end
end
function fns.fn279()
    if not xu.Esp.Enabled then
        return
    end
    local E4 = x7()
    local E5 = {}
    local Esp = xu.Esp
    for i, v in ipairs(wS:GetTagged(yk.LiveAnimal)) do
        local E7 = v:IsA("Model") and v.Parent
        if E7 then
            local E7_1 = ya(v)
            if x8(E7_1, Esp) then
                local E8 = v:FindFirstChild("RootPart") or v.PrimaryPart
                local E9 = E8
                if E8 then
                    E8 = E9:IsA("BasePart")
                end
                if E8 then
                    E5[v] = true
                    local E8_1 = xu.Esp.Entries[v]
                    if not E8_1 or not E8_1.Gui.Parent then
                        E8_1 = xS(v, E9)
                        xu.Esp.Entries[v] = E8_1
                    end
                    local Fa_1 = E7_1.Rarity or "Common"
                    local Fb = tostring(Fa_1)
                    local Fa_2 = ym[Fb] or Color3.new(1, 1, 1)
                    local Fc = E4
                    if Fc then
                        Fc = math.floor((E9.Position - E4.Position).Magnitude)
                    end
                    local E9_1 = Fc or 0
                    local E9_2 = E7_1.Species or v.Name
                    local Fc_1 = tostring(E9_2)
                    local Fe = yt.Animals[Fc_1] and yt.Animals[Fc_1].DisplayName or Fc_1
                    E8_1.Label.TextColor3 = Fa_2
                    E8_1.Highlight.FillColor = Fa_2
                    E8_1.Highlight.OutlineColor = Fa_2
                    local Label = E8_1.Label
                    local format = string.format
                    local Fe_1 = tostring(Fe)
                    local Ff = E7_1.Size or "?"
                    local Fg = tostring(Ff)
                    local Fh = E7_1.Mutation or "None"
                    local Fi = tostring(Fh)
                    local Fj = tonumber(E7_1.Weight) or 0
                    Label.Text = format("%s\n%s | %s | %s\n%.1f kg | %d studs", Fe_1, Fb, Fg, Fi, Fj, E9_1)
                end
            end
        end
    end
    for k, v in pairs(xu.Esp.Entries) do
        if not E5[k] then
            v.Gui:Destroy()
            v.Highlight:Destroy()
            xu.Esp.Entries[k] = nil
        end
    end
end
function fns.onOnClientEvent11(gc)
    if type(gc) == "table" then
        xu.Pets = gc
    end
end
function fns.fn305()
    return yr.Character
end
function fns.fn321(kx)
    local UpgradeTank = xu.UpgradeTank
    local Gg = kx and true or false
    UpgradeTank.Enabled = Gg
    if xu.UpgradeTank.Enabled then
        yv(xu.UpgradeTank, "UpgradeTank", function()
            return xu.UpgradeTank.Interval
        end, function()
            xJ()
        end)
    end
end
function fns.fn340()
    xu.Grab.Enabled = false
    xu.Clean.Enabled = false
    xu.Quests.Enabled = false
    xu.Pool.Enabled = false
    xu.TankFish.Enabled = false
    xu.UpgradeHose.Enabled = false
    xu.UpgradePool.Enabled = false
    xu.UpgradeTank.Enabled = false
    xu.Sell.Enabled = false
    xy.SetEsp(false)
    xj()
end
function fns.fn363(kk)
    local UpgradeHose = xu.UpgradeHose
    local F2 = kk and true or false
    UpgradeHose.Enabled = F2
    if xu.UpgradeHose.Enabled then
        yv(xu.UpgradeHose, "UpgradeHose", function()
            return xu.UpgradeHose.Interval
        end, function()
            xn()
        end)
    end
end
function fns.fn364()
    ys(w4.Visuals)
    local FishEspGroup = w4.Visuals:AddLeftGroupbox("Fish ESP", "eye")
    FishEspGroup:AddToggle("FishEsp", { Text = "ESP Fish / Weight", Default = false })
    FishEspGroup:AddToggle("EspOnlyWild", { Text = "Only Wild", Default = false })
    FishEspGroup:AddToggle("EspOnlyDirty", { Text = "Only Dirty", Default = false })
    yq(FishEspGroup, "Esp", {
        Rarities = table.clone(xp),
        Sizes = table.clone(xl),
        Mutations = table.clone(xh),
        MinWeight = 0,
        MaxWeight = 500000
    })
    xx("Esp", xu.Esp)
    Toggles.EspOnlyWild:OnChanged(function(p8)
        local Esp = xu.Esp
        local IZ = p8 and true
        local I2 = if IZ then 1 else 0
        local I0 = 18 * I2 + 2038 * (1 - I2)
        local I1 = 1469 * I2 + 1115 * (1 - I2)
        if not ((I0 * 3404 + I1 * 540 + I0 * I1) % 16777213 == 880974) then
            IZ = false
        end
        Esp.OnlyWild = IZ
    end)
    Toggles.EspOnlyDirty:OnChanged(function(qa)
        local Esp = xu.Esp
        local I5 = qa and true or false
        Esp.OnlyDirty = I5
    end)
    xu.Esp.OnlyWild = Toggles.EspOnlyWild.Value
    xu.Esp.OnlyDirty = Toggles.EspOnlyDirty.Value
    Toggles.FishEsp:OnChanged(function(qc)
        xy.SetEsp(qc)
    end)
end
function fns.fn366()
    return wM(), xN()
end
function fns.onOnClientEvent6()
    xu.Cleaning = false
    xu.CleanDirt = nil
end
function fns.fn434(bS)
    local AJ = x7()
    if not AJ then
        return false
    end
    AJ.AssemblyLinearVelocity = Vector3.zero
    AJ.AssemblyAngularVelocity = Vector3.zero
    AJ.CFrame = bS
    return true
end
function fns.fn452()
    local B__1
    local BY = (tonumber(yr:GetAttribute("BackpackLevel")))
    local BY_1
    local B3 = if BY then 1 else 0
    local B1 = 2048 * B3 + 38 * (1 - B3)
    local B2 = 117 * B3 + 1638 * (1 - B3)
    if not ((B1 * 1239 + B2 * 3371 + B1 * B2) % 16777213 == 3171495) then
        BY = 1
    end
    local BZ = BY
    BY_1, B__1 = pcall(yt.Backpacks.slotsAt, BZ)
    local BZ_1 = BY_1 and type(B__1) == "number"
    if BZ_1 then
        return B__1
    end
    return 1
end
function fns.fn457(bW)
    local AO_1
    local AL = RaycastParams.new()
    AL.FilterType = Enum.RaycastFilterType.Exclude
    local AM = {}
    local AN = yg()
    if AN then
        table.insert(AM, AN)
    end
    local LiveAnimals = wV:FindFirstChild("LiveAnimals")
    if LiveAnimals then
        table.insert(AM, LiveAnimals)
    end
    AL.FilterDescendantsInstances = AM
    local AM_1 = math.max(bW.Y, x2) + 120
    local AN_2 = Vector3.new(bW.X, AM_1, bW.Z)
    local AM_2 = wV:Raycast(AN_2, Vector3.new(0, -300, 0), AL)
    if AM_2 then
        AO_1 = AM_2.Position.Y + 5
    else
        AO_1 = math.max(x2 + 6, bW.Y + 8)
    end
    local AO_2 = math.max(AO_1, x2 + 5)
    return CFrame.new(bW.X, AO_2, bW.Z)
end
function fns.fn477()
    connection2:Disconnect()
    connection3:Disconnect()
    connection4:Disconnect()
    connection5:Disconnect()
    connection6:Disconnect()
    connection7:Disconnect()
    connection8:Disconnect()
    connection9:Disconnect()
    connection10:Disconnect()
    connection11:Disconnect()
    connection12:Disconnect()
end
function fns.fn496(az, aA)
    return az.Label < aA.Label
end
function fns.fn522(ot, ou, ov)
    local Ik = ou .. "Rarity"
    local Il = ov.Rarities or table.clone(xp)
    ot:AddDropdown(Ik, { Text = "Rarity", Values = xp, Default = Il, Multi = true, AllowNull = true })
    local Ik_1 = ou .. "Species"
    local Im = ov.Species or {}
    ot:AddDropdown(Ik_1, { Text = "Species", Values = w9, Default = Im, Multi = true, AllowNull = true })
    local Ik_2 = ou .. "Size"
    local Il_2 = ov.Sizes or table.clone(xl)
    ot:AddDropdown(Ik_2, { Text = "Size", Values = xl, Default = Il_2, Multi = true, AllowNull = true })
    local Ik_3 = ou .. "Mutation"
    local Il_3 = ov.Mutations
    local Iq = if Il_3 then 1 else 0
    local Io = 353 * Iq + 3812 * (1 - Iq)
    local Ip = 2524 * Iq + 3696 * (1 - Iq)
    if not ((Io * 124 + Ip * 1147 + Io * Ip) % 16777213 == 3829772) then
        Il_3 = table.clone(xh)
    end
    ot:AddDropdown(Ik_3, { Text = "Mutation", Values = xh, Default = Il_3, Multi = true, AllowNull = true })
    local Ik_4 = ou .. "MinWeight"
    local Il_4 = ov.MinWeight or 0
    ot:AddSlider(Ik_4, { Text = "Min Weight", Default = Il_4, Min = 0, Max = 500000, Rounding = 1 })
    local Ik_5 = ou .. "MaxWeight"
    local Il_5 = ov.MaxWeight or 500000
    ot:AddSlider(Ik_5, { Text = "Max Weight", Default = Il_5, Min = 0, Max = 500000, Rounding = 1 })
end
function fns.fn534(eV, eW)
    if type(eV) ~= "table" then
        return false
    elseif eW.Mode == "Sell All" then
        return true
    else
        local CO = eV.Info
        if type(CO) ~= "table" then
            CO = eV
        end
        local CP = w0(CO, eW)
        if eW.Mode == "Keep Matching" then
            return not CP
        end
        return CP
    end
end
function fns.fn543()
    pcall(function()
        xA.PoolLeave:FireServer()
    end)
end
function fns.fn548()
    local AQ = x7()
    if not AQ then
        return false
    elseif AQ.Position.Y >= x2 - 1 then
        return false
    else
        local AR = x_()
        local AS = AR and AR:FindFirstChild("Spawn")
        local AR_1 = AS
        if AS then
            AS = AR_1:IsA("BasePart")
        end
        if AS then
            x5(AR_1.CFrame * CFrame.new(0, 5, 0))
        else
            x5(xI(AQ.Position))
        end
        return true
    end
end
function fns.fn613()
    local D3_1
    local D2 = xu.Busy or xu.Grabbing or xu.Cleaning
    local D2_2
    if D2 then
        return
    end
    if w1() then
        return
    end
    local D2_1 = xu.BagFullPulse and os.clock() - xu.BagFullPulse < 2
    if D2_1 then
        return
    end
    wQ()
    D2_2, D3_1 = wW()
    if not D2_2 or not D3_1 then
        return
    end
    local D4_1 = D2_2:FindFirstChild("RootPart") or D2_2.PrimaryPart
    if not D4_1 then
        return
    end
    xu.Busy = true
    xj()
    xO()
    x5(xI(D4_1.Position))
    task.wait(0.2)
    if wQ() then
        task.wait(0.15)
        x5(xI(D4_1.Position))
        task.wait(0.15)
    end
    local D4_2 = not w3()
    local D9 = if D4_2 then 1 else 0
    local D7 = 3883 * D9 + 1185 * (1 - D9)
    local D8 = 3266 * D9 + 1610 * (1 - D9)
    if not ((D7 * 1844 + D8 * 1012 + D7 * D8) % 16777213 == 6370109) then
        D4_2 = not xu.Grab.Enabled
    end
    if D4_2 then
        xu.Busy = false
        return
    end
    w6(D3_1)
    local D3_2 = os.clock()
    while true do
        local D4_3 = w3() and xu.Grab.Enabled and not xu.Grabbing and os.clock() - D3_2 < 4
        if D4_3 then
            if wQ() then
                x5(xI(D4_1.Position))
            end
            task.wait(0.1)
            continue
        end
        break
    end
    if xu.Grabbing then
        yj(45)
    else
        local D2_4 = w3() and xu.Grab.Enabled
        if D2_4 then
            wQ()
        end
    end
    xu.Busy = false
end
function fns.fn617()
    return not xy.Unloaded
end
function fns.fn641(ld)
    local DiscordGroup = ld:AddLeftGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = xP,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    return DiscordGroup
end
function fns.fn642(cs)
    local AY = xQ(cs) and not xz(cs)
    return AY
end
function fns.fn656()
    return wJ.CoreGui
end
function fns.fn664(kq)
    local UpgradePool = xu.UpgradePool
    local F9 = kq and true or false
    UpgradePool.Enabled = F9
    if xu.UpgradePool.Enabled then
        yv(xu.UpgradePool, "UpgradePool", function()
            return xu.UpgradePool.Interval
        end, function()
            wR()
        end)
    end
end
local function fn668(a5, a6)
    local z7_1
    local z6_1
    local z5_1
    local z4_1
    local z3_1
    local z2_1
    local z1_1
    local z0_1
    if type(a5) ~= "table" then
        return false
    end
    z1_1, z0_1 = xq(a6.Rarities)
    z3_1, z2_1 = xq(a6.Sizes)
    z5_1, z4_1 = xq(a6.Mutations)
    z7_1, z6_1 = wY(a6.Species)
    local z8 = a5.Rarity or ""
    local z9 = tostring(z8)
    local z8_1 = a5.Size
    local Ah = if z8_1 then 1 else 0
    local Af = 3431 * Ah + 363 * (1 - Ah)
    local Ag = 1327 * Ah + 3935 * (1 - Ah)
    if not ((Af * 305 + Ag * 1952 + Af * Ag) % 16777213 == 8189696) then
        z8_1 = ""
    end
    local Aa = tostring(z8_1)
    local z8_2 = a5.Mutation or "None"
    local Ab = tostring(z8_2)
    local z8_3 = a5.Species or ""
    local Ac = tostring(z8_3)
    local z8_4 = tonumber(a5.Weight) or 0
    if z0_1 > 0 and not z1_1[z9] then
        return false
    end
    if z2_1 > 0 and not z3_1[Aa] then
        return false
    end
    if z4_1 > 0 and not z5_1[Ab] then
        return false
    end
    if z6_1 > 0 and not z7_1[Ac] then
        return false
    end
    local z1_2 = z8_4 < (a6.MinWeight or 0)
    if not z1_2 then
        z1_2 = z8_4 > (a6.MaxWeight or 1000000000000)
    end
    if z1_2 then
        return false
    end
    if a6.OnlyWild and a5.Wild ~= true then
        return false
    end
    if a6.OnlyDirty and a5.Dirty ~= true then
        return false
    end
    return true
end
local function fn684(j1)
    local Quests = xu.Quests
    local FN = j1 and true
    local FR = if FN then 1 else 0
    local FP = 2381 * FR + 2670 * (1 - FR)
    local FQ = 3726 * FR + 442 * (1 - FR)
    if not ((FP * 3004 + FQ * 2597 + FP * FQ) % 16777213 == 8923339) then
        FN = false
    end
    Quests.Enabled = FN
    if xu.Quests.Enabled then
        yv(xu.Quests, "AutoQuests", function()
            return xu.Quests.Interval
        end, function()
            yi()
        end)
    end
end
local function fn717(co)
    local AW = xQ(co) and string.sub(co.Name, 1, 3) == "???"
    return AW
end
local function fn727()
    local d1, d2 = xe()
    return d1 >= d2
end
local function fn754(jQ)
    local Grab = xu.Grab
    local FC = jQ and true or false
    Grab.Enabled = FC
    if xu.Grab.Enabled then
        yv(xu.Grab, "AutoGrab", function()
            return xu.Grab.Interval
        end, function()
            xD()
        end)
    end
end
local function onOnClientEvent()
    xu.Grabbing = true
end
local function fn761(cQ)
    local Bj_1
    local Bi_2
    local Bh_2
    if not xQ(cQ) then
        return nil
    end
    local Name = cQ.Name
    if xz(cQ) then
        local Bh_1 = string.match(Name, "^%?%?%?%s+(.+)$") or "Common"
        return { Dirty = true, Rarity = Bh_1, Species = nil, Size = nil, Weight = 0, Mutation = "None" }
    end
    Bj_1, Bh_2, Bi_2 = string.match(Name, "^(%S+)%s+(.+)%s+([%d%.]+)%s*[kK][gG]$")
    if not Bj_1 then
        return { Dirty = false, Rarity = nil, Species = nil, Size = nil, Weight = 0, Mutation = "None" }
    end
    local Bg_1 = xB[Bh_2]
    if not Bg_1 then
        local Bk_1 = string.gsub(Bh_2, "%s+", "")
        Bg_1 = xB[Bk_1]
    end
    local Bh_3 = tonumber(Bi_2) or 0
    local Bi_3 = Bg_1
    local Bk_2 = { Dirty = false, Size = Bj_1, Species = Bg_1, Weight = Bh_3, Mutation = "None" }
    if Bi_3 then
        Bi_3 = yt.Animals[Bg_1]
    end
    if Bi_3 then
        Bk_2.Rarity = yt.Animals[Bg_1].Rarity
    end
    return Bk_2
end
local function fn762(ej)
    local Ce = ej and ej:FindFirstChild("StationAnchor")
    if not Ce then
        return nil
    end
    local PromptSpot = Ce:FindFirstChild("PromptSpot")
    local Cg = PromptSpot and PromptSpot:IsA("Attachment")
    if Cg then
        return CFrame.new(PromptSpot.WorldPosition + Vector3.new(0, 3, 0))
    end
    return Ce.CFrame * CFrame.new(0, 3, 0)
end
local function fn776(ke)
    local TankFish = xu.TankFish
    local FZ = ke and true or false
    TankFish.Enabled = FZ
    if xu.TankFish.Enabled then
        yv(xu.TankFish, "AutoTankFish", function()
            return xu.TankFish.Interval
        end, function()
            xV()
        end)
    end
end
local function fn786(U)
    return type(U) == "function"
end
local function fn806(gV)
    local DZ = os.clock()
    local D0 = DZ + (gV or 45)
    local DZ_1 = 1 / math.max(xu.Grab.TapsPerSecond, 1)
    while true do
        local D__1 = w3() and xu.Grab.Enabled and xu.Grabbing and os.clock() < D0
        if D__1 then
            pcall(function()
                xA.GrabTap:FireServer()
            end)
            task.wait(DZ_1)
            continue
        end
        break
    end
end
local function fn814(lz, lA)
    return string.format('<font color="%s">%s</font>', lA, yd(lz))
end
local function fn856()
    xA.QuestHello:FireServer()
end
local function fn901()
    local Ek = xu.Busy
    local Et = if Ek then 1 else 0
    local Er = 2282 * Et + 3671 * (1 - Et)
    local Es = 334 * Et + 170 * (1 - Et)
    if not ((Er * 1144 + Es * 2707 + Er * Es) % 16777213 == 4276934) then
        Ek = xu.Grabbing
    end
    if not Ek then
        Ek = xu.Cleaning
    end
    if Ek then
        return
    end
    local Ek_1 = xu.Clean.Enabled and yw()
    if Ek_1 then
        return
    end
    local Ek_2 = xw()
    if not Ek_2 then
        return
    end
    local El = x_()
    if not El then
        return
    end
    local PlotAnchor = El:FindFirstChild("PlotAnchor")
    local En = wO(PlotAnchor, "Add to tank")
    local Eo = w2(El)
    if not PlotAnchor or not En or not Eo then
        return
    end
    xu.Busy = true
    xj()
    x5(Eo)
    local El_3 = os.clock() + 4
    while true do
        local Em_2 = w3() and xu.TankFish.Enabled and os.clock() < El_3
        if Em_2 then
            local Em_3 = xu.Clean.Enabled and yw()
            if Em_3 then
                break
            end
            local Ek_3 = xw()
            if not Ek_3 then
                break
            end
            wP(Ek_3)
            local Em_4 = os.clock() + 0.45
            while true do
                local Eo_1 = w3() and xu.TankFish.Enabled and not En.Enabled and os.clock() < Em_4
                if Eo_1 then
                    task.wait(0.02)
                    continue
                end
                break
            end
            local Em_5 = not w3() or not xu.TankFish.Enabled
            if Em_5 then
                break
            end
            w6(En)
            local Em_6 = os.clock() + 0.55
            while true do
                local Eo_2 = w3() and xu.TankFish.Enabled and Ek_3.Parent and os.clock() < Em_6
                if Eo_2 then
                    task.wait(0.02)
                    continue
                end
                break
            end
            continue
        end
        break
    end
    xu.Busy = false
end
local function fn902(R)
    local zx = typeof(cloneref) == "function" and typeof(R) == "Instance"
    if zx then
        return cloneref(R)
    end
    return R
end
local function fn915(jW)
    local Clean = xu.Clean
    local FJ = jW and true or false
    Clean.Enabled = FJ
    if xu.Clean.Enabled then
        yv(xu.Clean, "AutoClean", function()
            return xu.Clean.Interval
        end, function()
            xU()
        end)
    end
end
local function fn920()
    ys(w4.Player)
    local MovementGroup = w4.Player:AddLeftGroupbox("Movement", "person-standing")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "Noclip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = w4.Player:AddRightGroupbox("Fly", "plane")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    Toggles.WalkSpeedEnabled:OnChanged(function(ql)
        xy.SetWalkSpeedEnabled(ql)
    end)
    Options.WalkSpeed:OnChanged(function(qp)
        xy.SetWalkSpeedValue(qp)
    end)
    Toggles.InfJump:OnChanged(function(qr)
        xy.SetInfJump(qr)
    end)
    Toggles.NoClip:OnChanged(function(qt)
        xy.SetNoClip(qt)
    end)
    Toggles.InstantProximityPrompt:OnChanged(function(qv)
        xy.SetInstantProximityPrompt(qv)
    end)
    Toggles.Fly:OnChanged(function(qx)
        xy.SetFly(qx)
    end)
    Options.FlySpeed:OnChanged(function(qz)
        xy.SetFlySpeed(qz)
    end)
end
local function fn937(cl)
    local AU = cl and cl:IsA("Tool") and cl.Name ~= "WornShovel" and not string.find(cl.Name, "Board", 1, true)
    return AU
end
local function fn1050(eP, eQ)
    if type(eP) ~= "table" then
        return false
    end
    local CK = Economy.rarityOf(eP) or eP.Rarity
    local Size = eP.Size
    local CM = eP.Mutation or "None"
    return x8({
        Rarity = CK,
        Size = Size,
        Mutation = CM,
        Species = eP.Species,
        Weight = eP.Weight,
        Wild = true,
        Dirty = false
    }, {
        Rarities = eQ.Rarities,
        Species = eQ.Species,
        Sizes = eQ.Sizes,
        Mutations = eQ.Mutations,
        MinWeight = eQ.MinWeight,
        MaxWeight = eQ.MaxWeight,
        OnlyWild = false,
        OnlyDirty = false
    })
end
local function fn1072()
    local Npcs = wV:FindFirstChild("Npcs")
    if not Npcs then
        return nil
    end
    local Maui = Npcs:FindFirstChild("Maui")
    if not Maui then
        return nil
    end
    return wO(Maui, "Open")
end
local function fn1091(ep)
    local Cl = ep and ep:FindFirstChild("PlotAnchor")
    if not Cl then
        return nil
    end
    local PromptSpot = Cl:FindFirstChild("PromptSpot")
    local Cn = PromptSpot and PromptSpot:IsA("Attachment")
    if Cn then
        return CFrame.new(PromptSpot.WorldPosition + Vector3.new(0, 3, 0))
    end
    return Cl.CFrame * CFrame.new(0, 3, 0)
end
local function onOnClientEvent8(f_)
    xu.QuestState = f_
end
local function fn1097(bK, bL)
    if not bK then
        return nil
    end
    for i, descendant in ipairs(bK:GetDescendants()) do
        local AA = descendant:IsA("ProximityPrompt") and (not bL or descendant.ActionText == bL)
        if AA then
            return descendant
        end
    end
    return nil
end
local function onOnClientEvent5()
    xu.Cleaning = false
    xu.CleanDirt = nil
end
local function fn1132(k7, k8)
    local Gz = false
    if xc(setclipboard) then
        Gz = pcall(setclipboard, k7)
    elseif xc(toclipboard) then
        Gz = pcall(toclipboard, k7)
    end
    if Gz and k8 then
        Library:Notify(k8, 3)
    elseif not Gz then
        Library:Notify("Clipboard unavailable", 3)
    end
    return Gz
end
local function fn1140()
    local ES = x_()
    local ET = ES and ES:FindFirstChild("Tank")
    if not ET then
        return
    end
    local ET_1 = tonumber(ET:GetAttribute("TankLevel")) or 1
    local ET_2 = Economy.upgradeCost(ET_1 + 1)
    local ES_3 = type(ET_2) == "number" and ET_2 > 0 and wK() >= ET_2
    if ES_3 then
        pcall(function()
            xA.TankUpgrade:FireServer()
        end)
    end
end
local function fn1161()
    return wJ.CoreGui
end
local function fn1163(lj)
    local GF = tostring(lj)
    local GG = Color3.fromRGB(255, 105, 180)
    local GH = Color3.fromRGB(255, 182, 193)
    local GI = {}
    local GJ = utf8.len(GF) or #GF
    local GK = 1
    for k, v in utf8.codes(GF) do
        local GF_1 = (GK - 1) / math.max(GJ - 1, 1)
        local GJ_1 = GG:Lerp(GH, GF_1)
        local GF_2 = string.format("#%02x%02x%02x", math.floor(GJ_1.R * 255 + 0.5), math.floor(GJ_1.G * 255 + 0.5), math.floor(GJ_1.B * 255 + 0.5))
        local GJ_2 = utf8.char(v)
        GI[GK] = string.format('<font color="%s">%s</font>', GF_2, yd(GJ_2))
        GK += 1
    end
    return table.concat(GI)
end
local function fn1176(al)
    return wL.event(al)
end
local function fn1177(i1, i2)
    local i4 = yl()
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "FishEsp"
    billboardGui.AlwaysOnTop = true
    billboardGui.LightInfluence = 0
    billboardGui.Size = UDim2.fromOffset(220, 52)
    billboardGui.StudsOffsetWorldSpace = Vector3.new(0, 3.5, 0)
    billboardGui.MaxDistance = math.huge
    billboardGui.Adornee = i2
    local textLabel = Instance.new("TextLabel")
    textLabel.Name = "Text"
    textLabel.Size = UDim2.fromScale(1, 1)
    textLabel.BackgroundTransparency = 1
    textLabel.FontFace = Font.new("rbxasset://fonts/families/BuilderSans.json", Enum.FontWeight.Bold)
    textLabel.TextScaled = true
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.Text = ""
    local uIStroke = Instance.new("UIStroke")
    uIStroke.Thickness = 2
    uIStroke.Color = Color3.new(0, 0, 0)
    uIStroke.Parent = textLabel
    textLabel.Parent = billboardGui
    local highlight = Instance.new("Highlight")
    highlight.Name = "FishHighlight"
    highlight.FillTransparency = 0.65
    highlight.OutlineTransparency = 0
    highlight.Adornee = i1
    highlight.Parent = i4
    billboardGui.Parent = i4
    return { Gui = billboardGui, Label = textLabel, Highlight = highlight }
end
local function fn1190(aP)
    local zI = 0
    local zJ = {}
    if type(aP) == "table" then
        for k, v in pairs(aP) do
            if v == true then
                zJ[tostring(k)] = true
                zI += 1
            else
                local zK = type(k) == "number" and type(v) == "string"
                if zK then
                    zJ[v] = true
                    zI += 1
                end
            end
        end
    end
    return zJ, zI
end
local function fn1207(aW)
    local zT_1
    local zS_1
    zT_1, zS_1 = xq(aW)
    local zS_2 = 0
    local zU = {}
    for k in pairs(zT_1) do
        local zT_2 = w5[k] or k
        zU[zT_2] = true
        zS_2 += 1
    end
    return zU, zS_2
end
local function fn1224(c4, c5)
    local Bx_1
    local Bw_1
    local Bv_1
    local Bu_1
    local Bt_1
    local Bs_1
    local Br_1
    local Bq_1, Bq_8
    local Bp = xm(c4)
    if not Bp then
        return false
    end
    Br_1, Bq_1 = xq(c5.Rarities)
    Bt_1, Bs_1 = xq(c5.Sizes)
    Bv_1, Bu_1 = xq(c5.Mutations)
    Bx_1, Bw_1 = wY(c5.Species)
    local By = Bq_1 > 0 and Bp.Rarity and not Br_1[tostring(Bp.Rarity)]
    if By then
        return false
    end
    local Bq_2 = Bs_1 > 0 and Bp.Size and not Bt_1[tostring(Bp.Size)]
    if Bq_2 then
        return false
    end
    local Bq_3 = Bu_1 > 0
    if Bq_3 then
        local Br_2 = Bp.Mutation
        local BC_1 = if Br_2 then 1 else 0
        local BA_1 = 2151 * BC_1 + 1795 * (1 - BC_1)
        local BB_1 = 1297 * BC_1 + 1246 * (1 - BC_1)
        if not ((BA_1 * 2760 + BB_1 * 3190 + BA_1 * BB_1) % 16777213 == 12864037) then
            Br_2 = "None"
        end
        Bq_3 = not Bv_1[tostring(Br_2)]
    end
    if Bq_3 then
        return false
    elseif Bw_1 > 0 then
        local Bq_4 = not Bp.Species or not Bx_1[tostring(Bp.Species)]
        if Bq_4 then
            return false
        end
        if Bp.Dirty ~= true then
            if Bq_8 then
                return false
            end
            return true
        end
        return true
    else
        local Bq_7 = (tonumber(Bp.Weight))
        local BC_3 = if Bq_7 then 1 else 0
        local BA_3 = 3033 * BC_3 + 3011 * (1 - BC_3)
        local BB_3 = 1787 * BC_3 + 3532 * (1 - BC_3)
        if not ((BA_3 * 3954 + BB_3 * 2747 + BA_3 * BB_3) % 16777213 == 5544129) then
            Bq_7 = 0
        end
        local Br_4 = Bq_7
        if Bp.Dirty ~= true then
            Bq_8 = Br_4 < (c5.MinWeight or 0)
            local BI_2 = if Bq_8 then 1 else 0
            local BG_2 = 3683 * BI_2 + 2114 * (1 - BI_2)
            local BH_2 = 600 * BI_2 + 36 * (1 - BI_2)
            if not ((BG_2 * 39 + BH_2 * 144 + BG_2 * BH_2) % 16777213 == 2439837) then
                Bq_8 = Br_4 > (c5.MaxWeight or 1000000000000)
            end
            if Bq_8 then
                return false
            end
            return true
        end
        return true
    end
end
local function fn1231(hS)
    while true do
        local Ex = w3() and xu.Pool.Enabled and xu.Pool.Gen == hS
        if Ex then
            if not xu.Busy and not xu.Grabbing and not xu.Cleaning then
                local Ex_2 = yg()
                local Ey = Ex_2 and Ex_2:GetAttribute("PoolSeat") ~= nil
                if not Ey then
                    local Ex_4 = x_()
                    local Ey_1 = Ex_4 and Ex_4:FindFirstChild("Pool")
                    local Ex_5 = Ey_1
                    if Ey_1 then
                        Ey_1 = Ex_5:FindFirstChild("Water", true)
                    end
                    local Ex_6 = Ey_1
                    if Ey_1 then
                        Ey_1 = Ex_6:IsA("BasePart")
                    end
                    if Ey_1 then
                        x5(Ex_6.CFrame * CFrame.new(0, 3, 0))
                    end
                end
            end
            task.wait(0.75)
            continue
        end
        break
    end
end
local function fn1275()
    local Folder = xu.Esp.Folder
    if Folder and Folder.Parent then
        return Folder
    end
    local folder = Instance.new("Folder")
    folder.Name = x6 .. "Esp"
    folder.Parent = wU()
    xu.Esp.Folder = folder
    return folder
end
local function onOnClientEvent10(f7, f8)
    if type(f7) == "table" then
        xu.TankAnimals = f7
    end
    if f8 ~= nil then
        local Dp = tonumber(f8) or xu.TankCap
        xu.TankCap = Dp
    end
end
local function fn1290(kD)
    local Sell = xu.Sell
    local Gk = kD and true or false
    Sell.Enabled = Gk
    if xu.Sell.Enabled then
        yv(xu.Sell, "AutoSell", function()
            return xu.Sell.Interval
        end, function()
            ye()
        end)
    end
end
local function fn1317()
    local Cw_1
    local Cv_1
    Cv_1, Cw_1 = pcall(xX.amount)
    local Cx = Cv_1 and type(Cw_1) == "number"
    if Cx then
        return Cw_1
    end
    return 0
end
local function fn1347()
    local zC = yg()
    local zD = zC and zC:FindFirstChildOfClass("Humanoid")
    return zD
end
local function fn1400()
    gethui = yn
end
local function fn1408()
    if xu.Busy then
        return
    end
    if xu.Cleaning and xu.CleanDirt then
        w7(xu.CleanDirt)
        return
    end
    local Ea_1 = yw()
    if not Ea_1 then
        return
    end
    local Eb = x_()
    if not Eb then
        return
    end
    local StationAnchor = Eb:FindFirstChild("StationAnchor")
    local Ed = wO(StationAnchor, "Place")
    local Ee = xs(Eb)
    local Eb_1 = not Ed
    local Ef = not StationAnchor
    local Ej = if Ef then 1 else 0
    local Eh = 3115 * Ej + 3498 * (1 - Ej)
    local Ei = 13 * Ej + 3657 * (1 - Ej)
    if not ((Eh * 2869 + Ei * 1115 + Eh * Ei) % 16777213 == 8991925) then
        Ef = Eb_1
    end
    if Ef or not Ee then
        return
    end
    xu.Busy = true
    xj()
    wP(Ea_1)
    task.wait(0.1)
    x5(Ee)
    task.wait(0.15)
    local Ea_2 = w3() and xu.Clean.Enabled
    if Ea_2 then
        local Ea_3 = os.clock() + 1.25
        while true do
            local Eb_3 = w3() and xu.Clean.Enabled and not Ed.Enabled and os.clock() < Ea_3
            if Eb_3 then
                task.wait(0.04)
                continue
            end
            break
        end
        w6(Ed)
    end
    local Ea_4 = os.clock()
    while true do
        local Eb_4 = w3() and xu.Clean.Enabled and not xu.Cleaning and os.clock() - Ea_4 < 3
        if Eb_4 then
            task.wait(0.08)
            continue
        end
        break
    end
    local Ea_5 = os.clock() + 8
    while true do
        local Eb_5 = w3() and xu.Clean.Enabled and xu.Cleaning and os.clock() < Ea_5
        if Eb_5 then
            if xu.CleanDirt then
                w7(xu.CleanDirt)
            end
            task.wait(0.08)
            continue
        end
        break
    end
    xu.Busy = false
end
local function onOnClientEvent3()
    xu.Grabbing = false
end
local function fn1417(cx)
    local Backpack = yr:FindFirstChildOfClass("Backpack")
    if Backpack then
        for i, child in ipairs(Backpack:GetChildren()) do
            if xQ(child) then
                cx(child)
            end
        end
    end
    local A__1 = yg()
    if A__1 then
        for i, child in ipairs(A__1:GetChildren()) do
            if xQ(child) then
                cx(child)
            end
        end
    end
end
wJ = nil
wK = nil
wL = nil
wM = nil
wN = nil
wO = nil
wP = nil
wQ = nil
wR = nil
wS = nil
wT = nil
wU = nil
wV = nil
wW = nil
wY = nil
connection9 = nil
w0 = nil
w1 = nil
w2 = nil
w3 = nil
w4 = nil
w5 = nil
w6 = nil
w7 = nil
w8 = nil
w9 = nil
connection8 = nil
Options = nil
xc = nil
xe = nil
Toggles = nil
xh = nil
connection7 = nil
xj = nil
xl = nil
xm = nil
xn = nil
xp = nil
xq = nil
connection6 = nil
xs = nil
Library = nil
xu = nil
local wX, w_, xd, xg, SaveManager, xo, xv
xw = nil
xx = nil
xy = nil
xz = nil
xA = nil
xB = nil
xD = nil
connection5 = nil
xI = nil
xJ = nil
xN = nil
xO = nil
xP = nil
xQ = nil
xS = nil
xU = nil
xV = nil
connection12 = nil
xX = nil
connection4 = nil
x_ = nil
x2 = nil
x5 = nil
x6 = nil
x7 = nil
x8 = nil
connection3 = nil
ya = nil
connection11 = nil
yd = nil
ye = nil
yg = nil
connection2 = nil
yi = nil
local xC, xF, xG, xH, xK, xL, xM, xR, xT, xY, x0, x1, x3, x4, yc, yf
yj = nil
yk = nil
yl = nil
ym = nil
yn = nil
Economy = nil
yq = nil
yr = nil
ys = nil
yt = nil
yv = nil
yw = nil
connection10 = nil
local yp, yu
yp = nil
yu = nil
if not game:IsLoaded() then
    game.Loaded:Wait()
end
wJ, yr, yn = nil, nil, nil
local Kw_32 = 1
repeat
    Kw_23 = {
        "ooqwosynnro",
        "magekbrv",
        "ryoadp",
        "xtp",
        "gbhoconxhlq",
        "uchqpyvfxns",
        "jxemz",
        "gyvneq",
        "ndubxkwwo",
        "sebbqmjvx",
        "bey"
    }
    local MQ = Kw_32
    Kw_12 = Kw_23[MQ % 11 + 1]
    if Kw_12:len() <= Kw_12:gsub("(.)", "%1%1", MQ % 3 % 2 + 1):len() then
        wJ = {}
        wJ.Players = game:GetService("Players")
        wJ.ReplicatedStorage = game:GetService("ReplicatedStorage")
        wJ.RunService = game:GetService("RunService")
        wJ.UserInputService = game:GetService("UserInputService")
        wJ.VirtualUser = game:GetService("VirtualUser")
        wJ.HttpService = game:GetService("HttpService")
        wJ.TeleportService = game:GetService("TeleportService")
        wJ.Workspace = game:GetService("Workspace")
        wJ.Lighting = game:GetService("Lighting")
        wJ.Stats = game:GetService("Stats")
        wJ.CoreGui = game:GetService("CoreGui")
        wJ.CollectionService = game:GetService("CollectionService")
        yr = wJ.Players.LocalPlayer
        yn = fn1161
    else
        yn = {}
        yn.Players = game:GetService("Players")
        yn.ReplicatedStorage = game:GetService("ReplicatedStorage")
        yn.RunService = game:GetService("RunService")
        yn.UserInputService = game:GetService("UserInputService")
        yn.VirtualUser = game:GetService("VirtualUser")
        yn.HttpService = game:GetService("HttpService")
        yn.TeleportService = game:GetService("TeleportService")
        yn.Workspace = game:GetService("Workspace")
        yn.Lighting = game:GetService("Lighting")
        yn.Stats = game:GetService("Stats")
        yn.CoreGui = game:GetService("CoreGui")
        yn.CollectionService = game:GetService("CollectionService")
        wJ = yn.Players.LocalPlayer
        yr = fn1161
    end
    Kw_32 = (Kw_32 + 2) % 4
until (Kw_32 * 3 + 0) % 4 == 1
if getgenv then
    getgenv().gethui = yn
end
x6, x0, Kw_16, xP, xK, xF, xy, xu, Kw_23, wV, wS, Kw_32, wL, yt, Economy, yk, Kw_14, Kw_4, Kw_24, Kw_26, Kw_2, xc, w3 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Kw_12 = 53
repeat
    local Kw_6 = (Kw_12 * 7 + 4) % 15 + 1
    if Kw_6 <= 8 then
        if Kw_6 <= 4 then
            if Kw_6 <= 2 then
                if Kw_6 <= 1 then
                    Kw_27 = (vector.create((Kw_12 * 5 + 6) % 11 + 1, (Kw_12 * 4 + 13) % 13 + 1, (Kw_12 * 2 + 3) % 17 + 1))
                    Kw_18 = (vector.create((Kw_12 * 2 + 7) % 11 + 1, (Kw_12 * 2 + 1) % 13 + 1, (Kw_12 * 14 + 13) % 17 + 1))
                    local K9 = vector.cross(Kw_27, Kw_18)
                    local La = vector.dot(Kw_27, Kw_18)
                    if vector.dot(K9, K9) + La * La == vector.dot(Kw_27, Kw_27) * vector.dot(Kw_18, Kw_18) then
                        pcall(fn1400)
                        Kw_24 = function(j)
                            local zl
                            local zn
                            local zm
                            zl = nil
                            zm = nil
                            zn = nil
                            local zo = j ~= ""
                            local zp = type(j) == "string" and zo
                            assert(zp, "Namespace is required")
                            assert(type(getgenv) == "function", "getgenv is unavailable")
                            zl = getgenv()
                            assert(type(zl) == "table", "getgenv did not return a table")
                            local zo_2 = zl[j]
                            if zo_2 ~= nil then
                                local zp_2 = type(zo_2) == "table" and type(zo_2.Unload) == "function"
                                assert(zp_2, "Namespace is occupied")
                                zo_2.Unload()
                                assert(zl[j] == nil, "Previous instance did not release its namespace")
                            end
                            zm = {}
                            zn = { State = {}, Unloaded = false }
                            zn.Track = function(p)
                                assert(type(p) == "function", "Cleanup must be callable")
                                if zn.Unloaded then
                                    p()
                                else
                                    table.insert(zm, p)
                                end
                                return p
                            end
                            zn.Unload = function()
                                local ze_2
                                local zd_2
                                if zn.Unloaded then
                                    return
                                end
                                zn.Unloaded = true
                                local zb = {}
                                local zi = #zm
                                local zh = -1
                                while false and zi <= 1 or true and zi >= 1 do
                                    local zj = zi
                                    local zc_2 = table.remove(zm, zj)
                                    zd_2, ze_2 = pcall(zc_2)
                                    if not zd_2 then
                                        table.insert(zb, tostring(ze_2))
                                    end
                                    zi += zh
                                end
                                table.clear(zn.State)
                                if #zb > 0 then
                                    error("Cleanup incomplete: " .. table.concat(zb, "; "), 0)
                                end
                                if zl[j] == zn then
                                    zl[j] = nil
                                end
                            end
                            zl[j] = zn
                            return zn
                        end
                    else
                        pcall(fn1400)
                        xc = function(j)
                            local zl
                            local zn
                            local zm
                            zl = nil
                            zm = nil
                            zn = nil
                            local zo = j ~= ""
                            local zp = type(j) == "string" and zo
                            assert(zp, "Namespace is required")
                            assert(type(getgenv) == "function", "getgenv is unavailable")
                            zl = getgenv()
                            assert(type(zl) == "table", "getgenv did not return a table")
                            local zo_1 = zl[j]
                            if zo_1 ~= nil then
                                local zp_1 = type(zo_1) == "table" and type(zo_1.Unload) == "function"
                                assert(zp_1, "Namespace is occupied")
                                zo_1.Unload()
                                assert(zl[j] == nil, "Previous instance did not release its namespace")
                            end
                            zm = {}
                            zn = { State = {}, Unloaded = false }
                            zn.Track = function(p)
                                assert(type(p) == "function", "Cleanup must be callable")
                                if zn.Unloaded then
                                    p()
                                else
                                    table.insert(zm, p)
                                end
                                return p
                            end
                            zn.Unload = function()
                                local ze_1
                                local zd_1
                                if zn.Unloaded then
                                    return
                                end
                                zn.Unloaded = true
                                local zb = {}
                                local zi = #zm
                                local zh = -1
                                while false and zi <= 1 or true and zi >= 1 do
                                    local zj = zi
                                    local zc_1 = table.remove(zm, zj)
                                    zd_1, ze_1 = pcall(zc_1)
                                    if not zd_1 then
                                        table.insert(zb, tostring(ze_1))
                                    end
                                    zi += zh
                                end
                                table.clear(zn.State)
                                if #zb > 0 then
                                    error("Cleanup incomplete: " .. table.concat(zb, "; "), 0)
                                end
                                if zl[j] == zn then
                                    zl[j] = nil
                                end
                            end
                            zl[j] = zn
                            return zn
                        end
                    end
                    Kw_12 = (Kw_12 + 103) % 120
                else
                    if (xP or not xF) and (x0 or x0) or (x0 and not xF or (wV or xP)) or not ((xP or not xF) and (x0 or x0) or (x0 and not xF or (wV or xP))) then
                        Kw_26 = function(C, D)
                            local zs = type(C) == "table" and type(C.Track) == "function"
                            assert(zs, "FeatureAPI required")
                            local zs_2 = type(D) == "table" and type(D.OnUnload) == "function"
                            assert(zs_2, "UI library required")
                            assert(type(D.Unload) == "function", "UI unload required")
                            C.Track(function()
                                if not D.Unloaded then
                                    D:Unload()
                                end
                            end)
                            D:OnUnload(function()
                                C.Unload()
                            end)
                        end
                    else
                        Kw_16 = function(C, D)
                            local zs = type(C) == "table" and type(C.Track) == "function"
                            assert(zs, "FeatureAPI required")
                            local zs_1 = type(D) == "table" and type(D.OnUnload) == "function"
                            assert(zs_1, "UI library required")
                            assert(type(D.Unload) == "function", "UI unload required")
                            C.Track(function()
                                if not D.Unloaded then
                                    D:Unload()
                                end
                            end)
                            D:OnUnload(function()
                                C.Unload()
                            end)
                        end
                    end
                    Kw_12 = (Kw_12 + 43) % 120
                end
            elseif Kw_6 <= 3 then
                Kw_27 = (vector.create((Kw_12 * 5 + 7) % 11 + 1, (Kw_12 * 11 + 9) % 13 + 1, (Kw_12 * 13 + 12) % 17 + 1))
                Kw_18 = (vector.create((Kw_12 * 3 + 7) % 11 + 1, (Kw_12 * 9 + 2) % 13 + 1, (Kw_12 * 4 + 4) % 17 + 1))
                local Kw_8 = (vector.create((Kw_12 * 4 + 7) % 11 + 1, (Kw_12 * 11 + 1) % 13 + 1, (Kw_12 * 1 + 14) % 17 + 1))
                local Kw_29 = (vector.create((Kw_12 * 2 + 2) % 11 + 1, (Kw_12 * 7 + 6) % 13 + 1, (Kw_12 * 11 + 12) % 17 + 1))
                if vector.dot(vector.cross(Kw_27, Kw_18), (vector.cross(Kw_8, Kw_29))) == vector.dot(Kw_27, Kw_8) * vector.dot(Kw_18, Kw_29) - vector.dot(Kw_27, Kw_29) * vector.dot(Kw_18, Kw_8) then
                    x6 = "OuroborosSurfAndRescue"
                else
                    yt = "OuroborosSurfAndRescue"
                end
                Kw_12 = (Kw_12 + 13) % 120
            else
                local L6 = bit32.rrotate(bit32.bxor(bit32.lrotate(Kw_12, 10), string.byte(tostring(Kw_16))), 20)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(L6, 1746636739), 2015497344), (bit32.bxor(bit32.band(L6, 2548330556), 3161824258))), 2015497344), 3161824258) == L6 then
                    x0 = "Surf And Rescue"
                    Kw_16 = "v0.4"
                    xP = "https://discord.gg/synapsex"
                else
                    xP = "Surf And Rescue"
                    x0 = "v0.4"
                    Kw_16 = "https://discord.gg/synapsex"
                end
                Kw_12 = (Kw_12 + 28) % 120
            end
        elseif Kw_6 <= 6 then
            if Kw_6 <= 5 then
                local Mj = bit32.rrotate(bit32.bxor(bit32.lrotate(Kw_12, 27), string.byte(tostring(xy))), 4)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Mj, 3579815903), 1126719668), (bit32.bxor(bit32.band(Mj, 715151392), 2570486851))), 1126719668), 2570486851) == Mj then
                    xK = "https://rscripts.net/@Ouroboros"
                else
                    xF = "https://rscripts.net/@Ouroboros"
                end
                Kw_12 = (Kw_12 + 103) % 120
            else
                if Kw_12 * 3822785 + 11 + 2 <= Kw_12 * 3822785 + 11 + 2 + 1 then
                    xF = "https://ouroboros-hub-rbx.web.app/"
                    xy = Kw_24(x6)
                    xu = xy.State
                else
                    xu = "https://ouroboros-hub-rbx.web.app/"
                    x6 = xF(Kw_24)
                    xy = x6.State
                end
                Kw_12 = (Kw_12 + 13) % 120
            end
        elseif Kw_6 <= 7 then
            Kw_27 = {
                "weth",
                "igvmvos",
                "njtvalvzsw",
                "mclzrdqqiuv",
                "nvjaqdzbhk",
                "bodowgnalcxk",
                "pjfnqqz",
                "vqgothfr",
                "zzpte"
            }
            if Kw_27[(Kw_12 * 15 + 89) % 9 + 1] <= Kw_27[(Kw_12 * 15 + 89) % 9 + 1] then
                Kw_2 = fn902
            else
                yt = fn902
            end
            Kw_12 = (Kw_12 + 118) % 120
        else
            if (xc and yk and (xK or Kw_23) or (false or (false or yk))) and not (xc and yk and (xK or Kw_23) or (false or (false or yk))) then
                w3 = fn786
                xc = fns.fn617
            else
                xc = fn786
                w3 = fns.fn617
            end
            Kw_12 = (Kw_12 + 88) % 120
        end
    elseif Kw_6 <= 12 then
        if Kw_6 <= 10 then
            if Kw_6 <= 9 then
                if Kw_12 * 122368285 + 1 + 7 >= Kw_12 * 122368285 + 1 + 7 + 1 then
                    wJ = Kw_23(Kw_2.ReplicatedStorage)
                else
                    Kw_23 = Kw_2(wJ.ReplicatedStorage)
                end
                Kw_12 = (Kw_12 + 28) % 120
            else
                if Kw_12 * 89499407 + 8 + 7 >= Kw_12 * 89499407 + 8 + 7 + 1 then
                    wJ = wS(Kw_2.Workspace)
                    wV = wS(Kw_2.CollectionService)
                else
                    wV = Kw_2(wJ.Workspace)
                    wS = Kw_2(wJ.CollectionService)
                end
                Kw_12 = (Kw_12 + 118) % 120
            end
        elseif Kw_6 <= 11 then
            if (Kw_12 * 2 + 1) * 16 % 3 == ((Kw_12 * 2 + 1) * 16 + 2) % 3 then
                Kw_23 = Kw_32:WaitForChild("Shared", 30)
            else
                Kw_32 = Kw_23:WaitForChild("Shared", 30)
            end
            Kw_12 = (Kw_12 + 28) % 120
        else
            if (Kw_12 * 1 + 1) * 21 % 4 == ((Kw_12 * 1 + 1) * 21 + 8) % 4 then
                assert(Kw_32, "Shared missing")
                wL = require(Kw_32:WaitForChild("Net", 30))
                yt = require(Kw_32:WaitForChild("Catalog", 30))
            else
                assert(yt, "Shared missing")
                Kw_32 = require(yt:WaitForChild("Net", 30))
                wL = require(yt:WaitForChild("Catalog", 30))
            end
            Kw_12 = (Kw_12 + 73) % 120
        end
    elseif Kw_6 <= 14 then
        if Kw_6 <= 13 then
            Kw_6 = (vector.create((Kw_12 * 3 + 2) % 11 + 1, (Kw_12 * 2 + 7) % 13 + 1, (Kw_12 * 15 + 8) % 17 + 1))
            Kw_27 = (vector.create((Kw_12 * 4 + 5) % 11 + 1, (Kw_12 * 8 + 4) % 13 + 1, (Kw_12 * 14 + 7) % 17 + 1))
            Kw_18 = (vector.create((Kw_12 * 4 + 3) % 11 + 1, (Kw_12 * 8 + 8) % 13 + 1, (Kw_12 * 8 + 11) % 17 + 1))
            if vector.dot(vector.cross(Kw_6, Kw_27), Kw_18) == vector.dot(vector.cross(Kw_27, Kw_18), Kw_6) then
                Economy = require(Kw_32:WaitForChild("Economy", 30))
                yk = require(Kw_32:WaitForChild("Tags", 30))
            else
                yk = require(Economy:WaitForChild("Economy", 30))
                Kw_32 = require(Economy:WaitForChild("Tags", 30))
            end
            Kw_12 = (Kw_12 + 88) % 120
        else
            Kw_6 = {
                "fabq",
                "rwnprj",
                "qxqbhkc",
                "gkthujbasa",
                "ifylqq",
                "cbohmonxm",
                "tum",
                "obprbmzjgqc",
                "sviar",
                "odogyshrc",
                "dstpb"
            }
            local Lu = Kw_12
            Kw_27 = Kw_6[Lu % 11 + 1]
            if Kw_27:len() >= Kw_27:gsub("(.)", "%1%1", Lu % 3 % 2 + 1):len() then
                Kw_32 = require(Kw_14:WaitForChild("Config", 30))
            else
                Kw_14 = require(Kw_32:WaitForChild("Config", 30))
            end
            Kw_12 = (Kw_12 + 28) % 120
        end
    else
        Kw_6 = (vector.create((Kw_12 * 1 + 4) % 11 + 1, (Kw_12 * 3 + 8) % 13 + 1, (Kw_12 * 10 + 8) % 17 + 1))
        Kw_27 = (vector.create((Kw_12 * 1 + 4) % 11 + 1, (Kw_12 * 1 + 3) % 13 + 1, (Kw_12 * 12 + 7) % 17 + 1))
        Kw_18 = (vector.create((Kw_12 * 2 + 7) % 5 + 1, (Kw_12 * 3 + 7) % 7 + 1, (Kw_12 * 4 + 6) % 9 + 1))
        if math.abs((vector.angle(Kw_6, Kw_27, Kw_18))) - math.abs((vector.angle(Kw_27, Kw_6, Kw_18))) == 3 then
            Kw_14 = Kw_4.Waters
        else
            Kw_4 = Kw_14.Waters
        end
        Kw_12 = (Kw_12 + 58) % 120
    end
until (Kw_12 * 53 + 93) % 120 == 112
if Kw_4 then
    Kw_4 = Kw_14.Waters.SurfaceY
end
Kw_32 = Kw_4 or -4.98
x2, xX, xA, xv, xp, xl, xh, xd, w9, w5, xR = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Kw_23 = 15
repeat
    Kw_12 = (Kw_23 * 3 + 0) % 4 + 1
    if Kw_12 <= 2 then
        if Kw_12 <= 1 then
            if xh and xh or not xh and xX or not xh and w5 and (not Kw_23 and not xh) or (not xX or xX) and (not Kw_23 or xh) and ((xh or not w5) and (not Kw_23 and not xX)) or not (xh and xh or not xh and xX or not xh and w5 and (not Kw_23 and not xh) or (not xX or xX) and (not Kw_23 or xh) and ((xh or not w5) and (not Kw_23 and not xX))) then
                w5 = {}
            else
                x2 = {}
            end
            Kw_23 = (Kw_23 + 3) % 16
        else
            Kw_2 = (vector.create((Kw_23 * 4 + 2) % 11 + 1, (Kw_23 * 5 + 2) % 13 + 1, (Kw_23 * 14 + 7) % 17 + 1))
            Kw_24 = (vector.create((Kw_23 * 2 + 4) % 11 + 1, (Kw_23 * 1 + 2) % 13 + 1, (Kw_23 * 12 + 1) % 17 + 1))
            Kw_14 = (vector.create((Kw_23 * 4 + 1) % 11 + 1, (Kw_23 * 7 + 4) % 13 + 1, (Kw_23 * 13 + 13) % 17 + 1))
            Kw_4 = (vector.create((Kw_23 * 1 + 1) % 5 + 1, (Kw_23 * 2 + 3) % 7 + 1, (Kw_23 * 5 + 1) % 9 + 1))
            if vector.dot(vector.cross(Kw_2, (vector.cross(Kw_24, Kw_14))), Kw_4) == vector.dot(Kw_24 * vector.dot(Kw_2, Kw_14) - Kw_14 * vector.dot(Kw_2, Kw_24), Kw_4) then
                x2 = Kw_32
                xX = require(yr.PlayerScripts:WaitForChild("Client", 30):WaitForChild("Wallet", 30))
                xR = fn1176
                xA = {
                    GrabTap = xR("GrabTap"),
                    CleanRemove = xR("CleanRemove"),
                    CleanLeave = xR("CleanLeave"),
                    HoseUpgrade = xR("HoseUpgrade"),
                    PoolUpgrade = xR("PoolUpgrade"),
                    TankUpgrade = xR("TankUpgrade"),
                    TankSell = xR("TankSell"),
                    TankEdit = xR("TankEdit"),
                    PoolLeave = xR("PoolLeave"),
                    QuestClaim = xR("QuestClaim"),
                    QuestHello = xR("QuestHello"),
                    PetSell = xR("PetSell"),
                    PetSellAll = xR("PetSellAll")
                }
                xv = { fireproximityprompt = xc(fireproximityprompt) }
            else
                Kw_32 = x2
                xv = require(xR.PlayerScripts:WaitForChild("Client", 30):WaitForChild("Wallet", 30))
                xA = fn1176
                xX = {
                    CleanLeave = xA("CleanLeave"),
                    QuestClaim = xA("QuestClaim"),
                    TankEdit = xA("TankEdit"),
                    PetSellAll = xA("PetSellAll"),
                    HoseUpgrade = xA("HoseUpgrade"),
                    PoolLeave = xA("PoolLeave"),
                    GrabTap = xA("GrabTap"),
                    PoolUpgrade = xA("PoolUpgrade"),
                    CleanRemove = xA("CleanRemove"),
                    QuestHello = xA("QuestHello"),
                    TankSell = xA("TankSell"),
                    TankUpgrade = xA("TankUpgrade"),
                    PetSell = xA("PetSell")
                }
                xc = { fireproximityprompt = yr(fireproximityprompt) }
            end
            Kw_23 = (Kw_23 + 11) % 16
        end
    elseif Kw_12 <= 3 then
        local MT = bit32.rrotate(bit32.bxor(bit32.lrotate(Kw_23, 2), string.byte(tostring(xA))), 12)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(MT, 291105101), 4079675470), (bit32.bxor(bit32.band(MT, 4003862194), 1441080444))), 4079675470), 1441080444) == MT then
            xp = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic" }
            xl = { "Small", "Normal", "Big", "Huge" }
            xh = { "None", "Shiny", "Golden", "Rainbow" }
            xd = { "Sell Matching", "Keep Matching", "Sell All" }
        else
            xl = { "Uncommon", "Mythic", "Common", "Epic", "Legendary", "Rare" }
            xp = { "Small", "Big", "Huge", "Normal" }
            xd = { "Shiny", "None", "Rainbow", "Golden" }
            xh = { "Keep Matching", "Sell All", "Sell Matching" }
        end
        Kw_23 = (Kw_23 + 15) % 16
    else
        Kw_12 = {
            "isidq",
            "bvnogpt",
            "ebfpfomwkfug",
            "bfccizncwcv",
            "ebdtwcbnor",
            "coh",
            "bzbtqwykyheh",
            "uhgyogmrijao"
        }
        if Kw_12[(Kw_23 * 55 + 76) % 8 + 1] <= Kw_12[(Kw_23 * 55 + 76) % 8 + 1] then
            w9 = {}
        else
            xh = {}
        end
        Kw_23 = (Kw_23 + 15) % 16
    end
until (Kw_23 * 11 + 14) % 16 == 7
Kw_12 = {}
for k, v in pairs(yt.Animals) do
    Kw_32 = type(v) == "table" and v.EnemyOnly ~= true
    if Kw_32 then
        Kw_32 = table.insert
        Kw_23 = v.DisplayName or k
        Kw_32(Kw_12, { Key = k, Label = tostring(Kw_23) })
    end
end
Kw_2 = 1
repeat
    Kw_32 = {
        "hlutcixg",
        "xjbravzjtnbp",
        "fjl",
        "suponmq",
        "wktov",
        "wenbmccjfu",
        "skjtzr",
        "toxziv",
        "etysqz",
        "rbrzceyqj",
        "nkzd",
        "arvhgyr",
        "ubvzzltky",
        "whsambte"
    }
    if Kw_32[(Kw_2 * 88 + 10) % 14 + 1] <= Kw_32[(Kw_2 * 88 + 10) % 14 + 1] then
        table.sort(Kw_12, fns.fn496)
    else
        table.sort(Kw_12, fns.fn496)
    end
    Kw_2 = (Kw_2 + 5) % 8
until (Kw_2 * 3 + 1) % 8 == 3
for i, v in ipairs(Kw_12) do
    table.insert(w9, v.Label)
    w5[v.Label] = v.Key
end
ym, xB, yg, x7, xM, xq, wY, x8, ya, x_, xj, w6, wO, x5, xI, wQ, xQ, xz, xg, wX = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Kw_32 = 32
repeat
    Kw_12 = (Kw_32 * 7 + 8) % 10 + 1
    if Kw_12 <= 5 then
        if Kw_12 <= 3 then
            if Kw_12 <= 2 then
                if Kw_12 <= 1 then
                    Kw_2 = (vector.create((Kw_32 * 7 + 5) % 11 + 1, (Kw_32 * 8 + 12) % 13 + 1, (Kw_32 * 6 + 6) % 17 + 1))
                    Kw_24 = (vector.create((Kw_32 * 3 + 7) % 11 + 1, (Kw_32 * 7 + 1) % 13 + 1, (Kw_32 * 7 + 12) % 17 + 1))
                    local MV = vector.cross(Kw_2, Kw_24)
                    local MW = vector.dot(Kw_2, Kw_24)
                    if vector.dot(MV, MV) + MW * MW == vector.dot(Kw_2, Kw_2) * vector.dot(Kw_24, Kw_24) + 3 then
                        wX = function()
                            local cI
                            cI = {}
                            wX(function(cK)
                                table.insert(cI, cK)
                            end)
                            return cI
                        end
                    else
                        wX = fn1417
                    end
                    Kw_32 = (Kw_32 + 3) % 40
                else
                    Kw_2 = (vector.create((Kw_32 * 3 + 2) % 11 + 1, (Kw_32 * 8 + 4) % 13 + 1, (Kw_32 * 4 + 7) % 17 + 1))
                    Kw_24 = (vector.create((Kw_32 * 6 + 7) % 11 + 1, (Kw_32 * 9 + 10) % 13 + 1, (Kw_32 * 6 + 3) % 17 + 1))
                    local Mi = vector.dot(Kw_2, Kw_24)
                    if Mi * Mi <= vector.dot(Kw_2, Kw_2) * vector.dot(Kw_24, Kw_24) then
                        xB = {}
                    else
                        xg = {}
                    end
                    Kw_32 = (Kw_32 + 23) % 40
                end
            else
                local M9 = bit32.rrotate(bit32.bxor(bit32.lrotate(Kw_32, 25), string.byte(tostring(xI))), 3)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(M9, 2736985233), 3958887594), (bit32.bxor(bit32.band(M9, 1557982062), 3054380041))), 3958887594), 3054380041) == M9 then
                    ym = {
                        Common = Color3.fromRGB(220, 220, 220),
                        Uncommon = Color3.fromRGB(90, 200, 90),
                        Rare = Color3.fromRGB(80, 160, 255),
                        Epic = Color3.fromRGB(180, 90, 255),
                        Legendary = Color3.fromRGB(255, 170, 40),
                        Mythic = Color3.fromRGB(255, 70, 120)
                    }
                    xu.Busy = false
                    xu.Grabbing = false
                    xu.Cleaning = false
                    xu.CleanDirt = nil
                    xu.BagFullPulse = nil
                    xu.QuestState = nil
                    xu.TankAnimals = {}
                    xu.TankCap = 0
                    xu.Pets = {}
                    xu.Grab = {
                        Enabled = false,
                        Gen = 0,
                        Rarities = {},
                        Species = {},
                        Sizes = {},
                        Mutations = {},
                        MinWeight = 0,
                        MaxWeight = 1000000000000,
                        OnlyWild = true,
                        OnlyDirty = true,
                        Interval = 0.35,
                        TapsPerSecond = 16
                    }
                    xu.Clean = {
                        Enabled = false,
                        Gen = 0,
                        Interval = 0.35,
                        Rarities = {},
                        Species = {},
                        Sizes = {},
                        Mutations = {},
                        MinWeight = 0,
                        MaxWeight = 1000000000000
                    }
                    xu.Quests = { Enabled = false, Gen = 0, Interval = 2 }
                    xu.Pool = { Enabled = false, Gen = 0 }
                    xu.TankFish = {
                        Enabled = false,
                        Gen = 0,
                        Interval = 0.05,
                        Rarities = {},
                        Species = {},
                        Sizes = {},
                        Mutations = {},
                        MinWeight = 0,
                        MaxWeight = 1000000000000
                    }
                    xu.UpgradeHose = { Enabled = false, Gen = 0, Interval = 4 }
                    xu.UpgradePool = { Enabled = false, Gen = 0, Interval = 4 }
                    xu.UpgradeTank = { Enabled = false, Gen = 0, Interval = 4 }
                    xu.Sell = {
                        Enabled = false,
                        Gen = 0,
                        Mode = "Sell Matching",
                        SellTank = true,
                        SellInventory = false,
                        Rarities = {},
                        Species = {},
                        Sizes = {},
                        Mutations = {},
                        MinWeight = 0,
                        MaxWeight = 1000000000000,
                        Interval = 2
                    }
                    xu.Esp = {
                        Enabled = false,
                        Gen = 0,
                        Rarities = {},
                        Species = {},
                        Sizes = {},
                        Mutations = {},
                        MinWeight = 0,
                        MaxWeight = 1000000000000,
                        OnlyWild = false,
                        Entries = {},
                        Folder = nil,
                        Conn = nil
                    }
                    yg = fns.fn305
                    x7 = fns.fn198
                    xM = fn1347
                else
                    x7 = {
                        Common = Color3.fromRGB(220, 220, 220),
                        Mythic = Color3.fromRGB(255, 70, 120),
                        Legendary = Color3.fromRGB(255, 170, 40),
                        Uncommon = Color3.fromRGB(90, 200, 90),
                        Epic = Color3.fromRGB(180, 90, 255),
                        Rare = Color3.fromRGB(80, 160, 255)
                    }
                    ym.Busy = false
                    ym.Grabbing = false
                    ym.Cleaning = false
                    ym.CleanDirt = nil
                    ym.BagFullPulse = nil
                    ym.QuestState = nil
                    ym.TankAnimals = {}
                    ym.TankCap = 0
                    ym.Pets = {}
                    ym.Grab = {
                        Mutations = {},
                        MaxWeight = 1000000000000,
                        Species = {},
                        Rarities = {},
                        Enabled = false,
                        Sizes = {},
                        Gen = 0,
                        OnlyDirty = true,
                        Interval = 0.35,
                        OnlyWild = true,
                        MinWeight = 0,
                        TapsPerSecond = 16
                    }
                    ym.Clean = {
                        MinWeight = 0,
                        Sizes = {},
                        Rarities = {},
                        Enabled = false,
                        Mutations = {},
                        Species = {},
                        Interval = 0.35,
                        MaxWeight = 1000000000000,
                        Gen = 0
                    }
                    ym.Quests = { Interval = 2, Gen = 0, Enabled = false }
                    ym.Pool = { Enabled = false, Gen = 0 }
                    ym.TankFish = {
                        Gen = 0,
                        Interval = 0.05,
                        Rarities = {},
                        MinWeight = 0,
                        Species = {},
                        Mutations = {},
                        Enabled = false,
                        MaxWeight = 1000000000000,
                        Sizes = {}
                    }
                    ym.UpgradeHose = { Enabled = false, Gen = 0, Interval = 4 }
                    ym.UpgradePool = { Interval = 4, Gen = 0, Enabled = false }
                    ym.UpgradeTank = { Gen = 0, Enabled = false, Interval = 4 }
                    ym.Sell = {
                        Species = {},
                        Gen = 0,
                        Rarities = {},
                        MinWeight = 0,
                        SellTank = true,
                        Mutations = {},
                        Interval = 2,
                        Enabled = false,
                        SellInventory = false,
                        Mode = "Sell Matching",
                        MaxWeight = 1000000000000,
                        Sizes = {}
                    }
                    ym.Esp = {
                        Species = {},
                        Enabled = false,
                        Sizes = {},
                        MaxWeight = 1000000000000,
                        Mutations = {},
                        Gen = 0,
                        Conn = nil,
                        Entries = {},
                        Folder = nil,
                        Rarities = {},
                        MinWeight = 0,
                        OnlyWild = false
                    }
                    xu = fns.fn305
                    xM = fns.fn198
                    yg = fn1347
                end
                Kw_32 = (Kw_32 + 13) % 40
            end
        elseif Kw_12 <= 4 then
            Kw_2 = (vector.create((Kw_32 * 6 + 6) % 11 + 1, (Kw_32 * 3 + 6) % 13 + 1, (Kw_32 * 3 + 8) % 17 + 1))
            Kw_24 = (vector.create((Kw_32 * 2 + 7) % 11 + 1, (Kw_32 * 4 + 2) % 13 + 1, (Kw_32 * 7 + 13) % 17 + 1))
            local MM = vector.cross(Kw_2, Kw_24)
            local MN = vector.dot(Kw_2, Kw_24)
            if vector.dot(MM, MM) + MN * MN == vector.dot(Kw_2, Kw_2) * vector.dot(Kw_24, Kw_24) + 4 then
                x8 = fn1190
                xq = fn1207
                wY = fn668
            else
                xq = fn1190
                wY = fn1207
                x8 = fn668
            end
            Kw_32 = (Kw_32 + 23) % 40
        else
            Kw_2 = {
                "hgjypckroz",
                "dckwrgp",
                "nglerhqfpuc",
                "kjaohkh",
                "bgwh",
                "maqfhvnur",
                "wwybxhg",
                "hyxb",
                "gytkhfsyd",
                "ubtk",
                "llelduxjsdz"
            }
            local Lo = Kw_32
            Kw_24 = Kw_2[Lo % 11 + 1]
            if Kw_24:len() <= Kw_24:gsub("(.)", "%1%1", Lo % 3 % 2 + 1):len() then
                ya = fns.fn9
                x_ = fns.fn33
            else
                x_ = fns.fn9
                ya = fns.fn33
            end
            Kw_32 = (Kw_32 + 23) % 40
        end
    elseif Kw_12 <= 8 then
        if Kw_12 <= 7 then
            if Kw_12 <= 6 then
                if Kw_32 * 31069573 + 13 + 7 <= Kw_32 * 31069573 + 13 + 7 + 5 then
                    xj = fns.fn543
                    w6 = function(bF)
                        local Av = not bF
                        local Az = if Av then 1 else 0
                        local Ax = 1575 * Az + 817 * (1 - Az)
                        local Ay = 1494 * Az + 2342 * (1 - Az)
                        if not ((Ax * 3079 + Ay * 2360 + Ax * Ay) % 16777213 == 10728315) then
                            Av = not bF:IsA("ProximityPrompt")
                        end
                        if Av then
                            return false
                        elseif xv.fireproximityprompt then
                            return pcall(fireproximityprompt, bF)
                        else
                            return pcall(function()
                                bF:InputHoldBegin()
                                task.wait(0.05)
                                bF:InputHoldEnd()
                            end)
                        end
                    end
                else
                    w6 = fns.fn543
                    xj = function(bF)
                        local Av = not bF
                        local Az = if Av then 1 else 0
                        local Ax = 1575 * Az + 817 * (1 - Az)
                        local Ay = 1494 * Az + 2342 * (1 - Az)
                        if not ((Ax * 3079 + Ay * 2360 + Ax * Ay) % 16777213 == 10728315) then
                            Av = not bF:IsA("ProximityPrompt")
                        end
                        if Av then
                            return false
                        elseif xv.fireproximityprompt then
                            return pcall(fireproximityprompt, bF)
                        else
                            return pcall(function()
                                bF:InputHoldBegin()
                                task.wait(0.05)
                                bF:InputHoldEnd()
                            end)
                        end
                    end
                end
                Kw_32 = (Kw_32 + 33) % 40
            else
                local Lz = bit32.rrotate(bit32.bxor(bit32.lrotate(Kw_32, 15), string.byte(tostring(ya))), 10)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Lz, 1246541993), 2913370924), (bit32.bxor(bit32.band(Lz, 3048425302), 2351708264))), 2913370924), 2351708264) ~= Lz then
                    x5 = fn1097
                    wO = fns.fn434
                else
                    wO = fn1097
                    x5 = fns.fn434
                end
                Kw_32 = (Kw_32 + 23) % 40
            end
        else
            Kw_2 = (vector.create((Kw_32 * 6 + 9) % 11 + 1, (Kw_32 * 5 + 3) % 13 + 1, (Kw_32 * 6 + 9) % 17 + 1))
            Kw_24 = (vector.create((Kw_32 * 4 + 6) % 11 + 1, (Kw_32 * 9 + 1) % 13 + 1, (Kw_32 * 4 + 14) % 17 + 1))
            local LB = vector.dot(Kw_2, Kw_24)
            if LB * LB <= vector.dot(Kw_2, Kw_2) * vector.dot(Kw_24, Kw_24) then
                xI = fns.fn457
            else
                x_ = fns.fn457
            end
            Kw_32 = (Kw_32 + 33) % 40
        end
    elseif Kw_12 <= 9 then
        if Kw_32 * 54141831 + 4 + 1 <= Kw_32 * 54141831 + 4 + 1 + 3 then
            wQ = fns.fn548
            xQ = fn937
        else
            xQ = fns.fn548
            wQ = fn937
        end
        Kw_32 = (Kw_32 + 3) % 40
    else
        Kw_12 = (vector.create((Kw_32 * 2 + 2) % 11 + 1, (Kw_32 * 9 + 12) % 13 + 1, (Kw_32 * 8 + 14) % 17 + 1))
        Kw_2 = (vector.create((Kw_32 * 1 + 1) % 11 + 1, (Kw_32 * 8 + 6) % 13 + 1, (Kw_32 * 12 + 9) % 17 + 1))
        Kw_24 = (vector.create((Kw_32 * 5 + 3) % 11 + 1, (Kw_32 * 7 + 12) % 13 + 1, (Kw_32 * 3 + 6) % 17 + 1))
        Kw_14 = (vector.create((Kw_32 * 2 + 8) % 11 + 1, (Kw_32 * 6 + 4) % 13 + 1, (Kw_32 * 6 + 6) % 17 + 1))
        if vector.dot(vector.cross(Kw_12, Kw_2), (vector.cross(Kw_24, Kw_14))) == vector.dot(Kw_12, Kw_24) * vector.dot(Kw_2, Kw_14) - vector.dot(Kw_12, Kw_14) * vector.dot(Kw_2, Kw_24) then
            xz = fn717
            xg = fns.fn642
        else
            xg = fn717
            xz = fns.fn642
        end
        Kw_32 = (Kw_32 + 23) % 40
    end
until (Kw_32 * 37 + 23) % 40 == 7
for k, v in pairs(yt.Animals) do
    if type(v) == "table" then
        Kw_32 = v.DisplayName or k
        xB[tostring(Kw_32)] = k
        xB[k] = k
    end
end
xm, yf, yw, xw, wM, xN, xe, w1, wP, xO, xs, w2, wK, yc, w0, yu, x3, xC, ye = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
xm = fn761
yf = fn1224
yw = function()
    local dn
    wX(function(dp)
        local BJ = not dn and xz(dp) and yf(dp, xu.Clean)
        if BJ then
            dn = dp
        end
    end)
    return dn
end
xw = function()
    local dv
    wX(function(dx)
        local BL = not dv and xg(dx) and yf(dx, xu.TankFish)
        if BL then
            dv = dx
        end
    end)
    return dv
end
wM = function()
    local BR
    BR = 0
    wX(function(dJ)
        if xz(dJ) then
            BR += 1
        end
    end)
    local BS = tonumber(yr:GetAttribute("DirtyInHand"))
    if BS and BS > BR then
        return BS
    end
    return BR
end
xN = fns.fn452
xe = fns.fn366
w1 = fn727
wP = function(d4)
    if not d4 or not d4.Parent then
        return false
    end
    local B5_1 = yg()
    local B4 = xM()
    if not B5_1 or not B4 then
        return false
    elseif d4.Parent == B5_1 then
        return true
    else
        local B6_1 = pcall(function()
            B4:EquipTool(d4)
        end)
        return B6_1 and d4.Parent == B5_1
    end
end
xO = function()
    local Cc = xM()
    if Cc then
        pcall(function()
            Cc:UnequipTools()
        end)
    end
end
xs = fn762
w2 = fn1091
wK = fn1317
yc = function()
    local CC
    CC = nil
    CC = nil
    local connection = xR("TankOpen").OnClientEvent:Connect(function(eC, eD)
        CC = { list = eC, cap = eD }
    end)
    pcall(function()
        xA.TankEdit:FireServer()
    end)
    local CE = os.clock()
    while true do
        local CF = CC == nil and os.clock() - CE < 2 and w3()
        if CF then
            task.wait(0.05)
            continue
        end
        break
    end
    connection:Disconnect()
    local CD_1 = CC and type(CC.list) == "table"
    if CD_1 then
        xu.TankAnimals = CC.list
        local CD_2 = tonumber(CC.cap) or xu.TankCap
        xu.TankCap = CD_2
        return true
    end
    return false
end
w0 = fn1050
yu = fns.fn534
x3 = fn1072
xC = function()
    local CV
    CV = nil
    CV = nil
    local connection = xR("PetsOpen").OnClientEvent:Connect(function(e7)
        CV = e7
    end)
    local CX = x3()
    if CX then
        local CY_1 = CX:FindFirstAncestorWhichIsA("BasePart") or CX.Parent
        local CZ = CY_1
        if CY_1 then
            CY_1 = CZ:IsA("BasePart")
        end
        if CY_1 then
            xj()
            x5(CZ.CFrame * CFrame.new(0, 3, 0))
            task.wait(0.12)
        end
        w6(CX)
    end
    local CX_1 = os.clock()
    while true do
        local CY_2 = CV == nil and os.clock() - CX_1 < 2 and w3()
        if CY_2 then
            task.wait(0.05)
            continue
        end
        break
    end
    connection:Disconnect()
    if type(CV) == "table" then
        xu.Pets = CV
        return true
    end
    return false
end
ye = function()
    if xu.Busy then
        return
    end
    if not xu.Sell.SellTank and not xu.Sell.SellInventory then
        return
    end
    xu.Busy = true
    if xu.Sell.SellTank then
        yc()
        local TankAnimals = xu.TankAnimals
        if type(TankAnimals) == "table" then
            for i, v in ipairs(TankAnimals) do
                local Da = v
                local C3_2 = not w3() or not xu.Sell.Enabled
                if C3_2 then
                    break
                end
                local C3_3 = type(Da) == "table" and Da.Id ~= nil and yu(Da, xu.Sell)
                if C3_3 then
                    pcall(function()
                        xA.TankSell:FireServer(Da.Id)
                    end)
                    task.wait(0.1)
                end
            end
        end
    end
    local C3_4 = xu.Sell.SellInventory and w3() and xu.Sell.Enabled
    if C3_4 then
        xC()
        local Pets = xu.Pets
        if type(Pets) == "table" then
            for i, v in ipairs(Pets) do
                local Dg = v
                local C3_6 = not w3() or not xu.Sell.Enabled
                if C3_6 then
                    break
                end
                local C3_7 = type(Dg) == "table" and Dg.Id ~= nil and yu(Dg, xu.Sell)
                if C3_7 then
                    pcall(function()
                        xA.PetSell:FireServer(Dg.Id)
                    end)
                    task.wait(0.1)
                end
            end
        end
    end
    xu.Busy = false
end
connection2, connection3, connection4, connection5, connection6, connection7, connection8, connection9, connection10, connection11, connection12 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
connection2 = xR("GrabStart").OnClientEvent:Connect(onOnClientEvent)
connection3 = xR("GrabState").OnClientEvent:Connect(fns.onOnClientEvent2)
connection4 = xR("GrabEnd").OnClientEvent:Connect(onOnClientEvent3)
connection5 = xR("CleanStart").OnClientEvent:Connect(fns.onOnClientEvent4)
connection6 = xR("CleanDone").OnClientEvent:Connect(onOnClientEvent5)
connection7 = xR("CleanEnd").OnClientEvent:Connect(fns.onOnClientEvent6)
connection8 = xR("BackpackFull").OnClientEvent:Connect(fns.onOnClientEvent7)
connection9 = xR("QuestState").OnClientEvent:Connect(onOnClientEvent8)
connection10 = xR("TankChanged").OnClientEvent:Connect(fns.onOnClientEvent9)
connection11 = xR("TankOpen").OnClientEvent:Connect(onOnClientEvent10)
connection12 = xR("PetsChanged").OnClientEvent:Connect(fns.onOnClientEvent11)
if (connection11 and not connection4 or not connection12 and connection5) and ((connection11 or not connection9) and (not connection12 or not connection9)) or not ((connection11 and not connection4 or not connection12 and connection5) and ((connection11 or not connection9) and (not connection12 or not connection9))) then
    xy.Track(fns.fn477)
    pcall(fn856)
else
    xy.Track(fns.fn477)
    pcall(fn856)
end
Library, xo, SaveManager, Toggles, Options, Kw_2, w4, x4, xY, xT, xL, xG, wW, w7, yj, xD, xU, xV, xH, yi, xn, wR, xJ, wU, wN, yl, xS, w8, yv, w_, ys, yd, x1, wT, yp, yq, xx, Kw_12, Kw_32, Kw_4 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
wW = fns.fn90
w7 = function(gL)
    local DK
    if not gL or not gL.Parent then
        return 0
    end
    DK = {}
    for i, child in ipairs(gL:GetChildren()) do
        local DL_1 = tonumber(child.Name)
        if DL_1 then
            table.insert(DK, DL_1)
        end
    end
    if #DK == 0 then
        return 0
    end
    pcall(function()
        xA.CleanRemove:FireServer(DK)
    end)
    return #DK
end
yj = fn806
xD = fns.fn613
xU = fn1408
xV = fn901
xH = fn1231
yi = function()
    local QuestState = xu.QuestState
    if type(QuestState) ~= "table" then
        pcall(function()
            xA.QuestHello:FireServer()
        end)
        return
    end
    local Quests = QuestState.Quests
    if type(Quests) ~= "table" then
        return
    end
    for i, v in ipairs(Quests) do
        local EG = i
        local EA_1 = type(v) == "table" and v.Done == true and v.Claimed ~= true
        if EA_1 then
            pcall(function()
                xA.QuestClaim:FireServer(EG)
            end)
            task.wait(0.2)
        end
    end
end
xn = fns.fn52
wR = fns.fn270
xJ = fn1140
if (Kw_2 and false or (xJ or not wN)) and ((Kw_4 or wN) and (not Kw_2 and not Kw_2)) or not ((Kw_2 and false or (xJ or not wN)) and ((Kw_4 or wN) and (not Kw_2 and not Kw_2))) then
    wU = fns.fn656
    wN = fns.fn77
    yl = fn1275
else
    yl = fns.fn656
    wU = fns.fn77
    wN = fn1275
end
xS = fn1177
w8 = fns.fn279
if (not Kw_12 and Kw_12 and (not Kw_12 or not Kw_12) or (not yp or not Kw_12) and (yp and yp)) and not (not Kw_12 and Kw_12 and (not Kw_12 or not Kw_12) or (not yp or not Kw_12) and (yp and yp)) then
    wR = function(jG, jH, jI, jJ)
        jG.Gen = jG.Gen + 1
        local Gen = jG.Gen
        task.spawn(function()
            local Fy_2
            while true do
                local Fx = w3() and jG.Enabled and jG.Gen == Gen
                local Fx_2
                if Fx then
                    Fx_2, Fy_2 = pcall(jJ, Gen)
                    if not Fx_2 then
                        warn("[Surf And Rescue] " .. jH .. ": " .. tostring(Fy_2))
                    end
                    task.wait(jI())
                    continue
                end
                break
            end
        end)
    end
else
    yv = function(jG, jH, jI, jJ)
        jG.Gen = jG.Gen + 1
        local Gen = jG.Gen
        task.spawn(function()
            local Fy_1
            while true do
                local Fx = w3() and jG.Enabled and jG.Gen == Gen
                local Fx_1
                if Fx then
                    Fx_1, Fy_1 = pcall(jJ, Gen)
                    if not Fx_1 then
                        warn("[Surf And Rescue] " .. jH .. ": " .. tostring(Fy_1))
                    end
                    task.wait(jI())
                    continue
                end
                break
            end
        end)
    end
end
xy.SetAutoGrab = fn754
xy.SetAutoClean = fn915
xy.SetAutoQuests = fn684
xy.SetAutoPool = function(j7)
    local Gen
    local Pool2 = xu.Pool
    local FV = j7 and true or false
    Pool2.Enabled = FV
    if xu.Pool.Enabled then
        local Pool = xu.Pool
        Pool.Gen = Pool.Gen + 1
        Gen = xu.Pool.Gen
        task.spawn(function()
            xH(Gen)
        end)
    else
        xj()
    end
end
xy.SetAutoTankFish = fn776
xy.SetAutoUpgradeHose = fns.fn363
xy.SetAutoUpgradePool = fns.fn664
xy.SetAutoUpgradeTank = fns.fn321
xy.SetAutoSell = fn1290
xy.SetEsp = fns.fn204
xy.Track(fns.fn340)
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
if (ys or Library) and (xn or not Kw_32) and (xn and not ys or not Kw_12 and Kw_12) or not ((ys or Library) and (xn or not Kw_32) and (xn and not ys or not Kw_12 and Kw_12)) then
    xo = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
else
    loadstring(game:HttpGet(SaveManager .. "addons/ThemeManager.lua"))()
    xo = loadstring(game:HttpGet(SaveManager .. "addons/SaveManager.lua"))()
end
Toggles, Options = Library.Toggles, Library.Options
if ((xV and yd or not SaveManager and xV) and (not SaveManager and not yd and (not SaveManager and SaveManager)) or (not xV and not yd and (yd or not SaveManager) or (yd or SaveManager) and (xV and xV))) and not ((xV and yd or not SaveManager and xV) and (not SaveManager and not yd and (not SaveManager and SaveManager)) or (not xV and not yd and (yd or not SaveManager) or (yd or SaveManager) and (xV and xV))) then
    w4(w_, ys)
    x0 = ys:CreateWindow({
        Font = Enum.Font.BuilderSans,
        Animations = { TabSwitch = true },
        TabSwipeFrom = "bottom",
        SidebarCompacted = true,
        CornerRadius = 0,
        Icon = 132608042600488,
        Title = "Ouroboros",
        ShowCustomCursor = false,
        Footer = { "|", "|", Kw_16, { Text = Library, Copyable = true }, xP },
        NotifySide = "Right"
    })
    Kw_2 = {}
    Kw_2.Info = x0:AddTab("Info", "info")
    Kw_2.Main = x0:AddTab("Main", "gamepad-2")
    Kw_2.Visuals = x0:AddTab("Visuals", "eye")
    Kw_2.Player = x0:AddTab("Player", "person-standing")
    Kw_2.Settings = x0:AddTab("Settings", "settings")
    xy = fn1132
else
    Kw_26(xy, Library)
    Kw_2 = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = xP, Copyable = true }, "|", x0, "|", Kw_16 },
        Icon = 132608042600488,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    w4 = {}
    w4.Info = Kw_2:AddTab("Info", "info")
    w4.Main = Kw_2:AddTab("Main", "gamepad-2")
    w4.Visuals = Kw_2:AddTab("Visuals", "eye")
    w4.Player = Kw_2:AddTab("Player", "person-standing")
    w4.Settings = Kw_2:AddTab("Settings", "settings")
    w_ = fn1132
    ys = fns.fn641
end
yd = fns.fn232
x1 = fn1163
wT = fn814
yp = fns.fn251
x4 = "#7fd47f"
xY = "#6ec1ff"
xT = "#e8a34d"
xL = {
    WalkSpeedEnabled = false,
    WalkSpeed = 32,
    WalkSnapshots = {},
    InfJump = false,
    InfJumpConn = nil,
    NoClip = false,
    NoClipConn = nil,
    NoClipSnapshots = {},
    Fly = false,
    FlySpeed = 60,
    FlyConn = nil,
    FlyPlatformStand = nil,
    InstantPP = false,
    InstantConn = nil,
    InstantSnapshots = {}
}
Kw_18 = function()
    local connection
    connection = nil
    local H3
    H3 = function(lN)
        if not lN then
            return
        end
        if xL.WalkSnapshots[lN] == nil then
            xL.WalkSnapshots[lN] = lN.WalkSpeed
        end
        lN.WalkSpeed = xL.WalkSpeed
    end
    xy.SetWalkSpeedEnabled = function(lQ)
        local GV = lQ and true or false
        xL.WalkSpeedEnabled = GV
        local GU_1 = xM()
        if xL.WalkSpeedEnabled then
            H3(GU_1)
        else
            if GU_1 and xL.WalkSnapshots[GU_1] ~= nil then
                GU_1.WalkSpeed = xL.WalkSnapshots[GU_1]
            end
        end
    end
    xy.SetWalkSpeedValue = function(lY)
        xL.WalkSpeed = lY
        if xL.WalkSpeedEnabled then
            H3(xM())
        end
    end
    xy.SetInfJump = function(l1)
        local G3 = l1 and true or false
        xL.InfJump = G3
        if xL.InfJumpConn then
            xL.InfJumpConn:Disconnect()
            xL.InfJumpConn = nil
        end
        if not xL.InfJump then
            return
        end
        xL.InfJumpConn = wJ.UserInputService.JumpRequest:Connect(function()
            local G0 = not w3() or not xL.InfJump
            if G0 then
                return
            end
            local G0_1 = xM()
            if G0_1 then
                G0_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end)
    end
    xy.SetNoClip = function(md)
        local Hn
        local Hp = md and true or false
        xL.NoClip = Hp
        if xL.NoClipConn then
            xL.NoClipConn:Disconnect()
            xL.NoClipConn = nil
        end
        local function Ho_1()
            for k, v in pairs(xL.NoClipSnapshots) do
                if k and k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(xL.NoClipSnapshots)
        end
        if not xL.NoClip then
            Ho_1()
            return
        end
        Hn = function()
            local Hd = yg()
            if not Hd then
                return
            end
            for i, descendant in ipairs(Hd:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if xL.NoClipSnapshots[descendant] == nil then
                        xL.NoClipSnapshots[descendant] = descendant.CanCollide
                    end
                    descendant.CanCollide = false
                end
            end
        end
        Hn()
        xL.NoClipConn = wJ.RunService.Stepped:Connect(function()
            local Hl = w3() and xL.NoClip
            if Hl then
                Hn()
            end
        end)
    end
    xy.SetFly = function(my)
        local HC = my and true or false
        xL.Fly = HC
        if xL.FlyConn then
            xL.FlyConn:Disconnect()
            xL.FlyConn = nil
        end
        local HB_1 = xM()
        if not xL.Fly then
            if HB_1 and xL.FlyPlatformStand ~= nil then
                HB_1.PlatformStand = xL.FlyPlatformStand
            end
            xL.FlyPlatformStand = nil
            return
        end
        if HB_1 then
            xL.FlyPlatformStand = HB_1.PlatformStand
            HB_1.PlatformStand = true
        end
        xL.FlyConn = wJ.RunService.RenderStepped:Connect(function()
            local Hu = not w3()
            local HA = if Hu then 1 else 0
            local Hy = 224 * HA + 3563 * (1 - HA)
            local Hz = 1604 * HA + 2937 * (1 - HA)
            if not ((Hy * 798 + Hz * 1189 + Hy * Hz) % 16777213 == 2445204) then
                Hu = not xL.Fly
            end
            if Hu then
                return
            end
            if wJ.UserInputService:GetFocusedTextBox() then
                return
            end
            local Hu_1 = x7()
            local CurrentCamera = wV.CurrentCamera
            if not (Hu_1 and CurrentCamera) then
                return
            end
            local Hw_1 = Vector3.zero
            if wJ.UserInputService:IsKeyDown(Enum.KeyCode.W) then
                Hw_1 += CurrentCamera.CFrame.LookVector
            end
            if wJ.UserInputService:IsKeyDown(Enum.KeyCode.S) then
                Hw_1 -= CurrentCamera.CFrame.LookVector
            end
            if wJ.UserInputService:IsKeyDown(Enum.KeyCode.A) then
                Hw_1 -= CurrentCamera.CFrame.RightVector
            end
            if wJ.UserInputService:IsKeyDown(Enum.KeyCode.D) then
                Hw_1 += CurrentCamera.CFrame.RightVector
            end
            if wJ.UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                Hw_1 += Vector3.yAxis
            end
            if wJ.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                Hw_1 -= Vector3.yAxis
            end
            if Hw_1.Magnitude > 0 then
                Hu_1.AssemblyLinearVelocity = Hw_1.Unit * xL.FlySpeed
            else
                Hu_1.AssemblyLinearVelocity = Vector3.zero
            end
        end)
    end
    xy.SetFlySpeed = function(mS)
        xL.FlySpeed = mS
    end
    xy.SetInstantProximityPrompt = function(mU)
        local HO
        local HQ = mU and true or false
        xL.InstantPP = HQ
        if xL.InstantConn then
            xL.InstantConn:Disconnect()
            xL.InstantConn = nil
        end
        local function HP_1()
            for k, v in pairs(xL.InstantSnapshots) do
                if k and k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(xL.InstantSnapshots)
        end
        if not xL.InstantPP then
            HP_1()
            return
        end
        HO = function(m1)
            if not m1:IsA("ProximityPrompt") then
                return
            end
            if xL.InstantSnapshots[m1] == nil then
                xL.InstantSnapshots[m1] = {
                    HoldDuration = m1.HoldDuration,
                    MaxActivationDistance = m1.MaxActivationDistance,
                    RequiresLineOfSight = m1.RequiresLineOfSight
                }
            end
            m1.HoldDuration = 0
            m1.MaxActivationDistance = 50
            m1.RequiresLineOfSight = false
        end
        for i, descendant in ipairs(wV:GetDescendants()) do
            HO(descendant)
        end
        xL.InstantConn = wV.DescendantAdded:Connect(function(m6)
            if xL.InstantPP then
                HO(m6)
            end
        end)
    end
    local function onCharacterAdded(na)
        task.defer(function()
            if not w3() then
                return
            end
            local Humanoid = na:WaitForChild("Humanoid", 10)
            if not Humanoid then
                return
            end
            if xL.WalkSpeedEnabled then
                H3(Humanoid)
            end
            if xL.NoClip then
                xy.SetNoClip(true)
            end
            if xL.Fly then
                xy.SetFly(true)
            end
        end)
    end
    if yr.Character then
        onCharacterAdded(yr.Character)
    end
    connection = yr.CharacterAdded:Connect(onCharacterAdded)
    xy.Track(function()
        connection:Disconnect()
    end)
    xy.Track(function()
        xy.SetWalkSpeedEnabled(false)
        xy.SetInfJump(false)
        xy.SetNoClip(false)
        xy.SetFly(false)
        xy.SetInstantProximityPrompt(false)
    end)
end
Kw_14 = function()
    local nv
    local nq
    nq = "Unknown"
    pcall(function()
        local H7_1
        local H6_1
        if type(identifyexecutor) == "function" then
            H7_1, H6_1 = identifyexecutor()
            local H8 = H7_1 ~= ""
            local H9 = type(H7_1) == "string" and H8
            if H9 then
                local H8_1 = type(H6_1) == "string" and H6_1 ~= "" and H7_1 .. " " .. H6_1
                nq = H8_1 or H7_1
            end
        end
    end)
    nv = os.clock()
    local function nw()
        local Ib = math.floor(os.clock() - nv)
        if Ib < 60 then
            return Ib .. "s"
        elseif Ib < 3600 then
            return string.format("%dm %ds", Ib // 60, Ib % 60)
        else
            return string.format("%dh %dm", Ib // 3600, Ib % 3600 // 60)
        end
    end
    local UserGroup = w4.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = yr, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(yp("User", yr.DisplayName .. " @" .. yr.Name, x4), true)
    UserGroup:AddLabel(yp("UserId", tostring(yr.UserId), xY), true)
    UserGroup:AddLabel(yp("Executor", nq, x4), true)
    UserGroup:AddDivider()
    local Label5 = UserGroup:AddLabel(yp("Session", nw(), xT), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            w_(yr.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            w_("https://www.roblox.com/users/" .. tostring(yr.UserId) .. "/profile", "Copied profile link")
        end
    })
    local DiscordGroup = w4.Info:AddRightGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = xP,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    local SessionGroup = w4.Info:AddRightGroupbox("Session", "signal")
    local Label4 = SessionGroup:AddLabel(yp("Game", x0, x4), true)
    local Label3 = SessionGroup:AddLabel(yp("Players", tostring(#wJ.Players:GetPlayers()), xY), true)
    local Label2 = SessionGroup:AddLabel(yp("Job", string.sub(game.JobId, 1, 8) .. "...", xT), true)
    local Label = SessionGroup:AddLabel(yp("Ping", "0 ms", x4), true)
    SessionGroup:AddButton({
        Text = "Rejoin Place",
        Func = function()
            pcall(function()
                wJ.TeleportService:Teleport(game.PlaceId, yr)
            end)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            w_(game.JobId, "Copied Job ID")
        end
    })
    local SocialsGroup = w4.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({
        Text = "Copy Discord",
        Func = function()
            w_(xP, "Copied Discord")
        end
    })
    SocialsGroup:AddButton({
        Text = "Copy Rscripts",
        Func = function()
            w_(xK, "Copied Rscripts")
        end
    })
    SocialsGroup:AddButton({
        Text = "Copy Website",
        Func = function()
            w_(xF, "Copied Website")
        end
    })
    task.spawn(function()
        local Ij = false
        repeat
            local Ig
            if w3() then
                Label5:SetText(yp("Session", nw(), xT))
                Label3:SetText(yp("Players", tostring(#wJ.Players:GetPlayers()), xY))
                Ig = 0
                pcall(function()
                    Ig = math.floor(wJ.Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                Label:SetText(yp("Ping", tostring(Ig) .. " ms", x4))
                Label4:SetText(yp("Game", x0, x4))
                Label2:SetText(yp("Job", string.sub(game.JobId, 1, 8) .. "...", xT))
                task.wait(1)
            else
                Ij = true
            end
        until Ij
    end)
end
yq = fns.fn522
xx = function(oE, oF)
    local function oG()
        oF.Rarities = Options[oE .. "Rarity"].Value
        oF.Species = Options[oE .. "Species"].Value
        oF.Sizes = Options[oE .. "Size"].Value
        oF.Mutations = Options[oE .. "Mutation"].Value
        oF.MinWeight = Options[oE .. "MinWeight"].Value
        oF.MaxWeight = Options[oE .. "MaxWeight"].Value
    end
    Options[oE .. "Rarity"]:OnChanged(oG)
    Options[oE .. "Species"]:OnChanged(oG)
    Options[oE .. "Size"]:OnChanged(oG)
    Options[oE .. "Mutation"]:OnChanged(oG)
    Options[oE .. "MinWeight"]:OnChanged(oG)
    Options[oE .. "MaxWeight"]:OnChanged(oG)
    oG()
end
Kw_12 = function()
    ys(w4.Main)
    local GrabGroup = w4.Main:AddLeftGroupbox("Grab", "fish")
    GrabGroup:AddToggle("AutoGrab", { Text = "Auto Grab", Default = false })
    GrabGroup:AddToggle("GrabOnlyWild", { Text = "Only Wild", Default = true })
    GrabGroup:AddToggle("GrabOnlyDirty", { Text = "Only Dirty", Default = true })
    GrabGroup:AddSlider("GrabTapsPerSecond", { Text = "Taps / Second", Default = 16, Min = 4, Max = 30, Rounding = 0 })
    yq(GrabGroup, "Grab", {
        Rarities = table.clone(xp),
        Sizes = table.clone(xl),
        Mutations = table.clone(xh),
        MinWeight = 0,
        MaxWeight = 500000
    })
    local CleanGroup = w4.Main:AddLeftGroupbox("Clean", "droplets")
    CleanGroup:AddToggle("AutoClean", { Text = "Auto Clean", Default = false })
    CleanGroup:AddSlider("CleanInterval", { Text = "Clean Interval (s)", Default = 0.35, Min = 0.1, Max = 2, Rounding = 2 })
    yq(CleanGroup, "Clean", {
        Rarities = table.clone(xp),
        Sizes = table.clone(xl),
        Mutations = table.clone(xh),
        MinWeight = 0,
        MaxWeight = 500000
    })
    local TankGroup = w4.Main:AddLeftGroupbox("Tank", "container")
    TankGroup:AddToggle("AutoTankFish", { Text = "Auto Tank Fish", Default = false })
    TankGroup:AddSlider("TankInterval", { Text = "Tank Interval (s)", Default = 0.05, Min = 0.02, Max = 1, Rounding = 2 })
    yq(TankGroup, "Tank", {
        Rarities = table.clone(xp),
        Sizes = table.clone(xl),
        Mutations = table.clone(xh),
        MinWeight = 0,
        MaxWeight = 500000
    })
    local PoolGroup = w4.Main:AddRightGroupbox("Pool", "life-buoy")
    local Label = PoolGroup:AddLabel(x1("Status: Idle"), true)
    PoolGroup:AddToggle("AutoPool", { Text = "Auto Go on Swimming Pool", Default = false })
    local function oY()
        local Is_1
        local Ir_1
        Is_1, Ir_1 = xe()
        local It = yg()
        local Iu = It and It:GetAttribute("PoolSeat") ~= nil
        local It_1 = "Idle"
        if xu.Grabbing then
            It_1 = "Digging"
        elseif xu.Cleaning then
            It_1 = "Cleaning"
        elseif xu.Busy then
            It_1 = "Busy"
        else
            if xu.Pool.Enabled and Iu then
                It_1 = "Swimming"
            elseif xu.Pool.Enabled then
                It_1 = "Pool Ready"
            elseif xu.Grab.Enabled then
                It_1 = "Grab On"
            elseif xu.Clean.Enabled then
                It_1 = "Clean On"
            elseif xu.TankFish.Enabled then
                It_1 = "Tank On"
            end
        end
        return string.format("Status: %s | Dirty Bag %d/%d", It_1, Is_1, Ir_1)
    end
    task.spawn(function()
        while w3() do
            pcall(function()
                Label:SetText(x1(oY()))
            end)
            task.wait(0.5)
        end
    end)
    local QuestsGroup = w4.Main:AddRightGroupbox("Quests", "scroll-text")
    QuestsGroup:AddToggle("AutoClaimQuests", { Text = "Auto Claim Quests", Default = false })
    local UpgradesGroup = w4.Main:AddRightGroupbox("Upgrades", "arrow-up")
    UpgradesGroup:AddToggle("AutoUpgradeHose", { Text = "Auto Upgrade Hose", Default = false })
    UpgradesGroup:AddToggle("AutoUpgradePool", { Text = "Auto Upgrade Pool", Default = false })
    UpgradesGroup:AddToggle("AutoUpgradeTank", { Text = "Auto Upgrade Tank", Default = false })
    local SellGroup = w4.Main:AddRightGroupbox("Sell", "banknote")
    SellGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
    SellGroup:AddToggle("SellTankFish", { Text = "Sell Tank Fish", Default = true })
    SellGroup:AddToggle("SellInventoryFish", { Text = "Sell Inventory Fish", Default = false })
    SellGroup:AddDropdown("SellMode", { Text = "Sell Mode", Values = xd, Default = 1 })
    yq(SellGroup, "Sell", {
        Rarities = { "Common", "Uncommon" },
        Sizes = table.clone(xl),
        Mutations = table.clone(xh),
        MinWeight = 0,
        MaxWeight = 500000
    })
    xx("Grab", xu.Grab)
    xx("Clean", xu.Clean)
    xx("Tank", xu.TankFish)
    xx("Sell", xu.Sell)
    Toggles.GrabOnlyWild:OnChanged(function(po)
        local Grab = xu.Grab
        local ID = po and true or false
        Grab.OnlyWild = ID
    end)
    Toggles.GrabOnlyDirty:OnChanged(function(pq)
        local Grab = xu.Grab
        local IK = pq and true or false
        Grab.OnlyDirty = IK
    end)
    xu.Grab.OnlyWild = Toggles.GrabOnlyWild.Value
    xu.Grab.OnlyDirty = Toggles.GrabOnlyDirty.Value
    Options.GrabTapsPerSecond:OnChanged(function(pt)
        xu.Grab.TapsPerSecond = pt
    end)
    xu.Grab.TapsPerSecond = Options.GrabTapsPerSecond.Value
    Options.CleanInterval:OnChanged(function(pv)
        xu.Clean.Interval = pv
    end)
    xu.Clean.Interval = Options.CleanInterval.Value
    Options.TankInterval:OnChanged(function(px)
        xu.TankFish.Interval = px
    end)
    xu.TankFish.Interval = Options.TankInterval.Value
    Options.SellMode:OnChanged(function(pz)
        xu.Sell.Mode = pz
    end)
    xu.Sell.Mode = Options.SellMode.Value
    Toggles.SellTankFish:OnChanged(function(pB)
        local Sell = xu.Sell
        local IO = pB and true or false
        Sell.SellTank = IO
    end)
    Toggles.SellInventoryFish:OnChanged(function(pD)
        local Sell = xu.Sell
        local IV = pD and true or false
        Sell.SellInventory = IV
    end)
    xu.Sell.SellTank = Toggles.SellTankFish.Value
    xu.Sell.SellInventory = Toggles.SellInventoryFish.Value
    Toggles.AutoGrab:OnChanged(function(pF)
        xy.SetAutoGrab(pF)
    end)
    Toggles.AutoClean:OnChanged(function(pI)
        xy.SetAutoClean(pI)
    end)
    Toggles.AutoTankFish:OnChanged(function(pK)
        xy.SetAutoTankFish(pK)
    end)
    Toggles.AutoPool:OnChanged(function(pM)
        xy.SetAutoPool(pM)
    end)
    Toggles.AutoClaimQuests:OnChanged(function(pO)
        xy.SetAutoQuests(pO)
    end)
    Toggles.AutoUpgradeHose:OnChanged(function(pQ)
        xy.SetAutoUpgradeHose(pQ)
    end)
    Toggles.AutoUpgradePool:OnChanged(function(pS)
        xy.SetAutoUpgradePool(pS)
    end)
    Toggles.AutoUpgradeTank:OnChanged(function(pU)
        xy.SetAutoUpgradeTank(pU)
    end)
    Toggles.AutoSell:OnChanged(function(pW)
        xy.SetAutoSell(pW)
    end)
end
Kw_32 = fns.fn364
Kw_4 = fn920
xG = {
    AntiAfk = true,
    NoGameplayPaused = true,
    AutoReconnect = false,
    Disable3D = false,
    FpsBoost = false,
    AfkConn = nil,
    AfkTask = nil,
    AfkCount = 0,
    ReconnectConns = {},
    FpsSnapshots = {},
    FpsConn = nil
}
Kw_27 = function()
    local function qD()
        if not wV.CurrentCamera then
            return false
        end
        local I7_1 = not xc(wJ.VirtualUser.CaptureController) or not xc(wJ.VirtualUser.ClickButton2)
        if I7_1 then
            return false
        end
        local I7_2 = pcall(function()
            wJ.VirtualUser:CaptureController()
            wJ.VirtualUser:ClickButton2(Vector2.new())
        end)
        if I7_2 then
            xG.AfkCount = xG.AfkCount + 1
        end
        return I7_2
    end
    xy.SetAntiAfk = function(qQ)
        local Ji = qQ and true or false
        xG.AntiAfk = Ji
        if xG.AfkConn then
            xG.AfkConn:Disconnect()
            xG.AfkConn = nil
        end
        if xG.AfkTask then
            pcall(task.cancel, xG.AfkTask)
            xG.AfkTask = nil
        end
        if not xG.AntiAfk then
            return
        end
        xG.AfkConn = yr.Idled:Connect(function()
            local I9 = w3() and xG.AntiAfk
            if I9 then
                qD()
            end
        end)
        xG.AfkTask = task.spawn(function()
            local Je = os.clock()
            while true do
                local Jf = w3() and xG.AntiAfk
                if Jf then
                    task.wait(1)
                    local Jf_1 = not w3() or not xG.AntiAfk
                    if Jf_1 then
                        break
                    end
                    if os.clock() - Je >= 60 then
                        Je = os.clock()
                        qD()
                    end
                    continue
                end
                break
            end
        end)
    end
    xy.SetNoGameplayPaused = function(q7)
        local Jl = q7 and true or false
        xG.NoGameplayPaused = Jl
    end
    xy.SetAutoReconnect = function(q9)
        local Jq = q9 and true or false
        xG.AutoReconnect = Jq
        for i, v in ipairs(xG.ReconnectConns) do
            v:Disconnect()
        end
        table.clear(xG.ReconnectConns)
        if not xG.AutoReconnect then
            return
        end
        table.insert(xG.ReconnectConns, wJ.TeleportService.TeleportInitFailed:Connect(function()
            local Jn = not w3() or not xG.AutoReconnect
            if Jn then
                return
            end
            task.wait(1)
            local Jn_1 = w3() and xG.AutoReconnect
            if Jn_1 then
                pcall(function()
                    wJ.TeleportService:Teleport(game.PlaceId, yr)
                end)
            end
        end))
    end
    xy.SetDisable3D = function(ro)
        local Jz = ro and true or false
        xG.Disable3D = Jz
        pcall(function()
            wJ.RunService:Set3dRenderingEnabled(not xG.Disable3D)
        end)
    end
    xy.SetFpsBoost = function(rt)
        local JV
        local JX = rt and true or false
        xG.FpsBoost = JX
        if xG.FpsConn then
            xG.FpsConn:Disconnect()
            xG.FpsConn = nil
        end
        local function JW_1()
            for k, v in pairs(xG.FpsSnapshots) do
                local JG = k
                if JG and JG.Parent then
                    for k, v in pairs(v) do
                        local JM = k
                        local JO = v
                        pcall(function()
                            JG[JM] = JO
                        end)
                    end
                end
            end
            table.clear(xG.FpsSnapshots)
        end
        if not xG.FpsBoost then
            JW_1()
            return
        end
        JV = function(rG)
            if xG.FpsSnapshots[rG] then
                return
            end
            local JP = (rG:IsA("ParticleEmitter"))
            local JT = if JP then 1 else 0
            local JR = 2381 * JT + 984 * (1 - JT)
            local JS = 3037 * JT + 3902 * (1 - JT)
            if not ((JR * 738 + JS * 204 + JR * JS) % 16777213 == 9607823) then
                JP = rG:IsA("Trail")
            end
            if not JP then
                JP = rG:IsA("Beam")
            end
            if not JP then
                JP = rG:IsA("Fire")
            end
            if not JP then
                JP = rG:IsA("Smoke")
            end
            if not JP then
                JP = rG:IsA("Sparkles")
            end
            if JP then
                xG.FpsSnapshots[rG] = { Enabled = rG.Enabled }
                rG.Enabled = false
            end
        end
        for i, descendant in ipairs(wV:GetDescendants()) do
            JV(descendant)
        end
        if xG.FpsSnapshots[wJ.Lighting] == nil then
            xG.FpsSnapshots[wJ.Lighting] = { GlobalShadows = wJ.Lighting.GlobalShadows, FogEnd = wJ.Lighting.FogEnd }
            wJ.Lighting.GlobalShadows = false
        end
        xG.FpsConn = wV.DescendantAdded:Connect(function(rN)
            if xG.FpsBoost then
                JV(rN)
            end
        end)
    end
    xy.Track(function()
        xy.SetAntiAfk(false)
        xy.SetAutoReconnect(false)
        xy.SetDisable3D(false)
        xy.SetFpsBoost(false)
    end)
end
Kw_24 = function()
    ys(w4.Settings)
    local MenuGroup = w4.Settings:AddLeftGroupbox("Menu", "settings")
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    MenuGroup:AddToggle("NoGameplayPaused", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3DRendering", { Text = "Disable 3D Rendering", Default = false })
    MenuGroup:AddToggle("FPSBoost", { Text = "FPS Boost", Default = false })
    MenuGroup:AddToggle("HideUIOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local ScriptGroup = w4.Settings:AddLeftGroupbox("Script", "scroll-text")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            Library:Unload()
        end
    })
    Toggles.AntiAfk:OnChanged(function(r_)
        xy.SetAntiAfk(r_)
    end)
    Toggles.NoGameplayPaused:OnChanged(function(r2)
        xy.SetNoGameplayPaused(r2)
    end)
    Toggles.AutoReconnect:OnChanged(function(r4)
        xy.SetAutoReconnect(r4)
    end)
    Toggles.Disable3DRendering:OnChanged(function(r6)
        xy.SetDisable3D(r6)
    end)
    Toggles.FPSBoost:OnChanged(function(r8)
        xy.SetFpsBoost(r8)
    end)
    xo:SetLibrary(Library)
    xo:SetFolder("MyScriptHub")
    xo:SaveDefault("Evil Hello Kitty")
    xo:ApplyToTab(w4.Settings)
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    SaveManager:SetFolder("OuroborosHub/SurfAndRescue")
    local Kk_2 = SaveManager:BuildConfigSection(w4.Settings)
    if Kk_2 then
        Kk_2:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Default = "", Finished = true, AllowEmpty = true })
        Kk_2:AddButton({
            Text = "Export Config to Clipboard",
            Func = function()
                local J9_1
                local J8_1
                J8_1, J9_1 = pcall(function()
                    if xc(SaveManager.ExportConfig) then
                        return SaveManager:ExportConfig()
                    end
                    error("ExportConfig unavailable")
                end)
                local Ka = J8_1 and type(J9_1) == "string"
                if Ka then
                    w_(J9_1, "Copied config")
                else
                    Library:Notify("Export unavailable", 3)
                end
            end
        })
        Kk_2:AddButton({
            Text = "Import Config from Clipboard Text",
            Func = function()
                local Kg
                Kg = Options.SaveManager_ImportSource and Options.SaveManager_ImportSource.Value or ""
                if Kg == "" then
                    Library:Notify("Paste a config first", 3)
                    return
                end
                local Kh_1 = pcall(function()
                    local Kf = if xc(SaveManager.ImportConfig) then 1 else 0
                    if Kf == 1 then
                        SaveManager:ImportConfig(Kg)
                    elseif xc(SaveManager.LoadConfigFromJSON) then
                        SaveManager:LoadConfigFromJSON(Kg)
                    else
                        error("Import unavailable")
                    end
                end)
                if Kh_1 then
                    Options.SaveManager_ImportSource:SetValue("")
                    Library:Notify("Imported config", 3)
                else
                    Library:Notify("Import failed", 3)
                end
            end
        })
    end
    pcall(function()
        xo:LoadDefault()
    end)
    pcall(function()
        SaveManager:LoadAutoloadConfig()
    end)
end
Kw_18()
Kw_27()
Kw_14()
Kw_12()
Kw_32()
Kw_4()
Kw_24()
xy.SetAntiAfk(Toggles.AntiAfk.Value)
xy.SetNoGameplayPaused(Toggles.NoGameplayPaused.Value)
if Toggles.HideUIOnStart.Value then
    pcall(function()
        Library:Toggle(false)
    end)
end
Kw_32 = 4
repeat
    Kw_23 = {
        "hio",
        "rgc",
        "vctx",
        "easvevthot",
        "iykede",
        "eapqhftkv",
        "fxtqxext",
        "iyexidreif",
        "mawtkvtnxu",
        "lurmgoh",
        "tyeaw"
    }
    local LV = Kw_32
    Kw_12 = Kw_23[LV % 11 + 1]
    if Kw_12:len() <= Kw_12:gsub("(.)", "%1%1", LV % 3 % 2 + 1):len() then
        Library:Notify(x0 .. " " .. Kw_16 .. " loaded", 4)
    else
        Kw_16:Notify(Library .. " " .. x0 .. " loaded", 4)
    end
    Kw_32 = (Kw_32 + 1) % 8
until (Kw_32 * 1 + 2) % 8 == 7
