local i2
local connection2
local i8
local iQ
local ServerBoundClaimIndexReward
local je
local RebirthTable
local PotionTable
local jJ
local iJ
local jq
local i7
local iP
local jw
local jd
local CollectionService
local ServerBoundAutoEquipBest
local jj
local i0
local connection
local jp
local Library
local iO
local VirtualUser
local jc
local Options
local ji
local jH
local ServerBoundRequestRebirth
local LocalPlayer
local i5
local PlayerCacheManager
local ju
local jb
local PetConfig
local ServerBoundEquipBest
local iA
local jh
local iZ
local jn
local DiceTable
local iM
local ServerBoundAutoCollectToggle
local ja
local iS
local iz
local PlayerGui
local iY
local jF
local iF
local Label
local i3
local iL
local Workspace
local i9
local iR
local jy
local iy
local jf
local Toggles
local jE
local iE
local jl
local function fn2()
    pcall(function()
        ServerBoundClaimIndexReward:InvokeServer(nil, nil, true)
    end)
end
local function fn13()
    local Character = LocalPlayer.Character
    local k5 = Character and Character:FindFirstChild("HumanoidRootPart")
    return k5
end
local function fn71()
    return PlayerCacheManager:getData()
end
local function fn105()
    local lb = {}
    local lc = jf().DiceInventory
    local lj = if lc then 1 else 0
    local lh = 3477 * lj + 985 * (1 - lj)
    local li = 3240 * lj + 3786 * (1 - lj)
    if not ((lh * 1285 + li * 988 + lh * li) % 16777213 == 2157332) then
        lc = lb
    end
    local lb_1 = lc
    local lc_1 = -1
    local Id
    for i, v in ipairs(DiceTable.get()) do
        if (lb_1[v.Id] or 0) > 0 then
            local le_1 = v.Luck or 0
            if le_1 >= lc_1 then
                lc_1 = le_1
                Id = v.Id
            end
        end
    end
    return Id
end
local function fn111(at, au)
    if setclipboard then
        setclipboard(at)
    elseif toclipboard then
        toclipboard(at)
    end
    Library:Notify(au)
end
local function onInputChanged(e_)
    local UserInputType = e_.UserInputType
    local nK = UserInputType == Enum.UserInputType.MouseMovement
    local nO = if nK then 1 else 0
    local nM = 1121 * nO + 2524 * (1 - nO)
    local nN = 402 * nO + 3317 * (1 - nO)
    if not ((nM * 3072 + nN * 3073 + nM * nN) % 16777213 == 5129700) then
        nK = UserInputType == Enum.UserInputType.Gamepad1
    end
    if nK then
        i5 = tick()
    end
end
local function fn165()
    for i, v in ipairs(PotionTable.get()) do
        local mY = v.Id ~= "potion_bundle" and not i7(v.Id) and iS(v)
        if mY then
            iA(v.Id)
        end
    end
end
local function fn196()
    local mw = if LocalPlayer:GetAttribute("AutoCollectOwned") == true then 1 else 0
    if mw == 1 then
        if LocalPlayer:GetAttribute("AutoCollectEnabled") ~= true then
            pcall(function()
                ServerBoundAutoCollectToggle:InvokeServer("Toggle")
            end)
        end
        return
    end
    local mp = ja()
    if not mp then
        return
    end
    local Slots = mp:FindFirstChild("Slots")
    if not Slots then
        return
    end
    local mp_1 = iR()
    if not mp_1 then
        return
    end
    local CFrame = mp_1.CFrame
    for i, child in ipairs(Slots:GetChildren()) do
        if Library.Unloaded then
            return
        end
        if not i9("AutoCollectMoney") then
            break
        elseif child:GetAttribute("CharacterId") then
            local Collecter = child:FindFirstChild("Collecter")
            local ms = Collecter and Collecter:IsA("BasePart")
            if ms then
                mp_1.CFrame = Collecter.CFrame + Vector3.new(0, 2.5, 0)
                task.wait(0.12)
            end
        end
    end
    if mp_1.Parent then
        mp_1.CFrame = CFrame
    end
