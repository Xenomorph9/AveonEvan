local qh
local pW
local ph
local qk
local pZ
local pG
local pJ
local Options
local pq
local pM
local pP
local Toggles
local pa
local pw
local EquipBestPets
local qg
local pz
local pV
local qj
local GetPlotCapacity
local pF
local GetPlotPets
local pC
local Library
local p3
local pm
local pO
local p9
local o9
local pR
local qc
local pc
local py
local pU
local pf
local pX
local p_
local pE
local pl
local State
local p5
local EggConfigurations
local pr
local ClaimIndexReward
local pN
local pu
local pQ
local qb
local px
local function fn3(bU)
    local Eggs = pZ:FindFirstChild("Eggs")
    local sp = Eggs and Eggs:FindFirstChild(bU)
    if sp then
        local BasePart = sp:FindFirstChildWhichIsA("BasePart", true)
        if BasePart then
            return BasePart.Position
        end
        return pP[bU]
    end
    return pP[bU]
end
local function fn12(gG)
    return (tostring(gG):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
end
local function fn18(gw, gx)
    local vS = false
    if pm(setclipboard) then
        vS = pcall(setclipboard, gw)
    elseif pm(toclipboard) then
        vS = pcall(toclipboard, gw)
    end
    if vS and gx then
        Library:Notify(gx, 3)
    elseif not vS then
        Library:Notify("Clipboard unavailable", 3)
    end
    return vS
end
local function fn32()
    return not pM.Unloaded
end
local function fn66(fY)
    local Enabled = State.Enabled
    local vA = fY and true or false
    Enabled.EquipBest = vA
    if State.Enabled.EquipBest then
        pJ("EquipBest", 2.5, pq)
    else
        local Gens = State.Gens
        Gens.EquipBest = Gens.EquipBest + 1
    end
end
local function fn99()
    if not pw() then
        return true
    end
    py(pR)
    if not pQ(CFrame.new(pR + Vector3.new(0, 3, 0))) then
        return false
    end
    local s3 = os.clock() + 3
    while true do
        local s4 = qk() and pw() and os.clock() < s3
        if s4 then
            pQ(CFrame.new(pR + Vector3.new(0, 3, 0)))
            task.wait(0.15)
            continue
        end
        break
    end
    return not pw()
end
local function fn114()
    local sg = pZ:FindFirstChild("Plot_" .. qc.Name)
    if sg then
        return sg
    end
    for i, child in ipairs(pZ:GetChildren()) do
        if child.Name == "Plot_" .. qc.Name then
            return child
        end
    end
    return nil
end
local function fn140()
    local leaderstats = qc:FindFirstChild("leaderstats")
    local tJ = leaderstats and leaderstats:FindFirstChild("Money")
    local tI_1 = tJ
    if tJ then
        tJ = tI_1:IsA("ValueBase")
    end
    if tJ then
        local tJ_1 = (tonumber(tI_1.Value))
        local tQ = if tJ_1 then 1 else 0
        local tO = 960 * tQ + 817 * (1 - tQ)
        local tP = 678 * tQ + 2366 * (1 - tQ)
        if not ((tO * 1100 + tP * 3584 + tO * tP) % 16777213 == 4136832) then
            tJ_1 = 0
        end
        return tJ_1
    end
    return 0
end
local function fn177(al, am)
    return al.order < am.order
end
local function fn225(cJ)
    local s6 = cJ and cJ:IsA("Tool")
    if not s6 then
        return false
    end
    local s6_1 = cJ:GetAttribute("IsBat") or cJ:GetAttribute("IsTreadmill") or cJ:GetAttribute("IsTrapTool")
    if s6_1 then
        return false
    end
    local attr = cJ:GetAttribute("OriginalName")
    local s7 = attr == ""
    local s8 = type(attr) ~= "string"
    local tc = if s8 then 1 else 0
    local ta = 558 * tc + 736 * (1 - tc)
    local tb = 1724 * tc + 699 * (1 - tc)
    if not ((ta * 457 + tb * 1550 + ta * tb) % 16777213 == 3889198) then
        s8 = s7
    end
    if s8 then
        return false
    elseif string.sub(attr, -3) == "Egg" then
        return true
    else
        local s6_3 = cJ:GetAttribute("HatchConnected") == true and cJ:GetAttribute("Rarity") == "None"
        return s6_3
    end
end
local function fn233()
    pG(pa.Main)
    local StealGroup = pa.Main:AddLeftGroupbox("Steal", "//")
    StealGroup:AddToggle("AutoSteal", { Text = "Auto Steal", Default = false })
    StealGroup:AddDropdown("StealZoneFilter", { Text = "Zone Filter", Values = p3, Default = table.clone(p3), Multi = true, AllowNull = true })
    StealGroup:AddDropdown("StealRarityFilter", { Text = "Rarity Filter", Values = pN, Default = table.clone(pN), Multi = true, AllowNull = true })
    local EggsGroup = pa.Main:AddLeftGroupbox("Eggs", "egg")
    EggsGroup:AddToggle("AutoPlaceEggs", { Text = "Auto Place Eggs", Default = false })
    EggsGroup:AddToggle("AutoHatchEggs", { Text = "Auto Hatch Eggs", Default = false })
    local PetsGroup = pa.Main:AddRightGroupbox("Pets", "paw-print")
    PetsGroup:AddToggle("AutoClaimIndex", { Text = "Auto Claim Index", Default = false })
    PetsGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
    local ShopGroup = pa.Main:AddRightGroupbox("Shop", "shopping-bag")
    ShopGroup:AddToggle("AutoBuyTrails", { Text = "Auto Buy Trails", Default = false })
    local SellGroup = pa.Main:AddRightGroupbox("Sell", "banknote")
    SellGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
    SellGroup:AddDropdown("SellMode", { Text = "Sell Mode", Values = pf, Default = 2 })
    Toggles.AutoSteal:OnChanged(function(j_)
        pM.SetSteal(j_)
    end)
    Options.StealZoneFilter:OnChanged(function(j3)
        pM.SetZoneFilter(j3)
    end)
    Options.StealRarityFilter:OnChanged(function(j5)
        pM.SetRarityFilter(j5)
    end)
    Toggles.AutoPlaceEggs:OnChanged(function(j7)
        pM.SetPlace(j7)
    end)
    Toggles.AutoHatchEggs:OnChanged(function(j9)
        pM.SetHatch(j9)
    end)
    Toggles.AutoClaimIndex:OnChanged(function(kb)
        pM.SetClaimIndex(kb)
    end)
    Toggles.AutoEquipBest:OnChanged(function(kd)
        pM.SetEquipBest(kd)
    end)
    Toggles.AutoBuyTrails:OnChanged(function(kf)
        pM.SetBuyTrails(kf)
    end)
    Toggles.AutoSell:OnChanged(function(kh)
        pM.SetSell(kh)
    end)
    Options.SellMode:OnChanged(function(kj)
        pM.SetSellMode(kj)
    end)
    pM.SetZoneFilter(Options.StealZoneFilter.Value)
    pM.SetRarityFilter(Options.StealRarityFilter.Value)
    pM.SetSellMode(Options.SellMode.Value)
end
local function fn269()
    local tR = {}
    local Trails = qc:FindFirstChild("Trails")
    if not Trails then
        return tR
    end
    for i, child in ipairs(Trails:GetChildren()) do
        if child.Name ~= "Equipped" then
            tR[child.Name] = true
        end
    end
    return tR
end
local function fn279(bl)
    if not pc(State.RarityFilter) then
        return true
    end
    return State.RarityFilter[bl] == true
end
local function fn296(gI, gJ)
    return string.format('<font color="%s">%s</font>', gJ, pl(gI))
end
local function fn313(fI)
    local Enabled = State.Enabled
    local u8 = fI and true or false
    Enabled.Steal = u8
    if State.Enabled.Steal then
        pJ("Steal", 0.25, ph)
    else
        local Gens = State.Gens
        Gens.Steal = Gens.Steal + 1
    end
end
local function fn325(fQ)
    local Enabled = State.Enabled
    local vm = fQ and true or false
    Enabled.Hatch = vm
    if State.Enabled.Hatch then
        pJ("Hatch", 0.5, pr)
    else
        local Gens = State.Gens
        Gens.Hatch = Gens.Hatch + 1
    end
end
local function fn334(bb)
    if type(bb) ~= "table" then
        return false
    end
    for k, v in pairs(bb) do
        if v then
            return true
        end
    end
    return false
end
local function fn337(f1)
    local Enabled = State.Enabled
    local vE = f1 and true or false
    Enabled.BuyTrails = vE
    if State.Enabled.BuyTrails then
        pJ("BuyTrails", 2, pO)
    else
        local Gens = State.Gens
        Gens.BuyTrails = Gens.BuyTrails + 1
    end
end
local function fn342()
    return o9.CoreGui
end
local function fn396(N)
    return type(N) == "function"
end
local function fn429()
    gethui = p5
end
local function fn450(K)
    local ru = typeof(cloneref) == "function" and typeof(K) == "Instance"
    if ru then
        return cloneref(K)
    end
    return K
end
local function fn466(a6)
    local rI = not a6 or not a6:IsA("ProximityPrompt") or not a6.Enabled
    if rI then
        return false
    end
    local rM = if not pm(fireproximityprompt) then 1 else 0
    if rM == 1 then
        return false
    end
    local rI_1 = pcall(fireproximityprompt, a6)
    return rI_1
end
local function fn470()
    local tv_1
    local ts_1
    local tu_1
    local tt_1
    ts_1, tt_1 = pcall(function()
        return GetPlotPets:InvokeServer()
    end)
    tu_1, tv_1 = pcall(function()
        return GetPlotCapacity:InvokeServer()
    end)
    local tw = ts_1
    local ts_2 = 0
    if tw then
        tw = type(tt_1) == "table"
    end
    if tw then
        for k in pairs(tt_1) do
            ts_2 += 1
        end
    end
    local tt_2 = tu_1 and type(tv_1) == "number"
    local tt_3 = tt_2 and tv_1
    local tH = if tt_3 then 1 else 0
    local tF = 3166 * tH + 467 * (1 - tH)
    local tG = 3147 * tH + 2790 * (1 - tH)
    if not ((tF * 441 + tG * 2705 + tF * tG) % 16777213 == 3095030) then
        tt_3 = nil
    end
    return ts_2, tt_3
end
local function fn489(bw)
    local r6 = bw == ""
    local r7 = type(bw) ~= "string" or r6
    if r7 then
        return nil
    end
    local EggSettings = EggConfigurations.EggSettings
    local r7_1 = type(EggSettings) == "table" and EggSettings[bw]
    local r7_2 = type(r7_1) == "table" and type(r7_1.Rarity) == "string"
    if r7_2 then
        return r7_1.Rarity
    end
    return nil
end
local function fn543(aS)
    local rB = pu()
    if not rB then
        return false
    end
    rB.AssemblyLinearVelocity = Vector3.zero
    rB.AssemblyAngularVelocity = Vector3.zero
    rB.CFrame = aS
    return true
end
local function fn569(gM, gN, gO)
    return string.format("<b>%s</b> %s %s", gM, qj("-", "#5a6070"), qj(gN, gO))
end
local function fn597(f6)
    State.ZoneFilter = pX(f6)
end
local function fn601(fU)
    local Enabled = State.Enabled
    local vt = fU and true or false
    Enabled.ClaimIndex = vt
    if State.Enabled.ClaimIndex then
        pJ("ClaimIndex", 3, pU)
    else
        local Gens = State.Gens
        Gens.ClaimIndex = Gens.ClaimIndex + 1
    end
end
local function fn612(f9)
    if f9 == "Equipped" or f9 == "Inventory" then
        State.SellMode = f9
    end
end
local function fn613()
    for k in pairs(State.Gens) do
        State.Gens[k] += 1
        State.Enabled[k] = false
    end
end
local function fn614()
    local t_ = not qk() or not State.Enabled.Steal
    if t_ then
        return
    end
    if not pm(fireproximityprompt) then
        return
    end
    local t__1 = os.clock()
    if t__1 - State.LastStealAt < 0.35 then
        return
    end
    if pw() then
        qg()
        State.LastStealAt = os.clock()
        return
    end
    local t__2 = {}
    for i, v in ipairs(p3) do
        if qb(p_[v]) then
            table.insert(t__2, v)
        end
    end
    if #t__2 == 0 then
        return
    end
    State.StealZoneCursor = State.StealZoneCursor % #t__2 + 1
    local StealZoneCursor = State.StealZoneCursor
    local t1 = #t__2 - 1
    local uf = 0
    while uf <= t1 do
        local ug = uf
        local t1_1 = not qk() or not State.Enabled.Steal
        if t1_1 then
            return
        end
        if pw() then
            qg()
            return
        end
        local t2 = p_[t__2[(StealZoneCursor + ug - 1) % #t__2 + 1]]
        local t1_3 = pF(t2)
        if t1_3 then
            py(t1_3)
            pQ(CFrame.new(t1_3 + Vector3.new(0, 5, 0)))
            task.wait(0.15)
        end
        local t1_4 = not qk() or not State.Enabled.Steal
        if t1_4 then
            return
        end
        local t1_5 = p9(t2)
        for i, v in ipairs(t1_5) do
            local t1_6 = not qk() or not State.Enabled.Steal
            if t1_6 then
                return
            end
            if pw() then
                qg()
                return
            end
            if v.position then
                pQ(CFrame.new(v.position + Vector3.new(0, 3, 0)))
                task.wait(0.08)
            end
            if pE(v.prompt) then
                State.LastStealAt = os.clock()
                task.wait(0.35)
                if pw() then
                    qg()
                end
                return
            end
        end
        uf += 1
    end
end
local function fn615(bf)
    local rU = {}
    if type(bf) == "table" then
        for k, v in pairs(bf) do
            local rV = v == true and type(k) == "string"
            if rV then
                rU[k] = true
            elseif type(v) == "string" then
                rU[v] = true
            end
        end
    end
    return rU
end
local function fn726()
    local Character = qc.Character
    local s1 = Character ~= nil and Character:GetAttribute("CarryingEgg") == true
    return s1
end
local function fn727(bD)
    local EggSettings = EggConfigurations.EggSettings
    local sa = type(EggSettings) == "table" and EggSettings[bD]
    local sa_1 = type(sa) == "table" and type(sa.HatchTime) == "number"
    if sa_1 then
        return sa.HatchTime
    end
    local HatchTimeByRarity = EggConfigurations.HatchTimeByRarity
    local sa_2 = pC(bD)
    local sb = type(HatchTimeByRarity) == "table" and sa_2 and type(HatchTimeByRarity[sa_2]) == "number"
    if sb then
        return HatchTimeByRarity[sa_2]
    end
    return nil
end
local function fn729()
    local Character = qc.Character
    if not Character then
        return nil
    end
    return Character:FindFirstChildOfClass("Humanoid")
end
local function fn732()
    local uJ = not qk() or not State.Enabled.ClaimIndex
    if uJ then
        return
    end
    pcall(function()
        ClaimIndexReward:InvokeServer("ALL")
    end)
end
local function fn733()
    pG(pa.Player)
    local MovementGroup = pa.Player:AddLeftGroupbox("Movement", "person-standing")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "Noclip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = pa.Player:AddRightGroupbox("Fly", "plane")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    Toggles.WalkSpeedEnabled:OnChanged(function(jy)
        pM.SetWalkSpeedEnabled(jy)
    end)
    Options.WalkSpeed:OnChanged(function(jC)
        pM.SetWalkSpeedValue(jC)
    end)
    Toggles.InfJump:OnChanged(function(jE)
        pM.SetInfJump(jE)
    end)
    Toggles.NoClip:OnChanged(function(jG)
        pM.SetNoClip(jG)
    end)
    Toggles.InstantProximityPrompt:OnChanged(function(jI)
        pM.SetInstantProximityPrompt(jI)
    end)
    Toggles.Fly:OnChanged(function(jK)
        pM.SetFly(jK)
    end)
    Options.FlySpeed:OnChanged(function(jM)
        pM.SetFlySpeed(jM)
    end)
end
local function fn766(f2)
    local Enabled = State.Enabled
    local vI = f2 and true or false
    Enabled.Sell = vI
    if State.Enabled.Sell then
        pJ("Sell", 1.5, px)
    else
        local Gens = State.Gens
        Gens.Sell = Gens.Sell + 1
    end
end
local function fn795(gC)
    local DiscordGroup = gC:AddLeftGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = qh,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    return DiscordGroup
end
local function fn824()
    local td = {}
    local Character = qc.Character
    if Character then
        for i, child in ipairs(Character:GetChildren()) do
            if pz(child) then
                table.insert(td, child)
            end
        end
    end
    for i, child in ipairs(qc.Backpack:GetChildren()) do
        if pz(child) then
            table.insert(td, child)
        end
    end
    return td
end
local function fn867()
    local Character = qc.Character
    if not Character then
        return nil
    end
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    local rw_1 = HumanoidRootPart and HumanoidRootPart:IsA("BasePart")
    if rw_1 then
        return HumanoidRootPart
    end
    return nil
end
local function fn906(f3)
    State.RarityFilter = pX(f3)
end
local function fn931(fM)
    local Enabled = State.Enabled
    local vf = fM and true
    local vj = if vf then 1 else 0
    local vh = 1751 * vj + 1231 * (1 - vj)
    local vi = 2217 * vj + 4085 * (1 - vj)
    if not ((vh * 1560 + vi * 2038 + vh * vi) % 16777213 == 11131773) then
        vf = false
    end
    Enabled.Place = vf
    if State.Enabled.Place then
        pJ("Place", 0.5, pV)
    else
        local Gens = State.Gens
        Gens.Place = Gens.Place + 1
    end
end
local function fn932()
    local uL = not qk() or not State.Enabled.EquipBest
    if uL then
        return
    end
    local uL_1 = os.clock()
    if uL_1 - State.LastEquipBestAt < 2 then
        return
    end
    local uL_2 = pcall(function()
        EquipBestPets:FireServer()
    end)
    if uL_2 then
        State.LastEquipBestAt = os.clock()
    end
end
local function fn1000(bp)
    if not pc(State.ZoneFilter) then
        return true
    end
    local r3 = pW[bp]
    if r3 and State.ZoneFilter[r3] == true then
        return true
    end
    return State.ZoneFilter[bp] == true
end
o9 = nil
pa = nil
pc = nil
EquipBestPets = nil
pf = nil
ph = nil
pl = nil
pm = nil
Options = nil
pq = nil
pr = nil
Toggles = nil
pu = nil
pw = nil
px = nil
py = nil
pz = nil
pC = nil
pE = nil
pF = nil
pG = nil
State = nil
Library = nil
pJ = nil
EggConfigurations = nil
pM = nil
pN = nil
pO = nil
pP = nil
pQ = nil
pR = nil
pU = nil
pV = nil
pW = nil
local pb, pe, pg, pi, RequestSell, pk, po, RequestHatch, ps, pv, SaveManager, pB, ThemeManager, pL, pS, pT
pX = nil
GetPlotCapacity = nil
pZ = nil
p_ = nil
GetPlotPets = nil
p3 = nil
p5 = nil
ClaimIndexReward = nil
p9 = nil
qb = nil
qc = nil
qg = nil
qh = nil
qj = nil
qk = nil
local p1, p2, p4, p6, p7, qa, qd, qe, TrailAction, qi, qp
if not game:IsLoaded() then
    game.Loaded:Wait()
end
o9, qc, p5 = nil, nil, nil
local ql = 1
repeat
    local Au = bit32.rrotate(bit32.bxor(bit32.lrotate(ql, 25), string.byte(tostring(o9))), 4)
    if bit32.bxor(bit32.lrotate(bit32.bxor(Au, 3098381163), 16), 2339092653) == bit32.lrotate(Au, 16) then
        o9 = {}
        o9.Players = game:GetService("Players")
        o9.ReplicatedStorage = game:GetService("ReplicatedStorage")
        o9.RunService = game:GetService("RunService")
        o9.UserInputService = game:GetService("UserInputService")
        o9.VirtualUser = game:GetService("VirtualUser")
        o9.HttpService = game:GetService("HttpService")
        o9.TeleportService = game:GetService("TeleportService")
        o9.Workspace = game:GetService("Workspace")
        o9.Lighting = game:GetService("Lighting")
        o9.Stats = game:GetService("Stats")
        o9.CoreGui = game:GetService("CoreGui")
        o9.ProximityPromptService = game:GetService("ProximityPromptService")
        qc = o9.Players.LocalPlayer
        p5 = fn342
    else
        p5 = {}
        p5.Players = game:GetService("Players")
        p5.ReplicatedStorage = game:GetService("ReplicatedStorage")
        p5.RunService = game:GetService("RunService")
        p5.UserInputService = game:GetService("UserInputService")
        p5.VirtualUser = game:GetService("VirtualUser")
        p5.HttpService = game:GetService("HttpService")
        p5.TeleportService = game:GetService("TeleportService")
        p5.Workspace = game:GetService("Workspace")
        p5.Lighting = game:GetService("Lighting")
        p5.Stats = game:GetService("Stats")
        p5.CoreGui = game:GetService("CoreGui")
        p5.ProximityPromptService = game:GetService("ProximityPromptService")
        o9 = p5.Players.LocalPlayer
        qc = fn342
    end
    ql = (ql + 0) % 4
until (ql * 3 + 3) % 4 == 2
if getgenv then
    getgenv().gethui = p5
end
pM, State, pZ, EggConfigurations, RequestHatch, RequestSell, EquipBestPets, TrailAction, ClaimIndexReward, GetPlotPets, GetPlotCapacity, pR, pN, pm, qk = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fn429)
local function qn(i)
    local rn
    local rl
    local rm
    rl = nil
    rm = nil
    rn = nil
    local ro = i ~= ""
    local rp = type(i) == "string" and ro
    assert(rp, "Namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    rl = getgenv()
    assert(type(rl) == "table", "getgenv did not return a table")
    local ro_1 = rl[i]
    if ro_1 ~= nil then
        local rp_1 = type(ro_1) == "table" and type(ro_1.Unload) == "function"
        assert(rp_1, "Namespace is occupied")
        ro_1.Unload()
        assert(rl[i] == nil, "Previous instance did not release its namespace")
    end
    rm = {}
    rn = { State = {}, Unloaded = false }
    rn.Track = function(o)
        assert(type(o) == "function", "Cleanup must be callable")
        if rn.Unloaded then
            o()
        else
            table.insert(rm, o)
        end
        return o
    end
    rn.Unload = function()
        local rb_1
        local ra_1
        if rn.Unloaded then
            return
        end
        rn.Unloaded = true
        local q8 = {}
        local rf = #rm
        local re = -1
        while false and rf <= 1 or true and rf >= 1 do
            local rg = rf
            local q9_1 = table.remove(rm, rg)
            ra_1, rb_1 = pcall(q9_1)
            if not ra_1 then
                table.insert(q8, tostring(rb_1))
            end
            rf += re
        end
        table.clear(rn.State)
        if #q8 > 0 then
            error("Cleanup incomplete: " .. table.concat(q8, "; "), 0)
        end
        if rl[i] == rn then
            rl[i] = nil
        end
    end
    rl[i] = rn
    return rn
end
local function qu(B, C)
    local rs = type(B) == "table" and type(B.Track) == "function"
    assert(rs, "FeatureAPI required")
    local rs_1 = type(C) == "table" and type(C.OnUnload) == "function"
    assert(rs_1, "UI library required")
    assert(type(C.Unload) == "function", "UI unload required")
    B.Track(function()
        if not C.Unloaded then
            C:Unload()
        end
    end)
    C:OnUnload(function()
        B.Unload()
    end)
end
pM = qn("OuroborosStealAnimeEggs")
State = pM.State
pm = fn396
qk = fn32
local qq = fn450(o9.ReplicatedStorage)
pZ = fn450(o9.Workspace)
local qo = qq:WaitForChild("Events", 30)
assert(qo, "Events missing")
local Modules = qq:WaitForChild("Modules", 30)
assert(Modules, "Modules missing")
EggConfigurations = require(Modules:WaitForChild("EggConfigurations"))
local qr = require(Modules:WaitForChild("RarityConfigurations"))
local ZoneConfigurations = require(Modules:WaitForChild("ZoneConfigurations"))
local qt = require(Modules:WaitForChild("TrailConfigurations"))
RequestHatch = qo:WaitForChild("RequestHatch")
RequestSell = qo:WaitForChild("RequestSell")
EquipBestPets = qo:WaitForChild("EquipBestPets")
TrailAction = qo:WaitForChild("TrailAction")
ClaimIndexReward = qo:WaitForChild("ClaimIndexReward")
GetPlotPets = qo:WaitForChild("GetPlotPets")
GetPlotCapacity = qo:WaitForChild("GetPlotCapacity")
pR = Vector3.new(8, 3, 123)
if not GetPlotCapacity or not pR or (not qt or State) or State and qt and (not pR or pR) or (qt and qt or (not GetPlotCapacity or not GetPlotPets)) and ((not GetPlotPets or not GetPlotPets) and (pR and State)) or not (not GetPlotCapacity or not pR or (not qt or State) or State and qt and (not pR or pR) or (qt and qt or (not GetPlotCapacity or not GetPlotPets)) and ((not GetPlotPets or not GetPlotPets) and (pR and State))) then
    pN = {}
end
local qv = {}
for k, v in pairs(qr) do
    local ql_2 = type(v) == "table" and type(v.Order) == "number"
    if ql_2 then
        table.insert(qv, { name = k, order = v.Order })
    end
end
table.sort(qv, fn177)
for i, v in ipairs(qv) do
    table.insert(pN, v.name)
end
p3, p_, pW, pP = nil, nil, nil, nil
local ql_3 = 15
repeat
    if (ql_3 * 1 + 1) % 2 + 1 <= 1 then
        local qm_2 = (vector.create((ql_3 * 1 + 1) % 11 + 1, (ql_3 * 7 + 6) % 13 + 1, (ql_3 * 2 + 7) % 17 + 1))
        local qn_1 = (vector.create((ql_3 * 1 + 7) % 11 + 1, (ql_3 * 1 + 5) % 13 + 1, (ql_3 * 8 + 11) % 17 + 1))
        local As = vector.cross(qm_2, qn_1)
        local At = vector.dot(qm_2, qn_1)
        if vector.dot(As, As) + At * At == vector.dot(qm_2, qm_2) * vector.dot(qn_1, qn_1) + 2 then
            pP = {}
        else
            p3 = {}
        end
        ql_3 = (ql_3 + 9) % 16
    else
        local qm_3 = {
            "bsukldqz",
            "xprl",
            "etzca",
            "wnuisfqvhw",
            "yzyrmqj",
            "ipm",
            "jze",
            "rlrgdwyxqx",
            "blfzpu",
            "utrrtsff",
            "jjlklh",
            "wvo"
        }
        local Ar = ql_3
        local qn_2 = qm_3[Ar % 12 + 1]
        if qn_2:len() <= qn_2:reverse():rep(Ar % 3 + 2):len() then
            p_ = {}
            pW = {}
            pP = {
                Zone1 = Vector3.new(-7.1, 0.5, 200.5),
                Zone2 = Vector3.new(39.6, 0.4, 373.3),
                Zone3 = Vector3.new(0.8, 0.4, 535),
                Zone4 = Vector3.new(-6.2, 0.4, 801.8),
                Zone5 = Vector3.new(0.1, 0.4, 1130),
                Zone6 = Vector3.new(24.5, 0.5, 1459.3),
                Zone7 = Vector3.new(25, 11.6, 1795.8),
                Zone8 = Vector3.new(33.7, 0.4, 2546.8),
                Zone9 = Vector3.new(4, 0.4, 3279.2),
                Zone10 = Vector3.new(25, 11.6, 3841),
                Zone11 = Vector3.new(25, 11.6, 4888.7)
            }
        else
            pP = {}
            p_ = {}
            pW = {
                Zone4 = Vector3.new(-6.2, 0.4, 801.8),
                Zone6 = Vector3.new(24.5, 0.5, 1459.3),
                Zone8 = Vector3.new(33.7, 0.4, 2546.8),
                Zone1 = Vector3.new(-7.1, 0.5, 200.5),
                Zone3 = Vector3.new(0.8, 0.4, 535),
                Zone5 = Vector3.new(0.1, 0.4, 1130),
                Zone10 = Vector3.new(25, 11.6, 3841),
                Zone11 = Vector3.new(25, 11.6, 4888.7),
                Zone7 = Vector3.new(25, 11.6, 1795.8),
                Zone9 = Vector3.new(4, 0.4, 3279.2),
                Zone2 = Vector3.new(39.6, 0.4, 373.3)
            }
        end
        ql_3 = (ql_3 + 15) % 16
    end
until (ql_3 * 3 + 7) % 16 == 12
local qT = 1
while qT <= 11 do
    local qU = qT
    local ql_4 = "Zone" .. tostring(qU)
    local qm_4 = ZoneConfigurations[ql_4]
    local qn_3 = type(qm_4) == "table" and qm_4.DisplayName
    local qm_5 = qn_3 or ql_4
    local qm_6 = ql_4 .. " - " .. tostring(qm_5)
    table.insert(p3, qm_6)
    p_[qm_6] = ql_4
    pW[ql_4] = qm_6
    qT += 1
end
pf, qi = nil, nil
local qn_5 = 2
repeat
    local AD = bit32.rrotate(bit32.bxor(bit32.lrotate(qn_5, 23), string.byte(tostring(pf))), 20)
    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(AD, 2566273489), 466303660), (bit32.bxor(bit32.band(AD, 1728693806), 4212810241))), 466303660), 4212810241) ~= AD then
        qi = { "Equipped", "Inventory" }
        pf = {}
    else
        pf = { "Equipped", "Inventory" }
        qi = {}
    end
    qn_5 = (qn_5 + 6) % 8
