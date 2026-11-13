local FlowClient
local vs
local LocalPlayer
local vv
local vk
local uG
local vc
local u4
local vf
local uJ
local Loot
local uX
local vt
local Library
local vw
local vq
local uH
local uS
local vr
local Options
local vu
local u0
local function fn54(ak, al, am)
    return string.format("<b>%s</b> %s %s", ak, vc("-", "#5a6070"), vc(al, am))
end
local function fn92()
    Library.ScreenGui.Parent = vu
end
local function fn154(ba)
    local wW_1
    local wV_1
    local wU = u0(ba)
    if not wU then
        return nil
    end
    wV_1, wW_1 = pcall(Loot.GetCategory, wU)
    if wV_1 then
        return wW_1
    end
    return nil
end
local function fn187()
    return vu
end
local function fn197()
    local Packages = vs:FindFirstChild("Packages")
    local w5 = Packages and Packages:FindFirstChild("NPCMaker")
    local w4_1 = w5
    if w5 then
        w5 = w4_1:FindFirstChild("Costumes")
    end
    local w4_2 = w5
    if not w4_2 then
        return
    end
    table.clear(vw)
    table.clear(vr)
    for i, child in w4_2:GetChildren() do
        local w4_3 = {}
        local Graphic = nil
        for i, child in child:GetChildren() do
            if child:IsA("ShirtGraphic") then
                Graphic = child.Graphic
            elseif child:IsA("Accessory") then
                w4_3[#w4_3 + 1] = child.Name
            end
        end
        vr[#vr + 1] = { Name = child.Name, Graphic = Graphic, Accessories = w4_3 }
        vw[#vw + 1] = child.Name
    end
    table.sort(vw)
end
local function fn211(aa, ab)
    if setclipboard then
        setclipboard(aa)
    elseif toclipboard then
        toclipboard(aa)
    end
    Library:Notify(ab)
end
local function fn259(aL)
    local wx = Options[aL]
    local wy = wx and wx.Value
    local wx_1 = {}
    if type(wy) ~= "table" then
        return wx_1
    end
    for k, v in wy do
        if v then
            wx_1[k] = true
        end
    end
    return wx_1
end
local function fn261(aU)
    for k in uX do
        if aU:HasTag(k) then
            return true
        end
    end
    return false
end
local function fn284(ah, ai)
    return string.format('<font color="%s">%s</font>', ai, ah)
end
local function fn291(aB)
    local wo = aB and aB:IsA("ProximityPrompt")
    if not wo then
        return false
    elseif not fireproximityprompt then
        return false
    else
        if not pcall(fireproximityprompt, aB) then
            pcall(fireproximityprompt, aB, aB.HoldDuration)
        end
        return true
    end
end
local function fn335(b8)
    local DiscordGroup = b8:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = vq })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = vq })
end
local function onBurstNearbyTires()
    local yW = vf()
    if not yW then
        return
    end
    local yX = 0
    for k, v in uH:GetTagged("VehicleTire") do
        if v and v.Parent and (v.Position - yW.Position).Magnitude <= 60 then
            if vv("FlatTireVehicle", "burstTire", v) then
                yX += 1
            end
        end
    end
    local yX_1 = yX > 0 and "Burst " .. yX .. " tires"
    local za = if yX_1 then 1 else 0
    local y8 = 4012 * za + 3663 * (1 - za)
    local y9 = 656 * za + 3703 * (1 - za)
    if not ((y8 * 452 + y9 * 1140 + y8 * y9) % 16777213 == 5193136) then
        yX_1 = "No tires nearby"
    end
    Library:Notify(yX_1)
end
local function fn750(X)
    if X then
        u4[#u4 + 1] = X
    end
    return X
end
local function fn787(bG)
    local xo_1
    if not bG then
        return nil
    end
    local Shirt_Graphic = bG:FindFirstChild("Shirt Graphic")
    local xm_2
    local xn = Shirt_Graphic and Shirt_Graphic:IsA("ShirtGraphic") and Shirt_Graphic.Graphic
    local xm_1 = xn or nil
    xo_1, xm_2 = nil, 0
    for k, v in vr do
        local xp = #v.Name
        local xp_3
        local xq = bG.Name == v.Name
        local xq_3
        if not xq then
            local xr = xp > 0 and bG.Name:sub(-xp) == v.Name
            xq = xr
        end
        local xp_1 = xq
        if v.Graphic then
            local xq_1 = not xp_1
            if xq_1 ~= false then
                xq_1 = xm_1 ~= v.Graphic
            end
            if not xq_1 then
                local xq_2 = 0
                if xp_1 then
                    xq_2 += 20
                end
                if xp_3 then
                    xq_2 += 10
                end
                for k, v in v.Accessories do
                    if bG:FindFirstChild(v) then
                        xq_2 += 1
                    end
                end
                if xq_3 > xm_2 then
                    xm_2 = xq_2
                    xo_1 = v.Name
                end
            end
        elseif not xm_1 then
            xq_3 = 0
            if xp_1 then
                xq_3 += 20
            end
            xp_3 = v.Graphic and xm_1 == v.Graphic
            if xp_3 then
                xq_3 += 10
            end
            for k, v in v.Accessories do
                if bG:FindFirstChild(v) then
                    xq_3 += 1
                end
            end
            if xq_3 > xm_2 then
                xm_2 = xq_3
                xo_1 = v.Name
            end
        end
    end
    if xm_2 <= 0 then
        local xm_3 = bG:HasTag("NPC") and bG:FindFirstChildOfClass("Humanoid")
        if xm_3 then
            return "Civilian"
        end
        return nil
    end
    return xo_1
end
local function fn789(ax)
    local wl = vf()
    if not (wl and ax) then
        return false
    end
    wl.CFrame = CFrame.new(ax + Vector3.new(0, 4, 0))
    wl.AssemblyLinearVelocity = Vector3.zero
    return true
end
local function fn793(b0, b1, ...)
    local xF = FlowClient[b0]
    local xF_1 = xF and xF[b1]
    if type(xF_1) ~= "function" then
        return false
    end
    return pcall(xF_1, ...)
end
local function fn817()
    uJ(uS, "Copied Discord invite to clipboard")
end
local function fn869()
    local Character = LocalPlayer.Character
    local wj = Character and Character:FindFirstChild("HumanoidRootPart")
    return wj
end
local function fn925(bh)
    local w__1
    local wZ_1
    local wY = u0(bh)
    if not wY then
        return 0
    end
    wZ_1, w__1 = pcall(Loot.GetItemPrice, wY)
    local wY_1 = wZ_1 and type(w__1) == "number"
    if wY_1 then
        return w__1
    end
    return 0
end
local function fn946()
    local Character = LocalPlayer.Character
    local wd = Character and Character:FindFirstChildOfClass("Humanoid")
    return wd
end
local function fn1064(aE, aF)
    local wt = Options[aE]
    local wu = wt and wt.Value
    local wt_1 = tonumber(wu)
    local wu_1 = wt_1 ~= wt_1
    local wv = type(wt_1) ~= "number" or wu_1
    if wv then
        return aF
    end
    return wt_1
end
local function fn1174()
    local xI = hookfunction ~= nil
    local xJ = hookmetamethod ~= nil
    local xK = getrawmetatable ~= nil
    local xL = setrawmetatable ~= nil
    local xM = getgc ~= nil
    local xN = getgenv ~= nil
    local xO = getreg ~= nil
    local xP = getconnections ~= nil
    local xQ = firesignal ~= nil
    local xR = getcallbackvalue ~= nil
    local xS = setclipboard ~= nil
    local xT = getcustomasset ~= nil
    local xU = getnamecallmethod ~= nil
    local xV = isexecutorclosure ~= nil
    local xW = fireproximityprompt ~= nil
    local xX = firetouchinterest ~= nil
    local xY = WebSocket ~= nil
    local xZ = readfile ~= nil
    local x_ = writefile ~= nil
    local x1 = (request or http_request) ~= nil
    local x3 = (debug and debug.getupvalues) ~= nil
    local x5 = (debug and debug.setupvalue) ~= nil
    local x6 = 0
    local x7 = { xI, xJ, xK, xL, xM, xN, xO, xP, xQ, xR, xS, xT, xU, xV, xW, xX, xY, xZ, x_, x1, x3, x5 }
    for k, v in x7 do
        if v then
            x6 += 1
        end
    end
    local xI_1 = x6 / #x7
    if xI_1 >= 0.9 then
        return vc("Full Support", uG)
    elseif xI_1 >= 0.6 then
        return vc("Half Support", vt)
    else
        return vc("Low Support", vk)
    end
end
local function fn1290(a7)
    if not a7 then
        return nil
    elseif a7:IsA("Tool") then
        local wS = a7:GetAttribute("BaseTool") or a7.Name
        return wS
    else
        return a7.Name
    end
end
LocalPlayer = nil
Library = nil
uG = nil
uH = nil
uJ = nil
uS = nil
uX = nil
u0 = nil
u4 = nil
Loot = nil
Options = nil
vc = nil
vf = nil
FlowClient = nil
vk = nil
local uA, uB, uC, uF, uI, uK, uL, uM, uN, uO, uP, uQ, uR, uT, uU, uV, uW, uY, uZ, u_, TeleportService, Tools, u3, u5, u6, u9, Data, vb, vd, Toggles, vg, SaveManager, UserInputService, vl, vm
local vn
vq = nil
vr = nil
vs = nil
vt = nil
vu = nil
vv = nil
vw = nil
local vo, vp, vx
local vz_4, vz_6
uA, vs, vo, UserInputService, vg, u9, u5, TeleportService, uV, uP, uL, uH, LocalPlayer, vu = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local vy = 1
repeat
    local vz_1 = (vy * 4 + 6) % 7 + 1
    if vz_1 <= 4 then
        if vz_1 <= 2 then
            if vz_1 <= 1 then
                local vA_1 = (vector.create((vy * 6 + 1) % 11 + 1, (vy * 2 + 5) % 13 + 1, (vy * 2 + 7) % 17 + 1))
                local vB_1 = (vector.create((vy * 6 + 4) % 11 + 1, (vy * 7 + 12) % 13 + 1, (vy * 4 + 16) % 17 + 1))
                local vC_1 = (vector.create((vy * 5 + 8) % 11 + 1, (vy * 9 + 6) % 13 + 1, (vy * 15 + 1) % 17 + 1))
                if vector.dot(vector.cross(vA_1, vB_1), vC_1) == vector.dot(vector.cross(vB_1, vC_1), vA_1) then
                    TeleportService = game:GetService("TeleportService")
                else
                    u5 = game:GetService("TeleportService")
                end
                vy = (vy + 23) % 56
            else
                local Mu = bit32.rrotate(bit32.bxor(bit32.lrotate(vy, 8), string.byte(tostring(u9))), 20)
                if bit32.bxor(bit32.lrotate(bit32.bxor(Mu, 1466581676), 28), 3312886826) == bit32.lrotate(Mu, 28) then
                    uV = game:GetService("CoreGui")
                    uP = game:GetService("Lighting")
                    uL = game:GetService("Workspace")
                    uH = game:GetService("CollectionService")
                else
                    uH = game:GetService("CoreGui")
                    uL = game:GetService("Lighting")
                    uV = game:GetService("Workspace")
                    uP = game:GetService("CollectionService")
                end
                vy = (vy + 30) % 56
            end
        elseif vz_1 <= 3 then
            if (vy * 2 + 6) * 4 % 3 == ((vy * 2 + 6) * 4 + 2) % 3 then
                vu = LocalPlayer.LocalPlayer
                uA = vu:WaitForChild("PlayerGui")
            else
                LocalPlayer = uA.LocalPlayer
                vu = LocalPlayer:WaitForChild("PlayerGui")
            end
            vy = (vy + 16) % 56
        else
            local vA_2 = (vector.create((vy * 6 + 8) % 11 + 1, (vy * 4 + 5) % 13 + 1, (vy * 6 + 10) % 17 + 1))
            local vB_2 = (vector.create((vy * 5 + 9) % 11 + 1, (vy * 1 + 6) % 13 + 1, (vy * 3 + 11) % 17 + 1))
            local vC_2 = (vector.create((vy * 7 + 4) % 11 + 1, (vy * 4 + 2) % 13 + 1, (vy * 8 + 2) % 17 + 1))
            local vD_1 = (vector.create((vy * 6 + 6) % 11 + 1, (vy * 10 + 2) % 13 + 1, (vy * 14 + 15) % 17 + 1))
            if vector.dot(vector.cross(vA_2, vB_2), (vector.cross(vC_2, vD_1))) == vector.dot(vA_2, vC_2) * vector.dot(vB_2, vD_1) - vector.dot(vA_2, vD_1) * vector.dot(vB_2, vC_2) + 4 then
                vo = game:GetService("Players")
            else
                uA = game:GetService("Players")
            end
            vy = (vy + 23) % 56
        end
    elseif vz_1 <= 6 then
        if vz_1 <= 5 then
            local vz_2 = (vector.create((vy * 4 + 2) % 11 + 1, (vy * 9 + 8) % 13 + 1, (vy * 5 + 6) % 17 + 1))
            local vA_3 = (vector.create((vy * 5 + 2) % 11 + 1, (vy * 10 + 6) % 13 + 1, (vy * 12 + 17) % 17 + 1))
            local vB_3 = (vector.create((vy * 4 + 8) % 11 + 1, (vy * 3 + 2) % 13 + 1, (vy * 10 + 14) % 17 + 1))
            local vC_3 = (vector.create((vy * 1 + 7) % 11 + 1, (vy * 6 + 4) % 13 + 1, (vy * 6 + 3) % 17 + 1))
            if vector.dot(vector.cross(vz_2, vA_3), (vector.cross(vB_3, vC_3))) == vector.dot(vz_2, vB_3) * vector.dot(vA_3, vC_3) - vector.dot(vz_2, vC_3) * vector.dot(vA_3, vB_3) + 4 then
                vo = game:GetService("ReplicatedStorage")
                vs = game:GetService("RunService")
            else
                vs = game:GetService("ReplicatedStorage")
                vo = game:GetService("RunService")
            end
            vy = (vy + 9) % 56
        else
            if vy * 124108341 + 10 + 7 >= vy * 124108341 + 10 + 7 + 2 then
                uA = game:GetService("UserInputService")
            else
                UserInputService = game:GetService("UserInputService")
            end
            vy = (vy + 23) % 56
        end
    else
        local vz_3 = {
            "iymn",
            "awmdrggupr",
            "qcxegyt",
            "ukbdlnhy",
            "hytbeojpld",
            "fwvnfdztm",
            "eznvk",
            "lqfmxx",
            "vrsyac"
        }
        local KC = vy
        local vA_4 = vz_3[KC % 9 + 1]
        if vA_4:len() >= vA_4:gsub("(.)", "%1%1", KC % 3 % 2 + 1):len() then
            u9 = game:GetService("VirtualUser")
            u5 = game:GetService("HttpService")
            vg = game:GetService("GuiService")
        else
            vg = game:GetService("VirtualUser")
            u9 = game:GetService("HttpService")
            u5 = game:GetService("GuiService")
        end
        vy = (vy + 44) % 56
    end
until (vy * 25 + 6) % 56 == 31
if getgenv then
    vn, vz_4 = nil, nil
    local vy_1 = 0
    repeat
        if (vy_1 * 1 + 0) % 2 + 1 <= 1 then
            local vA_6 = {
                "dff",
                "jyqscathxg",
                "zedvdnj",
                "zbnroltoi",
                "qjnph",
                "aoik",
                "mqbvgz",
                "ljuuxrthrb",
                "ntfz",
                "giduoro",
                "qzd"
            }
            local Ka = vy_1
            local vB_4 = vA_6[Ka % 11 + 1]
            if vB_4:len() >= vB_4:reverse():rep(Ka % 3 + 2):len() then
                getgenv().gethui = fn187
                vz_4 = getgenv().__OuroborosRunawaysLib
            else
                getgenv().gethui = fn187
                vn = getgenv().__OuroborosRunawaysLib
            end
            vy_1 = (vy_1 + 1) % 8
        else
            local Ko = bit32.rrotate(bit32.bxor(bit32.lrotate(vy_1, 29), string.byte(tostring(vn))), 20)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Ko, 694184425), 569488076), (bit32.bxor(bit32.band(Ko, 3600782870), 1813545814))), 569488076), 1813545814) == Ko then
                vz_4 = vn
            else
                vn = vz_4
            end
            vy_1 = (vy_1 + 1) % 8
        end
    until (vy_1 * 3 + 7) % 8 == 5
    if vz_4 then
        vz_4 = vn.Unload
    end
    if vz_4 then
        pcall(function()
            vn:Unload()
        end)
    end