end
local function fn203()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    i3 = tick()
end
local function onCopyJoinScript_JobID()
    local no = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, jj)
    if setclipboard then
        setclipboard(no)
    elseif toclipboard then
        toclipboard(no)
    end
    Library:Notify("Copied join script to clipboard")
end
local function fn233(d6)
    local DiscordGroup = d6:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = iE })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = iE })
end
local function fn270()
    local nk_1
    local nj_1
    if identifyexecutor then
        nk_1, nj_1 = identifyexecutor()
        local nl = nk_1 ~= ""
        local nm = type(nk_1) == "string" and nl
        if nm then
            local nl_1 = type(nj_1) == "string" and nj_1 ~= "" and nk_1 .. " " .. nj_1
            jF = nl_1 or nk_1
        end
    end
end
local function fn318(aR)
    local kO = Options[aR]
    return kO and kO.Value or nil
end
local function fn335(bF)
    if bF.Id == "potion_bundle" then
        return false
    end
    if (iy[bF.Id] or 0) <= 0 then
        return false
    end
    local lt_1 = jf().Gems or 0
    return lt_1 >= (bF.GemCost or 0)
end
local function onInputBegan()
    i5 = tick()
end
local function fn355(a2)
    local kU = Options[a2]
    local kU_1 = kU and kU.Value
    if typeof(kU_1) ~= "table" then
        return {}
    end
    return kU_1
end
local function fn356()
    pcall(function()
        ServerBoundAutoEquipBest:FireServer()
    end)
end
local function fn364(b4)
    if not b4 then
        return false
    end
    local On = b4:FindFirstChild("On")
    return On ~= nil and On.Enabled == true
end
local function worker2()
    while not Library.Unloaded do
        if i9("AutoEquipBestPets") then
            jb()
        end
        if i9("AutoClaimAllIndex") then
            i0()
        end
        task.wait(2)
    end
end
local function fn401()
    return PlayerGui:FindFirstChild("RollGui")
end
local function onOnClientEvent2(af)
    if type(af) == "table" then
        jH = af
    else
        jH = {}
    end
end
local function onOnClientEvent(ad)
    if type(ad) == "table" then
        iy = ad
    end
end
local function worker7()
    while not Library.Unloaded do
        if i9("AutoBuyDice") then
            jd()
        end
        if i9("AutoRebirth") then
            jh()
        end
        task.wait(0.5)
    end
end
local function worker3()
    while not Library.Unloaded do
        if i9("AutoBuyPotions") then
            jn()
        end
        if i9("AutoUsePotions") then
            iZ()
        end
        if i9("AutoBuyGemUpgrades") then
            iz()
        end
        task.wait(1)
    end
end
local function fn446()
    local UserId = LocalPlayer.UserId
    for i, v in ipairs(CollectionService:GetTagged("Plot")) do
        if v:GetAttribute("OwnerUserId") == UserId then
            return v
        end
    end
    return nil
end
local function fn496(aW, aX)
    local kR = Options[aW]
    local kR_1 = kR and kR.Value
    if typeof(kR_1) == "number" then
        return kR_1
    end
    return aX
end
local function worker4()
    while not Library.Unloaded do
        if i9("AutoHatchEggs") then
            iM()
        end
        task.wait(0.75)
    end
end
local function fn501()
    for i, v in ipairs(PotionTable.get()) do
        if (iy[v.Id] or 0) > 0 then
            local mP_1 = jf().Gems or 0
            if mP_1 >= (v.GemCost or 0) then
                iA(v.Id)
            end
        end
    end
end
local function fn515(bA)
    local lq = jH[bA]
    local lr = type(lq) == "number" and os.time() < lq
    return lr
end
local function worker5()
    while not Library.Unloaded do
        if i9("AutoCollectMoney") then
            iQ()
        end
        task.wait(1)
    end
end
local function fn537(aA, aB)
    return string.format('<font color="%s">%s</font>', aB, aA)
end
local function worker8()
    while not Library.Unloaded do
        if i9("AutoRoll") then
            jq()
        end
        task.wait(0.35)
    end
end
local function fn552(aD, aE, aF)
    return string.format("<b>%s</b> %s %s", aD, jJ("-", "#5a6070"), jJ(aE, aF))