until (qn_5 * 1 + 5) % 8 == 5
local Trails = qt.Trails
if type(Trails) == "table" then
    for i, v in ipairs(Trails) do
        local ql_6 = type(v) == "table" and type(v.ID) == "string"
        if ql_6 then
            table.insert(qi, v)
        end
    end
end
local ql_7 = 2
repeat
    local zn = bit32.rrotate(bit32.bxor(bit32.lrotate(ql_7, 1), string.byte(tostring(ql_7))), 9)
    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(zn, 4217906487), 2969505107), (bit32.bxor(bit32.band(zn, 77060808), 2887771213))), 2969505107), 2887771213) == zn then
        State.Enabled = {
            Steal = false,
            Place = false,
            Hatch = false,
            ClaimIndex = false,
            EquipBest = false,
            BuyTrails = false,
            Sell = false
        }
        State.RarityFilter = {}
        State.ZoneFilter = {}
    else
        State.Enabled = {
            EquipBest = false,
            ClaimIndex = false,
            Steal = false,
            BuyTrails = false,
            Hatch = false,
            Sell = false,
            Place = false
        }
        State.RarityFilter = {}
        State.ZoneFilter = {}
    end
    ql_7 = (ql_7 + 5) % 8
until (ql_7 * 3 + 4) % 8 == 1
for i, v in ipairs(pN) do
    State.RarityFilter[v] = true
