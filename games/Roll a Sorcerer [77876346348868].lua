local kf
local kC
local ki
local kF
local jX
local kl
local kr
local BoostUpgradeConfig
local j8
local kR
local kb
local ky
local jQ
local ke
local kh
local jW
local kk
local j1
local j4
local kN
local kt
local kQ
local LuckyBlockConfig
local ka
local kx
local kA
local kd
local jV
local kD
local Toggles
local kG
local j0
local kJ
local Library
local j3
local kM
local j6
local ks
local j9
local Options
local kz
local function fn17()
    local lN = j6:FindFirstChild("Map") and j6.Map:FindFirstChild("Bases")
    if not lN then
        return nil
    end
    local lN_1 = lN:FindFirstChild(j3.Name)
    if lN_1 then
        return lN_1
    end
    for i, child in lN:GetChildren() do
        local lN_2 = child:GetAttribute("OwnerUserId") == j3.UserId or child:GetAttribute("Owner") == j3.Name
        if lN_2 then
            return child
        end
    end
    return nil
end
local function fn43()
    local lJ = tonumber(j3:GetAttribute("Cash")) or 0
    return lJ
end
local function fn96()
    Library.ScreenGui.Parent = kd
end
local function fn122()
    local lL = tonumber(j3:GetAttribute("Rebirth")) or 0
    return lL
end
local function fn140()
    local n2 = if not ki("AutoCollectMoney") then 1 else 0
    if n2 == 1 then
        return
    end
    if tick() - kG < 0.75 then
        return
    end
    kG = tick()
    kR()
end
local function fn218(dv)
    local DiscordGroup = dv:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = j9 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = j9 })
end
local function fn265()
    local Character = j3.Character
    local lE = Character and Character:FindFirstChildOfClass("Humanoid")
    return lE
end
local function worker()
    while not Library.Unloaded do
        pcall(kb)
        pcall(jQ)
        pcall(kt)
        pcall(j0)
        pcall(kA)
        pcall(j8)
        task.wait(0.2)
    end
end
local function fn291(aV)
    local LuckyStock = j3:FindFirstChild("LuckyStock")
    local lX = LuckyStock and LuckyStock:FindFirstChild(aV)
    local lW_1 = lX
    if lX then
        lX = lW_1:IsA("ValueBase")
    end
    if lX then
        local lX_1 = tonumber(lW_1.Value) or 0
        return lX_1
    end
    return 0
end
local function fn299()
    kr(kz, "Copied Discord invite to clipboard")
end
local function fn314(an, ao)
    return string.format('<font color="%s">%s</font>', ao, an)
end
local function fn358()
    local m1 = jW()
    local m2 = ky()
    if not m1 or not m2 then
        return
    end
    local Slots = m1:FindFirstChild("Slots")
    if not Slots then
        return
    end
    for i, child in Slots:GetChildren() do
        if child:GetAttribute("Occupied") == true then
            local Button = child:FindFirstChild("Button")
            local m3_2 = Button and Button:FindFirstChild("MainButton")
            local m1_2 = m3_2
            if m3_2 then
                m3_2 = m1_2:IsA("BasePart")
            end
            if m3_2 then
                m3_2 = firetouchinterest
            end
            if m3_2 then
                pcall(firetouchinterest, m2, m1_2, 0)
                task.wait()
                pcall(firetouchinterest, m2, m1_2, 1)
            end
        end
    end
end
local function fn391(I, J)
    if I.cost == J.cost then
        return I.name < J.name
    end
    return I.cost < J.cost
end
local function fn401()
    local n4 = hookfunction ~= nil
    local n5 = hookmetamethod ~= nil
    local n6 = getrawmetatable ~= nil
    local n7 = setrawmetatable ~= nil
    local n8 = getgc ~= nil
    local n9 = getgenv ~= nil
    local oa = getreg ~= nil
    local ob = getconnections ~= nil
    local oc = firesignal ~= nil
    local od = getcallbackvalue ~= nil
    local oe = setclipboard ~= nil
    local of = getcustomasset ~= nil
    local og = getnamecallmethod ~= nil
    local oh = isexecutorclosure ~= nil
    local oi = fireproximityprompt ~= nil
    local oj = firetouchinterest ~= nil
    local ol = WebSocket ~= nil
    local om = readfile ~= nil
    local oo = writefile ~= nil
    local oq = (request or http_request) ~= nil
    local ou = (debug and debug.getupvalues) ~= nil
    local ow = (debug and debug.setupvalue) ~= nil
    local ox = 0
    local oy = { n4, n5, n6, n7, n8, n9, oa, ob, oc, od, oe, of, og, oh, oi, oj, ol, om, oo, oq, ou, ow }
    for k, v in oy do
        if v then
            ox += 1
        end
    end
    local n4_1 = ox / #oy
    if n4_1 >= 0.9 then
        return jV("Full Support", kk)
    elseif n4_1 >= 0.6 then
        return jV("Half Support", ka)
    else
        return jV("Low Support", j1)
    end