end
local function fn616()
    local mh = ju("DiceChoice")
    for k, v in pairs(mh) do
        if v then
            local mh_1 = jc[k]
            if mh_1 then
                iJ(mh_1)
            end
        end
    end
end
local function onRscripts()
    if setclipboard then
        setclipboard(ji)
    elseif toclipboard then
        toclipboard(ji)
    end
    Library:Notify("Copied Rscripts profile to clipboard")
end
local function fn649()
    connection:Disconnect()
    connection2:Disconnect()
end
local function fn652()
    iP(jl, "Copied Discord invite to clipboard")
end
local function onOnClientEvent3(ah)
    local kE = type(ah) == "table" and ah.Message
    local kF = kE or nil
    local kF_1 = type(kF) == "string" and string.find(string.lower(kF), "too fast", 1, true)
    if kF_1 then
        jE = tick() + 2.5
    end
end
local function fn666(aM)
    local kL = Toggles[aM]
    return kL ~= nil and kL.Value == true
end
local function fn672(bk)
    local k7 = jf()
    local k7_1 = k7.UpgradeLevels and k7.UpgradeLevels.cheaper_dices or 0
    local floor = math.floor
    local k9 = bk.Cost or 0
    return floor(k9 * (1 - k7_1 * 0.05))
end
local function worker9()
    while not Library.Unloaded do
        task.wait(2)
        if i9("AntiAfk") then
            local nP = tick() - i5
            local nQ = tick() - i3
            if nP >= 300 and nQ >= 60 then
                pcall(iL)
            else
                if nP < 300 and nQ >= 300 then
                    pcall(iL)
                end
            end
        end
    end
end
local function worker6()
    while not Library.Unloaded do
        if i9("AutoPlaceBest") then
            iY()
        end
        task.wait(iF("PlaceBestDelay", 1))
    end
end
local function fn712()
    local lQ = jp()
    local lR = lQ and lQ:FindFirstChild("AutoRoll")
    local lQ_1 = lR
    if lR then
        lR = iO(lQ_1)
    end
    if lR then
        i8(lQ_1)
    end
end
local function onUnload()
    Library:Unload()
end
local function fn730(S, T)
    local kw = PetConfig.Eggs[S] and PetConfig.Eggs[S].Price or 0
    local kw_2 = PetConfig.Eggs[T] and PetConfig.Eggs[T].Price or 0
    if kw == kw_2 then
        return S < T
    end
    return kw < kw_2
end
local function fn774()
    local mD = jf()
    local getByRebirthCount = RebirthTable.getByRebirthCount
    local mF = mD.Rebirth or 0
    local mG = getByRebirthCount(mF)
    if not mG then
        return
    end
    if (mD.Money or 0) < (mG.Cost or 0) then
        return
    end
    pcall(function()
        ServerBoundRequestRebirth:FireServer()
    end)
end
local function fn786()
    local lw = jw()
    local lx = lw and lw:FindFirstChild("Holder")
    local lw_1 = lx
    if lx then
        lx = lw_1:FindFirstChild("Buttons")
    end
    local lw_2 = lx
    if not lw_2 then
        return nil
    end
    return lw_2
