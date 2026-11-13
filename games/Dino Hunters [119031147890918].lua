local tu_1
local lM
local UserInputService
local lt
local Data
local lS
local lz
local mg
local lY
local MountFeedFoodRE
local mm
local l3
local FoodShopRE
local ms
local l9
local MountCraftRE
local ly
local mf
local lX
local lE
local CapsuleRE
local connection2
local CurrentCamera
local lr
local ResFood
local lQ
local VirtualUser
local me
local AlbumRE
local CollectionService
local l1
local lJ
local mq
local ResMap
local ResDailyQuest
local TeleportRE
local mx
local Toggles
local md
local lV
local EggHatchRE
local ResNpc
local mp
local lp
local FireRE
local lO
local mw
local lv
local mc
local MountEquipBestRE
local lB
local QuestRE
local mo
local Players
local ResMainQuest
local lN
local mv
local lu
local mb
local lT
local mh
local connection
local lG
local mn
local l4
local function fn73(bc)
    if not bc or bc.Parent == nil then
        return false
    elseif bc:GetAttribute("CanCatch") ~= true then
        return false
    elseif bc:GetAttribute("CatchExpired") == true then
        return false
    elseif bc:GetAttribute("IsCaptured") == true then
        return false
    else
        return mh(bc)
    end
end
local function fn86(aY)
    local oh = aY and aY:IsA("BasePart")
    if not oh then
        return false
    elseif aY:GetAttribute("isNpc") ~= true then
        return false
    else
        local oh_1 = aY:GetAttribute("CurHP") or 0
        if oh_1 <= 0 then
            return false
        elseif aY:GetAttribute("IsCaptured") == true then
            return false
        else
            return true
        end
    end
end
local function antiAfkLoop()
    while not lE.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local tm = tick() - mv
            local tn = tick() - ms
            if tm >= 300 and tn >= 60 then
                pcall(mb)
            else
                if tm < 300 and tn >= 300 then
                    pcall(mb)
                end
            end
        end
    end
end
local function autoCaptureLoop()
    while not lE.Unloaded do
        task.wait(0.1)
        if Toggles.AutoCapture and Toggles.AutoCapture.Value then
            local q4_1 = os.clock()
            for i, v in ipairs(CollectionService:GetTagged("NPC_TAG")) do
                if lT(v) then
                    if q4_1 - (lN[v] or 0) >= 0.4 then
                        lN[v] = q4_1
                        CapsuleRE:FireServer("Capture", { target = v })
                    end
                end
            end
        end
    end
end
local function fn160()
    local Character = mf.Character
    local nU = Character and Character:FindFirstChildOfClass("Tool")
    return nU
end
local function onTeleportDino(gU)
    local sq_1
    if not gU then
        return
    end
    local sn = lS[gU]
    local sn_2
    if not sn then
        return
    end
    local so = {}
    for i, v in ipairs(sn) do
        so[v] = true
    end
    local Character = mf.Character
    local sp = ly(Character)
    if not sp then
        return
    end
    sq_1, sn_2 = nil, nil
    for i, v in ipairs(CollectionService:GetTagged("NPC_TAG")) do
        local sr = lr(v) and so[v.Name]
        if sr then
            local Magnitude = (v.Position - sp.Position).Magnitude
            if not sn_2 or Magnitude < sn_2 then
                sq_1, sn_2 = v, Magnitude
            end
        end
    end
    if sq_1 then
        sp.CFrame = CFrame.new(sq_1.Position + Vector3.new(0, 8, 0))
    else
        lE:Notify("No " .. gU .. " found in this area")
    end
end
local function onTeleportArea(gQ)
    if gQ and mm[gQ] then
        TeleportRE:FireServer(mm[gQ])
    end
end
local function fn200()
    local rZ = l9("Album")
    if not rZ then
        return
    end
    for k, v in pairs(ResNpc) do
        local r_ = type(v) == "table"
        if r_ then
            r_ = (v.AlbumGetCount or 0) > 0
        end
        if r_ then
            local r__1 = rZ:FindFirstChild(tostring(k))
            local r0_2 = r__1 and r__1:GetAttribute("GetThing") ~= true
            if r0_2 then
                local r0_3 = tonumber(r__1:GetAttribute("CaptureCount")) or tonumber(r__1:GetAttribute("HatchCount")) or tonumber(r__1:GetAttribute("CapturedCount"))
                if (r0_3 or 0) > 0 then
                    AlbumRE:FireServer("GetThing", { ID = k })
                end
            end
        end
    end
end
local function onUnload()
    lE:Unload()
end
local function fn231()
    if not Toggles.AutoFarm.Value then
        lv()
    end
end
local function onInputChanged(h3)
    local UserInputType = h3.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        mv = tick()
    end
end
local function fn243(cj)
    local oX = {}
    local oY = {}
    for k, v in pairs(cj) do
        local oZ = k ~= "__index" and type(v) == "table" and v.Name
        if oZ then
            local oZ_1 = v.AssetType or ""
            local o_ = tostring(oZ_1)
            if o_ ~= "R$" and o_ ~= "Robux" then
                local oZ_3 = oX[v.Name]
                if not oZ_3 then
                    oZ_3 = {}
                    oX[v.Name] = oZ_3
                    table.insert(oY, v.Name)
                end
                local o__1 = table.insert
                local o0_1 = v.ID or k
                o__1(oZ_3, o0_1)
            end
        end
    end
    table.sort(oY)
    return oY, oX
end
local function fn284(gb)
    local rE = l9("Quest")
    if not rE then
        return
    end
    for k, v in pairs(gb) do
        local rF = type(v) == "table" and v.Type ~= nil
        if rF then
            local attr = rE:GetAttribute(k)
            local rG = type(attr) == "number" and attr >= (v.Count or 0)
            if rG then
                QuestRE:FireServer("CheckQuest", { ID = k })
            end
        end
    end
end
local function fn293(X, Y, Z)
    local n6 = mg(X)
    if n6 and n6.Pellets then
        local n7_1 = {}
        local Pellets = n6.Pellets
        local oc = 1
        while oc <= Pellets do
            table.insert(n7_1, { origin = Y, destination = Z.Position, hitTarget = Z, hitPosition = Z.Position })
            oc += 1
        end
        FireRE:FireServer("Fire", { player = mf, toolInstance = X, origin = Y, destination = Z.Position, pellets = n7_1 })
    else
        FireRE:FireServer("Fire", {
            player = mf,
            toolInstance = X,
            origin = Y,
            destination = Z.Position,
            npcInstance = Z,
            hitPosition = Z.Position
        })
    end
end
local function fn299()
    local pw = {}
    lX = {}
    local px = l9("Mount")
    if px then
        for i, child in ipairs(px:GetChildren()) do
            local px_1 = ResNpc[child:GetAttribute("ID")]
            local px_2 = px_1 and px_1.Name or child.Name
            local py_1 = child:GetAttribute("LV") or 1
            local pz = px_2 .. " Lv" .. tostring(py_1) .. " #" .. string.sub(child.Name, 1, 4)
            lX[pz] = child.Name
            table.insert(pw, pz)
        end
    end
    table.sort(pw)
    return pw