end
local function fn407()
    local mo = Options.LuckyBlockType and Options.LuckyBlockType.Value
    if type(mo) ~= "table" then
        return nil
    end
    local mo_1 = false
    local mq = {}
    for k, v in mo do
        local mp_1 = v == true and type(k) == "string" and LuckyBlockConfig.LuckyBlocks[k]
        if mp_1 then
            mq[k] = true
            mo_1 = true
        end
    end
    if not mo_1 then
        return nil
    end
    return mq
end
local function fn408()
    if not ki("AutoSpin") then
        return
    end
    if j3:GetAttribute("Rolling") == true then
        pcall(function()
            jX.RewardCharacter:Fire()
        end)
        return
    end
    local nK = ks()
    if not nK then
        return
    end
    kD(nK)
end
local function fn409(ad)
    if ad then
        kQ[#kQ + 1] = ad
    end
    return ad
end
local function fn447(av)
    local lA = Toggles[av]
    return lA ~= nil and lA.Value == true
end
local function fn489()
    local Character = j3.Character
    local lH = Character and Character:FindFirstChild("HumanoidRootPart")
    return lH
end
local function fn490()
    if not ki("AutoBuyLuckyBlock") then
        return
    end
    local nM = kh()
    if not nM then
        return
    end
    for k, v in kJ do
        local nN = nM[v] and kl(v)
        if nN then
            return
        end
    end
end
local function fn501(bX)
    local mK = LuckyBlockConfig.LuckyBlocks[bX]
    if not mK then
        return false
    end
    local mL = j4()
    local mM = tonumber(mK.RequiredRebirth) or 0
    if mL < mM then
        return false
    elseif ke(bX) <= 0 then
        return false
    else
        local mL_1 = kf()
        local mM_1 = tonumber(mK.Cost) or math.huge
        return mL_1 >= mM_1
    end
end
local function fn535(ag, ah)
    if setclipboard then
        setclipboard(ag)
    elseif toclipboard then
        toclipboard(ag)
    end
    Library:Notify(ah)
end
local function fn582()
    local l8 = kF()
    local l9 = -1
    local ma
    for k, v in l8 do
        if v > 0 then
            local l8_1 = kC[k] or 0
            if l8_1 > l9 or l8_1 == l9 and (ma == nil or k < ma) then
                l9 = l8_1
                ma = k
            end
        end
    end
    return ma
end
local function fn615(aq, ar, as)
    return string.format("<b>%s</b> %s %s", aq, jV("-", "#5a6070"), jV(ar, as))
end
local function fn644()
    local nZ = if not ki("AutoEquipBest") then 1 else 0
    if nZ == 1 then
        return
    end
    if tick() - kN < 2 then
        return
    end
    kN = tick()
    pcall(function()
        jX.EquipBestCharacter:Fire()
    end)
end
local function fn718()
    if ki("AutoUseBestOwnedLuckyBlock") then
        return kx()
    end
    local my = kh()
    if not my then
        return nil
    end
    local mz = kF()
    local mA = -1
    local mB
    for k in my do
        if (mz[k] or 0) > 0 then
            local my_2 = kC[k] or 0
            if my_2 > mA or my_2 == mA and (mB == nil or k < mB) then
                mA = my_2
                mB = k
            end
        end
    end
    return mB
end
local function fn747()
    local ni = Options.UpgradeTypes and Options.UpgradeTypes.Value
    if type(ni) ~= "table" then
        return nil
    end
    local ni_1 = false
    local nk = {}
    for k, v in ni do
        if v == true then
            local nj_1 = kM[k] or k
            if BoostUpgradeConfig.Upgrades[nj_1] then
                nk[nj_1] = true
                ni_1 = true
            end
        end
    end
    if not ni_1 then
        return nil
    end
    return nk
end
local function fn758()
    if not ki("AutoRebirth") then
        return
    end
    if j3:GetAttribute("CanRebirth") ~= true then
        return
    end
    pcall(function()
        jX.Rebirth:Fire()
    end)
end
LuckyBlockConfig = nil
jQ = nil
Options = nil
local jT
jV = nil
jW = nil
jX = nil
Toggles = nil
j0 = nil
j1 = nil
j3 = nil
j4 = nil
j6 = nil
j8 = nil
j9 = nil
ka = nil
kb = nil
kd = nil
ke = nil
kf = nil
kh = nil
ki = nil
kk = nil
kl = nil
Library = nil
kr = nil
ks = nil
kt = nil
kx = nil
ky = nil
kz = nil
kA = nil
local jO, jS, jU, jZ, j_, SaveManager, j5, j7, kc, kg, kj, kn, GuiService, kp, kq, kv, kw, kB
kC = nil
kD = nil
kF = nil
kG = nil
kJ = nil
kM = nil
kN = nil
BoostUpgradeConfig = nil
kQ = nil
kR = nil
local kE, kH, kI, kK, kL, kP
local kU_1, kU_3
local PlayerGui
jO, kU_1, kI, kB, kw, kq, GuiService, kj, kd, j6, j3, PlayerGui = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local kT = 8
local kT_1, kT_5
repeat
    local kV_1 = (kT * 2 + 3) % 5 + 1
    if kV_1 <= 3 then
        if kV_1 <= 2 then
            if kV_1 <= 1 then
                if ((kT and not jO or GuiService and not kT) and (GuiService and not jO or (GuiService or not GuiService)) or (not GuiService and not GuiService or not GuiService and jO) and (not kT or not kT or kT and not jO)) and not ((kT and not jO or GuiService and not kT) and (GuiService and not jO or (GuiService or not GuiService)) or (not GuiService and not GuiService or not GuiService and jO) and (not kT or not kT or kT and not jO)) then
                    kw = game:GetService("ReplicatedStorage")
                    kU_1 = game:GetService("RunService")
                    kq = game:GetService("UserInputService")
                    kI = game:GetService("VirtualUser")
                    kB = game:GetService("HttpService")
                else
                    kU_1 = game:GetService("ReplicatedStorage")
                    kI = game:GetService("RunService")
                    kB = game:GetService("UserInputService")
                    kw = game:GetService("VirtualUser")
                    kq = game:GetService("HttpService")
                end
                kT = (kT + 33) % 40
            else
                if (not jO or not jO) and (not j6 or kB) or (kB or kT) and (kB and not j6) or not ((not jO or not jO) and (not j6 or kB) or (kB or kT) and (kB and not j6)) then
                    GuiService = game:GetService("GuiService")
                else
                    kd = game:GetService("GuiService")
                end
                kT = (kT + 13) % 40
            end
        else
            if kT * 4088451 + 1 + 4 >= kT * 4088451 + 1 + 4 + 3 then
                j6 = game:GetService("TeleportService")
                kj = game:GetService("CoreGui")
                kd = game:GetService("Workspace")
            else
                kj = game:GetService("TeleportService")
                kd = game:GetService("CoreGui")
                j6 = game:GetService("Workspace")
            end
            kT = (kT + 18) % 40
        end
    elseif kV_1 <= 4 then
        if (kT * 3 + 7) * 9 % 4 == ((kT * 3 + 7) * 9 + 10) % 4 then
            jO = PlayerGui.LocalPlayer
            j3 = jO:WaitForChild("PlayerGui")
        else
            j3 = jO.LocalPlayer
            PlayerGui = j3:WaitForChild("PlayerGui")
        end
        kT = (kT + 3) % 40
    else
        local r0 = bit32.rrotate(bit32.bxor(bit32.lrotate(kT, 1), string.byte(tostring(j6))), 17)
        if bit32.bxor(bit32.lrotate(bit32.bxor(r0, 724531216), 12), 4152427186) == bit32.lrotate(r0, 12) then
            jO = game:GetService("Players")
        else
            j3 = game:GetService("Players")
        end
        kT = (kT + 3) % 40
    end
until (kT * 13 + 30) % 40 == 4
if getgenv then
    jT, kT_1 = nil, nil
    local kS_2 = 12
    repeat
        if (kS_2 * 1 + 1) % 2 + 1 <= 1 then
            local kV_3 = {
                "dkmtxxz",
                "tfjj",
                "fwlrwewohqui",
                "lvsail",
                "dzqraj",
                "glhxey",
                "vne",
                "spukvbbhcecp",
                "alwzqvwhcspx",
                "hgtfefkstynf",
                "digctrcc",
                "cbqismsav",
                "hubqmmynkb"
            }
            if kV_3[(kS_2 * 80 + 8) % 13 + 1] < kV_3[(kS_2 * 80 + 8) % 13 + 1] then
                jT = kT_1
            else
                kT_1 = jT
            end
            kS_2 = (kS_2 + 3) % 16
        else
            if kS_2 * 91975071 + 11 + 3 <= kS_2 * 91975071 + 11 + 3 + 1 then
                jT = getgenv().__OuroborosRollASorcererLib
            else
                kT_1 = getgenv().__OuroborosRollASorcererLib
            end
            kS_2 = (kS_2 + 3) % 16
        end
    until (kS_2 * 11 + 7) % 16 == 13
    if kT_1 then
        kT_1 = jT.Unload
    end
    if kT_1 then
        pcall(function()
            jT:Unload()
        end)
    end
end
if setthreadidentity then
    setthreadidentity(8)
end
kE, kz, kv, kp, kk, kg, ka, j5, j1, jX, LuckyBlockConfig, BoostUpgradeConfig, kJ, kC = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local kS_3 = 42
repeat
    local kT_2 = (kS_3 * 5 + 1) % 6 + 1
    if kT_2 <= 3 then
        if kT_2 <= 2 then
            if kT_2 <= 1 then
                if kS_3 * 133672317 + 5 + 7 <= kS_3 * 133672317 + 5 + 7 + 1 then
                    kJ = {}
                    kC = {}
                else
                    kC = {}
                    kJ = {}
                end
                kS_3 = (kS_3 + 5) % 48
            else
                local kV_4 = (vector.create((kS_3 * 7 + 1) % 11 + 1, (kS_3 * 2 + 6) % 13 + 1, (kS_3 * 3 + 6) % 17 + 1))
                local kW_1 = (vector.create((kS_3 * 1 + 2) % 11 + 1, (kS_3 * 1 + 7) % 13 + 1, (kS_3 * 13 + 17) % 17 + 1))
                local rR = vector.cross(kV_4, kW_1)
                local rS = vector.dot(kV_4, kW_1)
                if vector.dot(rR, rR) + rS * rS == vector.dot(kV_4, kV_4) * vector.dot(kW_1, kW_1) then
                    kE = "Roll a Sorcerer"
                    kz = "https://discord.gg/ehKVq7pf7v"
                    kv = "https://rscripts.net/@Ouroboros"
                else
                    kv = "Roll a Sorcerer"
                    kE = "https://discord.gg/ehKVq7pf7v"
                    kz = "https://rscripts.net/@Ouroboros"
                end
                kS_3 = (kS_3 + 29) % 48
            end
        else
            local r7 = bit32.rrotate(bit32.bxor(bit32.lrotate(kS_3, 22), string.byte(tostring(j1))), 11)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(r7, 3377954531), 756605839), (bit32.bxor(bit32.band(r7, 917012764), 1233238255))), 756605839), 1233238255) ~= r7 then
                kk = "https://ouroboros-hub-rbx.web.app/"
                kp = "#7fd47f"
            else
                kp = "https://ouroboros-hub-rbx.web.app/"
                kk = "#7fd47f"
            end
            kS_3 = (kS_3 + 47) % 48
        end
    elseif kT_2 <= 5 then
        if kT_2 <= 4 then
            if kS_3 * 38813779 + 10 + 4 >= kS_3 * 38813779 + 10 + 4 + 1 then
                j5 = "#6ec1ff"
                kg = "#e8a34d"
                ka = "#8b93a3"
            else
                kg = "#6ec1ff"
                ka = "#e8a34d"
                j5 = "#8b93a3"
            end
            kS_3 = (kS_3 + 23) % 48
        else
            local kT_3 = (vector.create((kS_3 * 6 + 5) % 11 + 1, (kS_3 * 1 + 4) % 13 + 1, (kS_3 * 14 + 5) % 17 + 1))
            local kV_5 = (vector.create((kS_3 * 5 + 2) % 11 + 1, (kS_3 * 1 + 5) % 13 + 1, (kS_3 * 10 + 2) % 17 + 1))
            local rc = vector.dot(kT_3, kV_5)
            if rc * rc >= vector.dot(kT_3, kT_3) * vector.dot(kV_5, kV_5) + 1 then
                kU_1 = "#e05a5a"
                j1 = require(LuckyBlockConfig:WaitForChild("Network"))
                jX = require(LuckyBlockConfig:WaitForChild("Config"):WaitForChild("LuckyBlockConfig"))
            else
                j1 = "#e05a5a"
                jX = require(kU_1:WaitForChild("Network"))
                LuckyBlockConfig = require(kU_1:WaitForChild("Config"):WaitForChild("LuckyBlockConfig"))
            end
            kS_3 = (kS_3 + 17) % 48
        end
    else
        if kS_3 * 62977883 + 4 + 7 <= kS_3 * 62977883 + 4 + 7 + 5 then
            BoostUpgradeConfig = require(kU_1:WaitForChild("Config"):WaitForChild("BoostUpgradeConfig"))
        else
            kU_1 = require(BoostUpgradeConfig:WaitForChild("Config"):WaitForChild("BoostUpgradeConfig"))
        end
        kS_3 = (kS_3 + 41) % 48
    end
