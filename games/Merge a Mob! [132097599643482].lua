local f1
local gn
local f4
local f7
local gt
local ga
local gw
local RequestRebirth
local connection2
local fY
local gj
local gp
local f6
local connection
local Label
local gc
local gy
local gf
local gB
local gi
local f_
local gl
local Toggles
local gr
local gu
local enchants
local Workspace
local gA
local gh
local fZ
local gk
local function fn11(aq)
    if aq:IsA("Model") then
        return aq.PrimaryPart
    elseif aq:IsA("BasePart") then
        return aq
    else
        return nil
    end
end
local function onMergeWalkSpeed(bM)
    gu = bM
end
local function autoRebirthLoop()
    while not gf.Unloaded do
        task.wait(2)
        if Toggles.AutoRebirth.Value and fZ and fZ.rebirth then
            local rebirth = fZ.rebirth
            local jp = rebirth.level < rebirth.maxLevel and rebirth.cap <= f7()
            if jp then
                pcall(function()
                    RequestRebirth:FireServer()
                end)
            end
        end
    end
end
local function autoEnchantLoop()
    while not gf.Unloaded do
        task.wait(1)
        if Toggles.AutoEnchant.Value then
            local jB = gk:GetAttribute("Crystals") or 0
            if jB >= enchants.COST_CRYSTALS then
                pcall(function()
                    gh:FireServer()
                end)
            end
        end
    end
end
local function fn91()
    local ih_1
    local ig_1
    if identifyexecutor then
        ih_1, ig_1 = identifyexecutor()
        local ii = ih_1 ~= ""
        local ij = type(ih_1) == "string" and ii
        if ij then
            local ii_1 = type(ig_1) == "string" and ig_1 ~= "" and ih_1 .. " " .. ig_1
            gc = ii_1 or ih_1
        end
    end
end
local function onOnClientEvent(T)
    gB = T
end
local function fn109(aJ)
    local hQ = {}
    for i, child in ipairs(aJ:GetChildren()) do
        if f_(child) then
            local attr = child:GetAttribute("Tier")
            if attr then
                local hS_1 = hQ[attr] or 0
                hQ[attr] = hS_1 + 1
            end
        end
    end
    local hR_2 = nil
    for k, v in pairs(hQ) do
        local hQ_1 = v >= 2
        if hQ_1 then
            hQ_1 = not hR_2 or k < hR_2
        end
        if hQ_1 then
            hR_2 = k
        end
    end
    return hR_2
end
local function onRscripts()
    if setclipboard then
        setclipboard(gA)
    elseif toclipboard then
        toclipboard(gA)
    end
    gf:Notify("Copied Rscripts profile to clipboard")
end
local function fn202(as, at, au, av)
    local hE_1
    local hD_1
    hE_1, hD_1 = nil, nil
    for i, child in ipairs(as:GetChildren()) do
        local hF = child ~= av and child:GetAttribute("Tier") == at and f_(child)
        if hF then
            local hF_1 = gw(child)
            if hF_1 then
                local hG = hF_1.Position.X - au.X
                local hH = hF_1.Position.Z - au.Z
                local hI = math.sqrt(hG * hG + hH * hH)
                if not hD_1 or hI < hD_1 then
                    hE_1, hD_1 = hF_1, hI
                end
            end
        end
    end
    return hE_1
end
local function onInputBegan()
    gl = tick()
end
local function onOnClientEvent2(R)
    fZ = R
end
local function onUnload()
    gf:Unload()
end
local function antiAfkLoop()
    while not gf.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local i1 = tick() - gl
            local i2 = tick() - gj
            if i1 >= 300 and i2 >= 60 then
                pcall(f4)
            else
                if i1 < 300 and i2 >= 300 then
                    pcall(f4)
                end
            end
        end
    end
end
local function onUpgradeSelection(bP)
    local iB = {}
    local iC = { Tier = "TIER", ["Lock Base"] = "LOCKBASE", Max = "MAX" }
    if type(bP) == "table" then
        for k, v in pairs(bP) do
            local iE = v == true and k
            if not iE then
                local iD_1 = type(v) == "string" and v
                iE = iD_1 or nil
            end
            local iD_2 = iE
            if iE then
                iE = iC[iD_2]
            end
            local iD_3 = iE
            if iD_3 then
                iB[#iB + 1] = iD_3
            end
        end
    end
    gy = iB
end
local function fn335()
    local Character = gk.Character
    local hf = Character and Character:FindFirstChild("HumanoidRootPart")
    return hf
end
local function fn355()
    local Bases = Workspace:FindFirstChild("Bases")
    if not Bases then
        return nil
    end
    for i, child in ipairs(Bases:GetChildren()) do
        local Nukes = child:FindFirstChild("Nukes")
        if Nukes then
            for i, child in ipairs(Nukes:GetChildren()) do
                if child:GetAttribute("OwnerUserId") == gk.UserId then
                    return Nukes
                end
            end
        end
    end
    return nil
end
local function fn365(a7, a8)
    return string.format('<font color="%s">%s</font>', a8, a7)
end
local function fn383()
    setclipboard(fY)
    gf:Notify("Copied Discord invite to clipboard")
end
local function fn397()
    local Character = gk.Character
    local hi = Character and Character:FindFirstChildOfClass("Humanoid")
    return hi
end
local function onCopyJoinScript_JobID()
    local ip = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, gp)
    if setclipboard then
        setclipboard(ip)
    elseif toclipboard then
        toclipboard(ip)
    end
    gf:Notify("Copied join script to clipboard")
