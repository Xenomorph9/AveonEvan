local Options
local k2
local lr
local kN
local k8
local lu
local kQ
local lb
local kT
local KillPlayer
local kW
local lh
local connection
local lk
local lG
local Label
local Label3
local Toggles
local k4
local lq
local kM
local lw
local la
local kS
local HUD
local lg
local kY
local Guns
local connection2
local lI
local lm
local Label2
local lp
local lL
local kL
local k9
local kO
local Label4
local kR
local ky
local kU
local VirtualUser
local kB
local li
local lE
local ly
local k_
local ll
local Library
local lo
local function fn12(ce)
    local RollingFrame = HUD:FindFirstChild("RollingFrame")
    if not (RollingFrame and firesignal) then
        return
    end
    local n4 = ce and "AutoRollOn" or "AutoRollOff"
    local n3_2 = RollingFrame:FindFirstChild(n4)
    if n3_2 then
        pcall(firesignal, n3_2.Activated)
    end
    if not ce then
        return
    end
    local Hide = RollingFrame:FindFirstChild("Hide")
    if Hide then
        pcall(firesignal, Hide.Activated)
    end
end
local function worker7()
    while not Library.Unloaded do
        if kO("AutoEquipBest") then
            pcall(function()
                lI:FireServer()
            end)
        end
        task.wait(kB("EquipDelay", 5))
    end
end
local function worker4()
    while not Library.Unloaded do
        task.wait(2)
        if kO("AntiAfk") then
            local pz = tick() - lg
            local pA = tick() - k8
            if pz >= 300 and pA >= 60 then
                pcall(kR)
            else
                if pz < 300 and pA >= 300 then
                    pcall(kR)
                end
            end
        end
    end
end
local function worker()
    while not Library.Unloaded do
        local pc = kO("AutoEndRound") and k2 >= math.floor(kB("EndRoundWave", 25))
        if pc then
            pcall(function()
                KillPlayer:FireServer()
            end)
            Toggles.AutoEndRound:SetValue(false)
            Library:Notify("Ended round at wave " .. k2)
        end
        task.wait(1)
    end
end
local function onUnload()
    Library:Unload()
end
local function fn102()
    local TeleportZones = workspace:FindFirstChild("TeleportZones")
    if not TeleportZones then
        return nil
    end
    local oq = Options.QueueZone and Options.QueueZone.Value or ""
    local op_1 = TeleportZones:FindFirstChild(oq)
    if not op_1 then
        for i, child in TeleportZones:GetChildren() do
            local oo_1 = child:IsA("Model") and child:FindFirstChild("ZoneContainer")
            if oo_1 then
                op_1 = child
                break
            end
        end
    end
    local oo_2 = op_1 and op_1:FindFirstChild("ZoneContainer")
    return oo_2
end
local function fn109(bZ)
    local Handle = bZ:FindFirstChild("Handle")
    if Handle then
        return Handle.Position
    end
    local nQ_1 = lo()
    return nQ_1 and nQ_1.Position
end
local function fn110()
    local leaderstats = lw:FindFirstChild("leaderstats")
    local oS = leaderstats and leaderstats:FindFirstChild("Gems")
    local oR_1 = oS
    if oS then
        oS = oR_1.Value
    end
    return oS or 0
end
local function onOnClientEvent7(a2, a3)
    local mV = not (a3 and a3 < 0)
    if mV ~= false then
        mV = tonumber(a2)
    end
    if mV then
        k2 = math.floor(a2)
    end
end
local function onRscripts()
    lE(kM, "Copied Rscripts profile to clipboard")
end
local function fn163()
    Library.ScreenGui.Parent = lw:WaitForChild("PlayerGui")
end
local function worker2()
    while not Library.Unloaded do
        local pa = kO("AutoSkipWave") and kY
        if pa then
            pcall(function()
                lp:FireServer()
            end)
        end
        task.wait(kB("SkipDelay", 1))
    end
end
local function fn235(bk, bl)
    local na = Options[bk]
    local nb = na and tonumber(na.Value)
    local na_1 = nb
    local ni = if na_1 then 1 else 0
    local ng = 1880 * ni + 506 * (1 - ni)
    local nh = 3325 * ni + 1395 * (1 - ni)
    if not ((ng * 958 + nh * 990 + ng * nh) % 16777213 == 11343790) then
        na_1 = bl
    end
    return na_1
end
local function onOnClientEvent5(a9)
    if type(a9) ~= "table" then
        return
    end
    local m4 = 1
    while m4 <= 2 do
        local m6 = m4
        local mX = a9[m6]
        local mY = type(mX) == "table" and mX.name
        if mY then
            la[m6] = mX.name
        end
        m4 += 1
    end
end
local function onLeaveParty()
    lG:FireServer("LeaveParty")
end
local function fn272(am, an, ao)
    return string.format("<b>%s</b> %s %s", am, ll("-", "#5a6070"), ll(an, ao))
end
local function fn286()
    local nC_1
    local Character = lw.Character
    local nB = Character and Character:FindFirstChildOfClass("Humanoid")
    local nB_1
    if not nB then
        return nil
    end
    nC_1, nB_1 = nil, nil
    for i, child in lw.Backpack:GetChildren() do
        local nD = child:IsA("Tool") and Guns[child.Name]
        if nD then
            local nD_1 = nD.Damage or 0
            local nE_1 = not nC_1
            if not nE_1 then
                nE_1 = nD_1 > nB_1
            end
            if nE_1 then
                nC_1, nB_1 = child, nD_1
            end
        end
    end
    if nC_1 then
        nB:EquipTool(nC_1)
    end
    return kU()
end
local function fn294(ay)
    local mx = {}
    for k in ay do
        table.insert(mx, k)
    end
    table.sort(mx)
    return mx
end
local function onOnClientEvent(a0)
    if a0 == "CreateParty" then
        lh = true
    else
        if a0 == "LeaveParty" or a0 == "PartyCreated" or a0 == "JoinParty" then
            lh = false
        end
    end
end
local function fn319(ac, ad)
    if setclipboard then
        setclipboard(ac)
    elseif toclipboard then
        toclipboard(ac)
    end
    Library:Notify(ad)
end
local function fn326()
    lE(kQ, "Copied Discord invite to clipboard")
end
local function fn335(aj, ak)
    return string.format('<font color="%s">%s</font>', ak, aj)
end
local function onInputBegan()
    lg = tick()
end
local function fn348(b4, b5)
    local nT = {}
    for i, child in workspace:GetChildren() do
        local nU = child:IsA("Model") and child:GetAttribute("Health") and child:FindFirstChildOfClass("Humanoid")
        if nU then
            local nU_1 = child.PrimaryPart or child:FindFirstChild("Head") or child:FindFirstChild("HumanoidRootPart")
            local nV = nU_1
            if nU_1 then
                nU_1 = (nV.Position - b4).Magnitude <= b5
            end
            if nU_1 then
                table.insert(nT, nV)
            end
        end
    end
    return nT
end
local function onOnClientEvent2(aX)
    if type(aX) == "table" then
        for k, v in aX do
            lk[k] = v == 1
        end
    end
end
local function onInputChanged(eK)
    local UserInputType = eK.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        lg = tick()
    end
end
local function worker3()
    while not Library.Unloaded do
        task.wait(1)
        Label3:SetText(k9("Current wave", tostring(k2), kL))
        li:SetText(k9("Gems", tostring(k4()), kS))
        local oU = la[1] or "?"
        local oV = la[2] or "?"
        Label4:SetText(k9("Slots", oU .. " / " .. oV, kN))
    end
end
local function onOnClientEvent6(a7)
    kY = a7 ~= -1
end
local function onCreatePartyNow()
    lG:FireServer("CreateParty", math.floor(kB("QueuePlayers", 4)), Options.QueueMap.Value, Options.QueueMode.Value)
end
local function fn486()
    local Sell = HUD.Frames:FindFirstChild("Sell")
    local ol = Sell and Sell:FindFirstChild("ScrollingFrame")
    local oj_1 = ol
    if ol then
        ol = oj_1:GetChildren()
    end
    return ol or {}
end
local function fn493(bq)
    local nj = Options[bq]
    return nj and nj.Value or {}
end
local function fn522(bf)
    local m7 = Toggles[bf]
    return m7 ~= nil and m7.Value == true
end
local function onCopyJoinScript_JobID()
    lE(string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, lL), "Copied join script to clipboard")
end
local function fn556()
    local n9 = {}
    local Gifts = HUD.Frames:FindFirstChild("Gifts")
    if not Gifts then
        return n9
    end
    for i, descendant in Gifts:GetDescendants() do
        local oa_1 = descendant.Name:match("^Gift(%d+)$")
        local ob = oa_1 and descendant:IsA("Frame")
        if ob then
            n9[tonumber(oa_1)] = descendant
        end
    end
    return n9
end
local function onOnClientEvent3(aV)
    local mF = type(aV) == "table" and aV
    lm = mF or {}
end
local function fn655()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    k8 = tick()
end
local function fn661(cK)
    local DiscordGroup = cK:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = lu })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = lu })
end
local function worker6()
    while not Library.Unloaded do
        local pN = kO("AutoRebirth") and lq.cash >= lq.cost
        if pN then
            pcall(function()
                k_:FireServer()
            end)
        end
        task.wait(kB("RebirthDelay", 3))
    end
end
local function fn727()
    local nr_1
    local nq_1
    if type(_G.GetRollColumns) == "function" then
        nq_1, nr_1 = pcall(_G.GetRollColumns)
        local ns = nq_1 and tonumber(nr_1)
        if ns then
            return math.max(1, math.floor(nr_1))
        end
        return 1
    end
    return 1
end
local function fn742()
    local oK_1
    local oJ_1
    if identifyexecutor then
        oK_1, oJ_1 = identifyexecutor()
        local oL = oK_1 ~= ""
        local oM = type(oK_1) == "string" and oL
        if oM then
            local oL_1 = type(oJ_1) == "string" and oJ_1 ~= "" and oK_1 .. " " .. oJ_1
            kT = oL_1 or oK_1
        end
    end
end
local function fn750()
    connection:Disconnect()
    connection2:Disconnect()
    ly(false)
    print("Roll to Survive unloaded")
end
local function onOnClientEvent4(aQ)
    if type(aQ) == "table" then
        local mD = aQ.rebirths or lq.rebirths
        lq.rebirths = mD
        local mD_1 = aQ.cash or lq.cash
        lq.cash = mD_1
        local mD_2 = aQ.cost or lq.cost
        lq.cost = mD_2
    end
