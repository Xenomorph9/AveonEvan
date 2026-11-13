local k9
local kR
local ly
local lU
local kU
local lX
local kX
local l_
local k_
local ll
local BuyBall
local k2
local SpawnBall
local EquipClub
local lN
local BuyClub
local lT
local kT
local le
local EquipBall
local kW
local lh
local lx
local lA
local lG
local lD
local k1
local lJ
local k4
local Library
local lq
local lt
local lP
local Workspace
local DoRebirth
local lS
local Toggles
local kV
local lY
local lC
local lj
local kY
local l0
local k0
local Swing
local lm
local lp
local k3
local k6
local lO
local lv
local function fn54()
    local attr = k1:GetAttribute("RebirthReq")
    if typeof(attr) == "number" then
        return attr
    end
    local mR_1 = k1:GetAttribute("Rebirths") or 0
    return ly(mR_1)
end
local function worker()
    while not Library.Unloaded do
        pcall(kY)
        task.wait(0.1)
    end
end
local function fn100()
    local Character = k1.Character
    local mF = Character and Character:FindFirstChild("HumanoidRootPart")
    return mF
end
local function fn126(dp)
    local DiscordGroup = dp:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = k0 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = k0 })
end
local function fn139(an, ao)
    return string.format('<font color="%s">%s</font>', ao, an)
end
local function fn177(aq, ar, as)
    return string.format("<b>%s</b> %s %s", aq, kX("-", "#5a6070"), kX(ar, as))
end
local function fn193(aC)
    local my = Toggles[aC]
    return my ~= nil and my.Value == true
end
local function onChildAdded2()
    kV = lY(lj)
end
local function fn261()
    _G.GolfShopState = { clubOwned = kU, clubEquipped = l_, ballOwned = lT, ballEquipped = lN }
end
local function fn288()
    lq(lv, "Copied Discord invite to clipboard")
end
local function onOnClientEvent3()
    lG = false
    lJ = true
end
local function fn321()
    return lx
end
local function onOnClientEvent(ba, bb)
    if typeof(ba) == "string" then
        l_ = ba
    end
    if typeof(bb) == "table" then
        kU = bb
    end
    lp()
end
local function fn482(ca, cb)
    local name
    local nt = -math.huge
    local nu = -math.huge
    for k, v in ca do
        if cb[v.name] then
            if v.order > nt or v.order == nt and v.mult > nu then
                name = v.name
                nt = v.order
                nu = v.mult
            end
        end
    end
    return name
end
local function worker2()
    while not Library.Unloaded do
        pcall(lm)
        pcall(lD)
        pcall(lP)
        pcall(kR)
        task.wait(0.35)
    end
end
local function fn521(b_)
    local nf = {}
    for i, child in b_:GetChildren() do
        local attr2 = child:GetAttribute("GamePassId")
        local attr = child:GetAttribute("Price")
        local ni = typeof(attr2) == "number" and attr2 > 0
        local ng_1 = not ni
        if ng_1 ~= false then
            ng_1 = typeof(attr) == "number"
        end
        if ng_1 then
            local ng_2 = #nf + 1
            local Name = child.Name
            local nj = tonumber(child:GetAttribute("Order")) or 99
            local nk = tonumber(child:GetAttribute("Mult")) or 0
            nf[ng_2] = { name = Name, price = attr, order = nj, mult = nk }
        end
    end
    table.sort(nf, function(b7, b8)
        if b7.order ~= b8.order then
            return b7.order < b8.order
        end
        return b7.mult < b8.mult
    end)
    return nf
end
local function fn590()
    if not lU("AutoPerfectThrow") then
        return
    end
    if k1:GetAttribute("CarRiding") then
        return
    end
    if lJ or _G.GolfCharging then
        return
    end
    local nb_1 = os.clock()
    if lG and nb_1 - lA < 2 then
        return
    end
    lG = false
    if not k9() then
        return
    end
    if nb_1 - lA < 0.45 then
        return
    end
    local nc_1 = k6()
    if not nc_1 then
        return
    end
    lA = nb_1
    lG = true
    lO(SpawnBall, nc_1.CFrame)
    lO(Swing, 1)
