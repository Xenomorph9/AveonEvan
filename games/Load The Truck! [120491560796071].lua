local fW
local gh
local fD
local gk
local fZ
local f1
local fG
local fJ
local gn
local client
local f7
local fP
local ga
local fS
local fV
local gg
local f0
local gm
local fF
local fI
local f3
local fL
local f6
local f9
local fO
local fR
local gc
local fX
local fE
local f_
local RebirthsInfo
local connection
local go
local f2
local fK
local f5
local fN
local connection2
local Options
local VirtualUser
local Toggles
local ge
local function fn8(W, X, Y)
    return string.format("<b>%s</b> %s %s", W, ga("-", "#5a6070"), ga(X, Y))
end
local function onUnload()
    f7:Unload()
end
local function fn36(cC)
    local DiscordGroup = cC:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = gn })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = gn })
end
local function onCopyJoinScript_JobID()
    local cT = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, fE)
    fN(cT, "Copied join script to clipboard")
end
local function fn39()
    fN(fS, "Copied Discord invite to clipboard")
end
local function fn118(aT, aU)
    local Deposits = aT:FindFirstChild("Deposits")
    local hx = Deposits and Deposits:FindFirstChild("Deposit" .. tostring(aU))
    if not hx then
        return false
    end
    for i, child in ipairs(hx:GetChildren()) do
        local hw_2 = child:IsA("Model") and child:GetAttribute("BoxType") and child:GetAttribute("InDeposit")
        if hw_2 then
            local hw_3 = not child:GetAttribute("CarriedBy") and not child:GetAttribute("ReservedByWorker")
            if hw_3 then
                return true
            end
        end
    end
    return false
end
local function onInputChanged(dr)
    local UserInputType = dr.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        fG = tick()
    end
end
local function fn140(aH)
    local ho = client:get({ "BoxTiers" })
    local hp = ho and ho[aH]
    local ho_1 = hp
    if hp then
        hp = ho_1.unlocked
    end
    if hp then
        return true
    end
    local ho_2 = client:get({ "Rebirths" }) or 0
    local ht = 1
    while true do
        if not (ht <= ho_2) then
            return false
        end
        local ho_3 = RebirthsInfo.Unlocks[ht]
        local hp_2 = ho_3 and ho_3.BoxTiers and table.find(ho_3.BoxTiers, aH)
        if hp_2 then
            break
        end
        ht += 1
    end
    return true
end
local function fn208()
    local he = client:get({ "Cash" }) or 0
    return he
end
local function fn250()
    local i3_1
    local i2_1
    if identifyexecutor then
        i3_1, i2_1 = identifyexecutor()
        local i4 = i3_1 ~= ""
        local i5 = type(i3_1) == "string" and i4
        if i5 then
            local i4_1 = type(i2_1) == "string" and i2_1 ~= "" and i3_1 .. " " .. i2_1
            f5 = i4_1 or i3_1
        end
    end
end
local function onInputBegan()
    fG = tick()
end
local function worker4()
    while not f7.Unloaded do
        task.wait(2)
        if gc("AntiAfk") then
            local jp = tick() - fG
            local jq = tick() - gm
            if jp >= 300 and jq >= 60 then
                pcall(f0)
            else
                if jp < 300 and jq >= 300 then
                    pcall(f0)
                end
            end
        end
    end
end
local function fn292()
    local iW = client:get({ "Rebirths" }) or 0
    local iW_1 = RebirthsInfo.Requirements[iW + 1]
    if not iW_1 then
        return
    end
    local iX_1 = fW()
    if iX_1 >= (iW_1.Cash or math.huge) then
        pcall(function()
            fZ:FireServer()
        end)
    end
end
local function worker3()
    while not f7.Unloaded do
        local jt = fR("FarmDelay", 0.2)
        if gc("AutoPickupBoxes") then
            local ju = fI.GetMaxBoxes(f1)
            local jv = f1:GetAttribute("BoxCount") or 0
            if jv < ju then
                pcall(fK)
            elseif gc("AutoLoadBoxes") then
                pcall(go)
            end
        elseif gc("AutoLoadBoxes") then
            pcall(go)
        end
        task.wait(jt)
    end
