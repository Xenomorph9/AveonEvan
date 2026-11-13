local h1
local hG
local hn
local hJ
local h4
local hq
local RequestRebirth
local hM
local ht
local hP
local hw
local hS
local hd
local hz
local hV
local hg
local hC
local hY
local hj
local h0
local connection2
local hm
local hI
local Options
local Ranked
local h6
local hO
local h9
local hR
local hy
local connection3
local hf
local hX
local hE
local h_
local hi
local hH
local hl
local ho
local h5
local hK
local hN
local hr
local connection
local hQ
local hu
local Treadmills
local hT
local he
local WinPads2
local hW
local hh
local hZ
local Cars
local hk
local function fn45()
    if not hH:GetAttribute("DataLoaded") then
        return
    end
    local k7 = if not hT() then 1 else 0
    if k7 == 1 then
        return
    end
    pcall(function()
        RequestRebirth:InvokeServer()
    end)
end
local function onRscripts()
    if setclipboard then
        setclipboard(hh)
    elseif toclipboard then
        toclipboard(hh)
    end
    hI:Notify("Copied Rscripts profile to clipboard")
end
local function fn92()
    if not hH:GetAttribute("DataLoaded") then
        return
    end
    local ll = hE()
    if not ll then
        return
    end
    hW(ll)
end
local function fn127()
    local max = math.max
    local floor = math.floor
    local k2 = hH:GetAttribute("Rebirths") or 0
    local k1_1 = max(floor(k2), 0)
    local k0_1 = hH:GetAttribute("Level") or 1
    local k0_2 = hS.GetLevelCap(k1_1)
    return k0_2 <= k0_1
end
local function onInputChanged(eq)
    local UserInputType = eq.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        h5 = tick()
    end
end
local function worker()
    local lL_1
    while true do
        task.wait(1)
        if hI.Unloaded then
            break
        end
        local lK = math.floor(os.clock() - he)
        if lK < 60 then
            lL_1 = lK .. "s"
        elseif lK < 3600 then
            lL_1 = string.format("%dm %ds", lK // 60, lK % 60)
        else
            lL_1 = string.format("%dh %dm", lK // 3600, lK % 3600 // 60)
        end
        hP:SetText(hy("Session time", lL_1, h1))
    end
end
local function onInputBegan()
    h5 = tick()
end
local function fn182(M, N)
    if setclipboard then
        setclipboard(M)
    elseif toclipboard then
        toclipboard(M)
    end
    hI:Notify(N)
end
local function fn189(aG)
    local jb = Cars:FindFirstChild(aG)
    if not jb then
        return nil
    end
    local Base = jb:FindFirstChild("Base")
    local jb_1 = Base and Base:FindFirstChild("CarPromptAttachment")
    local jd = jb_1
    if jb_1 then
        jb_1 = jd:FindFirstChild("CarBuyEquipPrompt")
    end
    local jd_1 = jb_1
    if jb_1 then
        jb_1 = jd_1:IsA("ProximityPrompt")
    end
    if jb_1 then
        return jd_1, Base
    end
    return nil
end
local function worker6()
    while not hI.Unloaded do
        task.wait(2)
        if hQ("RemoveGameplayPaused") then
            hR(true)
        end
        if hQ("AntiAfk") then
            local l5 = tick() - h5
            local l6 = tick() - h0
            if l5 >= 300 and l6 >= 60 then
                pcall(hz)
            else
                if l5 < 300 and l6 >= 300 then
                    pcall(hz)
                end
            end
        end
    end
end
local function fn215()
    local CurrentCamera = hO.CurrentCamera
    if not CurrentCamera then
        return
    end
    hV:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    hV:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    h0 = tick()
end
local function worker4()
    while not hI.Unloaded do
        task.wait(0.5)
        if hQ("AutoRebirth") then
            pcall(hm)
        end
    end
end
local function onRemoveGameplayPaused(ea)
    hR(ea)
end
local function fn310()
    hi(hn, "Copied Discord invite to clipboard")
end
local function fn323(aQ)
    local jj_1
    local ji_1
    jj_1, ji_1 = hC(aQ)
    local jk = not ji_1
    local jl = not jj_1
    local jp = if jl then 1 else 0
    local jn = 196 * jp + 1645 * (1 - jp)
    local jo = 596 * jp + 1663 * (1 - jp)
    if not ((jn * 2256 + jo * 1260 + jn * jo) % 16777213 == 1309952) then
        jl = jk
    end
    if jl then
        return false
    elseif not h9(ji_1.CFrame + Vector3.new(0, 3, 4)) then
        return false
    else
        task.wait(0.2)
        if fireproximityprompt then
            fireproximityprompt(jj_1)
            return true
        end
        return false
    end
end
local function onUnload()
    hI:Unload()
end
local function fn338()
    local jq = "Gulf"
    local jr = -math.huge
    for k, v in pairs(hZ.Cars) do
        local PowerBoost = v.PowerBoost
        local jt = typeof(PowerBoost) == "number" and hN(k) and PowerBoost > jr
        if jt then
            jr = PowerBoost
            jq = k
        end
    end
    return jq, jr
end
local function fn354()
    local ki = h6()
    if not hK(ki) then
        ki = 1
    end
    local Name
    local kk = -math.huge
    for i, v in ipairs(hf) do
        local kl_1 = v.World == ki and hH:GetAttribute("OwnsTreadmill_" .. v.Name) == true
        if kl_1 then
            local kl_2 = hr[v.Name] or 1
            if kl_2 > kk then
                kk = kl_2
                Name = v.Name
            end
        end
    end
    if Name then
        return Name
    end
    local max = math.max
    local floor = math.floor
    local kn = hH:GetAttribute("Rebirths") or 0
    local km_3 = max(floor(kn), 0)
    local kn_1 = ({ "Normal", "Candy", "Lava" })[ki] or "Normal"
    local kj_1 = kn_1
    local kk_1 = hr[kn_1] or 1
    for i, v in ipairs(hk) do
        if v.World == ki and v.Requirement <= km_3 then
            local kl_7 = hr[v.Name] or 1
            if kl_7 >= kk_1 then
                kk_1 = kl_7
                kj_1 = v.Name
            end
        end
    end
    return kj_1
end
local function fn359(W, X, Y)
    return string.format("<b>%s</b> %s %s", W, hM("-", "#5a6070"), hM(X, Y))
end
local function fn361(dt)
    local DiscordGroup = dt:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = h4 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = h4 })
