local f6
local connection
local f9
local Peppers
local gf
local fX
local Options
local f_
local Toggles
local f2
local fN
local LocalPlayer
local fQ
local VirtualUser
local fT
local PickupSeed
local gh
local fD
local fZ
local f1
local f4
local fJ
local f7
local fM
local ga
local fP
local gd
local Library
local fF
local f0
local fI
local function fn30()
    if connection then
        connection:Disconnect()
        connection = nil
    end
    print("Make Hotsauce unloaded")
end
local function fn50()
    local PlayerLots = workspace:FindFirstChild("PlayerLots")
    local g6 = PlayerLots and PlayerLots:FindFirstChild(LocalPlayer.Name)
    return g6
end
local function autoPickLoop()
    while not Library.Unloaded do
        if Toggles.AutoPick.Value then
            fM()
        end
        task.wait(0.3)
    end
end
local function fn75(aI)
    local attr = aI:GetAttribute("SeedPrice")
    local hU = typeof(attr) ~= "number"
    local hZ = if hU then 1 else 0
    local hX = 1186 * hZ + 2506 * (1 - hZ)
    local hY = 1168 * hZ + 3040 * (1 - hZ)
    if not ((hX * 2210 + hY * 1249 + hX * hY) % 16777213 == 5465140) then
        hU = attr <= 0
    end
    if hU then
        return true
    end
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local hV = leaderstats and leaderstats:FindFirstChild("Money")
    return hV ~= nil and attr <= hV.Value
end
local function fn110(aa)
    return (aa:gsub("^%s*%[[^%]]*%]%s*", ""))
end
local function fn182()
    local iS = fQ()
    local iT = iS and gd(iS)
    if iT then
        pcall(function()
            PickupSeed:FireServer()
        end)
    end
end
local function fn186(N, O)
    return N.heat > O.heat
end
local function autoPickupSeedsLoop()
    while not Library.Unloaded do
        if Toggles.AutoPickupSeeds.Value then
            fJ()
            local kx = Options.PickupDelay.Value or 0.3
            task.wait(kx)
        else
            task.wait(0.3)
        end
    end
end
local function fn223()
    local ib = gf()
    if not ib then
        return
    end
    for i, descendant in ipairs(ib:GetDescendants()) do
        if Library.Unloaded or not Toggles.AutoPick.Value then
            break
        end
        local ib_2 = descendant:IsA("ProximityPrompt") and descendant.Name == "PickPepperPrompt" and descendant.Enabled
        if ib_2 then
            pcall(fireproximityprompt, descendant)
        end
    end
end
local function onUpgrades(dI)
    local kd = {}
    for k, v in dI do
        if v then
            kd[k] = true
        end
    end
    fD = kd
end
local function fn297()
    if setclipboard then
        setclipboard(f9)
    elseif toclipboard then
        toclipboard(f9)
    end
    Library:Notify("Copied Discord invite to clipboard")
end
local function autoSpinLoop()
    while not Library.Unloaded do
        if Toggles.AutoSpin.Value then
            gh()
            local kt = Options.SpinDelay.Value or 1.5
            task.wait(kt)
        else
            task.wait(0.3)
        end
    end
