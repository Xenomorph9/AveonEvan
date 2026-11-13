local r7_11
local r7_3_2
local Toggles
local connection3
local Level
local Pet
local lP
local GetRebirthData
local lw
local GetImpactData
local lV
local lC
local C_S_TrySpin
local GetTrailData
local connection2
local SceneHelper
local mp
local TryTeleportWorld
local l6
local lO
local mv
local Stats
local bodyVelocity
local lU
local lB
local LocalPlayer
local li
local FoodConfig
local lH
local VirtualUser
local lo
local l5
local lN
local mu
local TryUnlockImpact
local mb
local ImpactConfig
local lA
local mh
local lh
local lZ
local TryUnlockFood
local ln
local RebirthHelper
local GetAchievementData
local Pem
local lS
local mz
local AchievementHelper
local mg
local onRemoveHatchAnimation
local lY
local l3
local lL
local CollectionService
local TryEquipImpact
local bodyGyro
local PlayerTryClickRE
local win
local ly
local mf
local coin
local TrailConfig
local lE
local ml
local connection
local l2
local lK
local mr
local lr
local l8
local LuckConfig
local mx
local TryEquipTrail
local le
local PlayerIsEat
local lD
local UserInputService
local GetFoodData
local function worker13()
    while not mg.Unloaded do
        task.wait(2)
        if lO("AntiAfk") then
            local r1 = tick() - le
            local r2 = tick() - mz
            if r1 >= 300 and r2 >= 60 then
                pcall(mf)
            else
                if r1 < 300 and r2 >= 300 then
                    pcall(mf)
                end
            end
        end
    end
end
local function worker2()
    while not mg.Unloaded do
        local qv = lO("AutoScroll") or lO("TeleportEnd")
        if qv then
            if not LocalPlayer:GetAttribute("AutoRun") then
                LocalPlayer:SetAttribute("AutoRun", true)
            end
            if ln() then
                if lO("TeleportEnd") then
                    lN()
                end
            elseif not lO("CustomWalkSpeed") then
                mb(lZ(lY.WalkSpeed))
            end
        end
        task.wait(0.2)
    end
end
local function fn19()
    lo = GetRebirthData:InvokeServer()
end
local function fn34()
    local oT_1
    local oS_1
    oS_1, oT_1 = pcall(function()
        return GetAchievementData:InvokeServer()
    end)
    local oU = not oT_1
    local oV = not oS_1
    local oZ = if oV then 1 else 0
    local oX = 546 * oZ + 1522 * (1 - oZ)
    local oY = 2321 * oZ + 1063 * (1 - oZ)
    if not ((oX * 1971 + oY * 3576 + oX * oY) % 16777213 == 10643328) then
        oV = oU
    end
    if oV then
        return
    end
    for k, v in oT_1 do
        local oS_2 = mx[k]
        local oT_2 = oS_2 and AchievementHelper.getAchievementConfig(k)
        local oU_1 = oT_2
        if oT_2 then
            oT_2 = oU_1[v + 1]
        end
        local oU_2 = oT_2
        if oT_2 then
            oT_2 = oS_2() >= oU_2.need
        end
        if oT_2 then
            mp:FireServer(k)
        end
    end
end
local function fn44(bt)
    local oa_1
    local n9_1
    n9_1, oa_1 = pcall(Pem.isHavePem, "World" .. bt)
    return n9_1 and oa_1
end
local function fn53(ba)
    local nV = ba and tonumber(ba.Value)
    return nV or 0
end
local function fn67(b2)
    return b2.add and b2.add.power or 0
end
local function worker10()
    local rv = 0
    while not mg.Unloaded do
        if lO("AutoWinArea") then
            local rw = lD[lw(lY.TeleportWorld)[1]] or lr
            local rw_1 = rw ~= lr
            local ry = lO("WinAreaFollowWorld") and rw_1
            if ry then
                if tick() - rv >= 10 then
                    rv = tick()
                    TryTeleportWorld:FireServer(rw)
                end
            elseif not ln() then
                lh()
            end
        end
        task.wait(lZ(lY.WinDelay))
    end
end
local function worker4()
    local qz_1
    local qy_1
    while not mg.Unloaded do
        if lO("AutoSpin") then
            qy_1, qz_1 = pcall(function()
                return ml:InvokeServer()
            end)
            local qA = qy_1 and qz_1
            if qA then
                local qy_2 = tonumber(qz_1.total) or 0
                qA = qy_2 >= 1
            end
            if qA then
                pcall(function()
                    C_S_TrySpin:InvokeServer()
                end)
            end
        end
        task.wait(lZ(lY.SpinDelay))
    end
end
local function fn125()
    local Race = workspace:FindFirstChild("Race")
    local pz = l5()
    local pA = Race and Race:FindFirstChild("Return")
    if not pz or not pA then
        return
    end
    if pz.Transparency < 1 then
        lC(pz.Position + Vector3.new(0, 4, 0))
    elseif not LocalPlayer:GetAttribute("ReturnCoolDown") then
        lC(pA.Position + Vector3.new(0, 4, 0))
    end
end
local function fn126()
    mr = {}
    for k, v in CollectionService:GetTagged("RewardTape") do
        local nN = v.PrimaryPart and v:GetAttribute("Need")
        if nN then
            mr[#mr + 1] = v
        end
    end
    table.sort(mr, function(a7, a8)
        return a7:GetAttribute("Need") < a8:GetAttribute("Need")
    end)
end
local function onUnload()
    mg:Unload()
end
local function fn139(ep)
    l3()
    bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    bodyVelocity.Velocity = Vector3.zero
    bodyVelocity.Parent = ep
    bodyGyro = Instance.new("BodyGyro")
    bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
    bodyGyro.P = 9000
    bodyGyro.CFrame = workspace.CurrentCamera.CFrame
    bodyGyro.Parent = ep
end
local function fn154(dw)
    local DiscordGroup = dw:AddLeftGroupbox("Discord", nil, true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = lU })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = lU })
end
local function fn222()
    if bodyVelocity then
        bodyVelocity:Destroy()
        bodyVelocity = nil
    end
    if bodyGyro then
        bodyGyro:Destroy()
        bodyGyro = nil
    end