end
local function worker3()
    while not hI.Unloaded do
        task.wait(1.5)
        if hQ("AutoBuyBestCar") then
            pcall(hg)
        end
        if hQ("AutoEquipBestCar") then
            pcall(hG)
        end
        if hQ("AutoBuyBestTitle") then
            pcall(hj)
        end
        if hQ("AutoEquipBestTitle") then
            pcall(hY)
        end
    end
end
local function fn388(b7, b8)
    local kG = WinPads2:FindFirstChild(b7)
    local kH = kG and kG:FindFirstChild(b8)
    local kG_1 = kH
    if kH then
        kH = kG_1:FindFirstChild("Collect")
    end
    local kG_2 = kH
    if kH then
        kH = kG_2:IsA("BasePart")
    end
    if kH then
        return kG_2
    end
    return nil
end
local function worker5()
    while not hI.Unloaded do
        task.wait(1.1)
        if hQ("AutoWin") then
            pcall(hX)
        end
    end
end
local function worker2()
    while not hI.Unloaded do
        task.wait(1)
        if hQ("GoBestTreadmill") then
            pcall(ht)
        end
    end
end
local function fn407(bF)
    if bF <= 1 then
        return true
    elseif bF == 2 then
        return hH:GetAttribute("World2Unlocked") == true
    elseif bF == 3 then
        return hH:GetAttribute("World3Unlocked") == true
    else
        return false
    end
end
local function fn428()
    local WinPads = Options.WinPads
    local kT = WinPads and WinPads.Value
    if typeof(kT) ~= "table" then
        return {}
    end
    local kT_1 = {}
    for k, v in pairs(kT) do
        if v then
            table.insert(kT_1, k)
        end
    end
    table.sort(kT_1, function(cp, cq)
        local kM = (tonumber(string.match(cp, "%d+")))
        local kR = if kM then 1 else 0
        local kP = 370 * kR + 2627 * (1 - kR)
        local kQ = 1286 * kR + 1349 * (1 - kR)
        if not ((kP * 2529 + kQ * 3843 + kP * kQ) % 16777213 == 6353648) then
            kM = 0
        end
        local kN = tonumber(string.match(cq, "%d+")) or 0
        return kM < kN
    end)
    return kT_1
end
local function fn458()
    local lk = if not hH:GetAttribute("DataLoaded") then 1 else 0
    if lk == 1 then
        return
    end
    local lg = ho()
    local lk_1 = if hH:GetAttribute("EquippedCar") == lg then 1 else 0
    if lk_1 == 1 then
        return
    end
    hW(lg)
end
local function fn461(ao)
    local i1 = hq()
    if not i1 or not ao then
        return false
    end
    i1.AssemblyLinearVelocity = Vector3.zero
    i1.AssemblyAngularVelocity = Vector3.zero
    i1.CFrame = ao
    return true
end
local function fn462()
    local attr = hH:GetAttribute("CurrentWorld")
    local kc = typeof(attr) == "number" and attr >= 1
    if kc then
        return math.floor(attr)
    end
    return 1
end
local function fn463(az)
    local OwnedTitles = hH:FindFirstChild("OwnedTitles")
    local i9 = OwnedTitles and OwnedTitles:FindFirstChild(az)
    local i9_1 = i9 ~= nil and i9:IsA("BoolValue") and i9.Value == true
    return i9_1
end
local function fn466(as)
    if as == "Gulf" then
        return true
    end
    local OwnedCars = hH:FindFirstChild("OwnedCars")
    local i6 = OwnedCars and OwnedCars:FindFirstChild(as)
    local i6_1 = i6 ~= nil and i6:IsA("BoolValue") and i6.Value == true
    return i6_1
end
local function fn471()
    local Character = hH.Character
    local i_ = Character and Character:FindFirstChild("HumanoidRootPart")
    return i_
end
local function fn476()
    local lB_1
    local lA_1
    if identifyexecutor then
        lB_1, lA_1 = identifyexecutor()
        local lC = lB_1 ~= ""
        local lD = type(lB_1) == "string" and lC
        if lD then
            local lC_1 = type(lA_1) == "string" and lA_1 ~= "" and lB_1 .. " " .. lA_1
            hl = lC_1 or lB_1
        end
    end