end
for i, v in ipairs(p3) do
    State.ZoneFilter[v] = true
end
pu, p6, pQ, py, pE, pc, pX, ps, qb, pC, p1, qd, pF, p9, pw, qg, pz, p4, pk, pb, pL, ph, pV, pr, pU, pq, pO, px, pJ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
State.SellMode = "Inventory"
State.Gens = { Steal = 0, Place = 0, Hatch = 0, ClaimIndex = 0, EquipBest = 0, BuyTrails = 0, Sell = 0 }
State.LastStealAt = 0
State.LastPlaceAt = 0
State.LastHatchAt = 0
State.LastEquipBestAt = 0
State.LastSellAt = 0
State.StealZoneCursor = 0
pu = fn867
p6 = fn729
pQ = fn543
py = function(aW)
    if typeof(aW) ~= "Vector3" then
        return
    end
    pcall(function()
        local rG = if pm(qc.RequestStreamAroundAsync) then 1 else 0
        if rG == 1 then
            task.defer(function()
                pcall(function()
                    qc:RequestStreamAroundAsync(aW)
                end)
            end)
        end
    end)
end
pE = fn466
pc = fn334
pX = fn615
if not qd and not pF or not qd and not ph or pF and qd and (pF or qd) or not (not qd and not pF or not qd and not ph or pF and qd and (pF or qd)) then
    ps = fn279
    qb = fn1000
    pC = fn489