end
local function fn226()
    local Race = workspace:FindFirstChild("Race")
    local ps = Race and Race:FindFirstChild("WinModel")
    local pr_1 = ps
    if ps then
        ps = pr_1.PrimaryPart
    end
    local pt = ps
    if not pt then
        local ps_1 = pr_1 and pr_1:FindFirstChild("Main")
        pt = ps_1
    end
    return pt
end
local function fn232(bi)
    local n0 = bi
    local n1 = {}
    if n0 then
        n0 = typeof(bi.Value) == "table"
    end
    if n0 then
        for k, v in bi.Value do
            if v then
                n1[#n1 + 1] = k
            end
        end
        table.sort(n1)
    else
        if bi and bi.Value then
            n1[1] = bi.Value
        end
    end
    return n1
end
local function fn233(ax, ay)
    local nF_1
    local nE_1
    nF_1, nE_1 = LuckConfig[ax], LuckConfig[ay]
    if nF_1.CostType ~= nE_1.CostType then
        return nF_1.CostType == "coin"
    elseif nF_1.CostPrice ~= nE_1.CostPrice then
        return nF_1.CostPrice < nE_1.CostPrice
    else
        return ax < ay
    end
end
local function worker8()
    local qN_1
    while not mg.Unloaded do
        local qM = lO("AutoBuyImpact") or lO("AutoEquipImpact")
        local qM_1
        if qM then
            qM_1, qN_1 = pcall(function()
                return GetImpactData:InvokeServer()
            end)
            if qM_1 and qN_1 then
                if lO("AutoBuyImpact") then
                    l2(ImpactConfig, qN_1, TryUnlockImpact, mv(lY.ImpactReserve), false)
                end
                if lO("AutoEquipImpact") then
                    li(ImpactConfig, qN_1, TryEquipImpact, ly, false)
                end
            end
        end
        task.wait(lZ(lY.ImpactDelay))
    end
end
local function onTeleportEnd(dL)
    local pV = not dL
    if pV ~= false then
        pV = not lO("AutoScroll")
    end
    if pV then
        LocalPlayer:SetAttribute("AutoRun", false)
        mb(16)
    end
end
local function fn265(bd)
    local nY = Toggles[bd]
    return nY ~= nil and nY.Value == true
end
local function onJumpRequest()
    if not lO("InfiniteJump") then
        return
    end
    local Character = LocalPlayer.Character
    local p9 = Character and Character:FindFirstChildOfClass("Humanoid")
    if p9 then
        p9:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end
local function fn281()
    if setclipboard then
        setclipboard(l8)
    elseif toclipboard then
        toclipboard(l8)
    end
    mg:Notify("Copied Discord invite to clipboard")
end
local function fn311()
    mg.ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
local function fn323()
    local nK = 1
    while nK <= 3 do
        local nL = nK
        if SceneHelper.GetWorldId(nL) == game.PlaceId then
            return nL
        end
        nK += 1
    end
    return 1
end
local function worker9()
    while not mg.Unloaded do
        if lO("AutoEquipPets") then
            pcall(Pet.EquipBestPet)
        end
        task.wait(lZ(lY.PetDelay))
    end
end
local function onAutoScroll(dG)
    local pT = not dG
    if pT ~= false then
        pT = not lO("TeleportEnd")
    end
    if pT then
        LocalPlayer:SetAttribute("AutoRun", false)
        mb(16)
    end
end
local function fn420()
    LocalPlayer:SetAttribute("AutoRun", false)
    mb(16)
    onRemoveHatchAnimation(false)
    l3()
    connection:Disconnect()
    connection2:Disconnect()
    connection3:Disconnect()
    print("Get Fat to Break Tape unloaded")
end
local function onInputBegan()
    le = tick()
end
local function onDeleteRarities(dY)
    lL = {}
    for k, v in dY do
        if v and lV[k] then
            lL[lV[k]] = true
        end
    end
end
local function fn458()
    local oJ = Stats.getStats("OnlineTime") or 0
    return oJ
end
local function fn471()
    local oN = Stats.getStats("BreakTape") or 0
    return oN
end
local function worker3()
    while not mg.Unloaded do
        if lO("AutoAchievements") then
            mu()
        end
        task.wait(lZ(lY.AchievementDelay))
    end
end
local function fn523()
    local nx_1
    local nw_1
    if identifyexecutor then
        nx_1, nw_1 = identifyexecutor()
        local ny = nx_1 ~= ""
        local nz = type(nx_1) == "string" and ny
        if nz then
            local ny_1 = type(nw_1) == "string" and nw_1 ~= "" and nx_1 .. " " .. nw_1
            local nw_2 = ny_1
            local nD = if nw_2 then 1 else 0
            local nB = 1553 * nD + 29 * (1 - nD)
            local nC = 1987 * nD + 763 * (1 - nD)
            if not ((nB * 3246 + nC * 3087 + nB * nC) % 16777213 == 14260718) then
                nw_2 = nx_1
            end
            lK = nw_2
        end
    end
end
local function fn563()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    mz = tick()
end
local function worker6()
    local qF_1
    while not mg.Unloaded do
        local qE = lO("AutoBuyFood") or lO("AutoEquipFood")
        local qE_1
        if qE then
            qE_1, qF_1 = pcall(function()
                return GetFoodData:InvokeServer()
            end)
            if qE_1 and qF_1 then
                if lO("AutoBuyFood") then
                    l2(FoodConfig, qF_1, TryUnlockFood, mv(lY.FoodReserve), true)
                end
                if lO("AutoEquipFood") then
                    li(FoodConfig, qF_1, lE, lH, true)
                end
            end
        end
        task.wait(lZ(lY.FoodDelay))
    end
end
local function fn597(bM, bN, bO, bP, bQ)
    local os_1
    local oq = not bN or not bN.Unlock
    local oq_1
    if oq then
        return
    end
    os_1, oq_1 = nil, -1
    for k in bN.Unlock do
        local ot_1 = bM[k]
        local ou = ot_1
        if ou then
            local ov = not bQ or mh(ot_1.world)
            ou = ov
        end
        if ou then
            local ou_1 = bP(ot_1)
            if ou_1 > oq_1 then
                oq_1 = ou_1
                os_1 = k
            end
        end
    end
    if os_1 and os_1 ~= bN.Equip then
        bO:FireServer(os_1)
    end
end
local function fn623()
    return lo and lo.level or 0
end
local function fn628(c6)
    local Character = LocalPlayer.Character
    local pH = Character and Character:FindFirstChildOfClass("Humanoid")
    local pG_1 = pH
    if pH then
        pH = pG_1.WalkSpeed ~= c6
    end
    if pH then
        pG_1.WalkSpeed = c6
    end
end
local function worker7()
    local qJ_1
    while not mg.Unloaded do
        local qI = lO("AutoBuyTrail") or lO("AutoEquipTrail")
        local qI_1
        if qI then
            qI_1, qJ_1 = pcall(function()
                return GetTrailData:InvokeServer()
            end)
            if qI_1 and qJ_1 then
                if lO("AutoBuyTrail") then
                    l2(TrailConfig, qJ_1, lA, mv(lY.TrailReserve), false)
                end
                if lO("AutoEquipTrail") then
                    li(TrailConfig, qJ_1, TryEquipTrail, ly, false)
                end
            end
        end
        task.wait(lZ(lY.TrailDelay))
    end
end
local function fn693()
    if not lo or not lo.level then
        return false
    elseif lo.level >= 29 then
        return false
    else
        return Level.Value >= RebirthHelper.getMaxLevel(lo.level)
    end
end
local function fn781(by, bz, bA, bB, bC)
    if not bz or not bz.CanUnlock then
        return
    end
    for k, v in by do
        if v.id == bz.CanUnlock and v.type == "coin" and not bz.Unlock[k] then
            local od_2 = v.price <= bB
            if od_2 then
                local oe = not bC or mh(v.world)
                od_2 = oe
            end
            if od_2 then
                bA:FireServer(k)
            end
            return
        end
    end
end
local function fn783(b5)
    return b5.add or 0
end
local function worker()
    local qq = 0
    while not mg.Unloaded do
        local qu = if lO("AutoFeed") then 1 else 0
        if qu == 1 then
            if LocalPlayer:GetAttribute("Eating") then
                PlayerTryClickRE:FireServer(true)
            elseif tick() - qq >= 1 then
                qq = tick()
                PlayerIsEat:FireServer()
            end
        end
        task.wait(lZ(lY.FeedDelay))
    end
end
local function onTeleportToWorld()
    local p4 = lD[lw(lY.TeleportWorld)[1]]
    if p4 then
        TryTeleportWorld:FireServer(p4)
    end
end
local function worker12()
    local RunService = game:GetService("RunService")
    while not mg.Unloaded do
        RunService.Stepped:Wait()
        local Character = LocalPlayer.Character
        local rN = Character and Character:FindFirstChild("HumanoidRootPart")
        local rN_1 = lO("Noclip") and Character
        if rN_1 then
            for i, descendant in Character:GetDescendants() do
                local rM_1 = descendant:IsA("BasePart") and descendant.CanCollide
                if rM_1 then
                    descendant.CanCollide = false
                end
            end
        end
        if lO("CustomWalkSpeed") then
            mb(lZ(lY.PlayerWalkSpeed))
        end
        local rM_2 = lO("Fly") and rN
        if rM_2 then
            if not bodyVelocity or bodyVelocity.Parent ~= rN then
                lS(rN)
            end
            local CurrentCamera = workspace.CurrentCamera
            local rN_2 = Vector3.zero
            for k, v in l6 do
                if UserInputService:IsKeyDown(k) then
                    rN_2 = rN_2 + v
                end
            end
            if rN_2.Magnitude > 0 then
                local rO_1 = CurrentCamera.CFrame:VectorToWorldSpace(Vector3.new(rN_2.X, 0, rN_2.Z))
                local rO_2 = Vector3.new(rO_1.X, rO_1.Y + rN_2.Y, rO_1.Z)
                bodyVelocity.Velocity = rO_2.Unit * lZ(lY.FlySpeed)
            else
                bodyVelocity.Velocity = Vector3.zero
            end
            bodyGyro.CFrame = CurrentCamera.CFrame
        elseif bodyVelocity then
            l3()
        end
    end
end
local function fn809()
    return LocalPlayer:GetAttribute("State") == "Race"
end
local function worker5()
    while not mg.Unloaded do
        local qC = lO("AutoRebirth") and lB()
        if qC then
            lP:FireServer()
        end
        task.wait(lZ(lY.RebirthDelay))
    end
end
local function onInputChanged(eM)
    local UserInputType = eM.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        le = tick()
    end
end
local function onOnClientEvent(aZ)
    lo = aZ
end
local function onCustomWalkSpeed(eg)
    if not eg then
        mb(16)
    end
end
local function fn846()
    local oL = Stats.getStats("OpenEgg") or 0
    return oL
end
local function worker11()
    while not mg.Unloaded do
        if lO("AutoUnlockWorlds") then
            for k, v in { 2, 3 } do
                local rD = not mh(v) and win.Value >= SceneHelper.GetWorldUnlockMoney(v)
                if rD then
                    TryTeleportWorld:FireServer(v)
                    break
                end
            end
        end
        task.wait(lZ(lY.WorldDelay))
    end
end
local function fn869(bp)
    return coin.Value - lZ(bp)
end
GetImpactData = nil
le = nil
coin = nil
onRemoveHatchAnimation = nil
lh = nil
li = nil
GetTrailData = nil
GetFoodData = nil
connection = nil
ln = nil
lo = nil
TryTeleportWorld = nil
Pet = nil
lr = nil
TryEquipImpact = nil
Pem = nil
TryUnlockImpact = nil
Stats = nil
lw = nil
TryEquipTrail = nil
ly = nil
AchievementHelper = nil
lA = nil
lB = nil
lC = nil
lD = nil
lE = nil
TryUnlockFood = nil
lH = nil
SceneHelper = nil
connection3 = nil
lK = nil
lL = nil
RebirthHelper = nil
lN = nil
lO = nil
lP = nil
LuckConfig = nil
PlayerTryClickRE = nil
lS = nil
ImpactConfig = nil
lU = nil
lV = nil
PlayerIsEat = nil
TrailConfig = nil
lY = nil
lZ = nil
FoodConfig = nil
local EggOpener, PetHelper
connection2 = nil
Toggles = nil
l2 = nil
l3 = nil
l5 = nil
l6 = nil
l8 = nil
bodyGyro = nil
mb = nil
bodyVelocity = nil
mf = nil
mg = nil
mh = nil
LocalPlayer = nil
C_S_TrySpin = nil
UserInputService = nil
ml = nil
VirtualUser = nil
mp = nil
Level = nil
mr = nil
CollectionService = nil
GetAchievementData = nil
mu = nil
mv = nil
GetRebirthData = nil
mx = nil
win = nil
mz = nil
local l4, DeletePets, GetPlayerPetData, CanAddPet, C_S_DoLuck, TotalExp, mn, mK, mM, mN
l4 = nil
DeletePets = nil
GetPlayerPetData = nil
CanAddPet = nil
C_S_DoLuck = nil
TotalExp = nil
mn = nil
CollectionService, VirtualUser, UserInputService, LocalPlayer = nil, nil, nil, nil
local r7_13 = game:GetService("Players")
local r7_8 = game:GetService("ReplicatedStorage")
CollectionService = game:GetService("CollectionService")
VirtualUser = game:GetService("VirtualUser")
UserInputService = game:GetService("UserInputService")
LocalPlayer = r7_13.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return LocalPlayer:WaitForChild("PlayerGui")
    end
end
l8, r7_11, PlayerIsEat, PlayerTryClickRE, lP, TryUnlockFood, lE, lA, TryEquipTrail, TryUnlockImpact, TryEquipImpact, TryTeleportWorld, GetFoodData, GetTrailData, GetImpactData, GetRebirthData, GetAchievementData, mp, ml, C_S_TrySpin, C_S_DoLuck, CanAddPet, GetPlayerPetData, DeletePets, l4, FoodConfig, TrailConfig, ImpactConfig, LuckConfig, RebirthHelper, SceneHelper, PetHelper, AchievementHelper, Stats, Pem, Pet, EggOpener, r7_13, coin, win, Level, TotalExp, mg, Toggles, lY, lK, lU = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
l8 = "https://discord.gg/ehKVq7pf7v"
if mp and not RebirthHelper and (not GetAchievementData or not GetAchievementData) and (not Level or not Level or not mp and GetAchievementData) and (Level and Level and (not Toggles and GetAchievementData) or Toggles and mp and (RebirthHelper or not Level)) or not (mp and not RebirthHelper and (not GetAchievementData or not GetAchievementData) and (not Level or not Level or not mp and GetAchievementData) and (Level and Level and (not Toggles and GetAchievementData) or Toggles and mp and (RebirthHelper or not Level))) then
    r7_11 = r7_8:WaitForChild("Remote")
else
    r7_8 = r7_11:WaitForChild("Remote")
end
local r7_4 = r7_11:WaitForChild("Event")
local r7_17 = r7_11:WaitForChild("Function")
PlayerIsEat = r7_4:WaitForChild("Eat"):WaitForChild("PlayerIsEat")
PlayerTryClickRE = r7_4:WaitForChild("Eat"):WaitForChild("PlayerTryClickRE")
if (not GetRebirthData and not GetRebirthData and (not AchievementHelper or SceneHelper) or (not GetRebirthData and AchievementHelper or (not GetRebirthData or GetRebirthData)) or (AchievementHelper or not SceneHelper or (SceneHelper or not GetRebirthData)) and (SceneHelper and GetRebirthData or (AchievementHelper or GetRebirthData))) and (((AchievementHelper or not GetRebirthData) and (GetRebirthData or not GetRebirthData) or not SceneHelper and not GetRebirthData and (not AchievementHelper and AchievementHelper)) and (SceneHelper and not GetRebirthData or not SceneHelper and GetRebirthData or not AchievementHelper and AchievementHelper and (GetRebirthData or not AchievementHelper))) and not ((not GetRebirthData and not GetRebirthData and (not AchievementHelper or SceneHelper) or (not GetRebirthData and AchievementHelper or (not GetRebirthData or GetRebirthData)) or (AchievementHelper or not SceneHelper or (SceneHelper or not GetRebirthData)) and (SceneHelper and GetRebirthData or (AchievementHelper or GetRebirthData))) and (((AchievementHelper or not GetRebirthData) and (GetRebirthData or not GetRebirthData) or not SceneHelper and not GetRebirthData and (not AchievementHelper and AchievementHelper)) and (SceneHelper and not GetRebirthData or not SceneHelper and GetRebirthData or not AchievementHelper and AchievementHelper and (GetRebirthData or not AchievementHelper)))) then
    r7_4 = TryUnlockFood:WaitForChild("Rebirth"):WaitForChild("TryRebirth")
    lP = TryUnlockFood:WaitForChild("Rebirth"):WaitForChild("RebirthDataChanged")
    mK = TryUnlockFood:WaitForChild("Food"):WaitForChild("TryUnlockFood")
    lA = TryUnlockFood:WaitForChild("Food"):WaitForChild("TryEquipFood")
    lE = TryUnlockFood:WaitForChild("Trail"):WaitForChild("TryUnlockTrail")
else
    lP = r7_4:WaitForChild("Rebirth"):WaitForChild("TryRebirth")
    mK = r7_4:WaitForChild("Rebirth"):WaitForChild("RebirthDataChanged")
    TryUnlockFood = r7_4:WaitForChild("Food"):WaitForChild("TryUnlockFood")
    lE = r7_4:WaitForChild("Food"):WaitForChild("TryEquipFood")
    lA = r7_4:WaitForChild("Trail"):WaitForChild("TryUnlockTrail")
end
TryEquipTrail = r7_4:WaitForChild("Trail"):WaitForChild("TryEquipTrail")
TryUnlockImpact = r7_4:WaitForChild("Impact"):WaitForChild("TryUnlockImpact")
TryEquipImpact = r7_4:WaitForChild("Impact"):WaitForChild("TryEquipImpact")
TryTeleportWorld = r7_4:WaitForChild("World"):WaitForChild("TryTeleportWorld")
GetFoodData = r7_17:WaitForChild("Food"):WaitForChild("GetFoodData")
GetTrailData = r7_17:WaitForChild("Trail"):WaitForChild("GetTrailData")
GetImpactData = r7_17:WaitForChild("Impact"):WaitForChild("GetImpactData")
GetRebirthData = r7_17:WaitForChild("Rebirth"):WaitForChild("GetRebirthData")
GetAchievementData = r7_17:WaitForChild("Achievement"):WaitForChild("GetAchievementData")
if not win and ml and (not TryEquipImpact and TryEquipImpact) and (not TryEquipImpact and not ml or not CanAddPet and not r7_13) and (not CanAddPet or ml or not win and r7_13 or (r7_13 or not win) and (not ml or not win)) or ((CanAddPet or ml) and (CanAddPet and ml) and (ml and TryEquipImpact or (r7_13 or not r7_13)) or (not Stats and not ml or CanAddPet and not TryEquipImpact) and (win or not CanAddPet or ml and TryEquipImpact)) or not (not win and ml and (not TryEquipImpact and TryEquipImpact) and (not TryEquipImpact and not ml or not CanAddPet and not r7_13) and (not CanAddPet or ml or not win and r7_13 or (r7_13 or not win) and (not ml or not win)) or ((CanAddPet or ml) and (CanAddPet and ml) and (ml and TryEquipImpact or (r7_13 or not r7_13)) or (not Stats and not ml or CanAddPet and not TryEquipImpact) and (win or not CanAddPet or ml and TryEquipImpact))) then
    mp = r7_4:WaitForChild("Achievement"):WaitForChild("TryClaimAchievement")
    ml = r7_17:WaitForChild("Spin"):WaitForChild("[C-S]GetSpinData")
    C_S_TrySpin = r7_17:WaitForChild("Spin"):WaitForChild("[C-S]TrySpin")
else
    ml = C_S_TrySpin:WaitForChild("Achievement"):WaitForChild("TryClaimAchievement")
    mp = r7_4:WaitForChild("Spin"):WaitForChild("[C-S]GetSpinData")
    r7_17 = r7_4:WaitForChild("Spin"):WaitForChild("[C-S]TrySpin")
end
C_S_DoLuck = r7_17:WaitForChild("Luck"):WaitForChild("[C-S]DoLuck")
CanAddPet = r7_17:WaitForChild("Pet"):WaitForChild("CanAddPet")
GetPlayerPetData = r7_17:WaitForChild("Pet"):WaitForChild("GetPlayerPetData")
DeletePets = r7_4:WaitForChild("Pet"):WaitForChild("DeletePets")
l4 = {
    r7_4:WaitForChild("Luck"):WaitForChild("[S-C]DoLuck"),
    r7_4:WaitForChild("Luck"):WaitForChild("[S-C]DoLuck3")
}
FoodConfig = require(r7_8.Config.FoodHelper.FoodConfig)
TrailConfig = require(r7_8.Config.TrailHelper.TrailConfig)
ImpactConfig = require(r7_8.Config.ImpactHelper.ImpactConfig)
LuckConfig = require(r7_8.Config.LuckHelper.LuckConfig)
RebirthHelper = require(r7_8.Config.RebirthHelper)
SceneHelper = require(r7_8.Config.SceneHelper)
PetHelper = require(r7_8.Config.PetHelper)
local r7_2 = require(r7_8.Utils.AbbNumber)
AchievementHelper = require(r7_8.Config.AchievementHelper)
Stats = require(r7_8.GuiUtils.Stats)
Pem = require(r7_8.GuiUtils.Pem)
Pet = require(r7_8.GuiUtils.Pet)
EggOpener = require(r7_8.GuiUtils.EggOpener)
r7_13 = LocalPlayer:WaitForChild("Eco")
coin = r7_13:WaitForChild("coin")
win = r7_13:WaitForChild("win")
local r7_6 = LocalPlayer:WaitForChild("LevelHolder")
Level = r7_6:WaitForChild("Level")
TotalExp = r7_6:WaitForChild("TotalExp")
if (false and Level or not Level and Level) and (Level or not mg or (mg or not mg)) or not ((false and Level or not Level and Level) and (Level or not mg or (mg or not mg))) then
    mg = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
    pcall(fn311)
    mN = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
    mM = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
    Toggles = mg.Toggles
    lY = mg.Options
else
    lY = loadstring(game:HttpGet(Toggles .. "Library.lua"))()
    pcall(fn311)
    mg = loadstring(game:HttpGet(Toggles .. "addons/ThemeManager.lua"))()
    mN = loadstring(game:HttpGet(Toggles .. "addons/SaveManager.lua"))()
    mM = lY.Options
end
lU = fn281
lK = "Unknown"
pcall(fn523)
local r7_12 = {}
for k in LuckConfig do
    r7_12[#r7_12 + 1] = k
end
mn = nil
r7_13 = 4
repeat
    if r7_13 * 124149325 + 10 + 6 <= r7_13 * 124149325 + 10 + 6 + 5 then
        table.sort(r7_12, fn233)
        r7_3_2 = {}
        mn = {}
    else
        table.sort(mn, fn233)
        r7_12 = {}
        r7_3_2 = {}
    end
    r7_13 = (r7_13 + 0) % 8
until (r7_13 * 7 + 5) % 8 == 1
for k, v in r7_12 do
    r7_13 = LuckConfig[v]
    r7_8 = r7_13.CostType == "coin" and r7_2.AbbreviateNumber(r7_13.CostPrice)
    r7_17 = r7_8 or tostring(r7_13.CostType) .. " " .. tostring(r7_13.CostPrice)
    r7_8 = r7_17
    r7_17 = r7_13.DisPlayEggName or v
    r7_13 = r7_17 .. " (" .. r7_8 .. ")"
    if mn[r7_13] then
        r7_13 = r7_13 .. " " .. v
    end
    r7_3_2[#r7_3_2 + 1] = r7_13
    mn[r7_13] = v
end
lV = nil
r7_17 = { "Common", "UnCommon", "Rare", "Epic", "Legendary", "Mythic", "Exclusive" }
lV = {}
for k, v in r7_17 do
    lV[v] = k
end
lL, lD, lr, lo, mr, mx, lZ, lO, lw, mv, mh, l2, li, lH, ly, mu, lB, ln, onRemoveHatchAnimation, l5, lC, lh, mb, lN = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
lL = {}
r7_6 = { "World 1", "World 2", "World 3" }
lD = { ["World 1"] = 1, ["World 2"] = 2, ["World 3"] = 3 }
r7_13 = fn323
lr = r7_13()
lo = nil
pcall(fn19)
mK.OnClientEvent:Connect(onOnClientEvent)
mr = {}
r7_11 = fn126
r7_11()
CollectionService:GetInstanceAddedSignal("RewardTape"):Connect(r7_11)
lZ = fn53
lO = fn265
lw = fn232
mv = fn869
mh = fn44
l2 = fn781
li = fn597
lH = fn67
ly = fn783
mx = { Time = fn458, Egg = fn846, Tape = fn471, Rebirth = fn623 }
mu = fn34
lB = fn693
ln = fn809
onRemoveHatchAnimation = function(cA)
    for k, v in l4 do
        local pn = v
        pcall(function()
            for i, v in ipairs(getconnections(pn.OnClientEvent)) do
                if cA then
                    v:Disable()
                else
                    v:Enable()
                end
            end
        end)
    end
    if cA then
        pcall(EggOpener.Reset)
    end
end
l5 = fn226
lC = function(cS)
    local Character
    Character = nil
    Character = LocalPlayer.Character
    if not Character or not Character.PrimaryPart then
        return
    end
    pcall(function()
        Character:PivotTo(CFrame.new(cS))
    end)
end
lh = fn125
mb = fn628
lN = function()
    local Character = LocalPlayer.Character
    if not Character or not Character.PrimaryPart then
        return
    end
    local Value = TotalExp.Value
    for k, v in mr do
        local pS = v
        local pL = mg.Unloaded or not ln()
        if pL then
            return
        end
        if not pS:GetAttribute("IsTouch") then
            pcall(function()
                Character:PivotTo(CFrame.new(pS.PrimaryPart.Position))
            end)
            task.wait(lZ(lY.TapeDelay))
            if pS:GetAttribute("Need") > Value then
                return
            end
        end
    end
end
r7_4 = mg:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = "https://discord.gg/ehKVq7pf7v | Get Fat to Break Tape",
    Icon = 18657887261,
    NotifySide = "Right",
    ShowCustomCursor = false,
    Size = UDim2.fromOffset(760, 620)
})
r7_12 = {
    Info = r7_4:AddTab("Info", "info"),
    Main = r7_4:AddTab("Main", "drumstick"),
    Gear = r7_4:AddTab("Gear", "shirt"),
    Eggs = r7_4:AddTab("Eggs", "egg"),
    Worlds = r7_4:AddTab("Worlds", "globe"),
    Player = r7_4:AddTab("Player", "user"),
    Settings = r7_4:AddTab("Settings", "settings")
}
for k, v in r7_12 do
    fn154(v)
end
mK = r7_12.Info:AddLeftGroupbox("Basic Info", "circle-user")
mK:AddLabel("Executor: " .. lK, true)
mK:AddLabel("Game: Get Fat to Break Tape", true)
mK:AddLabel("Player: " .. LocalPlayer.Name, true)
mK:AddLabel("Status: Keyless", true)
r7_2 = r7_12.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
r7_2:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
r7_2:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
r7_2:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
r7_2:AddButton({ Text = "Copy Discord Invite", Func = lU })
r7_11 = r7_12.Info:AddRightGroupbox("FAQ", "circle-help")
r7_11:AddLabel("Where do I get a good config?", true)
r7_11:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
r7_11:AddLabel("How do I import / export configs?", true)
r7_11:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
r7_11:AddLabel("How do I report bugs?", true)
r7_11:AddLabel("Join the Discord and post it in the bugs channel.", true)
r7_11:AddLabel("How do I make suggestions?", true)
r7_11:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
r7_11:AddLabel("How do I get help or updates?", true)
r7_11:AddLabel("Join the Discord, updates and support are posted there first.", true)
r7_4 = r7_12.Main:AddLeftGroupbox("Auto Feed", "utensils")
r7_4:AddToggle("AutoFeed", { Text = "Auto Feed", Default = false })
r7_4:AddSlider("FeedDelay", { Text = "Click Delay", Default = 0.05, Min = 0.02, Max = 0.5, Rounding = 2 })
r7_13 = r7_12.Main:AddRightGroupbox("Auto Scroll", "wind")
r7_13:AddToggle("AutoScroll", { Text = "Auto Scroll", Default = false, Callback = onAutoScroll })
r7_13:AddToggle("TeleportEnd", { Text = "Teleport To End Of Map", Default = false, Callback = onTeleportEnd })
r7_13:AddSlider("WalkSpeed", { Text = "Walk Speed", Default = 90, Min = 16, Max = 250, Rounding = 0 })
r7_13:AddSlider("TapeDelay", { Text = "Tape Delay", Default = 0.25, Min = 0.1, Max = 2, Rounding = 2 })
local AutoSpinGroup = r7_12.Main:AddLeftGroupbox("Auto Spin", "disc-3")
AutoSpinGroup:AddToggle("AutoSpin", { Text = "Auto Spin Wheel", Default = false })
AutoSpinGroup:AddSlider("SpinDelay", { Text = "Loop Delay", Default = 1.5, Min = 0.5, Max = 30, Rounding = 1 })
local AutoAchievementsGroup = r7_12.Main:AddLeftGroupbox("Auto Achievements", "award")
AutoAchievementsGroup:AddToggle("AutoAchievements", { Text = "Auto Claim Achievements", Default = false })
AutoAchievementsGroup:AddSlider("AchievementDelay", { Text = "Loop Delay", Default = 3, Min = 1, Max = 60, Rounding = 1 })
local AutoRebirthGroup = r7_12.Main:AddRightGroupbox("Auto Rebirth", "crown")
AutoRebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
AutoRebirthGroup:AddSlider("RebirthDelay", { Text = "Loop Delay", Default = 3, Min = 1, Max = 30, Rounding = 1 })
local AutoFoodGroup = r7_12.Gear:AddLeftGroupbox("Auto Food", "cookie")
AutoFoodGroup:AddToggle("AutoBuyFood", { Text = "Auto Buy Best Affordable Food", Default = false })
AutoFoodGroup:AddToggle("AutoEquipFood", { Text = "Auto Equip Best Food", Default = false })
AutoFoodGroup:AddInput("FoodReserve", { Text = "Keep Coin Reserve", Default = "0", Numeric = true, Finished = true })
AutoFoodGroup:AddSlider("FoodDelay", { Text = "Loop Delay", Default = 1, Min = 0.5, Max = 15, Rounding = 1 })
local AutoTrailGroup = r7_12.Gear:AddRightGroupbox("Auto Trail", "sparkle")
AutoTrailGroup:AddToggle("AutoBuyTrail", { Text = "Auto Buy Best Affordable Trail", Default = false })
AutoTrailGroup:AddToggle("AutoEquipTrail", { Text = "Auto Equip Best Trail", Default = false })
AutoTrailGroup:AddInput("TrailReserve", { Text = "Keep Coin Reserve", Default = "0", Numeric = true, Finished = true })
AutoTrailGroup:AddSlider("TrailDelay", { Text = "Loop Delay", Default = 2, Min = 0.5, Max = 15, Rounding = 1 })
local AutoAuraGroup = r7_12.Gear:AddRightGroupbox("Auto Aura", "flame")
AutoAuraGroup:AddToggle("AutoBuyImpact", { Text = "Auto Buy Best Affordable Aura", Default = false })
AutoAuraGroup:AddToggle("AutoEquipImpact", { Text = "Auto Equip Best Aura", Default = false })
AutoAuraGroup:AddInput("ImpactReserve", { Text = "Keep Coin Reserve", Default = "0", Numeric = true, Finished = true })
AutoAuraGroup:AddSlider("ImpactDelay", { Text = "Loop Delay", Default = 2, Min = 0.5, Max = 15, Rounding = 1 })
local AutoPetsGroup = r7_12.Gear:AddLeftGroupbox("Auto Pets", "paw-print")
AutoPetsGroup:AddToggle("AutoEquipPets", { Text = "Auto Equip Best Pets", Default = false })
AutoPetsGroup:AddSlider("PetDelay", { Text = "Loop Delay", Default = 5, Min = 3, Max = 60, Rounding = 1 })
local AutoDeletePetsGroup = r7_12.Eggs:AddLeftGroupbox("Auto Delete Pets", "trash-2")
AutoDeletePetsGroup:AddToggle("AutoDeletePets", { Text = "Auto Delete Pets", Default = false })
AutoDeletePetsGroup:AddDropdown("DeleteRarities", {
    Text = "Rarities To Delete",
    Values = r7_17,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true,
    Callback = onDeleteRarities
})
AutoDeletePetsGroup:AddToggle("SkipLockedPets", { Text = "Skip Locked", Default = true })
AutoDeletePetsGroup:AddToggle("SkipStarPets", { Text = "Skip Star Pets", Default = true })
AutoDeletePetsGroup:AddInput("KeepBestPets", {
    Text = "Keep Best Amount",
    Default = "3",
    Numeric = true,
    Finished = false,
    AllowEmpty = false,
    EmptyReset = "0",
    ClearTextOnFocus = false
})
AutoDeletePetsGroup:AddSlider("DeleteDelay", { Text = "Loop Delay", Default = 3, Min = 1, Max = 60, Rounding = 1 })
r7_8 = r7_12.Eggs:AddRightGroupbox("Auto Hatch", "egg")
r7_8:AddToggle("AutoHatch", { Text = "Auto Hatch", Default = false })
r7_8:AddDropdown("HatchEgg", { Text = "Egg", Values = r7_3_2, Default = {}, Multi = true, Searchable = true, AllowNull = true })
r7_8:AddInput("HatchAmount", {
    Text = "Amount",
    Default = "3",
    Numeric = true,
    Finished = false,
    AllowEmpty = false,
    EmptyReset = "1",
    ClearTextOnFocus = false
})
r7_8:AddToggle("RemoveHatchAnimation", { Text = "Remove Hatch Animation", Default = true, Callback = onRemoveHatchAnimation })
r7_8:AddInput("EggReserve", { Text = "Keep Coin Reserve", Default = "0", Numeric = true, Finished = true })
r7_8:AddSlider("EggDelay", { Text = "Loop Delay", Default = 0.5, Min = 0.2, Max = 10, Rounding = 1 })
local mX = {
    "Puwede kang mag-hatch ng kahit ilang itlog na gusto mo, halimbawa 10, 20, 30 o higit pa.",
    "You can hatch as many eggs as you want, for example 10, 20, 30 or more.",
    "Kamu bisa menetaskan telur sebanyak yang kamu mau, misalnya 10, 20, 30 atau lebih.",
    "Вы можете открыть столько яиц, сколько хотите, например 10, 20, 30 или больше.",
    "คุณสามารถฟักไข่ได้มากเท่าที่ต้องการ เช่น 10, 20, 30 หรือมากกว่านั้น",
    "Voce pode chocar quantos ovos quiser, por exemplo 10, 20, 30 ou mais.",
    "Ban co the mo bao nhieu trung tuy thich, vi du 10, 20, 30 hoac hon."
}
local AmountGroup = r7_12.Eggs:AddRightGroupbox("Amount", "circle-help")
for k, v in mX do
    AmountGroup:AddLabel('<font color="rgb(90,220,120)">' .. v .. "</font>", true)
end
bodyVelocity, bodyGyro, l6, connection, le, mz, connection2, connection3, l3, lS, mf = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local r7_3_3 = r7_12.Worlds:AddRightGroupbox("Worlds", "map")
r7_3_3:AddToggle("AutoUnlockWorlds", { Text = "Auto Unlock Worlds", Default = false })
r7_3_3:AddSlider("WorldDelay", { Text = "Loop Delay", Default = 5, Min = 2, Max = 60, Rounding = 1 })
r7_3_3:AddDropdown("TeleportWorld", {
    Text = "Teleport To",
    Values = r7_6,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
r7_3_3:AddButton({ Text = "Teleport To World", Func = onTeleportToWorld })
r7_4 = r7_12.Worlds:AddLeftGroupbox("Auto Win", "trophy")
r7_4:AddToggle("AutoWinArea", { Text = "Auto Instant-Win", Default = false })
r7_4:AddToggle("WinAreaFollowWorld", { Text = "Teleport To Selected World First", Default = false })
r7_4:AddSlider("WinDelay", { Text = "Loop Delay", Default = 0.2, Min = 0.1, Max = 5, Rounding = 2 })
r7_17 = r7_12.Player:AddRightGroupbox("Movement", "footprints")
r7_17:AddToggle("CustomWalkSpeed", { Text = "Walk Speed", Default = false, Callback = onCustomWalkSpeed })
r7_17:AddSlider("PlayerWalkSpeed", { Text = "Walk Speed Amount", Default = 60, Min = 16, Max = 500, Rounding = 0 })
r7_17:AddToggle("Fly", { Text = "Fly", Default = false })
r7_17:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 80, Min = 16, Max = 500, Rounding = 0 })
r7_17:AddToggle("Noclip", { Text = "Noclip", Default = false })
r7_17:AddToggle("InfiniteJump", { Text = "Infinite Jump", Default = false })
bodyVelocity = nil
bodyGyro = nil
l6 = {
    [Enum.KeyCode.W] = Vector3.new(0, 0, -1),
    [Enum.KeyCode.S] = Vector3.new(0, 0, 1),
    [Enum.KeyCode.A] = Vector3.new(-1, 0, 0),
    [Enum.KeyCode.D] = Vector3.new(1, 0, 0),
    [Enum.KeyCode.Space] = Vector3.new(0, 1, 0),
    [Enum.KeyCode.LeftControl] = Vector3.new(0, -1, 0)
}
l3 = fn222
lS = fn139
connection = UserInputService.JumpRequest:Connect(onJumpRequest)
r7_13 = r7_12.Settings:AddLeftGroupbox("Menu", "wrench")
r7_13:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
le = tick()
mz = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local qh = v
        pcall(function()
            qh:Disable()
        end)
    end
end)
mf = fn563
connection2 = UserInputService.InputBegan:Connect(onInputBegan)
connection3 = UserInputService.InputChanged:Connect(onInputChanged)
r7_13:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
r7_13:AddButton("Unload", onUnload)
mg.ToggleKeybind = lY.MenuKeybind
mg:OnUnload(fn420)
mN:SetLibrary(mg)
mN:SetFolder("OuroborosHub")
mN:SaveDefault("Mint")
mM:SetLibrary(mg)
mM:IgnoreThemeSettings()
mM:SetIgnoreIndexes({ "MenuKeybind" })
mM:SetFolder("OuroborosHub/GetFatToBreakTape")
mM:BuildConfigSection(r7_12.Settings)
mN:ApplyToTab(r7_12.Settings)
mN:LoadDefault()
mM:LoadAutoloadConfig()
onRemoveHatchAnimation(lO("RemoveHatchAnimation"))
task.spawn(worker)
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(worker6)
task.spawn(worker7)
task.spawn(worker8)
task.spawn(function()
    local qS_1
    local qZ = false
    repeat
        local qQ
        if not mg.Unloaded then
            local qR = lO("AutoDeletePets") and next(lL)
            local qR_1
            if qR then
                qR_1, qS_1 = pcall(function()
                    return GetPlayerPetData:InvokeServer()
                end)
                if qR_1 and qS_1 then
                    local max = math.max
                    local floor = math.floor
                    local qU = tonumber(lY.KeepBestPets.Value) or 0
                    local qV = max(0, floor(qU))
                    local qR_3 = {}
                    local qT_2 = {}
                    qQ = {}
                    local qU_1 = {}
                    for k, v in qS_1.UnEquipPet do
                        qU_1[#qU_1 + 1] = v
                        local GUID = v.GUID
                        local qW_1 = PetHelper.GetPetAddFromID(v.ID) or 0
                        qQ[GUID] = qW_1
                    end
                    table.sort(qU_1, function(gE, gF)
                        return qQ[gE.GUID] > qQ[gF.GUID]
                    end)
                    local qS_3 = math.min(qV, #qU_1)
                    local q7 = 1
                    while q7 <= qS_3 do
                        local q8 = q7
                        qR_3[qU_1[q8].GUID] = true
                        q7 += 1
                    end
                    for k, v in qU_1 do
                        if #qT_2 >= 20 then
                            break
                        end
                        local qS_4 = PetHelper.GetPetRarityFromID(v.ID)
                        local qU_2 = lO("SkipLockedPets") and v.isLock
                        local qU_3 = (lO("SkipStarPets"))
                        if qU_3 then
                            qU_3 = v.Star > 0 or v.Super > 0
                        end
                        if lL[qS_4] and not qU_2 and not qU_3 and not qR_3[v.GUID] then
                            qT_2[#qT_2 + 1] = v
                        end
                    end
                    if #qT_2 > 0 then
                        DeletePets:FireServer(qT_2)
                    end
                end
            end
            task.wait(lZ(lY.DeleteDelay))
        else
            qZ = true
        end
    until qZ
end)
task.spawn(worker9)
task.spawn(function()
    local ro = false
    repeat
        if not mg.Unloaded then
            if lO("AutoHatch") then
                local max = math.max
                local rj_3
                local floor = math.floor
                local rk_3
                local rl = tonumber(lY.HatchAmount.Value) or 1
                local rh = max(1, floor(rl))
                for k, v in lw(lY.HatchEgg) do
                    local rj_1 = mg.Unloaded or not lO("AutoHatch")
                    if rj_1 then
                        break
                    else
                        local ri = mn[v]
                        local rj_2 = ri and LuckConfig[ri]
                        local rk_1 = rj_2
                        if rj_2 then
                            local rl_1 = rk_1.CostType ~= "coin" or mv(lY.EggReserve) >= rk_1.CostPrice * rh
                            rj_2 = rl_1
                        end
                        if rj_2 then
                            rj_3, rk_3 = pcall(function()
                                return CanAddPet:InvokeServer(rh)
                            end)
                            if rj_3 and rk_3 then
                                pcall(function()
                                    C_S_DoLuck:InvokeServer(ri, rh)
                                end)
                            end
                        end
                    end
                end
            end
            task.wait(lZ(lY.EggDelay))
        else
            ro = true
        end
    until ro
end)
task.spawn(worker10)
task.spawn(worker11)
task.spawn(worker12)
task.spawn(worker13)