end
local function fn356()
    local h_ = gf()
    if not h_ then
        return {}
    end
    local Important = h_:FindFirstChild("Important")
    local h__1 = Important and Important:FindFirstChild("Selling")
    local h0_1 = h__1
    if h__1 then
        h__1 = h0_1:FindFirstChild("Placements")
    end
    local h0_2 = h__1
    if not h0_2 then
        return {}
    end
    local h__2 = {}
    for i, child in ipairs(h0_2:GetChildren()) do
        local h0_3 = child:IsA("BasePart") and not child:FindFirstChild("PlacedHotsauce")
        if h0_3 then
            h__2[#h__2 + 1] = child
        end
    end
    return h__2
end
local function fn359(du)
    local DiscordGroup = du:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord For Dupe", Func = fI })
    return DiscordGroup
end
local function fn396()
    local jC = fP()
    local jC_1
    local jD = (tonumber(Options.BrewMinHeat.Value))
    local jD_1
    local jI = if jD then 1 else 0
    local jG = 701 * jI + 1093 * (1 - jI)
    local jH = 1736 * jI + 1054 * (1 - jI)
    if not ((jG * 3586 + jH * 3930 + jG * jH) % 16777213 == 10553202) then
        jD = 0
    end
    if jC < jD then
        return
    end
    jC_1, jD_1 = pcall(function()
        return ga:InvokeServer()
    end)
    local jE = jC_1 and typeof(jD_1) == "table" and jD_1.ok
    if jE then
        pcall(function()
            f6:FireServer()
        end)
    end
end
local function fn399()
    local hI = f4()
    if not hI then
        return nil
    end
    for i, child in ipairs(hI:GetChildren()) do
        local hS = if child:IsA("Model") then 1 else 0
        if hS == 1 then
            return child
        end
    end
    return nil
end
local function fn401()
    if Toggles.SpinWaitForPickup.Value then
        local iM = fQ()
        local iN = iM and gd(iM)
        if iN then
            if Toggles.AutoPickupSeeds.Value then
                pcall(function()
                    PickupSeed:FireServer()
                end)
            end
            return
        end
    end
    pcall(function()
        f_:FireServer()
    end)
end
local function fn408(ap)
    local hn = {}
    for i, child in ipairs(LocalPlayer.Backpack:GetChildren()) do
        if ap(child) then
            hn[#hn + 1] = child
        end
    end
    local Character = LocalPlayer.Character
    if Character then
        for i, child in ipairs(Character:GetChildren()) do
            local hE = if ap(child) then 1 else 0
            if hE == 1 then
                hn[#hn + 1] = child
            end
        end
    end
    return hn
end
local function autoUpgradeLoop()
    while not Library.Unloaded do
        if Toggles.AutoUpgrade.Value then
            f2()
        end
        task.wait(0.4)
    end
end
local function fn447(ac)
    local g8 = ac and ac:IsA("Tool")
    if not g8 then
        return false
    end
    local hc = if ac:GetAttribute("Hotsauce") == true then 1 else 0
    if hc == 1 then
        return false
    end
    local g8_1 = ac:GetAttribute("PepperUid") ~= nil or ac:GetAttribute("PepperName") ~= nil or ac:GetAttribute("Heat") ~= nil
    local hf = if g8_1 then 1 else 0
    local hd = 1256 * hf + 1088 * (1 - hf)
    local he = 1036 * hf + 2887 * (1 - hf)
    if not ((hd * 286 + he * 1283 + hd * he) % 16777213 == 2989620) then
        g8_1 = Peppers:FindFirstChild(ac.Name) ~= nil
    end
    if not g8_1 then
        g8_1 = Peppers:FindFirstChild(f0(ac.Name)) ~= nil
    end
    return g8_1
end
local function onAntiAfk(dQ)
    if dQ then
        if not connection then
            connection = LocalPlayer.Idled:Connect(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new())
            end)
        end
    elseif connection then
        connection:Disconnect()
        connection = nil
    end
end
local function fn474()
    local hF = gf()
    if not hF then
        return nil
    end
    local Important = hF:FindFirstChild("Important")
    local hF_1 = Important and Important:FindFirstChild("SeedMachine")
    return hF_1
end
local function fn477()
end
local function onUnload()
    Library:Unload()
end
local function fn543(al)
    local hl = al:GetAttribute("PepperName") or f0(al.Name)
    return hl
end
local function autoUnlockLoop()
    while not Library.Unloaded do
        if Toggles.AutoUnlock.Value then
            fZ()
        end
        task.wait(0.4)
    end
end
local function fn551(ai)
    local hg = ai ~= nil and ai:IsA("Tool") and ai:GetAttribute("Hotsauce") == true
    return hg
end
local function onAddPeppers(dA)
    local j5 = {}
    for k, v in dA do
        if v then
            j5[k] = true
        end
    end
    fN = j5
end
local function fn582(cw)
    local jn_1
    local jm_1
    if typeof(cw) ~= "string" then
        return 0
    end
    jm_1, jn_1 = cw:match("([%d%.]+)%s*(%a*)")
    local jo = tonumber(jm_1)
    if not jo then
        return 0
    end
    return jo * (fF[jn_1] or 1)
end
local function fn588()
    local jq = gf()
    if not jq then
        return 0
    end
    local Important = jq:FindFirstChild("Important")
    local jq_1 = Important and Important:FindFirstChild("Brewing")
    local jr_1 = jq_1
    if jq_1 then
        jq_1 = jr_1:FindFirstChild("HeatSum")
    end
    local jr_2 = jq_1
    if not jr_2 then
        return 0
    end
    for i, descendant in ipairs(jr_2:GetDescendants()) do
        local jB = if descendant:IsA("TextLabel") then 1 else 0
        if jB == 1 then
            return f7(descendant.Text)
        end
    end
    return 0
end
local function fn602()
    Library.ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
local function autoAddLoop()
    while not Library.Unloaded do
        if Toggles.AutoAdd.Value then
            fX()
        end
        task.wait(0.3)
    end
end
local function autoBrewLoop()
    while not Library.Unloaded do
        if Toggles.AutoBrew.Value then
            fT()
            local kB = Options.BrewDelay.Value or 1
            task.wait(kB)
        else
            task.wait(0.3)
        end
    end
end
local function autoPlaceLoop()
    while not Library.Unloaded do
        if Toggles.AutoPlace.Value then
            f1()
        end
        task.wait(0.4)
    end
end
fD = nil
Options = nil
fF = nil
Toggles = nil
fI = nil
fJ = nil
fM = nil
fN = nil
connection = nil
fP = nil
fQ = nil
fT = nil
PickupSeed = nil
fX = nil
Library = nil
fZ = nil
f_ = nil
f0 = nil
f1 = nil
f2 = nil
f4 = nil
f6 = nil
f7 = nil
LocalPlayer = nil
f9 = nil
ga = nil
VirtualUser = nil
Peppers = nil
gd = nil
gf = nil
gh = nil
local fG, fK, fL, BuyRow2Dirt, fS, UnlockDirt, fV, PlaceHotsauce, f5, ge, gg
local gl_1
local gj_1
local gt_3
VirtualUser, LocalPlayer = nil, nil
local Players = game:GetService("Players")
local gi_4
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local gk_1
VirtualUser = game:GetService("VirtualUser")
LocalPlayer = Players.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return LocalPlayer:WaitForChild("PlayerGui")
    end
end
Library, Toggles, Options, ge, ga, f6, PlaceHotsauce, f_, PickupSeed, UnlockDirt, BuyRow2Dirt, fL, fG, fD, Peppers, f9 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
pcall(fn602)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
local gm = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("RemoteEvents"))
local gm_1
if not gm and Peppers or not ge and not ge or (ge or Peppers) and (not Peppers and not fL) or not (not gm and Peppers or not ge and not ge or (ge or Peppers) and (not Peppers and not fL)) then
    ge = gm.Brewing.AddPepper
    ga = gm.Brewing.Brew
    f6 = gm.Brewing.ClaimHotsauce
    PlaceHotsauce = gm.Selling.PlaceHotsauce
    f_ = gm.SeedMachine.SpawnSeed
else
    f_ = PlaceHotsauce.Brewing.AddPepper
    ge = PlaceHotsauce.Brewing.Brew
    gm = PlaceHotsauce.Brewing.ClaimHotsauce
    f6 = PlaceHotsauce.Selling.PlaceHotsauce
    ga = PlaceHotsauce.SeedMachine.SpawnSeed
end
PickupSeed = gm.SeedMachine.PickupSeed
UnlockDirt = gm.Plot.UnlockDirt
BuyRow2Dirt = gm.Plot.BuyRow2Dirt
local Upgrades = gm.Upgrades
fL = { "Spicier Sauce", "Seed Anim Time", "Breed Time", "Breed Multiplier Chance", "Customer Chance" }
fG = {
    ["Spicier Sauce"] = Upgrades.BuySpicierSauce,
    ["Seed Anim Time"] = Upgrades.BuySeedAnimTime,
    ["Breed Time"] = Upgrades.BuyBreedTime,
    ["Breed Multiplier Chance"] = Upgrades.BuyBreedMultiplierChance,
    ["Customer Chance"] = Upgrades.BuyCustomerChance
}
fD = {}
local gn = require(ReplicatedStorage.Modules:WaitForChild("PepperPool"))
Peppers = ReplicatedStorage:WaitForChild("Peppers")
f9 = "https://discord.gg/ehKVq7pf7v"
local gq = {}
local gs
local gs_6
local gr = 8
repeat
    if (gr * 1 + 0) % 2 + 1 <= 1 then
        local ld = bit32.rrotate(bit32.bxor(bit32.lrotate(gr, 11), string.byte(tostring(gs))), 26)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(ld, 3480668837), 1330862137), (bit32.bxor(bit32.band(ld, 814298458), 4106905461))), 1330862137), 4106905461) == ld then
            gs = gn.All()
        else
            gn = gs.All()
        end
        gr = (gr + 5) % 16
    else
        if (gr * 1 + 3) * 5 % 4 == ((gr * 1 + 3) * 5 + 9) % 4 then
            table.sort(gs, fn186)
        else
            table.sort(gs, fn186)
        end
        gr = (gr + 1) % 16
    end