else
    pC = fn279
    ps = fn1000
    qb = fn489
end
p1 = fn727
qd = fn114
pF = fn3
p9 = function(b0)
    local sK
    local Eggs = pZ:FindFirstChild("Eggs")
    local sM = Eggs and Eggs:FindFirstChild(b0)
    if not sM then
        return {}
    end
    sK = {}
    local function sM_1(b7)
        local sr = not b7 or not b7:IsA("Model")
        if sr then
            return
        end
        local sr_1 = b7:GetAttribute("IsEgg") ~= true and b7.Name ~= "SpawnedEgg"
        if sr_1 then
            return
        end
        local sr_2 = b7:GetAttribute("OriginalName")
        local ss = sr_2 == ""
        local st = type(sr_2) ~= "string" or ss
        if st then
            local st_1 = b7.Name ~= "SpawnedEgg" and b7.Name
            local sD = if st_1 then 1 else 0
            local sB = 3528 * sD + 3101 * (1 - sD)
            local sC = 2844 * sD + 3360 * (1 - sD)
            if not ((sB * 2240 + sC * 3433 + sB * sC) % 16777213 == 10922591) then
                st_1 = nil
            end
            sr_2 = st_1
        end
        local ss_2 = pC(sr_2)
        local st_2 = not ss_2 or not ps(ss_2)
        if st_2 then
            return
        end
        local st_3 = nil
        for i, descendant in ipairs(b7:GetDescendants()) do
            local su_1 = descendant:IsA("ProximityPrompt") and descendant.Enabled
            if su_1 then
                if descendant.ActionText == "Egg" then
                    st_3 = descendant
                    break
                elseif st_3 == nil then
                    st_3 = descendant
                end
            end
        end
        if not st_3 then
            return
        end
        local su_2 = b7:FindFirstChild("Root")
        local sv = su_2 and su_2:IsA("BasePart")
        if not sv then
            local sv_1 = b7.PrimaryPart or b7:FindFirstChildWhichIsA("BasePart")
            su_2 = sv_1
        end
        local insert = table.insert
        local su_3 = su_2 and su_2.Position or nil
        insert(sK, { model = b7, original = sr_2, rarity = ss_2, prompt = st_3, position = su_3 })
    end
    local EggSpawn = sM:FindFirstChild("EggSpawn")
    if EggSpawn then
        for i, child in ipairs(EggSpawn:GetChildren()) do
            sM_1(child)
        end
    end
    for i, child in ipairs(sM:GetChildren()) do
        if child.Name ~= "EggSpawn" then
            sM_1(child)
        end
    end
    return sK