end
local function worker5()
    local pE_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local pD = math.floor(os.clock() - kW)
        if pD < 60 then
            pE_1 = pD .. "s"
        elseif pD < 3600 then
            pE_1 = string.format("%dm %ds", pD // 60, pD % 60)
        else
            pE_1 = string.format("%dh %dm", pD // 3600, pD % 3600 // 60)
        end
        ky:SetText(k9("Session time", pE_1, kL))
        if not lr then
            lb:SetText(k9("Cash", string.format("%d", math.floor(lq.cash)), kS))
            Label2:SetText(k9("Rebirths", tostring(lq.rebirths), kN))
            local pD_1 = lq.cost == math.huge and "?"
            local pE_2 = pD_1 or string.format("%d", math.floor(lq.cost))
            Label:SetText(k9("Next rebirth", pE_2, kL))
        end
    end
end
local function fn801()
    local Character = lw.Character
    local nv = Character and Character:FindFirstChildOfClass("Tool")
    local nu_1 = nv
    if nv then
        nv = Guns[nu_1.Name]
    end
    if nv then
        return nu_1
    end
    return nil
end
local function fn809()
    local Character = lw.Character
    local no = Character and Character:FindFirstChild("HumanoidRootPart")
    return no
end
ky = nil
kB = nil
connection = nil
Library = nil
kL = nil
kM = nil
kN = nil
kO = nil
kQ = nil
kR = nil
kS = nil
kT = nil
kU = nil
kW = nil
kY = nil
Label = nil
k_ = nil
k2 = nil
Label2 = nil
k4 = nil
k8 = nil
k9 = nil
la = nil
lb = nil
Label4 = nil
HUD = nil
KillPlayer = nil
lg = nil
lh = nil
li = nil
Guns = nil
local LoadInventory, kz, kA, kC, kE, kF, kG, kI, kJ, kK, ClaimDaily, GiftReady, kX, k0, BuyHealthUpgrade, k5, RollWeapon, k7, lf
lk = nil
ll = nil
lm = nil
Label3 = nil
lo = nil
lp = nil
lq = nil
lr = nil
lu = nil
lw = nil
ly = nil
VirtualUser = nil
lE = nil
connection2 = nil
lG = nil
Options = nil
lI = nil
Toggles = nil
lL = nil
local ls, lt, Upgrades, lx, lA, RunService, PurchaseMap, lK, lN, lQ, lR, lU, lV, lW, lX, lY, lZ, l_, l0, l1
local StatsGroup
local lS_1, lS_3
local lT_1, OuroborosHubGroup
local AutoEquipGroup, l8, AutoJoinerGroup
RunService, VirtualUser, lw = nil, nil, nil
local lM = game:GetService("Players")
local lO = game:GetService("ReplicatedStorage")
local lP = game:GetService("UserInputService")
RunService = game:GetService("RunService")
VirtualUser = game:GetService("VirtualUser")
lw = lM.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return lw:WaitForChild("PlayerGui")
    end
end
lN, lr, lS_1, lR, Guns, HUD, RollWeapon, k_, lX, kX, GiftReady, ClaimDaily, lW, kI, kG, kF, kC, kA, LoadInventory, lI, lG, PurchaseMap, lY, lx, Upgrades, lt, ls, lp, lV, lU, KillPlayer, k7, BuyHealthUpgrade, lT_1, lQ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
lM = 8
repeat
    lZ = (lM * 2 + 2) % 3 + 1
    if lZ <= 2 then
        if lZ <= 1 then
            lZ = (vector.create((lM * 2 + 4) % 11 + 1, (lM * 7 + 8) % 13 + 1, (lM * 11 + 5) % 17 + 1))
            l_ = (vector.create((lM * 5 + 5) % 11 + 1, (lM * 11 + 9) % 13 + 1, (lM * 5 + 2) % 17 + 1))
            l0 = (vector.create((lM * 5 + 7) % 11 + 1, (lM * 6 + 9) % 13 + 1, (lM * 7 + 15) % 17 + 1))
            l1 = (vector.create((lM * 4 + 3) % 5 + 1, (lM * 5 + 4) % 7 + 1, (lM * 3 + 2) % 9 + 1))
            if vector.dot(vector.cross(lZ, (vector.cross(l_, l0))), l1) == vector.dot(l_ * vector.dot(lZ, l0) - l0 * vector.dot(lZ, l_), l1) then
                lN = 83701237388482
            else
                lt = 83701237388482
            end
            lM = (lM + 11) % 24
        else
            lZ = {
                "mquyhkqlv",
                "gjky",
                "mmwfymmiqbj",
                "fjdzl",
                "cuucookdx",
                "rbcvmq",
                "vbymdyaavy",
                "vmmd",
                "gnlwvfhruqj"
            }
            local rI = lM
            l_ = lZ[rI % 9 + 1]
            if l_:len() <= l_:gsub("(.)", "%1%1", rI % 3 % 2 + 1):len() then
                lr = game.PlaceId == lN
            else
                lN = game.PlaceId == lr
            end
            lM = (lM + 23) % 24
        end
    else
        lZ = (vector.create((lM * 5 + 5) % 11 + 1, (lM * 10 + 3) % 13 + 1, (lM * 6 + 1) % 17 + 1))
        l_ = (vector.create((lM * 2 + 2) % 11 + 1, (lM * 1 + 1) % 13 + 1, (lM * 3 + 2) % 17 + 1))
        l0 = (vector.create((lM * 7 + 2) % 11 + 1, (lM * 7 + 2) % 13 + 1, (lM * 4 + 7) % 17 + 1))
        l1 = (vector.create((lM * 3 + 4) % 11 + 1, (lM * 1 + 11) % 13 + 1, (lM * 14 + 14) % 17 + 1))
        if vector.dot(vector.cross(lZ, l_), (vector.cross(l0, l1))) == vector.dot(lZ, l0) * vector.dot(l_, l1) - vector.dot(lZ, l1) * vector.dot(l_, l0) then
            lS_1 = lO:WaitForChild("Remotes")
            lR = lO:WaitForChild("Balancing")
            Guns = require(lR:WaitForChild("Guns"))
            HUD = lw:WaitForChild("PlayerGui"):WaitForChild("HUD")
        else
            lw = HUD:WaitForChild("Remotes")
            lO = HUD:WaitForChild("Balancing")
            lS_1 = require(lO:WaitForChild("Guns"))
            lR = Guns:WaitForChild("PlayerGui"):WaitForChild("HUD")
        end
        lM = (lM + 2) % 24
    end
until (lM * 1 + 6) % 24 == 2
if lr then
    lM = 6
    repeat
        lN = (lM * 1 + 0) % 3 + 1
        if lN <= 2 then
            if lN <= 1 then
                lN = (vector.create((lM * 7 + 4) % 11 + 1, (lM * 9 + 3) % 13 + 1, (lM * 7 + 1) % 17 + 1))
                lO = (vector.create((lM * 3 + 3) % 11 + 1, (lM * 1 + 11) % 13 + 1, (lM * 13 + 9) % 17 + 1))
                lZ = (vector.create((lM * 1 + 1) % 11 + 1, (lM * 7 + 2) % 13 + 1, (lM * 9 + 15) % 17 + 1))
                l_ = (vector.create((lM * 5 + 6) % 11 + 1, (lM * 1 + 3) % 13 + 1, (lM * 1 + 8) % 17 + 1))
                if vector.dot(vector.cross(lN, lO), (vector.cross(lZ, l_))) == vector.dot(lN, lZ) * vector.dot(lO, l_) - vector.dot(lN, l_) * vector.dot(lO, lZ) then
                    ls = lS_1:WaitForChild("FireGun")
                    lp = lS_1:WaitForChild("SkipWave")
                    lV = lS_1:WaitForChild("SkipVoteUpdate")
                    lU = lS_1:WaitForChild("WaveUpdate")
                    KillPlayer = lS_1:WaitForChild("KillPlayer")
                else
                    lU = KillPlayer:WaitForChild("FireGun")
                    lS_1 = KillPlayer:WaitForChild("SkipWave")
                    lp = KillPlayer:WaitForChild("SkipVoteUpdate")
                    lV = KillPlayer:WaitForChild("WaveUpdate")
                    ls = KillPlayer:WaitForChild("KillPlayer")
                end
                lM = (lM + 4) % 12
            else
                lN = (vector.create((lM * 4 + 1) % 11 + 1, (lM * 1 + 13) % 13 + 1, (lM * 10 + 9) % 17 + 1))
                lO = (vector.create((lM * 7 + 4) % 11 + 1, (lM * 10 + 10) % 13 + 1, (lM * 11 + 5) % 17 + 1))
                lZ = (vector.create((lM * 5 + 1) % 5 + 1, (lM * 2 + 6) % 7 + 1, (lM * 5 + 6) % 9 + 1))
                if math.abs((vector.angle(lN, lO, lZ))) - math.abs((vector.angle(lO, lN, lZ))) == 0 then
                    k7 = lS_1:WaitForChild("PlaceItem")
                    BuyHealthUpgrade = lS_1:WaitForChild("BuyHealthUpgrade")
                else
                    lS_1 = BuyHealthUpgrade:WaitForChild("PlaceItem")
                    k7 = BuyHealthUpgrade:WaitForChild("BuyHealthUpgrade")
                end
                lM = (lM + 7) % 12
            end
        else
            lN = {
                "lxgzus",
                "rmqocgfx",
                "nyzpbypqdg",
                "ybpo",
                "ukkx",
                "xvlpp",
                "skdbcjfna",
                "xqulrxpowym",
                "tyctbqkikb",
                "bolg",
                "xiqddwb",
                "sulfxexjq"
            }
            local sj = lM
            lO = lN[sj % 12 + 1]
            if lO:len() <= lO:gsub("(.)", "%1%1", sj % 3 % 2 + 1):len() then
                lT_1 = lS_1:WaitForChild("LoadSlots")
                lQ = lS_1:WaitForChild("ItemCostUpdate")
            else
                lS_1 = lQ:WaitForChild("LoadSlots")
                lT_1 = lQ:WaitForChild("ItemCostUpdate")
            end
            lM = (lM + 4) % 12
        end
    until (lM * 7 + 11) % 12 == 2
else
    lN = 24
    repeat
        lM = (lN * 1 + 5) % 7 + 1
        if lM <= 4 then
            if lM <= 2 then
                if lM <= 1 then
                    if lN * 82300533 + 9 + 5 <= lN * 82300533 + 9 + 5 + 1 then
                        Upgrades = require(lR:WaitForChild("Upgrades"))
                        lt = require(lR:WaitForChild("Maps"))
                    else
                        lt = require(Upgrades:WaitForChild("Upgrades"))
                        lR = require(Upgrades:WaitForChild("Maps"))
                    end
                    lN = (lN + 22) % 28
                else
                    local sy = bit32.rrotate(bit32.bxor(bit32.lrotate(lN, 9), string.byte(tostring(lN))), 11)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(sy, 2747807769), 30), 1760693766) ~= bit32.lrotate(sy, 30) then
                        lS_1 = RollWeapon:WaitForChild("RollWeapon")
                    else
                        RollWeapon = lS_1:WaitForChild("RollWeapon")
                    end
                    lN = (lN + 1) % 28
                end
            elseif lM <= 3 then
                lO = (vector.create((lN * 2 + 7) % 11 + 1, (lN * 2 + 4) % 13 + 1, (lN * 9 + 12) % 17 + 1))
                lQ = (vector.create((lN * 4 + 8) % 11 + 1, (lN * 7 + 8) % 13 + 1, (lN * 14 + 6) % 17 + 1))
                lZ = (vector.create((lN * 1 + 6) % 11 + 1, (lN * 3 + 4) % 13 + 1, (lN * 6 + 7) % 17 + 1))
                l_ = (vector.create((lN * 3 + 4) % 5 + 1, (lN * 3 + 4) % 7 + 1, (lN * 5 + 3) % 9 + 1))
                if vector.dot(vector.cross(lO, (vector.cross(lQ, lZ))), l_) == vector.dot(lQ * vector.dot(lO, lZ) - lZ * vector.dot(lO, lQ), l_) then
                    k_ = lS_1:WaitForChild("Rebirth")
                    lX = lS_1:WaitForChild("LoadRebirths")
                    kX = lS_1:WaitForChild("ClaimGift")
                    GiftReady = lS_1:WaitForChild("GiftReady")
                else
                    lS_1 = GiftReady:WaitForChild("Rebirth")
                    kX = GiftReady:WaitForChild("LoadRebirths")
                    lX = GiftReady:WaitForChild("ClaimGift")
                    k_ = GiftReady:WaitForChild("GiftReady")
                end
                lN = (lN + 8) % 28
            else
                lO = { "awpokxe", "ycdwtzsahp", "lqrcqx", "wsytdoy", "alnrkfcclo", "mywecj", "pczywesw", "fjjpmnv" }
                if lO[(lN * 41 + 97) % 8 + 1] < lO[(lN * 41 + 97) % 8 + 1] then
                    lW = ClaimDaily:WaitForChild("ClaimDaily")
                    kG = ClaimDaily:WaitForChild("QuestSync")
                    kF = ClaimDaily:WaitForChild("QuestComplete")
                    lS_1 = ClaimDaily:WaitForChild("PurchaseUpgrade")
                    kI = ClaimDaily:WaitForChild("PurchaseItem")
                else
                    ClaimDaily = lS_1:WaitForChild("ClaimDaily")
                    lW = lS_1:WaitForChild("QuestSync")
                    kI = lS_1:WaitForChild("QuestComplete")
                    kG = lS_1:WaitForChild("PurchaseUpgrade")
                    kF = lS_1:WaitForChild("PurchaseItem")
                end
                lN = (lN + 1) % 28
            end
        elseif lM <= 6 then
            if lM <= 5 then
                lM = {
                    "oitjbhfnj",
                    "tovnvu",
                    "nsi",
                    "kodgaukyb",
                    "erwgjbb",
                    "lfhwneweefo",
                    "xmhy",
                    "cjuzz",
                    "efhzepyieeh",
                    "whcl",
                    "bkyramqney",
                    "twsofhhkojt",
                    "mqhiatzjlbh",
                    "uam"
                }
                if lM[(lN * 75 + 105) % 14 + 1] < lM[(lN * 75 + 105) % 14 + 1] then
                    lS_1 = LoadInventory:WaitForChild("UseItem")
                    kC = LoadInventory:WaitForChild("SellWeapon")
                    kA = LoadInventory:WaitForChild("LoadInventory")
                else
                    kC = lS_1:WaitForChild("UseItem")
                    kA = lS_1:WaitForChild("SellWeapon")
                    LoadInventory = lS_1:WaitForChild("LoadInventory")
                end
                lN = (lN + 15) % 28
            else
                lM = (vector.create((lN * 4 + 1) % 11 + 1, (lN * 4 + 13) % 13 + 1, (lN * 10 + 3) % 17 + 1))
                lO = (vector.create((lN * 5 + 7) % 11 + 1, (lN * 7 + 1) % 13 + 1, (lN * 7 + 14) % 17 + 1))
                lQ = (vector.create((lN * 2 + 3) % 11 + 1, (lN * 8 + 2) % 13 + 1, (lN * 3 + 10) % 17 + 1))
                lZ = (vector.create((lN * 4 + 2) % 11 + 1, (lN * 6 + 4) % 13 + 1, (lN * 12 + 5) % 17 + 1))
                if vector.dot(vector.cross(lM, lO), (vector.cross(lQ, lZ))) == vector.dot(lM, lQ) * vector.dot(lO, lZ) - vector.dot(lM, lZ) * vector.dot(lO, lQ) + 3 then
                    lS_1 = PurchaseMap:WaitForChild("EquipBest")
                    lI = PurchaseMap:WaitForChild("QueueRemote")
                    lG = PurchaseMap:WaitForChild("PurchaseMap")
                else
                    lI = lS_1:WaitForChild("EquipBest")
                    lG = lS_1:WaitForChild("QueueRemote")
                    PurchaseMap = lS_1:WaitForChild("PurchaseMap")
                end
                lN = (lN + 22) % 28
            end
        else
            lM = (vector.create((lN * 3 + 3) % 11 + 1, (lN * 6 + 1) % 13 + 1, (lN * 8 + 5) % 17 + 1))
            lO = (vector.create((lN * 3 + 6) % 11 + 1, (lN * 5 + 8) % 13 + 1, (lN * 15 + 2) % 17 + 1))
            local rt = vector.cross(lM, lO)
            local ru = vector.dot(lM, lO)
            if vector.dot(rt, rt) + ru * ru == vector.dot(lM, lM) * vector.dot(lO, lO) then
                lY = lS_1:WaitForChild("LoadMaps")
                lx = require(lR:WaitForChild("Items"))
            else
                lx = lR:WaitForChild("LoadMaps")
                lS_1 = require(lY:WaitForChild("Items"))
            end
            lN = (lN + 8) % 28
        end
    until (lN * 13 + 1) % 28 == 26