end
local function fn326()
    return fI.GetPlot()
end
local function fn332()
    local CurrentCamera = f6.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    gm = tick()
end
local function fn353()
    connection:Disconnect()
    connection2:Disconnect()
end
local function fn362(a2)
    local ActiveVehicles = f6:FindFirstChild("ActiveVehicles")
    local hG = not a2
    local hH = not ActiveVehicles
    local hL = if hH then 1 else 0
    local hJ = 1487 * hL + 4011 * (1 - hL)
    local hK = 318 * hL + 3424 * (1 - hL)
    if not ((hJ * 1606 + hK * 906 + hJ * hK) % 16777213 == 3149096) then
        hH = hG
    end
    if hH then
        return nil
    end
    for i, child in ipairs(ActiveVehicles:GetChildren()) do
        local hF_1 = child:GetAttribute("PlotName") == a2.Name and child:GetAttribute("OwnerUserId") == f1.UserId and child:GetAttribute("Parked") == true
        if hF_1 then
            return child
        end
    end
    return nil
end
local function fn365(A, B)
    return fF[A].Price < fF[B].Price
end
local function fn372(aD)
    local hm = fL()
    if not hm then
        return false
    end
    hm:PivotTo(CFrame.new(aD))
    return true
end
local function onRscripts()
    fN(fP, "Copied Rscripts profile to clipboard")
end
local function fn379(M, N)
    if setclipboard then
        setclipboard(M)
    elseif toclipboard then
        toclipboard(M)
    end
    f7:Notify(N)
end
local function fn403()
    local hS = fO()
    local hT = fL()
    if not hS or not hT then
        return
    end
    local CollectionParts = hS:FindFirstChild("CollectionParts")
    if not CollectionParts then
        return
    end
    local hU_1 = f1:GetAttribute("BoxCount") or 0
    local hU_2 = fI.GetMaxBoxes(f1)
    if hU_1 >= hU_2 then
        return
    end
    local h_ = 1
    while true do
        if h_ <= 5 then
            local h0 = h_
            local hV_2 = f1:GetAttribute("BoxCount") or 0
            if hV_2 >= hU_2 then
                break
            end
            if f3(hS, h0) then
                local hV_3 = CollectionParts:FindFirstChild("Collect" .. tostring(h0))
                local hW = hV_3 and hV_3:IsA("BasePart")
                if hW then
                    gh(hV_3.Position)
                    task.wait(0.25)
                end
            end
            h_ += 1
            continue
        end
        return
    end
    return
end
local function fn409(aq)
    local ha = Options[aq]
    return ha and ha.Value or {}
end
local function fn421()
    local Character = f1.Character
    if not Character then
        return nil
    end
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    if not HumanoidRootPart then
        return nil
    end
    return Character, HumanoidRootPart
end
local function worker2()
    while not f7.Unloaded do
        if gc("AutoBuyUpgrades") then
            pcall(gg)
        end
        if gc("AutoBuyHires") then
            pcall(f2)
        end
        if gc("AutoBuyBoxes") then
            pcall(fX)
        end
        if gc("AutoRebirth") then
            pcall(fD)
        end
        task.wait(fR("ShopDelay", 1))
    end
end
local function fn436(ak, al)
    local g7 = Options[ak]
    local g8 = g7 and tonumber(g7.Value)
    return g8 or al
end
local function fn439()
    local h2 = fO()
    local h3 = fL()
    if not h2 or not h3 then
        return
    end
    local h3_1 = (f1:GetAttribute("BoxCount"))
    local h9 = if h3_1 then 1 else 0
    local h7 = 2233 * h9 + 746 * (1 - h9)
    local h8 = 3466 * h9 + 92 * (1 - h9)
    if not ((h7 * 3093 + h8 * 129 + h7 * h8) % 16777213 == 15093361) then
        h3_1 = 0
    end
    if h3_1 <= 0 then
        return
    end
    local h3_2 = ge(h2)
    if not h3_2 then
        return
    end
    local h4_1 = h3_2:GetAttribute("StopIndex") or 1
    local DropOffParts = h2:FindFirstChild("DropOffParts")
    local h2_1 = DropOffParts and DropOffParts:FindFirstChild("DropOff" .. tostring(h4_1))
    local h2_2 = not h2_1 or not h2_1:IsA("BasePart")
    if h2_2 then
        return
    end
    gh(h2_1.Position)
    task.wait(0.3)
