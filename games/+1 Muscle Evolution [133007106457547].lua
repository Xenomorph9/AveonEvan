local oN_16
local jH
local i5
local Library
local iN
local ju
local jb
local iT
local VirtualUser
local connection2
local iZ
local jn
local i4
local onUnlockNow
local iM
local connection3
local iS
local jz
local iY
local UserInputService
local jm
local onUpgradeNow
local iL
local connection
local i9
local jR
local Options
local jf
local iX
local jE
local jl
local i2
local jK
local onOpenNow
local iQ
local jx
local je
local iW
local jD
local jk
local i1
local CollectionService
local onBuyNow
local connection5
local iP
local LocalPlayer
local jd
local connection4
local Toggles
local jj
local i0
local jp
local i6
local jO
local iO
local jv
local jc
local i_
local function fn17()
    if not Toggles.Fly.Value then
        local og = jf()
        if og then
            og.PlatformStand = false
        end
    end
end
local function worker5()
    while not Library.Unloaded do
        if jR("AutoBattleShop") then
            onBuyNow()
        end
        task.wait(jz("BattleShopDelay", 3))
    end
end
local function fn55()
    local Character = LocalPlayer.Character
    local lN = Character and Character:FindFirstChild("HumanoidRootPart")
    return lN
end
local function fn87(L)
    local k3 = {}
    if type(L) == "table" then
        for k in pairs(L) do
            k3[#k3 + 1] = tostring(k)
        end
        table.sort(k3)
    end
    return k3
end
local function fn103()
    local EndlessArenas = workspace:FindFirstChild("EndlessArenas")
    if not EndlessArenas then
        return nil
    end
    return EndlessArenas:FindFirstChild("Arena_1")
end
local function worker6()
    while not Library.Unloaded do
        if jR("AutoBattleUpgrades") then
            onUpgradeNow()
        end
        task.wait(jz("BattleUpgradeDelay", 3))
    end
end
local function fn178()
    if Toggles.WalkSpeedEnabled.Value then
        i_(jf())
    end
end
local function fn187(dc)
    local DiscordGroup = dc:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = jj })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = jj })
end
local function onInputBegan()
    iY = tick()
end
local function onJumpRequest()
    local nT = Library.Unloaded or not jR("InfJump")
    if nT then
        return
    end
    local nT_1 = jf()
    if nT_1 then
        nT_1:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end
local function fn269()
    local nk_1
    local nj_1
    if identifyexecutor then
        nk_1, nj_1 = identifyexecutor()
        local nl = nk_1 ~= ""
        local nm = type(nk_1) == "string" and nl
        if nm then
            local nl_1 = type(nj_1) == "string" and nj_1 ~= "" and nk_1 .. " " .. nj_1
            iX = nl_1 or nk_1
        end
    end
end
local function onCopyJoinScript_JobID()
    local dv = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, jE)
    ju(dv, "Copied join script to clipboard")
end
local function fn319()
    pcall(function()
        jx:Fire()
    end)
end
local function onUnload()
    Library:Unload()
end
local function fn356()
    local attr = LocalPlayer:GetAttribute("EndlessRunState")
    return attr == "WaveActive" or attr == "Intermission"
end
local function worker9()
    while not Library.Unloaded do
        if jR("AutoBuyAuras") then
            jm()
        end
        if jR("AutoBuyGloves") then
            i4()
        end
        if jR("AutoEquipBest") then
            iS()
        end
        task.wait(jz("ShopDelay", 3))
    end