until (kS_3 * 41 + 47) % 48 == 11
local kT_4 = {}
for k, v in LuckyBlockConfig.LuckyBlocks do
    local kS_4 = #kT_4 + 1
    local kU_2 = tonumber(v.Cost) or 0
    local kV_6 = tonumber(v.RequiredRebirth) or 0
    kT_4[kS_4] = { name = k, cost = kU_2, requiredRebirth = kV_6 }
    local kS_5 = tonumber(v.Cost) or 0
    kC[k] = kS_5
end
table.sort(kT_4, fn391)
for k, v in kT_4 do
    kJ[#kJ + 1] = v.name
end
j_, kT_5, kU_3, kM = nil, nil, nil, nil
local kS_6 = 9
repeat
    local kV_7 = (kS_6 * 1 + 0) % 3 + 1
    if kV_7 <= 2 then
        if kV_7 <= 1 then
            local kV_8 = { "rood", "pnnrqozjpki", "fzzjnr", "hpgduis", "ljuz", "max", "clqvijvnwq", "tty", "xvekydxk" }
            local r1 = kS_6
            local kW_2 = kV_8[r1 % 9 + 1]
            if kW_2:len() <= kW_2:gsub("(.)", "%1%1", r1 % 3 % 2 + 1):len() then
                j_ = { "CoinBoost", "FortuneBoost", "StockBoost", "MutationBoost" }
            else
                kU_3 = { "FortuneBoost", "StockBoost", "CoinBoost", "MutationBoost" }
            end
            kS_6 = (kS_6 + 4) % 12
        else
            if kS_6 * 107189405 + 9 + 4 >= kS_6 * 107189405 + 9 + 4 + 5 then
                j_ = {
                    MutationBoost = "Mutations Boost",
                    FortuneBoost = "Fortune Boost",
                    CoinBoost = "Coins Boost",
                    StockBoost = "Stock Boost"
                }
            else
                kT_5 = {
                    CoinBoost = "Coins Boost",
                    FortuneBoost = "Fortune Boost",
                    StockBoost = "Stock Boost",
                    MutationBoost = "Mutations Boost"
                }
            end
            kS_6 = (kS_6 + 7) % 12
        end
    else
        local kV_9 = { "hoqxfffubu", "rnftm", "bhbzynrso", "bljitb", "dwoydo", "wqc", "oajcdisnpt" }
        local r9 = kS_6
        local kW_3 = kV_9[r9 % 7 + 1]
        if kW_3:len() >= kW_3:reverse():rep(r9 % 3 + 2):len() then
            kM = {}
            kU_3 = {}
        else
            kU_3 = {}
            kM = {}
        end
        kS_6 = (kS_6 + 4) % 12
    end
until (kS_6 * 7 + 11) % 12 == 11
for k, v in j_ do
    local kS_7 = kT_5[v] or v
    kU_3[#kU_3 + 1] = kS_7
    kM[kS_7] = v
end
Library, SaveManager, Toggles, Options = nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
pcall(fn96)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
if getgenv then
    getgenv().__OuroborosRollASorcererLib = Library
end
kQ, kN, kG, kP, kK, kr, j9, jV, kH, ki, jU, ky, kf, j4, jW, ke, kF, kx, kh, ks, jZ, kl, kD, kR, jS, j0, kt, jQ, j8, kA, kb = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
kQ = {}
kK = fn409
kr = fn535
j9 = fn299
jV = fn314
kH = fn615
ki = fn447
jU = fn265
ky = fn489
kf = fn43
j4 = fn122
jW = fn17
ke = fn291
kF = function()
    local a1 = {}
    local function a2(a3)
        if not a3 then
            return
        end
        for i, child in a3:GetChildren() do
            if child:IsA("Tool") then
                local lZ = child:GetAttribute("LuckyBlockName") or child:GetAttribute("ItemName")
                local lZ_1 = type(lZ) == "string" and lZ ~= "" and LuckyBlockConfig.LuckyBlocks[lZ]
                if lZ_1 then
                    local lZ_2 = tonumber(child:GetAttribute("Amount")) or 1
                    local lZ_3 = a1[lZ] or 0
                    a1[lZ] = lZ_3 + lZ_2
                end
            end
        end
    end
    a2(j3:FindFirstChild("Backpack"))
    a2(j3.Character)
    return a1
end
kx = fn582
kh = fn407
ks = fn718
jZ = fn501
kl = function(b2)
    local mS_1
    local mR_1
    if not jZ(b2) then
        return false
    end
    mR_1, mS_1 = pcall(function()
        return jX.BUYLUCKYBLOCK:Fire("BUY1", b2)
    end)
    local mT = mR_1 and type(mS_1) == "table" and mS_1.Success == true
    return mT
end
kD = function(cb)
    local mV = cb == ""
    local mV_1
    local mW = type(cb) ~= "string" or mV
    local mW_1
    if mW then
        return false
    elseif j3:GetAttribute("Rolling") == true then
        return false
    else
        mV_1, mW_1 = pcall(function()
            return jX.SpinCharacter:Fire(cb)
        end)
        local mX = mV_1 and type(mW_1) == "table" and mW_1.Success == true
        if mX then
            pcall(function()
                jX.RewardCharacter:Fire()
            end)
            return true
        end
        return false
    end
end
kR = fn358
jS = fn747
j0 = function()
    if not ki("AutoBuyUpgrades") then
        return
    end
    local nw = jS()
    if not nw then
        return
    end
    for k, v in j_ do
        local nJ = v
        if nw[nJ] then
            local LevelDataKey = BoostUpgradeConfig.Upgrades[nJ].LevelDataKey
            local ny = tonumber(j3:GetAttribute(LevelDataKey)) or 0
            local ny_2
            local ny_1 = tonumber(BoostUpgradeConfig.Upgrades[nJ].MaxLevel) or 100
            local nz_1
            if ny < ny_1 then
                ny_2, nz_1 = pcall(BoostUpgradeConfig.GetCost, nJ, ny)
                local nx_2 = ny_2 and type(nz_1) == "number" and kf() >= nz_1
                if nx_2 then
                    pcall(function()
                        jX.UpgradeBoost:Fire(nJ)
                    end)
                    task.wait(0.05)
                end
            end
        end
    end
end
kt = fn408
jQ = fn490
j8 = fn758
kN = 0
kG = 0
kA = fn644
kb = fn140
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = kz, Copyable = true }, "|", kE },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
kP = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "dices"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in kP do
    if k ~= "Info" then
        fn218(v)
    end