end
local function worker()
    local jb_1
    while true do
        task.wait(1)
        if f7.Unloaded then
            break
        end
        local ja = math.floor(os.clock() - f_)
        if ja < 60 then
            jb_1 = ja .. "s"
        elseif ja < 3600 then
            jb_1 = string.format("%dm %ds", ja // 60, ja % 60)
        else
            jb_1 = string.format("%dh %dm", ja // 3600, ja % 3600 // 60)
        end
        fJ:SetText(fV("Session time", jb_1, gk))
    end
end
local function fn450(af)
    local g4 = Toggles[af]
    return g4 ~= nil and g4.Value == true
end
local function fn483(T, U)
    return string.format('<font color="%s">%s</font>', U, T)
end
local function fn493()
    local ir = client:get({ "Workers" }) or 0
    local ir_1 = client:get({ "MaxWorkers" }) or 0
    if ir_1 <= 0 or ir >= ir_1 then
        return
    end
    local ir_3 = fI.GetHireWorkerPrice(ir)
    if fW() >= ir_3 then
        pcall(function()
            f9:FireServer()
        end)
    end
end
fD = nil
fE = nil
fF = nil
fG = nil
connection = nil
fI = nil
fJ = nil
fK = nil
fL = nil
client = nil
fN = nil
fO = nil
fP = nil
Options = nil
fR = nil
fS = nil
Toggles = nil
fV = nil
fW = nil
fX = nil
fZ = nil
f_ = nil
f0 = nil
f1 = nil
f2 = nil
f3 = nil
f5 = nil
f6 = nil
f7 = nil
connection2 = nil
f9 = nil
ga = nil
VirtualUser = nil
gc = nil
ge = nil
gg = nil
gh = nil
gk = nil
RebirthsInfo = nil
gm = nil
gn = nil
go = nil
local fU, fY, BoxTier, gd, gf, gi, gj
local gp_1, gp_3
local GameInfoGroup
local gv_1
local gu_1
local gt_1
local gs_1, gs_2
local gr_3, gr_4
gp_1, gt_1, gv_1, VirtualUser, f6, f1, gu_1, fS, fP, client, fI, fF, RebirthsInfo, gs_1, gd, f9, BoxTier, fZ, fU = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local gq = 1
local AccountGroup
repeat
    local gw_1 = (gq * 3 + 1) % 7 + 1
    if gw_1 <= 4 then
        if gw_1 <= 2 then
            if gw_1 <= 1 then
                local gx_1 = {
                    "locuxagwykrl",
                    "rxjocaq",
                    "jvpwifr",
                    "egwmurpqbza",
                    "matieskg",
                    "rttwcidt",
                    "itqmpysxdjv",
                    "ywgmugfxnbs"
                }
                if gx_1[(gq * 86 + 13) % 8 + 1] <= gx_1[(gq * 86 + 13) % 8 + 1] then
                    fS = "https://discord.gg/ehKVq7pf7v"
                    fP = "https://rscripts.net/@Ouroboros"
                    local DataService = require(gt_1:WaitForChild("DataService"))
                    client = DataService.client
                    fI = require(gt_1:WaitForChild("Modules"):WaitForChild("Formulas"))
                else
                    fI = "https://discord.gg/ehKVq7pf7v"
                    gt_1 = "https://rscripts.net/@Ouroboros"
                    fS = require(client:WaitForChild("DataService"))
                    fP = require(client:WaitForChild("Modules"):WaitForChild("Formulas"))
                end
                gq = (gq + 19) % 28
            else
                local gx_2 = (vector.create((gq * 5 + 9) % 11 + 1, (gq * 9 + 2) % 13 + 1, (gq * 5 + 14) % 17 + 1))
                local gy_1 = (vector.create((gq * 7 + 3) % 11 + 1, (gq * 1 + 10) % 13 + 1, (gq * 12 + 7) % 17 + 1))
                local j3 = vector.dot(gx_2, gy_1)
                if j3 * j3 >= vector.dot(gx_2, gx_2) * vector.dot(gy_1, gy_1) + 1 then
                    gt_1 = require(RebirthsInfo:WaitForChild("Modules"):WaitForChild("BoxTiersInfo"))
                    fF = require(RebirthsInfo:WaitForChild("Modules"):WaitForChild("RebirthsInfo"))
                else
                    fF = require(gt_1:WaitForChild("Modules"):WaitForChild("BoxTiersInfo"))
                    RebirthsInfo = require(gt_1:WaitForChild("Modules"):WaitForChild("RebirthsInfo"))
                end
                gq = (gq + 19) % 28
            end
        elseif gw_1 <= 3 then
            local gx_3 = (vector.create((gq * 2 + 9) % 11 + 1, (gq * 11 + 12) % 13 + 1, (gq * 3 + 2) % 17 + 1))
            local gy_2 = (vector.create((gq * 2 + 5) % 11 + 1, (gq * 8 + 2) % 13 + 1, (gq * 2 + 7) % 17 + 1))
            local gz_1 = (vector.create((gq * 3 + 1) % 11 + 1, (gq * 9 + 5) % 13 + 1, (gq * 15 + 14) % 17 + 1))
            if vector.dot(vector.cross(gx_3, gy_2), gz_1) == vector.dot(vector.cross(gy_2, gz_1), gx_3) + 4 then
                gt_1 = BoxTier:WaitForChild("Events")
                gs_1 = gt_1:WaitForChild("Upgrade")
                fZ = gt_1:WaitForChild("HireWorker")
                f9 = gt_1:WaitForChild("BoxTier")
                gd = gt_1:WaitForChild("Rebirth")
            else
                gs_1 = gt_1:WaitForChild("Events")
                gd = gs_1:WaitForChild("Upgrade")
                f9 = gs_1:WaitForChild("HireWorker")
                BoxTier = gs_1:WaitForChild("BoxTier")
                fZ = gs_1:WaitForChild("Rebirth")
            end
            gq = (gq + 12) % 28
        else
            if (gq * 3 + 1) * 9 % 4 == ((gq * 3 + 1) * 9 + 9) % 4 then
            else
                fU = {}
            end
            gq = (gq + 5) % 28
        end
    elseif gw_1 <= 6 then
        if gw_1 <= 5 then
            local jQ = bit32.rrotate(bit32.bxor(bit32.lrotate(gq, 2), string.byte(tostring(gt_1))), 3)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(jQ, 3891933089), 3697943524), (bit32.bxor(bit32.band(jQ, 403034206), 67695851))), 3697943524), 67695851) ~= jQ then
                fI = game:GetService("Players")
            else
                gp_1 = game:GetService("Players")
            end
            gq = (gq + 12) % 28
        else
            if (gs_1 and fZ and (not fZ and gs_1) or fZ and f1 and (not f1 or fZ)) and (f1 and f1 and (not fU and f1) and (not fU or fU or f1 and f1)) and not ((gs_1 and fZ and (not fZ and gs_1) or fZ and f1 and (not f1 or fZ)) and (f1 and f1 and (not fU and f1) and (not fU or fU or f1 and f1))) then
                fF = game:GetService("ReplicatedStorage")
            else
                gt_1 = game:GetService("ReplicatedStorage")
            end
            gq = (gq + 12) % 28
        end
    else
        if (gq * 3 + 7) * 9 % 4 == ((gq * 3 + 7) * 9 + 12) % 4 then
            gv_1 = game:GetService("UserInputService")
            VirtualUser = game:GetService("VirtualUser")
            f6 = game:GetService("Workspace")
            f1 = gp_1.LocalPlayer
            gu_1 = "Load The Truck"
        else
            gp_1 = game:GetService("UserInputService")
            f6 = game:GetService("VirtualUser")
            f1 = game:GetService("Workspace")
            gu_1 = VirtualUser.LocalPlayer
            gv_1 = "Load The Truck"
        end
        gq = (gq + 19) % 28
    end