end
kQ, kM, Library, Toggles, Options, kS, kN, kL, l0, kE, lE, lu, ll, k9 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
l_ = "Roll to Survive"
kQ = "https://discord.gg/ehKVq7pf7v"
kM = "https://rscripts.net/@Ouroboros"
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
pcall(fn163)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
lE = fn319
if ((not k9 or not kL) and (false and not k9) and (false and l0 or not Toggles and l_) and ((not kL and l0 or not l0 and not Toggles) and (Toggles and not l0 or (l0 or false))) or not Toggles and kL and (k9 and Toggles) and (not k9 and l_ and (not l0 or l_)) and (not k9 and not l0 and (not kL or Toggles) and (not kL and not Toggles or not k9 and false))) and not ((not k9 or not kL) and (false and not k9) and (false and l0 or not Toggles and l_) and ((not kL and l0 or not l0 and not Toggles) and (Toggles and not l0 or (l0 or false))) or not Toggles and kL and (k9 and Toggles) and (not k9 and l_ and (not l0 or l_)) and (not k9 and not l0 and (not kL or Toggles) and (not kL and not Toggles or not k9 and false))) then
    kN = fn326
    kS = fn335
    ll = fn272
    lu = "#7fd47f"
    k9 = "#6ec1ff"
else
    lu = fn326
    ll = fn335
    k9 = fn272
    kS = "#7fd47f"
    kN = "#6ec1ff"
end
kL = "#e8a34d"
l0 = "#8b93a3"
l1 = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic", "Secret", "Exclusive" }
kE = { "Cash", "Damage", "GunsEquipped", "Luck", "RollColumns", "Speed" }
local l2 = { "Easy", "Normal", "Hardcore" }
lZ = fn294
lQ = lx and lZ(lx)
lM = {}
lN = lQ or lM
lM = lt
local lz = lN
if lM then
    lM = lZ(lt)
end
lN = {}
lO = lM or lN
lR, lQ, lq, lm, lk, lh, la, k2, kY = nil, nil, nil, nil, nil, nil, nil, nil, nil
lM = 9
repeat
    lN = (lM * 2 + 0) % 3 + 1
    if lN <= 2 then
        if lN <= 1 then
            if (lq or lQ) and (lq and lm) or (lq and not lq or not lQ and lq) or not ((lq or lQ) and (lq and lm) or (lq and not lq or not lQ and lq)) then
                lR = lO
                lQ = {}
                lq = { rebirths = 0, cash = 0, cost = math.huge }
                lm = {}
                lk = {}
            else
                lm = lk
                lR = {}
                lO = { cost = math.huge, rebirths = 0, cash = 0 }
                lQ = {}
                lq = {}
            end
            lM = (lM + 17) % 24
        else
            lN = {
                "nhoqtalh",
                "jdgxjtfh",
                "cgjpkqiu",
                "sfp",
                "tezvbeulbyd",
                "smgiypgiubhr",
                "mmrngxsnj",
                "eyj",
                "rxjeumddpp",
                "xyyqbck",
                "wzofpzxeguhb",
                "fjfk",
                "isy",
                "wwfnvk"
            }
            if lN[(lM * 75 + 20) % 14 + 1] < lN[(lM * 75 + 20) % 14 + 1] then
                la = false
                lh = {}
            else
                lh = false
                la = {}
            end
            lM = (lM + 5) % 24
        end
    else
        if lM * 94503799 + 3 + 4 >= lM * 94503799 + 3 + 4 + 4 then
            kY = 0
            k2 = false
        else
            k2 = 0
            kY = false
        end
        lM = (lM + 8) % 24
    end
until (lM * 11 + 11) % 24 == 8
if lr then
    lM = 3
    repeat
        lN = (vector.create((lM * 6 + 8) % 11 + 1, (lM * 6 + 13) % 13 + 1, (lM * 11 + 2) % 17 + 1))
        lO = (vector.create((lM * 3 + 1) % 11 + 1, (lM * 5 + 1) % 13 + 1, (lM * 6 + 2) % 17 + 1))
        local lS_2 = (vector.create((lM * 4 + 6) % 11 + 1, (lM * 9 + 10) % 13 + 1, (lM * 5 + 12) % 17 + 1))
        lZ = (vector.create((lM * 5 + 6) % 5 + 1, (lM * 2 + 6) % 7 + 1, (lM * 1 + 3) % 9 + 1))
        if vector.dot(vector.cross(lN, (vector.cross(lO, lS_2))), lZ) == vector.dot(lO * vector.dot(lN, lS_2) - lS_2 * vector.dot(lN, lO), lZ) + 3 then
            lV.OnClientEvent:Connect(onOnClientEvent7)
            lT_1.OnClientEvent:Connect(onOnClientEvent6)
            lU.OnClientEvent:Connect(onOnClientEvent5)
        else
            lU.OnClientEvent:Connect(onOnClientEvent7)
            lV.OnClientEvent:Connect(onOnClientEvent6)
            lT_1.OnClientEvent:Connect(onOnClientEvent5)
        end
        lM = (lM + 5) % 8
    until (lM * 7 + 7) % 8 == 7
else
    for i, child in workspace:WaitForChild("TeleportZones"):GetChildren() do
        lM = child:IsA("Model") and child:FindFirstChild("ZoneContainer")
        if lM then
            table.insert(lQ, child.Name)
        end
    end
    lM = 7
    repeat
        lN = (vector.create((lM * 4 + 8) % 11 + 1, (lM * 8 + 10) % 13 + 1, (lM * 4 + 5) % 17 + 1))
        local sM = vector.floor(lN) + vector.ceil(lN * -1)
        if vector.dot(sM, sM) == 5 then
            table.sort(lY)
            lQ.OnClientEvent:Connect(onOnClientEvent4)
            lG.OnClientEvent:Connect(onOnClientEvent3)
            lX.OnClientEvent:Connect(onOnClientEvent2)
            lW.OnClientEvent:Connect(onOnClientEvent)
        else
            table.sort(lQ)
            lX.OnClientEvent:Connect(onOnClientEvent4)
            lW.OnClientEvent:Connect(onOnClientEvent3)
            lY.OnClientEvent:Connect(onOnClientEvent2)
            lG.OnClientEvent:Connect(onOnClientEvent)
        end
        lM = (lM + 5) % 8
    until (lM * 7 + 7) % 8 == 3