end
local function fn430()
    if not workspace.CurrentCamera then
        return
    end
    gn:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    gn:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    gj = tick()
end
local function fn454(ba, bb, bc)
    return string.format("<b>%s</b> %s %s", ba, ga("-", "#5a6070"), ga(bb, bc))
end
local function fn461(an)
    local attr = an:GetAttribute("State")
    return attr == "floor" or attr == "based"
end
local function fn470()
    connection:Disconnect()
    connection2:Disconnect()
end
local function onInputChanged(ce)
    local UserInputType = ce.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        gl = tick()
    end
end
local function fn534(u)
    local DiscordGroup = u:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = gt })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = gt })
end
local function fn535()
    local h5 = gr()
    if not h5 then
        return 0
    end
    local h6 = 0
    for i, child in ipairs(h5:GetChildren()) do
        local attr = child:GetAttribute("Tier")
        local h7 = type(attr) == "number" and attr > h6
        if h7 then
            h6 = attr
        end
    end
    return h6
end
local function worker()
    local iv_1
    while true do
        task.wait(1)
        if gf.Unloaded then
            break
        end
        local iu = math.floor(os.clock() - f6)
        if iu < 60 then
            iv_1 = iu .. "s"
        elseif iu < 3600 then
            iv_1 = string.format("%dm %ds", iu // 60, iu % 60)
        else
            iv_1 = string.format("%dh %dm", iu // 3600, iu % 3600 // 60)
        end
        Label:SetText(f1("Session time", iv_1, gi))
    end
end
fY = nil
fZ = nil
f_ = nil
f1 = nil
f4 = nil
Toggles = nil
f6 = nil
f7 = nil
enchants = nil
ga = nil
gc = nil
connection2 = nil
gf = nil
gh = nil
gi = nil
gj = nil
gk = nil
gl = nil
gn = nil
gp = nil
gr = nil
connection = nil
gt = nil
gu = nil
Label = nil
gw = nil
Workspace = nil
gy = nil
RequestRebirth = nil
gA = nil
gB = nil
local fX, Drop, f2, HeldNuke, f9, gb, ge, gg, gm, SwordShopRequest, gq
local gI_1, gI_2
local gH_1, gH_2
local gG_1, gG_2
local gF_1, gF_2
local gE_2
local gD_1, gD_2
local Players
local Options, gO, gP, gQ, gR, gS, gX
local gM_1
local gL_1
local gK_1
Players, gL_1, Workspace, gR, gn, gk, gG_1, gf, gP, gO, Toggles, Options, fY, gA, gS, gF_1, gD_1, Drop, fX, RequestRebirth, gK_1, gq, SwordShopRequest, gH_1, gh, gg, gb, enchants, HeldNuke, fZ, gB, gy, gu, gI_1, gQ, gt, gM_1, ge, f2, gr, f_, gw, gm, f9, f7 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local gJ = 26
repeat
    local gT_1 = (gJ * 19 + 21) % 28 + 1
    if gT_1 <= 14 then
        if gT_1 <= 7 then
            if gT_1 <= 4 then
                if gT_1 <= 2 then
                    if gT_1 <= 1 then
                        local gU_1 = {
                            "gon",
                            "klypgy",
                            "qsuadfq",
                            "hftdleblgjr",
                            "ctn",
                            "sqnlbsvf",
                            "uquoca",
                            "xezeln",
                            "kyqyhuw",
                            "kpkyyzdjerz",
                            "fgl",
                            "pwpdyyj"
                        }
                        local kl = gJ
                        local gV_1 = gU_1[kl % 12 + 1]
                        if gV_1:len() <= gV_1:gsub("(.)", "%1%1", kl % 3 % 2 + 1):len() then
                            fX = gF_1:WaitForChild("PurchaseUpgrade")
                            RequestRebirth = gF_1:WaitForChild("RequestRebirth")
                        else
                            gF_1 = RequestRebirth:WaitForChild("PurchaseUpgrade")
                            fX = RequestRebirth:WaitForChild("RequestRebirth")
                        end
                        gJ = (gJ + 87) % 112
                    else
                        local gU_2 = (vector.create((gJ * 2 + 2) % 11 + 1, (gJ * 11 + 7) % 13 + 1, (gJ * 12 + 8) % 17 + 1))
                        local gV_2 = (vector.create((gJ * 1 + 9) % 11 + 1, (gJ * 11 + 8) % 13 + 1, (gJ * 15 + 11) % 17 + 1))
                        local kw = vector.cross(gU_2, gV_2)
                        local kx = vector.dot(gU_2, gV_2)
                        if vector.dot(kw, kw) + kx * kx == vector.dot(gU_2, gU_2) * vector.dot(gV_2, gV_2) + 4 then
                            gF_1 = gK_1:WaitForChild("StateUpdate")
                        else
                            gK_1 = gF_1:WaitForChild("StateUpdate")
                        end
                        gJ = (gJ + 87) % 112
                    end
                elseif gT_1 <= 3 then
                    if (gJ * 1 + 6) * 17 % 4 == ((gJ * 1 + 6) * 17 + 8) % 4 then
                        gq = gF_1:WaitForChild("SwordBuy")
                        SwordShopRequest = gF_1:WaitForChild("SwordShopRequest")
                    else
                        gF_1 = SwordShopRequest:WaitForChild("SwordBuy")
                        gq = SwordShopRequest:WaitForChild("SwordShopRequest")
                    end
                    gJ = (gJ + 3) % 112
                else
                    local gU_3 = (vector.create((gJ * 5 + 8) % 11 + 1, (gJ * 3 + 13) % 13 + 1, (gJ * 6 + 9) % 17 + 1))
                    local gV_3 = (vector.create((gJ * 2 + 6) % 11 + 1, (gJ * 2 + 12) % 13 + 1, (gJ * 10 + 1) % 17 + 1))
                    local gW_1 = (vector.create((gJ * 3 + 8) % 11 + 1, (gJ * 7 + 2) % 13 + 1, (gJ * 13 + 5) % 17 + 1))
                    gX = (vector.create((gJ * 5 + 3) % 5 + 1, (gJ * 2 + 1) % 7 + 1, (gJ * 3 + 1) % 9 + 1))
                    if vector.dot(vector.cross(gU_3, (vector.cross(gV_3, gW_1))), gX) == vector.dot(gV_3 * vector.dot(gU_3, gW_1) - gW_1 * vector.dot(gU_3, gV_3), gX) then
                        gH_1 = gF_1:WaitForChild("SwordShopState")
                    else
                        gF_1 = gH_1:WaitForChild("SwordShopState")
                    end
                    gJ = (gJ + 59) % 112
                end
            elseif gT_1 <= 6 then
                if gT_1 <= 5 then
                    local gU_4 = (vector.create((gJ * 4 + 7) % 11 + 1, (gJ * 7 + 7) % 13 + 1, (gJ * 3 + 13) % 17 + 1))
                    local j_ = vector.floor(gU_4) + vector.ceil(gU_4 * -1)
                    if vector.dot(j_, j_) == 0 then
                        gh = gF_1:WaitForChild("EnchantRoll")
                        gg = require(gD_1:WaitForChild("BigNum"))
                        gb = require(gD_1:WaitForChild("SwordConfig"))
                    else
                        gF_1 = gD_1:WaitForChild("EnchantRoll")
                        gb = require(gh:WaitForChild("BigNum"))
                        gg = require(gh:WaitForChild("SwordConfig"))
                    end
                    gJ = (gJ + 31) % 112
                else
                    if (gJ * 3 + 4) * 21 % 4 == ((gJ * 3 + 4) * 21 + 8) % 4 then
                        enchants = require(gD_1:WaitForChild("enchants"))
                        local NukeClientModules = gk:WaitForChild("PlayerScripts"):WaitForChild("NukeClientModules")
                        HeldNuke = require(NukeClientModules:WaitForChild("HeldNuke"))
                    else
                        require(HeldNuke:WaitForChild("enchants"))
                        gD_1 = enchants:WaitForChild("PlayerScripts"):WaitForChild("NukeClientModules")
                        gk = require(gD_1:WaitForChild("HeldNuke"))
                    end
                    gJ = (gJ + 87) % 112
                end
            else
                local km = bit32.rrotate(bit32.bxor(bit32.lrotate(gJ, 27), string.byte(tostring(enchants))), 15)
                if bit32.bxor(bit32.lrotate(bit32.bxor(km, 1451273504), 30), 362818376) ~= bit32.lrotate(km, 30) then
                    gy = nil
                    gu = nil
                    gB = {}
                    fZ = 22
                else
                    fZ = nil
                    gB = nil
                    gy = {}
                    gu = 22
                end
                gJ = (gJ + 87) % 112
            end
        elseif gT_1 <= 11 then
            if gT_1 <= 9 then
                if gT_1 <= 8 then
                    if (gJ * 2 + 8) * 10 % 3 == ((gJ * 2 + 8) * 10 + 2) % 3 then
                        gw.OnClientEvent:Connect(onOnClientEvent2)
                        ge.OnClientEvent:Connect(onOnClientEvent)
                        gH_1 = fn335
                        gr = fn397
                        f_ = fn355
                        gK_1 = fn461
                        f2 = fn11
                    else
                        gK_1.OnClientEvent:Connect(onOnClientEvent2)
                        gH_1.OnClientEvent:Connect(onOnClientEvent)
                        ge = fn335
                        f2 = fn397
                        gr = fn355
                        f_ = fn461
                        gw = fn11
                    end
                    gJ = (gJ + 3) % 112
                else
                    local gU_5 = (vector.create((gJ * 1 + 6) % 11 + 1, (gJ * 8 + 8) % 13 + 1, (gJ * 1 + 8) % 17 + 1))
                    local gV_4 = (vector.create((gJ * 1 + 3) % 11 + 1, (gJ * 2 + 3) % 13 + 1, (gJ * 12 + 17) % 17 + 1))
                    local gW_2 = (vector.create((gJ * 1 + 2) % 5 + 1, (gJ * 1 + 2) % 7 + 1, (gJ * 1 + 5) % 9 + 1))
                    if math.abs((vector.angle(gU_5, gV_4, gW_2))) - math.abs((vector.angle(gV_4, gU_5, gW_2))) == 1 then
                        f7 = fn202
                        gm = fn109
                        f9 = fn535
                    else
                        gm = fn202
                        f9 = fn109
                        f7 = fn535
                    end
                    gJ = (gJ + 31) % 112
                end
            elseif gT_1 <= 10 then
                if (gJ and not gJ and (not Players or Toggles) or (not Players or Toggles or gJ and Players)) and ((Toggles or not gJ) and (gJ or not Toggles) or not gJ and Toggles and (not gJ and gJ)) or (not Players and gJ or (gJ or not Players) or Toggles and gJ and (not Toggles and gJ) or ((gJ or not Toggles) and (not gJ or not Players) or (gJ or gJ or not Toggles and not gJ))) or not ((gJ and not gJ and (not Players or Toggles) or (not Players or Toggles or gJ and Players)) and ((Toggles or not gJ) and (gJ or not Toggles) or not gJ and Toggles and (not gJ and gJ)) or (not Players and gJ or (gJ or not Players) or Toggles and gJ and (not Toggles and gJ) or ((gJ or not Toggles) and (not gJ or not Players) or (gJ or gJ or not Toggles and not gJ)))) then
                    gI_1 = gf:CreateWindow({
                        Title = "Ouroboros Hub",
                        Footer = { { Text = fY, Copyable = true }, "|", gS },
                        Icon = 12645376577,
                        NotifySide = "Right",
                        ShowCustomCursor = false,
                        CornerRadius = 10
                    })
                else
                    gS = fY:CreateWindow({
                        NotifySide = "Right",
                        Footer = { "|", { Text = gf, Copyable = true }, gI_1 },
                        Icon = 12645376577,
                        ShowCustomCursor = false,
                        Title = "Ouroboros Hub",
                        CornerRadius = 10
                    })
                end
                gJ = (gJ + 59) % 112
            else
                if (gJ * 2 + 9) * 4 % 3 == ((gJ * 2 + 9) * 4 + 4) % 3 then
                    gI_1 = {
                        Settings = gQ:AddTab("Settings", "settings"),
                        Info = gQ:AddTab("Info", "info"),
                        Main = gQ:AddTab("Main", "swords")
                    }
                else
                    gQ = {
                        Info = gI_1:AddTab("Info", "info"),
                        Main = gI_1:AddTab("Main", "swords"),
                        Settings = gI_1:AddTab("Settings", "settings")
                    }
                end
                gJ = (gJ + 31) % 112
            end
        elseif gT_1 <= 13 then
            if gT_1 <= 12 then
                local gU_6 = (vector.create((gJ * 3 + 3) % 11 + 1, (gJ * 5 + 8) % 13 + 1, (gJ * 8 + 11) % 17 + 1))
                local gV_5 = (vector.create((gJ * 2 + 6) % 11 + 1, (gJ * 10 + 8) % 13 + 1, (gJ * 12 + 9) % 17 + 1))
                local j3 = vector.dot(gU_6, gV_5)
                if j3 * j3 <= vector.dot(gU_6, gU_6) * vector.dot(gV_5, gV_5) then
                    Players = game:GetService("Players")
                else
                    gS = game:GetService("Players")
                end
                gJ = (gJ + 59) % 112
            else
                local gU_7 = (vector.create((gJ * 7 + 6) % 11 + 1, (gJ * 11 + 9) % 13 + 1, (gJ * 15 + 5) % 17 + 1))
                local gV_6 = (vector.create((gJ * 7 + 5) % 11 + 1, (gJ * 8 + 5) % 13 + 1, (gJ * 13 + 4) % 17 + 1))
                local gW_3 = (vector.create((gJ * 2 + 8) % 11 + 1, (gJ * 3 + 11) % 13 + 1, (gJ * 10 + 11) % 17 + 1))
                if vector.dot(vector.cross(gU_7, gV_6), gW_3) == vector.dot(vector.cross(gV_6, gW_3), gU_7) then
                    gL_1 = game:GetService("ReplicatedStorage")
                else
                    ge = game:GetService("ReplicatedStorage")
                end
                gJ = (gJ + 87) % 112
            end
        else
            local gU_8 = (vector.create((gJ * 1 + 4) % 11 + 1, (gJ * 8 + 13) % 13 + 1, (gJ * 15 + 2) % 17 + 1))
            local gV_7 = (vector.create((gJ * 3 + 1) % 11 + 1, (gJ * 4 + 8) % 13 + 1, (gJ * 13 + 9) % 17 + 1))
            local gW_4 = (vector.create((gJ * 4 + 4) % 11 + 1, (gJ * 6 + 2) % 13 + 1, (gJ * 4 + 2) % 17 + 1))
            gX = (vector.create((gJ * 4 + 9) % 11 + 1, (gJ * 5 + 9) % 13 + 1, (gJ * 15 + 1) % 17 + 1))
            if vector.dot(vector.cross(gU_8, gV_7), (vector.cross(gW_4, gX))) == vector.dot(gU_8, gW_4) * vector.dot(gV_7, gX) - vector.dot(gU_8, gX) * vector.dot(gV_7, gW_4) then
                Workspace = game:GetService("Workspace")
            else
                gb = game:GetService("Workspace")
            end
            gJ = (gJ + 59) % 112
        end
    elseif gT_1 <= 21 then
        if gT_1 <= 18 then
            if gT_1 <= 16 then
                if gT_1 <= 15 then
                    if gJ * 23762109 + 12 + 1 <= gJ * 23762109 + 12 + 1 + 6 then
                        gR = game:GetService("UserInputService")
                        gn = game:GetService("VirtualUser")
                    else
                        gn = game:GetService("UserInputService")
                        gR = game:GetService("VirtualUser")
                    end
                    gJ = (gJ + 31) % 112
                else
                    gk = Players.LocalPlayer
                    gJ = (gJ + 59) % 112
                end
            elseif gT_1 <= 17 then
                local gU_9 = {
                    "vnlosniczsl",
                    "zwg",
                    "ufrlrazm",
                    "ajius",
                    "jxzytoevjd",
                    "ayb",
                    "anbjnysum",
                    "qwxnxknqf",
                    "tgfo",
                    "uhfc",
                    "wbvgyv",
                    "qbp"
                }
                local kk = gJ
                local gV_8 = gU_9[kk % 12 + 1]
                if gV_8:len() <= gV_8:reverse():rep(kk % 3 + 2):len() then
                    gG_1 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                else
                    gy = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                end
                gJ = (gJ + 3) % 112
            else
                if (gJ * 2 + 3) * 13 % 3 == ((gJ * 2 + 3) * 13 + 8) % 3 then
                    gG_1 = loadstring(game:HttpGet(gf .. "Library.lua"))()
                else
                    gf = loadstring(game:HttpGet(gG_1 .. "Library.lua"))()
                end
                gJ = (gJ + 87) % 112
            end
        elseif gT_1 <= 20 then
            if gT_1 <= 19 then
                local ko = bit32.rrotate(bit32.bxor(bit32.lrotate(gJ, 4), string.byte(tostring(fZ))), 9)
                if bit32.bxor(bit32.lrotate(bit32.bxor(ko, 3256288192), 10), 1544487688) ~= bit32.lrotate(ko, 10) then
                    gG_1 = loadstring(game:HttpGet(gO .. "addons/ThemeManager.lua"))()
                    gP = loadstring(game:HttpGet(gO .. "addons/SaveManager.lua"))()
                else
                    gP = loadstring(game:HttpGet(gG_1 .. "addons/ThemeManager.lua"))()
                    gO = loadstring(game:HttpGet(gG_1 .. "addons/SaveManager.lua"))()
                end
                gJ = (gJ + 59) % 112
            else
                local gU_10 = {
                    "wtq",
                    "vpzytdwwe",
                    "ivotnia",
                    "pqihffixsjp",
                    "moviw",
                    "kmsjzdihdbe",
                    "sqafywhkljw",
                    "xzkiz",
                    "khxj",
                    "hfk",
                    "mtprg"
                }
                local ka = gJ
                local gV_9 = gU_10[ka % 11 + 1]
                if gV_9:len() <= gV_9:reverse():rep(ka % 3 + 2):len() then
                    Toggles = gf.Toggles
                else
                    gf = Toggles.Toggles
                end
                gJ = (gJ + 59) % 112
            end
        else
            if (gM_1 or not gM_1 or (gK_1 or not f_) or not gy and not gS and (f_ and not gS)) and ((f_ and not gy or (gM_1 or gM_1)) and (not gK_1 and gS or (not f_ or not f_))) and not ((gM_1 or not gM_1 or (gK_1 or not f_) or not gy and not gS and (f_ and not gS)) and ((f_ and not gy or (gM_1 or gM_1)) and (not gK_1 and gS or (not f_ or not f_)))) then
                gf = Options.Options
            else
                Options = gf.Options
            end
            gJ = (gJ + 87) % 112
        end
    elseif gT_1 <= 25 then
        if gT_1 <= 23 then
            if gT_1 <= 22 then
                if gw and ge and (ge and gS) and (gS and gD_1 or (Drop or gu)) or not (gw and ge and (ge and gS) and (gS and gD_1 or (Drop or gu))) then
                    fY = "https://discord.gg/ehKVq7pf7v"
                else
                    gh = "https://discord.gg/ehKVq7pf7v"
                end
                gJ = (gJ + 3) % 112
            else
                local kr = bit32.rrotate(bit32.bxor(bit32.lrotate(gJ, 11), string.byte(tostring(gQ))), 6)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(kr, 2094295005), 2411794519), (bit32.bxor(bit32.band(kr, 2200672290), 3500465261))), 2411794519), 3500465261) == kr then
                    gA = "https://rscripts.net/@Ouroboros"
                else
                    gS = "https://rscripts.net/@Ouroboros"
                end
                gJ = (gJ + 31) % 112
            end
        elseif gT_1 <= 24 then
            if gJ * 124732039 + 4 + 7 <= gJ * 124732039 + 4 + 7 + 1 then
                gS = "Merge a Mob!"
            else
                gR = "Merge a Mob!"
            end
            gJ = (gJ + 59) % 112
        else
            if (gJ * 2 + 2) * 4 % 3 == ((gJ * 2 + 2) * 4 + 0) % 3 then
                gt = fn383
                gM_1 = fn534
            else
                gM_1 = fn383
                gt = fn534
            end
            gJ = (gJ + 87) % 112
        end
    elseif gT_1 <= 27 then
        if gT_1 <= 26 then
            local gT_2 = (vector.create((gJ * 1 + 7) % 11 + 1, (gJ * 3 + 5) % 13 + 1, (gJ * 12 + 9) % 17 + 1))
            local kq = vector.floor(gT_2) + vector.ceil(gT_2 * -1)
            if vector.dot(kq, kq) == 0 then
                gF_1 = gL_1:WaitForChild("NukeRemotes")
            else
                gL_1 = gF_1:WaitForChild("NukeRemotes")
            end
            gJ = (gJ + 3) % 112
        else
            local gT_3 = (vector.create((gJ * 7 + 8) % 11 + 1, (gJ * 5 + 13) % 13 + 1, (gJ * 10 + 16) % 17 + 1))
            local gU_11 = (vector.create((gJ * 1 + 7) % 11 + 1, (gJ * 1 + 5) % 13 + 1, (gJ * 2 + 3) % 17 + 1))
            local gV_10 = (vector.create((gJ * 2 + 2) % 11 + 1, (gJ * 1 + 9) % 13 + 1, (gJ * 15 + 16) % 17 + 1))
            local gW_5 = (vector.create((gJ * 6 + 4) % 11 + 1, (gJ * 1 + 1) % 13 + 1, (gJ * 2 + 10) % 17 + 1))
            if vector.dot(vector.cross(gT_3, gU_11), (vector.cross(gV_10, gW_5))) == vector.dot(gT_3, gV_10) * vector.dot(gU_11, gW_5) - vector.dot(gT_3, gW_5) * vector.dot(gU_11, gV_10) + 2 then
                gL_1 = gD_1:WaitForChild("NukeShared")
            else
                gD_1 = gL_1:WaitForChild("NukeShared")
            end
            gJ = (gJ + 59) % 112
        end
    else
        local gT_4 = (vector.create((gJ * 7 + 5) % 11 + 1, (gJ * 9 + 8) % 13 + 1, (gJ * 5 + 16) % 17 + 1))
        local gU_12 = (vector.create((gJ * 5 + 6) % 11 + 1, (gJ * 9 + 3) % 13 + 1, (gJ * 11 + 1) % 17 + 1))
        local gV_11 = (vector.create((gJ * 1 + 7) % 11 + 1, (gJ * 10 + 3) % 13 + 1, (gJ * 10 + 17) % 17 + 1))
        local gW_6 = (vector.create((gJ * 3 + 3) % 5 + 1, (gJ * 2 + 6) % 7 + 1, (gJ * 2 + 4) % 9 + 1))
        if vector.dot(vector.cross(gT_4, (vector.cross(gU_12, gV_11))), gW_6) == vector.dot(gU_12 * vector.dot(gT_4, gV_11) - gV_11 * vector.dot(gT_4, gU_12), gW_6) then
            Drop = gF_1:WaitForChild("Drop")
        else
            gF_1 = Drop:WaitForChild("Drop")
        end
        gJ = (gJ + 31) % 112
    end