end
local function killAuraLoop()
    while not lE.Unloaded do
        task.wait(0.03)
        if Toggles.KillAura and Toggles.KillAura.Value then
            local q__1 = mf.Character
            local q0 = ly(q__1)
            local q__2 = lp()
            if q0 and q__2 then
                local q1_1 = lM(q__2)
                if os.clock() - lt >= q1_1 + 0.05 then
                    local Value = lu.KillAuraRange.Value
                    local q2 = me(q0, Value, nil)
                    if q2 then
                        lt = os.clock()
                        lz(q__2, q0.Position, q2)
                    end
                end
            end
        end
    end
end
local function fn360(aE, aF)
    if not aE or aE == "" or not aF or mm[aE] then
        return
    end
    mm[aE] = aF
    table.insert(mp, aE)
end
local function autoFarmLoop()
    while not lE.Unloaded do
        local ru = task.wait(0.06)
        if Toggles.AutoFarm and Toggles.AutoFarm.Value then
            local Character = mf.Character
            local rw = ly(Character)
            local rx = Character and Character:FindFirstChildOfClass("Humanoid")
            if rw and rx then
                local rx_2 = mq()
                if rx_2 then
                    if not lG(lQ, rx_2) then
                        lJ = nil
                        lQ = me(rw, math.huge, rx_2)
                    end
                    if lQ then
                        rx.PlatformStand = true
                        lO = lO + ru * 1.6
                        local Value = lu.FarmRadius.Value
                        local Position = lQ.Position
                        local rx_3 = Position + Vector3.new(math.cos(lO) * Value, 4, math.sin(lO) * Value)
                        rw.CFrame = CFrame.lookAt(rx_3, Vector3.new(Position.X, rx_3.Y, Position.Z))
                        rw.AssemblyLinearVelocity = Vector3.zero
                    end
                end
            end
        end
    end
end
local function autoHatchEggsLoop()
    while not lE.Unloaded do
        task.wait(1)
        if Toggles.AutoHatchEggs and Toggles.AutoHatchEggs.Value then
            local qt_1 = l9("Egg")
            if qt_1 then
                local qu
                local Value = lu.AutoHatchEggList.Value
                if type(Value) == "table" then
                    for k, v in pairs(Value) do
                        if v and mo[k] then
                            qu = qu or {}
                            for i, v in ipairs(mo[k]) do
                                qu[v] = true
                            end
                        end
                    end
                end
                for i, child in ipairs(qt_1:GetChildren()) do
                    if not md(child) then
                        local qt_2 = child:GetAttribute("ID") or child.Name
                        if qu == nil or qu[qt_2] then
                            EggHatchRE:FireServer(child.Name, false)
                        end
                    end
                end
            end
        end
    end
end
local function fn381()
    local oC_1
    local oB_1
    if identifyexecutor then
        oC_1, oB_1 = identifyexecutor()
        local oD = oC_1 ~= ""
        local oE = type(oC_1) == "string" and oD
        if oE then
            local oD_1 = type(oB_1) == "string" and oB_1 ~= "" and oC_1 .. " " .. oB_1
            l1 = oD_1 or oC_1
        end
    end
end
local function fn383(eG, eH, eI)
    local qP_1
    local qO_1
    qP_1, qO_1 = nil, nil
    for i, v in ipairs(CollectionService:GetTagged("NPC_TAG")) do
        local qQ = (lr(v))
        if qQ then
            qQ = eI == nil or eI[v.Name]
        end
        if qQ then
            local Magnitude = (v.Position - eG.Position).Magnitude
            if Magnitude <= eH and (not qO_1 or Magnitude < qO_1) then
                qP_1, qO_1 = v, Magnitude
            end
        end
    end
    return qP_1
end
local function autoFeedLoop()
    while not lE.Unloaded do
        task.wait(1)
        if Toggles.AutoFeed and Toggles.AutoFeed.Value then
            local qa_1 = l9("Food")
            local qb = lY()
            if qa_1 and #qb > 0 then
                for i, v in ipairs(qb) do
                    for i, v2 in ipairs(mx()) do
                        local qb_1 = tonumber(qa_1:GetAttribute(v2)) or 0
                        local qb_2 = math.min(qb_1, lu.AutoFeedCount.Value)
                        if qb_2 > 0 then
                            MountFeedFoodRE:FireServer(v, v2, qb_2)
                        end
                    end
                end
            end
        end
    end
end
local function fn394(a3)
    local Attacker = a3:FindFirstChild("Attacker")
    local ou = Attacker and Attacker.Value
    local ou_1 = ou == mf
    local oy = if ou_1 then 1 else 0
    local ow = 1764 * oy + 1353 * (1 - oy)
    local ox = 2837 * oy + 518 * (1 - oy)
    if not ((ow * 964 + ox * 2545 + ow * ox) % 16777213 == 13925129) then
        ou_1 = ou == mf.Character
    end
    if ou_1 then
        return true
    end
    local ou_2 = ou and ou:IsA("Player")
    if ou_2 then
        return ou == mf
    elseif ou then
        return Players:GetPlayerFromCharacter(ou) == mf
    else
        return a3:GetAttribute("AttackerUserId") == mf.UserId
    end
end
local function fn404(br)
    local DiscordGroup = br:AddLeftGroupbox("Discord", nil, true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = mw })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = mw })
end
local function onBugMoney()
    local Value = lu.MoneyBugFood.Value
    if not Value then
        lE:Notify("Pick a food first")
        return
    end
    FoodShopRE:FireServer("Buy", { ID = Value, Count = 0/0 })
    task.wait(0.2)
    FoodShopRE:FireServer("Buy", { ID = Value, Count = 999 })
    lE:Notify("Money bugged with " .. Value)
end
local function fn429()
    setclipboard(mc)
    lE:Notify("Copied Discord invite to clipboard")
end
local function fn450()
    lQ = nil
    lJ = nil
    local Character = mf.Character
    local rA = Character and Character:FindFirstChildOfClass("Humanoid")
    if rA then
        rA.PlatformStand = false
        rA.Sit = false
        rA:ChangeState(Enum.HumanoidStateType.GettingUp)
    end
    local rA_1 = ly(Character)
    if rA_1 then
        rA_1.AssemblyLinearVelocity = Vector3.zero
    end
end
local function fn483()
    if not Toggles.Fly.Value then
        local s3 = l4()
        if s3 then
            s3.PlatformStand = false
        end
    end
end
local function worker()
    while not lE.Unloaded do
        task.wait(5)
        lu.AutoFeedPets:SetValues(lV())
    end
end
local function fn497(S)
    local n3 = mg(S)
    return n3 and n3.CD or 1