end
local function worker()
    local np_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local no = math.floor(os.clock() - jk)
        if no < 60 then
            np_1 = no .. "s"
        elseif no < 3600 then
            np_1 = string.format("%dm %ds", no // 60, no % 60)
        else
            np_1 = string.format("%dh %dm", no // 3600, no % 3600 // 60)
        end
        jH:SetText(i6("Session time", np_1, iP))
    end
end
local function fn388(an, ao)
    return string.format('<font color="%s">%s</font>', ao, an)
end
local function worker3()
    while not Library.Unloaded do
        if jR("AutoDamage") then
            jO()
        end
        task.wait(jz("DamageDelay", 0.1))
    end
end
local function fn397()
    local l6 = jv()
    if l6 then
        iW(l6)
    end
end
local function fn410(aq, ar, as)
    return string.format("<b>%s</b> %s %s", aq, jd("-", "#5a6070"), jd(ar, as))
end
local function worker10()
    while not Library.Unloaded do
        if jR("AutoOpenEgg") then
            onOpenNow()
        end
        task.wait(jz("EggDelay", 1))
    end
end
local function onRscripts()
    ju(jn, "Copied Rscripts profile to clipboard")
end
local function onRenderStepped(eW)
    if Library.Unloaded then
        return
    end
    if jR("WalkSpeedEnabled") then
        i_(jf())
    end
    if jR("Noclip") then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in Character:GetDescendants() do
                local nV_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if nV_2 then
                    descendant.CanCollide = false
                    i1[descendant] = true
                end
            end
        end
    elseif next(i1) then
        for k in i1 do
            if k.Parent then
                k.CanCollide = true
            end
        end
        table.clear(i1)
    end
    local of = if jR("Fly") then 1 else 0
    if of == 1 then
        local nV_3 = i9()
        local nW = jf()
        if nV_3 and nW and workspace.CurrentCamera then
            nW.PlatformStand = true
            local nW_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                nW_1 = nW_1 + workspace.CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                nW_1 = nW_1 - workspace.CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                nW_1 = nW_1 - workspace.CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                nW_1 = nW_1 + workspace.CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                nW_1 = nW_1 + Vector3.yAxis
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                nW_1 = nW_1 - Vector3.yAxis
            end
            nV_3.AssemblyLinearVelocity = Vector3.zero
            if nW_1.Magnitude > 0 then
                nV_3.CFrame = nV_3.CFrame + nW_1.Unit * jz("FlySpeed", 80) * eW
            end
        end
    end
end
local function fn443(ev)
    if not ev then
        return
    end
    local nJ = jz("WalkSpeed", 50)
    if ev.WalkSpeed == nJ then
        return
    end
    i5 = true
    ev.WalkSpeed = nJ
    i5 = false
end
local function worker2()
    while not Library.Unloaded do
        task.wait(2)
        if jR("AntiAfk") then
            local ox = tick() - iY
            local oy = tick() - iT
            if ox >= 300 and oy >= 60 then
                pcall(jK)
            else
                if ox < 300 and oy >= 300 then
                    pcall(jK)
                end
            end
        end
    end
end
local function fn469(aP)
    local lt = Options[aP]
    return lt and lt.Value or nil
end
local function worker4()
    local oC = 0
    while not Library.Unloaded do
        if jR("AutoArena") then
            if je() then
                i0()
                task.wait(0.1)
            else
                if os.clock() - oC >= jz("ArenaDelay", 3) then
                    oC = os.clock()
                    jb()
                end
                task.wait(0.25)
            end
        else
            task.wait(0.5)
        end
    end
end
local function onInputChanged(ei)
    local UserInputType = ei.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        iY = tick()
    end
end
local function fn476()
    local Character = LocalPlayer.Character
    local nH = Character and Character:FindFirstChildOfClass("Humanoid")
    return nH
end
local function fn488()
    pcall(function()
        iN:Fire(nil)
    end)
end
local function fn491(o)
    local kZ_1
    local kY_1
    kY_1, kZ_1 = pcall(require, o)
    if kY_1 then
        return kZ_1
    end
    return nil
end
local function fn581()
    local l9_1
    local l8_1
    if not je() then
        jb()
        return
    end
    if LocalPlayer:GetAttribute("EndlessRunState") ~= "WaveActive" then
        return
    end
    l8_1, l9_1 = iZ()
    if not l8_1 then
        return
    end
    local ma = l8_1:FindFirstChild("HumanoidRootPart") or l8_1.PrimaryPart
    local l8_2 = ma
    if ma then
        ma = not l9_1 or l9_1 > 6
    end
    if ma then
        iW(CFrame.new(l8_2.Position + Vector3.new(0, 3, 0)))
    end
    jO()
end
local function fn595()
    pcall(function()
        iL:Fire()
    end)
end
local function fn602(aU)
    local Character = LocalPlayer.Character
    if not Character then
        return
    end
    if Character.PrimaryPart then
        Character:PivotTo(aU)
    else
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
        if HumanoidRootPart then
            HumanoidRootPart.CFrame = aU
        end
    end
end
local function fn608(az)
    local ld = Toggles[az]
    return ld ~= nil and ld.Value == true
end
local function fn628()
    connection:Disconnect()
    connection2:Disconnect()
    connection3:Disconnect()
    connection4:Disconnect()
    connection5:Disconnect()
    if i2 then
        i2:Disconnect()
        i2 = nil
    end
    for k in i1 do
        if k.Parent then
            k.CanCollide = true
        end
    end
    table.clear(i1)
    local op = jf()
    if op then
        op.PlatformStand = false
    end
    pcall(function()
        jl:Fire(false)
    end)
end
local function fn639(aE, aF)
    local lj = Options[aE]
    local lk = lj and tonumber(lj.Value)
    return lk or aF
end
local function onCharacterAdded(eM)
    local Humanoid = eM:WaitForChild("Humanoid", 10)
    if Humanoid then
        iM(Humanoid)
    end
end
local function fn694()
    ju(jp, "Copied Discord invite to clipboard")
end
local function fn698(ag, ah)
    if setclipboard then
        setclipboard(ag)
    elseif toclipboard then
        toclipboard(ag)
    end
    Library:Notify(ah)
end
local function fn741()
    local lS = i9()
    if not lS then
        return nil
    end
    local attr3 = LocalPlayer:GetAttribute("EndlessRunId")
    local lU = math.huge
    local lV
    for i, v in ipairs(CollectionService:GetTagged("StageMob")) do
        if v and v.Parent then
            local attr2 = v:GetAttribute("EndlessRunId")
            local attr = v:GetAttribute("OwnerUserId")
            if attr3 and attr2 == attr3 or attr == LocalPlayer.UserId then
                local Humanoid = v:FindFirstChildOfClass("Humanoid")
                local lX_2 = v:FindFirstChild("HumanoidRootPart") or v.PrimaryPart
                local lY_1 = Humanoid
                if lY_1 then
                    lY_1 = Humanoid.Health > 0
                end
                if lY_1 and lX_2 then
                    local Magnitude = (lX_2.Position - lS.Position).Magnitude
                    if Magnitude < lU then
                        lV = v
                        lU = Magnitude
                    end
                end
            end
        end
    end
    return lV, lU
end
local function worker7()
    while not Library.Unloaded do
        if jR("AutoRebirth") then
            iO()
        end
        task.wait(jz("RebirthDelay", 5))
    end
end
local function worker11()
    while not Library.Unloaded do
        if jR("AutoDaily") then
            jc()
        end
        if jR("AutoFreeRewards") then
            iQ()
        end
        task.wait(jz("RewardsDelay", 30))
    end
end
local function fn767()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    iT = tick()
end
local function fn789()
    local lB = jD()
    if not lB then
        return nil
    end
    local PlayerSpawn = lB:FindFirstChild("PlayerSpawn")
    local lD = PlayerSpawn and PlayerSpawn:IsA("BasePart")
    if lD then
        return PlayerSpawn.CFrame + Vector3.new(0, 3, 0)
    end
    local ArenaZone = lB:FindFirstChild("ArenaZone")
    local lB_1 = ArenaZone and ArenaZone:IsA("BasePart")
    if lB_1 then
        return ArenaZone.CFrame + Vector3.new(0, 3, 0)
    end
    return nil
end
local function worker8()
    while not Library.Unloaded do
        if jR("AutoUnlock") then
            onUnlockNow()
        end
        task.wait(jz("UnlockDelay", 1))
    end
end
local function fn821()
    if Toggles.Noclip.Value then
        return
    end
    for k in i1 do
        if k.Parent then
            k.CanCollide = true
        end
    end
    table.clear(i1)
end
local function fn848(aK)
    local lp = Options[aK]
    return lp and lp.Value or {}
end
iL = nil
iM = nil
iN = nil
iO = nil
iP = nil
iQ = nil
iS = nil
iT = nil
connection4 = nil
iW = nil
iX = nil
iY = nil
iZ = nil
i_ = nil
i0 = nil
i1 = nil
i2 = nil
onUpgradeNow = nil
i4 = nil
i5 = nil
i6 = nil
connection5 = nil
i9 = nil
connection3 = nil
jb = nil
jc = nil
jd = nil
je = nil
jf = nil
connection2 = nil
jj = nil
jk = nil
jl = nil
jm = nil
jn = nil
jp = nil
onBuyNow = nil
connection = nil
ju = nil
jv = nil
LocalPlayer = nil
jx = nil
local iR, iU, i8, ClientData, ji, jo, jr, jt
Options = nil
jz = nil
VirtualUser = nil
Toggles = nil
jD = nil
jE = nil
UserInputService = nil
jH = nil
CollectionService = nil
jK = nil
onUnlockNow = nil
Library = nil
jO = nil
onOpenNow = nil
jR = nil
local jB, jG, jP
local ShopTimingGroup
jB = nil
jG = nil
local jI
local jL
jP = nil
CollectionService, UserInputService, VirtualUser, LocalPlayer, jp, jn, ClientData, iU, iR, iN, iL, jP, jL, jI, jG, jB, jx, jt, jr, jo, jl, oN_16 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local oN_9 = game:GetService("ReplicatedStorage")
CollectionService = game:GetService("CollectionService")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
LocalPlayer = Players.LocalPlayer
local j6 = "Muscle Evolution"
jp = "https://discord.gg/ehKVq7pf7v"
jn = "https://rscripts.net/@Ouroboros"
local oN_13 = require(oN_9.Packages.Packet)
local oN_8 = require(oN_9.Shared.Utils.Functions)
ClientData = require(oN_9.Client.Controllers.ClientData)
local oN_2_2
local oN_12 = oN_9.Shared.Configs
local oN_7 = fn491(oN_12.Auras)
local j1 = fn491(oN_12.BattleShop)
local oN_5 = fn491(oN_12.BattleUpgrades)
local j2 = fn491(oN_12.Eggs)
iU = fn491(oN_12.DailyRewards)
iR = fn491(oN_12.PlaytimeRewards)
iN = oN_13("Click", oN_13.Any)
iL = oN_13("Rebirth")
jP = oN_13("OpenEgg", oN_13.Instance)
jL = oN_13("CollectDaily", oN_13.NumberU8)
jI = oN_13("CollectPlaytime", oN_13.NumberU8)
jG = oN_13("BuyAura", oN_13.String)
jB = oN_13("BuyBoxingGloves", oN_13.NumberU16)
jx = oN_13("EquipBestItems")
jt = oN_13("BattleShopRequest", oN_13.Any)
jr = oN_13("BattleShopBuy", oN_13.String)
jo = oN_13("BuyBattleUpgrade", oN_13.String)
jl = oN_8.GetSignal("SetAutoFightEnabled")
local j3 = fn87
local j5 = j3(oN_7)
local j4 = {}
if (jP or not jP or false and CollectionService or UserInputService and fn491 and (not jP or fn491) or (UserInputService or CollectionService or not UserInputService and false or (UserInputService or CollectionService) and (false or UserInputService))) and (((not jP or false) and (not jP or not CollectionService) or (jP and not jP or (CollectionService or not jP))) and (jP or not jP or (false or jP) or (UserInputService and not CollectionService or (CollectionService or jP)))) and not ((jP or not jP or false and CollectionService or UserInputService and fn491 and (not jP or fn491) or (UserInputService or CollectionService or not UserInputService and false or (UserInputService or CollectionService) and (false or UserInputService))) and (((not jP or false) and (not jP or not CollectionService) or (jP and not jP or (CollectionService or not jP))) and (jP or not jP or (false or jP) or (UserInputService and not CollectionService or (CollectionService or jP))))) then
    oN_5 = oN_16
else
    oN_16 = oN_5
end
if oN_16 then
    local oN_1_1 = 3
    repeat
        oN_7 = {
            "uagfuqtbaldc",
            "hyowhqdvsey",
            "bnraaac",
            "vkog",
            "adulythokty",
            "vtpplubn",
            "bdk",
            "sumdnpdalmeg",
            "pyjq",
            "kwvgdunm",
            "whqzvxure"
        }
        if oN_7[(oN_1_1 * 95 + 87) % 11 + 1] < oN_7[(oN_1_1 * 95 + 87) % 11 + 1] then
            oN_5 = type(oN_16.Upgrades) == "table"
        else
            oN_16 = type(oN_5.Upgrades) == "table"
        end
        oN_1_1 = (oN_1_1 + 1) % 4
    until (oN_1_1 * 3 + 0) % 4 == 0
end
if oN_16 then
    j4 = j3(oN_5.Upgrades)
end
local oN_1_2 = j1
oN_7 = {}
if oN_1_2 then
    oN_12 = 2
    repeat
        if (oN_12 * 3 + 9) * 9 % 4 == ((oN_12 * 3 + 9) * 9 + 9) % 4 then
            j1 = type(oN_1_2.Slots) == "table"
        else
            oN_1_2 = type(j1.Slots) == "table"
        end
        oN_12 = (oN_12 + 3) % 4
    until (oN_12 * 1 + 1) % 4 == 2
end
if oN_1_2 then
    for i, v in ipairs(j1.Slots) do
        local oN_1_3 = type(v) == "table" and type(v.Id) == "string"
        if oN_1_3 then
            oN_7[#oN_7 + 1] = v.Id
        end
    end
end
local oN_1_4 = {}
for i, v in ipairs(j3(j2)) do
    if v ~= "Template" then
        oN_1_4[#oN_1_4 + 1] = v
    end
end
Library, Toggles, Options, iP, j1, ju, jj, jd, i6, jR, jz, ji, i8, iW, jO, jD, jv, je, i9, iZ, jb, i0, onBuyNow, onUpgradeNow, iO, onUnlockNow, jm, i4, iS, onOpenNow, jc, iQ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
j3 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
j2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
ju = fn698
jj = fn694
jd = fn388
i6 = fn410
oN_5 = "#7fd47f"
oN_16 = "#6ec1ff"
iP = "#e8a34d"
oN_9 = "#8b93a3"
if ((false or i0) and (false or not iQ) or (not iQ or iQ or (iQ or not iQ))) and (("#6ec1ff" or (not i0 or oN_16)) and ((i0 or not i0) and "#6ec1ff")) and ((i0 or not iQ or (iQ or iQ)) and (i0 and not iQ or i0 and not i0) and ((i0 or false) and (not i0 or i0) or false and (i0 or not iQ))) and not (((false or i0) and (false or not iQ) or (not iQ or iQ or (iQ or not iQ))) and (("#6ec1ff" or (not i0 or oN_16)) and ((i0 or not i0) and "#6ec1ff")) and ((i0 or not iQ or (iQ or iQ)) and (i0 and not iQ or i0 and not i0) and ((i0 or false) and (not i0 or i0) or false and (i0 or not iQ)))) then
    jz = fn608
    ji = fn639
    jR = fn848
else
    jR = fn608
    jz = fn639
    ji = fn848
end
i8 = fn469
iW = fn602
jO = fn488
jD = fn103
jv = fn789
if (not j2 or not ju or jb and ju) and ((ju or not j2) and (not jb or ju)) and ((jb and j2 or (not jb or not ju)) and (not j2 and not j2 or (ju or not ju))) or not ((not j2 or not ju or jb and ju) and ((ju or not j2) and (not jb or ju)) and ((jb and j2 or (not jb or not ju)) and (not j2 and not j2 or (ju or not ju)))) then
    je = fn356
    i9 = fn55
    iZ = fn741
    jb = fn397
else
    i9 = fn356
    je = fn55
    jb = fn741
    iZ = fn397
end
i0 = fn581
onBuyNow = function()
    pcall(function()
        jt:Fire({ TimezoneOffsetMinutes = 0 })
    end)
    for k, v in pairs(ji("BattleShopSlots")) do
        local mh = k
        if v then
            pcall(function()
                jr:Fire(mh)
            end)
            task.wait(0.1)
        end
    end
end
onUpgradeNow = function()
    for k, v in pairs(ji("BattleUpgradeKinds")) do
        local mo = k
        if v then
            pcall(function()
                jo:Fire(mo)
            end)
            task.wait(0.1)
        end
    end
end
iO = fn595
onUnlockNow = function()
    for i, v in ipairs(CollectionService:GetTagged("BodyStand")) do
        if not jR("AutoUnlock") then
            break
        elseif v and v.Parent then
            local ProximityPrompt = v:FindFirstChildWhichIsA("ProximityPrompt", true)
            if ProximityPrompt then
                pcall(function()
                    fireproximityprompt(ProximityPrompt)
                end)
            end
        end
    end
end
jm = function()
    for k, v in pairs(ji("AuraKinds")) do
        local mH = k
        if v then
            pcall(function()
                jG:Fire(mH)
            end)
            task.wait(0.1)
        end
    end
end
i4 = function()
    local cr = math.floor(jz("GlovesAmount", 1))
    pcall(function()
        jB:Fire(cr)
    end)
end
iS = fn319
onOpenNow = function()
    local mK = i8("EggChoice")
    for i, v in ipairs(CollectionService:GetTagged("Egg")) do
        local mV = v
        local mY = if not jR("AutoOpenEgg") then 1 else 0
        if mY == 1 then
            break
        else
            if mV and mV.Parent then
                local mL_1 = mV:GetAttribute("EggName") or mV.Name
                if not mK or mK == "" or mK == "Any" or mL_1 == mK then
                    pcall(function()
                        jP:Fire(mV)
                    end)
                    task.wait(0.1)
                end
            end
        end
    end
end
if (jz or jz) and (j1 or jb) and ((jz or j1) and (j1 and not jz)) or (i0 or not jb) and (not jz and not j1) and (not j1 and not j1 or jb and j1) or not ((jz or jz) and (j1 or jb) and ((jz or j1) and (j1 and not jz)) or (i0 or not jb) and (not jz and not j1) and (not j1 and not j1 or jb and j1)) then
    jc = function()
        local mZ
        local m_ = ClientData:GetProfile()
        if not (m_ and iU) then
            return
        end
        local max = math.max
        local m2 = tonumber(m_.DataAccessor:Get("DailyRewardStreak")) or 1
        mZ = max(math.floor(m2), 1)
        if #iU < mZ then
            return
        end
        local m0_5 = tonumber(m_.DataAccessor:Get("DailyRewardCollect")) or 0
        local m0_6 = m0_5 > 0 and DateTime.now().UnixTimestamp - m0_5 < 86400
        if m0_6 then
            return
        end
        pcall(function()
            jL:Fire(mZ)
        end)
    end
    iQ = function()
        local m7 = ClientData:GetProfile()
        if not (m7 and iR) then
            return
        end
        local m8_2 = tonumber(m7.GameAccessor:Get("SessionStart"))
        if not m8_2 or m8_2 <= 0 then
            return
        end
        local m9_2 = m7.GameAccessor:Get("PlaytimeCollected")
        if type(m9_2) ~= "table" then
            m9_2 = {}
        end
        local UnixTimestamp = DateTime.now().UnixTimestamp
        for i, v in ipairs(iR) do
            local ng = i
            if not m9_2[ng] then
                local na = tonumber(v.WaitTime) or 0
                if UnixTimestamp >= m8_2 + na then
                    pcall(function()
                        jI:Fire(ng)
                    end)
                end
            end
        end
    end
else
    iQ = function()
        local mZ
        local m_ = ClientData:GetProfile()
        if not (m_ and iU) then
            return
        end
        local max = math.max
        local m2 = tonumber(m_.DataAccessor:Get("DailyRewardStreak")) or 1
        mZ = max(math.floor(m2), 1)
        if #iU < mZ then
            return
        end
        local m0_2 = tonumber(m_.DataAccessor:Get("DailyRewardCollect")) or 0
        local m0_3 = m0_2 > 0 and DateTime.now().UnixTimestamp - m0_2 < 86400
        if m0_3 then
            return
        end
        pcall(function()
            jL:Fire(mZ)
        end)
    end
    jc = function()
        local m7 = ClientData:GetProfile()
        if not (m7 and iR) then
            return
        end
        local m8_1 = tonumber(m7.GameAccessor:Get("SessionStart"))
        if not m8_1 or m8_1 <= 0 then
            return
        end
        local m9_1 = m7.GameAccessor:Get("PlaytimeCollected")
        if type(m9_1) ~= "table" then
            m9_1 = {}
        end
        local UnixTimestamp = DateTime.now().UnixTimestamp
        for i, v in ipairs(iR) do
            local ng = i
            if not m9_1[ng] then
                local na = tonumber(v.WaitTime) or 0
                if UnixTimestamp >= m8_1 + na then
                    pcall(function()
                        jI:Fire(ng)
                    end)
                end
            end
        end
    end
end
local oN_2_1 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = jp, Copyable = true }, "|", j6 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
j1 = {}
j1.Info = oN_2_1:AddTab("Info", "info")
j1.Combat = oN_2_1:AddTab("Combat", "swords")
j1.Battle = oN_2_1:AddTab("Battle", "shield")
j1.Progress = oN_2_1:AddTab("Progress", "trending-up")
j1.Shop = oN_2_1:AddTab("Shop", "shopping-cart")
j1.Extras = oN_2_1:AddTab("Extras", "gift")
j1.Player = oN_2_1:AddTab("Player", "user")
j1.Settings = oN_2_1:AddTab("Settings", "settings")
oN_13 = { j1.Info, j1.Combat, j1.Battle, j1.Progress, j1.Shop, j1.Extras, j1.Player, j1.Settings }
for i, v in ipairs(oN_13) do
    fn187(v)
end
iX, oN_2_2, oN_13, jH, jE, oN_8 = nil, nil, nil, nil, nil, nil
oN_12 = 7
repeat
    local oN_4_1 = (oN_12 * 1 + 0) % 3 + 1
    if oN_4_1 <= 2 then
        if oN_4_1 <= 1 then
            local oN_4_2 = {
                "sqrrcwtu",
                "vzdivadm",
                "djbq",
                "sfnlvvrodzn",
                "cdvypchaiyh",
                "qftqcomxzwl",
                "bzbjp",
                "mkxpbl",
                "eqqqlrmoxxyf",
                "fwzdx"
            }
            if oN_4_2[(oN_12 * 17 + 27) % 10 + 1] < oN_4_2[(oN_12 * 17 + 27) % 10 + 1] then
                jE = #oN_8 > 18
            else
                oN_8 = #jE > 18
            end
            oN_12 = (oN_12 + 4) % 24
        else
            local oN_4_3 = {
                "qbvrlnxtnhfd",
                "xolommnl",
                "zzauxz",
                "pwuqmoxnfx",
                "rqgjgveluy",
                "lmkrfgumsgf",
                "fxlo",
                "hpt",
                "qtu",
                "pqldfcldn",
                "wxcczvqlk",
                "zgrqgzviiht",
                "tpj"
            }
            if oN_4_3[(oN_12 * 67 + 39) % 13 + 1] < oN_4_3[(oN_12 * 67 + 39) % 13 + 1] then
                oN_13 = "Unknown"
                pcall(fn269)
                iP = (nil):AddLeftGroupbox("Account", "circle-user")
                iP:AddLabel(oN_2_2("User", jH.Name, LocalPlayer), true)
                iP:AddLabel(oN_2_2("Status", "Keyless", LocalPlayer), true)
                iP:AddLabel(oN_2_2("Executor", "Unknown", LocalPlayer), true)
                j1 = (nil):AddLeftGroupbox("Game Info", "gamepad-2")
                j1:AddLabel(oN_5(iX .. " [" .. tostring(game.PlaceId) .. "]", i6), true)
                j1:AddLabel(oN_2_2("Place ID", tostring(game.PlaceId), i6), true)
                jd = j1:AddLabel(oN_2_2("Session time", "0s", oN_16), true)
            else
                iX = "Unknown"
                pcall(fn269)
                oN_2_2 = j1.Info:AddLeftGroupbox("Account", "circle-user")
                oN_2_2:AddLabel(i6("User", LocalPlayer.Name, oN_5), true)
                oN_2_2:AddLabel(i6("Status", "Keyless", oN_5), true)
                oN_2_2:AddLabel(i6("Executor", iX, oN_5), true)
                oN_13 = j1.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                oN_13:AddLabel(jd(j6 .. " [" .. tostring(game.PlaceId) .. "]", oN_16), true)
                oN_13:AddLabel(i6("Place ID", tostring(game.PlaceId), oN_16), true)
                jH = oN_13:AddLabel(i6("Session time", "0s", iP), true)
            end
            oN_12 = (oN_12 + 1) % 24
        end
    else
        local oN_4_4 = (vector.create((oN_12 * 6 + 5) % 11 + 1, (oN_12 * 6 + 5) % 13 + 1, (oN_12 * 2 + 2) % 17 + 1))
        local j8 = (vector.create((oN_12 * 2 + 3) % 11 + 1, (oN_12 * 5 + 1) % 13 + 1, (oN_12 * 7 + 8) % 17 + 1))
        local po = vector.cross(oN_4_4, j8)
        local pp = vector.dot(oN_4_4, j8)
        if vector.dot(po, po) + pp * pp == vector.dot(oN_4_4, oN_4_4) * vector.dot(j8, j8) + 3 then
            jH = tostring(game.JobId)
        else
            jE = tostring(game.JobId)
        end
        oN_12 = (oN_12 + 7) % 24
    end
until (oN_12 * 11 + 22) % 24 == 15
if oN_8 then
    oN_12 = 7
    repeat
        local oN_2_3 = (vector.create((oN_12 * 7 + 4) % 11 + 1, (oN_12 * 6 + 12) % 13 + 1, (oN_12 * 10 + 3) % 17 + 1))
        local oN_4_5 = (vector.create((oN_12 * 7 + 1) % 11 + 1, (oN_12 * 10 + 5) % 13 + 1, (oN_12 * 4 + 11) % 17 + 1))
        local pU = vector.dot(oN_2_3, oN_4_5)
        if pU * pU >= vector.dot(oN_2_3, oN_2_3) * vector.dot(oN_4_5, oN_4_5) + 1 then
            jE = string.sub(oN_8, 1, 18) .. "..."
        else
            oN_8 = string.sub(jE, 1, 18) .. "..."
        end
        oN_12 = (oN_12 + 7) % 8
    until (oN_12 * 5 + 0) % 8 == 6
end
oN_12 = oN_8 or jE
jk, ShopTimingGroup, iY, iT, connection, connection2, i5, i2, i1, connection3, connection4, connection5, jK, jf, i_, iM = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local ko = oN_12
oN_13:AddLabel(i6("Server", ko, oN_9), true)
oN_13:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
jk = os.clock()
task.spawn(worker)
local ScriptsGroup = j1.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(jd("Included in this hub", oN_9), true)
ScriptsGroup:AddLabel(jd(j6, oN_16), true)
local FeaturesGroup = j1.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(jd("Auto Farm", oN_16), true)
FeaturesGroup:AddLabel(jd("Battle Shop & Upgrades", oN_5), true)
FeaturesGroup:AddLabel(jd("Progression", iP), true)
FeaturesGroup:AddLabel(jd("Shop & Eggs", oN_16), true)
FeaturesGroup:AddLabel(jd("Rewards", oN_9), true)
FeaturesGroup:AddLabel(jd("Player Movement", iP), true)
local oN_4_6 = j1.Info:AddRightGroupbox("Socials", "link")
oN_4_6:AddButton({ Text = "Discord", Func = jj })
oN_4_6:AddButton({ Text = "Rscripts", Func = onRscripts })
oN_8 = j1.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
oN_8:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
oN_8:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
oN_8:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
oN_8:AddButton({ Text = "Copy Discord Invite", Func = jj })
local oN_2_4 = j1.Info:AddRightGroupbox("FAQ", "circle-help")
oN_2_4:AddLabel("Where do I get a good config?", true)
oN_2_4:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
oN_2_4:AddLabel("How do I import / export configs?", true)
oN_2_4:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
oN_2_4:AddLabel("How do I report bugs?", true)
oN_2_4:AddLabel("Join the Discord and post it in the bugs channel.", true)
oN_2_4:AddLabel("How do I make suggestions?", true)
oN_2_4:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
oN_2_4:AddLabel("How do I get help or updates?", true)
oN_2_4:AddLabel("Join the Discord, updates and support are posted there first.", true)
local DamageGroup = j1.Combat:AddLeftGroupbox("Damage", "mouse-pointer-click")
DamageGroup:AddToggle("AutoDamage", { Text = "Auto Damage (Auto Left Click)", Default = false })
DamageGroup:AddSlider("DamageDelay", { Text = "Click delay", Default = 0.1, Min = 0.05, Max = 5, Rounding = 2, Suffix = "s" })
local FarmWinsGroup = j1.Combat:AddRightGroupbox("Farm Wins", "trophy")
FarmWinsGroup:AddToggle("AutoFarmWin", {
    Text = "Auto Farm Win",
    Default = false,
    Callback = function(dO)
        pcall(function()
            jl:Fire(dO)
        end)
    end
})
local ArenaGroup = j1.Combat:AddLeftGroupbox("Arena", "castle")
ArenaGroup:AddToggle("AutoArena", { Text = "Auto Arena", Default = false })
ArenaGroup:AddSlider("ArenaDelay", { Text = "Arena delay", Default = 3, Min = 0.5, Max = 30, Rounding = 1, Suffix = "s" })
ArenaGroup:AddButton({ Text = "Go To Arena", Func = jb })
local BattleShopGroup = j1.Battle:AddLeftGroupbox("Battle Shop", "store")
BattleShopGroup:AddDropdown("BattleShopSlots", { Text = "Battle Shop Items", Values = oN_7, Multi = true, AllowNull = true, Default = {} })
BattleShopGroup:AddToggle("AutoBattleShop", { Text = "Auto Battle Shop", Default = false })
BattleShopGroup:AddSlider("BattleShopDelay", { Text = "Battle Shop delay", Default = 3, Min = 0.5, Max = 60, Rounding = 1, Suffix = "s" })
BattleShopGroup:AddButton({ Text = "Buy Now", Func = onBuyNow })
local BattleUpgradesGroup = j1.Battle:AddRightGroupbox("Battle Upgrades", "arrow-big-up-dash")
BattleUpgradesGroup:AddDropdown("BattleUpgradeKinds", { Text = "Battle Upgrades", Values = j4, Multi = true, AllowNull = true, Default = {} })
BattleUpgradesGroup:AddToggle("AutoBattleUpgrades", { Text = "Auto Battle Upgrades", Default = false })
BattleUpgradesGroup:AddSlider("BattleUpgradeDelay", { Text = "Battle Upgrade delay", Default = 3, Min = 0.5, Max = 60, Rounding = 1, Suffix = "s" })
BattleUpgradesGroup:AddButton({ Text = "Upgrade Now", Func = onUpgradeNow })
local RebirthGroup = j1.Progress:AddLeftGroupbox("Rebirth", "rotate-ccw")
RebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
RebirthGroup:AddSlider("RebirthDelay", { Text = "Rebirth delay", Default = 5, Min = 0.5, Max = 120, Rounding = 1, Suffix = "s" })
RebirthGroup:AddButton({ Text = "Rebirth Now", Func = iO })
local UnlockGroup = j1.Progress:AddRightGroupbox("Unlock", "unlock")
UnlockGroup:AddToggle("AutoUnlock", { Text = "Auto Buy Skins", Default = false })
UnlockGroup:AddLabel(jd("if you time it right you can get OP skin, it's gonna be a prison suit, so don't think it's bugged i left it like this on purpose", oN_5), true)
UnlockGroup:AddSlider("UnlockDelay", { Text = "Unlock delay", Default = 1, Min = 0.2, Max = 30, Rounding = 1, Suffix = "s" })
UnlockGroup:AddButton({ Text = "Unlock Now", Func = onUnlockNow })
local AurasGroup = j1.Shop:AddLeftGroupbox("Auras", "sparkles")
AurasGroup:AddDropdown("AuraKinds", { Text = "Auras", Values = j5, Multi = true, AllowNull = true, Default = {} })
AurasGroup:AddToggle("AutoBuyAuras", { Text = "Auto Buy Auras", Default = false })
local GlovesGroup = j1.Shop:AddRightGroupbox("Gloves", "hand")
GlovesGroup:AddToggle("AutoBuyGloves", { Text = "Auto Buy Gloves", Default = false })
GlovesGroup:AddSlider("GlovesAmount", { Text = "Gloves amount", Default = 1, Min = 1, Max = 100, Rounding = 0 })
local ItemsGroup = j1.Shop:AddLeftGroupbox("Items", "shirt")
if (not connection2 and not FarmWinsGroup or (connection2 or ItemsGroup) or (ItemsGroup and not FarmWinsGroup or ItemsGroup and not DamageGroup)) and ((FarmWinsGroup or not DamageGroup) and (FarmWinsGroup or DamageGroup) or (not ItemsGroup or DamageGroup or connection2 and not DamageGroup)) and ((FarmWinsGroup and not ItemsGroup or (connection2 or not FarmWinsGroup)) and (not ItemsGroup and not DamageGroup and (not connection2 and DamageGroup)) or (connection2 or ItemsGroup) and (not FarmWinsGroup or ItemsGroup) and (not connection2 or DamageGroup or not connection2 and DamageGroup)) and not ((not connection2 and not FarmWinsGroup or (connection2 or ItemsGroup) or (ItemsGroup and not FarmWinsGroup or ItemsGroup and not DamageGroup)) and ((FarmWinsGroup or not DamageGroup) and (FarmWinsGroup or DamageGroup) or (not ItemsGroup or DamageGroup or connection2 and not DamageGroup)) and ((FarmWinsGroup and not ItemsGroup or (connection2 or not FarmWinsGroup)) and (not ItemsGroup and not DamageGroup and (not connection2 and DamageGroup)) or (connection2 or ItemsGroup) and (not FarmWinsGroup or ItemsGroup) and (not connection2 or DamageGroup or not connection2 and DamageGroup))) then
    ShopTimingGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best Items", Default = false })
    ShopTimingGroup:AddButton({ Text = "Equip Best Now", Func = ItemsGroup })
    j1 = iS.Shop:AddRightGroupbox("Shop Timing", "timer")
else
    ItemsGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best Items", Default = false })
    ItemsGroup:AddButton({ Text = "Equip Best Now", Func = iS })
    ShopTimingGroup = j1.Shop:AddRightGroupbox("Shop Timing", "timer")
end
ShopTimingGroup:AddSlider("ShopDelay", { Text = "Shop delay", Default = 3, Min = 0.5, Max = 60, Rounding = 1, Suffix = "s" })
local EggsGroup = j1.Extras:AddLeftGroupbox("Eggs", "egg")
EggsGroup:AddDropdown("EggChoice", { Text = "Egg", Values = oN_1_4, Multi = false, AllowNull = true, Default = nil })
EggsGroup:AddToggle("AutoOpenEgg", { Text = "Auto Open Egg", Default = false })
EggsGroup:AddSlider("EggDelay", { Text = "Egg delay", Default = 1, Min = 0.2, Max = 30, Rounding = 1, Suffix = "s" })
EggsGroup:AddButton({ Text = "Open Now", Func = onOpenNow })
local RewardsGroup = j1.Extras:AddRightGroupbox("Rewards", "gift")
RewardsGroup:AddToggle("AutoDaily", { Text = "Auto Claim Daily Rewards", Default = false })
RewardsGroup:AddToggle("AutoFreeRewards", { Text = "Auto Claim Free Rewards", Default = false })
RewardsGroup:AddSlider("RewardsDelay", { Text = "Rewards delay", Default = 30, Min = 5, Max = 300, Rounding = 0, Suffix = "s" })
local MovementGroup = j1.Player:AddLeftGroupbox("Movement", "person-standing")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "Walkspeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "Walkspeed", Default = 50, Min = 16, Max = 500, Rounding = 0 })
MovementGroup:AddToggle("Noclip", { Text = "Noclip", Default = false })
MovementGroup:AddToggle("InfJump", { Text = "Inf Jump", Default = false })
local FlyGroup = j1.Player:AddRightGroupbox("Fly", "plane")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 80, Min = 16, Max = 400, Rounding = 0 })
local MenuGroup = j1.Settings:AddLeftGroupbox("Menu", "menu")
Library.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton({ Text = "Unload", Func = onUnload })
j3:SetLibrary(Library)
j3:SetFolder("OuroborosHub")
j3:SaveDefault("Monochrome")
j3:ApplyToTab(j1.Settings)
j3:LoadDefault()
j2:SetLibrary(Library)
j2:IgnoreThemeSettings()
j2:SetIgnoreIndexes({ "MenuKeybind" })
j2:SetFolder("OuroborosHub/muscle-evolution")
j2:BuildConfigSection(j1.Settings)
j2:LoadAutoloadConfig()
iY = tick()
iT = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local nx = v
        pcall(function()
            nx:Disable()
        end)
    end
end)
jK = fn767
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
jf = fn476
if ((oN_4_6 or jk) and (oN_8 or not ko) or (ko and not oN_4_6 or not ko and jk)) and not ((oN_4_6 or jk) and (oN_8 or not ko) or (ko and not oN_4_6 or not ko and jk)) then
    i_ = false
    i5 = nil
    i2 = {}
    i1 = fn443
else
    i5 = false
    i2 = nil
    i1 = {}
    i_ = fn443
end
iM = function(eA)
    if i2 then
        i2:Disconnect()
        i2 = nil
    end
    if not eA then
        return
    end
    i2 = eA:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
        local nL = i5 or Library.Unloaded or not jR("WalkSpeedEnabled")
        if nL then
            return
        end
        i_(eA)
    end)
    if jR("WalkSpeedEnabled") then
        i_(eA)
    end
end
connection3 = LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
iM(jf())
connection4 = UserInputService.JumpRequest:Connect(onJumpRequest)
connection5 = RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fn17)
Toggles.WalkSpeedEnabled:OnChanged(fn178)
Toggles.Noclip:OnChanged(fn821)
Library:OnUnload(fn628)
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(worker6)
task.spawn(worker7)
task.spawn(worker8)
task.spawn(worker9)
task.spawn(worker10)
task.spawn(worker11)
Library:Notify("Muscle Evolution loaded")