end
local function fn486()
    connection:Disconnect()
    connection2:Disconnect()
    connection3:Disconnect()
    hR(false)
end
local function fn505(T, U)
    return string.format('<font color="%s">%s</font>', U, T)
end
local function fn511(b1)
    local kC = Treadmills:FindFirstChild(b1)
    if not kC then
        return nil
    end
    local Hitbox = kC:FindFirstChild("Hitbox")
    local kE = Hitbox and Hitbox:IsA("BasePart")
    if kE then
        return Hitbox
    end
    return kC:FindFirstChildWhichIsA("BasePart", true)
end
local function fn513(D, E)
    local iS = tonumber(string.match(D, "%d+")) or 0
    local iT = tonumber(string.match(E, "%d+")) or 0
    return iS < iT
end
local function fn533()
    local Name
    local jP = -math.huge
    for i, v in ipairs(Ranked) do
        local jQ = hd(v.Name) and v.Multiplier > jP
        if jQ then
            jP = v.Multiplier
            Name = v.Name
        end
    end
    return Name, jP
end
local function fn551()
    local max = math.max
    local floor = math.floor
    local j_ = (hH:GetAttribute("Wins"))
    local j4 = if j_ then 1 else 0
    local j2 = 2658 * j4 + 1708 * (1 - j4)
    local j3 = 807 * j4 + 449 * (1 - j4)
    if not ((j2 * 3745 + j3 * 3545 + j2 * j3) % 16777213 == 14960031) then
        j_ = 0
    end
    local jZ_1 = max(floor(j_), 0)
    local jY_1 = -1
    local j__1 = nil
    for i, v in ipairs(Ranked) do
        local j0 = not hd(v.Name) and v.RequiredWins <= jZ_1 and v.RequiredWins > jY_1
        if j0 then
            jY_1 = v.RequiredWins
            j__1 = v.Name
        end
    end
    return j__1
end
local function fn571(af)
    local iW = hu[af]
    return iW ~= nil and iW.Value == true
end
local function fn573()
    local max = math.max
    local jB_1
    local floor = math.floor
    local jD = hH:GetAttribute("Wins") or 0
    local jD_1
    local jC_1 = max(floor(jD), 0)
    jB_1, jD_1 = ho()
    local jB_2 = jD_1
    local jD_2 = nil
    for k, v in pairs(hZ.Cars) do
        local Price = v.Price
        local PowerBoost = v.PowerBoost
        local jG = typeof(Price) == "number" and typeof(PowerBoost) == "number" and not hN(k) and Price <= jC_1 and PowerBoost > jB_2
        if jG then
            jB_2 = PowerBoost
            jD_2 = k
        end
    end
    return jD_2, jB_2
end
local function onCopyJoinScript_JobID()
    local lI = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, hJ)
    if setclipboard then
        setclipboard(lI)
    elseif toclipboard then
        toclipboard(lI)
    end
    hI:Notify("Copied join script to clipboard")
end
local function fn585()
    return hH:WaitForChild("PlayerGui")
end
local function fn586()
    local lx = hw()
    local ly = h_(lx)
    if not ly then
        return
    end
    h9(ly.CFrame + Vector3.new(0, 3, 0))
end
connection3 = nil
hd = nil
he = nil
hf = nil
hg = nil
hh = nil
hi = nil
hj = nil
hk = nil
hl = nil
hm = nil
hn = nil
ho = nil
Options = nil
hq = nil
hr = nil
ht = nil
hu = nil
hw = nil
Treadmills = nil
hy = nil
hz = nil
WinPads2 = nil
hC = nil
Cars = nil
hE = nil
connection2 = nil
hG = nil
hH = nil
hI = nil
hJ = nil
hK = nil
Ranked = nil
hM = nil
hN = nil
hO = nil
hP = nil
hQ = nil
hR = nil
hS = nil
hT = nil
hV = nil
hW = nil
hX = nil
hY = nil
local RequestWin, hs, hv, hB, hU
hZ = nil
h_ = nil
h0 = nil
h1 = nil
h4 = nil
h5 = nil
h6 = nil
RequestRebirth = nil
connection = nil
h9 = nil
local h2, RequestTitleAction
local il_1
local ik_1
local ij_1
local ii_1
local ih_1
local ip_2
local ib_1
hV, hO, hH = nil, nil, nil
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Window, ic_2
local UserInputService = game:GetService("UserInputService")
if (not UserInputService and not UserInputService or (not UserInputService or not UserInputService)) and (not UserInputService and not hV or (not hV or hV)) and not ((not UserInputService and not UserInputService or (not UserInputService or not UserInputService)) and (not UserInputService and not hV or (not hV or hV))) then
    hH = game:GetService("VirtualUser")
    hV = game:GetService("Workspace")
else
    hV = game:GetService("VirtualUser")
    hO = game:GetService("Workspace")
    hH = Players.LocalPlayer
end
if getgenv then
    getgenv().gethui = function()
        return hH:WaitForChild("PlayerGui")
    end