end
local function fn633(aT)
    local floor = math.floor
    local mL = aT or 0
    local mM = floor(mL)
    local mK_1 = k_[mM + 1]
    if mK_1 then
        return mK_1
    end
    return k_[#k_] + 25 * (mM + 1 - #k_)
end
local function fn639()
    if not lU("AutoBallShops") then
        return
    end
    local nQ = os.clock()
    if nQ - ll < 0.45 then
        return
    end
    ll = nQ
    k3(l0, lT, BuyBall, EquipBall, lN)
end
local function fn655()
    if not lU("AutoBuyClubs") then
        return
    end
    local nO = os.clock()
    if nO - lt < 0.45 then
        return
    end
    lt = nO
    k3(kV, kU, BuyClub, EquipClub, l_)
end
local function fn705(bt)
    local m0 = bt.Position + Vector3.new(0, 3, 0)
    local LookVector = bt.CFrame.LookVector
    local m2 = Vector3.new(LookVector.X, 0, LookVector.Z)
    if m2.Magnitude < 0.05 then
        m2 = Vector3.new(0, 0, -1)
    end
    return CFrame.lookAt(m0, m0 + m2.Unit)
end
local function onOnClientEvent4()
    lJ = false
    lG = false
end
local function fn761()
    local m4 = lX()
    local m5 = k6()
    if not m4 or not m5 then
        return false
    end
    local m6_1 = os.clock()
    local m7_1 = lC(m4)
    local m8 = m5.Position - m4.Position
    local m9 = math.abs(m8.X) <= m4.Size.X * 0.5 and math.abs(m8.Z) <= m4.Size.Z * 0.5
    local m8_1 = k1:GetAttribute("GolfInZone") == true
    if m8_1 and m9 then
        return true
    elseif m6_1 - k4 < 0.4 then
        return m8_1
    else
        k4 = m6_1
        m5.CFrame = m7_1
        m5.AssemblyLinearVelocity = Vector3.zero
        m5.AssemblyAngularVelocity = Vector3.zero
        return k1:GetAttribute("GolfInZone") == true
    end
end
local function fn765()
    local Character = k1.Character
    local mC = Character and Character:FindFirstChildOfClass("Humanoid")
    return mC
end
local function fn772(av, aw)
    if setclipboard then
        setclipboard(av)
    elseif toclipboard then
        toclipboard(av)
    end
    Library:Notify(aw)
end
local function fn839()
    local GolfZone = Workspace:FindFirstChild("GolfZone")
    local mW = GolfZone and GolfZone:IsA("BasePart")
    if mW then
        return GolfZone
    end
    return nil
end
local function fn858(cl, cm, cn, co, cp)
    local nE = lS()
    for k, v in cl do
        local nF_1 = not cm[v.name]
        if nF_1 ~= false then
            nF_1 = nE >= v.price
        end
        if nF_1 then
            lO(cn, v.name)
            return true
        end
    end
    local nE_1 = kT(cl, cm)
    if nE_1 and nE_1 ~= cp then
        lO(co, nE_1)
    end
    return false
end
local function onOnClientEvent2(bf, bg)
    if typeof(bf) == "string" then
        lN = bf
    end
    if typeof(bg) == "table" then
        lT = bg
    end
    lp()
end
local function fn862()
    if not lU("AutoRebirth") then
        return
    end
    local nS = os.clock()
    if nS - lh < 1.25 then
        return
    end
    local nT = (tonumber(k1:GetAttribute("Level")))
    local nY = if nT then 1 else 0
    local nW = 3763 * nY + 1794 * (1 - nY)
    local nX = 2188 * nY + 1237 * (1 - nY)
    if not ((nW * 1662 + nX * 1935 + nW * nX) % 16777213 == 1944117) then
        nT = 0
    end
    local nU = nT
    local nT_1 = k2()
    if nU < nT_1 then
        return
    end
    lh = nS
    lO(DoRebirth)
end
local function fn872()
    local Coins = k1:FindFirstChild("Coins")
    local mI = Coins and Coins:IsA("ValueBase")
    if mI then
        local mI_1 = tonumber(Coins.Value) or 0
        return mI_1
    end
    return 0
end
local function onChildAdded()
    l0 = lY(le)
end
kR = nil
kT = nil
kU = nil
kV = nil
kW = nil
kX = nil
kY = nil
k_ = nil
k0 = nil
k1 = nil
k2 = nil
k3 = nil
k4 = nil
EquipClub = nil
k6 = nil
k9 = nil
Workspace = nil
BuyClub = nil
le = nil
Swing = nil
lh = nil
lj = nil
ll = nil
lm = nil
lp = nil
lq = nil
lt = nil
lv = nil
DoRebirth = nil
lx = nil
ly = nil
Toggles = nil
lA = nil
lC = nil
local kQ, kS, kZ, k7, AscendConfig, lc, ld, lf, li, lk, ln, AscendDo, lr, Options, lu, lB
lD = nil
lG = nil
lJ = nil
SpawnBall = nil
Library = nil
lN = nil
lO = nil
lP = nil
lS = nil
lT = nil
lU = nil
local lV
EquipBall = nil
lX = nil
lY = nil
l_ = nil
l0 = nil
BuyBall = nil
local lE, SaveManager, VirtualUser, ThemeManager, lL, lQ, lR, lZ, l1
local ReplicatedStorage
local l5_3
local BallStopped
kQ, ReplicatedStorage, lR, lL, VirtualUser, lE, lx, lr, lk, lf, Workspace, k1, kW = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local l3 = 5
repeat
    local l5_1 = (l3 * 2 + 4) % 7 + 1
    if l5_1 <= 4 then
        if l5_1 <= 2 then
            if l5_1 <= 1 then
                if (l3 * 1 + 3) * 21 % 4 == ((l3 * 1 + 3) * 21 + 12) % 4 then
                    kQ = game:GetService("Players")
                else
                    lR = game:GetService("Players")
                end
                l3 = (l3 + 11) % 56
            else
                local l6_1 = (vector.create((l3 * 3 + 3) % 11 + 1, (l3 * 7 + 4) % 13 + 1, (l3 * 9 + 15) % 17 + 1))
                local l7_1 = (vector.create((l3 * 1 + 7) % 11 + 1, (l3 * 8 + 10) % 13 + 1, (l3 * 1 + 3) % 17 + 1))
                local l8_1 = (vector.create((l3 * 1 + 5) % 5 + 1, (l3 * 1 + 1) % 7 + 1, (l3 * 2 + 7) % 9 + 1))
                if math.abs((vector.angle(l6_1, l7_1, l8_1))) - math.abs((vector.angle(l7_1, l6_1, l8_1))) == 3 then
                    kW = game:GetService("ReplicatedStorage")
                else
                    ReplicatedStorage = game:GetService("ReplicatedStorage")
                end
                l3 = (l3 + 53) % 56
            end
        elseif l5_1 <= 3 then
            local l6_2 = {
                "muqqyille",
                "hwswcaeoxp",
                "vofctd",
                "yqgpgkbk",
                "nigdiep",
                "pimbrcd",
                "ezkoadu",
                "dntrllpwt",
                "enit",
                "schdecueakz",
                "enywipb",
                "kzzhxyl"
            }
            local r3 = l3
            local l7_2 = l6_2[r3 % 12 + 1]
            if l7_2:len() >= l7_2:reverse():rep(r3 % 3 + 2):len() then
                lL = game:GetService("RunService")
                lR = game:GetService("UserInputService")
            else
                lR = game:GetService("RunService")
                lL = game:GetService("UserInputService")
            end
            l3 = (l3 + 46) % 56
        else
            local l6_3 = (vector.create((l3 * 7 + 4) % 11 + 1, (l3 * 9 + 9) % 13 + 1, (l3 * 1 + 11) % 17 + 1))
            local l7_3 = (vector.create((l3 * 3 + 4) % 11 + 1, (l3 * 8 + 6) % 13 + 1, (l3 * 1 + 9) % 17 + 1))
            local rV = vector.cross(l6_3, l7_3)
            local rW = vector.dot(l6_3, l7_3)
            if vector.dot(rV, rV) + rW * rW == vector.dot(l6_3, l6_3) * vector.dot(l7_3, l7_3) then
                VirtualUser = game:GetService("VirtualUser")
            else
                k1 = game:GetService("VirtualUser")
            end
            l3 = (l3 + 39) % 56
        end
    elseif l5_1 <= 6 then
        if l5_1 <= 5 then
            if (not lx and lx or (not kW or lr) or (lL or lr) and (lx and lr)) and ((lx or not lL or kW and not lr) and (kW and lr or kW and not lx)) or not ((not lx and lx or (not kW or lr) or (lL or lr) and (lx and lr)) and ((lx or not lL or kW and not lr) and (kW and lr or kW and not lx))) then
                lE = game:GetService("HttpService")
                lx = game:GetService("CoreGui")
                lr = game:GetService("GuiService")
                lk = game:GetService("TeleportService")
            else
                lk = game:GetService("HttpService")
                lE = game:GetService("CoreGui")
                lx = game:GetService("GuiService")
                lr = game:GetService("TeleportService")
            end
            l3 = (l3 + 18) % 56
        else
            if not k1 and not Workspace or (not l3 or lk) or not ReplicatedStorage and not Workspace and (not lx and k1) or not (not k1 and not Workspace or (not l3 or lk) or not ReplicatedStorage and not Workspace and (not lx and k1)) then
                lf = game:GetService("Lighting")
                Workspace = game:GetService("Workspace")
                k1 = kQ.LocalPlayer
            else
                k1 = game:GetService("Lighting")
                lf = game:GetService("Workspace")
                kQ = Workspace.LocalPlayer
            end
            l3 = (l3 + 4) % 56
        end
    else
        local l5_2 = (vector.create((l3 * 6 + 9) % 11 + 1, (l3 * 2 + 5) % 13 + 1, (l3 * 8 + 11) % 17 + 1))
        local l6_4 = (vector.create((l3 * 3 + 5) % 11 + 1, (l3 * 3 + 5) % 13 + 1, (l3 * 6 + 16) % 17 + 1))
        local sz = vector.dot(l5_2, l6_4)
        if sz * sz >= vector.dot(l5_2, l5_2) * vector.dot(l6_4, l6_4) + 1 then
            lx = fn321
        else
            kW = fn321
        end
        l3 = (l3 + 11) % 56
    end
until (l3 * 9 + 32) % 56 == 35
if getgenv then
    lV, l5_3 = nil, nil
    local l3_1 = 1
    repeat
        if (l3_1 * 1 + 1) % 2 + 1 <= 1 then
            local l6_6 = { "azlpibjh", "qlhjtvm", "vaw", "exjuk", "rctihcwgsxp", "ykuix", "pgysy", "kpijvzz", "aqbq" }
            local sJ = l3_1
            local l7_4 = l6_6[sJ % 9 + 1]
            if l7_4:len() >= l7_4:gsub("(.)", "%1%1", sJ % 3 % 2 + 1):len() then
                getgenv().gethui = lV
                kW = getgenv().__OuroborosHitAGolfBallLib
            else
                getgenv().gethui = kW
                lV = getgenv().__OuroborosHitAGolfBallLib
            end
            l3_1 = (l3_1 + 3) % 8
        else
            if (not l3_1 or l3_1) and (not l5_3 or not l5_3) and (not l3_1 and l5_3 and (not l3_1 and l3_1)) and (not l5_3 and l5_3 or (not l5_3 or not l5_3) or (not l3_1 or not l5_3 or (l5_3 or l3_1))) or (l3_1 or not l5_3 or (not lV or not l5_3) or (not l5_3 or l3_1) and (l3_1 or not l3_1) or ((l5_3 or not lV) and (not l5_3 and not l5_3) or (not l5_3 and not l3_1 or not l5_3 and not l3_1))) or not ((not l3_1 or l3_1) and (not l5_3 or not l5_3) and (not l3_1 and l5_3 and (not l3_1 and l3_1)) and (not l5_3 and l5_3 or (not l5_3 or not l5_3) or (not l3_1 or not l5_3 or (l5_3 or l3_1))) or (l3_1 or not l5_3 or (not lV or not l5_3) or (not l5_3 or l3_1) and (l3_1 or not l3_1) or ((l5_3 or not lV) and (not l5_3 and not l5_3) or (not l5_3 and not l3_1 or not l5_3 and not l3_1)))) then
                l5_3 = lV
            else
                lV = l5_3
            end
            l3_1 = (l3_1 + 7) % 8
        end
    until (l3_1 * 5 + 7) % 8 == 6
    if l5_3 then
        l5_3 = lV.Unload
    end
    if l5_3 then
        pcall(function()
            lV:Unload()
        end)
    end
end
pcall(function()
    gethui = kW
end)
if setthreadidentity then
    setthreadidentity(8)
end
lB, lv, ln, li, ld, k7, kZ, kS, lZ, Library, ThemeManager, SaveManager = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
lB = "Hit a Golf Ball"
lv = "https://discord.gg/ehKVq7pf7v"
ln = "https://rscripts.net/@Ouroboros"
li = "https://ouroboros-hub-rbx.web.app/"
ld = "#7fd47f"
k7 = "#6ec1ff"
kZ = "#e8a34d"
kS = "#8b93a3"
lZ = "#e05a5a"
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
if getgenv then
    getgenv().__OuroborosHitAGolfBallLib = Library
end
Toggles, Options, Swing, BuyClub, EquipClub, BuyBall, EquipBall, SpawnBall, BallStopped, DoRebirth, AscendDo, lj, le, AscendConfig, k_, kU, l_, lT, lN, lJ, lG, lA, lt, ll, lh, lc, k4, kV, l0, l1, kX, lQ, lq, k0, lU, lu, k6, lS, ly, k2, lO, lp, lX, lC, k9, kY, lY, kT, k3, lm, lD, lP, kR = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Toggles = Library.Toggles
Options = Library.Options
local l6_7 = ReplicatedStorage:WaitForChild("GolfRemotes")
Swing = l6_7:WaitForChild("Swing")
BuyClub = l6_7:WaitForChild("BuyClub")
EquipClub = l6_7:WaitForChild("EquipClub")
local ShopState = l6_7:WaitForChild("ShopState")
BuyBall = l6_7:WaitForChild("BuyBall")
EquipBall = l6_7:WaitForChild("EquipBall")
local BallState = l6_7:WaitForChild("BallState")
SpawnBall = l6_7:WaitForChild("SpawnBall")
local BallLaunched = l6_7:WaitForChild("BallLaunched")
if (not lD or not lT or (lO or not lT)) and (kT or not lD or (kT or lD)) or not ((not lD or not lT or (lO or not lT)) and (kT or not lD or (kT or lD))) then
    BallStopped = l6_7:WaitForChild("BallStopped")
else
    l6_7 = BallStopped:WaitForChild("BallStopped")
end
DoRebirth = l6_7:WaitForChild("DoRebirth")
AscendDo = l6_7:WaitForChild("AscendDo")
lj = ReplicatedStorage:WaitForChild("GolfClubSkins")
le = ReplicatedStorage:WaitForChild("BallSkins")
AscendConfig = require(ReplicatedStorage:WaitForChild("AscendConfig"))
k_ = {
    10,
    20,
    30,
    40,
    50,
    60,
    70,
    80,
    90,
    100,
    115,
    130,
    145,
    160,
    180,
    200,
    220,
    240,
    265,
    290,
    315,
    340
}
kU = { Golf = true }
l_ = "Golf"
lT = { ["Golf Ball"] = true }
lN = "Golf Ball"
lJ = false
lG = false
lA = 0
lt = 0
ll = 0
lh = 0
lc = 0
k4 = 0
kX = fn139
lQ = fn177
lq = fn772
k0 = fn288
lU = fn193
if (kV and lT or (BallState or not kV)) and (BallState and not BallState and (not lN or not k4)) and ((lm and not lT or (not k4 or not kV)) and (kV or not lN or (not lm or not lm))) or (lT and not k4 or (lN or lm)) and (not lm or kV or (not kV or not lm)) and (not BallState and not k4 and (kV and kV) and (lN or k4 or (not k4 or lm))) or not ((kV and lT or (BallState or not kV)) and (BallState and not BallState and (not lN or not k4)) and ((lm and not lT or (not k4 or not kV)) and (kV or not lN or (not lm or not lm))) or (lT and not k4 or (lN or lm)) and (not lm or kV or (not kV or not lm)) and (not BallState and not k4 and (kV and kV) and (lN or k4 or (not k4 or lm)))) then
    lu = fn765
    k6 = fn100
else
    k6 = fn765
    lu = fn100
end
lS = fn872
ly = fn633
k2 = fn54
lO = function(a1, ...)
    local a2
    a2 = table.pack(...)
    pcall(function()
        a1:FireServer(table.unpack(a2, 1, a2.n))
    end)
end
lp = fn261
ShopState.OnClientEvent:Connect(onOnClientEvent)
BallState.OnClientEvent:Connect(onOnClientEvent2)
BallLaunched.OnClientEvent:Connect(onOnClientEvent3)
BallStopped.OnClientEvent:Connect(onOnClientEvent4)
lO(ShopState)
lO(BallState)
lX = fn839
lC = fn705
k9 = fn761
kY = fn590
lY = fn521
kT = fn482
k3 = fn858
kV = lY(lj)
l0 = lY(le)
if (not kT and kU or (kU or kT) or (BallStopped and not BallStopped or BallStopped and not kU)) and ((not kT or not kT) and (kU or kT) or (not kT or kU) and (not kT and kU)) and not ((not kT and kU or (kU or kT) or (BallStopped and not BallStopped or BallStopped and not kU)) and ((not kT or not kT) and (kU or kT) or (not kT or kU) and (not kT and kU))) then
    kR.ChildAdded:Connect(onChildAdded2)
    lm.ChildAdded:Connect(onChildAdded)
    lD = fn655
    lP = fn639
    lj = fn862
    le = function()
        local n0
        if not lU("AutoAscend") then
            return
        end
        local n1 = os.clock()
        if n1 - lc < 1.5 then
            return
        end
        n0 = 0
        pcall(function()
            local nZ = AscendConfig.gainOf(k1) or 0
            n0 = nZ
        end)
        if n0 <= 0 then
            return
        end
        lc = n1
        lO(AscendDo)
    end
else
    lj.ChildAdded:Connect(onChildAdded2)
    le.ChildAdded:Connect(onChildAdded)
    lm = fn655
    lD = fn639
    lP = fn862
    kR = function()
        local n0
        if not lU("AutoAscend") then
            return
        end
        local n1 = os.clock()
        if n1 - lc < 1.5 then
            return
        end
        n0 = 0
        pcall(function()
            local nZ = AscendConfig.gainOf(k1) or 0
            n0 = nZ
        end)
        if n0 <= 0 then
            return
        end
        lc = n1
        lO(AscendDo)
    end
end
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = lv, Copyable = true }, "|", lB },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
Window:SetGlow(true, { Color = Color3.fromRGB(242, 154, 196), Radius = 24, Transparency = 0.3 })
l1 = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gamepad-2"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in l1 do
    if k ~= "Info" then
        fn126(v)
    end