end
pw = fn726
qg = fn99
pz = fn225
if (not p1 and not p1 or not pq and not pq) and (ph or not pq or (p1 or pr)) and not ((not p1 and not p1 or not pq and not pq) and (ph or not pq or (p1 or pr))) then
    pL = fn824
    pb = fn470
    ph = fn140
    p4 = fn269
    pk = fn614
else
    p4 = fn824
    pk = fn470
    pb = fn140
    pL = fn269
    ph = fn614
end
pV = function()
    local up
    up = nil
    local ur_1
    local uq = not qk() or not State.Enabled.Place
    local uq_2
    if uq then
        return
    end
    local uq_1 = os.clock()
    if uq_1 - State.LastPlaceAt < 0.45 then
        return
    end
    if pw() then
        qg()
        return
    end
    uq_2, ur_1 = pk()
    if ur_1 and uq_2 >= ur_1 then
        return
    end
    local uq_3 = p4()
    if #uq_3 == 0 then
        return
    end
    local uo = p6()
    up = uq_3[1]
    if not (uo and up) then
        return
    end
    if up.Parent == qc.Backpack then
        local uq_5 = pcall(function()
            uo:EquipTool(up)
        end)
        if not uq_5 then
            return
        end
        task.wait(0.12)
    end
    if up.Parent ~= qc.Character then
        return
    end
    local uq_6 = qd()
    local ur_2 = uq_6 and uq_6:FindFirstChild("EggHatch")
    local us_1 = ur_2
    if ur_2 then
        ur_2 = us_1:IsA("BasePart")
    end
    if ur_2 then
        pQ(CFrame.new(us_1.Position + Vector3.new(0, 4, 0)))
        task.wait(0.12)
    else
        if not uq_6 then
            return
        end
        local Spawn = uq_6:FindFirstChild("Spawn")
        local uq_7 = Spawn and Spawn:IsA("BasePart")
        if not uq_7 then
            return
        end
        pQ(CFrame.new(Spawn.Position + Vector3.new(0, 4, 0)))
        task.wait(0.12)
    end
    local uq_8 = not qk() or not State.Enabled.Place
    if uq_8 then
        return
    end
    if up.Parent ~= qc.Character then
        return
    end
    local uq_9 = pcall(function()
        up:Activate()
    end)
    if uq_9 then
        State.LastPlaceAt = os.clock()
        task.wait(0.35)
    end
end
pr = function()
    local ux = not qk() or not State.Enabled.Hatch
    if ux then
        return
    end
    local ux_1 = os.clock()
    if ux_1 - State.LastHatchAt < 0.4 then
        return
    end
    local ux_2 = qd()
    local uy = ux_2 and ux_2:FindFirstChild("EggHatch")
    if not uy then
        return
    end
    local uy_1 = workspace:GetServerTimeNow()
    for i, child in ipairs(uy:GetChildren()) do
        local uI = child
        local ux_4 = not qk() or not State.Enabled.Hatch
        if ux_4 then
            return
        end
        if uI:GetAttribute("IsEgg") == true then
            local ux_5 = uI:GetAttribute("OriginalName") or uI.Name
            local uz_1
            local attr = uI:GetAttribute("HatchStartTime")
            local uA = p1(ux_5)
            local uB = type(attr) == "number" and type(uA) == "number"
            if uB then
                uz_1 = uy_1 >= attr + uA
            else
                local ProximityPrompt = uI:FindFirstChildWhichIsA("ProximityPrompt", true)
                uz_1 = ProximityPrompt ~= nil and ProximityPrompt.Enabled and ProximityPrompt.ActionText == "Hatch"
            end
            if uz_1 then
                local ux_8 = uI:FindFirstChild("Root") or uI.PrimaryPart or uI:FindFirstChildWhichIsA("BasePart", true)
                if ux_8 then
                    pQ(CFrame.new(ux_8.Position + Vector3.new(0, 3, 0)))
                    task.wait(0.05)
                end
                local ux_9 = pcall(function()
                    RequestHatch:FireServer(uI)
                end)
                if not ux_9 then
                    local ProximityPrompt = uI:FindFirstChildWhichIsA("ProximityPrompt", true)
                    if ProximityPrompt and ProximityPrompt.ActionText == "Hatch" then
                        pE(ProximityPrompt)
                        ux_9 = true
                    end
                end
                if ux_9 then
                    State.LastHatchAt = os.clock()
                    return
                end
            end
        end
    end
end
pU = fn732
pq = fn932
pO = function()
    local uN = not qk() or not State.Enabled.BuyTrails
    if uN then
        return
    end
    local uN_1 = pL()
    local uO = pb()
    for i, v in ipairs(qi) do
        local uX = v
        local uP = not qk() or not State.Enabled.BuyTrails
        if uP then
            return
        end
        if not uN_1[uX.ID] then
            local uP_1 = tonumber(uX.Price) or 0
            if uO >= uP_1 then
                pcall(function()
                    TrailAction:FireServer("BuyMoney", uX.ID)
                end)
                task.wait(0.35)
                uN_1 = pL()
                uO = pb()
            end
        end
    end
end
px = function()
    local uY
    local uZ = not qk()
    local u3 = if uZ then 1 else 0
    local u1 = 772 * u3 + 2653 * (1 - u3)
    local u2 = 2835 * u3 + 3617 * (1 - u3)
    if not ((u1 * 1033 + u2 * 508 + u1 * u2) % 16777213 == 4426276) then
        uZ = not State.Enabled.Sell
    end
    if uZ then
        return
    end
    local uZ_1 = os.clock()
    if uZ_1 - State.LastSellAt < 1.25 then
        return
    end
    uY = State.SellMode
    if uY ~= "Equipped" and uY ~= "Inventory" then
        uY = "Inventory"
    end
    local uZ_3 = pcall(function()
        RequestSell:FireServer(uY)
    end)
    if uZ_3 then
        State.LastSellAt = os.clock()
    end
end
pJ = function(fv, fw, fx)
    State.Gens[fv] += 1
    local fz = State.Gens[fv]
    task.spawn(function()
        while true do
            local u4 = qk() and State.Enabled[fv] and State.Gens[fv] == fz
            if u4 then
                pcall(fx)
                task.wait(fw)
                continue
            end
            break
        end
    end)
end
pM.SetSteal = fn313
pM.SetPlace = fn931
pM.SetHatch = fn325
pM.SetClaimIndex = fn601
pM.SetEquipBest = fn66
pM.SetBuyTrails = fn337
pM.SetSell = fn766
pM.SetRarityFilter = fn906
pM.SetZoneFilter = fn597
pM.SetSellMode = fn612
pM.Track(fn613)
local ql_8 = pm(fireproximityprompt)
local qm_7 = pm(setclipboard) or pm(toclipboard)
qo, qp = nil, nil
local qn_6 = 8
repeat
    if (qn_6 * 1 + 0) % 2 + 1 <= 1 then
        local qq_2 = {
            "aqxsnkwwx",
            "wyquuc",
            "cijedoovpo",
            "kguhzbkfj",
            "okkghatryef",
            "erwkn",
            "dfxou",
            "pwxet",
            "iylhpg",
            "wfbcoocqng",
            "ojr",
            "vvsk"
        }
        if qq_2[(qn_6 * 81 + 29) % 12 + 1] < qq_2[(qn_6 * 81 + 29) % 12 + 1] then
            pm = { setclipboard = qo, fireproximityprompt = ql_8, identifyexecutor = qm_7(identifyexecutor) }
        else
            qo = { fireproximityprompt = ql_8, setclipboard = qm_7, identifyexecutor = pm(identifyexecutor) }
        end
        qn_6 = (qn_6 + 1) % 16
    else
        ql_8 = 1
        if qn_6 * 87829123 + 6 + 6 >= qn_6 * 87829123 + 6 + 6 + 1 then
            qo = {}
        else
            qp = {}
        end
        qn_6 = (qn_6 + 1) % 16
    end