end
local function onRenderStepped(hv)
    if lE.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local sX_1 = l4()
        if sX_1 then
            sX_1.WalkSpeed = lu.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local Character = mf.Character
        local sY = ly(Character)
        local sX_4 = l4()
        if sY and sX_4 then
            sX_4.PlatformStand = true
            local sX_5 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                sX_5 = sX_5 + CurrentCamera.CFrame.LookVector
            end
            local s2 = if UserInputService:IsKeyDown(Enum.KeyCode.S) then 1 else 0
            if s2 == 1 then
                sX_5 = sX_5 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                sX_5 = sX_5 - CurrentCamera.CFrame.RightVector
            end
            local s2_1 = if UserInputService:IsKeyDown(Enum.KeyCode.D) then 1 else 0
            if s2_1 == 1 then
                sX_5 = sX_5 + CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                sX_5 = sX_5 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                sX_5 = sX_5 - Vector3.new(0, 1, 0)
            end
            sY.Velocity = Vector3.zero
            if sX_5.Magnitude > 0 then
                sY.CFrame = sY.CFrame + sX_5.Unit * lu.FlySpeed.Value * hv
            end
        end
    end
end
local function fn536()
    local pH = {}
    local pI = l9("Food")
    if pI then
        for k, v in pairs(pI:GetAttributes()) do
            local pI_1 = tonumber(v) or 0
            if pI_1 > 0 and ResFood[k] then
                table.insert(pH, k)
            end
        end
    end
    table.sort(pH)
    return pH
end
local function fn540()
    local Character = mf.Character
    local sI = Character and Character:FindFirstChildOfClass("Humanoid")
    return sI
end
local function fn573()
    connection:Disconnect()
    connection2:Disconnect()
    print("Unloaded!")
end
local function onStepped()
    if lE.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = mf.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local sN_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if sN_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function onInputBegan()
    mv = tick()
end
local function fn636(eh)
    local attr = eh:GetAttribute("HatchEndTime")
    local qr = attr ~= nil and os.time() < attr
    return qr