until (gq * 3 + 8) % 28 == 25
for k, v in pairs(fF) do
    local gp_2 = type(v) == "table" and type(v.Price) == "number"
    if gp_2 and k ~= "Rainbow" then
        table.insert(fU, k)
    end
end
table.sort(fU, fn365)
gj = {}
for k in pairs(fI.UpgradesConfig) do
    table.insert(gj, k)
end
table.sort(gj)
gr_3, f7, Toggles, Options, gk, gp_3, fN, gn, ga, fV, gc, fR, gi, fW, fO, fL, gh, fY, f3, ge, fK, go, gg, f2, gf, fX, fD, gs_2 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if ((not fD and false or not fN and fN) and (not gp_3 and not fD or (fD or fN)) or gp_3 and 54 and (not fN and fD) and (fD and (gp_3 or not fN))) and not ((not fD and false or not fN and fN) and (not gp_3 and not fD or (fD or fN)) or gp_3 and 54 and (not fN and fD) and (fD and (gp_3 or not fN))) then
else
    gr_3 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
end
f7 = loadstring(game:HttpGet(gr_3 .. "Library.lua"))()
local gz_2 = loadstring(game:HttpGet(gr_3 .. "addons/ThemeManager.lua"))()
local gy_3 = loadstring(game:HttpGet(gr_3 .. "addons/SaveManager.lua"))()
Toggles = f7.Toggles
Options = f7.Options
fN = fn379
gn = fn39
ga = fn483
fV = fn8
local gw_2 = "#7fd47f"
local gt_2 = "#6ec1ff"
gk = "#e8a34d"
local gA = "#8b93a3"
gc = fn450
fR = fn436
gi = fn409
fW = fn208
fO = fn326
fL = fn421
gh = fn372
fY = fn140
f3 = fn118
ge = fn362
fK = fn403
go = fn439
gg = function()
    local id = gi("SelectedUpgrades")
    local ie = fW()
    for i, v in ipairs(gj) do
        local iq = v
        if id[iq] then
            local ig = fI.UpgradesConfig[iq]
            if ig then
                local ih = client:get({ "Upgrades", iq }) or 1
                if ih < ig.maxLevel then
                    local ig_1 = fI.GetUpgradeCashPrice(iq, ih)
                    if ie >= ig_1 then
                        pcall(function()
                            gd:FireServer(iq, "Cash")
                        end)
                        task.wait(0.15)
                        ie = fW()
                    end
                end
            end
        end
    end