until (qn_6 * 13 + 15) % 16 == 1
if not qo.fireproximityprompt then
    local ql_9 = 4
    repeat
        local qm_8 = (vector.create((ql_9 * 7 + 2) % 11 + 1, (ql_9 * 11 + 8) % 13 + 1, (ql_9 * 10 + 10) % 17 + 1))
        local qn_7 = (vector.create((ql_9 * 2 + 7) % 11 + 1, (ql_9 * 6 + 11) % 13 + 1, (ql_9 * 14 + 16) % 17 + 1))
        qo = (vector.create((ql_9 * 1 + 9) % 11 + 1, (ql_9 * 11 + 11) % 13 + 1, (ql_9 * 3 + 16) % 17 + 1))
        local qq_3 = (vector.create((ql_9 * 7 + 4) % 11 + 1, (ql_9 * 3 + 4) % 13 + 1, (ql_9 * 14 + 8) % 17 + 1))
        if vector.dot(vector.cross(qm_8, qn_7), (vector.cross(qo, qq_3))) == vector.dot(qm_8, qo) * vector.dot(qn_7, qq_3) - vector.dot(qm_8, qq_3) * vector.dot(qn_7, qo) then
            table.insert(qp, "fireproximityprompt")
        else
            table.insert(qp, "fireproximityprompt")
        end
        ql_9 = (ql_9 + 6) % 8
    until (ql_9 * 7 + 7) % 8 == 5
end
local qm_9 = #qp == 0 and "(ready)"
if not qm_9 then
    local ql_11 = 1
    repeat
        if (ql_11 * 2 + 1) * 4 % 3 == ((ql_11 * 2 + 1) * 4 + 5) % 3 then
            qp = "(missing " .. table.concat(qm_9, ", ") .. ")"
        else
            qm_9 = "(missing " .. table.concat(qp, ", ") .. ")"
        end
        ql_11 = (ql_11 + 3) % 8
    until (ql_11 * 5 + 1) % 8 == 5
end
pe, qh, qa, p2, pS, Library, ThemeManager, SaveManager, Toggles, Options, pa, pv, po, pi, pg, pB, p7, qe, pG, pl, qj, pT, qv = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if not pB and pB and (not Library or not pB) or (pB or pB) and (pB and pB) or not (not pB and pB and (not Library or not pB) or (pB or pB) and (pB and pB)) then
    pe = qm_9
end
qh = "https://discord.gg/synapsex"
qa = "https://rscripts.net/@Ouroboros"
p2 = "https://ouroboros-hub-rbx.web.app/"
local qy = "v0.2"
pS = "Steal Anime Eggs"
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles, Options = Library.Toggles, Library.Options
qu(pM, Library)
qo = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = qh, Copyable = true }, "|", pS, "|", qy },
    Icon = 132608042600488,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
pa = {}
pa.Info = qo:AddTab("Info", "info")
pa.Main = qo:AddTab("Main", "gamepad-2")
pa.Player = qo:AddTab("Player", "person-standing")
pa.Settings = qo:AddTab("Settings", "settings")
qe = fn18
if qo and qo or qh and qo or (pe and qh or (qo or pe)) or not (qo and qo or qh and qo or (pe and qh or (qo or pe))) then
    pG = fn795
    pl = fn12
    qj = fn296
    pT = fn569
    pv = "#7fd47f"
else
    pv = fn795
    pG = fn12
    pT = fn296
    pl = fn569
    qj = "#7fd47f"