end
hn, hh, RequestWin, RequestRebirth, RequestTitleAction, hZ, hS, Ranked, Cars, WinPads2, Treadmills, hr, hk, hf = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
gethui = fn585
local ig = "Cars VS Tape"
hn = "https://discord.gg/ehKVq7pf7v"
hh = "https://rscripts.net/@Ouroboros"
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
RequestWin = Remotes:WaitForChild("RequestWin")
RequestRebirth = Remotes:WaitForChild("RequestRebirth")
RequestTitleAction = Remotes:WaitForChild("RequestTitleAction")
if (hr or not hr) and (not RequestRebirth or hr) or (RequestRebirth and RequestWin or hr and not hr) or (RequestWin and not hr or (not RequestWin or RequestRebirth)) and ((not RequestWin or false) and (not RequestRebirth and not RequestRebirth)) or not ((hr or not hr) and (not RequestRebirth or hr) or (RequestRebirth and RequestWin or hr and not hr) or (RequestWin and not hr or (not RequestWin or RequestRebirth)) and ((not RequestWin or false) and (not RequestRebirth and not RequestRebirth))) then
    hZ = require(ReplicatedStorage:WaitForChild("Cars"))
    hS = require(ReplicatedStorage:WaitForChild("Rebirths"))
    Ranked = require(ReplicatedStorage:WaitForChild("Ranked"))
    Cars = hO:WaitForChild("Cars")
else
    hO = require(Cars:WaitForChild("Cars"))
    require(Cars:WaitForChild("Rebirths"))
    hZ = require(Cars:WaitForChild("Ranked"))
    hS = Ranked:WaitForChild("Cars")
end
WinPads2 = hO:WaitForChild("WinPads")
Treadmills = hO:WaitForChild("Treadmills")
hr = {
    Normal = 1,
    Gold = 2,
    Green = 4,
    Purple = 6,
    Red = 10,
    Candy = 10,
    CandyApple = 15,
    CandyPurple = 25,
    Cherry = 50,
    Lava = 100,
    LavaApple = 150,
    LavaPurple = 200,
    LavaCherry = 300,
    White = 25,
    Black = 100,
    Snow = 100,
    Coal = 250,
    Light = 500,
    Ash = 1000
}
hk = {
    { Name = "Normal", Requirement = 0, World = 1 },
    { Name = "Gold", Requirement = 2, World = 1 },
    { Name = "Green", Requirement = 4, World = 1 },
    { Name = "Purple", Requirement = 6, World = 1 },
    { Name = "Red", Requirement = 10, World = 1 },
    { Name = "Candy", Requirement = 0, World = 2 },
    { Name = "CandyApple", Requirement = 15, World = 2 },
    { Name = "CandyPurple", Requirement = 25, World = 2 },
    { Name = "Cherry", Requirement = 50, World = 2 },
    { Name = "Lava", Requirement = 0, World = 3 },
    { Name = "LavaApple", Requirement = 150, World = 3 },
    { Name = "LavaPurple", Requirement = 200, World = 3 },
    { Name = "LavaCherry", Requirement = 300, World = 3 }
}
hf = {
    { Name = "White", World = 1 },
    { Name = "Black", World = 1 },
    { Name = "Snow", World = 2 },
    { Name = "Coal", World = 2 },
    { Name = "Light", World = 3 },
    { Name = "Ash", World = 3 }
}
local ie = {}
for i, child in ipairs(WinPads2:GetChildren()) do
    table.insert(ie, child.Name)