end
lO, lS_3, kO, kB, lA, lo, k5, kU, kz, k0, kJ, ly, lf, kK, lK = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
lN = 23
repeat
    lM = (lN * 5 + 2) % 6 + 1
    if lM <= 3 then
        if lM <= 2 then
            if lM <= 1 then
                if lN * 112542671 + 7 + 6 >= lN * 112542671 + 7 + 6 + 1 then
                    lK = fn12
                    kK = fn556
                    ly = fn486
                    lf = fn102
                else
                    ly = fn12
                    lf = fn556
                    kK = fn486
                    lK = fn102
                end
                lN = (lN + 41) % 48
            else
                if (lN * 2 + 2) * 16 % 3 == ((lN * 2 + 2) * 16 + 3) % 3 then
                    lO = Library:CreateWindow({
                        Title = "Ouroboros Hub",
                        Footer = kQ .. " | " .. l_,
                        Icon = 18657887261,
                        NotifySide = "Right",
                        ShowCustomCursor = false
                    })
                else
                    l_ = kQ:CreateWindow({
                        Icon = 18657887261,
                        NotifySide = "Right",
                        ShowCustomCursor = false,
                        Title = "Ouroboros Hub",
                        Footer = lO .. " | " .. Library
                    })
                end
                lN = (lN + 5) % 48
            end
        else
            if lN * 70072803 + 7 + 1 <= lN * 70072803 + 7 + 1 + 5 then
                lS_3 = { Info = lO:AddTab("Info", "info") }
            else
                lO = { Info = lS_3:AddTab("Info", "info") }
            end
            lN = (lN + 29) % 48
        end
    elseif lM <= 5 then
        if lM <= 4 then
            if ((kB and not kB or (kB or k5)) and ((not k5 or not kB) and (not kB and not kB)) or (k5 or not kB) and (kB and not kB) and ((not kB or not k5) and (not k5 and kB))) and not ((kB and not kB or (kB or k5)) and ((not k5 or not kB) and (not kB and not kB)) or (k5 or not kB) and (kB and not kB) and ((not kB or not k5) and (not k5 and kB))) then
                kK = fn522
            else
                kO = fn522
            end
            lN = (lN + 47) % 48
        else
            if lN * 27936395 + 8 + 4 >= lN * 27936395 + 8 + 4 + 6 then
                lo = fn235
                k5 = fn493
                kU = fn809
                kB = fn727
                lA = fn801
            else
                kB = fn235
                lA = fn493
                lo = fn809
                k5 = fn727
                kU = fn801
            end
            lN = (lN + 23) % 48
        end
    else
        if (lN * 2 + 3) * 13 % 3 == ((lN * 2 + 3) * 13 + 6) % 3 then
            kz = fn286
            k0 = fn109
            kJ = fn348
        else
            k0 = fn286
            kJ = fn109
            kz = fn348
        end
        lN = (lN + 41) % 48
    end
until (lN * 29 + 9) % 48 == 22
if lr then
    lM = 6
    repeat
        local rm = bit32.rrotate(bit32.bxor(bit32.lrotate(lM, 28), string.byte(tostring(lM))), 16)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(rm, 130157215), 846472273), (bit32.bxor(bit32.band(rm, 4164810080), 2497118512))), 846472273), 2497118512) == rm then
            lS_3.Combat = lO:AddTab("Combat", "crosshair")
            lS_3.Round = lO:AddTab("Round", "swords")
        else
            lO.Combat = lS_3:AddTab("Combat", "crosshair")
            lO.Round = lS_3:AddTab("Round", "swords")
        end
        lM = (lM + 6) % 8
    until (lM * 3 + 3) % 8 == 7
else
    lN = 3
    repeat
        if (lN * 2 + 7) * 13 % 3 == ((lN * 2 + 7) * 13 + 2) % 3 then
            lO.Main = lS_3:AddTab("Main", "dices")
            lO.Rewards = lS_3:AddTab("Rewards", "gift")
            lO.Shop = lS_3:AddTab("Shop", "shopping-bag")
            lO.Queue = lS_3:AddTab("Queue", "swords")
        else
            lS_3.Main = lO:AddTab("Main", "dices")
            lS_3.Rewards = lO:AddTab("Rewards", "gift")
            lS_3.Shop = lO:AddTab("Shop", "shopping-bag")
            lS_3.Queue = lO:AddTab("Queue", "swords")
        end
        lN = (lN + 2) % 8
    until (lN * 5 + 1) % 8 == 2
end
local lT_2 = nil
lM = 7
repeat
    local sf = bit32.rrotate(bit32.bxor(bit32.lrotate(lM, 31), string.byte(tostring(lT_2))), 3)
    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(sf, 3860874411), 1078599890), (bit32.bxor(bit32.band(sf, 434092884), 3367534998))), 1078599890), 3367534998) == sf then
        lS_3.Settings = lO:AddTab("Settings", "settings")
        lT_2 = fn661
    else
        lT_2.Settings = lS_3:AddTab("Settings", "settings")
        lO = fn661
    end
    lM = (lM + 3) % 8
until (lM * 5 + 5) % 8 == 7
for k, v in lS_3 do
    lT_2(v)
end
kT, lU, ky, lL, lO = nil, nil, nil, nil, nil
lN = 14
repeat
    local lT_3 = (lN * 1 + 2) % 3 + 1
    if lT_3 <= 2 then
        if lT_3 <= 1 then
            local lT_4 = {
                "sllvurew",
                "uzpfnrrbs",
                "adlcphzit",
                "wkujfiwcz",
                "mvr",
                "kewk",
                "pqlfh",
                "hvub",
                "vzbh",
                "kbohwl"
            }
            if lT_4[(lN * 16 + 95) % 10 + 1] <= lT_4[(lN * 16 + 95) % 10 + 1] then
                lO = #lL > 18
            else
                lL = #lO > 18
            end
            lN = (lN + 13) % 24
        else
            local rP = bit32.rrotate(bit32.bxor(bit32.lrotate(lN, 18), string.byte(tostring(ky))), 6)
            if bit32.bxor(bit32.lrotate(bit32.bxor(rP, 3152666387), 8), 3923710907) ~= bit32.lrotate(rP, 8) then
                pcall(fn742)
                kN = kT.Info:AddLeftGroupbox("Account", "circle-user")
                kN:AddLabel(lS_3("User", ll.Name, l_), true)
                kN:AddLabel(lS_3("Status", "Keyless", l_), true)
                kN:AddLabel(lS_3("Executor", "Unknown", l_), true)
                ky = kT.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                ky:AddLabel(kL(kS .. " [" .. tostring(game.PlaceId) .. "]", lw), true)
                ky:AddLabel(lS_3("Place ID", tostring(game.PlaceId), lw), true)
                lU = ky:AddLabel(lS_3("Session time", "0s", k9), true)
            else
                kT = "Unknown"
                pcall(fn742)
                lM = lS_3.Info:AddLeftGroupbox("Account", "circle-user")
                lM:AddLabel(k9("User", lw.Name, kS), true)
                lM:AddLabel(k9("Status", "Keyless", kS), true)
                lM:AddLabel(k9("Executor", kT, kS), true)
                lU = lS_3.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                lU:AddLabel(ll(l_ .. " [" .. tostring(game.PlaceId) .. "]", kN), true)
                lU:AddLabel(k9("Place ID", tostring(game.PlaceId), kN), true)
                ky = lU:AddLabel(k9("Session time", "0s", kL), true)
            end
            lN = (lN + 13) % 24
        end
    else
        local rT = bit32.rrotate(bit32.bxor(bit32.lrotate(lN, 28), string.byte(tostring(ky))), 2)
        if bit32.bxor(bit32.lrotate(bit32.bxor(rT, 794022591), 22), 2949371124) == bit32.lrotate(rT, 22) then
            lL = tostring(game.JobId)
        else
            lU = tostring(game.JobId)
        end
        lN = (lN + 10) % 24
    end
until (lN * 23 + 15) % 24 == 13
if lO then
    lM = 3
    repeat
        lN = (vector.create((lM * 3 + 4) % 11 + 1, (lM * 11 + 5) % 13 + 1, (lM * 3 + 10) % 17 + 1))
        local lT_5 = (vector.create((lM * 4 + 8) % 11 + 1, (lM * 3 + 5) % 13 + 1, (lM * 2 + 5) % 17 + 1))
        lV = (vector.create((lM * 6 + 7) % 11 + 1, (lM * 5 + 12) % 13 + 1, (lM * 15 + 11) % 17 + 1))
        if vector.dot(vector.cross(lN, lT_5), lV) == vector.dot(vector.cross(lT_5, lV), lN) + 2 then
            lL = string.sub(lO, 1, 18) .. "..."
        else
            lO = string.sub(lL, 1, 18) .. "..."
        end
        lM = (lM + 3) % 4
    until (lM * 1 + 3) % 4 == 1
end
lM = lO or lL
lV, OuroborosHubGroup, lO, lW = nil, nil, nil, nil
lN = 7
repeat
    lX = { "vzzizdkbjgd", "abtpfayl", "aithzc", "dlikkndtc", "pdc", "ctdvjwgkt", "kbtycv", "jvtenuhe" }
    local rQ = lN
    lY = lX[rQ % 8 + 1]
    if lY:len() >= lY:reverse():rep(rQ % 3 + 2):len() then
        lU = ll
        OuroborosHubGroup:AddLabel(lM("Server", lU, l_), true)
        OuroborosHubGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
        l0 = lO.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
        l0:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
        l0:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
        l0:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
        l0:AddButton({ Text = "Copy Discord Invite", Func = lW })
        lu = lO.Info:AddRightGroupbox("Scripts", "package")
        lu:AddLabel(lS_3("Included in this hub", l_), true)
        lu:AddLabel(lS_3(lV, k9), true)
        kN = lO.Info:AddRightGroupbox("Features", "list")
    else
        lV = lM
        lU:AddLabel(k9("Server", lV, l0), true)
        lU:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
        OuroborosHubGroup = lS_3.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
        OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
        OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
        OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
        OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = lu })
        lO = lS_3.Info:AddRightGroupbox("Scripts", "package")
        lO:AddLabel(ll("Included in this hub", l0), true)
        lO:AddLabel(ll(l_, kN), true)
        lW = lS_3.Info:AddRightGroupbox("Features", "list")
    end
    lN = (lN + 1) % 8
until (lN * 7 + 3) % 8 == 3
if lr then
    lM = 1
    repeat
        local rR = bit32.rrotate(bit32.bxor(bit32.lrotate(lM, 9), string.byte(tostring(lM))), 10)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(rR, 3505164471), 1491405485), (bit32.bxor(bit32.band(rR, 789802824), 3858392857))), 1491405485), 3858392857) == rR then
            lW:AddLabel(ll("Kill Aura", kN), true)
            lW:AddLabel(ll("Auto Skip Wave", kN), true)
            lW:AddLabel(ll("Auto Gem Items", kL), true)
            lW:AddLabel(ll("Auto End Round", kL), true)
            lW:AddLabel(ll("Misc Utilities", l0), true)
        else
            ll:AddLabel(lW("Kill Aura", l0), true)
            ll:AddLabel(lW("Auto Skip Wave", l0), true)
            ll:AddLabel(lW("Auto Gem Items", kN), true)
            ll:AddLabel(lW("Auto End Round", kN), true)
            ll:AddLabel(lW("Misc Utilities", kL), true)
        end
        lM = (lM + 0) % 8
    until (lM * 7 + 0) % 8 == 7