end
po = "#6ec1ff"
pi = "#e8a34d"
pg = "#8b93a3"
local function qx()
    local v7
    local v5
    v5 = nil
    v7 = nil
    local Label, Label2, Label3, wa, wb, wc
    wc = "Unknown"
    pcall(function()
        local vW_1
        local vV_1
        if pm(identifyexecutor) then
            vW_1, vV_1 = identifyexecutor()
            local vX = vW_1 ~= ""
            local vY = type(vW_1) == "string" and vX
            if vY then
                local vX_1 = type(vV_1) == "string" and vV_1 ~= "" and vW_1 .. " " .. vV_1
                wc = vX_1 or vW_1
            end
        end
    end)
    v7 = os.clock()
    wb = function()
        local v_ = math.floor(os.clock() - v7)
        if v_ < 60 then
            return v_ .. "s"
        elseif v_ < 3600 then
            return string.format("%dm %ds", v_ // 60, v_ % 60)
        else
            return string.format("%dh %dm", v_ // 3600, v_ % 3600 // 60)
        end
    end
    local UserGroup = pa.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = qc, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(pT("User", qc.DisplayName .. " @" .. qc.Name, pv), true)
    UserGroup:AddLabel(pT("UserId", tostring(qc.UserId), po), true)
    UserGroup:AddLabel(pT("Executor", wc .. "  " .. pe, pv), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(pT("Session", wb(), pi), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            qe(qc.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            qe("https://www.roblox.com/users/" .. tostring(qc.UserId) .. "/profile", "Copied profile link")
        end
    })
    local DiscordGroup = pa.Info:AddRightGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = qh,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    local SessionGroup = pa.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddLabel(pT("Game", pS, po), true)
    Label2 = SessionGroup:AddLabel(pT("Players", "0/0", pv), true)
    wa = tostring(game.JobId)
    local we = #wa > 18 and string.sub(wa, 1, 18) .. "..."
    local we_1 = we or wa
    SessionGroup:AddLabel(pT("Job", we_1, pg), true)
    Label = SessionGroup:AddLabel(pT("Ping", "0 ms", pi), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Place",
        Func = function()
            o9.TeleportService:Teleport(game.PlaceId, qc)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            qe(wa, "Copied Job ID")
        end
    })
    v5 = task.spawn(function()
        local v2_1
        while true do
            local v1 = qk() and not Library.Unloaded
            local v1_2
            if v1 then
                task.wait(1)
                local v1_1 = Library.Unloaded or not qk()
                if v1_1 then
                    break
                end
                Label3:SetText(pT("Session", wb(), pi))
                Label2:SetText(pT("Players", #o9.Players:GetPlayers() .. "/" .. tostring(o9.Players.MaxPlayers), pv))
                v1_2, v2_1 = pcall(function()
                    return math.floor(o9.Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local v1_3 = v1_2 and v2_1 .. " ms" or "n/a"
                Label:SetText(pT("Ping", v1_3, pi))
                continue
            end
            break
        end
    end)
    pM.Track(function()
        pcall(task.cancel, v5)
    end)
    local SocialsGroup = pa.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({
        Text = "Discord",
        Func = function()
            qe(qh, "Copied Discord invite")
        end
    })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            qe(qa, "Copied Rscripts profile")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            qe(p2, "Copied website")
        end
    })
end
pB = {
    WalkSpeedEnabled = false,
    WalkSpeed = 32,
    InfJump = false,
    NoClip = false,
    Fly = false,
    FlySpeed = 60,
    InstantPP = false,
    WalkSnapshots = {},
    NoClipSnapshots = {},
    FlyPlatformStand = nil,
    InfJumpConn = nil,
    NoClipConn = nil,
    FlyConn = nil,
    InstantConn = nil,
    InstantSnapshots = {}
}
local function qq_4()
    local function h3(h4)
        if not h4 then
            return
        end
        if pB.WalkSnapshots[h4] == nil then
            pB.WalkSnapshots[h4] = h4.WalkSpeed
        end
        if pB.WalkSpeedEnabled then
            h4.WalkSpeed = pB.WalkSpeed
        end
    end
    pM.SetWalkSpeedEnabled = function(h7)
        local wj = h7 and true or false
        pB.WalkSpeedEnabled = wj
        local wi_1 = p6()
        if not wi_1 then
            return
        end
        if pB.WalkSpeedEnabled then
            h3(wi_1)
        elseif pB.WalkSnapshots[wi_1] ~= nil then
            wi_1.WalkSpeed = pB.WalkSnapshots[wi_1]
        end
    end
    pM.SetWalkSpeedValue = function(ie)
        pB.WalkSpeed = ie
        if pB.WalkSpeedEnabled then
            local wl = p6()
            if wl then
                wl.WalkSpeed = ie
            end
        end
    end
    pM.SetInfJump = function(ij)
        local wt = ij and true or false
        pB.InfJump = wt
        if pB.InfJumpConn then
            pB.InfJumpConn:Disconnect()
            pB.InfJumpConn = nil
        end
        if not pB.InfJump then
            return
        end
        pB.InfJumpConn = o9.UserInputService.JumpRequest:Connect(function()
            local wn = not qk() or not pB.InfJump
            if wn then
                return
            end
            local wn_1 = p6()
            if wn_1 then
                wn_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end)
    end
    pM.SetNoClip = function(iw)
        local wD = iw and true or false
        pB.NoClip = wD
        if pB.NoClipConn then
            pB.NoClipConn:Disconnect()
            pB.NoClipConn = nil
        end
        local Character = qc.Character
        if not pB.NoClip then
            for k, v in pairs(pB.NoClipSnapshots) do
                if k and k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(pB.NoClipSnapshots)
            return
        end
        local function wB(iF)
            local wy = iF:IsA("BasePart") and pB.NoClipSnapshots[iF] == nil
            if wy then
                pB.NoClipSnapshots[iF] = iF.CanCollide
                iF.CanCollide = false
            end
        end
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                wB(descendant)
            end
            pB.NoClipConn = Character.DescendantAdded:Connect(function(iK)
                if pB.NoClip then
                    wB(iK)
                end
            end)
        end
    end
    pM.SetFly = function(iN)
        local wZ = iN and true or false
        pB.Fly = wZ
        if pB.FlyConn then
            pB.FlyConn:Disconnect()
            pB.FlyConn = nil
        end
        local wY_1 = p6()
        if not pB.Fly then
            if wY_1 and pB.FlyPlatformStand ~= nil then
                wY_1.PlatformStand = pB.FlyPlatformStand
            end
            pB.FlyPlatformStand = nil
            return
        end
        if wY_1 then
            pB.FlyPlatformStand = wY_1.PlatformStand
            wY_1.PlatformStand = true
        end
        pB.FlyConn = o9.RunService.RenderStepped:Connect(function()
            local wR = not qk() or not pB.Fly
            if wR then
                return
            end
            if o9.UserInputService:GetFocusedTextBox() then
                return
            end
            local wR_1 = pu()
            local CurrentCamera = pZ.CurrentCamera
            if not (wR_1 and CurrentCamera) then
                return
            end
            local wT_1 = Vector3.zero
            local wX = if o9.UserInputService:IsKeyDown(Enum.KeyCode.W) then 1 else 0
            if wX == 1 then
                wT_1 += CurrentCamera.CFrame.LookVector
            end
            if o9.UserInputService:IsKeyDown(Enum.KeyCode.S) then
                wT_1 -= CurrentCamera.CFrame.LookVector
            end
            if o9.UserInputService:IsKeyDown(Enum.KeyCode.A) then
                wT_1 -= CurrentCamera.CFrame.RightVector
            end
            if o9.UserInputService:IsKeyDown(Enum.KeyCode.D) then
                wT_1 += CurrentCamera.CFrame.RightVector
            end
            if o9.UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                wT_1 += Vector3.yAxis
            end
            if o9.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                wT_1 -= Vector3.yAxis
            end
            if wT_1.Magnitude > 0 then
                wR_1.AssemblyLinearVelocity = wT_1.Unit * pB.FlySpeed
            else
                wR_1.AssemblyLinearVelocity = Vector3.zero
            end
        end)
    end
    pM.SetFlySpeed = function(i6)
        pB.FlySpeed = i6
    end
    pM.SetInstantProximityPrompt = function(i8)
        local xa
        local xc = i8 and true or false
        pB.InstantPP = xc
        if pB.InstantConn then
            pB.InstantConn:Disconnect()
            pB.InstantConn = nil
        end
        local function xb_1()
            for k, v in pairs(pB.InstantSnapshots) do
                if k and k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(pB.InstantSnapshots)
        end
        if not pB.InstantPP then
            xb_1()
            return
        end
        xa = function(jg)
            if not jg:IsA("ProximityPrompt") then
                return
            end
            if pB.InstantSnapshots[jg] == nil then
                pB.InstantSnapshots[jg] = {
                    HoldDuration = jg.HoldDuration,
                    MaxActivationDistance = jg.MaxActivationDistance,
                    RequiresLineOfSight = jg.RequiresLineOfSight
                }
            end
            jg.HoldDuration = 0
            jg.MaxActivationDistance = 50
            jg.RequiresLineOfSight = false
        end
        for i, descendant in ipairs(pZ:GetDescendants()) do
            xa(descendant)
        end
        pB.InstantConn = pZ.DescendantAdded:Connect(function(jl)
            if pB.InstantPP then
                xa(jl)
            end
        end)
    end
    pM.Track(function()
        pM.SetWalkSpeedEnabled(false)
        pM.SetInfJump(false)
        pM.SetNoClip(false)
        pM.SetFly(false)
        pM.SetInstantProximityPrompt(false)
    end)
    qc.CharacterAdded:Connect(function()
        task.wait(0.2)
        if not qk() then
            return
        end
        if pB.WalkSpeedEnabled then
            pM.SetWalkSpeedEnabled(true)
        end
        if pB.NoClip then
            pM.SetNoClip(true)
        end
        if pB.Fly then
            pM.SetFly(true)
        end
    end)
end
qr = fn733
qt = fn233
p7 = {
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
local function qw()
    local function kn()
        if not pZ.CurrentCamera then
            return false
        end
        local xl_1 = not pm(o9.VirtualUser.CaptureController) or not pm(o9.VirtualUser.ClickButton2)
        if xl_1 then
            return false
        end
        local xl_2 = pcall(function()
            o9.VirtualUser:CaptureController()
            o9.VirtualUser:ClickButton2(Vector2.new())
        end)
        if xl_2 then
            p7.AfkCount = p7.AfkCount + 1
        end
        return xl_2
    end
    pM.SetAntiAfk = function(kB)
        local xw = kB and true or false
        p7.AntiAfk = xw
        if p7.AfkConn then
            p7.AfkConn:Disconnect()
            p7.AfkConn = nil
        end
        if p7.AfkTask then
            pcall(task.cancel, p7.AfkTask)
            p7.AfkTask = nil
        end
        if not p7.AntiAfk then
            return
        end
        p7.AfkConn = qc.Idled:Connect(function()
            local xq = qk() and p7.AntiAfk
            if xq then
                kn()
            end
        end)
        p7.AfkTask = task.spawn(function()
            local xs = os.clock()
            while true do
                local xt = qk() and p7.AntiAfk
                if xt then
                    task.wait(1)
                    local xt_1 = not qk() or not p7.AntiAfk
                    if xt_1 then
                        break
                    end
                    if os.clock() - xs >= 60 then
                        xs = os.clock()
                        kn()
                    end
                    continue
                end
                break
            end
        end)
    end
    pM.SetNoGameplayPaused = function(kT)
        local xz = kT and true or false
        p7.NoGameplayPaused = xz
    end
    pM.SetAutoReconnect = function(kV)
        local xK = kV and true or false
        p7.AutoReconnect = xK
        for i, v in ipairs(p7.ReconnectConns) do
            v:Disconnect()
        end
        table.clear(p7.ReconnectConns)
        if not p7.AutoReconnect then
            return
        end
        table.insert(p7.ReconnectConns, o9.TeleportService.TeleportInitFailed:Connect(function()
            local xE = not qk() or not p7.AutoReconnect
            if xE then
                return
            end
            task.wait(1)
            local xE_1 = qk() and p7.AutoReconnect
            if xE_1 then
                pcall(function()
                    o9.TeleportService:Teleport(game.PlaceId, qc)
                end)
            end
        end))
    end
    pM.SetDisable3D = function(k9)
        local xT = k9 and true or false
        p7.Disable3D = xT
        pcall(function()
            o9.RunService:Set3dRenderingEnabled(not p7.Disable3D)
        end)
    end
    pM.SetFpsBoost = function(le)
        local ye
        local yg = le and true or false
        p7.FpsBoost = yg
        if p7.FpsConn then
            p7.FpsConn:Disconnect()
            p7.FpsConn = nil
        end
        local function yf_1()
            for k, v in pairs(p7.FpsSnapshots) do
                local x_ = k
                if x_ and x_.Parent then
                    for k, v in pairs(v) do
                        local x5 = k
                        local x7 = v
                        pcall(function()
                            x_[x5] = x7
                        end)
                    end
                end
            end
            table.clear(p7.FpsSnapshots)
        end
        if not p7.FpsBoost then
            yf_1()
            return
        end
        ye = function(lr)
            if p7.FpsSnapshots[lr] then
                return
            end
            local x8 = lr:IsA("ParticleEmitter") or lr:IsA("Trail")
            local yc = if x8 then 1 else 0
            local ya = 3353 * yc + 3124 * (1 - yc)
            local yb = 2881 * yc + 492 * (1 - yc)
            if not ((ya * 746 + yb * 2052 + ya * yb) % 16777213 == 1295930) then
                x8 = lr:IsA("Beam")
            end
            if not x8 then
                x8 = lr:IsA("Fire")
            end
            if not x8 then
                x8 = lr:IsA("Smoke")
            end
            if not x8 then
                x8 = lr:IsA("Sparkles")
            end
            if x8 then
                p7.FpsSnapshots[lr] = { Enabled = lr.Enabled }
                lr.Enabled = false
            end
        end
        for i, descendant in ipairs(pZ:GetDescendants()) do
            ye(descendant)
        end
        if p7.FpsSnapshots[o9.Lighting] == nil then
            p7.FpsSnapshots[o9.Lighting] = { GlobalShadows = o9.Lighting.GlobalShadows, FogEnd = o9.Lighting.FogEnd }
            o9.Lighting.GlobalShadows = false
        end
        p7.FpsConn = pZ.DescendantAdded:Connect(function(ly)
            if p7.FpsBoost then
                ye(ly)
            end
        end)
    end
    pM.Track(function()
        pM.SetAntiAfk(false)
        pM.SetAutoReconnect(false)
        pM.SetDisable3D(false)
        pM.SetFpsBoost(false)
    end)
end
if (SaveManager or pG) and (SaveManager and not pG) and (pG or SaveManager or (SaveManager or pG)) or not ((SaveManager or pG) and (SaveManager and not pG) and (pG or SaveManager or (SaveManager or pG))) then
    qv = function()
        pG(pa.Settings)
        local MenuGroup = pa.Settings:AddLeftGroupbox("Menu", "settings")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        MenuGroup:AddToggle("NoGameplayPaused", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3DRendering", { Text = "Disable 3D Rendering", Default = false })
        MenuGroup:AddToggle("FPSBoost", { Text = "FPS Boost", Default = false })
        MenuGroup:AddToggle("HideUIOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        local ScriptGroup = pa.Settings:AddLeftGroupbox("Script", "scroll-text")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiAfk:OnChanged(function(lL)
            pM.SetAntiAfk(lL)
        end)
        Toggles.NoGameplayPaused:OnChanged(function(lO)
            pM.SetNoGameplayPaused(lO)
        end)
        Toggles.AutoReconnect:OnChanged(function(lQ)
            pM.SetAutoReconnect(lQ)
        end)
        Toggles.Disable3DRendering:OnChanged(function(lS)
            pM.SetDisable3D(lS)
        end)
        Toggles.FPSBoost:OnChanged(function(lU)
            pM.SetFpsBoost(lU)
        end)
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("MyScriptHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(pa.Settings)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/StealAnimeEggs")
        local yB_4 = SaveManager:BuildConfigSection(pa.Settings)
        if yB_4 then
            yB_4:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Default = "", Finished = true, AllowEmpty = true })
            yB_4:AddButton({
                Text = "Export Config to Clipboard",
                Func = function()
                    local yq_2
                    local yp_2
                    yp_2, yq_2 = pcall(function()
                        if pm(SaveManager.ExportConfig) then
                            return SaveManager:ExportConfig()
                        end
                        error("ExportConfig unavailable")
                    end)
                    local yr = yp_2 and type(yq_2) == "string"
                    if yr then
                        qe(yq_2, "Copied config")
                    else
                        Library:Notify("Export unavailable", 3)
                    end
                end
            })
            yB_4:AddButton({
                Text = "Import Config from Clipboard Text",
                Func = function()
                    local yx
                    yx = Options.SaveManager_ImportSource and Options.SaveManager_ImportSource.Value or ""
                    if yx == "" then
                        Library:Notify("Paste a config first", 3)
                        return
                    end
                    local yy_2 = pcall(function()
                        if pm(SaveManager.ImportConfig) then
                            SaveManager:ImportConfig(yx)
                        elseif pm(SaveManager.LoadConfigFromJSON) then
                            SaveManager:LoadConfigFromJSON(yx)
                        else
                            error("Import unavailable")
                        end
                    end)
                    if yy_2 then
                        Options.SaveManager_ImportSource:SetValue("")
                        Library:Notify("Imported config", 3)
                    else
                        Library:Notify("Import failed", 3)
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
    end
else
    p7 = function()
        pG(pa.Settings)
        local MenuGroup = pa.Settings:AddLeftGroupbox("Menu", "settings")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        MenuGroup:AddToggle("NoGameplayPaused", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3DRendering", { Text = "Disable 3D Rendering", Default = false })
        MenuGroup:AddToggle("FPSBoost", { Text = "FPS Boost", Default = false })
        MenuGroup:AddToggle("HideUIOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        local ScriptGroup = pa.Settings:AddLeftGroupbox("Script", "scroll-text")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiAfk:OnChanged(function(lL)
            pM.SetAntiAfk(lL)
        end)
        Toggles.NoGameplayPaused:OnChanged(function(lO)
            pM.SetNoGameplayPaused(lO)
        end)
        Toggles.AutoReconnect:OnChanged(function(lQ)
            pM.SetAutoReconnect(lQ)
        end)
        Toggles.Disable3DRendering:OnChanged(function(lS)
            pM.SetDisable3D(lS)
        end)
        Toggles.FPSBoost:OnChanged(function(lU)
            pM.SetFpsBoost(lU)
        end)
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("MyScriptHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(pa.Settings)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/StealAnimeEggs")
        local yB_2 = SaveManager:BuildConfigSection(pa.Settings)
        if yB_2 then
            yB_2:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Default = "", Finished = true, AllowEmpty = true })
            yB_2:AddButton({
                Text = "Export Config to Clipboard",
                Func = function()
                    local yq_1
                    local yp_1
                    yp_1, yq_1 = pcall(function()
                        if pm(SaveManager.ExportConfig) then
                            return SaveManager:ExportConfig()
                        end
                        error("ExportConfig unavailable")
                    end)
                    local yr = yp_1 and type(yq_1) == "string"
                    if yr then
                        qe(yq_1, "Copied config")
                    else
                        Library:Notify("Export unavailable", 3)
                    end
                end
            })
            yB_2:AddButton({
                Text = "Import Config from Clipboard Text",
                Func = function()
                    local yx
                    yx = Options.SaveManager_ImportSource and Options.SaveManager_ImportSource.Value or ""
                    if yx == "" then
                        Library:Notify("Paste a config first", 3)
                        return
                    end
                    local yy_1 = pcall(function()
                        if pm(SaveManager.ImportConfig) then
                            SaveManager:ImportConfig(yx)
                        elseif pm(SaveManager.LoadConfigFromJSON) then
                            SaveManager:LoadConfigFromJSON(yx)
                        else
                            error("Import unavailable")
                        end
                    end)
                    if yy_1 then
                        Options.SaveManager_ImportSource:SetValue("")
                        Library:Notify("Imported config", 3)
                    else
                        Library:Notify("Import failed", 3)
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
    end
end
qq_4()
qw()
qx()
qt()
qr()
qv()
pM.SetAntiAfk(Toggles.AntiAfk.Value)
pM.SetNoGameplayPaused(Toggles.NoGameplayPaused.Value)
if Toggles.HideUIOnStart.Value then
    pcall(function()
        Library:Toggle(false)
    end)
end
local ql_12 = 3
repeat
    local qm_10 = {
        "wncnaeti",
        "ctjxglwwws",
        "fxl",
        "epqgyvkijf",
        "fhjj",
        "taow",
        "nsjiyvre",
        "wlyizb",
        "cfha",
        "edmjlerep"
    }
    if qm_10[(ql_12 * 40 + 110) % 10 + 1] <= qm_10[(ql_12 * 40 + 110) % 10 + 1] then
        Library:Notify("Steal Anime Eggs v0.2 loaded", 4)
    else
        qy:Notify("Steal Anime Eggs " .. Library .. " loaded", 4)
    end
    ql_12 = (ql_12 + 3) % 4
until (ql_12 * 3 + 1) % 4 == 3