end
ib_1, hI, ij_1, ii_1, hu, Options, ih_1, il_1, h1, ik_1, h2, Window, hi, h4, hM, hy, hQ, hq, h9, hN, hd, hC, hW, ho, hE, hv, hU, h6, hK, hw, h_, hs, hB, hT, hm, hX, hG, hg, hY, hj, ht = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local ia_2 = 98
repeat
    local im_1 = (ia_2 * 5 + 6) % 16 + 1
    if im_1 <= 8 then
        if im_1 <= 4 then
            if im_1 <= 2 then
                if im_1 <= 1 then
                    if (ia_2 * 3 + 7) * 9 % 4 == ((ia_2 * 3 + 7) * 9 + 4) % 4 then
                        table.sort(ie, fn513)
                        ib_1 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                    else
                        table.sort(ib_1, fn513)
                        ie = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                    end
                    ia_2 = (ia_2 + 45) % 128
                else
                    local io_1 = {
                        "erdyyt",
                        "luutu",
                        "xxr",
                        "gsxhl",
                        "hgdfnmorr",
                        "nrkxeuqkcp",
                        "ebkw",
                        "ohlagy",
                        "txzoethrjz",
                        "thjtmsjgod",
                        "hzejid",
                        "jyvuloiqnpkw",
                        "mhoyaq"
                    }
                    if io_1[(ia_2 * 20 + 95) % 13 + 1] <= io_1[(ia_2 * 20 + 95) % 13 + 1] then
                        hI = loadstring(game:HttpGet(ib_1 .. "Library.lua"))()
                    else
                        ib_1 = loadstring(game:HttpGet(hI .. "Library.lua"))()
                    end
                    ia_2 = (ia_2 + 77) % 128
                end
            elseif im_1 <= 3 then
                if ia_2 * 57150511 + 1 + 1 <= ia_2 * 57150511 + 1 + 1 + 1 then
                    ij_1 = loadstring(game:HttpGet(ib_1 .. "addons/ThemeManager.lua"))()
                    ii_1 = loadstring(game:HttpGet(ib_1 .. "addons/SaveManager.lua"))()
                    hu = hI.Toggles
                else
                    ib_1 = loadstring(game:HttpGet(ii_1 .. "addons/ThemeManager.lua"))()
                    hu = loadstring(game:HttpGet(ii_1 .. "addons/SaveManager.lua"))()
                    hI = ij_1.Toggles
                end
                ia_2 = (ia_2 + 61) % 128
            else
                local io_2 = {
                    "yaerot",
                    "aoglrnyfjl",
                    "xghqkc",
                    "ruf",
                    "zbjxqwgaymp",
                    "klimim",
                    "hakfgkrdk",
                    "bwa",
                    "cyomqwnzw"
                }
                local mP = ia_2
                local ip_1 = io_2[mP % 9 + 1]
                if ip_1:len() >= ip_1:gsub("(.)", "%1%1", mP % 3 % 2 + 1):len() then
                    hI = Options.Options
                else
                    Options = hI.Options
                end
                ia_2 = (ia_2 + 125) % 128
            end
        elseif im_1 <= 6 then
            if im_1 <= 5 then
                if ((not hX or Options) and (not ii_1 and not Options) or (hG and hv or (hv or ia_2)) or (ii_1 and not hG or (ii_1 or hX) or Options and ia_2 and (not Options or not Options))) and not ((not hX or Options) and (not ii_1 and not Options) or (hG and hv or (hv or ia_2)) or (ii_1 and not hG or (ii_1 or hX) or Options and ia_2 and (not Options or not Options))) then
                    hU = fn182
                else
                    hi = fn182
                end
                ia_2 = (ia_2 + 109) % 128
            else
                local io_3 = (vector.create((ia_2 * 5 + 3) % 11 + 1, (ia_2 * 5 + 9) % 13 + 1, (ia_2 * 3 + 1) % 17 + 1))
                local mN = vector.floor(io_3) + vector.ceil(io_3 * -1)
                if vector.dot(mN, mN) == 0 then
                    h4 = fn310
                    hM = fn505
                    hy = fn359
                    ih_1 = "#7fd47f"
                    il_1 = "#6ec1ff"
                else
                    hM = fn310
                    il_1 = fn505
                    h4 = fn359
                    hy = "#7fd47f"
                    ih_1 = "#6ec1ff"
                end
                ia_2 = (ia_2 + 109) % 128
            end
        elseif im_1 <= 7 then
            local io_4 = { "rewsnmxy", "kwwsdbmwed", "cviy", "hukpttsrygul", "tcqrn", "fnna", "eok", "dftnzs", "fypj" }
            if io_4[(ia_2 * 77 + 49) % 9 + 1] <= io_4[(ia_2 * 77 + 49) % 9 + 1] then
                h1 = "#e8a34d"
            else
                h_ = "#e8a34d"
            end
            ia_2 = (ia_2 + 93) % 128
        else
            local io_5 = {
                "jbdwvuswdx",
                "ikxdchnyjwqb",
                "lszfnxxeh",
                "zps",
                "qdtj",
                "omu",
                "raff",
                "uwfdxlkedd",
                "yausrhyucwy"
            }
            if io_5[(ia_2 * 9 + 93) % 9 + 1] <= io_5[(ia_2 * 9 + 93) % 9 + 1] then
                ik_1 = "#8b93a3"
                hQ = fn571
                hq = fn471
                h9 = fn461
                hN = fn466
            else
                hQ = "#8b93a3"
                ik_1 = fn571
                h9 = fn471
                hN = fn461
                hq = fn466
            end
            ia_2 = (ia_2 + 109) % 128
        end
    elseif im_1 <= 12 then
        if im_1 <= 10 then
            if im_1 <= 9 then
                local m_ = bit32.rrotate(bit32.bxor(bit32.lrotate(ia_2, 1), string.byte(tostring(hd))), 3)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(m_, 1495270369), 48247506), (bit32.bxor(bit32.band(m_, 2799696926), 813233561))), 48247506), 813233561) == m_ then
                    hd = fn463
                    hC = fn189
                    hW = fn323
                    ho = fn338
                    hE = fn573
                else
                    hW = fn463
                    hE = fn189
                    hC = fn323
                    hd = fn338
                    ho = fn573
                end
                ia_2 = (ia_2 + 125) % 128
            else
                if (ia_2 * 2 + 8) * 7 % 3 == ((ia_2 * 2 + 8) * 7 + 1) % 3 then
                    h6 = fn533
                    hv = fn551
                    hU = fn462
                else
                    hv = fn533
                    hU = fn551
                    h6 = fn462
                end
                ia_2 = (ia_2 + 29) % 128
            end
        elseif im_1 <= 11 then
            local io_6 = {
                "jze",
                "uqnucoxemk",
                "hrvuedbwz",
                "zzevoi",
                "xvkvdijwjqw",
                "dxixawyn",
                "knpa",
                "gesgspwlt",
                "rqeguxgi",
                "nnezdzh",
                "cmkxwdsunfak",
                "oamh",
                "hfaaey",
                "ujgxbzbdv"
            }
            if io_6[(ia_2 * 80 + 51) % 14 + 1] <= io_6[(ia_2 * 80 + 51) % 14 + 1] then
                hK = fn407
            else
                hs = fn407
            end
            ia_2 = (ia_2 + 29) % 128
        else
            if ia_2 * 119742155 + 6 + 3 >= ia_2 * 119742155 + 6 + 3 + 1 then
                h_ = fn354
                hw = fn511
            else
                hw = fn354
                h_ = fn511
            end
            ia_2 = (ia_2 + 13) % 128
        end
    elseif im_1 <= 14 then
        if im_1 <= 13 then
            local io_7 = (vector.create((ia_2 * 2 + 6) % 11 + 1, (ia_2 * 2 + 2) % 13 + 1, (ia_2 * 2 + 16) % 17 + 1))
            local mM = vector.floor(io_7) + vector.ceil(io_7 * -1)
            if vector.dot(mM, mM) == 0 then
                hs = fn388
            else
                hY = fn388
            end
            ia_2 = (ia_2 + 125) % 128
        else
            if (ia_2 * 2 + 1) * 7 % 3 == ((ia_2 * 2 + 1) * 7 + 2) % 3 then
                hm = fn428
                hB = fn127
                h2 = fn45
                hT = 1
            else
                hB = fn428
                hT = fn127
                hm = fn45
                h2 = 1
            end
            ia_2 = (ia_2 + 13) % 128
        end
    elseif im_1 <= 15 then
        local im_2 = (vector.create((ia_2 * 5 + 8) % 11 + 1, (ia_2 * 1 + 12) % 13 + 1, (ia_2 * 10 + 3) % 17 + 1))
        local mU = vector.floor(im_2) + vector.ceil(im_2 * -1)
        if vector.dot(mU, mU) == 0 then
            hX = function()
                local k8, k9
                if not hH:GetAttribute("DataLoaded") then
                    return
                end
                local la = hB()
                if #la == 0 then
                    return
                end
                if h2 > #la then
                    h2 = 1
                end
                k8 = la[h2]
                h2 += 1
                local la_3 = hQ("UseX10WinPads") and "x10WinCollect"
                k9 = la_3 or "WinCollect"
                local la_4 = hs(k8, k9)
                if not la_4 then
                    return
                end
                if not h9(la_4.CFrame + Vector3.new(0, 3, 0)) then
                    return
                end
                task.wait(0.15)
                pcall(function()
                    RequestWin:InvokeServer(k8, k9)
                end)
            end
            hG = fn458
            hg = fn92
            hY = function()
                local ln
                if not hH:GetAttribute("DataLoaded") then
                    return
                end
                ln = hv()
                if not ln then
                    return
                end
                if hH:GetAttribute("EquippedTitle") == ln then
                    return
                end
                pcall(function()
                    RequestTitleAction:InvokeServer("Equip", ln)
                end)
            end
            hj = function()
                local lp
                local lr_2
                local lq_2
                if not hH:GetAttribute("DataLoaded") then
                    return
                end
                lp = hU()
                if not lp then
                    return
                end
                lq_2, lr_2 = pcall(function()
                    return RequestTitleAction:InvokeServer("BuyWins", lp)
                end)
                if lq_2 and lr_2 then
                    pcall(function()
                        RequestTitleAction:InvokeServer("Equip", lp)
                    end)
                end
            end
        else
            hY = function()
                local k8, k9
                if not hH:GetAttribute("DataLoaded") then
                    return
                end
                local la = hB()
                if #la == 0 then
                    return
                end
                if h2 > #la then
                    h2 = 1
                end
                k8 = la[h2]
                h2 += 1
                local la_1 = hQ("UseX10WinPads") and "x10WinCollect"
                k9 = la_1 or "WinCollect"
                local la_2 = hs(k8, k9)
                if not la_2 then
                    return
                end
                if not h9(la_2.CFrame + Vector3.new(0, 3, 0)) then
                    return
                end
                task.wait(0.15)
                pcall(function()
                    RequestWin:InvokeServer(k8, k9)
                end)
            end
            hX = fn458
            hj = fn92
            hG = function()
                local ln
                if not hH:GetAttribute("DataLoaded") then
                    return
                end
                ln = hv()
                if not ln then
                    return
                end
                if hH:GetAttribute("EquippedTitle") == ln then
                    return
                end
                pcall(function()
                    RequestTitleAction:InvokeServer("Equip", ln)
                end)
            end
            hg = function()
                local lp
                local lr_1
                local lq_1
                if not hH:GetAttribute("DataLoaded") then
                    return
                end
                lp = hU()
                if not lp then
                    return
                end
                lq_1, lr_1 = pcall(function()
                    return RequestTitleAction:InvokeServer("BuyWins", lp)
                end)
                if lq_1 and lr_1 then
                    pcall(function()
                        RequestTitleAction:InvokeServer("Equip", lp)
                    end)
                end
            end
        end
        ia_2 = (ia_2 + 109) % 128
    else
        local m0 = bit32.rrotate(bit32.bxor(bit32.lrotate(ia_2, 3), string.byte(tostring(Options))), 20)
        if bit32.bxor(bit32.lrotate(bit32.bxor(m0, 3839144942), 6), 892140473) == bit32.lrotate(m0, 6) then
            ht = fn586
            Window = hI:CreateWindow({
                Title = "Ouroboros Hub",
                Footer = { { Text = hn, Copyable = true }, "|", ig },
                Icon = 12645376577,
                NotifySide = "Right",
                ShowCustomCursor = false,
                CornerRadius = 10
            })
        else
            hn = fn586
            ht = Window:CreateWindow({
                Icon = 12645376577,
                Footer = { hI, "|", { Text = ig, Copyable = true } },
                CornerRadius = 10,
                ShowCustomCursor = false,
                Title = "Ouroboros Hub",
                NotifySide = "Right"
            })
        end
        ia_2 = (ia_2 + 61) % 128
    end