else
    lN = 1
    repeat
        lM = (vector.create((lN * 3 + 1) % 11 + 1, (lN * 7 + 8) % 13 + 1, (lN * 6 + 15) % 17 + 1))
        lO = (vector.create((lN * 5 + 7) % 11 + 1, (lN * 3 + 13) % 13 + 1, (lN * 7 + 15) % 17 + 1))
        local lT_7 = (vector.create((lN * 7 + 8) % 11 + 1, (lN * 6 + 3) % 13 + 1, (lN * 12 + 5) % 17 + 1))
        lU = (vector.create((lN * 4 + 6) % 5 + 1, (lN * 1 + 4) % 7 + 1, (lN * 3 + 2) % 9 + 1))
        if vector.dot(vector.cross(lM, (vector.cross(lO, lT_7))), lU) == vector.dot(lO * vector.dot(lM, lT_7) - lT_7 * vector.dot(lM, lO), lU) then
            lW:AddLabel(ll("Auto Roll", kN), true)
            lW:AddLabel(ll("Auto Rebirth", kN), true)
            lW:AddLabel(ll("Auto Claim Rewards", kL), true)
            lW:AddLabel(ll("Auto Shop and Sell", kL), true)
            lW:AddLabel(ll("Auto Boosts", kS), true)
            lW:AddLabel(ll("Auto Joiner", kS), true)
            lW:AddLabel(ll("Misc Utilities", l0), true)
        else
            ll:AddLabel(lW("Auto Roll", kL), true)
            ll:AddLabel(lW("Auto Rebirth", kL), true)
            ll:AddLabel(lW("Auto Claim Rewards", kS), true)
            ll:AddLabel(lW("Auto Shop and Sell", kS), true)
            ll:AddLabel(lW("Auto Boosts", l0), true)
            ll:AddLabel(lW("Auto Joiner", l0), true)
            ll:AddLabel(lW("Misc Utilities", kN), true)
        end
        lN = (lN + 1) % 4
    until (lN * 3 + 3) % 4 == 1
end
lO, lM, lb, Label2, Label = nil, nil, nil, nil, nil
local lT_8 = 5
repeat
    lN = (lT_8 * 1 + 0) % 3 + 1
    if lN <= 2 then
        if lN <= 1 then
            lN = (vector.create((lT_8 * 5 + 5) % 11 + 1, (lT_8 * 4 + 5) % 13 + 1, (lT_8 * 11 + 5) % 17 + 1))
            lU = (vector.create((lT_8 * 2 + 2) % 11 + 1, (lT_8 * 4 + 3) % 13 + 1, (lT_8 * 8 + 5) % 17 + 1))
            local rJ = vector.dot(lN, lU)
            if rJ * rJ >= vector.dot(lN, lN) * vector.dot(lU, lU) + 1 then
                lS_3:AddButton({ Text = "Discord", Func = lM })
                lS_3:AddButton({ Text = "Rscripts", Func = onRscripts })
                lO = lu.Info:AddRightGroupbox("FAQ", "circle-help")
            else
                lO:AddButton({ Text = "Discord", Func = lu })
                lO:AddButton({ Text = "Rscripts", Func = onRscripts })
                lM = lS_3.Info:AddRightGroupbox("FAQ", "circle-help")
            end
            lT_8 = (lT_8 + 19) % 24
        else
            lN = {
                "dnsfmusvk",
                "zhappe",
                "tgy",
                "hwwd",
                "tfbrbfmbo",
                "psns",
                "witxzbgg",
                "vgbiehqnk",
                "dntdf",
                "lpusc",
                "xlnljvlqb",
                "iqiuhxjsae"
            }
            local rU = lT_8
            lU = lN[rU % 12 + 1]
            if lU:len() >= lU:reverse():rep(rU % 3 + 2):len() then
                lM:AddLabel("Where do I get a good config?", true)
                lM:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
                lM:AddLabel("How do I import / export configs?", true)
                lM:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
                lM:AddLabel("How do I report bugs?", true)
                lM:AddLabel("Join the Discord and post it in the bugs channel.", true)
                lM:AddLabel("How do I make suggestions?", true)
                lM:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
                lM:AddLabel("How do I get help or updates?", true)
                lM:AddLabel("Join the Discord, updates and support are posted there first.", true)
            else
                lM:AddLabel("Where do I get a good config?", true)
                lM:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
                lM:AddLabel("How do I import / export configs?", true)
                lM:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
                lM:AddLabel("How do I report bugs?", true)
                lM:AddLabel("Join the Discord and post it in the bugs channel.", true)
                lM:AddLabel("How do I make suggestions?", true)
                lM:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
                lM:AddLabel("How do I get help or updates?", true)
                lM:AddLabel("Join the Discord, updates and support are posted there first.", true)
            end
            lT_8 = (lT_8 + 16) % 24
        end
    else
        lN = {
            "izwmiak",
            "vxppqulzuk",
            "nvhmxscb",
            "bykmid",
            "wtgtisguqq",
            "uuocyslira",
            "krs",
            "gunyftqwn",
            "tipseuhgo",
            "ygqvmbzjby"
        }
        if lN[(lT_8 * 83 + 75) % 10 + 1] <= lN[(lT_8 * 83 + 75) % 10 + 1] then
            lO = lS_3.Info:AddRightGroupbox("Socials", "link")
        else
            lS_3 = lO.Info:AddRightGroupbox("Socials", "link")
        end
        lT_8 = (lT_8 + 22) % 24
    end
until (lT_8 * 23 + 20) % 24 == 6
if lr then
    lO, Label3, lN, li, Label4, k4 = nil, nil, nil, nil, nil, nil
    lM = 1
    repeat
        lV = (lM * 2 + 0) % 3 + 1
        if lV <= 2 then
            if lV <= 1 then
                local rw = bit32.rrotate(bit32.bxor(bit32.lrotate(lM, 14), string.byte(tostring(Label3))), 17)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(rw, 1286071601), 1452887835), (bit32.bxor(bit32.band(rw, 3008895694), 3492492907))), 1452887835), 3492492907) == rw then
                    lN = lS_3.Round:AddLeftGroupbox("Gem Items", "gem")
                    lN:AddToggle("AutoGemItems", { Text = "Auto Place Gem Items", Default = false })
                    lN:AddDropdown("GemSlots", { Text = "Slots", Values = { "Slot 1", "Slot 2" }, Default = { "Slot 1" }, Multi = true })
                    lN:AddToggle("AutoHealthUpgrade", { Text = "Auto Buy Health Upgrade", Default = false })
                    lN:AddInput("GemReserve", { Text = "Keep Gem Reserve", Default = "0", Numeric = true, Finished = true })
                    lN:AddSlider("GemDelay", { Text = "Loop Delay", Default = 2, Min = 0.5, Max = 30, Rounding = 1 })
                    li = lN:AddLabel(k9("Gems", "0", kS), true)
                    Label4 = lN:AddLabel(k9("Slots", "?", kN), true)
                    k4 = fn110
                else
                    li = k4.Round:AddLeftGroupbox("Gem Items", "gem")
                    li:AddToggle("AutoGemItems", { Text = "Auto Place Gem Items", Default = false })
                    li:AddDropdown("GemSlots", { Default = { "Slot 1" }, Text = "Slots", Values = { "Slot 1", "Slot 2" }, Multi = true })
                    li:AddToggle("AutoHealthUpgrade", { Text = "Auto Buy Health Upgrade", Default = false })
                    li:AddInput("GemReserve", { Finished = true, Numeric = true, Text = "Keep Gem Reserve", Default = "0" })
                    li:AddSlider("GemDelay", { Default = 2, Rounding = 1, Max = 30, Text = "Loop Delay", Min = 0.5 })
                    kS = li:AddLabel(lN("Gems", "0", lS_3), true)
                    kN = li:AddLabel(lN("Slots", "?", Label4), true)
                    k9 = fn110
                end
                lM = (lM + 8) % 24
            else
                local sG = bit32.rrotate(bit32.bxor(bit32.lrotate(lM, 29), string.byte(tostring(Label3))), 14)
                if bit32.bxor(bit32.lrotate(bit32.bxor(sG, 2065562766), 0), 2065562766) == bit32.lrotate(sG, 0) then
                    task.spawn(worker3)
                    task.spawn(function()
                        local o3 = false
                        repeat
                            if not Library.Unloaded then
                                if kO("KillAura") then
                                    local oY = kU()
                                    local oZ = not oY and kO("AuraEquipBest")
                                    if oZ then
                                        oY = kz()
                                    end
                                    local oZ_4 = oY and k0(oY)
                                    local oX = oZ_4
                                    if oY and oX then
                                        local oZ_6 = Guns[oY.Name]
                                        local o_ = kJ(oX, kB("AuraRange", 150))
                                        local o0 = math.floor(kB("AuraTargets", 5))
                                        for k, v in o_ do
                                            local o9 = v
                                            local o__3 = k > o0 or Library.Unloaded or not kO("KillAura")
                                            if o__3 then
                                                break
                                            end
                                            pcall(function()
                                                ls:FireServer(oY.Name, oX, o9.Position - oX)
                                            end)
                                            local o__4 = kO("AuraUseGunCooldown") and oZ_6 and oZ_6.Cooldown
                                            if o__4 then
                                                task.wait(oZ_6.Cooldown)
                                            end
                                        end
                                    end
                                end
                                task.wait(kB("AuraDelay", 0.2))
                            else
                                o3 = true
                            end
                        until o3
                    end)
                    task.spawn(worker2)
                    task.spawn(worker)
                    task.spawn(function()
                        while not Library.Unloaded do
                            local pf = kB("GemReserve", 0)
                            if kO("AutoGemItems") then
                                local pg_3 = lA("GemSlots")
                                for i = 1, 2 do
                                    local pm = i
                                    local pe = la[pm]
                                    local ph = pe and pg_3["Slot " .. pm] and k4() > pf
                                    if ph then
                                        pcall(function()
                                            k7:FireServer(pe, pm)
                                        end)
                                        task.wait(0.2)
                                    end
                                end
                            end
                            local pg_4 = kO("AutoHealthUpgrade") and k4() > pf
                            if pg_4 then
                                pcall(function()
                                    BuyHealthUpgrade:FireServer()
                                end)
                            end
                            task.wait(kB("GemDelay", 2))
                        end
                    end)
                else
                    task.spawn(worker3)
                    task.spawn(function()
                        local o3 = false
                        repeat
                            if not Library.Unloaded then
                                if kO("KillAura") then
                                    local oY = kU()
                                    local oZ = not oY and kO("AuraEquipBest")
                                    if oZ then
                                        oY = kz()
                                    end
                                    local oZ_1 = oY and k0(oY)
                                    local oX = oZ_1
                                    if oY and oX then
                                        local oZ_3 = Guns[oY.Name]
                                        local o_ = kJ(oX, kB("AuraRange", 150))
                                        local o0 = math.floor(kB("AuraTargets", 5))
                                        for k, v in o_ do
                                            local o9 = v
                                            local o__1 = k > o0 or Library.Unloaded or not kO("KillAura")
                                            if o__1 then
                                                break
                                            end
                                            pcall(function()
                                                ls:FireServer(oY.Name, oX, o9.Position - oX)
                                            end)
                                            local o__2 = kO("AuraUseGunCooldown") and oZ_3 and oZ_3.Cooldown
                                            if o__2 then
                                                task.wait(oZ_3.Cooldown)
                                            end
                                        end
                                    end
                                end
                                task.wait(kB("AuraDelay", 0.2))
                            else
                                o3 = true
                            end
                        until o3
                    end)
                    task.spawn(worker2)
                    task.spawn(worker)
                    task.spawn(function()
                        while not Library.Unloaded do
                            local pf = kB("GemReserve", 0)
                            if kO("AutoGemItems") then
                                local pg_1 = lA("GemSlots")
                                for i = 1, 2 do
                                    local pm = i
                                    local pe = la[pm]
                                    local ph = pe and pg_1["Slot " .. pm] and k4() > pf
                                    if ph then
                                        pcall(function()
                                            k7:FireServer(pe, pm)
                                        end)
                                        task.wait(0.2)
                                    end
                                end
                            end
                            local pg_2 = kO("AutoHealthUpgrade") and k4() > pf
                            if pg_2 then
                                pcall(function()
                                    BuyHealthUpgrade:FireServer()
                                end)
                            end
                            task.wait(kB("GemDelay", 2))
                        end
                    end)
                end
                lM = (lM + 23) % 24
            end
        else
            lV = {
                "eaw",
                "msppvwhztbdg",
                "kfksojutizr",
                "iephlqumeiu",
                "jbhnnygr",
                "wefkioqcuca",
                "umiowp",
                "bilabozixf"
            }
            if lV[(lM * 47 + 22) % 8 + 1] < lV[(lM * 47 + 22) % 8 + 1] then
                lS_3 = k9.Combat:AddLeftGroupbox("Kill Aura", "crosshair")
                lS_3:AddToggle("KillAura", { Text = "Kill Aura", Default = false })
                lS_3:AddToggle("AuraEquipBest", { Text = "Auto Equip Best Gun", Default = true })
                lS_3:AddSlider("AuraRange", { Rounding = 0, Min = 20, Max = 500, Text = "Range", Default = 150 })
                lS_3:AddSlider("AuraTargets", { Min = 1, Text = "Targets Per Cycle", Rounding = 0, Max = 25, Default = 5 })
                lS_3:AddToggle("AuraUseGunCooldown", { Text = "Respect Gun Cooldown", Default = true })
                lS_3:AddSlider("AuraDelay", { Default = 0.2, Text = "Loop Delay", Rounding = 2, Max = 3, Min = 0.05 })
                lU = k9.Round:AddLeftGroupbox("Auto Skip Wave", "fast-forward")
                lU:AddToggle("AutoSkipWave", { Text = "Auto Skip Wave", Default = false })
                lU:AddSlider("SkipDelay", { Text = "Loop Delay", Default = 1, Max = 30, Rounding = 1, Min = 0.5 })
                kL = k9.Round:AddRightGroupbox("Auto End Round", "flag")
                kL:AddToggle("AutoEndRound", { Text = "Auto End Round At Wave", Default = false })
                kL:AddSlider("EndRoundWave", { Text = "End At Wave", Rounding = 0, Max = 200, Min = 1, Default = 25 })
                kL:AddLabel(Label3("Current wave", "0", lO), true)
            else
                lU = lS_3.Combat:AddLeftGroupbox("Kill Aura", "crosshair")
                lU:AddToggle("KillAura", { Text = "Kill Aura", Default = false })
                lU:AddToggle("AuraEquipBest", { Text = "Auto Equip Best Gun", Default = true })
                lU:AddSlider("AuraRange", { Text = "Range", Default = 150, Min = 20, Max = 500, Rounding = 0 })
                lU:AddSlider("AuraTargets", { Text = "Targets Per Cycle", Default = 5, Min = 1, Max = 25, Rounding = 0 })
                lU:AddToggle("AuraUseGunCooldown", { Text = "Respect Gun Cooldown", Default = true })
                lU:AddSlider("AuraDelay", { Text = "Loop Delay", Default = 0.2, Min = 0.05, Max = 3, Rounding = 2 })
                local AutoSkipWaveGroup = lS_3.Round:AddLeftGroupbox("Auto Skip Wave", "fast-forward")
                AutoSkipWaveGroup:AddToggle("AutoSkipWave", { Text = "Auto Skip Wave", Default = false })
                AutoSkipWaveGroup:AddSlider("SkipDelay", { Text = "Loop Delay", Default = 1, Min = 0.5, Max = 30, Rounding = 1 })
                lO = lS_3.Round:AddRightGroupbox("Auto End Round", "flag")
                lO:AddToggle("AutoEndRound", { Text = "Auto End Round At Wave", Default = false })
                lO:AddSlider("EndRoundWave", { Text = "End At Wave", Default = 25, Min = 1, Max = 200, Rounding = 0 })
                Label3 = lO:AddLabel(k9("Current wave", "0", kL), true)
            end
            lM = (lM + 5) % 24
        end
    until (lM * 13 + 17) % 24 == 18