until (gr * 11 + 4) % 16 == 14
for i, v in ipairs(gs) do
    gq[#gq + 1] = v.name
end
fN, gm_1, gl_1, gk_1, gj_1, fF, fI, gf, f0, fV, gg, f5, fS, f4, fQ, gd, fK, fM, fX, gh, fJ, f1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local gi_3 = 64
repeat
    local gn_1 = (gi_3 * 4 + 5) % 9 + 1
    if gn_1 <= 5 then
        if gn_1 <= 3 then
            if gn_1 <= 2 then
                if gn_1 <= 1 then
                    local gr_1 = {
                        "wiktl",
                        "leec",
                        "ksikm",
                        "tzmjk",
                        "iamk",
                        "htkzxicyme",
                        "zvn",
                        "hlqb",
                        "auxuvy",
                        "dgzaui",
                        "ixqmapbr"
                    }
                    local lf = gi_3
                    local gs_1 = gr_1[lf % 11 + 1]
                    if gs_1:len() <= gs_1:gsub("(.)", "%1%1", lf % 3 % 2 + 1):len() then
                        fN = {}
                    else
                        gk_1 = {}
                    end
                    gi_3 = (gi_3 + 34) % 72
                else
                    local gr_2 = {
                        "jhpumep",
                        "zygrh",
                        "segftlvc",
                        "aorjvsdjcr",
                        "kqnhyl",
                        "ehdmmc",
                        "fgcpqxjbzk",
                        "vjxwo",
                        "tpllif",
                        "jqosihddij"
                    }
                    if gr_2[(gi_3 * 71 + 76) % 10 + 1] < gr_2[(gi_3 * 71 + 76) % 10 + 1] then
                        gd = fn297
                    else
                        fI = fn297
                    end
                    gi_3 = (gi_3 + 34) % 72
                end
            else
                local gr_3 = (vector.create((gi_3 * 3 + 9) % 11 + 1, (gi_3 * 8 + 3) % 13 + 1, (gi_3 * 5 + 14) % 17 + 1))
                local lc = vector.floor(gr_3) + vector.ceil(gr_3 * -1)
                if vector.dot(lc, lc) == 3 then
                    f0 = fn50
                    gf = fn110
                else
                    gf = fn50
                    f0 = fn110
                end
                gi_3 = (gi_3 + 61) % 72
            end
        elseif gn_1 <= 4 then
            if gi_3 * 40723085 + 1 + 7 >= gi_3 * 40723085 + 1 + 7 + 1 then
                gg = fn447
                fS = fn551
                fV = fn543
                f4 = fn408
                f5 = fn474
            else
                fV = fn447
                gg = fn551
                f5 = fn543
                fS = fn408
                f4 = fn474
            end
            gi_3 = (gi_3 + 7) % 72
        else
            local gr_4 = (vector.create((gi_3 * 1 + 5) % 11 + 1, (gi_3 * 2 + 11) % 13 + 1, (gi_3 * 9 + 5) % 17 + 1))
            local gs_2 = (vector.create((gi_3 * 6 + 5) % 11 + 1, (gi_3 * 6 + 4) % 13 + 1, (gi_3 * 14 + 10) % 17 + 1))
            local gt_1 = (vector.create((gi_3 * 4 + 6) % 11 + 1, (gi_3 * 10 + 10) % 13 + 1, (gi_3 * 14 + 13) % 17 + 1))
            local gu = (vector.create((gi_3 * 2 + 1) % 5 + 1, (gi_3 * 1 + 7) % 7 + 1, (gi_3 * 4 + 3) % 9 + 1))
            if vector.dot(vector.cross(gr_4, (vector.cross(gs_2, gt_1))), gu) == vector.dot(gs_2 * vector.dot(gr_4, gt_1) - gt_1 * vector.dot(gr_4, gs_2), gu) + 5 then
                gd = fn399
                fQ = fn75
                fM = fn356
                fK = fn223
            else
                fQ = fn399
                gd = fn75
                fK = fn356
                fM = fn223
            end
            gi_3 = (gi_3 + 70) % 72
        end
    elseif gn_1 <= 7 then
        if gn_1 <= 6 then
            local gr_5 = (vector.create((gi_3 * 1 + 3) % 11 + 1, (gi_3 * 6 + 9) % 13 + 1, (gi_3 * 12 + 14) % 17 + 1))
            local gs_3 = (vector.create((gi_3 * 5 + 9) % 11 + 1, (gi_3 * 4 + 2) % 13 + 1, (gi_3 * 9 + 3) % 17 + 1))
            local lv = vector.cross(gr_5, gs_3)
            local lw = vector.dot(gr_5, gs_3)
            if vector.dot(lv, lv) + lw * lw == vector.dot(gr_5, gr_5) * vector.dot(gs_3, gs_3) + 3 then
                gh = function()
                    local iu = fS(fV)
                    if #iu == 0 then
                        return
                    end
                    if Toggles.KeepBestPepper.Value then
                        table.sort(iu, function(bf, bg)
                            local ip = bf:GetAttribute("Heat") or 0
                            local iq = bg:GetAttribute("Heat") or 0
                            return ip > iq
                        end)
                        table.remove(iu, 1)
                    end
                    local iv = (tonumber(Options.AddMinHeat.Value))
                    local iC = if iv then 1 else 0
                    local iA = 1954 * iC + 4054 * (1 - iC)
                    local iB = 2961 * iC + 2484 * (1 - iC)
                    if not ((iA * 459 + iB * 2768 + iA * iB) % 16777213 == 14878728) then
                        iv = 0
                    end
                    local iw = iv
                    local iv_2 = next(fN) ~= nil
                    local ix = Options.AddDelay.Value or 0.2
                    for i, v in ipairs(iu) do
                        local is, it
                        if Library.Unloaded or not Toggles.AutoAdd.Value then
                            break
                        end
                        local iu_7 = v:GetAttribute("Heat") or 0
                        local iu_8 = iu_7 >= iw
                        if iu_8 then
                            local ix_6 = not iv_2
                            local iL_3 = if ix_6 then 1 else 0
                            local iJ_3 = 3301 * iL_3 + 737 * (1 - iL_3)
                            local iK_3 = 2961 * iL_3 + 2956 * (1 - iL_3)
                            if not ((iJ_3 * 1877 + iK_3 * 1857 + iJ_3 * iK_3) % 16777213 == 4691602) then
                                ix_6 = fN[f5(v)]
                            end
                            iu_8 = ix_6
                        end
                        if iu_8 then
                            local attr = v:GetAttribute("PepperUid")
                            is = typeof(attr) == "string"
                            local iu_10 = is and attr
                            if not iu_10 then
                                local ix_8 = (v:GetAttribute("PepperName"))
                                local iL_4 = if ix_8 then 1 else 0
                                local iJ_4 = 1601 * iL_4 + 3282 * (1 - iL_4)
                                local iK_4 = 3972 * iL_4 + 1519 * (1 - iL_4)
                                if not ((iJ_4 * 2502 + iK_4 * 622 + iJ_4 * iK_4) % 16777213 == 12835458) then
                                    ix_8 = f0(v.Name)
                                end
                                iu_10 = ix_8
                            end
                            it = iu_10
                            pcall(function()
                                ge:InvokeServer(is, it)
                            end)
                            task.wait(ix)
                        end
                    end
                end
                fJ = fn401
                fX = fn182
            else
                fX = function()
                    local iu = fS(fV)
                    if #iu == 0 then
                        return
                    end
                    if Toggles.KeepBestPepper.Value then
                        table.sort(iu, function(bf, bg)
                            local ip = bf:GetAttribute("Heat") or 0
                            local iq = bg:GetAttribute("Heat") or 0
                            return ip > iq
                        end)
                        table.remove(iu, 1)
                    end
                    local iv = (tonumber(Options.AddMinHeat.Value))
                    local iC = if iv then 1 else 0
                    local iA = 1954 * iC + 4054 * (1 - iC)
                    local iB = 2961 * iC + 2484 * (1 - iC)
                    if not ((iA * 459 + iB * 2768 + iA * iB) % 16777213 == 14878728) then
                        iv = 0
                    end
                    local iw = iv
                    local iv_1 = next(fN) ~= nil
                    local ix = Options.AddDelay.Value or 0.2
                    for i, v in ipairs(iu) do
                        local is, it
                        if Library.Unloaded or not Toggles.AutoAdd.Value then
                            break
                        end
                        local iu_2 = v:GetAttribute("Heat") or 0
                        local iu_3 = iu_2 >= iw
                        if iu_3 then
                            local ix_2 = not iv_1
                            local iL_1 = if ix_2 then 1 else 0
                            local iJ_1 = 3301 * iL_1 + 737 * (1 - iL_1)
                            local iK_1 = 2961 * iL_1 + 2956 * (1 - iL_1)
                            if not ((iJ_1 * 1877 + iK_1 * 1857 + iJ_1 * iK_1) % 16777213 == 4691602) then
                                ix_2 = fN[f5(v)]
                            end
                            iu_3 = ix_2
                        end
                        if iu_3 then
                            local attr = v:GetAttribute("PepperUid")
                            is = typeof(attr) == "string"
                            local iu_5 = is and attr
                            if not iu_5 then
                                local ix_4 = (v:GetAttribute("PepperName"))
                                local iL_2 = if ix_4 then 1 else 0
                                local iJ_2 = 1601 * iL_2 + 3282 * (1 - iL_2)
                                local iK_2 = 3972 * iL_2 + 1519 * (1 - iL_2)
                                if not ((iJ_2 * 2502 + iK_2 * 622 + iJ_2 * iK_2) % 16777213 == 12835458) then
                                    ix_4 = f0(v.Name)
                                end
                                iu_5 = ix_4
                            end
                            it = iu_5
                            pcall(function()
                                ge:InvokeServer(is, it)
                            end)
                            task.wait(ix)
                        end
                    end
                end
                gh = fn401
                fJ = fn182
            end
            gi_3 = (gi_3 + 43) % 72
        else
            local gr_6 = (vector.create((gi_3 * 1 + 2) % 11 + 1, (gi_3 * 8 + 12) % 13 + 1, (gi_3 * 15 + 4) % 17 + 1))
            local gs_4 = (vector.create((gi_3 * 6 + 3) % 11 + 1, (gi_3 * 6 + 11) % 13 + 1, (gi_3 * 8 + 15) % 17 + 1))
            local gt_2 = (vector.create((gi_3 * 2 + 4) % 5 + 1, (gi_3 * 3 + 7) % 7 + 1, (gi_3 * 1 + 3) % 9 + 1))
            if math.abs((vector.angle(gr_6, gs_4, gt_2))) - math.abs((vector.angle(gs_4, gr_6, gt_2))) == 4 then
                gm_1 = function()
                    local i1 = fK()
                    if #i1 == 0 then
                        return
                    end
                    local i2 = tonumber(Options.PlaceMinHeat.Value) or 0
                    local i3 = {}
                    for i, v in ipairs(fS(gg)) do
                        local i2_4 = (v:GetAttribute("Heat"))
                        local jf = if i2_4 then 1 else 0
                        local jd = 1562 * jf + 2540 * (1 - jf)
                        local je = 2278 * jf + 3023 * (1 - jf)
                        if not ((jd * 2269 + je * 1990 + jd * je) % 16777213 == 11635634) then
                            i2_4 = 0
                        end
                        local i5_3 = i2_4 >= i2 and typeof(v:GetAttribute("HotsauceId")) == "string"
                        if i5_3 then
                            i3[#i3 + 1] = v
                        end
                    end
                    local Value = Options.PlaceSort.Value
                    if Value == "Highest Heat" then
                        table.sort(i3, function(ca, cb)
                            local iY = ca:GetAttribute("Heat") or 0
                            local iZ = cb:GetAttribute("Heat") or 0
                            return iY > iZ
                        end)
                    elseif Value == "Lowest Heat" then
                        table.sort(i3, function(b8, b9)
                            local iV = b8:GetAttribute("Heat") or 0
                            local iW = b9:GetAttribute("Heat") or 0
                            return iV < iW
                        end)
                    end
                    local i2_6 = Options.PlaceDelay.Value or 0.2
                    local i4_2 = 1
                    for i, v in ipairs(i1) do
                        local jl = v
                        if Library.Unloaded or not Toggles.AutoPlace.Value then
                            break
                        else
                            local i0 = i3[i4_2]
                            if not i0 then
                                break
                            end
                            i4_2 = i4_2 + 1
                            pcall(function()
                                PlaceHotsauce:InvokeServer(jl, i0:GetAttribute("HotsauceId"))
                            end)
                            task.wait(i2_6)
                        end
                    end
                end
                gl_1 = { "No", "Sp", "D", "Qi", "", "Oc", "U", "T", "Sx", "Qa" }
                f1 = { "Tg", "Su", "Og", "Vg", "Sg", "", "Qq", "Qd", "Nv", "Dc" }
            else
                f1 = function()
                    local i1 = fK()
                    if #i1 == 0 then
                        return
                    end
                    local i2 = tonumber(Options.PlaceMinHeat.Value) or 0
                    local i3 = {}
                    for i, v in ipairs(fS(gg)) do
                        local i2_1 = (v:GetAttribute("Heat"))
                        local jf = if i2_1 then 1 else 0
                        local jd = 1562 * jf + 2540 * (1 - jf)
                        local je = 2278 * jf + 3023 * (1 - jf)
                        if not ((jd * 2269 + je * 1990 + jd * je) % 16777213 == 11635634) then
                            i2_1 = 0
                        end
                        local i5_1 = i2_1 >= i2 and typeof(v:GetAttribute("HotsauceId")) == "string"
                        if i5_1 then
                            i3[#i3 + 1] = v
                        end
                    end
                    local Value = Options.PlaceSort.Value
                    if Value == "Highest Heat" then
                        table.sort(i3, function(ca, cb)
                            local iY = ca:GetAttribute("Heat") or 0
                            local iZ = cb:GetAttribute("Heat") or 0
                            return iY > iZ
                        end)
                    elseif Value == "Lowest Heat" then
                        table.sort(i3, function(b8, b9)
                            local iV = b8:GetAttribute("Heat") or 0
                            local iW = b9:GetAttribute("Heat") or 0
                            return iV < iW
                        end)
                    end
                    local i2_3 = Options.PlaceDelay.Value or 0.2
                    local i4_1 = 1
                    for i, v in ipairs(i1) do
                        local jl = v
                        if Library.Unloaded or not Toggles.AutoPlace.Value then
                            break
                        else
                            local i0 = i3[i4_1]
                            if not i0 then
                                break
                            end
                            i4_1 = i4_1 + 1
                            pcall(function()
                                PlaceHotsauce:InvokeServer(jl, i0:GetAttribute("HotsauceId"))
                            end)
                            task.wait(i2_3)
                        end
                    end
                end
                gm_1 = { "", "U", "D", "T", "Qa", "Qi", "Sx", "Sp", "Oc", "No" }
                gl_1 = { "", "Dc", "Vg", "Tg", "Qd", "Qq", "Sg", "Su", "Og", "Nv" }
            end
            gi_3 = (gi_3 + 52) % 72
        end
    elseif gn_1 <= 8 then
        local gn_2 = (vector.create((gi_3 * 3 + 4) % 11 + 1, (gi_3 * 9 + 11) % 13 + 1, (gi_3 * 8 + 11) % 17 + 1))
        local gr_7 = (vector.create((gi_3 * 3 + 4) % 11 + 1, (gi_3 * 9 + 11) % 13 + 1, (gi_3 * 14 + 12) % 17 + 1))
        local gs_5 = (vector.create((gi_3 * 1 + 5) % 5 + 1, (gi_3 * 4 + 1) % 7 + 1, (gi_3 * 4 + 2) % 9 + 1))
        if math.abs((vector.angle(gn_2, gr_7, gs_5))) - math.abs((vector.angle(gr_7, gn_2, gs_5))) == 1 then
            gj_1 = { "", "Ne", "Ce", "Sc", "Si", "Qe", "Tc", "Dn", "Qu", "Oe" }
            gk_1 = { "T", "K", "B", "M" }
        else
            gk_1 = { "", "Ce", "Dn", "Tc", "Qe", "Qu", "Sc", "Si", "Oe", "Ne" }
            gj_1 = { "K", "M", "B", "T" }
        end
        gi_3 = (gi_3 + 52) % 72
    else
        local gn_3 = { "sli", "brwrue", "zusih", "vedsffwzhfl", "irvrewle", "rfd", "ngkmtdv" }
        local ln = gi_3
        local gr_8 = gn_3[ln % 7 + 1]
        if gr_8:len() >= gr_8:reverse():rep(ln % 3 + 2):len() then
            fS = { [""] = 1 }
        else
            fF = { [""] = 1 }
        end
        gi_3 = (gi_3 + 52) % 72
    end
until (gi_3 * 43 + 55) % 72 == 62
local gQ = 1
while gQ <= 100 do
    local gR = gQ
    if gR <= 4 then
        gi_4 = gj_1[gR]
    else
        local gn_4 = gR - 1
        gi_4 = gm_1[gn_4 % 10 + 1] .. gl_1[math.floor(gn_4 / 10) % 10 + 1] .. gk_1[math.floor(gn_4 / 100) % 10 + 1]
    end
    fF[gi_4] = 1000 ^ gR
    gQ += 1
end
gt_3, f7, fP, fT, f2, fZ, gs_6 = nil, nil, nil, nil, nil, nil, nil
if (gs_6 or gt_3) and (not gs_6 and gt_3) or (not gt_3) and false or not ((gs_6 or gt_3) and (not gs_6 and gt_3) or (not gt_3) and false) then
    f7 = fn582
    fP = fn588
    fT = fn396
    f2 = function()
        local jK = Options.UpgradeDelay.Value or 0.3
        for i, v in ipairs(fL) do
            if Library.Unloaded or not Toggles.AutoUpgrade.Value then
                break
            elseif fD[v] then
                local jJ = fG[v]
                if jJ then
                    pcall(function()
                        jJ:FireServer()
                    end)
                    task.wait(jK)
                end
            end
        end
    end
else
    f2 = fn582
    fT = fn588
    fP = fn396
    f7 = function()
        local jK = Options.UpgradeDelay.Value or 0.3
        for i, v in ipairs(fL) do
            if Library.Unloaded or not Toggles.AutoUpgrade.Value then
                break
            elseif fD[v] then
                local jJ = fG[v]
                if jJ then
                    pcall(function()
                        jJ:FireServer()
                    end)
                    task.wait(jK)
                end
            end
        end
    end
end
fZ = function()
    local jW = gf()
    if not jW then
        return
    end
    local Dirt = jW:FindFirstChild("Dirt")
    if not Dirt then
        return
    end
    local jW_1 = Options.UnlockDelay.Value or 0.3
    for i, child in ipairs(Dirt:GetChildren()) do
        local j4 = child
        if Library.Unloaded or not Toggles.AutoUnlock.Value then
            break
        end
        local jW_3 = j4:IsA("BasePart") and j4:GetAttribute("Locked") == true
        if jW_3 then
            if j4:GetAttribute("Row2Price") ~= nil then
                pcall(function()
                    BuyRow2Dirt:InvokeServer(j4)
                end)
            else
                pcall(function()
                    UnlockDirt:InvokeServer(j4)
                end)
            end
            task.wait(jW_1)
        end
    end
end
Library.SetNotifySide = fn477
local Window = Library:CreateWindow({
    Title = "Make Hotsauce",
    Footer = "Ouroboros Hub",
    Size = UDim2.fromOffset(900, 640),
    ShowCustomCursor = false
})
Library.ShowCustomCursor = false
local gt_4 = { Main = Window:AddTab("Main", "flame"), Settings = Window:AddTab("Settings", "settings") }
for k, v in gt_4 do
    fn359(v)
end
connection = nil
local PeppersGroup = gt_4.Main:AddLeftGroupbox("Peppers", "leaf")
PeppersGroup:AddToggle("AutoPick", { Text = "Auto Pick Peppers", Default = false })
PeppersGroup:AddDivider()
PeppersGroup:AddToggle("AutoAdd", { Text = "Auto Add Peppers To Brew", Default = false })
PeppersGroup:AddToggle("KeepBestPepper", { Text = "Keep Highest Heat Pepper", Default = false })
PeppersGroup:AddInput("AddMinHeat", { Text = "Min Heat", Default = "0", Numeric = true, Finished = true })
PeppersGroup:AddSlider("AddDelay", { Text = "Add Delay", Default = 0.2, Min = 0.05, Max = 2, Rounding = 2 })
PeppersGroup:AddDropdown("AddPeppers", {
    Text = "Only Add These (empty = all)",
    Values = gq,
    Default = {},
    Multi = true,
    Callback = onAddPeppers
})
local SeedMachineGroup = gt_4.Main:AddRightGroupbox("Seed Machine", "sprout")
SeedMachineGroup:AddToggle("AutoSpin", { Text = "Auto Spin Seeds", Default = false })
SeedMachineGroup:AddToggle("SpinWaitForPickup", { Text = "Don't Spin While Seed Waiting", Default = true })
SeedMachineGroup:AddSlider("SpinDelay", { Text = "Spin Delay", Default = 1.5, Min = 0.5, Max = 15, Rounding = 1 })
SeedMachineGroup:AddDivider()
SeedMachineGroup:AddToggle("AutoPickupSeeds", { Text = "Auto Pickup Seeds", Default = false })
SeedMachineGroup:AddSlider("PickupDelay", { Text = "Pickup Delay", Default = 0.3, Min = 0.1, Max = 3, Rounding = 1 })
local SellingGroup = gt_4.Main:AddLeftGroupbox("Selling", "utensils")
SellingGroup:AddToggle("AutoPlace", { Text = "Auto Place Hot Sauce", Default = false })
SellingGroup:AddInput("PlaceMinHeat", { Text = "Min Heat", Default = "0", Numeric = true, Finished = true })
SellingGroup:AddDropdown("PlaceSort", {
    Text = "Place Order",
    Values = { "Any", "Highest Heat", "Lowest Heat" },
    Default = "Highest Heat",
    Multi = false
})
SellingGroup:AddSlider("PlaceDelay", { Text = "Place Delay", Default = 0.2, Min = 0.05, Max = 2, Rounding = 2 })
SellingGroup:AddDivider()
SellingGroup:AddToggle("AutoBrew", { Text = "Auto Pickup Ready Brew", Default = false })
SellingGroup:AddInput("BrewMinHeat", { Text = "Min Brew Heat", Default = "0", Numeric = true, Finished = true })
SellingGroup:AddSlider("BrewDelay", { Text = "Brew Delay", Default = 1, Min = 0.2, Max = 10, Rounding = 1 })
local UpgradesGroup = gt_4.Main:AddRightGroupbox("Upgrades", "trending-up")
UpgradesGroup:AddToggle("AutoUpgrade", { Text = "Auto Buy Upgrades", Default = false })
UpgradesGroup:AddDropdown("Upgrades", { Text = "Upgrades", Values = fL, Default = {}, Multi = true, Callback = onUpgrades })
UpgradesGroup:AddSlider("UpgradeDelay", { Text = "Upgrade Delay", Default = 0.3, Min = 0.1, Max = 3, Rounding = 2 })
local UnlockGroup = gt_4.Main:AddRightGroupbox("Unlock", "lock-open")
UnlockGroup:AddToggle("AutoUnlock", { Text = "Auto Unlock Dirt", Default = false })
UnlockGroup:AddSlider("UnlockDelay", { Text = "Unlock Delay", Default = 0.3, Min = 0.1, Max = 3, Rounding = 2 })
local MenuGroup = gt_4.Settings:AddLeftGroupbox("Menu", "wrench")
MenuGroup:AddLabel("UI Keybind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "UI Keybind" })
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true, Callback = onAntiAfk })
MenuGroup:AddButton("Unload", onUnload)
Library.ToggleKeybind = Options.MenuKeybind
Library:OnUnload(fn30)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Mint")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/MakeHotsauce")
SaveManager:BuildConfigSection(gt_4.Settings)
ThemeManager:ApplyToTab(gt_4.Settings)
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
task.spawn(autoPickLoop)
task.spawn(autoAddLoop)
task.spawn(autoSpinLoop)
task.spawn(autoPickupSeedsLoop)
task.spawn(autoPlaceLoop)
task.spawn(autoBrewLoop)
task.spawn(autoUpgradeLoop)
task.spawn(autoUnlockLoop)
Library:Notify("Make Hotsauce loaded")