until (ia_2 * 101 + 49) % 128 == 107
if hI.ScreenGui then
    local ia_3 = 3
    repeat
        if ia_3 * 40593313 + 3 + 4 >= ia_3 * 40593313 + 3 + 4 + 1 then
            hH.ScreenGui.Parent = hI:WaitForChild("PlayerGui")
        else
            hI.ScreenGui.Parent = hH:WaitForChild("PlayerGui")
        end
        ia_3 = (ia_3 + 1) % 8
    until (ia_3 * 5 + 3) % 8 == 7
end
local io_8 = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "car"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in io_8 do
    fn361(v)
end
hl, ip_2, hP, hJ, ic_2 = nil, nil, nil, nil, nil
local ia_4 = 19
repeat
    local im_4 = (ia_4 * 2 + 0) % 3 + 1
    if im_4 <= 2 then
        if im_4 <= 1 then
            local im_5 = (vector.create((ia_4 * 5 + 3) % 11 + 1, (ia_4 * 11 + 9) % 13 + 1, (ia_4 * 7 + 4) % 17 + 1))
            local iq_1 = (vector.create((ia_4 * 7 + 5) % 11 + 1, (ia_4 * 1 + 3) % 13 + 1, (ia_4 * 7 + 15) % 17 + 1))
            local m1 = vector.dot(im_5, iq_1)
            if m1 * m1 <= vector.dot(im_5, im_5) * vector.dot(iq_1, iq_1) then
                hJ = tostring(game.JobId)
            else
                ip_2 = tostring(game.JobId)
            end
            ia_4 = (ia_4 + 11) % 24
        else
            local im_6 = (vector.create((ia_4 * 4 + 8) % 11 + 1, (ia_4 * 3 + 1) % 13 + 1, (ia_4 * 11 + 13) % 17 + 1))
            local iq_2 = (vector.create((ia_4 * 4 + 8) % 11 + 1, (ia_4 * 11 + 10) % 13 + 1, (ia_4 * 13 + 13) % 17 + 1))
            local ir_1 = (vector.create((ia_4 * 1 + 4) % 5 + 1, (ia_4 * 4 + 2) % 7 + 1, (ia_4 * 2 + 3) % 9 + 1))
            if math.abs((vector.angle(im_6, iq_2, ir_1))) - math.abs((vector.angle(iq_2, im_6, ir_1))) == 4 then
                hJ = #ic_2 > 18
            else
                ic_2 = #hJ > 18
            end
            ia_4 = (ia_4 + 2) % 24
        end
    else
        local im_7 = (vector.create((ia_4 * 2 + 9) % 11 + 1, (ia_4 * 1 + 12) % 13 + 1, (ia_4 * 6 + 7) % 17 + 1))
        local iq_3 = (vector.create((ia_4 * 7 + 7) % 11 + 1, (ia_4 * 2 + 4) % 13 + 1, (ia_4 * 13 + 11) % 17 + 1))
        local mK = vector.cross(im_7, iq_3)
        local mL = vector.dot(im_7, iq_3)
        if vector.dot(mK, mK) + mL * mL == vector.dot(im_7, im_7) * vector.dot(iq_3, iq_3) + 2 then
            hP = "Unknown"
            pcall(fn476)
            hH = hl.Info:AddLeftGroupbox("Account", "circle-user")
            hH:AddLabel(ip_2("User", ih_1.Name, hM), true)
            hH:AddLabel(ip_2("Status", "Keyless", hM), true)
            hH:AddLabel(ip_2("Executor", hP, hM), true)
            h1 = hl.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            h1:AddLabel(io_8(hy .. " [" .. tostring(game.PlaceId) .. "]", ig), true)
            h1:AddLabel(ip_2("Place ID", tostring(game.PlaceId), ig), true)
            h1:AddLabel(ip_2("Session time", "0s", il_1), true)
        else
            hl = "Unknown"
            pcall(fn476)
            local AccountGroup = io_8.Info:AddLeftGroupbox("Account", "circle-user")
            AccountGroup:AddLabel(hy("User", hH.Name, ih_1), true)
            AccountGroup:AddLabel(hy("Status", "Keyless", ih_1), true)
            AccountGroup:AddLabel(hy("Executor", hl, ih_1), true)
            ip_2 = io_8.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            ip_2:AddLabel(hM(ig .. " [" .. tostring(game.PlaceId) .. "]", il_1), true)
            ip_2:AddLabel(hy("Place ID", tostring(game.PlaceId), il_1), true)
            hP = ip_2:AddLabel(hy("Session time", "0s", h1), true)
        end
        ia_4 = (ia_4 + 14) % 24
    end