else
    l8, AutoEquipGroup, StatsGroup, l0, l_, lZ, lY, lX, lW, AutoJoinerGroup = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
    lV = 16
    repeat
        lM = (lV * 9 + 8) % 11 + 1
        if lM <= 6 then
            if lM <= 3 then
                if lM <= 2 then
                    if lM <= 1 then
                        lN = { "esbzkzghldj", "ems", "dkkam", "fmakanuhrzpv", "nsc", "ujvknodp", "ntffdxlh", "tcpgkagopy" }
                        if lN[(lV * 23 + 70) % 8 + 1] < lN[(lV * 23 + 70) % 8 + 1] then
                            Label:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
                            Label:AddSlider("EquipDelay", { Text = "Loop Delay", Rounding = 1, Max = 60, Default = 5, Min = 1 })
                            kS = StatsGroup.Main:AddRightGroupbox("Auto Rebirth", "rotate-ccw")
                            kS:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
                            kS:AddSlider("RebirthDelay", { Rounding = 1, Max = 60, Text = "Loop Delay", Min = 1, Default = 3 })
                            kL = StatsGroup.Main:AddRightGroupbox("Stats", "chart-line")
                            kL:AddLabel(kN("Cash", "0", k9), true)
                            lS_3 = kL:AddLabel(kN("Rebirths", "0", AutoEquipGroup), true)
                            lb = kL:AddLabel(kN("Next rebirth", "0", Label2), true)
                        else
                            AutoEquipGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
                            AutoEquipGroup:AddSlider("EquipDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
                            local AutoRebirthGroup = lS_3.Main:AddRightGroupbox("Auto Rebirth", "rotate-ccw")
                            AutoRebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
                            AutoRebirthGroup:AddSlider("RebirthDelay", { Text = "Loop Delay", Default = 3, Min = 1, Max = 60, Rounding = 1 })
                            StatsGroup = lS_3.Main:AddRightGroupbox("Stats", "chart-line")
                            lb = StatsGroup:AddLabel(k9("Cash", "0", kS), true)
                            Label2 = StatsGroup:AddLabel(k9("Rebirths", "0", kN), true)
                            Label = StatsGroup:AddLabel(k9("Next rebirth", "0", kL), true)
                        end
                        lV = (lV + 16) % 44
                    else
                        lN = (vector.create((lV * 2 + 5) % 11 + 1, (lV * 1 + 9) % 13 + 1, (lV * 4 + 15) % 17 + 1))
                        lO = (vector.create((lV * 7 + 2) % 11 + 1, (lV * 8 + 9) % 13 + 1, (lV * 7 + 1) % 17 + 1))
                        local lT_10 = (vector.create((lV * 6 + 9) % 11 + 1, (lV * 7 + 1) % 13 + 1, (lV * 9 + 15) % 17 + 1))
                        if vector.dot(vector.cross(lN, lO), lT_10) == vector.dot(vector.cross(lO, lT_10), lN) then
                            l0 = lS_3.Rewards:AddLeftGroupbox("Auto Claim Gifts", "gift")
                        else
                            lS_3 = l0.Rewards:AddLeftGroupbox("Auto Claim Gifts", "gift")
                        end
                        lV = (lV + 16) % 44
                    end
                else
                    local rn = bit32.rrotate(bit32.bxor(bit32.lrotate(lV, 29), string.byte(tostring(lZ))), 12)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(rn, 2121336972), 26), 838452258) ~= bit32.lrotate(rn, 26) then
                        l_:AddToggle("AutoGifts", { Text = "Auto Claim Gifts", Default = false })
                        l_:AddSlider("GiftDelay", { Default = 5, Max = 60, Min = 1, Text = "Loop Delay", Rounding = 1 })
                        lS_3 = l0.Rewards:AddLeftGroupbox("Auto Claim Daily Rewards", "calendar-check")
                    else
                        l0:AddToggle("AutoGifts", { Text = "Auto Claim Gifts", Default = false })
                        l0:AddSlider("GiftDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
                        l_ = lS_3.Rewards:AddLeftGroupbox("Auto Claim Daily Rewards", "calendar-check")
                    end
                    lV = (lV + 5) % 44
                end
            elseif lM <= 5 then
                if lM <= 4 then
                    local rX = bit32.rrotate(bit32.bxor(bit32.lrotate(lV, 9), string.byte(tostring(lW))), 3)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(rX, 1400111195), 10), 3489754445) == bit32.lrotate(rX, 10) then
                        l_:AddToggle("AutoDaily", { Text = "Auto Claim Daily Rewards", Default = false })
                        l_:AddSlider("DailyDelay", { Text = "Loop Delay", Default = 10, Min = 1, Max = 120, Rounding = 1 })
                        lZ = lS_3.Rewards:AddRightGroupbox("Auto Claim Quests", "scroll-text")
                    else
                        lZ:AddToggle("AutoDaily", { Text = "Auto Claim Daily Rewards", Default = false })
                        lZ:AddSlider("DailyDelay", { Text = "Loop Delay", Default = 10, Max = 120, Rounding = 1, Min = 1 })
                        lS_3 = l_.Rewards:AddRightGroupbox("Auto Claim Quests", "scroll-text")
                    end
                    lV = (lV + 16) % 44
                else
                    lN = (vector.create((lV * 3 + 4) % 11 + 1, (lV * 2 + 1) % 13 + 1, (lV * 6 + 15) % 17 + 1))
                    lO = (vector.create((lV * 3 + 1) % 11 + 1, (lV * 8 + 9) % 13 + 1, (lV * 15 + 4) % 17 + 1))
                    local lT_11 = (vector.create((lV * 3 + 4) % 5 + 1, (lV * 5 + 1) % 7 + 1, (lV * 5 + 1) % 9 + 1))
                    if math.abs((vector.angle(lN, lO, lT_11))) - math.abs((vector.angle(lO, lN, lT_11))) == 4 then
                        lY:AddToggle("AutoQuests", { Text = "Auto Claim Quests", Default = false })
                        lY:AddSlider("QuestDelay", { Default = 5, Max = 60, Min = 1, Rounding = 1, Text = "Loop Delay" })
                        lS_3 = lZ.Shop:AddLeftGroupbox("Auto Buy Shop", "shopping-cart")
                    else
                        lZ:AddToggle("AutoQuests", { Text = "Auto Claim Quests", Default = false })
                        lZ:AddSlider("QuestDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
                        lY = lS_3.Shop:AddLeftGroupbox("Auto Buy Shop", "shopping-cart")
                    end
                    lV = (lV + 27) % 44
                end
            else
                lN = (vector.create((lV * 5 + 2) % 11 + 1, (lV * 1 + 2) % 13 + 1, (lV * 8 + 17) % 17 + 1))
                lO = (vector.create((lV * 1 + 8) % 11 + 1, (lV * 7 + 2) % 13 + 1, (lV * 15 + 9) % 17 + 1))
                local sK = vector.cross(lN, lO)
                local sL = vector.dot(lN, lO)
                if vector.dot(sK, sK) + sL * sL == vector.dot(lN, lN) * vector.dot(lO, lO) + 4 then
                    lX:AddToggle("AutoUpgrades", { Text = "Auto Buy Upgrades", Default = false })
                    lX:AddDropdown("UpgradeTargets", { Multi = true, Values = lS_3, Default = { "Luck", "RollColumns" }, Text = "Upgrades" })
                    lX:AddSlider("UpgradeDelay", { Default = 3, Rounding = 1, Min = 0.5, Text = "Loop Delay", Max = 60 })
                    kE = lY.Shop:AddRightGroupbox("Auto Sell", "banknote")
                else
                    lY:AddToggle("AutoUpgrades", { Text = "Auto Buy Upgrades", Default = false })
                    lY:AddDropdown("UpgradeTargets", { Text = "Upgrades", Values = kE, Default = { "Luck", "RollColumns" }, Multi = true })
                    lY:AddSlider("UpgradeDelay", { Text = "Loop Delay", Default = 3, Min = 0.5, Max = 60, Rounding = 1 })
                    lX = lS_3.Shop:AddRightGroupbox("Auto Sell", "banknote")
                end
                lV = (lV + 5) % 44
            end
        elseif lM <= 9 then
            if lM <= 8 then
                if lM <= 7 then
                    lN = (vector.create((lV * 4 + 4) % 11 + 1, (lV * 3 + 3) % 13 + 1, (lV * 7 + 8) % 17 + 1))
                    local rK = vector.floor(lN) + vector.ceil(lN * -1)
                    if vector.dot(rK, rK) == 5 then
                        lS_3:AddToggle("AutoSell", { Text = "Auto Sell Weapons", Default = false })
                        lS_3:AddDropdown("SellRarities", { Text = "Rarities", Default = { "Uncommon", "Rare", "Common" }, Multi = true, Values = lX })
                        lS_3:AddSlider("SellDelay", { Default = 5, Max = 60, Rounding = 1, Text = "Loop Delay", Min = 1 })
                        l1 = lW.Shop:AddLeftGroupbox("Auto Buy Boosts", "flame")
                    else
                        lX:AddToggle("AutoSell", { Text = "Auto Sell Weapons", Default = false })
                        lX:AddDropdown("SellRarities", { Text = "Rarities", Values = l1, Default = { "Common", "Uncommon", "Rare" }, Multi = true })
                        lX:AddSlider("SellDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
                        lW = lS_3.Shop:AddLeftGroupbox("Auto Buy Boosts", "flame")
                    end
                    lV = (lV + 5) % 44
                else
                    lN = (vector.create((lV * 1 + 9) % 11 + 1, (lV * 9 + 5) % 13 + 1, (lV * 6 + 1) % 17 + 1))
                    lO = (vector.create((lV * 7 + 4) % 11 + 1, (lV * 1 + 7) % 13 + 1, (lV * 6 + 15) % 17 + 1))
                    local lT_12 = (vector.create((lV * 5 + 2) % 5 + 1, (lV * 5 + 2) % 7 + 1, (lV * 4 + 5) % 9 + 1))
                    if math.abs((vector.angle(lN, lO, lT_12))) - math.abs((vector.angle(lO, lN, lT_12))) == 3 then
                        lS_3:AddToggle("AutoBoosts", { Text = "Auto Buy Boosts", Default = false })
                        lS_3:AddDropdown("BoostTargets", { Text = "Boosts", Multi = true, Values = AutoJoinerGroup, Default = { "Apple" } })
                        lS_3:AddToggle("AutoUseBoosts", { Text = "Auto Use After Buying", Default = true })
                        lS_3:AddInput("BoostReserve", { Text = "Keep Cash Reserve", Finished = true, Default = "0", Numeric = true })
                        lS_3:AddSlider("BoostDelay", { Rounding = 1, Default = 10, Max = 300, Text = "Loop Delay", Min = 1 })
                        lW = lz.Queue:AddLeftGroupbox("Auto Joiner", "swords")
                    else
                        lW:AddToggle("AutoBoosts", { Text = "Auto Buy Boosts", Default = false })
                        lW:AddDropdown("BoostTargets", { Text = "Boosts", Values = lz, Default = { "Apple" }, Multi = true })
                        lW:AddToggle("AutoUseBoosts", { Text = "Auto Use After Buying", Default = true })
                        lW:AddInput("BoostReserve", { Text = "Keep Cash Reserve", Default = "0", Numeric = true, Finished = true })
                        lW:AddSlider("BoostDelay", { Text = "Loop Delay", Default = 10, Min = 1, Max = 300, Rounding = 1 })
                        AutoJoinerGroup = lS_3.Queue:AddLeftGroupbox("Auto Joiner", "swords")
                    end
                    lV = (lV + 38) % 44
                end
            else
                local rv = bit32.rrotate(bit32.bxor(bit32.lrotate(lV, 8), string.byte(tostring(l_))), 4)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(rv, 3012688095), 275419834), (bit32.bxor(bit32.band(rv, 1282279200), 1067035892))), 275419834), 1067035892) ~= rv then
                    AutoJoinerGroup:AddToggle("AutoJoin", { Text = "Auto Join Party", Default = false })
                else
                    AutoJoinerGroup:AddToggle("AutoJoin", { Text = "Auto Join Party", Default = false })
                end
                lV = (lV + 27) % 44
            end
        elseif lM <= 10 then
            lM = (vector.create((lV * 3 + 5) % 11 + 1, (lV * 5 + 11) % 13 + 1, (lV * 5 + 15) % 17 + 1))
            local si = vector.floor(lM) + vector.ceil(lM * -1)
            if vector.dot(si, si) == 3 then
                lS_3 = l8.Main:AddLeftGroupbox("Auto Roll", "dices")
            else
                l8 = lS_3.Main:AddLeftGroupbox("Auto Roll", "dices")
            end
            lV = (lV + 38) % 44
        else
            if (lX and not lX or (lX or not lY) or (lX or lY) and (lX or not lX)) and (not lX and not lY and (lY and not lY) or (lY or lX or not lY and not lY)) and ((lX or lX or (not lY or lY)) and (not lY and lX or (lY or lX)) and ((not lX or lX or (lY or lX)) and (lY or not lY or (not lY or not lX)))) or not ((lX and not lX or (lX or not lY) or (lX or lY) and (lX or not lX)) and (not lX and not lY and (lY and not lY) or (lY or lX or not lY and not lY)) and ((lX or lX or (not lY or lY)) and (not lY and lX or (lY or lX)) and ((not lX or lX or (lY or lX)) and (lY or not lY or (not lY or not lX))))) then
                l8:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false, Callback = ly })
                l8:AddToggle("MaxColumns", { Text = "Use Max Columns", Default = true })
                l8:AddSlider("RollColumns", { Text = "Columns", Default = 1, Min = 1, Max = 6, Rounding = 0 })
                l8:AddSlider("RollDelay", { Text = "Loop Delay", Default = 0.5, Min = 0.1, Max = 10, Rounding = 2 })
                AutoEquipGroup = lS_3.Main:AddLeftGroupbox("Auto Equip", "crosshair")
            else
                AutoEquipGroup:AddToggle("AutoRoll", { Default = false, Text = "Auto Roll", Callback = lS_3 })
                AutoEquipGroup:AddToggle("MaxColumns", { Text = "Use Max Columns", Default = true })
                AutoEquipGroup:AddSlider("RollColumns", { Default = 1, Min = 1, Max = 6, Text = "Columns", Rounding = 0 })
                AutoEquipGroup:AddSlider("RollDelay", { Max = 10, Default = 0.5, Text = "Loop Delay", Rounding = 2, Min = 0.1 })
                l8 = ly.Main:AddLeftGroupbox("Auto Equip", "crosshair")
            end
            lV = (lV + 16) % 44
        end
    until (lV * 19 + 5) % 44 == 12
    lM = table.find(lR, "Warehouse") or 1
    lO = nil
    lN = 10
    repeat
        if (lN * 1 + 0) % 2 + 1 <= 1 then
            if (lN * 2 + 1) * 13 % 3 == ((lN * 2 + 1) * 13 + 0) % 3 then
                AutoJoinerGroup:AddDropdown("QueueMap", { Text = "Map", Values = lR, Default = lM, Multi = false })
                AutoJoinerGroup:AddDropdown("QueueMode", { Text = "Game Mode", Values = l2, Default = 2, Multi = false })
                AutoJoinerGroup:AddSlider("QueuePlayers", { Text = "Party Size", Default = 4, Min = 1, Max = 4, Rounding = 0 })
                AutoJoinerGroup:AddDropdown("QueueZone", { Text = "Teleport Zone", Values = lQ, Default = 1, Multi = false })
                AutoJoinerGroup:AddToggle("AutoBuyMap", { Text = "Auto Buy Selected Map", Default = false })
                AutoJoinerGroup:AddSlider("QueueDelay", { Text = "Loop Delay", Default = 3, Min = 1, Max = 60, Rounding = 1 })
                lO = lS_3.Queue:AddRightGroupbox("Party", "users")
            else
                AutoJoinerGroup:AddDropdown("QueueMap", { Default = lS_3, Values = lR, Multi = false, Text = "Map" })
                lQ:AddDropdown("QueueMode", { Values = AutoJoinerGroup, Text = "Game Mode", Multi = false, Default = 2 })
                lQ:AddSlider("QueuePlayers", { Default = 4, Rounding = 0, Min = 1, Max = 4, Text = "Party Size" })
                lQ:AddDropdown("QueueZone", { Multi = false, Text = "Teleport Zone", Default = 1, Values = l2 })
                lQ:AddToggle("AutoBuyMap", { Text = "Auto Buy Selected Map", Default = false })
                lQ:AddSlider("QueueDelay", { Min = 1, Max = 60, Rounding = 1, Default = 3, Text = "Loop Delay" })
                lM = lO.Queue:AddRightGroupbox("Party", "users")
            end
            lN = (lN + 1) % 16
        else
            local rH = bit32.rrotate(bit32.bxor(bit32.lrotate(lN, 31), string.byte(tostring(lO))), 29)
            if bit32.bxor(bit32.lrotate(bit32.bxor(rH, 3580290877), 18), 2633455003) == bit32.lrotate(rH, 18) then
                lO:AddButton({ Text = "Create Party Now", Func = onCreatePartyNow })
                lO:AddButton({ Text = "Leave Party", Func = onLeaveParty })
            else
                lO:AddButton({ Text = "Create Party Now", Func = onCreatePartyNow })
                lO:AddButton({ Text = "Leave Party", Func = onLeaveParty })
            end
            lN = (lN + 7) % 16
        end
    until (lN * 9 + 14) % 16 == 0