end
kc, j7, kL, kn = nil, nil, nil, nil
local SpinGroup = kP.Main:AddLeftGroupbox("Spin", "dices")
SpinGroup:AddToggle("AutoSpin", { Text = "Auto Spin", Default = false })
SpinGroup:AddToggle("AutoUseBestOwnedLuckyBlock", { Text = "Auto Use Best Owned Lucky Block", Default = false })
local LuckyBlocksGroup = kP.Main:AddLeftGroupbox("Lucky Blocks", "package")
LuckyBlocksGroup:AddToggle("AutoBuyLuckyBlock", { Text = "Auto Buy Lucky Block", Default = false })
LuckyBlocksGroup:AddDropdown("LuckyBlockType", {
    Text = "Lucky Block",
    Values = kJ,
    Multi = true,
    Searchable = true,
    AllowNull = true,
    Default = {}
})
local ProgressGroup = kP.Main:AddRightGroupbox("Progress", "trending-up")
ProgressGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
ProgressGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
ProgressGroup:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
local UpgradesGroup = kP.Main:AddRightGroupbox("Upgrades", "arrow-up")
UpgradesGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
UpgradesGroup:AddDropdown("UpgradeTypes", {
    Text = "Upgrades",
    Values = kU_3,
    Multi = true,
    Searchable = true,
    AllowNull = true,
    Default = {}
})
task.spawn(worker)
kn = fn401
local function k0()
    local o1
    local oZ
    oZ = nil
    o1 = nil
    local oX, oY, Label, Label2, Label3
    oZ = "Unknown"
    pcall(function()
        local oH_1
        local oG_1
        if identifyexecutor then
            oH_1, oG_1 = identifyexecutor()
            local oI = oH_1 ~= ""
            local oJ = type(oH_1) == "string" and oI
            if oJ then
                local oI_1 = type(oG_1) == "string" and oG_1 ~= "" and oH_1 .. " " .. oG_1
                oZ = oI_1 or oH_1
            end
        end
    end)
    local o3 = kn()
    o1 = os.clock()
    oY = function()
        local oO = math.floor(os.clock() - o1)
        if oO < 60 then
            return oO .. "s"
        elseif oO < 3600 then
            return string.format("%dm %ds", oO // 60, oO % 60)
        else
            return string.format("%dh %dm", oO // 3600, oO % 3600 // 60)
        end
    end
    local UserGroup = kP.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = j3, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(kH("User", j3.DisplayName .. " @" .. j3.Name, kk), true)
    UserGroup:AddLabel(kH("UserId", tostring(j3.UserId), kg), true)
    UserGroup:AddLabel(kH("Executor", oZ .. "  " .. o3, kk), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(kH("Session", oY(), ka), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            kr(j3.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            kr("https://www.roblox.com/users/" .. tostring(j3.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = kP.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(kH("Game", kE, kg), true)
    Label2 = SessionGroup:AddLabel(kH("Players", "0/0", kk), true)
    oX = tostring(game.JobId)
    local o4_1 = #oX > 18 and string.sub(oX, 1, 18) .. "..."
    local o4_2 = o4_1 or oX
    SessionGroup:AddLabel(kH("Job", o4_2, j5), true)
    Label = SessionGroup:AddLabel(kH("Ping", "0 ms", ka), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            kj:Teleport(game.PlaceId, j3)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            kr(oX, "Copied Job ID")
        end
    })
    task.spawn(function()
        local oU_1
        local oT_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(kH("Session", oY(), ka))
            Label2:SetText(kH("Players", #jO:GetPlayers() .. "/" .. tostring(jO.MaxPlayers), kk))
            oT_1, oU_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local oT_2 = oT_1 and oU_1 .. " ms" or "n/a"
            Label:SetText(kH("Ping", oT_2, ka))
        end
    end)
    local SocialsGroup = kP.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = j9 })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            kr(kv, "Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            kr(kp, "Copied website link")
        end
    })
end
k0()
local function k1()
    local connection
    local MovementGroup = kP.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = kP.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local function eZ(e_)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not e_)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = kd:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not e_
            end
        end)
        if not e_ then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(j3, "GameplayPaused", false)
            else
                j3.GameplayPaused = false
            end
        end)
    end
    local function fc(fd)
        if not fd:IsA("ProximityPrompt") then
            return
        end
        fd.HoldDuration = 0
        fd.MaxActivationDistance = 50
        fd.RequiresLineOfSight = false
    end
    connection = nil
    kK(kI.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = j3.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local pf_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if pf_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end))
    kK(kB.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local pq_1 = jU()
            if pq_1 then
                pq_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end))
    local CurrentCamera = j6.CurrentCamera
    kK(kI.RenderStepped:Connect(function(fA)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local pv_1 = jU()
            if pv_1 then
                pv_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local pv_3 = ky()
            local pw = jU()
            if pv_3 and pw then
                pw.PlatformStand = true
                local pw_1 = Vector3.zero
                local pB = if kB:IsKeyDown(Enum.KeyCode.W) then 1 else 0
                if pB == 1 then
                    pw_1 += CurrentCamera.CFrame.LookVector
                end
                if kB:IsKeyDown(Enum.KeyCode.S) then
                    pw_1 -= CurrentCamera.CFrame.LookVector
                end
                if kB:IsKeyDown(Enum.KeyCode.A) then
                    pw_1 -= CurrentCamera.CFrame.RightVector
                end
                if kB:IsKeyDown(Enum.KeyCode.D) then
                    pw_1 += CurrentCamera.CFrame.RightVector
                end
                local pE = if kB:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
                if pE == 1 then
                    pw_1 += Vector3.new(0, 1, 0)
                end
                if kB:IsKeyDown(Enum.KeyCode.LeftControl) then
                    pw_1 -= Vector3.new(0, 1, 0)
                end
                pv_3.AssemblyLinearVelocity = Vector3.zero
                if pw_1.Magnitude > 0 then
                    pv_3.CFrame = pv_3.CFrame + pw_1.Unit * Options.FlySpeed.Value * fA
                end
            end
        end
    end))
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local pF = jU()
            if pF then
                pF.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local pK = jU()
            if pK then
                pK.WalkSpeed = 16
            end
        end
    end)
    Toggles.AntiGameplayPause:OnChanged(function()
        eZ(Toggles.AntiGameplayPause.Value)
    end)
    eZ(true)
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in j6:GetDescendants() do
                pcall(fc, descendant)
            end
            connection = j6.DescendantAdded:Connect(function(f3)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(fc, f3)
                end
            end)
            kK(connection)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                eZ(true)
            end
        end
    end)
    return eZ, function()
        if connection then
            connection:Disconnect()
            connection = nil
        end
    end