end
f2 = fn493
gf = function()
    local iw = client:get({ "BoxTiers" })
    if not iw then
        return
    end
    local ix = -1
    local iv
    for i, v in ipairs(fU) do
        local iy_1 = iw[v]
        if iy_1 and iy_1.owned then
            local iy_2 = fF[v].Price or 0
            if iy_2 >= ix then
                ix = iy_2
                iv = v
            end
        end
    end
    if iv and iw[iv] and not iw[iv].equipped then
        pcall(function()
            BoxTier:FireServer("Equip", iv)
        end)
    end
end
fX = function()
    local iK = client:get({ "BoxTiers" })
    if not iK then
        return
    end
    local iL = fW()
    for i, v in ipairs(fU) do
        local iV = v
        local iM = iK[iV]
        local iN = fF[iV]
        local iO = iM and iN and not iM.owned and fY(iV)
        if iO then
            local iN_1 = iN.Price or 0
            if iN_1 > 0 and iL >= iN_1 then
                pcall(function()
                    BoxTier:FireServer("Buy", iV)
                end)
                task.wait(0.15)
                iL = fW()
            end
        end
    end
    gf()
end
fD = fn292
local Window = f7:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = fS, Copyable = true }, "|", gu_1 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local gx_4 = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gamepad-2"),
    Settings = Window:AddTab("Settings", "settings")
}
if ((gg or gw_2 or gy_3 and false) and ("#7fd47f" or (not gg or gy_3)) or (false or not fW) and (gg and gw_2) and (not f7 or gw_2 or (not f7 or not gy_3))) and not ((gg or gw_2 or gy_3 and false) and ("#7fd47f" or (not gg or gy_3)) or (false or not fW) and (gg and gw_2) and (not f7 or gw_2 or (not f7 or not gy_3))) then
    gg = fn36