end
lg, k8, connection, connection2, kW, kR = nil, nil, nil, nil, nil, nil
local MenuGroup = lS_3.Settings:AddLeftGroupbox("Menu", "wrench")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
lg = tick()
k8 = tick()
pcall(function()
    for i, v in ipairs(getconnections(lw.Idled)) do
        local pt = v
        pcall(function()
            pt:Disable()
        end)
    end
end)
kR = fn655
connection = lP.InputBegan:Connect(onInputBegan)
connection2 = lP.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
Library.ToggleKeybind = Options.MenuKeybind
Library:OnUnload(fn750)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Mint")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/RollToSurvive")
SaveManager:BuildConfigSection(lS_3.Settings)
ThemeManager:ApplyToTab(lS_3.Settings)
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
task.spawn(worker4)
kW = os.clock()
task.spawn(worker5)
if not lr then
    lM = 7
    repeat
        lN = (vector.create((lM * 5 + 5) % 11 + 1, (lM * 8 + 1) % 13 + 1, (lM * 14 + 9) % 17 + 1))
        lO = (vector.create((lM * 4 + 3) % 11 + 1, (lM * 3 + 7) % 13 + 1, (lM * 1 + 4) % 17 + 1))
        lP = (vector.create((lM * 7 + 8) % 11 + 1, (lM * 11 + 13) % 13 + 1, (lM * 9 + 1) % 17 + 1))
        if vector.dot(vector.cross(lN, lO), lP) == vector.dot(vector.cross(lO, lP), lN) then
            task.spawn(function()
                local pL = false
                repeat
                    local pG
                    if not Library.Unloaded then
                        if kO("AutoRoll") then
                            local pH = kO("MaxColumns") and k5()
                            local pI = pH or math.floor(kB("RollColumns", 1))
                            pG = pI
                            pcall(function()
                                RollWeapon:FireServer(pG)
                            end)
                        end
                        task.wait(kB("RollDelay", 0.5))
                    else
                        pL = true
                    end
                until pL
            end)
            task.spawn(worker7)
            task.spawn(worker6)
            task.spawn(function()
                while not Library.Unloaded do
                    if kO("AutoGifts") then
                        for k, v in lf() do
                            local pV = k
                            local Claim = v:FindFirstChild("Claim")
                            if Claim and Claim.Visible then
                                pcall(function()
                                    GiftReady:FireServer(pV)
                                    kX:FireServer(pV)
                                end)
                            end
                        end
                    end
                    task.wait(kB("GiftDelay", 5))
                end
            end)
            task.spawn(function()
                while not Library.Unloaded do
                    if kO("AutoDaily") then
                        local DailyRewards = HUD.Frames:FindFirstChild("DailyRewards")
                        local pZ = DailyRewards and DailyRewards:FindFirstChild("ScrollingFrame")
                        if pZ then
                            for i = 1, 7 do
                                local p4 = i
                                local pZ_3 = pZ:FindFirstChild("Day" .. p4)
                                local p_ = pZ_3 and pZ_3:FindFirstChild("Claim")
                                local pZ_4 = p_
                                if p_ then
                                    p_ = pZ_4.Visible
                                end
                                if p_ then
                                    p_ = pZ_4.Interactable
                                end
                                if p_ then
                                    pcall(function()
                                        ClaimDaily:FireServer(p4)
                                    end)
                                end
                            end
                        end
                    end
                    task.wait(kB("DailyDelay", 10))
                end
            end)
            task.spawn(function()
                while not Library.Unloaded do
                    if kO("AutoQuests") then
                        for i = 1, 3 do
                            local qc = i
                            local p5 = lm[qc]
                            if type(p5) == "table" then
                                local p6 = tonumber(p5.Current) or 0
                                local p6_3 = tonumber(p5.Max) or 0
                                if p6_3 > 0 and p6 >= p6_3 then
                                    pcall(function()
                                        kI:FireServer(qc)
                                    end)
                                end
                            end
                        end
                    end
                    task.wait(kB("QuestDelay", 5))
                end
            end)
            task.spawn(function()
                while not Library.Unloaded do
                    if kO("AutoUpgrades") then
                        local qd = lA("UpgradeTargets")
                        for k, v in kE do
                            local ql = v
                            if qd[ql] and Upgrades[ql] then
                                pcall(function()
                                    kG:FireServer(ql)
                                end)
                                task.wait(0.15)
                            end
                        end
                    end
                    task.wait(kB("UpgradeDelay", 3))
                end
            end)
            task.spawn(function()
                while not Library.Unloaded do
                    if kO("AutoSell") then
                        local qm = lA("SellRarities")
                        for k, v in kK() do
                            local qv = v
                            local qn = Guns[qv.Name]
                            if qn and qm[qn.Rarity] then
                                pcall(function()
                                    kA:FireServer(qv.Name, "All")
                                end)
                                task.wait(0.15)
                            end
                        end
                        pcall(function()
                            LoadInventory:FireServer()
                        end)
                    end
                    task.wait(kB("SellDelay", 5))
                end
            end)
            task.spawn(function()
                while not Library.Unloaded do
                    if kO("AutoBoosts") then
                        local qz = lA("BoostTargets")
                        local qA = kB("BoostReserve", 0)
                        for k, v in lz do
                            local qL = v
                            local qB = lx[qL]
                            if qz[qL] and qB and lq.cash - (qB.Cost or 0) >= qA then
                                pcall(function()
                                    kF:FireServer(qL)
                                end)
                                if kO("AutoUseBoosts") then
                                    task.wait(0.25)
                                    pcall(function()
                                        kC:FireServer(qL)
                                    end)
                                end
                                task.wait(0.15)
                            end
                        end
                    end
                    task.wait(kB("BoostDelay", 10))
                end
            end)
            task.spawn(function()
                local qT = false
                repeat
                    if not Library.Unloaded then
                        if kO("AutoJoin") then
                            local Value = Options.QueueMap.Value
                            local qN = lt[Value]
                            local qO = kO("AutoBuyMap") and qN and not lk[Value]
                            if qO then
                                qO = lq.cash >= (qN.Cost or 0)
                            end
                            if qO then
                                pcall(function()
                                    PurchaseMap:FireServer(Value)
                                end)
                            end
                            if lh then
                                pcall(function()
                                    lG:FireServer("CreateParty", math.floor(kB("QueuePlayers", 4)), Value, Options.QueueMode.Value)
                                end)
                            else
                                local qN_2 = lK()
                                local qO_2 = lo()
                                if qN_2 and qO_2 and (qO_2.Position - qN_2.Position).Magnitude > 6 then
                                    qO_2.CFrame = qN_2.CFrame + Vector3.new(0, 3, 0)
                                    RunService.Heartbeat:Wait()
                                end
                            end
                        end
                        task.wait(kB("QueueDelay", 3))
                    else
                        qT = true
                    end
                until qT
            end)
        else
            task.spawn(function()
                local pL = false
                repeat
                    local pG
                    if not Library.Unloaded then
                        if kO("AutoRoll") then
                            local pH = kO("MaxColumns") and k5()
                            local pI = pH or math.floor(kB("RollColumns", 1))
                            pG = pI
                            pcall(function()
                                RollWeapon:FireServer(pG)
                            end)
                        end
                        task.wait(kB("RollDelay", 0.5))
                    else
                        pL = true
                    end
                until pL
            end)
            task.spawn(worker7)
            task.spawn(worker6)
            task.spawn(function()
                while not Library.Unloaded do
                    if kO("AutoGifts") then
                        for k, v in lf() do
                            local pV = k
                            local Claim = v:FindFirstChild("Claim")
                            if Claim and Claim.Visible then
                                pcall(function()
                                    GiftReady:FireServer(pV)
                                    kX:FireServer(pV)
                                end)
                            end
                        end
                    end
                    task.wait(kB("GiftDelay", 5))
                end
            end)
            task.spawn(function()
                while not Library.Unloaded do
                    if kO("AutoDaily") then
                        local DailyRewards = HUD.Frames:FindFirstChild("DailyRewards")
                        local pZ = DailyRewards and DailyRewards:FindFirstChild("ScrollingFrame")
                        if pZ then
                            for i = 1, 7 do
                                local p4 = i
                                local pZ_1 = pZ:FindFirstChild("Day" .. p4)
                                local p_ = pZ_1 and pZ_1:FindFirstChild("Claim")
                                local pZ_2 = p_
                                if p_ then
                                    p_ = pZ_2.Visible
                                end
                                if p_ then
                                    p_ = pZ_2.Interactable
                                end
                                if p_ then
                                    pcall(function()
                                        ClaimDaily:FireServer(p4)
                                    end)
                                end
                            end
                        end
                    end
                    task.wait(kB("DailyDelay", 10))
                end
            end)
            task.spawn(function()
                while not Library.Unloaded do
                    if kO("AutoQuests") then
                        for i = 1, 3 do
                            local qc = i
                            local p5 = lm[qc]
                            if type(p5) == "table" then
                                local p6 = tonumber(p5.Current) or 0
                                local p6_1 = tonumber(p5.Max) or 0
                                if p6_1 > 0 and p6 >= p6_1 then
                                    pcall(function()
                                        kI:FireServer(qc)
                                    end)
                                end
                            end
                        end
                    end
                    task.wait(kB("QuestDelay", 5))
                end
            end)
            task.spawn(function()
                while not Library.Unloaded do
                    if kO("AutoUpgrades") then
                        local qd = lA("UpgradeTargets")
                        for k, v in kE do
                            local ql = v
                            if qd[ql] and Upgrades[ql] then
                                pcall(function()
                                    kG:FireServer(ql)
                                end)
                                task.wait(0.15)
                            end
                        end
                    end
                    task.wait(kB("UpgradeDelay", 3))
                end
            end)
            task.spawn(function()
                while not Library.Unloaded do
                    if kO("AutoSell") then
                        local qm = lA("SellRarities")
                        for k, v in kK() do
                            local qv = v
                            local qn = Guns[qv.Name]
                            if qn and qm[qn.Rarity] then
                                pcall(function()
                                    kA:FireServer(qv.Name, "All")
                                end)
                                task.wait(0.15)
                            end
                        end
                        pcall(function()
                            LoadInventory:FireServer()
                        end)
                    end
                    task.wait(kB("SellDelay", 5))
                end
            end)
            task.spawn(function()
                while not Library.Unloaded do
                    if kO("AutoBoosts") then
                        local qz = lA("BoostTargets")
                        local qA = kB("BoostReserve", 0)
                        for k, v in lz do
                            local qL = v
                            local qB = lx[qL]
                            if qz[qL] and qB and lq.cash - (qB.Cost or 0) >= qA then
                                pcall(function()
                                    kF:FireServer(qL)
                                end)
                                if kO("AutoUseBoosts") then
                                    task.wait(0.25)
                                    pcall(function()
                                        kC:FireServer(qL)
                                    end)
                                end
                                task.wait(0.15)
                            end
                        end
                    end
                    task.wait(kB("BoostDelay", 10))
                end
            end)
            task.spawn(function()
                local qT = false
                repeat
                    if not Library.Unloaded then
                        if kO("AutoJoin") then
                            local Value = Options.QueueMap.Value
                            local qN = lt[Value]
                            local qO = kO("AutoBuyMap") and qN and not lk[Value]
                            if qO then
                                qO = lq.cash >= (qN.Cost or 0)
                            end
                            if qO then
                                pcall(function()
                                    PurchaseMap:FireServer(Value)
                                end)
                            end
                            if lh then
                                pcall(function()
                                    lG:FireServer("CreateParty", math.floor(kB("QueuePlayers", 4)), Value, Options.QueueMode.Value)
                                end)
                            else
                                local qN_1 = lK()
                                local qO_1 = lo()
                                if qN_1 and qO_1 and (qO_1.Position - qN_1.Position).Magnitude > 6 then
                                    qO_1.CFrame = qN_1.CFrame + Vector3.new(0, 3, 0)
                                    RunService.Heartbeat:Wait()
                                end
                            end
                        end
                        task.wait(kB("QueueDelay", 3))
                    else
                        qT = true
                    end
                until qT
            end)
        end
        lM = (lM + 2) % 8
    until (lM * 1 + 0) % 8 == 1
end