end
pcall(function()
    gethui = function()
        return vu
    end
end)
if setthreadidentity then
    setthreadidentity(8)
end
uZ, uS, uO, uI, uG, uB, vt, vp, vk, FlowClient, Data, Loot, Tools, uX, uR, Library, SaveManager, Toggles, Options = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
uZ = "Runaways"
uS = "https://discord.gg/ehKVq7pf7v"
uO = "https://rscripts.net/@Ouroboros"
uI = "https://ouroboros-hub-rbx.web.app/"
uG = "#7fd47f"
uB = "#6ec1ff"
vt = "#e8a34d"
vp = "#8b93a3"
vk = "#e05a5a"
FlowClient = require(vs:WaitForChild("FlowClient"))
Data = require(vs:WaitForChild("Data"))
Loot = Data.Loot
Tools = Data.Tools
uX = {
    Gun = true,
    Melee = true,
    Consumable = true,
    Repair = true,
    RPG7 = true,
    GrenadeLauncher = true,
    Flamethrower = true,
    Molotov = true,
    Grenade = true,
    C4 = true,
    Minigun = true,
    Armor = true,
    Backpack = true
}
uR = { ATM = true, CashRegister = true, Safe = true, Dumpster = true }
local vA_7 = {
    "Ammo",
    "Armor",
    "Backpack",
    "BigElectronic",
    "Cash",
    "Craftable",
    "Electronic",
    "Food",
    "Household",
    "Junk",
    "Medical",
    "Painting",
    "Tool",
    "Valuable",
    "VehiclePart",
    "Weapon"
}
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
pcall(fn92)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
if getgenv then
    getgenv().__OuroborosRunawaysLib = Library
end
u4, vw, vr, uT, u_, uJ, vq, vc, uY, vx, vf, uU, uC, vm, uN, u6, uM, u0, uK, vb, vd, vv = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
u4 = {}
u_ = fn750
uJ = fn211
vq = fn817
vc = fn284
uY = fn54
vx = fn946
vf = fn869
uU = fn789
uC = fn291
vm = fn1064
uN = fn259
u6 = fn261
uM = function(aY)
    local wQ_1
    local wP_1
    if not aY then
        return nil
    end
    wP_1, wQ_1 = pcall(function()
        local wM = (Tools.GetToolConfig(aY.Name))
        if not wM then
            local wN = aY:GetAttribute("BaseTool") and Tools.GetToolConfig(aY:GetAttribute("BaseTool"))
            wM = wN
        end
        return wM
    end)
    if wP_1 then
        return wQ_1
    end
    return nil