else
    gs_2 = fn36
end
for k, v in gx_4 do
    gs_2(v)
end
f5, AccountGroup, GameInfoGroup, fJ, fE, gr_4 = nil, nil, nil, nil, nil, nil
local gp_5 = 8
repeat
    local gs_3 = (gp_5 * 2 + 0) % 3 + 1
    if gs_3 <= 2 then
        if gs_3 <= 1 then
            if (fJ or gp_5) and (GameInfoGroup and not fJ) and (not f5 or not gp_5 or (gp_5 or fE)) or not ((fJ or gp_5) and (GameInfoGroup and not fJ) and (not f5 or not gp_5 or (gp_5 or fE))) then
                gr_4 = #fE > 18
            else
                fE = #gr_4 > 18
            end
            gp_5 = (gp_5 + 14) % 24
        else
            local ke = bit32.rrotate(bit32.bxor(bit32.lrotate(gp_5, 3), string.byte(tostring(gr_4))), 8)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(ke, 144582519), 3023800447), (bit32.bxor(bit32.band(ke, 4150384776), 4078422082))), 3023800447), 4078422082) == ke then
                f5 = "Unknown"
                pcall(fn250)
                AccountGroup = gx_4.Info:AddLeftGroupbox("Account", "circle-user")
                AccountGroup:AddLabel(fV("User", f1.Name, gw_2), true)
                AccountGroup:AddLabel(fV("Status", "Keyless", gw_2), true)
                AccountGroup:AddLabel(fV("Executor", f5, gw_2), true)
                GameInfoGroup = gx_4.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                GameInfoGroup:AddLabel(ga(gu_1 .. " [" .. tostring(game.PlaceId) .. "]", gt_2), true)
                GameInfoGroup:AddLabel(fV("Place ID", tostring(game.PlaceId), gt_2), true)
                fJ = GameInfoGroup:AddLabel(fV("Session time", "0s", gk), true)
            else
                gx_4 = "Unknown"
                pcall(fn250)
                ga = fJ.Info:AddLeftGroupbox("Account", "circle-user")
                ga:AddLabel(gk("User", AccountGroup.Name, fV), true)
                ga:AddLabel(gk("Status", "Keyless", fV), true)
                ga:AddLabel(gk("Executor", "Unknown", fV), true)
                gw_2 = fJ.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                gw_2:AddLabel(GameInfoGroup(f1 .. " [" .. tostring(game.PlaceId) .. "]", gu_1), true)
                gw_2:AddLabel(gk("Place ID", tostring(game.PlaceId), gu_1), true)
                f5 = gw_2:AddLabel(gk("Session time", "0s", gt_2), true)
            end
            gp_5 = (gp_5 + 8) % 24
        end
    else
        local gs_4 = (vector.create((gp_5 * 5 + 5) % 11 + 1, (gp_5 * 7 + 6) % 13 + 1, (gp_5 * 3 + 12) % 17 + 1))
        local gC_1 = (vector.create((gp_5 * 6 + 5) % 11 + 1, (gp_5 * 3 + 11) % 13 + 1, (gp_5 * 5 + 14) % 17 + 1))
        local gD_1 = (vector.create((gp_5 * 4 + 9) % 11 + 1, (gp_5 * 11 + 10) % 13 + 1, (gp_5 * 13 + 8) % 17 + 1))
        if vector.dot(vector.cross(gs_4, gC_1), gD_1) == vector.dot(vector.cross(gC_1, gD_1), gs_4) then
            fE = tostring(game.JobId)
        else
            fJ = tostring(game.JobId)
        end
        gp_5 = (gp_5 + 23) % 24
    end
until (gp_5 * 17 + 12) % 24 == 1
if gr_4 then
    local gp_6 = 4
    repeat
        local jR = bit32.rrotate(bit32.bxor(bit32.lrotate(gp_6, 2), string.byte(tostring(gp_6))), 16)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(jR, 1571370347), 3007146300), (bit32.bxor(bit32.band(jR, 2723596948), 3644237278))), 3007146300), 3644237278) == jR then
            gr_4 = string.sub(fE, 1, 18) .. "..."
        else
            fE = string.sub(gr_4, 1, 18) .. "..."
        end
        gp_6 = (gp_6 + 0) % 8
    until (gp_6 * 7 + 0) % 8 == 4