end
kc, j7 = k1()
local function kT_6(ge)
    local gf = 0
    local gg = tick()
    ge:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = ge:AddLabel("AFK triggers: 0")
    local function gi()
        local CurrentCamera = j6.CurrentCamera
        if not CurrentCamera then
            return
        end
        kw:CaptureController()
        kw:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        gf += 1
        gg = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. gf)
        end)
    end
    local connection = j3.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(gi)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local pZ = Toggles.AntiAfk.Value and tick() - gg >= 60
            if pZ then
                pcall(gi)
            end
        end
    end)
    ge:AddButton({
        Text = "Unload UI",
        Func = function()
            Library:Unload()
        end
    })
    return connection
end
local MenuGroup = kP.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
kL = kT_6(MenuGroup)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(kP.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/RollASorcerer")
local k3 = SaveManager:BuildConfigSection(kP.Settings)
SaveManager:LoadAutoloadConfig()
local function k2(gJ)
    local function gK(gL, gM)
        local p1_1 = (gL == "Toggle" and Toggles or Options)[gM]
        local p0_2 = type(p1_1) == "table" and p1_1.Type == gL
        return p0_2 and p1_1 or nil
    end
    local function gU(gV, gW)
        local Type = gW.Type
        if Type == "Toggle" then
            return { idx = gV, type = "Toggle", value = gW.Value == true }
        elseif Type == "Slider" then
            return { idx = gV, type = "Slider", value = tostring(gW.Value) }
        elseif Type == "Dropdown" then
            return { idx = gV, type = "Dropdown", multi = gW.Multi == true, value = gW.Value }
        elseif Type == "Input" then
            local p5 = gW.Value or ""
            return { idx = gV, type = "Input", text = tostring(p5) }
        elseif Type == "ColorPicker" then
            return { idx = gV, type = "ColorPicker", value = gW.Value:ToHex(), transparency = gW.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = gV,
                type = "KeyPicker",
                mode = gW.Mode,
                key = gW.Value,
                modifiers = gW.Modifiers,
                toggled = gW.Toggled
            }
        else
            return nil
        end
    end
    local function gY()
        local qb = {}
        for k, v in { Toggles, Options } do
            for k, v in v do
                local qc = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if qc then
                    local qc_1 = gU(k, v)
                    if qc_1 then
                        qb[#qb + 1] = qc_1
                    end
                end
            end
        end
        table.sort(qb, function(g5, g6)
            if g5.type ~= g6.type then
                return g5.type < g6.type
            end
            return g5.idx < g6.idx
        end)
        return { objects = qb }
    end
    local function g7(g8)
        local qs
        qs = nil
        local qt = type(g8) ~= "table"
        local qx = if qt then 1 else 0
        local qv = 1250 * qx + 894 * (1 - qx)
        local qw = 1643 * qx + 2576 * (1 - qx)
        if not ((qv * 2878 + qw * 815 + qv * qw) % 16777213 == 6990295) then
            qt = type(g8.idx) ~= "string"
        end
        if not qt then
            qt = type(g8.type) ~= "string"
        end
        local qA = if qt then 1 else 0
        local qy = 2267 * qA + 2311 * (1 - qA)
        local qz = 693 * qA + 795 * (1 - qA)
        if not ((qy * 374 + qz * 3694 + qy * qz) % 16777213 == 4978831) then
            qt = SaveManager.Ignore[g8.idx]
        end
        if qt then
            return false
        end
        qs = gK(g8.type, g8.idx)
        if not qs then
            return false
        end
        local qt_1 = pcall(function()
            if g8.type == "Input" then
                if type(g8.text) ~= "string" then
                    return
                end
                qs:SetValue(g8.text)
            elseif g8.type == "ColorPicker" then
                qs:SetValueRGB(Color3.fromHex(g8.value), g8.transparency)
            elseif g8.type == "KeyPicker" then
                qs:SetValue({ g8.key, g8.mode, g8.modifiers })
                if g8.mode == "Toggle" and g8.toggled ~= nil then
                    qs.Toggled = g8.toggled
                    qs:Update()
                end
            else
                qs:SetValue(g8.value)
            end
        end)
        return qt_1
    end
    gJ:AddDivider()
    gJ:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    gJ:AddButton("Export Config to Clipboard", function()
        local qC_1
        local qB_1
        qB_1, qC_1 = pcall(kq.JSONEncode, kq, gY())
        if not qB_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local qB_2 = setclipboard or toclipboard
        local qB_3 = type(qB_2) ~= "function" or not pcall(qB_2, qC_1)
        if qB_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    gJ:AddButton("Import Config from Clipboard Text", function()
        local qH_1
        local qF = Options.SaveManager_ImportSource.Value or ""
        local qF_1
        local qG = tostring(qF):match("^%s*(.-)%s*$")
        if qG == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        qF_1, qH_1 = pcall(kq.JSONDecode, kq, qG)
        local qG_1 = not qF_1
        local qL = if qG_1 then 1 else 0
        local qJ = 1513 * qL + 3415 * (1 - qL)
        local qK = 945 * qL + 2405 * (1 - qL)
        if not ((qJ * 894 + qK * 1680 + qJ * qK) % 16777213 == 4370007) then
            qG_1 = type(qH_1) ~= "table"
        end
        if not qG_1 then
            qG_1 = type(qH_1.objects) ~= "table"
        end
        if qG_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local qF_2 = 0
        for k, v in qH_1.objects do
            if g7(v) then
                qF_2 += 1
            end
        end
        if qF_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local qH_2 = qF_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(qF_2, qH_2), 6)
    end)
end
k2(k3)
Library:OnUnload(function()
    kc(false)
    j7()
    if kL then
        kL:Disconnect()
    end
    for k, v in kQ do
        local qZ = v
        pcall(function()
            qZ:Disconnect()
        end)
    end
    table.clear(kQ)
    local qS = jU()
    if qS then
        qS.PlatformStand = false
        qS.WalkSpeed = 16
    end
    local qS_1 = getgenv and getgenv().__OuroborosRollASorcererLib == Library
    if qS_1 then
        getgenv().__OuroborosRollASorcererLib = nil
    end
end)