end
local function worker()
    local nu_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local nt = math.floor(os.clock() - i2)
        if nt < 60 then
            nu_1 = nt .. "s"
        elseif nt < 3600 then
            nu_1 = string.format("%dm %ds", nt // 60, nt % 60)
        else
            nu_1 = string.format("%dh %dm", nt // 3600, nt % 3600 // 60)
        end
        Label:SetText(jy("Session time", nu_1, je))
    end
end
local function fn821()
    pcall(function()
        ServerBoundEquipBest:InvokeServer()
    end)
end
iy = nil
iz = nil
iA = nil
ServerBoundAutoEquipBest = nil
iE = nil
iF = nil
ServerBoundRequestRebirth = nil
iJ = nil
iL = nil
iM = nil
PlayerCacheManager = nil
iO = nil
iP = nil
iQ = nil
iR = nil
iS = nil
PetConfig = nil
Options = nil
RebirthTable = nil
Toggles = nil
iY = nil
iZ = nil
i0 = nil
PotionTable = nil
i2 = nil
i3 = nil
DiceTable = nil
i5 = nil
Library = nil
i7 = nil
i8 = nil
i9 = nil
ja = nil
jb = nil
jc = nil
jd = nil
je = nil
jf = nil
PlayerGui = nil
jh = nil
ji = nil
jj = nil
local ServerBoundHatchEgg, ServerBoundBuyPotion, iD, iG, ServerBoundBuyDice, ServerBoundRequestRoll, iV, UpgradeTable
jl = nil
Label = nil
jn = nil
LocalPlayer = nil
jp = nil
jq = nil
connection2 = nil
Workspace = nil
ServerBoundAutoCollectToggle = nil
ju = nil
VirtualUser = nil
jw = nil
ServerBoundClaimIndexReward = nil
jy = nil
ServerBoundEquipBest = nil
CollectionService = nil
jE = nil
jF = nil
jH = nil
connection = nil
jJ = nil
local RollAnimator, jz, jB, ServerBoundPurchaseUpgrade, ServerBoundTripleHatch, jV, j1
local jP_1
CollectionService, VirtualUser, Workspace, LocalPlayer, jl, ji, jP_1, DiceTable, PotionTable, UpgradeTable, RebirthTable, PetConfig, PlayerCacheManager, ServerBoundRequestRoll, ServerBoundBuyDice, ServerBoundRequestRebirth, ServerBoundAutoEquipBest, ServerBoundBuyPotion, ServerBoundHatchEgg, ServerBoundTripleHatch, ServerBoundPurchaseUpgrade, ServerBoundEquipBest, ServerBoundClaimIndexReward, ServerBoundAutoCollectToggle, RollAnimator, PlayerGui, jV, jc = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local jK = game:GetService("Players")
local jQ = game:GetService("ReplicatedStorage")
CollectionService = game:GetService("CollectionService")
local UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
Workspace = game:GetService("Workspace")
if (not LocalPlayer or LocalPlayer) and (LocalPlayer and not ServerBoundHatchEgg) and (LocalPlayer or not LocalPlayer or not LocalPlayer and not ServerBoundHatchEgg) and ((LocalPlayer or false) and (jP_1 or not LocalPlayer) and (false or ServerBoundHatchEgg or not jP_1 and not LocalPlayer)) and not ((not LocalPlayer or LocalPlayer) and (LocalPlayer and not ServerBoundHatchEgg) and (LocalPlayer or not LocalPlayer or not LocalPlayer and not ServerBoundHatchEgg) and ((LocalPlayer or false) and (jP_1 or not LocalPlayer) and (false or ServerBoundHatchEgg or not jP_1 and not LocalPlayer))) then
else
    LocalPlayer = jK.LocalPlayer
end
local jU = "Spin a Fem"
jl = "https://discord.gg/ehKVq7pf7v"
ji = "https://rscripts.net/@Ouroboros"
local Remotes = jQ:WaitForChild("Remotes")
local Shared = jQ:WaitForChild("Shared")
local jN = Shared:WaitForChild("Data")
local Modules = Shared:WaitForChild("Modules")
DiceTable = require(jN:WaitForChild("DiceTable"))
PotionTable = require(jN:WaitForChild("PotionTable"))
UpgradeTable = require(jN:WaitForChild("UpgradeTable"))
RebirthTable = require(jN:WaitForChild("RebirthTable"))
PetConfig = require(Modules:WaitForChild("PetConfig"))
PlayerCacheManager = require(Modules:WaitForChild("PlayerCacheManager"))
ServerBoundRequestRoll = Remotes:WaitForChild("ServerBoundRequestRoll")
ServerBoundBuyDice = Remotes:WaitForChild("ServerBoundBuyDice")
ServerBoundRequestRebirth = Remotes:WaitForChild("ServerBoundRequestRebirth")
ServerBoundAutoEquipBest = Remotes:WaitForChild("ServerBoundAutoEquipBest")
ServerBoundBuyPotion = Remotes:WaitForChild("ServerBoundBuyPotion")
ServerBoundHatchEgg = Remotes:WaitForChild("ServerBoundHatchEgg")
ServerBoundTripleHatch = Remotes:WaitForChild("ServerBoundTripleHatch")
ServerBoundPurchaseUpgrade = Remotes:WaitForChild("ServerBoundPurchaseUpgrade")
ServerBoundEquipBest = Remotes:WaitForChild("ServerBoundEquipBest")
ServerBoundClaimIndexReward = Remotes:WaitForChild("ServerBoundClaimIndexReward")
ServerBoundAutoCollectToggle = Remotes:WaitForChild("ServerBoundAutoCollectToggle")
local jT = Remotes:WaitForChild("ClientBoundPotionStockUpdate")
local jS = Remotes:WaitForChild("ClientBoundPotionStatusUpdate")
local jR = Remotes:WaitForChild("ClientBoundNotification")
RollAnimator = require(Modules:WaitForChild("RollAnimator"))
PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
if (VirtualUser and VirtualUser or not PotionTable and DiceTable or VirtualUser and VirtualUser and (not VirtualUser or ServerBoundClaimIndexReward) or (DiceTable or VirtualUser or (PotionTable or not ServerBoundBuyDice)) and (not VirtualUser and not VirtualUser or not ServerBoundBuyDice and not PotionTable)) and (((not ServerBoundBuyDice or not PotionTable) and (not VirtualUser or VirtualUser) or (ServerBoundBuyDice and PotionTable or not VirtualUser and DiceTable)) and (not ServerBoundBuyDice and VirtualUser and (not PotionTable or VirtualUser) or not ServerBoundClaimIndexReward and DiceTable and (VirtualUser and VirtualUser))) and not ((VirtualUser and VirtualUser or not PotionTable and DiceTable or VirtualUser and VirtualUser and (not VirtualUser or ServerBoundClaimIndexReward) or (DiceTable or VirtualUser or (PotionTable or not ServerBoundBuyDice)) and (not VirtualUser and not VirtualUser or not ServerBoundBuyDice and not PotionTable)) and (((not ServerBoundBuyDice or not PotionTable) and (not VirtualUser or VirtualUser) or (ServerBoundBuyDice and PotionTable or not VirtualUser and DiceTable)) and (not ServerBoundBuyDice and VirtualUser and (not PotionTable or VirtualUser) or not ServerBoundClaimIndexReward and DiceTable and (VirtualUser and VirtualUser)))) then
    jU = {}
else
    jV = {}
end
jc = {}
for i, v in ipairs(DiceTable.get()) do
    jK = v.Cost or 0
    if jK > 0 then
        jV[#jV + 1] = v.Name
        jc[v.Name] = v.Id
    end
end
jK = {}
local jM_1 = PetConfig.Eggs or {}
for k in pairs(jM_1) do
    jK[#jK + 1] = k
end
iy, jH, jE, jB, Library, Toggles, Options, je, iP, iE, jJ, jy, i9, iV, iF, ju, jf, ja, iR, iG, jz, i7, iS, iA, jw, jp, i8, iO, iD, jq, iJ, jd, iQ, jh, iY, iM, jn, iZ, iz, jb, i0 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
table.sort(jK, fn730)
local jY = { "1", "3" }
iy = {}
jH = {}
jE = 0
jB = 1.75
jT.OnClientEvent:Connect(onOnClientEvent)
jS.OnClientEvent:Connect(onOnClientEvent2)
jR.OnClientEvent:Connect(onOnClientEvent3)
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
iP = fn111
iE = fn652
jJ = fn537
jy = fn552
local jX = "#7fd47f"
jQ = "#6ec1ff"
je = "#e8a34d"
local jP_3 = "#8b93a3"
i9 = fn666
iV = fn318
iF = fn496
ju = fn355
jf = fn71
ja = fn446
iR = fn13
iG = fn672
jz = fn105
i7 = fn515
iS = fn335
iA = function(bL)
    pcall(function()
        ServerBoundBuyPotion:FireServer(bL)
    end)
end
jw = fn401
jp = fn786
i8 = function(bZ)
    if not bZ then
        return
    end
    pcall(function()
        if firesignal then
            firesignal(bZ.MouseButton1Click)
        elseif getconnections then
            for i, v in ipairs(getconnections(bZ.MouseButton1Click)) do
                local lI = v
                pcall(function()
                    lI:Fire()
                end)
            end
        end
    end)
end
iO = fn364
iD = fn712
jq = function()
    local lW
    local lX = jw()
    local lY = lX and lX.Enabled
    local lZ = lY or RollAnimator:IsAnimating()
    if lZ then
        pcall(function()
            RollAnimator:RequestSkip()
        end)
        return
    end
    iD()
    if tick() < jE then
        return
    end
    lW = jz()
    if not lW then
        return
    end
    if lX then
        lX:SetAttribute("LastDiceId", lW)
    end
    jE = tick() + jB
    pcall(function()
        ServerBoundRequestRoll:FireServer(lW)
    end)
end
iJ = function(cv)
    local l3 = DiceTable.getById(cv)
    if not l3 then
        return false
    end
    local l4 = jf()
    local l6 = l4.DiceStock and l4.DiceStock[cv]
    local md = if l6 then 1 else 0
    local mb = 3340 * md + 1392 * (1 - md)
    local mc = 2067 * md + 2186 * (1 - md)
    if not ((mb * 3237 + mc * 561 + mb * mc) % 16777213 == 2097734) then
        l6 = 0
    end
    if l6 <= 0 then
        return false
    end
    local l5_2 = (RebirthTable.getRebirthCountForDiceId(cv))
    local mg = if l5_2 then 1 else 0
    local me = 417 * mg + 2828 * (1 - mg)
    local mf = 3382 * mg + 885 * (1 - mg)
    if not ((me * 1656 + mf * 1665 + me * mf) % 16777213 == 7731876) then
        l5_2 = 0
    end
    if (l4.Rebirth or 0) < l5_2 then
        return false
    end
    local l5_4 = iG(l3)
    if (l4.Money or 0) < l5_4 then
        return false
    end
    pcall(function()
        ServerBoundBuyDice:FireServer(cv, false)
    end)
    return true
end
jd = fn616
iQ = fn196
jh = fn774
iY = fn356
iM = function()
    local mI = iV("EggChoice")
    local mJ = mI == ""
    local mK = type(mI) ~= "string" or mJ
    if mK then
        return
    end
    local Eggs = Workspace:FindFirstChild("Eggs")
    local mK_1 = Eggs and not Eggs:FindFirstChild(mI)
    if mK_1 then
        return
    end
    local mJ_2 = iV("HatchAmount")
    if mJ_2 == "3" then
        pcall(function()
            ServerBoundTripleHatch:InvokeServer(mI)
        end)
    else
        pcall(function()
            ServerBoundHatchEgg:InvokeServer(mI)
        end)
    end
end
jn = fn501
iZ = fn165
iz = function()
    local m5 = jf()
    local m6 = m5.Gems
    local nc = if m6 then 1 else 0
    local na = 2724 * nc + 3749 * (1 - nc)
    local nb = 3075 * nc + 1808 * (1 - nc)
    if not ((na * 3554 + nb * 3374 + na * nb) % 16777213 == 11655233) then
        m6 = 0
    end
    local m7 = m6
    local m8 = m5.UpgradeLevels or {}
    for i, v in ipairs(UpgradeTable.get()) do
        local ni = v
        local m6_2 = m8[ni.Id] or 0
        if m6_2 < (ni.MaxLevel or 0) then
            local m6_4 = UpgradeTable.getPrice(ni, m6_2)
            if m7 >= m6_4 then
                pcall(function()
                    ServerBoundPurchaseUpgrade:InvokeServer(ni.Id)
                end)
                m7 = m7 - m6_4
            end
        end
    end
end
jb = fn821
i0 = fn2
local Window = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = jl, Copyable = true }, "|", jU },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local jZ = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gamepad-2"),
    Settings = Window:AddTab("Settings", "settings")
}
jZ.Roll = jZ.Main:AddSubTab("Roll", "dices")
jZ.Shop = jZ.Main:AddSubTab("Shop", "shopping-bag")
jZ.Eggs = jZ.Main:AddSubTab("Eggs", "egg")
jZ.Extra = jZ.Main:AddSubTab("Extra", "sparkles")
for k, v in jZ do
    if v ~= jZ.Main then
        fn233(v)
    end
end
jF, jR, Label, jj, jN = nil, nil, nil, nil, nil
local jL_1 = 8
repeat
    local jO_2 = (jL_1 * 1 + 2) % 3 + 1
    if jO_2 <= 2 then
        if jO_2 <= 1 then
            if jL_1 * 109302041 + 8 + 4 >= jL_1 * 109302041 + 8 + 4 + 6 then
                jj = #jN > 18
            else
                jN = #jj > 18
            end
            jL_1 = (jL_1 + 19) % 24
        else
            local jO_3 = {
                "doxxwjinxdo",
                "lwkhduqmldg",
                "bgvtlxmbdrv",
                "hoarps",
                "wfedn",
                "sugqtymitc",
                "hbmn",
                "uogwmc",
                "dcugsdjypl"
            }
            if jO_3[(jL_1 * 37 + 57) % 9 + 1] <= jO_3[(jL_1 * 37 + 57) % 9 + 1] then
                jF = "Unknown"
                pcall(fn270)
                local AccountGroup = jZ.Info:AddLeftGroupbox("Account", "circle-user")
                AccountGroup:AddLabel(jy("User", LocalPlayer.Name, jX), true)
                AccountGroup:AddLabel(jy("Status", "Keyless", jX), true)
                AccountGroup:AddLabel(jy("Executor", jF, jX), true)
                jR = jZ.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                jR:AddLabel(jJ(jU .. " [" .. tostring(game.PlaceId) .. "]", jQ), true)
                jR:AddLabel(jy("Place ID", tostring(game.PlaceId), jQ), true)
                Label = jR:AddLabel(jy("Session time", "0s", je), true)
            else
                pcall(fn270)
                jQ = jU.Info:AddLeftGroupbox("Account", "circle-user")
                jQ:AddLabel(jF("User", nil, jJ), true)
                jQ:AddLabel(jF("Status", "Keyless", jJ), true)
                jQ:AddLabel(jF("Executor", "Unknown", jJ), true)
                jy = jU.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                jy:AddLabel(jZ(LocalPlayer .. " [" .. tostring(game.PlaceId) .. "]", je), true)
                jy:AddLabel(jF("Place ID", tostring(game.PlaceId), je), true)
                jR = jy:AddLabel(jF("Session time", "0s", Label), true)
            end
            jL_1 = (jL_1 + 7) % 24
        end
    else
        local jO_4 = (vector.create((jL_1 * 3 + 3) % 11 + 1, (jL_1 * 10 + 5) % 13 + 1, (jL_1 * 7 + 3) % 17 + 1))
        jS = (vector.create((jL_1 * 5 + 9) % 11 + 1, (jL_1 * 5 + 12) % 13 + 1, (jL_1 * 3 + 11) % 17 + 1))
        jT = (vector.create((jL_1 * 2 + 7) % 11 + 1, (jL_1 * 2 + 6) % 13 + 1, (jL_1 * 13 + 17) % 17 + 1))
        j1 = (vector.create((jL_1 * 5 + 2) % 5 + 1, (jL_1 * 5 + 1) % 7 + 1, (jL_1 * 2 + 3) % 9 + 1))
        if vector.dot(vector.cross(jO_4, (vector.cross(jS, jT))), j1) == vector.dot(jS * vector.dot(jO_4, jT) - jT * vector.dot(jO_4, jS), j1) then
            jj = tostring(game.JobId)
        else
            jF = tostring(game.JobId)
        end
        jL_1 = (jL_1 + 16) % 24
    end
until (jL_1 * 17 + 18) % 24 == 4
if jN then
    local jL_2 = 0
    repeat
        local oA = bit32.rrotate(bit32.bxor(bit32.lrotate(jL_2, 17), string.byte(tostring(jL_2))), 8)
        if bit32.bxor(bit32.lrotate(bit32.bxor(oA, 2579353445), 14), 1943627375) ~= bit32.lrotate(oA, 14) then
            jj = string.sub(jN, 1, 18) .. "..."
        else
            jN = string.sub(jj, 1, 18) .. "..."
        end
        jL_2 = (jL_2 + 3) % 8
    until (jL_2 * 5 + 5) % 8 == 4
end
local jL_3 = jN or jj
i2 = nil
jT = jL_3
jR:AddLabel(jy("Server", jT, jP_3), true)
jR:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
i2 = os.clock()
task.spawn(worker)
local ScriptsGroup = jZ.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(jJ("Included in this hub", jP_3), true)
ScriptsGroup:AddLabel(jJ(jU, jQ), true)
jN = jZ.Info:AddRightGroupbox("Features", "list")
jN:AddLabel(jJ("Auto Roll", jQ), true)
jN:AddLabel(jJ("Auto Shop", je), true)
jN:AddLabel(jJ("Auto Eggs", jX), true)
jN:AddLabel(jJ("Pets & Index", jP_3), true)
local SocialsGroup = jZ.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = iE })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = jZ.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = iE })
j1 = jZ.Info:AddRightGroupbox("FAQ", "circle-help")
j1:AddLabel("Where do I get a good config?", true)
j1:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
j1:AddLabel("How do I import / export configs?", true)
j1:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
j1:AddLabel("How do I report bugs?", true)
j1:AddLabel("Join the Discord and post it in the bugs channel.", true)
j1:AddLabel("How do I make suggestions?", true)
j1:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
j1:AddLabel("How do I get help or updates?", true)
j1:AddLabel("Join the Discord, updates and support are posted there first.", true)
local RollingGroup = jZ.Roll:AddLeftGroupbox("Rolling", "dices")
RollingGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
RollingGroup:AddToggle("AutoBuyDice", { Text = "Auto Buy Dice", Default = false })
local jL_4 = jV[1] or "Basic Dice"
RollingGroup:AddDropdown("DiceChoice", {
    Text = "Dice",
    Values = jV,
    Default = { jL_4 },
    Multi = true,
    Searchable = true,
    AllowNull = true
})
local ProgressionGroup = jZ.Roll:AddRightGroupbox("Progression", "trending-up")
ProgressionGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
ProgressionGroup:AddToggle("AutoPlaceBest", { Text = "Auto Place Best", Default = false })
ProgressionGroup:AddSlider("PlaceBestDelay", { Text = "Place Best Delay", Default = 1, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
ProgressionGroup:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
jN = jZ.Shop:AddLeftGroupbox("Potions", "flask-conical")
jN:AddToggle("AutoBuyPotions", { Text = "Auto Buy Potions", Default = false })
jN:AddToggle("AutoUsePotions", { Text = "Auto Use Potions", Default = false })
local UpgradesGroup = jZ.Shop:AddRightGroupbox("Upgrades", "gem")
UpgradesGroup:AddToggle("AutoBuyGemUpgrades", { Text = "Auto Buy Gem Upgrades", Default = false })
jQ = jZ.Eggs:AddLeftGroupbox("Eggs", "egg")
jQ:AddToggle("AutoHatchEggs", { Text = "Auto Hatch Eggs", Default = false })
local jL_5 = jK[1] or "Basic Egg"
i5, i3, connection, connection2, iL = nil, nil, nil, nil, nil
jQ:AddDropdown("EggChoice", { Text = "Egg", Values = jK, Default = jL_5 })
jQ:AddDropdown("HatchAmount", { Text = "Amount", Values = jY, Default = "1" })
local PetsGroup = jZ.Extra:AddLeftGroupbox("Pets", "paw-print")
PetsGroup:AddToggle("AutoEquipBestPets", { Text = "Auto Equip Best Pets", Default = false })
local IndexGroup = jZ.Extra:AddRightGroupbox("Index", "book-check")
IndexGroup:AddToggle("AutoClaimAllIndex", { Text = "Auto Claim All Index", Default = false })
jN = jZ.Settings:AddLeftGroupbox("Menu", "menu")
jN:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
jN:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
jN:AddButton({ Text = "Unload", Func = onUnload })
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
ThemeManager:ApplyToTab(jZ.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/spin-a-fem")
SaveManager:BuildConfigSection(jZ.Settings)
SaveManager:LoadAutoloadConfig()
i5 = tick()
i3 = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local nG = v
        pcall(function()
            nG:Disable()
        end)
    end
end)
iL = fn203
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
do
    Library:OnUnload(fn649)
    task.spawn(worker9)
    task.spawn(worker8)
    task.spawn(worker7)
    task.spawn(worker6)
    task.spawn(worker5)
    task.spawn(worker4)
    task.spawn(worker3)
    task.spawn(worker2)
end