until (ia_4 * 1 + 22) % 24 == 20
if ic_2 then
    local ia_5 = 1
    repeat
        local ib_3 = (vector.create((ia_5 * 1 + 3) % 11 + 1, (ia_5 * 7 + 9) % 13 + 1, (ia_5 * 8 + 13) % 17 + 1))
        local im_8 = (vector.create((ia_5 * 7 + 3) % 11 + 1, (ia_5 * 2 + 7) % 13 + 1, (ia_5 * 9 + 17) % 17 + 1))
        local iq_4 = (vector.create((ia_5 * 1 + 5) % 11 + 1, (ia_5 * 2 + 6) % 13 + 1, (ia_5 * 15 + 17) % 17 + 1))
        if vector.dot(vector.cross(ib_3, im_8), iq_4) == vector.dot(vector.cross(im_8, iq_4), ib_3) + 5 then
            hJ = string.sub(ic_2, 1, 18) .. "..."
        else
            ic_2 = string.sub(hJ, 1, 18) .. "..."
        end
        ia_5 = (ia_5 + 2) % 4
    until (ia_5 * 1 + 3) % 4 == 2
end
local ia_6 = ic_2 or hJ
he, h5, h0, connection, connection2, connection3, hR, hz = nil, nil, nil, nil, nil, nil, nil, nil
ip_2:AddLabel(hy("Server", ia_6, ik_1), true)
ip_2:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
he = os.clock()
task.spawn(worker)
local ScriptsGroup = io_8.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(hM("Included in this hub", ik_1), true)
ScriptsGroup:AddLabel(hM(ig, il_1), true)
local FeaturesGroup = io_8.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(hM("Auto Win", il_1), true)
FeaturesGroup:AddLabel(hM("Rebirth", h1), true)
FeaturesGroup:AddLabel(hM("Cars & Titles", ih_1), true)
FeaturesGroup:AddLabel(hM("Treadmills", ik_1), true)
local SocialsGroup = io_8.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = h4 })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = io_8.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = h4 })
local FaqGroup = io_8.Info:AddRightGroupbox("FAQ", "circle-help")
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
local FarmGroup = io_8.Main:AddLeftGroupbox("Farm", "trophy")
FarmGroup:AddToggle("AutoWin", { Text = "Auto Win", Default = false })
FarmGroup:AddDropdown("WinPads", {
    Text = "Win Pads",
    Values = ie,
    Default = { "Section1" },
    Multi = true,
    Expandable = true,
    ExpandColumns = 3
})
FarmGroup:AddToggle("UseX10WinPads", { Text = "x10 Win Pads", Default = false })
FarmGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
FarmGroup:AddToggle("GoBestTreadmill", { Text = "Go Best Treadmill", Default = false })
local GearGroup = io_8.Main:AddRightGroupbox("Gear", "car")
GearGroup:AddToggle("AutoEquipBestCar", { Text = "Auto Equip Best Car", Default = false })
GearGroup:AddToggle("AutoBuyBestCar", { Text = "Auto Buy Best Affordable Car", Default = false })
GearGroup:AddToggle("AutoEquipBestTitle", { Text = "Auto Equip Best Title", Default = false })
GearGroup:AddToggle("AutoBuyBestTitle", { Text = "Auto Buy Best Title", Default = false })
local MenuGroup = io_8.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
hI.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
hR = function(d4)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not d4)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not d4
        end
    end)
    if not d4 then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(hH, "GameplayPaused", false)
        else
            hH.GameplayPaused = false
        end
    end)