until (gJ * 71 + 2) % 112 == 84
for i, v in ipairs({ gQ.Main, gQ.Settings }) do
    gM_1(v)
end
gH_2, gG_2, gi, gF_2, gc, gD_2, gI_2, Label, gp, gE_2, ga, f1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local gC_2 = 2
repeat
    local gJ_1 = (gC_2 * 5 + 6) % 8 + 1
    if gJ_1 <= 4 then
        if gJ_1 <= 2 then
            if gJ_1 <= 1 then
                local kv = bit32.rrotate(bit32.bxor(bit32.lrotate(gC_2, 5), string.byte(tostring(Label))), 11)
                if bit32.bxor(bit32.lrotate(bit32.bxor(kv, 414733820), 4), 2340773825) == bit32.lrotate(kv, 4) then
                    ga = fn365
                else
                    gG_2 = fn365
                end
                gC_2 = (gC_2 + 5) % 32
            else
                local gK_2 = {
                    "jcblsm",
                    "iidjds",
                    "hhakbqivswir",
                    "selgwopwmxtj",
                    "slquzhflnxfk",
                    "ngym",
                    "ydwupibow",
                    "ofeh",
                    "mrsiqlof",
                    "uqgsnykqmxwb",
                    "efhplvgnwz",
                    "aydlfalwsh",
                    "ifdjjctge",
                    "peclwle"
                }
                if gK_2[(gC_2 * 87 + 4) % 14 + 1] < gK_2[(gC_2 * 87 + 4) % 14 + 1] then
                    gH_2 = fn454
                else
                    f1 = fn454
                end
                gC_2 = (gC_2 + 21) % 32
            end
        elseif gJ_1 <= 3 then
            local gK_3 = (vector.create((gC_2 * 5 + 8) % 11 + 1, (gC_2 * 10 + 13) % 13 + 1, (gC_2 * 1 + 2) % 17 + 1))
            local gL_2 = (vector.create((gC_2 * 6 + 5) % 11 + 1, (gC_2 * 9 + 6) % 13 + 1, (gC_2 * 2 + 2) % 17 + 1))
            local gM_2 = (vector.create((gC_2 * 4 + 4) % 5 + 1, (gC_2 * 3 + 4) % 7 + 1, (gC_2 * 5 + 3) % 9 + 1))
            if math.abs((vector.angle(gK_3, gL_2, gM_2))) - math.abs((vector.angle(gL_2, gK_3, gM_2))) == 1 then
                gi = "#7fd47f"
            else
                gH_2 = "#7fd47f"
            end
            gC_2 = (gC_2 + 29) % 32
        else
            local kc = bit32.rrotate(bit32.bxor(bit32.lrotate(gC_2, 11), string.byte(tostring(gF_2))), 5)
            if bit32.bxor(bit32.lrotate(bit32.bxor(kc, 678840426), 14), 2451212829) ~= bit32.lrotate(kc, 14) then
                gp = "#6ec1ff"
            else
                gG_2 = "#6ec1ff"
            end
            gC_2 = (gC_2 + 13) % 32
        end
    elseif gJ_1 <= 6 then
        if gJ_1 <= 5 then
            local gK_4 = {
                "nhccedr",
                "oxajg",
                "ije",
                "qukrjdayjc",
                "lre",
                "lxp",
                "ghrz",
                "zzlljcy",
                "mwet",
                "ifghghdiiim",
                "kqnwd",
                "sdidhaynoc",
                "qte",
                "wjv",
                "rxpqadfyd"
            }
            if gK_4[(gC_2 * 10 + 84) % 15 + 1] < gK_4[(gC_2 * 10 + 84) % 15 + 1] then
                gD_2 = "#e8a34d"
            else
                gi = "#e8a34d"
            end
            gC_2 = (gC_2 + 29) % 32
        else
            local gK_5 = {
                "pfexfytrhiv",
                "dcjioxgfclt",
                "grweqpchcz",
                "cujydrfsna",
                "pzpjd",
                "zestlbcubz",
                "pddmggz",
                "zbhtdsksrkk"
            }
            local j1 = gC_2
            local gL_3 = gK_5[j1 % 8 + 1]
            if gL_3:len() <= gL_3:gsub("(.)", "%1%1", j1 % 3 % 2 + 1):len() then
                gF_2 = "#8b93a3"
                gc = "Unknown"
                pcall(fn91)
                gD_2 = gQ.Info:AddLeftGroupbox("Account", "circle-user")
                gD_2:AddLabel(f1("User", gk.Name, gH_2), true)
                gD_2:AddLabel(f1("Status", "Keyless", gH_2), true)
                gD_2:AddLabel(f1("Executor", gc, gH_2), true)
                gI_2 = gQ.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                gI_2:AddLabel(ga(gS .. " [" .. tostring(game.PlaceId) .. "]", gG_2), true)
                gI_2:AddLabel(f1("Place ID", tostring(game.PlaceId), gG_2), true)
                Label = gI_2:AddLabel(f1("Session time", "0s", gi), true)
            else
                gI_2 = "#8b93a3"
                gQ = "Unknown"
                pcall(fn91)
                ga = gc.Info:AddLeftGroupbox("Account", "circle-user")
                ga:AddLabel(gS("User", f1.Name, gF_2), true)
                ga:AddLabel(gS("Status", "Keyless", gF_2), true)
                ga:AddLabel(gS("Executor", "Unknown", gF_2), true)
                gi = gc.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                gi:AddLabel(gD_2(gH_2 .. " [" .. tostring(game.PlaceId) .. "]", Label), true)
                gi:AddLabel(gS("Place ID", tostring(game.PlaceId), Label), true)
                gk = gi:AddLabel(gS("Session time", "0s", gG_2), true)
            end
            gC_2 = (gC_2 + 21) % 32
        end
    elseif gJ_1 <= 7 then
        local gJ_2 = {
            "eofgyuhfkzz",
            "wkv",
            "myvcdwh",
            "deor",
            "zkr",
            "wfmmcsdgjc",
            "uti",
            "wovnvtmt",
            "dlmtzerobx",
            "evnzdekrgu",
            "wfnyrproii",
            "rebzfecus",
            "jiek",
            "awi"
        }
        if gJ_2[(gC_2 * 52 + 18) % 14 + 1] < gJ_2[(gC_2 * 52 + 18) % 14 + 1] then
            gc = tostring(game.JobId)
        else
            gp = tostring(game.JobId)
        end
        gC_2 = (gC_2 + 21) % 32
    else
        local gJ_3 = {
            "apwteqdm",
            "rxpwf",
            "icmmuj",
            "lvk",
            "neuxanh",
            "tqo",
            "numqs",
            "aopmygkdzd",
            "mcdowkej",
            "mujaoxxp"
        }
        local j2 = gC_2
        local gK_6 = gJ_3[j2 % 10 + 1]
        if gK_6:len() <= gK_6:gsub("(.)", "%1%1", j2 % 3 % 2 + 1):len() then
            gE_2 = #gp > 18
        else
            gp = #gE_2 > 18
        end
        gC_2 = (gC_2 + 21) % 32
    end