end
local function onJumpRequest()
    if lE.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local sV_1 = l4()
        if sV_1 then
            sV_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn646()
    local pS = {}
    if Toggles.AutoFeedRandomPet.Value then
        local pT_1 = l9("Mount")
        local pU = pT_1 and pT_1:GetChildren()
        local pT_2 = pU
        if pU then
            pU = #pT_2 > 0
        end
        if pU then
            table.insert(pS, pT_2[math.random(#pT_2)].Name)
        end
        return pS
    end
    local Value = lu.AutoFeedPets.Value
    if type(Value) == "table" then
        for k, v in pairs(Value) do
            if v and lX[k] then
                table.insert(pS, lX[k])
            end
        end
    end
    return pS
end
local function onCopyNullHandlesChannel()
    setclipboard("https://youtube.com/@nullhandles")
    lE:Notify("Copied NullHandles channel link")
end
local function fn656(y)
    local nR = y and y:FindFirstChild("HumanoidRootPart")
    return nR
end
local function fn670()
    local rP = l9("UserFlag")
    if not rP then
        return
    end
    for k, v in pairs(ResMap) do
        local rQ = k ~= "__index"
        local rR = type(v) == "table" and rQ
        if rR then
            if rP:GetAttribute("MainQuestReward_" .. tostring(k)) ~= true then
                QuestRE:FireServer("ClaimMainMap", { MapId = k })
            end
        end
    end
end
local function fn673(cC, cD, cE)
    if type(cC) ~= "table" then
        return
    end
    for k, v in pairs(cC) do
        if v and cD[k] then
            for i, v in ipairs(cD[k]) do
                cE(v)
            end
        end
    end
end
local function autoClaimMissionsLoop()
    while not lE.Unloaded do
        task.wait(3)
        if Toggles.AutoClaimMissions and Toggles.AutoClaimMissions.Value then
            pcall(l3, ResDailyQuest)
            pcall(l3, ResMainQuest)
            pcall(lB)
            pcall(mn)
        end
        if Toggles.AutoEquipBest and Toggles.AutoEquipBest.Value then
            pcall(function()
                MountEquipBestRE:FireServer()
            end)
        end
        if Toggles.AutoCraftAll and Toggles.AutoCraftAll.Value then
            pcall(function()
                local r8 = l9("Mount")
                if r8 then
                    for i, child in ipairs(r8:GetChildren()) do
                        local r8_1 = tonumber(child:GetAttribute("Rank")) or 0
                        if r8_1 < 9 then
                            MountCraftRE:FireServer(child.Name)
                        end
                    end
                end
            end)
        end
    end
end
local function fn709(fx, fy)
    if not (fx and fx.Parent and fy[fx.Name]) then
        return false
    elseif lr(fx) then
        lJ = nil
        return true
    else
        local rs_1 = fx:GetAttribute("IsCaptured") == true or fx:GetAttribute("CatchExpired") == true
        if rs_1 then
            return false
        elseif lT(fx) then
            return true
        else
            local rs_2 = lJ or os.clock()
            lJ = rs_2
            return os.clock() - lJ <= 3
        end
    end
end
local function fn736(a0)
    if typeof(a0) ~= "Instance" then
        return nil
    elseif a0:IsA("BasePart") then
        return a0
    elseif a0:IsA("Model") then
        local oj = (a0:FindFirstChild("HumanoidRootPart"))
        local oq = if oj then 1 else 0
        local oo = 720 * oq + 3925 * (1 - oq)
        local op = 2479 * oq + 3212 * (1 - oq)
        if not ((oo * 494 + op * 2931 + oo * op) % 16777213 == 9406509) then
            oj = a0.PrimaryPart
        end
        if not oj then
            oj = a0:FindFirstChildWhichIsA("BasePart", true)
        end
        return oj
    else
        return nil
    end
end
local function fn757()
    if not Toggles.WalkSpeedEnabled.Value then
        local s8 = l4()
        if s8 then
            s8.WalkSpeed = 16
        end
    end
end
local function fn758(aj)
    return Data:FindFirstChild(aj)
end
local function fn772()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    ms = tick()
end
Players = nil
lp = nil
ResMap = nil
lr = nil
lt = nil
lu = nil
lv = nil
Toggles = nil
ly = nil
lz = nil
lB = nil
EggHatchRE = nil
lE = nil
MountFeedFoodRE = nil
lG = nil
lJ = nil
connection2 = nil
FoodShopRE = nil
lM = nil
lN = nil
lO = nil
TeleportRE = nil
lQ = nil
MountCraftRE = nil
lS = nil
lT = nil
MountEquipBestRE = nil
lV = nil
AlbumRE = nil
lX = nil
lY = nil
connection = nil
QuestRE = nil
ResNpc = nil
l1 = nil
CapsuleRE = nil
l3 = nil
l4 = nil
ResMainQuest = nil
FireRE = nil
ResDailyQuest = nil
ResFood = nil
l9 = nil
Data = nil
local ls, lx, lA, MapDoorRF, lH, ToolRE
mb = nil
mc = nil
md = nil
me = nil
mf = nil
mg = nil
mh = nil
CollectionService = nil
mm = nil
mn = nil
mo = nil
mp = nil
mq = nil
CurrentCamera = nil
ms = nil
UserInputService = nil
mv = nil
mw = nil
mx = nil
VirtualUser = nil
local mi, mj, ItemUtil, mz, mA, mJ, mK, mL, mM, mN, mP, mQ, mR, mS, ResGun, AutoHatchGroup, mY
local mO_2, mO_3
mi = nil
mj = nil
ItemUtil = nil
mz = nil
mA = nil
Players, VirtualUser, UserInputService, CollectionService, mf, mc, FireRE, CapsuleRE, QuestRE, AlbumRE, MountEquipBestRE, MountCraftRE, TeleportRE, FoodShopRE, ToolRE, MountFeedFoodRE, MapDoorRF, EggHatchRE, ItemUtil, mi, Data, ResNpc, lS, ly, lp, mg, lM, lz, l9 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
VirtualUser = game:GetService("VirtualUser")
UserInputService = game:GetService("UserInputService")
local mH = game:GetService("ReplicatedStorage")
CollectionService = game:GetService("CollectionService")
local RunService = game:GetService("RunService")
mf = Players.LocalPlayer
mc = "https://discord.gg/ehKVq7pf7v"
local mD = "Dino Hunters"
local Remotes = mH:WaitForChild("Remotes")
local tu_14_9, tu_14_15
FireRE = Remotes:WaitForChild("FireRE")
CapsuleRE = Remotes:WaitForChild("CapsuleRE")
QuestRE = Remotes:WaitForChild("QuestRE")
AlbumRE = Remotes:WaitForChild("AlbumRE")
MountEquipBestRE = Remotes:WaitForChild("MountEquipBestRE")
MountCraftRE = Remotes:WaitForChild("MountCraftRE")
TeleportRE = Remotes:WaitForChild("TeleportRE")
FoodShopRE = Remotes:WaitForChild("FoodShopRE")
ToolRE = Remotes:WaitForChild("ToolRE")
MountFeedFoodRE = Remotes:WaitForChild("MountFeedFoodRE")
MapDoorRF = Remotes:WaitForChild("MapDoorRF")
EggHatchRE = Remotes:WaitForChild("EggHatchRE")
ly = fn656
lp = fn160
ItemUtil = require(mH:WaitForChild("Utility"):WaitForChild("ItemUtil"))
mi = {}
mg = function(H)
    local nW, nX
    if not H then
        return nil
    end
    local nY = (H:GetAttribute("ID"))
    local n2 = if nY then 1 else 0
    local n0 = 1810 * n2 + 3691 * (1 - n2)
    local n1 = 219 * n2 + 2817 * (1 - n2)
    if not ((n0 * 4055 + n1 * 3156 + n0 * n1) % 16777213 == 8427104) then
        nY = H.Name
    end
    nW = nY
    local nY_1 = mi[nW]
    if nY_1 ~= nil then
        return nY_1 or nil
    end
    nX = nil
    pcall(function()
        nX = ItemUtil:GetDef(nW)
    end)
    local nY_2 = nX or false
    mi[nW] = nY_2
    return nX
end
lM = fn497
lz = fn293
Data = mf:WaitForChild("PlayerGui"):WaitForChild("Data")
l9 = fn758
ResNpc = require(mH:WaitForChild("Config"):WaitForChild("ResNpc"))
local mF = {}
local mE = {}
lS = {}
for k, v in pairs(ResNpc) do
    local tu_14_1 = type(v) == "table" and v.Name
    if tu_14_1 then
        local tu_14_2 = lS[v.Name]
        if not tu_14_2 then
            tu_14_2 = {}
            lS[v.Name] = tu_14_2
            if v.IsBoss then
                table.insert(mE, v.Name)
            else
                table.insert(mF, v.Name)
            end
        end
        table.insert(tu_14_2, k)
    end
end
table.sort(mF)
table.sort(mE)
local mI = {}
for i, v in ipairs(mF) do
    table.insert(mI, v)
end
for i, v in ipairs(mE) do
    table.insert(mI, v)
end
ResMap, tu_1, mJ, mp, mm, mK = nil, nil, nil, nil, nil, nil
local tu_14_3 = 28
repeat
    mL = (tu_14_3 * 1 + 1) % 4 + 1
    if mL <= 2 then
        if mL <= 1 then
            if (tu_14_3 * 3 + 6) * 17 % 4 == ((tu_14_3 * 3 + 6) * 17 + 15) % 4 then
                mK = {}
                mp = {}
                mm = fn360
            else
                mp = {}
                mm = {}
                mK = fn360
            end
            tu_14_3 = (tu_14_3 + 1) % 32
        else
            local ud = bit32.rrotate(bit32.bxor(bit32.lrotate(tu_14_3, 11), string.byte(tostring(mJ))), 31)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(ud, 386376099), 2867358594), (bit32.bxor(bit32.band(ud, 3908591196), 4271153154))), 2867358594), 4271153154) == ud then
                table.sort(mI)
                ResMap = require(mH.Config:WaitForChild("ResMap"))
            else
                table.sort(ResMap)
                mH = require(mI.Config:WaitForChild("ResMap"))
            end
            tu_14_3 = (tu_14_3 + 5) % 32
        end
    elseif mL <= 3 then
        local t3 = bit32.rrotate(bit32.bxor(bit32.lrotate(tu_14_3, 24), string.byte(tostring(tu_1))), 27)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(t3, 834411341), 1402145642), (bit32.bxor(bit32.band(t3, 3460555954), 1032641831))), 1402145642), 1032641831) == t3 then
            tu_1 = require(mH.Config:WaitForChild("ResMapTeleport"))
        else
            mH = require(tu_1.Config:WaitForChild("ResMapTeleport"))
        end
        tu_14_3 = (tu_14_3 + 1) % 32
    else
        if (tu_14_3 * 3 + 1) * 5 % 4 == ((tu_14_3 * 3 + 1) * 5 + 8) % 4 then
            mJ = require(mH.Config:WaitForChild("ResSpawn"))
        else
            mH = require(mJ.Config:WaitForChild("ResSpawn"))
        end
        tu_14_3 = (tu_14_3 + 1) % 32
    end