end
MenuGroup:AddToggle("RemoveGameplayPaused", { Text = "Auto Remove Gameplay Paused", Default = true, Callback = onRemoveGameplayPaused })
MenuGroup:AddButton({ Text = "Unload", Func = onUnload })
ij_1:SetLibrary(hI)
ij_1:SetFolder("OuroborosHub")
ij_1:SaveDefault("Monochrome")
ij_1:ApplyToTab(io_8.Settings)
ij_1:LoadDefault()
ii_1:SetLibrary(hI)
ii_1:IgnoreThemeSettings()
ii_1:SetIgnoreIndexes({ "MenuKeybind" })
ii_1:SetFolder("OuroborosHub/cars-vs-tape")
ii_1:BuildConfigSection(io_8.Settings)
ii_1:LoadAutoloadConfig()
h5 = tick()
h0 = tick()
pcall(function()
    for i, v in ipairs(getconnections(hH.Idled)) do
        local lY = v
        pcall(function()
            lY:Disable()
        end)
    end
end)
hz = fn215
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
connection3 = game:GetService("CoreGui").ChildAdded:Connect(function(ev)
    local l3 = hI.Unloaded or not hQ("RemoveGameplayPaused")
    if l3 then
        return
    end
    if ev.Name == "RobloxNetworkPauseNotification" then
        pcall(function()
            ev.Enabled = false
        end)
    end
end)
do
    hI:OnUnload(fn486)
    hR(hQ("RemoveGameplayPaused"))
    task.spawn(worker6)
    task.spawn(worker5)
    task.spawn(worker4)
    task.spawn(worker3)
    task.spawn(worker2)
end