until (gC_2 * 9 + 13) % 32 == 31
if gE_2 then
    local gC_3 = 0
    repeat
        if (gC_3 * 3 + 8) * 5 % 4 == ((gC_3 * 3 + 8) * 5 + 9) % 4 then
            gp = string.sub(gE_2, 1, 18) .. "..."
        else
            gE_2 = string.sub(gp, 1, 18) .. "..."
        end
        gC_3 = (gC_3 + 2) % 4
    until (gC_3 * 3 + 1) % 4 == 3
end
local gC_4 = gE_2 or gp
f6, gl, gj, connection, connection2, f4 = nil, nil, nil, nil, nil, nil
gI_2:AddLabel(f1("Server", gC_4, gF_2), true)
gI_2:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
f6 = os.clock()
task.spawn(worker)
local ScriptsGroup = gQ.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(ga("Included in this hub", gF_2), true)
ScriptsGroup:AddLabel(ga(gS, gG_2), true)
local FeaturesGroup = gQ.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(ga("Auto Merge", gG_2), true)
FeaturesGroup:AddLabel(ga("Auto Buy Upgrades", gi), true)
FeaturesGroup:AddLabel(ga("Auto Rebirth", gH_2), true)
FeaturesGroup:AddLabel(ga("Auto Buy Swords", gG_2), true)
FeaturesGroup:AddLabel(ga("Auto Enchant", gi), true)
FeaturesGroup:AddLabel(ga("Misc Utilities", gF_2), true)
local SocialsGroup = gQ.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = gt })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = gQ.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = gt })
local FaqGroup = gQ.Info:AddRightGroupbox("FAQ", "circle-help")
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
local AutoMergeGroup = gQ.Main:AddLeftGroupbox("Auto Merge", "combine")
AutoMergeGroup:AddToggle("AutoMerge", { Text = "Auto Merge", Default = false })
AutoMergeGroup:AddSlider("MergeWalkSpeed", {
    Text = "Walk Speed",
    Default = 22,
    Min = 16,
    Max = 32,
    Rounding = 0,
    Suffix = " sps",
    Callback = onMergeWalkSpeed
})
local AutoBuyUpgradesGroup = gQ.Main:AddRightGroupbox("Auto Buy Upgrades", "trending-up")
AutoBuyUpgradesGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
AutoBuyUpgradesGroup:AddDropdown("UpgradeSelection", {
    Text = "Upgrades",
    Values = { "Tier", "Lock Base", "Max" },
    Default = {},
    Multi = true,
    Callback = onUpgradeSelection
})
local AutoRebirthGroup = gQ.Main:AddLeftGroupbox("Auto Rebirth", "refresh-cw")
AutoRebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local AutoBuySwordsGroup = gQ.Main:AddRightGroupbox("Auto Buy Swords", "sword")
AutoBuySwordsGroup:AddToggle("AutoBuySwords", { Text = "Auto Buy Swords", Default = false })
local AutoEnchantGroup = gQ.Main:AddLeftGroupbox("Auto Enchant", "sparkles")
AutoEnchantGroup:AddToggle("AutoEnchant", { Text = "Auto Enchant", Default = false })
local MenuGroup = gQ.Settings:AddLeftGroupbox("Menu", "wrench")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
gf.ToggleKeybind = Options.MenuKeybind
gl = tick()
gj = tick()
pcall(function()
    for i, v in ipairs(getconnections(gk.Idled)) do
        local iT = v
        pcall(function()
            iT:Disable()
        end)
    end
end)
f4 = fn430
connection = gR.InputBegan:Connect(onInputBegan)
connection2 = gR.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
task.spawn(antiAfkLoop)
MenuGroup:AddButton("Unload", onUnload)
gf:OnUnload(fn470)
gP:SetLibrary(gf)
gP:SetFolder("OuroborosHub")
gP:SaveDefault("Monochrome")
gO:SetLibrary(gf)
gO:IgnoreThemeSettings()
gO:SetIgnoreIndexes({ "MenuKeybind" })
gO:SetFolder("OuroborosHub/MergeAMob")
gO:BuildConfigSection(gQ.Settings)
gP:ApplyToTab(gQ.Settings)
gP:LoadDefault()
gO:LoadAutoloadConfig()
task.spawn(function()
    local jd = false
    repeat
        if not gf.Unloaded then
            task.wait(0.2)
            if Toggles.AutoMerge.Value then
                local i5 = ge()
                local i6 = f2()
                local i7 = gr()
                if i5 and i6 and i7 then
                    if i6.WalkSpeed ~= gu then
                        i6.WalkSpeed = gu
                    end
                    local i8_1 = HeldNuke.GetTier()
                    if i8_1 then
                        local i9_1 = HeldNuke.GetPart()
                        local ja = gm(i7, i8_1, i5.Position, i9_1)
                        if ja then
                            i6:MoveTo(ja.Position)
                        else
                            pcall(function()
                                Drop:FireServer(i5.CFrame)
                            end)
                        end
                    else
                        local i8_2 = f9(i7)
                        if i8_2 then
                            local i9_2 = gm(i7, i8_2, i5.Position)
                            if i9_2 then
                                i6:MoveTo(i9_2.Position)
                            end
                        end
                    end
                end
            end
        else
            jd = true
        end
    until jd
end)
task.spawn(function()
    while not gf.Unloaded do
        task.wait(1)
        if Toggles.AutoBuyUpgrades.Value and fZ and fZ.cash and fZ.upgrades then
            local je_1 = gg.deserialize(fZ.cash)
            for i, v in ipairs(gy) do
                local jn = v
                local jf = fZ.upgrades[jn]
                if jf and not jf.maxed then
                    local jg_1 = gg.deserialize(jf.cost)
                    if gg.gte(je_1, jg_1) then
                        pcall(function()
                            fX:FireServer(jn)
                        end)
                    end
                end
            end
        end
    end
end)
task.spawn(autoRebirthLoop)
task.spawn(function()
    while not gf.Unloaded do
        task.wait(2)
        if Toggles.AutoBuySwords.Value then
            pcall(function()
                SwordShopRequest:FireServer()
            end)
            task.wait(0.3)
            if gB and gB.cash then
                local jr_1 = gg.deserialize(gB.cash)
                for i, v in ipairs(gb.GetOrdered()) do
                    local jA = v
                    if not (gB.owned and gB.owned[jA.id]) then
                        local js_1 = gg.new(jA.price)
                        if gg.gte(jr_1, js_1) then
                            pcall(function()
                                gq:FireServer(jA.id)
                            end)
                        end
                    end
                end
            end
        end
    end
end)
task.spawn(autoEnchantLoop)