end
local AutomationGroup = l1.Main:AddLeftGroupbox("Automation", "bot")
AutomationGroup:AddToggle("AutoPerfectThrow", { Text = "Auto Perfect Throw", Default = false })
AutomationGroup:AddLabel(kX("Works sometimes. Animations are just not registering, so don't annoy me about it.", ld), true)
AutomationGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
AutomationGroup:AddToggle("AutoBuyClubs", { Text = "Auto Buy Clubs", Default = false })
AutomationGroup:AddToggle("AutoAscend", { Text = "Auto Ascend", Default = false })
AutomationGroup:AddToggle("AutoBallShops", { Text = "Auto Ball Shops", Default = false })
local function l3_3()
    local oV
    local oT
    oT = nil
    oV = nil
    local oS, Label, Label2, Label3, oY
    local function oZ()
        local n3 = hookfunction ~= nil
        local n4 = hookmetamethod ~= nil
        local n5 = getrawmetatable ~= nil
        local n6 = setrawmetatable ~= nil
        local n7 = getgc ~= nil
        local n8 = getgenv ~= nil
        local n9 = getreg ~= nil
        local oa = getconnections ~= nil
        local ob = firesignal ~= nil
        local oc = getcallbackvalue ~= nil
        local od = setclipboard ~= nil
        local oe = getcustomasset ~= nil
        local of = getnamecallmethod ~= nil
        local og = isexecutorclosure ~= nil
        local oh = fireproximityprompt ~= nil
        local oi = firetouchinterest ~= nil
        local oj = WebSocket ~= nil
        local ol = readfile ~= nil
        local om = writefile ~= nil
        local oo = (request or http_request) ~= nil
        local oq = (debug and debug.getupvalues) ~= nil
        local ou = (debug and debug.setupvalue) ~= nil
        local ov = 0
        local ow = { n3, n4, n5, n6, n7, n8, n9, oa, ob, oc, od, oe, of, og, oh, oi, oj, ol, om, oo, oq, ou }
        for i, v in ipairs(ow) do
            if v then
                ov += 1
            end
        end
        local n3_1 = ov / #ow
        if n3_1 >= 0.9 then
            return kX("Full Support", ld)
        elseif n3_1 >= 0.6 then
            return kX("Half Support", kZ)
        else
            return kX("Low Support", lZ)
        end
    end
    oT = "Unknown"
    pcall(function()
        local oF_1
        local oE_1
        if identifyexecutor then
            oF_1, oE_1 = identifyexecutor()
            local oG = oF_1 ~= ""
            local oH = type(oF_1) == "string" and oG
            if oH then
                local oG_1 = type(oE_1) == "string" and oE_1 ~= "" and oF_1 .. " " .. oE_1
                local oE_2 = oG_1
                local oL = if oE_2 then 1 else 0
                local oJ = 2944 * oL + 1966 * (1 - oL)
                local oK = 2468 * oL + 601 * (1 - oL)
                if not ((oJ * 2747 + oK * 2657 + oJ * oK) % 16777213 == 5133223) then
                    oE_2 = oF_1
                end
                oT = oE_2
            end
        end
    end)
    local o_ = oZ()
    oV = os.clock()
    oY = function()
        local oM = math.floor(os.clock() - oV)
        if oM < 60 then
            return oM .. "s"
        elseif oM < 3600 then
            return string.format("%dm %ds", oM // 60, oM % 60)
        else
            return string.format("%dh %dm", oM // 3600, oM % 3600 // 60)
        end
    end
    local UserGroup = l1.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = k1, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(lQ("User", k1.DisplayName .. " @" .. k1.Name, ld), true)
    UserGroup:AddLabel(lQ("UserId", tostring(k1.UserId), k7), true)
    UserGroup:AddLabel(lQ("Executor", oT .. "  " .. o_, ld), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(lQ("Session", oY(), kZ), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            lq(k1.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            lq("https://www.roblox.com/users/" .. tostring(k1.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = l1.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(lQ("Game", lB, k7), true)
    Label2 = SessionGroup:AddLabel(lQ("Players", "0/0", ld), true)
    oS = tostring(game.JobId)
    local o__1 = #oS > 18 and string.sub(oS, 1, 18) .. "..."
    local o__2 = o__1 or oS
    SessionGroup:AddLabel(lQ("Job", o__2, kS), true)
    Label = SessionGroup:AddLabel(lQ("Ping", "0 ms", kZ), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            lk:Teleport(game.PlaceId, k1)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            lq(oS, "Copied Job ID")
        end
    })
    task.spawn(function()
        local oP_1
        local oO_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(lQ("Session", oY(), kZ))
            Label2:SetText(lQ("Players", #kQ:GetPlayers() .. "/" .. tostring(kQ.MaxPlayers), ld))
            oO_1, oP_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local oO_2 = oO_1 and oP_1 .. " ms" or "n/a"
            Label:SetText(lQ("Ping", oO_2, kZ))
        end
    end)
    local SocialsGroup = l1.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = k0 })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            lq(ln, "Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            lq(li, "Copied website link")
        end
    })
end
local function l5_5()
    local connection
    local MovementGroup = l1.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = l1.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    lR.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = k1.Character
            if Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    local o2_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if o2_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    lL.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local pd_1 = lu()
            if pd_1 then
                pd_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    local CurrentCamera = Workspace.CurrentCamera
    lR.RenderStepped:Connect(function(e5)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local pf_1 = lu()
            if pf_1 then
                pf_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local pf_3 = k6()
            local pg = lu()
            if pf_3 and pg then
                pg.PlatformStand = true
                local pg_1 = Vector3.zero
                if lL:IsKeyDown(Enum.KeyCode.W) then
                    pg_1 += CurrentCamera.CFrame.LookVector
                end
                if lL:IsKeyDown(Enum.KeyCode.S) then
                    pg_1 -= CurrentCamera.CFrame.LookVector
                end
                if lL:IsKeyDown(Enum.KeyCode.A) then
                    pg_1 -= CurrentCamera.CFrame.RightVector
                end
                if lL:IsKeyDown(Enum.KeyCode.D) then
                    pg_1 += CurrentCamera.CFrame.RightVector
                end
                if lL:IsKeyDown(Enum.KeyCode.Space) then
                    pg_1 += Vector3.new(0, 1, 0)
                end
                if lL:IsKeyDown(Enum.KeyCode.LeftControl) then
                    pg_1 -= Vector3.new(0, 1, 0)
                end
                pf_3.AssemblyLinearVelocity = Vector3.zero
                if pg_1.Magnitude > 0 then
                    pf_3.CFrame = pf_3.CFrame + pg_1.Unit * Options.FlySpeed.Value * e5
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local pm = lu()
            if pm then
                pm.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local po = lu()
            if po then
                po.WalkSpeed = 16
            end
        end
    end)
    local function fr(fs)
        if not fs:IsA("ProximityPrompt") then
            return
        end
        fs.HoldDuration = 0
        fs.MaxActivationDistance = 50
        fs.RequiresLineOfSight = false
    end
    connection = nil
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in ipairs(Workspace:GetDescendants()) do
                pcall(fr, descendant)
            end
            connection = Workspace.DescendantAdded:Connect(function(fA)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(fr, fA)
                end
            end)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    Library:OnUnload(function()
        if connection then
            connection:Disconnect()
        end
    end)
end
local function l7_6()
    local rl, rm, rn, connection2, Label, rq, rr, rs, rt, ru, rv, rw, rx, ry, connection
    local MenuGroup = l1.Settings:AddLeftGroupbox("Menu", "logs")
    ru = 0
    rl = tick()
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    Label = MenuGroup:AddLabel("AFK triggers: 0")
    rv = function()
        local CurrentCamera = Workspace.CurrentCamera
        if not CurrentCamera then
            return
        end
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        ru += 1
        rl = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. ru)
        end)
    end
    connection2 = k1.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(rv)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local pG = Toggles.AntiAfk.Value and tick() - rl >= 60
            if pG then
                pcall(rv)
            end
        end
    end)
    MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3D", { Text = "Disable 3D Rendering", Default = false })
    MenuGroup:AddToggle("FpsBoost", { Text = "FPS Boost", Default = false })
    MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local ScriptGroup = l1.Settings:AddLeftGroupbox("Script", "terminal")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            Library:Unload()
        end
    })
    rx = function(f9)
        pcall(function()
            lr:SetGameplayPausedNotificationEnabled(not f9)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = lx:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not f9
            end
        end)
        if not f9 then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(k1, "GameplayPaused", false)
            else
                k1.GameplayPaused = false
            end
        end)
    end
    Toggles.AntiGameplayPause:OnChanged(function()
        rx(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                rx(true)
            end
        end
    end)
    rq = false
    rw = function()
        local JobId, PlaceId
        if rq then
            return
        end
        rq = true
        PlaceId, JobId = game.PlaceId, game.JobId
        local pS = pcall(function()
            lk:TeleportToPlaceInstance(PlaceId, JobId, k1)
        end)
        if not pS then
            pcall(function()
                lk:Teleport(PlaceId, k1)
            end)
        end
    end
    task.spawn(function()
        local RobloxPromptGui = lx:WaitForChild("RobloxPromptGui", 30)
        local pX = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
        if not pX then
            return
        end
        pX.ChildAdded:Connect(function(gJ)
            if Library.Unloaded then
                return
            end
            if Toggles.AutoReconnect.Value and gJ.Name == "ErrorPrompt" then
                rw()
            end
        end)
    end)
    lk.TeleportInitFailed:Connect(function()
        if Toggles.AutoReconnect.Value then
            rq = false
            rw()
        end
    end)
    Toggles.Disable3D:OnChanged(function()
        pcall(function()
            lR:Set3dRenderingEnabled(not Toggles.Disable3D.Value)
        end)
    end)
    rn = {
        ParticleEmitter = true,
        Trail = true,
        Smoke = true,
        Fire = true,
        Sparkles = true,
        Explosion = true,
        Beam = true
    }
    rs = function(g0)
        if rn[g0.ClassName] then
            pcall(function()
                g0.Enabled = false
            end)
        end
    end
    connection = nil
    Toggles.FpsBoost:OnChanged(function()
        if Toggles.FpsBoost.Value then
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
            end)
            pcall(function()
                lf.GlobalShadows = false
            end)
            pcall(function()
                lf.FogEnd = 9000000000
            end)
            for i, descendant in ipairs(Workspace:GetDescendants()) do
                pcall(rs, descendant)
            end
            connection = Workspace.DescendantAdded:Connect(function(hf)
                if Toggles.FpsBoost.Value then
                    pcall(rs, hf)
                end
            end)
        else
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Automatic
            end)
            pcall(function()
                lf.GlobalShadows = true
            end)
            if connection then
                connection:Disconnect()
                connection = nil
            end
        end
    end)
    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder("OuroborosHub")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    ThemeManager:ApplyToTab(l1.Settings)
    ThemeManager:LoadDefault()
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    SaveManager:SetFolder("OuroborosHub/HitAGolfBall")
    local rA_2 = SaveManager:BuildConfigSection(l1.Settings)
    rt = function(hm, hn)
        local qc = hm == "Toggle" and Toggles
        local qh = if qc then 1 else 0
        local qf = 1916 * qh + 103 * (1 - qh)
        local qg = 1929 * qh + 3245 * (1 - qh)
        if not ((qf * 1601 + qg * 1094 + qf * qg) % 16777213 == 8873806) then
            qc = Options
        end
        local qc_1 = qc[hn]
        local qb_2 = type(qc_1) == "table" and qc_1.Type == hm
        local qb_3 = qb_2 and qc_1
        local qk = if qb_3 then 1 else 0
        local qi = 181 * qk + 230 * (1 - qk)
        local qj = 1004 * qk + 659 * (1 - qk)
        if not ((qi * 2339 + qj * 2106 + qi * qj) % 16777213 == 2719507) then
            qb_3 = nil
        end
        return qb_3
    end
    rr = function(hu, hv)
        local Type = hv.Type
        if Type == "Toggle" then
            return { idx = hu, type = "Toggle", value = hv.Value == true }
        elseif Type == "Slider" then
            return { idx = hu, type = "Slider", value = tostring(hv.Value) }
        elseif Type == "Dropdown" then
            return { idx = hu, type = "Dropdown", multi = hv.Multi == true, value = hv.Value }
        elseif Type == "Input" then
            local qm = hv.Value or ""
            return { idx = hu, type = "Input", text = tostring(qm) }
        elseif Type == "ColorPicker" then
            return { idx = hu, type = "ColorPicker", value = hv.Value:ToHex(), transparency = hv.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = hu,
                type = "KeyPicker",
                mode = hv.Mode,
                key = hv.Value,
                modifiers = hv.Modifiers,
                toggled = hv.Toggled
            }
        else
            return nil
        end
    end
    ry = function()
        local qy = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local qz = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if qz then
                    local qz_1 = rr(k, v)
                    if qz_1 then
                        qy[#qy + 1] = qz_1
                    end
                end
            end
        end
        table.sort(qy, function(hH, hI)
            if hH.type ~= hI.type then
                return hH.type < hI.type
            end
            return hH.idx < hI.idx
        end)
        return { objects = qy }
    end
    rm = function(hK)
        local qS
        qS = nil
        local qT = type(hK) ~= "table" or type(hK.idx) ~= "string" or type(hK.type) ~= "string" or SaveManager.Ignore[hK.idx]
        if qT then
            return false
        end
        qS = rt(hK.type, hK.idx)
        if not qS then
            return false
        end
        local qT_1 = pcall(function()
            if hK.type == "Input" then
                if type(hK.text) ~= "string" then
                    return
                end
                qS:SetValue(hK.text)
            elseif hK.type == "ColorPicker" then
                qS:SetValueRGB(Color3.fromHex(hK.value), hK.transparency)
            elseif hK.type == "KeyPicker" then
                qS:SetValue({ hK.key, hK.mode, hK.modifiers })
                if hK.mode == "Toggle" and hK.toggled ~= nil then
                    qS.Toggled = hK.toggled
                    qS:Update()
                end
            else
                qS:SetValue(hK.value)
            end
        end)
        return qT_1
    end
    rA_2:AddDivider()
    rA_2:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    rA_2:AddButton("Export Config to Clipboard", function()
        local qZ_1
        local qY_1
        qY_1, qZ_1 = pcall(lE.JSONEncode, lE, ry())
        if not qY_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local qY_2 = setclipboard or toclipboard
        local qY_3 = type(qY_2) ~= "function" or not pcall(qY_2, qZ_1)
        if qY_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    rA_2:AddButton("Import Config from Clipboard Text", function()
        local q3_1
        local q1 = Options.SaveManager_ImportSource.Value or ""
        local q1_1
        local q2 = tostring(q1):match("^%s*(.-)%s*$")
        if q2 == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        q1_1, q3_1 = pcall(lE.JSONDecode, lE, q2)
        local q2_1 = not q1_1
        local q7 = if q2_1 then 1 else 0
        local q5 = 1999 * q7 + 3988 * (1 - q7)
        local q6 = 1997 * q7 + 1934 * (1 - q7)
        if not ((q5 * 4087 + q6 * 121 + q5 * q6) % 16777213 == 12403553) then
            q2_1 = type(q3_1) ~= "table"
        end
        local q7_1 = if q2_1 then 1 else 0
        local q5_1 = 3281 * q7_1 + 3365 * (1 - q7_1)
        local q6_1 = 3122 * q7_1 + 3700 * (1 - q7_1)
        if not ((q5_1 * 1945 + q6_1 * 3805 + q5_1 * q6_1) % 16777213 == 11726824) then
            q2_1 = type(q3_1.objects) ~= "table"
        end
        if q2_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local q1_2 = 0
        for i, v in ipairs(q3_1.objects) do
            local q7_2 = if rm(v) then 1 else 0
            if q7_2 == 1 then
                q1_2 += 1
            end
        end
        if q1_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local q3_2 = q1_2 == 1 and ""
        local rg = if q3_2 then 1 else 0
        local re = 2448 * rg + 1937 * (1 - rg)
        local rf = 2428 * rg + 3860 * (1 - rg)
        if not ((re * 2873 + rf * 1579 + re * rf) % 16777213 == 33447) then
            q3_2 = "s"
        end
        Library:Notify(("Imported %d setting%s"):format(q1_2, q3_2), 6)
    end)
    SaveManager:LoadAutoloadConfig()
    Library:OnUnload(function()
        if connection2 then
            connection2:Disconnect()
        end
        rx(false)
        pcall(function()
            lR:Set3dRenderingEnabled(true)
        end)
        if connection then
            connection:Disconnect()
        end
        if getgenv then
            getgenv().__OuroborosHitAGolfBallLib = nil
        end
    end)
    if Toggles.HideUiOnStart.Value then
        Library:Toggle(false)
    end
end
l3_3()
l5_5()
l7_6()
task.spawn(worker)
task.spawn(worker2)