until (tu_14_3 * 21 + 30) % 32 == 18
for k, v in pairs(ResMap) do
    local tu_14_4 = k ~= "__index"
    mL = type(v) == "table" and tu_14_4
    if mL then
        mL = v.Name or k
        mK(mL, k)
        local tu_14_6 = tu_1[k]
        if type(tu_14_6) == "table" then
            local nt = 1
            while nt <= 50 do
                local nu = nt
                mM = tu_14_6["Teleport" .. nu]
                mN = mM ~= ""
                if mM ~= nil and mN then
                    mN = tostring(mM)
                    mM = mJ[mN] or ResMap[mN]
                    if mM then
                        mO_2 = mN
                    elseif mN:sub(1, #k + 1) == k .. "_" then
                        mO_2 = mN
                    else
                        mO_2 = k .. "_" .. mN
                    end
                    mM = tu_14_6["Teleport" .. nu .. "Name"] or tu_14_6["Teleport" .. nu .. "Title"]
                    mP = mM or mN
                    mM = mP
                    mK(mL .. " - " .. mM, mO_2)
                end
                nt += 1
            end
        end
    end
end
for k, v in pairs(mJ) do
    local tu_14_7 = k ~= "__index"
    tu_1 = type(v) == "table" and tu_14_7
    if tu_1 then
        tu_1 = v.Name or v.Title or k
        mK(tu_1, k)
    end
end
mJ, lE, mP, mO_3, Toggles, lu, tu_14_9, mQ, lr, mM, mh, lT, mw, mN = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
mL = 26
repeat
    tu_1 = (mL * 3 + 1) % 8 + 1
    if tu_1 <= 4 then
        if tu_1 <= 2 then
            if tu_1 <= 1 then
                if (mO_3 or mJ or not mh and mO_3) and ((not tu_14_9 or not mO_3) and (not mO_3 or not tu_14_9)) or (not mJ and not mJ or (not mJ or mh)) and (not mO_3 and mO_3 and (mh or not mO_3)) or ((mh or mJ) and (mh or not tu_14_9) or (not mO_3 or mh) and (tu_14_9 or not tu_14_9)) and ((not mh and not mJ or not mJ and mO_3) and (mh or mh or (not mh or not mh))) or not ((mO_3 or mJ or not mh and mO_3) and ((not tu_14_9 or not mO_3) and (not mO_3 or not tu_14_9)) or (not mJ and not mJ or (not mJ or mh)) and (not mO_3 and mO_3 and (mh or not mO_3)) or ((mh or mJ) and (mh or not tu_14_9) or (not mO_3 or mh) and (tu_14_9 or not tu_14_9)) and ((not mh and not mJ or not mJ and mO_3) and (mh or mh or (not mh or not mh)))) then
                    lT = fn73
                else
                    mJ = fn73
                end
                mL = (mL + 19) % 32
            else
                mK = (vector.create((mL * 5 + 6) % 11 + 1, (mL * 1 + 9) % 13 + 1, (mL * 12 + 7) % 17 + 1))
                mR = (vector.create((mL * 4 + 9) % 11 + 1, (mL * 9 + 12) % 13 + 1, (mL * 14 + 7) % 17 + 1))
                mS = (vector.create((mL * 3 + 7) % 11 + 1, (mL * 11 + 4) % 13 + 1, (mL * 6 + 5) % 17 + 1))
                if vector.dot(vector.cross(mK, mR), mS) == vector.dot(vector.cross(mR, mS), mK) + 5 then
                    lT = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
                else
                    mJ = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
                end
                mL = (mL + 27) % 32
            end
        elseif tu_1 <= 3 then
            if (not mP and mO_3 and (mM and not mP) and (mO_3 and mh or mO_3 and mO_3) or ((mh or not mM) and (mh and mO_3) or (not mM and not mO_3 or not lT and not mP))) and not (not mP and mO_3 and (mM and not mP) and (mO_3 and mh or mO_3 and mO_3) or ((mh or not mM) and (mh and mO_3) or (not mM and not mO_3 or not lT and not mP))) then
                mJ = loadstring(game:HttpGet(lE .. "Library.lua"))()
            else
                lE = loadstring(game:HttpGet(mJ .. "Library.lua"))()
            end
            mL = (mL + 3) % 32
        else
            mK = {
                "ocwzxd",
                "xvomvfsjoh",
                "hrtidj",
                "yrrlpug",
                "ukdanoc",
                "tnqu",
                "akdu",
                "rrcaji",
                "etmpq",
                "thmsinh",
                "mgn"
            }
            local t6 = mL
            mR = mK[t6 % 11 + 1]
            if mR:len() >= mR:gsub("(.)", "%1%1", t6 % 3 % 2 + 1):len() then
                mO_3 = loadstring(game:HttpGet(Toggles .. "addons/ThemeManager.lua"))()
                mJ = loadstring(game:HttpGet(Toggles .. "addons/SaveManager.lua"))()
                lu = mP.Toggles
                lE = mP.Options
            else
                mP = loadstring(game:HttpGet(mJ .. "addons/ThemeManager.lua"))()
                mO_3 = loadstring(game:HttpGet(mJ .. "addons/SaveManager.lua"))()
                Toggles = lE.Toggles
                lu = lE.Options
            end
            mL = (mL + 19) % 32
        end
    elseif tu_1 <= 6 then
        if tu_1 <= 5 then
            mK = { "tuylgdis", "jcjvdcdtr", "yplxvqtqtmb", "gtnvcmvdvm", "zfkepeq", "axpjh", "fxnta" }
            local uy = mL
            mR = mK[uy % 7 + 1]
            if mR:len() <= mR:gsub("(.)", "%1%1", uy % 3 % 2 + 1):len() then
                tu_14_9 = lE:CreateWindow({
                    Title = "Ouroboros Hub",
                    Footer = mc .. " | " .. mD,
                    Icon = 18657887261,
                    NotifySide = "Right",
                    ShowCustomCursor = false
                })
            else
                mD = tu_14_9:CreateWindow({
                    NotifySide = "Right",
                    Footer = lE .. " | https://discord.gg/ehKVq7pf7v",
                    Icon = 18657887261,
                    ShowCustomCursor = false,
                    Title = "Ouroboros Hub"
                })
            end
            mL = (mL + 11) % 32
        else
            if not tu_14_9 and lE and (not lr or not tu_14_9) and (lr and lE or not lE and not lE) or not (not tu_14_9 and lE and (not lr or not tu_14_9) and (lr and lE or not lE and not lE)) then
                mQ = {
                    Info = tu_14_9:AddTab("Info", "info"),
                    Main = tu_14_9:AddTab("Main", "gavel"),
                    Player = tu_14_9:AddTab("Player", "person-standing"),
                    Settings = tu_14_9:AddTab("Settings", "settings")
                }
            else
                tu_14_9 = {
                    Main = mQ:AddTab("Main", "gavel"),
                    Player = mQ:AddTab("Player", "person-standing"),
                    Settings = mQ:AddTab("Settings", "settings"),
                    Info = mQ:AddTab("Info", "info")
                }
            end
            mL = (mL + 11) % 32
        end
    elseif tu_1 <= 7 then
        if mL * 64170921 + 1 + 5 <= mL * 64170921 + 1 + 5 + 4 then
            mw = fn429
            mN = fn404
        else
            mN = fn429
            mw = fn404
        end
        mL = (mL + 27) % 32
    else
        if mL * 103034867 + 13 + 1 <= mL * 103034867 + 13 + 1 + 2 then
            table.sort(mp)
            lr = fn86
            mM = fn736
            mh = fn394
        else
            table.sort(mh)
            mM = fn86
            mp = fn736
            lr = fn394
        end
        mL = (mL + 3) % 32
    end
until (mL * 9 + 19) % 32 == 21
for k, v in mQ do
    mN(v)
end
mK, l1, mJ, tu_1, lH = nil, nil, nil, nil, nil
local tu_14_10 = 10
repeat
    mL = (tu_14_10 * 3 + 3) % 5 + 1
    if mL <= 3 then
        if mL <= 2 then
            if mL <= 1 then
                if (not lH and not tu_1 and (not tu_1 or not lH) or (not tu_1 and not tu_1 or (not lH or not lH))) and not (not lH and not tu_1 and (not tu_1 or not lH) or (not tu_1 and not tu_1 or (not lH or not lH))) then
                    pcall(fn381)
                    l1:AddLabel("Executor: " .. mQ, true)
                    l1:AddLabel("Game: " .. mJ, true)
                    l1:AddLabel("Player: " .. mD.Name, true)
                    l1:AddLabel("Status: Keyless", true)
                    mf = mK.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
                else
                    pcall(fn381)
                    mK:AddLabel("Executor: " .. l1, true)
                    mK:AddLabel("Game: " .. mD, true)
                    mK:AddLabel("Player: " .. mf.Name, true)
                    mK:AddLabel("Status: Keyless", true)
                    mJ = mQ.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
                end
                tu_14_10 = (tu_14_10 + 17) % 40
            else
                mM = {
                    "hbbeqgsdwmb",
                    "nklyrkifr",
                    "hiwjofrqrcm",
                    "rxv",
                    "zge",
                    "exyl",
                    "pjiqfum",
                    "jesproxhn",
                    "znbhhpj",
                    "kimwjqig",
                    "zsuvnhfe"
                }
                local uz = tu_14_10
                mN = mM[uz % 11 + 1]
                if mN:len() <= mN:reverse():rep(uz % 3 + 2):len() then
                    mJ:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
                    mJ:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
                    mJ:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
                    mJ:AddButton({ Text = "Copy Discord Invite", Func = mw })
                    tu_1 = mQ.Info:AddRightGroupbox("FAQ", "circle-help")
                else
                    mw:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
                    mw:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
                    mw:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
                    mw:AddButton({ Text = "Copy Discord Invite", Func = tu_1 })
                    mQ = mJ.Info:AddRightGroupbox("FAQ", "circle-help")
                end
                tu_14_10 = (tu_14_10 + 12) % 40
            end
        else
            mM = { "bejrziplm", "msskfk", "ixpeov", "qcqguck", "hbmhqvbi", "hyd", "byxumcj", "qzjenyqt" }
            local tZ = tu_14_10
            mN = mM[tZ % 8 + 1]
            if mN:len() <= mN:gsub("(.)", "%1%1", tZ % 3 % 2 + 1):len() then
                tu_1:AddLabel("Where do I get a good config?", true)
                tu_1:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
                tu_1:AddLabel("How do I import / export configs?", true)
                tu_1:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
                tu_1:AddLabel("How do I report bugs?", true)
                tu_1:AddLabel("Join the Discord and post it in the bugs channel.", true)
                tu_1:AddLabel("How do I make suggestions?", true)
                tu_1:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
                tu_1:AddLabel("How do I get help or updates?", true)
                tu_1:AddLabel("Join the Discord, updates and support are posted there first.", true)
                lH = {}
            else
                lH:AddLabel("Where do I get a good config?", true)
                lH:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
                lH:AddLabel("How do I import / export configs?", true)
                lH:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
                lH:AddLabel("How do I report bugs?", true)
                lH:AddLabel("Join the Discord and post it in the bugs channel.", true)
                lH:AddLabel("How do I make suggestions?", true)
                lH:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
                lH:AddLabel("How do I get help or updates?", true)
                lH:AddLabel("Join the Discord, updates and support are posted there first.", true)
                tu_1 = {}
            end
            tu_14_10 = (tu_14_10 + 37) % 40
        end
    elseif mL <= 4 then
        if (tu_14_10 * 3 + 7) * 9 % 4 == ((tu_14_10 * 3 + 7) * 9 + 8) % 4 then
            mK = mQ.Info:AddLeftGroupbox("Basic Info", "circle-user")
        else
            mQ = mK.Info:AddLeftGroupbox("Basic Info", "circle-user")
        end
        tu_14_10 = (tu_14_10 + 17) % 40
    else
        if (not lH and tu_14_10 and (not lH or not lH) or (l1 and not tu_14_10 or (not tu_14_10 or mJ))) and (mJ and lH or not mJ and lH or (tu_14_10 and not lH or lH and mJ)) and not ((not lH and tu_14_10 and (not lH or not lH) or (l1 and not tu_14_10 or (not tu_14_10 or mJ))) and (mJ and lH or not mJ and lH or (tu_14_10 and not lH or lH and mJ))) then
            tu_1 = "Unknown"
        else
            l1 = "Unknown"
        end
        tu_14_10 = (tu_14_10 + 2) % 40
    end
until (tu_14_10 * 27 + 23) % 40 == 28
for k, v in pairs(ResMap) do
    local tu_14_11 = k ~= "__index"
    tu_1 = type(v) == "table" and tu_14_11
    if tu_1 then
        table.insert(lH, k)
    end
end
tu_1, lx = nil, nil
local tu_14_12 = 2
repeat
    local uv = bit32.rrotate(bit32.bxor(bit32.lrotate(tu_14_12, 5), string.byte(tostring(tu_1))), 28)
    if bit32.bxor(bit32.lrotate(bit32.bxor(uv, 4050634147), 28), 1058471002) == bit32.lrotate(uv, 28) then
        table.sort(lH)
        tu_1 = {}
        lx = {}
    else
        table.sort(lx)
        lH = {}
        tu_1 = {}
    end
    tu_14_12 = (tu_14_12 + 6) % 8
until (tu_14_12 * 7 + 7) % 8 == 7
for i, v in ipairs(lH) do
    if i > 1 then
        mD = ResMap[v].Name or v
        lx[mD] = i
        table.insert(tu_1, mD)
    end
end
mM = mQ.Main:AddLeftGroupbox("Auto Buy Zones", "map")
mM:AddToggle("AutoBuyZones", { Text = "Auto Buy Zones", Default = false })
mM:AddDropdown("AutoBuyZoneList", { Values = tu_1, Default = {}, Multi = true, Searchable = true, AllowNull = true, Text = "Zones" })
task.spawn(function()
    while not lE.Unloaded do
        task.wait(3)
        if Toggles.AutoBuyZones and Toggles.AutoBuyZones.Value then
            local oL_1 = l9("UserFlag")
            local Value = lu.AutoBuyZoneList.Value
            local oN = oL_1 and type(Value) == "table"
            if oN then
                for k, v in pairs(Value) do
                    local oJ = v and lx[k]
                    if oJ then
                        local oK = lH[oJ]
                        if oL_1:GetAttribute("MapUnlocked_" .. oK) ~= true then
                            pcall(function()
                                MapDoorRF:InvokeServer(lH[oJ - 1], oK)
                            end)
                        end
                    end
                end
            end
        end
    end
end)
mK = mQ.Main:AddLeftGroupbox("Kill Aura", "swords")
mK:AddToggle("KillAura", { Text = "Kill Aura", Default = false })
mK:AddSlider("KillAuraRange", { Text = "Range", Default = 150, Min = 20, Max = 500, Rounding = 0, Suffix = " studs" })
mJ = mQ.Main:AddRightGroupbox("Capture", "circle-dot")
mJ:AddToggle("AutoCapture", { Text = "Auto Capture", Default = false })
local tu_14_14 = mQ.Main:AddLeftGroupbox("Auto Farm", "crosshair")
tu_14_14:AddToggle("AutoFarm", { Text = "Auto Farm", Default = false })
tu_14_14:AddDropdown("FarmEnemies", { Values = mF, Default = {}, Multi = true, Searchable = true, AllowNull = true, Text = "Enemies" })
tu_14_14:AddDropdown("FarmBosses", { Values = mE, Default = {}, Multi = true, Searchable = true, AllowNull = true, Text = "Bosses" })
tu_14_14:AddSlider("FarmRadius", { Text = "Strafe Radius", Default = 12, Min = 6, Max = 40, Rounding = 0, Suffix = " studs" })
mN = {}
local nO = 1
while nO <= 8 do
    local nP = nO
    table.insert(mN, string.format("Food%02d", nP))
    nO += 1
end
ResGun, ResFood, mD, lA, ls, mz, mo, lX, AutoHatchGroup, lt, lN, lQ, lO, lJ, ResDailyQuest, ResMainQuest, CurrentCamera, mv, ms, connection, connection2, mj, lV, mA, lY, mx, md, me, mq, lG, lv, l3, lB, mn, l4, mb = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local MoneyBugGroup = mQ.Main:AddLeftGroupbox("Money Bug", "banknote")
if (mx or mz or false and mz) and (mz and mx or AutoHatchGroup and mz) and (AutoHatchGroup and AutoHatchGroup and (not mD and mx) or (mD or not mz) and (mx or not mD)) and not ((mx or mz or false and mz) and (mz and mx or AutoHatchGroup and mz) and (AutoHatchGroup and AutoHatchGroup and (not mD and mx) or (mD or not mz) and (mx or not mD))) then
    mN:AddLabel("How to use:", true)
    mN:AddLabel("1. Pick any food in the dropdown below. Food06 works fine, the item does not matter.", true)
    mN:AddLabel("2. Press Bug Money. It buys the food once with a count of 0/0 (NaN), which turns your money into NaN, then buys it again with a count of 999.", true)
    mN:AddLabel("3. Your money is now bugged and never runs out.", true)
    mN:AddLabel('<font color="rgb(255,70,70)">Important: once your money is NaN the in game shop menus stop working, because the game cannot compare a NaN balance against a price.</font>', true)
    mN:AddLabel('<font color="rgb(255,70,70)">If buying stops working, rejoin and press Bug Money again.</font>', true)
    mN:AddLabel('<font color="rgb(90,255,120)">You can buy anything once you have NaN money, but only through the Auto Buy feature above.</font>', true)
    mN:AddLabel('<font color="rgb(90,255,120)">You can also buy any weapon, again only through the Auto Buy feature.</font>', true)
    mN:AddLabel("Method found by NullHandles: youtube.com/@nullhandles", true)
    mN:AddDropdown("MoneyBugFood", { Default = "Food06", Multi = false, Values = ResGun, Text = "Food", Searchable = true })
    mN:AddButton({ Text = "Bug Money", Func = onBugMoney })
    mN:AddButton({ Text = "Copy NullHandles Channel", Func = onCopyNullHandlesChannel })
    mH = require(MoneyBugGroup.Config:WaitForChild("ResGun"))
else
    MoneyBugGroup:AddLabel("How to use:", true)
    MoneyBugGroup:AddLabel("1. Pick any food in the dropdown below. Food06 works fine, the item does not matter.", true)
    MoneyBugGroup:AddLabel("2. Press Bug Money. It buys the food once with a count of 0/0 (NaN), which turns your money into NaN, then buys it again with a count of 999.", true)
    MoneyBugGroup:AddLabel("3. Your money is now bugged and never runs out.", true)
    MoneyBugGroup:AddLabel('<font color="rgb(255,70,70)">Important: once your money is NaN the in game shop menus stop working, because the game cannot compare a NaN balance against a price.</font>', true)
    MoneyBugGroup:AddLabel('<font color="rgb(255,70,70)">If buying stops working, rejoin and press Bug Money again.</font>', true)
    MoneyBugGroup:AddLabel('<font color="rgb(90,255,120)">You can buy anything once you have NaN money, but only through the Auto Buy feature above.</font>', true)
    MoneyBugGroup:AddLabel('<font color="rgb(90,255,120)">You can also buy any weapon, again only through the Auto Buy feature.</font>', true)
    MoneyBugGroup:AddLabel("Method found by NullHandles: youtube.com/@nullhandles", true)
    MoneyBugGroup:AddDropdown("MoneyBugFood", { Values = mN, Default = "Food06", Multi = false, Searchable = true, Text = "Food" })
    MoneyBugGroup:AddButton({ Text = "Bug Money", Func = onBugMoney })
    MoneyBugGroup:AddButton({ Text = "Copy NullHandles Channel", Func = onCopyNullHandlesChannel })
    ResGun = require(mH.Config:WaitForChild("ResGun"))
end
ResFood = require(mH.Config:WaitForChild("ResFood"))
mL = require(mH.Config:WaitForChild("ResCapsule"))
mJ = fn243
mE = require(mH.Config:WaitForChild("ResEgg"))
mD, lA = mJ(ResGun)
tu_1, ls = mJ(ResFood)
tu_14_15, mz = mJ(mL)
mY, mo = mJ(mE)
local AutoBuyGroup = mQ.Main:AddRightGroupbox("Auto Buy", "shopping-cart")
AutoBuyGroup:AddToggle("AutoBuy", { Text = "Auto Buy", Default = false })
AutoBuyGroup:AddDropdown("AutoBuyGuns", { Values = mD, Default = {}, Multi = true, Searchable = true, AllowNull = true, Text = "Guns" })
AutoBuyGroup:AddDropdown("AutoBuyFood", { Values = tu_1, Default = {}, Multi = true, Searchable = true, AllowNull = true, Text = "Food" })
AutoBuyGroup:AddDropdown("AutoBuyCapsules", {
    Values = tu_14_15,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true,
    Text = "Capsules"
})
AutoBuyGroup:AddSlider("AutoBuyFoodCount", { Text = "Food Per Buy", Default = 1, Min = 1, Max = 999, Rounding = 0 })
AutoBuyGroup:AddSlider("AutoBuyDelay", { Text = "Delay", Default = 1, Min = 0.2, Max = 10, Rounding = 1, Suffix = "s" })
mj = fn673
task.spawn(function()
    local pv = false
    repeat
        local po, Value
        if not lE.Unloaded then
            local wait = task.wait
            local ps = lu.AutoBuyDelay and lu.AutoBuyDelay.Value or 1
            wait(ps)
            if Toggles.AutoBuy and Toggles.AutoBuy.Value then
                po = l9("Tools")
                mj(lu.AutoBuyGuns.Value, lA, function(cT)
                    local pm = po and po:FindFirstChild(cT)
                    if not pm then
                        ToolRE:FireServer("Buy", { ID = cT })
                    end
                end)
                Value = lu.AutoBuyFoodCount.Value
                mj(lu.AutoBuyFood.Value, ls, function(c_)
                    FoodShopRE:FireServer("Buy", { ID = c_, Count = Value })
                end)
                mj(lu.AutoBuyCapsules.Value, mz, function(c4)
                    CapsuleRE:FireServer("Buy", { ID = c4 })
                end)
            end
        else
            pv = true
        end
    until pv
end)
lX = {}
lV = fn299
mA = fn536
mS = mQ.Main:AddLeftGroupbox("Auto Feed", "drumstick")
mS:AddToggle("AutoFeed", { Text = "Auto Feed", Default = false })
mS:AddToggle("AutoFeedRandomPet", { Text = "Feed Random Pets", Default = false })
mS:AddDropdown("AutoFeedPets", { Values = lV(), Default = {}, Multi = true, Searchable = true, AllowNull = true, Text = "Pets" })
mS:AddDropdown("AutoFeedFood", { Values = tu_1, Default = {}, Multi = true, Searchable = true, AllowNull = true, Text = "Food" })
mS:AddLabel("Leave Food empty to feed random food you own.", true)
mS:AddSlider("AutoFeedCount", { Text = "Food Per Feed", Default = 1, Min = 1, Max = 999, Rounding = 0 })
task.spawn(worker)
lY = fn646
mx = function()
    local p4
    local p3
    p3 = nil
    p4 = nil
    p4 = {}
    p3 = l9("Food")
    if not p3 then
        return p4
    end
    mj(lu.AutoFeedFood.Value, ls, function(dT)
        local p1 = tonumber(p3:GetAttribute(dT)) or 0
        if p1 > 0 then
            table.insert(p4, dT)
        end
    end)
    if #p4 == 0 then
        local p5 = mA()
        if #p5 > 0 then
            table.insert(p4, p5[math.random(#p5)])
        end
    end
    return p4
end
if (lY or mb) and (not lv and not lv) and (lB and lJ and (not lJ or lY)) or not ((lY or mb) and (not lv and not lv) and (lB and lJ and (not lJ or lY))) then
    task.spawn(autoFeedLoop)
    local AutomationGroup = mQ.Main:AddRightGroupbox("Automation", "bot")
    AutomationGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
    AutomationGroup:AddToggle("AutoCraftAll", { Text = "Auto Craft All", Default = false })
    AutomationGroup:AddToggle("AutoClaimMissions", { Text = "Auto Claim Missions", Default = false })
    AutoHatchGroup = mQ.Main:AddRightGroupbox("Auto Hatch", "egg")
    AutoHatchGroup:AddToggle("AutoHatchEggs", { Text = "Auto Hatch Eggs", Default = false })
    AutoHatchGroup:AddDropdown("AutoHatchEggList", { Values = mY, Default = {}, Multi = true, Searchable = true, AllowNull = true, Text = "Eggs" })
    AutoHatchGroup:AddLabel("Leave Eggs empty to hatch every egg in your inventory.", true)
    md = fn636
    task.spawn(autoHatchEggsLoop)
    me = fn383
else
    task.spawn(autoFeedLoop)
    mQ = AutoHatchGroup.Main:AddRightGroupbox("Automation", "bot")
    mQ:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
    mQ:AddToggle("AutoCraftAll", { Text = "Auto Craft All", Default = false })
    mQ:AddToggle("AutoClaimMissions", { Text = "Auto Claim Missions", Default = false })
    me = AutoHatchGroup.Main:AddRightGroupbox("Auto Hatch", "egg")
    me:AddToggle("AutoHatchEggs", { Text = "Auto Hatch Eggs", Default = false })
    me:AddDropdown("AutoHatchEggList", { AllowNull = true, Multi = true, Searchable = true, Values = md, Text = "Eggs", Default = {} })
    me:AddLabel("Leave Eggs empty to hatch every egg in your inventory.", true)
    task.spawn(autoHatchEggsLoop)
end
lt = 0
task.spawn(killAuraLoop)
lN = {}
task.spawn(autoCaptureLoop)
mq = function()
    local fk
    local function fl(fm)
        if type(fm) ~= "table" then
            return
        end
        for k, v in pairs(fm) do
            if v and lS[k] then
                fk = fk or {}
                for i, v in ipairs(lS[k]) do
                    fk[v] = true
                end
            end
        end
    end
    fl(lu.FarmEnemies.Value)
    fl(lu.FarmBosses.Value)
    return fk
end
lQ = nil
lO = 0
lJ = nil
lG = fn709
task.spawn(autoFarmLoop)
lv = fn450
Toggles.AutoFarm:OnChanged(fn231)
ResDailyQuest = require(mH:WaitForChild("Config"):WaitForChild("ResDailyQuest"))
ResMainQuest = require(mH:WaitForChild("Config"):WaitForChild("ResMainQuest"))
l3 = fn284
lB = fn670
mn = fn200
task.spawn(autoClaimMissionsLoop)
mR = mQ.Player:AddLeftGroupbox("Movement", "footprints")
mR:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
mR:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
mR:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
mR:AddToggle("NoClip", { Text = "NoClip", Default = false })
mM = mQ.Player:AddRightGroupbox("Fly", "feather")
mM:AddToggle("Fly", { Text = "Fly", Default = false })
mM:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
mK = mQ.Player:AddLeftGroupbox("Teleport", "map-pin")
mK:AddDropdown("TeleportArea", {
    Values = mp,
    Multi = false,
    Searchable = true,
    AllowNull = true,
    Text = "Areas",
    Callback = onTeleportArea
})
mK:AddDropdown("TeleportDino", {
    Values = mI,
    Multi = false,
    Searchable = true,
    AllowNull = true,
    Text = "Dinos",
    Callback = onTeleportDino
})
l4 = fn540
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera = workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fn483)
Toggles.WalkSpeedEnabled:OnChanged(fn757)
local MenuGroup = mQ.Settings:AddLeftGroupbox("Menu", "menu")
mv = tick()
ms = tick()
pcall(function()
    for i, v in ipairs(getconnections(mf.Idled)) do
        local tg = v
        pcall(function()
            tg:Disable()
        end)
    end
end)
mb = fn772
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
lE.ToggleKeybind = lu.MenuKeybind
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
task.spawn(antiAfkLoop)
lE:OnUnload(fn573)
mP:SetLibrary(lE)
mO_3:SetLibrary(lE)
mP:SetFolder("OuroborosHub")
mO_3:SetFolder("OuroborosHub/DinoHunters")
mO_3:IgnoreThemeSettings()
mO_3:SetIgnoreIndexes({ "MenuKeybind" })
mP:SaveDefault("Mint")
mP:ApplyToTab(mQ.Settings)
mP:LoadDefault()
mO_3:BuildConfigSection(mQ.Settings)
mO_3:LoadAutoloadConfig()