end
local gp_7 = gr_4 or fE
f_, fG, gm, connection, connection2, f0 = nil, nil, nil, nil, nil, nil
GameInfoGroup:AddLabel(fV("Server", gp_7, gA), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
f_ = os.clock()
task.spawn(worker)
local ScriptsGroup = gx_4.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(ga("Included in this hub", gA), true)
ScriptsGroup:AddLabel(ga(gu_1, gt_2), true)
local FeaturesGroup = gx_4.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(ga("Auto Farm", gt_2), true)
FeaturesGroup:AddLabel(ga("Auto Buy", gk), true)
FeaturesGroup:AddLabel(ga("Auto Rebirth", gw_2), true)
FeaturesGroup:AddLabel(ga("Misc Utilities", gA), true)
local SocialsGroup = gx_4.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = gn })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = gx_4.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = gn })
local FaqGroup = gx_4.Info:AddRightGroupbox("FAQ", "circle-help")
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
local FarmGroup = gx_4.Main:AddLeftGroupbox("Farm", "package")
FarmGroup:AddToggle("AutoPickupBoxes", { Text = "Auto Pickup Boxes", Default = false })
FarmGroup:AddToggle("AutoLoadBoxes", { Text = "Auto Load Boxes", Default = false })
FarmGroup:AddSlider("FarmDelay", { Text = "Farm delay", Default = 0.2, Min = 0.05, Max = 2, Rounding = 2, Suffix = "s" })
local ShopGroup = gx_4.Main:AddRightGroupbox("Shop", "shopping-cart")
ShopGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
ShopGroup:AddDropdown("SelectedUpgrades", { Text = "Upgrades", Values = gj, Multi = true, AllowNull = true, Default = gj })
ShopGroup:AddToggle("AutoBuyHires", { Text = "Auto Buy Hires", Default = false })
ShopGroup:AddToggle("AutoBuyBoxes", { Text = "Auto Buy Boxes", Default = false })
ShopGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
ShopGroup:AddSlider("ShopDelay", { Text = "Shop delay", Default = 1, Min = 0.2, Max = 10, Rounding = 1, Suffix = "s" })
local MenuGroup = gx_4.Settings:AddLeftGroupbox("Menu", "menu")
f7.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton({ Text = "Unload", Func = onUnload })
gz_2:SetLibrary(f7)
gz_2:SetFolder("OuroborosHub")
gz_2:SaveDefault("Monochrome")
gz_2:ApplyToTab(gx_4.Settings)
gz_2:LoadDefault()
gy_3:SetLibrary(f7)
gy_3:IgnoreThemeSettings()
gy_3:SetIgnoreIndexes({ "MenuKeybind" })
gy_3:SetFolder("OuroborosHub/load-the-truck")
gy_3:BuildConfigSection(gx_4.Settings)
gy_3:LoadAutoloadConfig()
fG = tick()
gm = tick()
pcall(function()
    for i, v in ipairs(getconnections(f1.Idled)) do
        local jj = v
        pcall(function()
            jj:Disable()
        end)
    end
end)
f0 = fn332
connection = gv_1.InputBegan:Connect(onInputBegan)
connection2 = gv_1.InputChanged:Connect(onInputChanged)
if (not gm or ShopGroup) and (ShopGroup and ShopGroup) or (gm and not ShopGroup or gm and not ShopGroup) or not ((not gm or ShopGroup) and (ShopGroup and ShopGroup) or (gm and not ShopGroup or gm and not ShopGroup)) then
    f7:OnUnload(fn353)
    task.spawn(worker4)
    task.spawn(worker3)
    task.spawn(worker2)
    f7:Notify("Load The Truck loaded")
else
    f7:OnUnload(fn353)
    task.spawn(worker4)
    task.spawn(worker3)
    task.spawn(worker2)
    f7:Notify("Load The Truck loaded")
end