end
u0 = fn1290
uK = fn154
vb = fn925
vw = {}
vr = {}
fn197()
vd = fn787
vv = fn793
local Window = Library:CreateWindow({
    Title = "[Beta]Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = uS, Copyable = true }, "|", uZ },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
uT = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "banknote"),
    Shop = Window:AddTab("Shop", "shopping-bag"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in uT do
    if k ~= "Info" then
        fn335(v)
    end
end
vl, vz_6 = nil, nil
local vy_2 = 11
repeat
    local vC_5 = (vy_2 * 2 + 0) % 3 + 1
    if vC_5 <= 2 then
        if vC_5 <= 1 then
            local Ld = bit32.rrotate(bit32.bxor(bit32.lrotate(vy_2, 23), string.byte(tostring(vz_6))), 26)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Ld, 1511223323), 3834717063), (bit32.bxor(bit32.band(Ld, 2783743972), 1344173489))), 3834717063), 1344173489) == Ld then
                vz_6()
            else
                vz_6()
            end
            vy_2 = (vy_2 + 11) % 24
        else
            local vC_6 = {
                "ylohsj",
                "npqkiwlpodhj",
                "ihtupldcgcw",
                "eehtzju",
                "amkjhxgj",
                "qhuykgypwqxc",
                "csidyznmp",
                "sixsfcdhfghc",
                "wrewkhx",
                "occajknaa"
            }
            if vC_6[(vy_2 * 1 + 109) % 10 + 1] < vC_6[(vy_2 * 1 + 109) % 10 + 1] then
                vz_6 = fn1174
            else
                vl = fn1174
            end
            vy_2 = (vy_2 + 17) % 24
        end
    else
        local Mt = bit32.rrotate(bit32.bxor(bit32.lrotate(vy_2, 24), string.byte(tostring(vz_6))), 14)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Mt, 1013150389), 2220998520), (bit32.bxor(bit32.band(Mt, 3281816906), 3234756936))), 2220998520), 3234756936) ~= Mt then
            vl = function()
                local yB
                local yE
                yB = nil
                yE = nil
                local yz, yA, Label, Label2, Label3
                yB = "Unknown"
                pcall(function()
                    local yj_2
                    local yi_3
                    if identifyexecutor then
                        yj_2, yi_3 = identifyexecutor()
                        local yk = yj_2 ~= ""
                        local yl = type(yj_2) == "string" and yk
                        if yl then
                            local yk_2 = type(yi_3) == "string" and yi_3 ~= "" and yj_2 .. " " .. yi_3
                            yB = yk_2 or yj_2
                        end
                    end
                end)
                local yG = vl()
                yE = os.clock()
                yA = function()
                    local yq = math.floor(os.clock() - yE)
                    if yq < 60 then
                        return yq .. "s"
                    elseif yq < 3600 then
                        return string.format("%dm %ds", yq // 60, yq % 60)
                    else
                        return string.format("%dh %dm", yq // 3600, yq % 3600 // 60)
                    end
                end
                local UserGroup = uT.Info:AddLeftGroupbox("User", "circle-user")
                UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
                UserGroup:AddLabel(uY("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, uG), true)
                UserGroup:AddLabel(uY("UserId", tostring(LocalPlayer.UserId), uB), true)
                UserGroup:AddLabel(uY("Executor", yB .. "  " .. yG, uG), true)
                UserGroup:AddDivider()
                Label3 = UserGroup:AddLabel(uY("Session", yA(), vt), true)
                UserGroup:AddDivider()
                UserGroup:AddButton({
                    Text = "Copy Username",
                    Func = function()
                        uJ(LocalPlayer.Name, "Copied username")
                    end
                })
                UserGroup:AddButton({
                    Text = "Copy Profile Link",
                    Func = function()
                        uJ("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
                    end
                })
                local SessionGroup = uT.Info:AddRightGroupbox("Session", "signal")
                SessionGroup:AddDivider("Server")
                SessionGroup:AddLabel(uY("Game", uZ, uB), true)
                Label2 = SessionGroup:AddLabel(uY("Players", "0/0", uG), true)
                yz = tostring(game.JobId)
                local yH_3 = #yz > 18 and string.sub(yz, 1, 18) .. "..."
                local yH_4 = yH_3 or yz
                SessionGroup:AddLabel(uY("Job", yH_4, vp), true)
                Label = SessionGroup:AddLabel(uY("Ping", "0 ms", vt), true)
                SessionGroup:AddDivider()
                SessionGroup:AddButton({
                    Text = "Rejoin Server",
                    Func = function()
                        TeleportService:Teleport(game.PlaceId, LocalPlayer)
                    end
                })
                SessionGroup:AddButton({
                    Text = "Copy Job ID",
                    Func = function()
                        uJ(yz, "Copied Job ID")
                    end
                })
                task.spawn(function()
                    local yw_2
                    local yv_3
                    while true do
                        task.wait(1)
                        if Library.Unloaded then
                            break
                        end
                        Label3:SetText(uY("Session", yA(), vt))
                        Label2:SetText(uY("Players", #uA:GetPlayers() .. "/" .. tostring(uA.MaxPlayers), uG))
                        yv_3, yw_2 = pcall(function()
                            return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                        end)
                        local yv_4 = yv_3 and yw_2 .. " ms" or "n/a"
                        Label:SetText(uY("Ping", yv_4, vt))
                    end
                end)
                local SocialsGroup = uT.Info:AddRightGroupbox("Socials", "link")
                SocialsGroup:AddButton({ Text = "Discord", Func = vq })
                SocialsGroup:AddButton({
                    Text = "Rscripts",
                    Func = function()
                        uJ(uO, "Copied Rscripts profile to clipboard")
                    end
                })
                SocialsGroup:AddButton({
                    Text = "Website",
                    Func = function()
                        uJ(uI, "Copied website link")
                    end
                })
            end
        else
            vz_6 = function()
                local yB
                local yE
                yB = nil
                yE = nil
                local yz, yA, Label, Label2, Label3
                yB = "Unknown"
                pcall(function()
                    local yj_1
                    local yi_1
                    if identifyexecutor then
                        yj_1, yi_1 = identifyexecutor()
                        local yk = yj_1 ~= ""
                        local yl = type(yj_1) == "string" and yk
                        if yl then
                            local yk_1 = type(yi_1) == "string" and yi_1 ~= "" and yj_1 .. " " .. yi_1
                            yB = yk_1 or yj_1
                        end
                    end
                end)
                local yG = vl()
                yE = os.clock()
                yA = function()
                    local yq = math.floor(os.clock() - yE)
                    if yq < 60 then
                        return yq .. "s"
                    elseif yq < 3600 then
                        return string.format("%dm %ds", yq // 60, yq % 60)
                    else
                        return string.format("%dh %dm", yq // 3600, yq % 3600 // 60)
                    end
                end
                local UserGroup = uT.Info:AddLeftGroupbox("User", "circle-user")
                UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
                UserGroup:AddLabel(uY("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, uG), true)
                UserGroup:AddLabel(uY("UserId", tostring(LocalPlayer.UserId), uB), true)
                UserGroup:AddLabel(uY("Executor", yB .. "  " .. yG, uG), true)
                UserGroup:AddDivider()
                Label3 = UserGroup:AddLabel(uY("Session", yA(), vt), true)
                UserGroup:AddDivider()
                UserGroup:AddButton({
                    Text = "Copy Username",
                    Func = function()
                        uJ(LocalPlayer.Name, "Copied username")
                    end
                })
                UserGroup:AddButton({
                    Text = "Copy Profile Link",
                    Func = function()
                        uJ("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
                    end
                })
                local SessionGroup = uT.Info:AddRightGroupbox("Session", "signal")
                SessionGroup:AddDivider("Server")
                SessionGroup:AddLabel(uY("Game", uZ, uB), true)
                Label2 = SessionGroup:AddLabel(uY("Players", "0/0", uG), true)
                yz = tostring(game.JobId)
                local yH_1 = #yz > 18 and string.sub(yz, 1, 18) .. "..."
                local yH_2 = yH_1 or yz
                SessionGroup:AddLabel(uY("Job", yH_2, vp), true)
                Label = SessionGroup:AddLabel(uY("Ping", "0 ms", vt), true)
                SessionGroup:AddDivider()
                SessionGroup:AddButton({
                    Text = "Rejoin Server",
                    Func = function()
                        TeleportService:Teleport(game.PlaceId, LocalPlayer)
                    end
                })
                SessionGroup:AddButton({
                    Text = "Copy Job ID",
                    Func = function()
                        uJ(yz, "Copied Job ID")
                    end
                })
                task.spawn(function()
                    local yw_1
                    local yv_1
                    while true do
                        task.wait(1)
                        if Library.Unloaded then
                            break
                        end
                        Label3:SetText(uY("Session", yA(), vt))
                        Label2:SetText(uY("Players", #uA:GetPlayers() .. "/" .. tostring(uA.MaxPlayers), uG))
                        yv_1, yw_1 = pcall(function()
                            return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                        end)
                        local yv_2 = yv_1 and yw_1 .. " ms" or "n/a"
                        Label:SetText(uY("Ping", yv_2, vt))
                    end
                end)
                local SocialsGroup = uT.Info:AddRightGroupbox("Socials", "link")
                SocialsGroup:AddButton({ Text = "Discord", Func = vq })
                SocialsGroup:AddButton({
                    Text = "Rscripts",
                    Func = function()
                        uJ(uO, "Copied Rscripts profile to clipboard")
                    end
                })
                SocialsGroup:AddButton({
                    Text = "Website",
                    Func = function()
                        uJ(uI, "Copied website link")
                    end
                })
            end
        end
        vy_2 = (vy_2 + 14) % 24
    end
until (vy_2 * 11 + 23) % 24 == 6
if #vw == 0 then
    local vy_3 = 2
    repeat
        local Kb = bit32.rrotate(bit32.bxor(bit32.lrotate(vy_3, 11), string.byte(tostring(vy_3))), 25)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Kb, 447474897), 3625441010), (bit32.bxor(bit32.band(Kb, 3847492398), 16818464))), 3625441010), 16818464) == Kb then
            vw = { "Police", "PawnShop", "GasStation", "Bank", "GunShop" }
        else
            vw = { "Police", "GasStation", "PawnShop", "Bank", "GunShop" }
        end
        vy_3 = (vy_3 + 1) % 4
    until (vy_3 * 3 + 2) % 4 == 3
end
local vz_7 = false
for k, v in vw do
    if v == "Civilian" then
        vz_7 = true
        break
    end
end
if not vz_7 then
    local vy_4 = 1
    repeat
        if vy_4 * 102451985 + 9 + 7 <= vy_4 * 102451985 + 9 + 7 + 5 then
            vw[#vw + 1] = "Civilian"
            table.sort(vw)
        else
            vw[#vw + 1] = "Civilian"
            table.sort(vw)
        end
        vy_4 = (vy_4 + 5) % 8
    until (vy_4 * 5 + 2) % 8 == 0
end
uW, uQ, u3, uF = nil, nil, nil, nil
local MoneyGroup = uT.Main:AddLeftGroupbox("Money", "circle-dollar-sign")
MoneyGroup:AddToggle("AutoCollectCash", { Text = "Auto Collect Cash", Default = false })
MoneyGroup:AddToggle("AutoCrackContainers", { Text = "Auto Crack Containers", Default = false })
MoneyGroup:AddToggle("AutoSellPawn", { Text = "Auto Sell At Pawn Shop", Default = false })
MoneyGroup:AddButton({
    Text = "Shatter All Glass",
    Func = function()
        local yK = 0
        for k, v in uH:GetTagged("Glass") do
            local yS = v
            if yS and yS.Parent then
                pcall(function()
                    yS.CanCollide = false
                end)
                local yV = if vv("Effects", "BreakGlass", yS) then 1 else 0
                if yV == 1 then
                    yK += 1
                end
            end
        end
        local yK_1 = yK > 0 and "Shattered " .. yK .. " glass" or "No glass nearby"
        Library:Notify(yK_1)
    end
})
local SurvivalGroup = uT.Main:AddRightGroupbox("Survival", "heart")
SurvivalGroup:AddToggle("AutoEatFood", { Text = "Auto Eat Food", Default = false })
SurvivalGroup:AddInput("EatBelowHp", {
    Text = "Eat Below HP Percent",
    Default = "60",
    Numeric = true,
    Finished = false,
    Placeholder = "60"
})
SurvivalGroup:AddToggle("AutoRepairVehicle", { Text = "Auto Repair Vehicle", Default = false })
SurvivalGroup:AddInput("RepairBelowHealth", {
    Text = "Repair Below Health",
    Default = "200",
    Numeric = true,
    Finished = false,
    Placeholder = "200"
})
local CrimeGroup = uT.Main:AddRightGroupbox("Crime", "swords")
CrimeGroup:AddToggle("KillAura", { Text = "Kill Aura", Default = false })
CrimeGroup:AddDropdown("TargetNpcs", {
    Text = "Target NPCs",
    Values = vw,
    Multi = true,
    Searchable = true,
    AllowNull = true,
    Default = vw
})
CrimeGroup:AddInput("KillAuraDamage", {
    Text = "Damage Per Hit",
    Default = "5000",
    Numeric = true,
    Finished = false,
    Placeholder = "5000"
})
CrimeGroup:AddToggle("InfiniteAmmo", { Text = "Infinite Ammo", Default = false })
CrimeGroup:AddToggle("DespawnPoliceHeli", { Text = "Despawn Police Helicopter", Default = false })
CrimeGroup:AddButton({ Text = "Burst Nearby Tires", Func = onBurstNearbyTires })
CrimeGroup:AddDivider("Loot")
CrimeGroup:AddToggle("AutoStealLoot", { Text = "Auto Steal Loot", Default = false })
CrimeGroup:AddDropdown("LootCategories", {
    Text = "Loot Categories",
    Values = vA_7,
    Multi = true,
    Searchable = true,
    AllowNull = true,
    Default = {}
})
CrimeGroup:AddInput("MinPawnValue", {
    Text = "Minimum Pawn Value To Steal",
    Default = "",
    Numeric = true,
    Finished = false,
    Placeholder = "Any"
})
local function vN()
    local function dP(dQ)
        local Character = LocalPlayer.Character
        local Backpack = LocalPlayer:FindFirstChild("Backpack")
        if Character then
            for i, child in Character:GetChildren() do
                if child:IsA("Tool") then
                    dQ(child)
                end
            end
        end
        if Backpack then
            for i, child in Backpack:GetChildren() do
                if child:IsA("Tool") then
                    dQ(child)
                end
            end
        end
    end
    local function dZ(d_)
        local d0
        d0 = nil
        dP(function(d2)
            local zq = not d0 and d2:HasTag(d_)
            if zq then
                d0 = d2
            end
        end)
        return d0
    end
    local function d6(d7)
        local zv = vx()
        if zv and d7 and d7.Parent then
            pcall(function()
                zv:EquipTool(d7)
            end)
        end
    end
    local function ee(ef)
        local zB = vf()
        local zC = zB and ef and ef:IsA("BasePart")
        if not zC then
            return false
        elseif firetouchinterest then
            pcall(firetouchinterest, zB, ef, 0)
            pcall(firetouchinterest, ef, zB, 0)
            task.delay(0.2, function()
                pcall(firetouchinterest, zB, ef, 1)
                pcall(firetouchinterest, ef, zB, 1)
            end)
            return true
        else
            zB.CFrame = ef.CFrame + Vector3.new(0, 3, 0)
            zB.AssemblyLinearVelocity = Vector3.zero
            return true
        end
    end
    local function em()
        for k, v in uH:GetTagged("PawnCounter") do
            if v:IsDescendantOf(uL) then
                return v
            end
        end
        return nil
    end
    local function et()
        local zO = em()
        local zP = zO and zO:FindFirstChild("Volume")
        local zO_1 = zP
        if zP then
            zP = zO_1:IsA("BasePart")
        end
        if zP then
            return zO_1
        end
        return nil
    end
    local function ez(eA)
        local zU = eA or em()
        eA = zU
        if not eA then
            return nil
        end
        local CallBell = eA:FindFirstChild("CallBell")
        if CallBell then
            local ProximityPrompt = CallBell:FindFirstChildWhichIsA("ProximityPrompt", true)
            if ProximityPrompt then
                return ProximityPrompt, CallBell
            end
            for i, descendant in eA:GetDescendants() do
                if descendant:IsA("ProximityPrompt") then
                    local lower = string.lower
                    local zV_2 = descendant.ActionText or ""
                    local zW_1 = lower(zV_2)
                    if string.find(zW_1, "sell", 1, true) then
                        return descendant, descendant.Parent
                    end
                end
            end
            return nil
        end
        for i, descendant in eA:GetDescendants() do
            if descendant:IsA("ProximityPrompt") then
                local lower = string.lower
                local zV_3 = descendant.ActionText or ""
                local zW_2 = lower(zV_3)
                if string.find(zW_2, "sell", 1, true) then
                    return descendant, descendant.Parent
                end
            end
        end
        return nil
    end
    local function eI(eJ)
        local z3 = et()
        if not (z3 and eJ and eJ.Parent) then
            return false
        end
        local Position = eJ:GetPivot().Position
        local z5 = z3.CFrame:PointToObjectSpace(Position)
        local z4_2 = z3.Size * 0.5
        local z3_1 = math.abs(z5.X) <= z4_2.X + 1.25 and math.abs(z5.Y) <= z4_2.Y + 1.25 and math.abs(z5.Z) <= z4_2.Z + 1.25
        return z3_1
    end
    local function eR(eS)
        if u6(eS) then
            return false
        end
        local Aa = vb(eS) > 0 or uK(eS) ~= nil
        return Aa
    end
    local function e_(e0)
        if e0:HasTag("BuyableLoot") then
            return false
        end
        local Ac = uN("LootCategories")
        local Ad = false
        local Ad_3
        for k in Ac do
            Ad = true
            break
        end
        if Ad then
            local Ad_1 = uK(e0)
            if not Ad_1 or not Ac[Ad_1] then
                return false
            end
            local Ac_1 = vm("MinPawnValue", 0)
            local Ad_2 = Ac_1 > 0 and vb(e0) < Ac_1
            if Ad_3 then
                return false
            end
            return true
        end
        local Ac_2 = vm("MinPawnValue", 0)
        Ad_3 = Ac_2 > 0 and vb(e0) < Ac_2
        if Ad_3 then
            return false
        end
        return true
    end
    local fe = {}
    local function ff(fg)
        local Ak = vf()
        if not Ak then
            return false
        end
        if (Ak.Position - fg).Magnitude > 10 then
            Ak.CFrame = CFrame.new(fg + Vector3.new(0, 3, 0))
            Ak.AssemblyLinearVelocity = Vector3.zero
            task.wait(0.15)
        end
        return true
    end
    local function fj()
        local Am = vf()
        if not Am then
            return
        end
        local An = {}
        for k, v in uH:GetTagged("Cash") do
            local Parent = v.Parent
            if Parent then
                local Position = Parent:GetPivot().Position
                An[#An + 1] = { inst = v, model = Parent, pos = Position, dist = (Position - Am.Position).Magnitude }
            end
        end
        table.sort(An, function(fs, ft)
            return fs.dist < ft.dist
        end)
        for k, v in An do
            if Library.Unloaded or not Toggles.AutoCollectCash.Value then
                return
            end
            if v.inst.Parent then
                if not ff(v.pos) then
                    return
                end
                local TouchSensor = v.model:FindFirstChild("TouchSensor")
                local An_1 = TouchSensor and TouchSensor:IsA("BasePart")
                if An_1 then
                    ee(TouchSensor)
                end
                vv("Cash", "Collect", v.inst)
            end
        end
    end
    local function fH()
        for k, v in uH:GetTagged("DamageToOpen") do
            local AD = v and v.Parent and not v:HasTag("PunchingBag")
            if AD then
                if uR[v.Name] then
                    vv("DamageToOpen", "Damage", v, 99999, "melee")
                end
            end
        end
    end
    local function fP(fQ)
        local AM = not fQ or not fQ.Parent
        local AQ = if AM then 1 else 0
        local AO = 3454 * AQ + 1583 * (1 - AQ)
        local AP = 239 * AQ + 295 * (1 - AQ)
        if not ((AO * 2707 + AP * 2903 + AO * AP) % 16777213 == 10869301) then
            AM = fQ:HasTag("Undroppable")
        end
        if AM then
            return false
        end
        local AL = vx()
        if AL and fQ.Parent == LocalPlayer.Character then
            pcall(function()
                AL:UnequipTools()
            end)
        end
        return pcall(function()
            FlowClient.Loot.LootUnequip(fQ, fQ:HasTag("RemoteOnly"))
        end)
    end
    local function f0(f1, f2)
        if not (f1 and f1.Parent and f2) then
            return false
        end
        pcall(function()
            f1:PivotTo(f2.CFrame)
        end)
        local AV_1 = f1.PrimaryPart or f1:FindFirstChildWhichIsA("BasePart", true)
        local AU = AV_1
        if not AU then
            return false
        end
        AU.AssemblyLinearVelocity = Vector3.zero
        AU.AssemblyAngularVelocity = Vector3.zero
        if firetouchinterest then
            pcall(firetouchinterest, AU, f2, 0)
            pcall(firetouchinterest, f2, AU, 0)
            task.delay(0.2, function()
                pcall(firetouchinterest, AU, f2, 1)
                pcall(firetouchinterest, f2, AU, 1)
            end)
        end
        return true
    end
    local function ga(gb, gc)
        local A1_1
        local A0_1
        A1_1, A0_1 = nil, nil
        for k, v in uH:GetTagged("Draggable") do
            local A2 = v.Name == gb and v:IsDescendantOf(uL) and not v:IsA("Tool")
            if A2 then
                local A3_1 = LocalPlayer.Character and v:IsDescendantOf(LocalPlayer.Character)
                A2 = not A3_1
            end
            if A2 then
                local Magnitude = (v:GetPivot().Position - gc.Position).Magnitude
                if not A1_1 or Magnitude < A0_1 then
                    A1_1 = v
                    A0_1 = Magnitude
                end
            end
        end
        return A1_1
    end
    local function gp(gq, gr)
        local Bb = gq and gq:IsA("ProximityPrompt") and gq.Enabled
        if not Bb then
            return false
        end
        local Bb_1 = vf()
        local Bc = gr and gr:IsA("BasePart")
        local Bc_1 = Bc and gr
        if not Bc_1 then
            local Bd_1 = gr and gr:FindFirstChildWhichIsA("BasePart", true)
            Bc_1 = Bd_1
        end
        if not Bc_1 then
            Bc_1 = gq.Parent
        end
        local Bd_2 = Bb_1
        local Be = Bc_1
        if Bd_2 then
            Bd_2 = Be
        end
        if Bd_2 then
            Bd_2 = Be:IsA("BasePart")
        end
        if Bd_2 then
            if (Bb_1.Position - Be.Position).Magnitude > 8 then
                Bb_1.CFrame = CFrame.new(Be.Position + Vector3.new(0, 3, 0))
                Bb_1.AssemblyLinearVelocity = Vector3.zero
                task.wait(0.1)
            end
        end
        if not fireproximityprompt then
            return false
        end
        if not pcall(fireproximityprompt, gq) then
            pcall(fireproximityprompt, gq, gq.HoldDuration)
        end
        return true
    end
    local function gA()
        local Bl
        local Bp_1
        local Bm = em()
        if not Bm then
            return
        end
        local Volume = Bm:FindFirstChild("Volume")
        local Bo = Volume and Volume:IsA("BasePart")
        local Bo_1
        if not Bo then
            return
        end
        Bp_1, Bo_1 = ez(Bm)
        Bl = nil
        dP(function(gK)
            local Bg = not Bl and eR(gK)
            if Bg then
                Bl = gK
            end
        end)
        if Bl then
            local Bq = vf()
            if not Bq then
                return
            end
            if (Bq.Position - Volume.Position).Magnitude > 8 then
                Bq.CFrame = CFrame.new(Volume.Position + Vector3.new(0, 4, 0))
                Bq.AssemblyLinearVelocity = Vector3.zero
                task.wait(0.12)
            end
            local Name = Bl.Name
            d6(Bl)
            task.wait(0.15)
            if not Bl.Parent then
                return
            end
            fP(Bl)
            local Br = Bl
            local Bz = 1
            while Bz <= 12 do
                local Bs = Br.Parent and Br:IsDescendantOf(uL) and not Br:IsA("Tool")
                if Bs then
                    break
                end
                local Bs_1 = ga(Name, Volume)
                if Bs_1 then
                    Br = Bs_1
                    break
                end
                task.wait(0.05)
                Bz += 1
            end
            if Br.Parent then
                f0(Br, Volume)
            end
            task.wait(0.2)
            Bp_1, Bo_1 = ez(Bm)
        end
        gp(Bp_1, Bo_1)
    end
    local function g1()
        local BG
        local BH = vx()
        if not BH or BH.MaxHealth <= 0 then
            return
        end
        local BI_1 = BH.Health / BH.MaxHealth * 100
        if BI_1 > vm("EatBelowHp", 60) then
            return
        end
        BG = nil
        dP(function(g9)
            if BG then
                return
            end
            if not g9:HasTag("Consumable") then
                return
            end
            local BC = uK(g9)
            if BC == "Food" or BC == "Medical" then
                BG = g9
            end
        end)
        if not BG then
            return
        end
        d6(BG)
        vv("Consumables", "Consume", BG)
    end
    local function hg()
        local BK = vm("RepairBelowHealth", 200)
        local BL
        for k, v in uH:GetTagged("MainVehicle") do
            local vehicleHealth = v:FindFirstChild("vehicleHealth")
            local BN = vehicleHealth and vehicleHealth:IsA("NumberValue") and vehicleHealth.Value < BK
            if BN then
                BL = v
                break
            end
        end
        if not BL then
            return
        end
        local BK_1 = dZ("Repair")
        if not BK_1 then
            return
        end
        d6(BK_1)
        vv("Repair", "RepairVehicle", BK_1)
    end
    local function ht()
        local BY = uN("TargetNpcs")
        local BZ = vm("KillAuraDamage", 5000)
        for k, v in uH:GetTagged("NPC") do
            if not not v:IsDescendantOf(uL) then
                local B_ = vd(v)
                if not (not B_ or not BY[B_]) then
                    local B__1 = v:FindFirstChildOfClass("Humanoid")
                    if B__1 and B__1.Health > 1 then
                        vv("NPCs", "Damage", B__1, BZ)
                    end
                end
            end
        end
    end
    local function hJ()
        dP(function(hL)
            local B8
            local B9 = (hL:HasTag("Gun"))
            local Ce = if B9 then 1 else 0
            local Cc = 2925 * Ce + 3884 * (1 - Ce)
            local Cd = 3944 * Ce + 196 * (1 - Ce)
            if not ((Cc * 1471 + Cd * 272 + Cc * Cd) % 16777213 == 134430) then
                B9 = hL:HasTag("Minigun")
            end
            if B9 then
                local B9_1 = uM(hL)
                B8 = B9_1 and B9_1.magCapacity or 999
                vv("Ammo", "setAmmo", hL, B8)
                pcall(function()
                    hL:SetAttribute("Ammo", B8)
                end)
            end
        end)
    end
    local function worker()
        pcall(function()
            if FlowClient.PoliceHeli then
                if FlowClient.PoliceHeli.Despawn_event then
                    FlowClient.PoliceHeli.Despawn_event()
                end
                if FlowClient.PoliceHeli.Despawn then
                    FlowClient.PoliceHeli.Despawn()
                end
            end
        end)
        local Helicopter2 = uL:FindFirstChild("Helicopter")
        if not Helicopter2 then
            local Assets = vs:FindFirstChild("Assets")
            local Helicopter = uL:FindFirstChild("Helicopter", true)
            if Assets and Helicopter and Helicopter.Parent == uL then
                Helicopter.Parent = Assets
            end
        elseif Helicopter2.Parent == uL then
            local Assets = vs:FindFirstChild("Assets")
            if Assets then
                Helicopter2.Parent = Assets
            end
        end
    end
    local function h6(h7)
        if h7:IsA("Tool") then
            return true
        end
        for i, player in uA:GetPlayers() do
            local Character = player.Character
            local Co = Character and h7:IsDescendantOf(Character)
            if Co then
                return true
            end
            local Backpack = player:FindFirstChild("Backpack")
            local Co_1 = Backpack and h7:IsDescendantOf(Backpack)
            if Co_1 then
                return true
            end
        end
        return false
    end
    local function ih()
        local Cw
        local CA_1
        local Cz_1
        local Cx = vf()
        local Cx_2
        if not Cx then
            return
        end
        local Cy = os.clock()
        local Cy_1
        CA_1, Cz_1, Cw = nil, nil, nil
        for k, v in uH:GetTagged("Draggable") do
            local CB_1 = v and v.Parent and v:IsDescendantOf(uL) and not h6(v) and not eI(v) and v:HasTag("Equippable") and not v:HasTag("BuyableLoot")
            if CB_1 then
                local CB_2 = fe[v]
                local CC = not CB_2 or CB_2 <= Cy
                local CB_3 = CC and e_(v)
                if CB_3 then
                    local CB_4 = v.PrimaryPart or v:FindFirstChildWhichIsA("BasePart", true)
                    if CB_4 then
                        local Magnitude = (CB_4.Position - Cx.Position).Magnitude
                        if not CA_1 or Magnitude < Cz_1 then
                            CA_1 = v
                            Cz_1 = Magnitude
                            Cw = CB_4
                        end
                    end
                end
            end
        end
        if not (CA_1 and Cw) then
            return
        end
        if not ff(Cw.Position) then
            return
        end
        pcall(function()
            FlowClient.Loot.OwnNetworkRequestAsync(Cw, true)
        end)
        Cx_2, Cy_1 = pcall(function()
            return FlowClient.Loot.LootEquip(Cw)
        end)
        if Cx_2 and Cy_1 == "Success" then
            fe[CA_1] = os.clock() + 8
            local Cx_3 = CA_1:HasTag("ForbiddenLoot") or CA_1:HasTag("ShopliftingLoot") or CA_1:HasTag("GrandTheftLoot")
            if Cx_3 then
                vv("StealingTracker", "PickedUpObject", CA_1)
            end
            return
        end
        fe[CA_1] = os.clock() + 3
    end
    pcall(function()
        local Spawn
        local PoliceHeli = FlowClient.PoliceHeli
        local CT = type(PoliceHeli) == "table" and type(PoliceHeli.Spawn) == "function" and not PoliceHeli._ouroHooked
        if CT then
            Spawn = PoliceHeli.Spawn
            PoliceHeli.Spawn = function(...)
                local CO = Spawn(...)
                if Toggles.DespawnPoliceHeli and Toggles.DespawnPoliceHeli.Value then
                    task.defer(worker)
                end
                return CO
            end
            PoliceHeli._ouroHooked = true
        end
    end)
    u_(uH:GetInstanceAddedSignal("Cash"):Connect(function(i0)
        if Library.Unloaded then
            return
        end
        if Toggles.AutoCollectCash and Toggles.AutoCollectCash.Value then
            vv("Cash", "Collect", i0)
        end
    end))
    task.spawn(function()
        while not Library.Unloaded do
            if Toggles.AutoCollectCash.Value then
                pcall(fj)
            end
            if Toggles.AutoCrackContainers.Value then
                pcall(fH)
            end
            task.wait(0.25)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            if Toggles.AutoSellPawn.Value then
                pcall(gA)
            end
            task.wait(0.45)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            if Toggles.AutoEatFood.Value then
                pcall(g1)
            end
            if Toggles.AutoRepairVehicle.Value then
                pcall(hg)
            end
            task.wait(0.4)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            if Toggles.KillAura.Value then
                pcall(ht)
            end
            if Toggles.InfiniteAmmo.Value then
                pcall(hJ)
            end
            if Toggles.DespawnPoliceHeli.Value then
                pcall(worker)
            end
            task.wait(0.12)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            if Toggles.AutoStealLoot.Value then
                pcall(ih)
            end
            task.wait(0.35)
        end
    end)
end
vN()
local function vE()
    local ED
    local EF
    local EK
    local EE
    local folder
    local EH
    ED = nil
    EE = nil
    EF = nil
    EH = nil
    folder = nil
    EK = nil
    local EB, EC, EG, EI, EL, EM
    local OverlaysGroup = uT.Player:AddRightGroupbox("Overlays", "eye")
    OverlaysGroup:AddToggle("NpcESP", { Text = "NPC ESP", Default = false })
    OverlaysGroup:AddToggle("CashESP", { Text = "Cash ESP", Default = false })
    OverlaysGroup:AddToggle("ContainerESP", { Text = "Container ESP", Default = false })
    OverlaysGroup:AddToggle("LootESP", { Text = "Loot ESP", Default = false })
    OverlaysGroup:AddToggle("VehicleESP", { Text = "Vehicle ESP", Default = false })
    OverlaysGroup:AddToggle("PlayerESP", { Text = "Player ESP", Default = false })
    OverlaysGroup:AddToggle("EspShowDistance", { Text = "Show Distance On Labels", Default = false })
    OverlaysGroup:AddToggle("Fullbright", { Text = "Fullbright", Default = false })
    EB = {
        NPC = Color3.fromRGB(255, 170, 80),
        Cash = Color3.fromRGB(80, 220, 120),
        Container = Color3.fromRGB(90, 190, 255),
        Loot = Color3.fromRGB(255, 220, 90),
        Vehicle = Color3.fromRGB(170, 130, 255),
        Player = Color3.fromRGB(255, 85, 130)
    }
    folder = Instance.new("Folder")
    folder.Name = "OuroborosEsp"
    pcall(function()
        local C4 = gethui and gethui()
        local C5 = C4 or vu
        folder.Parent = C5
    end)
    if not folder.Parent then
        folder.Parent = vu
    end
    EF = {}
    EL = {
        [1] = uP.Brightness,
        [2] = uP.ClockTime,
        [3] = uP.FogEnd,
        [4] = uP.GlobalShadows,
        [5] = uP.Ambient,
        [6] = uP.OutdoorAmbient
    }
    EH = function(jx)
        if jx:IsA("BasePart") then
            return jx
        end
        local C7 = jx:FindFirstChild("Head") or jx:FindFirstChild("HumanoidRootPart") or jx.PrimaryPart or jx:FindFirstChildWhichIsA("BasePart", true)
        return C7
    end
    EK = function(jA)
        local C9 = EF[jA]
        if not C9 then
            return
        end
        if C9.Highlight then
            C9.Highlight:Destroy()
        end
        if C9.Billboard then
            C9.Billboard:Destroy()
        end
        EF[jA] = nil
    end
    EI = function(jE, jF, jG)
        local Db = EH(jE)
        if not Db then
            EK(jE)
            return
        end
        local Dc = EF[jE]
        if not Dc then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillTransparency = 0.65
            highlight.OutlineTransparency = 0
            highlight.Parent = folder
            local billboardGui = Instance.new("BillboardGui")
            billboardGui.Size = UDim2.fromOffset(180, 18)
            billboardGui.StudsOffset = Vector3.new(0, 2.4, 0)
            billboardGui.AlwaysOnTop = true
            billboardGui.Parent = folder
            local textLabel = Instance.new("TextLabel")
            textLabel.Size = UDim2.fromScale(1, 1)
            textLabel.BackgroundTransparency = 1
            textLabel.Font = Enum.Font.GothamBold
            textLabel.TextSize = 13
            textLabel.TextStrokeTransparency = 0.4
            textLabel.Parent = billboardGui
            Dc = { Highlight = highlight, Billboard = billboardGui, Label = textLabel }
            EF[jE] = Dc
        end
        local Highlight = Dc.Highlight
        local De_2 = jE:IsA("Model") and jE
        local Df_2 = De_2 or Db
        Highlight.Adornee = Df_2
        Dc.Highlight.FillColor = jF
        Dc.Highlight.OutlineColor = jF
        Dc.Billboard.Adornee = Db
        Dc.Label.TextColor3 = jF
        Dc.Label.Text = jG
    end
    EE = function()
        for k in EF do
            EK(k)
        end
    end
    EC = function(jV)
        for i, player in uA:GetPlayers() do
            local Character = player.Character
            local Dn = Character and jV:IsDescendantOf(Character)
            if Dn then
                return true
            end
        end
        return false
    end
    EM = function()
        local DA
        DA = nil
        DA = {}
        local function DB(j4, j5, j6)
            if j4 and j4.Parent then
                DA[#DA + 1] = { Inst = j4, Kind = j5, Name = j6 }
            end
        end
        if Toggles.NpcESP.Value then
            local NPCs = uL:FindFirstChild("NPCs")
            if NPCs then
                for i, child in NPCs:GetChildren() do
                    if child:FindFirstChildOfClass("Humanoid") then
                        DB(child, "NPC", child.Name)
                    end
                end
            end
        end
        if Toggles.CashESP.Value then
            for k, v in uH:GetTagged("Cash") do
                local Parent = v.Parent
                local DD = Parent and Parent:IsDescendantOf(uL)
                if DD then
                    DB(Parent, "Cash", Parent.Name)
                end
            end
        end
        if Toggles.ContainerESP.Value then
            for k, v in uH:GetTagged("DamageToOpen") do
                local DC_3 = v:IsDescendantOf(uL) and not v:HasTag("PunchingBag")
                if DC_3 then
                    DB(v, "Container", v.Name)
                end
            end
        end
        if Toggles.LootESP.Value then
            for k, v in uH:GetTagged("Draggable") do
                local DC_4 = v:IsDescendantOf(uL) and v:HasTag("Equippable") and not v:HasTag("BuyableLoot") and not v:IsA("Tool") and not EC(v)
                if DC_4 then
                    DB(v, "Loot", v.Name)
                end
            end
        end
        if Toggles.VehicleESP.Value then
            for k, v in uH:GetTagged("Vehicle") do
                local D7 = if v:IsDescendantOf(uL) then 1 else 0
                if D7 == 1 then
                    DB(v, "Vehicle", v.Name)
                end
            end
        end
        if Toggles.PlayerESP.Value then
            for i, player in uA:GetPlayers() do
                if player ~= LocalPlayer and player.Character then
                    DB(player.Character, "Player", player.DisplayName)
                end
            end
        end
        return DA
    end
    ED = function(kD)
        if kD then
            uP.Brightness = 2
            uP.ClockTime = 14
            uP.FogEnd = 1000000
            uP.GlobalShadows = false
            uP.Ambient = Color3.new(1, 1, 1)
            uP.OutdoorAmbient = Color3.new(1, 1, 1)
            return
        end
        uP.Brightness = EL[1]
        uP.ClockTime = EL[2]
        uP.FogEnd = EL[3]
        uP.GlobalShadows = EL[4]
        uP.Ambient = EL[5]
        uP.OutdoorAmbient = EL[6]
    end
    Toggles.Fullbright:OnChanged(function()
        ED(Toggles.Fullbright.Value)
    end)
    EG = function()
        return Toggles.NpcESP.Value or Toggles.CashESP.Value or Toggles.ContainerESP.Value or Toggles.LootESP.Value or Toggles.VehicleESP.Value or Toggles.PlayerESP.Value
    end
    u_(vo.Heartbeat:Connect(function()
        if Library.Unloaded then
            return
        end
        if not EG() then
            if next(EF) then
                EE()
            end
            return
        end
        local Ei = vf()
        local Value = Toggles.EspShowDistance.Value
        local Ek = {}
        for k, v in EM() do
            local Inst = v.Inst
            Ek[Inst] = true
            local Em = v.Name
            if Value and Ei then
                local En_1 = EH(Inst)
                if En_1 then
                    Em = string.format("%s [%d]", v.Name, (En_1.Position - Ei.Position).Magnitude // 1)
                end
            end
            EI(Inst, EB[v.Kind], Em)
        end
        for k in EF do
            if not Ek[k] then
                EK(k)
            end
        end
    end))
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.Fullbright.Value then
                ED(true)
            end
        end
    end)
    return function()
        EE()
        ED(false)
        if folder then
            folder:Destroy()
        end
    end
end
local function vI()
    local connection
    local MovementGroup = uT.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = uT.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local function li(lj)
        pcall(function()
            u5:SetGameplayPausedNotificationEnabled(not lj)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = uV:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not lj
            end
        end)
        if not lj then
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
    local function lw(lx)
        if not lx:IsA("ProximityPrompt") then
            return
        end
        lx.HoldDuration = 0
        lx.MaxActivationDistance = 50
        lx.RequiresLineOfSight = false
    end
    connection = nil
    u_(vo.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = LocalPlayer.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local EU_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if EU_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end))
    u_(UserInputService.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local E7_1 = vx()
            if E7_1 then
                E7_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end))
    local CurrentCamera = uL.CurrentCamera
    u_(vo.RenderStepped:Connect(function(lU)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local Ff_1 = vx()
            if Ff_1 then
                Ff_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local Ff_3 = vf()
            local Fg = vx()
            if Ff_3 and Fg then
                Fg.PlatformStand = true
                local Fg_1 = Vector3.zero
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    Fg_1 += CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    Fg_1 -= CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                    Fg_1 -= CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    Fg_1 += CurrentCamera.CFrame.RightVector
                end
                local Fl = if UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
                if Fl == 1 then
                    Fg_1 += Vector3.new(0, 1, 0)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                    Fg_1 -= Vector3.new(0, 1, 0)
                end
                Ff_3.AssemblyLinearVelocity = Vector3.zero
                if Fg_1.Magnitude > 0 then
                    Ff_3.CFrame = Ff_3.CFrame + Fg_1.Unit * Options.FlySpeed.Value * lU
                end
            end
        end
    end))
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local Fp = vx()
            if Fp then
                Fp.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local Fu = vx()
            if Fu then
                Fu.WalkSpeed = 16
            end
        end
    end)
    Toggles.AntiGameplayPause:OnChanged(function()
        li(Toggles.AntiGameplayPause.Value)
    end)
    li(true)
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in uL:GetDescendants() do
                pcall(lw, descendant)
            end
            connection = uL.DescendantAdded:Connect(function(mn)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(lw, mn)
                end
            end)
            u_(connection)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                li(true)
            end
        end
    end)
    return li, function()
        if connection then
            connection:Disconnect()
            connection = nil
        end
    end
end
uW, uQ = vI()
local function vF()
    local EscapeGroup = uT.Player:AddLeftGroupbox("Escape", "wind")
    EscapeGroup:AddToggle("AutoEscapeSouth", { Text = "Auto Escape South", Default = false })
    EscapeGroup:AddToggle("AutoReplayDeath", { Text = "Auto Replay After Death", Default = false })
    local WaypointsGroup = uT.Player:AddRightGroupbox("Waypoints", "map-pin")
    local function mU()
        local Map = uL:FindFirstChild("Map")
        local F2 = Map and Map:FindFirstChild("Buildings")
        if F2 then
            local CustomsFinal = F2:FindFirstChild("CustomsFinal")
            if CustomsFinal then
                return CustomsFinal
            end
            local Customs = F2:FindFirstChild("Customs")
            local F1_2 = Customs and Customs:FindFirstChild("FinalDoor", true)
            if F1_2 then
                return Customs
            end
            return uL:FindFirstChild("FinalDoor", true)
        end
        return uL:FindFirstChild("FinalDoor", true)
    end
    local function m1()
        local Ga_1
        local F9_1
        local F8_1
        local F7 = mU()
        if not F7 then
            return nil
        end
        F8_1, F9_1, Ga_1 = nil, nil, nil
        for i, descendant in F7:GetDescendants() do
            if descendant:IsA("ProximityPrompt") then
                local lower = string.lower
                local Gc_1 = descendant.ActionText or ""
                local Gd_1 = lower(Gc_1)
                if string.find(Gd_1, "activ", 1, true) then
                    F8_1 = descendant
                    Ga_1 = descendant.Parent
                    local Gb_2 = Ga_1 and not Ga_1:IsA("BasePart")
                    if Gb_2 then
                        local Gb_3 = Ga_1:FindFirstChildWhichIsA("BasePart", true) or Ga_1
                        Ga_1 = Gb_3
                    end
                end
            else
                local Gb_4 = descendant.Name == "RButton" and descendant:IsA("BasePart")
                if Gb_4 then
                    local Gb_5 = descendant:FindFirstChildWhichIsA("PointLight") or descendant:FindFirstChildWhichIsA("SurfaceLight")
                    local Gc_2 = Gb_5
                    if Gb_5 then
                        Gb_5 = Gc_2.Enabled
                    end
                    if Gb_5 then
                        Gb_5 = Gc_2.Color.G
                    end
                    local Gc_3 = Gb_5 or descendant.Color.G
                    local Gb_6 = not F9_1
                    if not Gb_6 then
                        Gb_6 = Gc_3 > F9_1.Color.G
                    end
                    if Gb_6 then
                        F9_1 = descendant
                    end
                end
            end
        end
        local Gb_7 = not Ga_1
        if Gb_7 ~= false then
            Gb_7 = F9_1
        end
        if Gb_7 then
            Ga_1 = F9_1
        end
        return F8_1, F9_1, Ga_1, F7
    end
    local function ni(nj)
        if not nj then
            return
        end
        local ClickDetector = nj:FindFirstChildWhichIsA("ClickDetector", true)
        if ClickDetector and fireclickdetector then
            pcall(fireclickdetector, ClickDetector)
        end
        local ProximityPrompt = nj:FindFirstChildWhichIsA("ProximityPrompt", true)
        if ProximityPrompt then
            ProximityPrompt.Enabled = true
            ProximityPrompt.HoldDuration = 0
            ProximityPrompt.RequiresLineOfSight = false
            uC(ProximityPrompt)
        end
        pcall(function()
            FlowClient.AttachableAction.Load(nj)
        end)
        local CurrentCamera = uL.CurrentCamera
        if CurrentCamera then
            CurrentCamera.CFrame = CFrame.new(nj.Position + Vector3.new(0, 2, 4), nj.Position)
        end
        if mouse1click then
            pcall(mouse1click)
        end
    end
    local function nv()
        local Gw_1
        local Gv_1
        local Gu_1
        Gv_1, Gw_1, Gu_1 = m1()
        local Gx = vf()
        if Gu_1 and Gx then
            local Gy_1 = Gu_1:IsA("BasePart") and Gu_1.Position
            local Gz = Gy_1 or Gu_1:GetPivot().Position
            if (Gx.Position - Gz).Magnitude > 7 then
                Gx.CFrame = CFrame.new(Gz + Vector3.new(0, 3, 0))
                Gx.AssemblyLinearVelocity = Vector3.zero
                task.wait(0.12)
            end
        end
        if Gv_1 then
            Gv_1.Enabled = true
            Gv_1.HoldDuration = 0
            Gv_1.RequiresLineOfSight = false
            uC(Gv_1)
        end
        if Gw_1 then
            ni(Gw_1)
        end
        return Gv_1 ~= nil or Gw_1 ~= nil
    end
    local function nI()
        local GE = vf()
        if not GE then
            return
        end
        local GF = Vector3.new(54, 2137, 83607)
        if (GE.Position - GF).Magnitude > 12 then
            GE.CFrame = CFrame.new(GF)
            GE.AssemblyLinearVelocity = Vector3.zero
            return
        end
        nv()
    end
    local function nN()
        for k, v in { "EndFrame", "DeathGui", "FailGui", "SuccessGui" } do
            local GK_1 = vu:FindFirstChild(v)
            local GL_1 = GK_1 and GK_1:IsA("LayerCollector") and GK_1.Enabled
            if GL_1 then
                return true
            end
        end
        local GK_2 = vx()
        return GK_2 ~= nil and GK_2.Health <= 0
    end
    WaypointsGroup:AddButton({
        Text = "TP Car",
        Func = function()
            for k, v in uH:GetTagged("MainVehicle") do
                if v:IsDescendantOf(uL) then
                    uU(v:GetPivot().Position)
                    return
                end
            end
            Library:Notify("No car found")
        end
    })
    WaypointsGroup:AddButton({
        Text = "TP Pawn Shop",
        Func = function()
            for k, v in uH:GetTagged("PawnCounter") do
                if v:IsDescendantOf(uL) then
                    uU(v:GetPivot().Position)
                    return
                end
            end
            Library:Notify("No pawn shop found")
        end
    })
    WaypointsGroup:AddButton({
        Text = "TP Gas Station",
        Func = function()
            local G6
            local G8 = uL:FindFirstChild("Map") and uL.Map:FindFirstChild("Buildings")
            local G9 = G8
            if G8 then
                G8 = G9:FindFirstChild("GasStation")
            end
            local G7 = G8
            if G7 then
                G6 = nil
                pcall(function()
                    G6 = G7:GetPivot().Position
                end)
                if not G6 then
                    local BasePart = G7:FindFirstChildWhichIsA("BasePart", true)
                    G6 = BasePart and BasePart.Position
                end
                if G6 then
                    uU(G6)
                    return
                end
            end
            Library:Notify("No gas station found")
        end
    })
    WaypointsGroup:AddButton({
        Text = "TP Start Area",
        Func = function()
            local He = uL:FindFirstChild("Map") and uL.Map:FindFirstChild("StartArea")
            local Hf = He
            if He then
                He = Hf:FindFirstChild("VehicleSpawnLocation")
            end
            local Hf_1 = He
            if He then
                He = Hf_1:IsA("BasePart")
            end
            if He then
                uU(Hf_1.Position)
                return
            end
            local SpawnLocation = uL:FindFirstChildOfClass("SpawnLocation")
            if SpawnLocation then
                uU(SpawnLocation.Position)
                return
            end
            Library:Notify("No start area found")
        end
    })
    WaypointsGroup:AddButton({
        Text = "TP Nearest Loot",
        Func = function()
            local Hj_1
            local Hi_1
            local Hh = vf()
            if not Hh then
                return
            end
            Hj_1, Hi_1 = nil, nil
            for k, v in uH:GetTagged("Draggable") do
                local Hk = v:IsDescendantOf(uL) and v:HasTag("Equippable") and not v:IsA("Tool") and not v:HasTag("BuyableLoot")
                if Hk then
                    local Hl_1 = LocalPlayer.Character and v:IsDescendantOf(LocalPlayer.Character)
                    Hk = not Hl_1
                end
                if Hk then
                    local Position = v:GetPivot().Position
                    local Magnitude = (Position - Hh.Position).Magnitude
                    if not Hj_1 or Magnitude < Hi_1 then
                        Hj_1 = Position
                        Hi_1 = Magnitude
                    end
                end
            end
            if Hj_1 then
                uU(Hj_1)
                return
            end
            Library:Notify("No loot found")
        end
    })
    WaypointsGroup:AddButton({
        Text = "TP Nearest NPC",
        Func = function()
            local Hw_1
            local Hv_1
            local Hu = vf()
            if not Hu then
                return
            end
            Hw_1, Hv_1 = nil, nil
            for k, v in uH:GetTagged("NPC") do
                local Hx = v:IsDescendantOf(uL) and v:FindFirstChildOfClass("Humanoid")
                if Hx then
                    local Position = v:GetPivot().Position
                    local Magnitude = (Position - Hu.Position).Magnitude
                    if not Hw_1 or Magnitude < Hv_1 then
                        Hw_1 = Position
                        Hv_1 = Magnitude
                    end
                end
            end
            if Hw_1 then
                uU(Hw_1)
                return
            end
            Library:Notify("No NPC found")
        end
    })
    task.spawn(function()
        while not Library.Unloaded do
            if Toggles.AutoEscapeSouth.Value then
                pcall(nI)
            end
            local HH = Toggles.AutoReplayDeath.Value and nN()
            if HH then
                pcall(function()
                    vv("GameManager", "Replay")
                end)
            end
            task.wait(0.45)
        end
    end)
end
vF()
local function vC_7()
    local function pd()
        local HJ = {}
        local HK = {}
        for k, v in uH:GetTagged("BuyableItem") do
            local ProximityPrompt = v:FindFirstChildWhichIsA("ProximityPrompt", true)
            local HM = ProximityPrompt and ProximityPrompt.ObjectText
            local HM_1 = type(HM) == "string" and HM ~= "" and not HJ[HM]
            if HM_1 then
                HJ[HM] = true
                HK[#HK + 1] = HM
            end
        end
        if #HK == 0 then
            local HJ_1 = Data.WeaponData and Data.WeaponData.Weapons
            if type(HJ_1) == "table" then
                for k in HJ_1 do
                    HK[#HK + 1] = tostring(k)
                end
            end
        end
        table.sort(HK)
        if #HK == 0 then
            HK[1] = "---"
        end
        return HK
    end
    local function pt(pu)
        local HZ_1
        local HY_1
        HY_1, HZ_1 = pcall(function()
            return FlowClient.LocalData.GetValue(pu)
        end)
        if not HY_1 then
            return nil
        end
        local HY_2 = type(HZ_1) == "table" and HZ_1._value ~= nil
        if HY_2 then
            return HZ_1._value
        end
        return HZ_1
    end
    local function pC(pD, pE)
        local H3 = {}
        if type(pD) == "table" then
            for k in pD do
                if type(k) == "string" then
                    H3[#H3 + 1] = k
                end
            end
        end
        table.sort(H3)
        if #H3 == 0 then
            H3[1] = pE
        end
        return H3
    end
    local function pH()
        for k, v in { "EndFrame", "DeathGui", "FailGui", "SuccessGui" } do
            local H9 = vu:FindFirstChild(v)
            local Ia = H9 and H9:IsA("LayerCollector") and H9.Enabled
            if Ia then
                return true
            end
        end
        return false
    end
    local pO = pd()
    local pP = pC(pt("ownedClasses"), "Basic")
    local pQ = pC(pt("cars"), "Claptima")
    local pR = pC(pt("weaponStash"), pO[1])
    local WeaponsGroup = uT.Shop:AddLeftGroupbox("Weapons", "sword")
    WeaponsGroup:AddDropdown("BuyWeapons", {
        Text = "Buy Weapons",
        Values = pO,
        Multi = true,
        Searchable = true,
        AllowNull = true,
        Default = {}
    })
    WeaponsGroup:AddToggle("AutoBuyWeapons", { Text = "Auto Buy Selected Weapons", Default = false })
    local ClassesAndCarsGroup = uT.Shop:AddLeftGroupbox("Classes And Cars", "car")
    ClassesAndCarsGroup:AddDropdown("ClassToBuy", { Text = "Class To Buy", Values = pP, Searchable = true, AllowNull = true })
    ClassesAndCarsGroup:AddToggle("AutoBuyClass", { Text = "Auto Buy Class", Default = false })
    ClassesAndCarsGroup:AddDropdown("CarToBuy", { Text = "Car To Buy", Values = pQ, Searchable = true, AllowNull = true })
    ClassesAndCarsGroup:AddToggle("AutoBuyCar", { Text = "Auto Buy Car", Default = false })
    local LoadoutGroup = uT.Shop:AddRightGroupbox("Loadout", "package")
    LoadoutGroup:AddDropdown("EquipLoadout", { Text = "Equip Loadout", Values = pR, Searchable = true, AllowNull = true })
    LoadoutGroup:AddButton({
        Text = "Refresh Owned Weapons",
        Func = function()
            local Ii = pC(pt("weaponStash"), pd()[1])
            if Options.EquipLoadout then
                pcall(function()
                    Options.EquipLoadout:SetValues(Ii)
                end)
            end
            if Options.BuyWeapons then
                pcall(function()
                    Options.BuyWeapons:SetValues(pd())
                end)
            end
            Library:Notify("Refreshed owned weapons")
        end
    })
    LoadoutGroup:AddToggle("AutoEquipLoadout", { Text = "Auto Equip Loadout", Default = false })
    local function p7()
        local Ik = uN("BuyWeapons")
        for k in Ik do
            for k2, v in uH:GetTagged("BuyableItem") do
                local ProximityPrompt = v:FindFirstChildWhichIsA("ProximityPrompt", true)
                if ProximityPrompt and ProximityPrompt.Enabled and ProximityPrompt.ObjectText == k then
                    local Il_1 = v:IsA("BasePart") and v
                    local Im = Il_1 or v:FindFirstChildWhichIsA("BasePart", true)
                    if Im then
                        uU(Im.Position)
                        task.wait(0.12)
                    end
                    uC(ProximityPrompt)
                    break
                end
            end
        end
    end
    local ActionsGroup = uT.Shop:AddRightGroupbox("Actions", "play")
    ActionsGroup:AddButton({
        Text = "Play Now",
        Func = function()
            if vv("GameManager", "Replay") then
                Library:Notify("Play requested")
            else
                Library:Notify("Could not start")
            end
        end
    })
    ActionsGroup:AddDropdown("RunCar", { Text = "Run Car", Values = pQ, Searchable = true, AllowNull = true })
    ActionsGroup:AddButton({
        Text = "Refresh Owned Cars",
        Func = function()
            local Iz = pC(pt("cars"), "Claptima")
            if Options.CarToBuy then
                pcall(function()
                    Options.CarToBuy:SetValues(Iz)
                end)
            end
            if Options.RunCar then
                pcall(function()
                    Options.RunCar:SetValues(Iz)
                end)
            end
            Library:Notify("Refreshed owned cars")
        end
    })
    ActionsGroup:AddDropdown("LobbyPermissions", { Text = "Lobby Permissions", Values = { "Public", "Friends", "Private" }, Default = "Friends" })
    ActionsGroup:AddInput("LobbyMaxPlayers", { Text = "Lobby Max Players", Default = "4", Numeric = true, Finished = false, Placeholder = "4" })
    ActionsGroup:AddToggle("AutoStartRun", { Text = "Auto Start Run", Default = false })
    ActionsGroup:AddButton({
        Text = "Claim Daily Reward",
        Func = function()
            Library:Notify("No daily reward")
        end
    })
    ActionsGroup:AddToggle("AutoRedeemCodes", { Text = "Auto Redeem Codes", Default = false })
    task.spawn(function()
        while not Library.Unloaded do
            if Toggles.AutoBuyWeapons.Value then
                pcall(p7)
            end
            local IE = Toggles.AutoStartRun.Value and pH()
            if IE then
                pcall(function()
                    vv("GameManager", "Replay")
                end)
            end
            task.wait(0.6)
        end
    end)
end
vC_7()
u3 = vE()
local function vG(qL)
    local qM = 0
    local qN = tick()
    qL:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = qL:AddLabel("AFK triggers: 0")
    local function qP()
        local CurrentCamera = uL.CurrentCamera
        if not CurrentCamera then
            return
        end
        vg:CaptureController()
        vg:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        qM += 1
        qN = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. qM)
        end)
    end
    local connection = LocalPlayer.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(qP)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local IJ = Toggles.AntiAfk.Value and tick() - qN >= 60
            if IJ then
                pcall(qP)
            end
        end
    end)
    qL:AddButton({
        Text = "Unload UI",
        Func = function()
            Library:Unload()
        end
    })
    return connection
end
local MenuGroup = uT.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
uF = vG(MenuGroup)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(uT.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/Runaways")
local vz_8 = SaveManager:BuildConfigSection(uT.Settings)
SaveManager:LoadAutoloadConfig()
local function vL(rf)
    local function rg(rh, ri)
        local IM = rh == "Toggle" and Toggles
        local IR = if IM then 1 else 0
        local IP = 1196 * IR + 3248 * (1 - IR)
        local IQ = 3888 * IR + 1992 * (1 - IR)
        if not ((IP * 3214 + IQ * 902 + IP * IQ) % 16777213 == 12000968) then
            IM = Options
        end
        local IM_1 = IM[ri]
        local IL_2 = type(IM_1) == "table" and IM_1.Type == rh
        return IL_2 and IM_1 or nil
    end
    local function rq(rr, rs)
        local Type = rs.Type
        if Type == "Toggle" then
            return { idx = rr, type = "Toggle", value = rs.Value == true }
        elseif Type == "Slider" then
            return { idx = rr, type = "Slider", value = tostring(rs.Value) }
        elseif Type == "Dropdown" then
            return { idx = rr, type = "Dropdown", multi = rs.Multi == true, value = rs.Value }
        elseif Type == "Input" then
            local IT = rs.Value or ""
            return { idx = rr, type = "Input", text = tostring(IT) }
        elseif Type == "ColorPicker" then
            return { idx = rr, type = "ColorPicker", value = rs.Value:ToHex(), transparency = rs.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = rr,
                type = "KeyPicker",
                mode = rs.Mode,
                key = rs.Value,
                modifiers = rs.Modifiers,
                toggled = rs.Toggled
            }
        else
            return nil
        end
    end
    local function ru()
        local I7 = {}
        for k, v in { Toggles, Options } do
            for k, v in v do
                local I8 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if I8 then
                    local I8_1 = rq(k, v)
                    if I8_1 then
                        I7[#I7 + 1] = I8_1
                    end
                end
            end
        end
        table.sort(I7, function(rC, rD)
            if rC.type ~= rD.type then
                return rC.type < rD.type
            end
            return rC.idx < rD.idx
        end)
        return { objects = I7 }
    end
    local function rE(rF)
        local Jr
        Jr = nil
        local Js = type(rF) ~= "table" or type(rF.idx) ~= "string" or type(rF.type) ~= "string" or SaveManager.Ignore[rF.idx]
        if Js then
            return false
        end
        Jr = rg(rF.type, rF.idx)
        if not Jr then
            return false
        end
        local Js_1 = pcall(function()
            if rF.type == "Input" then
                if type(rF.text) ~= "string" then
                    return
                end
                Jr:SetValue(rF.text)
            elseif rF.type == "ColorPicker" then
                Jr:SetValueRGB(Color3.fromHex(rF.value), rF.transparency)
            elseif rF.type == "KeyPicker" then
                Jr:SetValue({ rF.key, rF.mode, rF.modifiers })
                if rF.mode == "Toggle" and rF.toggled ~= nil then
                    Jr.Toggled = rF.toggled
                    Jr:Update()
                end
            else
                Jr:SetValue(rF.value)
            end
        end)
        return Js_1
    end
    rf:AddDivider()
    rf:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    rf:AddButton("Export Config to Clipboard", function()
        local Jv_1
        local Ju_1
        Ju_1, Jv_1 = pcall(u9.JSONEncode, u9, ru())
        if not Ju_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local Ju_2 = setclipboard
        local JA = if Ju_2 then 1 else 0
        local Jy = 4005 * JA + 1538 * (1 - JA)
        local Jz = 3807 * JA + 3316 * (1 - JA)
        if not ((Jy * 2097 + Jz * 236 + Jy * Jz) % 16777213 == 7766759) then
            Ju_2 = toclipboard
        end
        local Jw = Ju_2
        local Ju_3 = type(Jw) ~= "function" or not pcall(Jw, Jv_1)
        if Ju_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    rf:AddButton("Import Config from Clipboard Text", function()
        local JD_1
        local JB = Options.SaveManager_ImportSource.Value or ""
        local JB_1
        local JC = tostring(JB):match("^%s*(.-)%s*$")
        if JC == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        JB_1, JD_1 = pcall(u9.JSONDecode, u9, JC)
        local JC_1 = not JB_1 or type(JD_1) ~= "table" or type(JD_1.objects) ~= "table"
        if JC_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local JB_2 = 0
        for k, v in JD_1.objects do
            if rE(v) then
                JB_2 += 1
            end
        end
        if JB_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local JD_2 = JB_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(JB_2, JD_2), 6)
    end)
end
if (not u3 and vz_8 or vG or not vz_8 and vF and (u3 or not u3)) and not (not u3 and vz_8 or vG or not vz_8 and vF and (u3 or not u3)) then
    Library(vL)
    vz_8:OnUnload(function()
        uW(false)
        uQ()
        u3()
        if uF then
            uF:Disconnect()
        end
        for k, v in u4 do
            local JS = v
            pcall(function()
                JS:Disconnect()
            end)
        end
        table.clear(u4)
        local JL = vx()
        if JL then
            JL.PlatformStand = false
            JL.WalkSpeed = 16
        end
        local JL_2 = getgenv and getgenv().__OuroborosRunawaysLib == Library
        if JL_2 then
            getgenv().__OuroborosRunawaysLib = nil
        end
    end)
else
    vL(vz_8)
    Library:OnUnload(function()
        uW(false)
        uQ()
        u3()
        if uF then
            uF:Disconnect()
        end
        for k, v in u4 do
            local JS = v
            pcall(function()
                JS:Disconnect()
            end)
        end
        table.clear(u4)
        local JL = vx()
        if JL then
            JL.PlatformStand = false
            JL.WalkSpeed = 16
        end
        local JL_1 = getgenv and getgenv().__OuroborosRunawaysLib == Library
        if JL_1 then
            getgenv().__OuroborosRunawaysLib = nil
        end
    end)
end
