local iv
local jc
local iU
local iB
local ih
local i_
local iH
local io
local i5
local iN
local Label
local jb
local iT
local iA
local ig
local iZ
local iG
local PurchasePower
local i4
local connection2
local it
local Workspace
local iz
local BuyTool
local iY
local iF
local il
local i3
local iL
local is
local EquipTool
local iR
local iy
local id
local RequestRebirth
local iE
local ik
local i2
local iK
local ir
local Options
local iQ
local ix
local je
local connection
local iW
local iD
local ij
local RequestFloorPurchase
local iJ
local iq
local i7
local iP
local iw
local jd
local Toggles
local iV
local iC
local PurchaseSpeed
local i0
local iI
local ip
local RequestSlotUpgrade
local iO
local function fn2(by, bz)
    local k6_1
    local k5_1
    k5_1, k6_1 = by, 0
    local la = 1
    while la <= bz do
        k6_1 = k6_1 + 1.75 ^ math.max(0, k5_1 - 20) * 200
        k5_1 = k5_1 + 1
        la += 1
    end
    return math.floor(k6_1)
end
local function fn6(aX, aY)
    if not iC(aX) then
        return true
    end
    return ij(aX)[tostring(aY)] == true
end
local function onInputBegan()
    jb = tick()
end
local function fn54()
    iG(iz, "Copied Discord invite to clipboard")
end
local function fn77()
    local mp = jc()
    if not mp then
        return false
    end
    local mq = false
    for i, child in ipairs(mp:GetChildren()) do
        if not not child.Name:match("^Floor%d+$") then
            local Slots = child:FindFirstChild("Slots")
            if not not Slots then
                for i, child in ipairs(Slots:GetChildren()) do
                    local mp_2 = tonumber(child:GetAttribute("StoredCash")) or 0
                    if not (mp_2 <= 0) then
                        local CollectButton = child:FindFirstChild("CollectButton")
                        local mr_1 = CollectButton and CollectButton:FindFirstChild("Touch")
                        if mr_1 then
                            iP(mr_1)
                            task.wait(0.08)
                            mq = true
                        end
                    end
                end
            end
        end
    end
    return mq
end
local function fn84()
    local leaderstats = iL:FindFirstChild("leaderstats")
    local kF = leaderstats and leaderstats:FindFirstChild("Money")
    local kE_1 = kF
    if kF then
        kF = kE_1.Value
    end
    return kF or 0
end
local function fn118(ad, ae)
    return ad.num < ae.num
end
local function worker3()
    while not ip.Unloaded do
        if id("AutoRebirth") then
            pcall(iE)
            task.wait(0.05)
        else
            task.wait(0.2)
        end
    end
end
local function fn157()
    return Workspace:FindFirstChild("Plot_" .. iL.Name)
end
local function fn178()
    local nW_1
    local nV_1
    if identifyexecutor then
        nW_1, nV_1 = identifyexecutor()
        local nX = nW_1 ~= ""
        local nY = type(nW_1) == "string" and nX
        if nY then
            local nX_1 = type(nV_1) == "string" and nV_1 ~= "" and nW_1 .. " " .. nV_1
            i3 = nX_1 or nW_1
        end
    end
end
local function onRscripts()
    iG(iw, "Copied Rscripts profile to clipboard")
end
local function fn206()
    local Bases = Workspace:FindFirstChild("Bases")
    if not Bases then
        return {}
    end
    local lO = i7()
    local lP = lO and lO.Position
    local lO_1 = {}
    for i, child in ipairs(Bases:GetChildren()) do
        local lN_1 = child:IsA("Model") and ir("CollectAreas", child.Name)
        if not not lN_1 then
            local Slots = child:FindFirstChild("Slots")
            if not not Slots then
                for i, child2 in ipairs(Slots:GetChildren()) do
                    local Spawn = child2:FindFirstChild("Spawn")
                    local lP_1 = Spawn and Spawn:FindFirstChild("SpawnedItem")
                    if not not lP_1 then
                        local lP_2 = ix(lP_1, "Steal") or ix(child2, "Steal")
                        local lS = lP_2
                        if lP_2 then
                            lP_2 = lS.Enabled
                        end
                        if not not lP_2 then
                            local lP_3 = lP_1:GetAttribute("Rarity") or ""
                            local lT = tostring(lP_3)
                            local lP_4 = lP_1:GetAttribute("Mutation") or "Normal"
                            local lU = tostring(lP_4)
                            if not not ir("CollectRarities", lT) then
                                if not not ir("CollectMutations", lU) then
                                    local lP_5 = lS.Parent
                                    local lV = lP_5 and lP_5:IsA("BasePart")
                                    if not lV then
                                        local lV_1 = Spawn:IsA("BasePart") and Spawn
                                        lP_5 = lV_1 or lP_1
                                    end
                                    local lN_5 = lP_5:IsA("BasePart") and lP_5.Position
                                    local lV_2 = lN_5 or lP_1:GetPivot().Position
                                    local lN_6 = lP
                                    if lN_6 then
                                        lN_6 = (lV_2 - lP).Magnitude
                                    end
                                    local lV_3 = lN_6 or 0
                                    local insert = table.insert
                                    local Name2 = child.Name
                                    local Name = child2.Name
                                    local lY = iT[lT] or 0
                                    insert(lO_1, {
                                        base = Name2,
                                        slot = Name,
                                        rarity = lT,
                                        mutation = lU,
                                        rank = lY,
                                        dist = lV_3,
                                        prompt = lS,
                                        part = lP_5,
                                        item = lP_1
                                    })
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    table.sort(lO_1, function(cK, cL)
        if cK.rank ~= cL.rank then
            return cK.rank > cL.rank
        end
        return cK.dist < cL.dist
    end)
    return lO_1
end
local function fn217()
    if not it() then
        return false
    elseif not i4() then
        return false
    else
        local me = os.clock() + 2
        while os.clock() < me do
            if not it() then
                return true
            end
            task.wait(0.05)
        end
        return true
    end
end
local function fn239(aB)
    if ip.Unloaded then
        return false
    end
    local ki = Toggles[aB]
    return ki ~= nil and ki.Value == true
end
local function onCopyJoinScript_JobID()
    local e0 = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, ik)
    iG(e0, "Copied join script to clipboard")
end
local function fn256(bE)
    return bE * 15 + 20
end
local function fn257(aH, aI)
    local kl = Options[aH]
    if kl == nil then
        return aI
    end
    return kl.Value
end
local function worker()
    local n6_1
    while true do
        task.wait(1)
        if ip.Unloaded then
            break
        end
        local n5 = math.floor(os.clock() - iW)
        if n5 < 60 then
            n6_1 = n5 .. "s"
        elseif n5 < 3600 then
            n6_1 = string.format("%dm %ds", n5 // 60, n5 % 60)
        else
            n6_1 = string.format("%dh %dm", n5 // 3600, n5 % 3600 // 60)
        end
        Label:SetText(iZ("Session time", n6_1, il))
    end
end
local function fn264()
    local nn = iN()
    local no = iI()
    for i, v in ipairs(iV) do
        local np = iY(nn, v)
        if no >= np then
            PurchasePower:FireServer(v)
            return true
        end
    end
    return false
end
local function fn267(bs, bt)
    local kZ_1
    local kY_1
    kY_1, kZ_1 = bs, 0
    local k2 = 1
    while k2 <= bt do
        kZ_1 = kZ_1 + 1.125 ^ math.max(0, kY_1 - 1) * 50
        kY_1 = kY_1 + 1
        k2 += 1
    end
    return math.floor(kZ_1)
end
local function fn276(as, at, au)
    return string.format("<b>%s</b> %s %s", as, jd("-", "#5a6070"), jd(at, au))
end
local function fn327(S, T)
    local kd = tonumber(S:match("%d+")) or 0
    local ke = tonumber(T:match("%d+")) or 0
    return kd < ke
end
local function fn335()
    local kN = iL:GetAttribute("Power") or 1
    return kN
end
local function fn343()
    local leaderstats = iL:FindFirstChild("leaderstats")
    local kI = leaderstats and leaderstats:FindFirstChild("Rebirths")
    local kH_1 = kI
    if kI then
        kI = kH_1.Value
    end
    return kI or 0
end
local function fn357(aM)
    local kn = iH(aM, {})
    if typeof(kn) ~= "table" then
        return {}
    end
    local ko = {}
    for k, v in pairs(kn) do
        if v == true then
            ko[k] = true
        else
            local kn_1 = typeof(k) == "number" and typeof(v) == "string"
            if kn_1 then
                ko[v] = true
            end
        end
    end
    return ko
end
local function fn368()
    local kQ = (iL:GetAttribute("WalkSpeed"))
    local kU = if kQ then 1 else 0
    local kS = 3050 * kU + 1891 * (1 - kU)
    local kT = 318 * kU + 4084 * (1 - kU)
    if not ((kS * 1903 + kT * 2601 + kS * kT) % 16777213 == 7601168) then
        kQ = 20
    end
    return math.min(kQ, 100)
end
local function fn427(ap, aq)
    return string.format('<font color="%s">%s</font>', aq, ap)
end
local function fn457()
    local nN = it() and id("AutoBackToBase")
    local nN_8, nN_9, nN_10, nN_11, nN_12, nN_13, nN_14
    if nN then
        local nR = if je() then 1 else 0
        if nR == 1 then
            return true
        end
        local nN_1 = id("AutoCollectBrainrot") and iR()
        if nN_8 then
            return true
        end
        local nN_2 = id("AutoCollectMoney") and iQ()
        if nN_9 then
            return true
        end
        local nN_3 = id("AutoUpgradeBrainrots") and iD()
        if nN_10 then
            return true
        end
        local nN_4 = id("AutoBuyFloors") and iv()
        if nN_11 then
            return true
        end
        local nN_5 = id("AutoBuyTools") and iF()
        if nN_12 then
            return true
        end
        local nN_6 = id("AutoBuyPower") and is()
        if nN_13 then
            return true
        end
        local nN_7 = id("AutoBuySpeed") and iy()
        if nN_14 then
            return true
        end
        return false
    end
    nN_8 = id("AutoCollectBrainrot") and iR()
    if nN_8 then
        return true
    end
    nN_9 = id("AutoCollectMoney") and iQ()
    if nN_9 then
        return true
    end
    nN_10 = id("AutoUpgradeBrainrots") and iD()
    if nN_10 then
        return true
    end
    nN_11 = id("AutoBuyFloors") and iv()
    if nN_11 then
        return true
    end
    nN_12 = id("AutoBuyTools") and iF()
    if nN_12 then
        return true
    end
    nN_13 = id("AutoBuyPower") and is()
    if nN_13 then
        return true
    end
    nN_14 = id("AutoBuySpeed") and iy()
    if nN_14 then
        return true
    end
    return false
end
local function fn476(aU)
    return next(ij(aU)) ~= nil
end
local function fn496()
    local ml = if it() then 1 else 0
    if ml == 1 then
        if id("AutoBackToBase") then
            return je()
        end
        return false
    end
    local mg = iU()
    local mh = mg[1]
    if not mh then
        return false
    end
    local mg_1 = i7()
    if mg_1 then
        mg_1.AssemblyLinearVelocity = Vector3.zero
        mg_1.AssemblyAngularVelocity = Vector3.zero
    end
    iP(mh.part)
    task.wait(0.25)
    i2(mh.prompt)
    local mg_2 = os.clock() + 1.25
    while os.clock() < mg_2 do
        if it() then
            break
        end
        task.wait(0.05)
    end
    local mg_3 = id("AutoBackToBase") and it()
    if mg_3 then
        return je()
    end
    return it()
end
local function fn522(bW, bX)
    if not bW then
        return nil
    end
    for i, descendant in ipairs(bW:GetDescendants()) do
        local lp = descendant:IsA("ProximityPrompt") and descendant.Enabled
        if lp then
            if not bX or descendant.ActionText == bX then
                return descendant
            end
        end
    end
    return nil
end
local function onInputChanged(fB)
    local UserInputType = fB.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        jb = tick()
    end
end
local function worker2()
    while not ip.Unloaded do
        task.wait(2)
        if id("AntiAfk") then
            local ol = tick() - jb
            local om = tick() - i5
            if ol >= 300 and om >= 60 then
                pcall(iB)
            else
                if ol < 300 and om >= 300 then
                    pcall(iB)
                end
            end
        end
    end
end
local function fn557()
    local m7 = iI()
    local m8 = false
    for i, v in ipairs(iK) do
        if not (iL:GetAttribute(v.name) == true) then
            if v.cost > 0 and m7 >= v.cost then
                BuyTool:FireServer(v.name)
                m8 = true
                task.wait(0.15)
                m7 = iI()
            end
        end
    end
    local m9_2 = nil
    for i, v in ipairs(iK) do
        if iL:GetAttribute(v.name) == true then
            if not m9_2 or v.damage > m9_2.damage then
                m9_2 = v
            end
        end
    end
    local m7_2 = m9_2 and iL:GetAttribute("EquippedTool") ~= m9_2.name
    if m7_2 then
        EquipTool:FireServer(m9_2.name)
        m8 = true
    end
    return m8
end
local function fn566()
    local nx = iA()
    if nx >= 100 then
        return false
    end
    local ny = iI()
    for i, v in ipairs(iO) do
        if not (nx + v > 100) then
            local nz = iq(nx, v)
            if ny >= nz then
                PurchaseSpeed:FireServer(v)
                return true
            end
        end
    end
    return false
end
local function fn570(eK)
    local DiscordGroup = eK:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = io })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = io })
end
local function onUnload()
    ip:Unload()
end
local function fn595(du)
    if du == "Floor1" then
        return true
    end
    return iL:GetAttribute(du .. "_Unlocked") == true
end
local function fn607(ai, aj)
    if setclipboard then
        setclipboard(ai)
    elseif toclipboard then
        toclipboard(ai)
    end
    ip:Notify(aj)
end
local function fn622()
    local Character = iL.Character
    local kC = Character and Character:FindFirstChild("HumanoidRootPart")
    return kC
end
local function fn625()
    local ll = jc()
    if not ll then
        return false
    end
    local lm = ll:FindFirstChild("Teleport") or ll:FindFirstChild("Spawn") or ll
    return iP(lm)
end
local function fn649()
    local nH = iN()
    local nI = i0(ig())
    if nH < nI then
        return false
    end
    RequestRebirth:FireServer()
    return true
end
local function fn651(Y, Z)
    if Y.order ~= Z.order then
        return Y.order < Z.order
    end
    return Y.cost < Z.cost
end
local function onReturnToBase()
    task.spawn(i4)
end
local function fn661()
    local mF = jc()
    if not mF then
        return false
    end
    local mG = false
    for i, child in ipairs(mF:GetChildren()) do
        if not not child.Name:match("^Floor%d+$") then
            local mF_1 = child.Name ~= "Floor1" and iL:GetAttribute(child.Name .. "_Unlocked") ~= true
            if not mF_1 then
                local Slots = child:FindFirstChild("Slots")
                local mQ = if not Slots then 1 else 0
                local mO = 3899 * mQ + 2124 * (1 - mQ)
                local mP = 1198 * mQ + 2586 * (1 - mQ)
                if not ((mO * 1940 + mP * 1443 + mO * mP) % 16777213 == 13963776) then
                    for i, child2 in ipairs(Slots:GetChildren()) do
                        if child2:GetAttribute("HasItem") == true then
                            RequestSlotUpgrade:FireServer(child.Name, child2.Name)
                            mG = true
                            task.wait(0.05)
                        end
                    end
                end
            end
        end
    end
    return mG
end
local function fn681()
    connection:Disconnect()
    connection2:Disconnect()
end
local function fn699()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    i_:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    i_:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    i5 = tick()
end
local function fn702()
    local mY = iI()
    local mZ = false
    for i, v in ipairs(ih) do
        if not iJ(v.name) then
            local m_ = v.previous and not iJ(v.previous)
            if not m_ then
                if mY >= v.price then
                    RequestFloorPurchase:FireServer(v.name)
                    mZ = true
                    task.wait(0.2)
                    mY = iI()
                end
            end
        end
    end
    return mZ
end
local function fn711()
    local Character = iL.Character
    local kW = Character ~= nil and Character:GetAttribute("Carrying") == true
    return kW
end
Toggles = nil
connection = nil
id = nil
BuyTool = nil
ig = nil
ih = nil
PurchaseSpeed = nil
ij = nil
ik = nil
il = nil
PurchasePower = nil
io = nil
ip = nil
iq = nil
ir = nil
is = nil
it = nil
Label = nil
iv = nil
iw = nil
ix = nil
iy = nil
iz = nil
iA = nil
iB = nil
iC = nil
iD = nil
iE = nil
iF = nil
iG = nil
iH = nil
iI = nil
iJ = nil
iK = nil
iL = nil
connection2 = nil
iN = nil
iO = nil
iP = nil
iQ = nil
iR = nil
Workspace = nil
iT = nil
iU = nil
iV = nil
iW = nil
RequestRebirth = nil
iY = nil
iZ = nil
i_ = nil
i0 = nil
RequestFloorPurchase = nil
i2 = nil
i3 = nil
i4 = nil
i5 = nil
RequestSlotUpgrade = nil
i7 = nil
Options = nil
EquipTool = nil
jb = nil
jc = nil
jd = nil
je = nil
local ja, jk, js, jt, jw
local jr_1
local jq_1
local ji_1
i_, Workspace, iL, iz, iw, PurchasePower, PurchaseSpeed, BuyTool, EquipTool, RequestSlotUpgrade, RequestFloorPurchase, RequestRebirth, ji_1, ip, jq_1, Toggles, Options, iT = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local jf = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local jj_4
if ((Options or not RequestSlotUpgrade) and (PurchaseSpeed or not RequestSlotUpgrade) or (iw or iw or (not PurchaseSpeed or Options))) and not ((Options or not RequestSlotUpgrade) and (PurchaseSpeed or not RequestSlotUpgrade) or (iw or iw or (not PurchaseSpeed or Options))) then
    iL = game:GetService("UserInputService")
    jt = game:GetService("VirtualUser")
    jr_1 = game:GetService("Workspace")
    i_ = "Break Tape For Brainrots"
else
    jt = game:GetService("UserInputService")
    i_ = game:GetService("VirtualUser")
    Workspace = game:GetService("Workspace")
    iL = jf.LocalPlayer
    jr_1 = "Break Tape For Brainrots"
end
if (Toggles or not RequestFloorPurchase) and (jq_1 or not Toggles) and (Toggles and jq_1 and (not jq_1 or not RequestFloorPurchase)) or not ((Toggles or not RequestFloorPurchase) and (jq_1 or not Toggles) and (Toggles and jq_1 and (not jq_1 or not RequestFloorPurchase))) then
    iz = "https://discord.gg/ehKVq7pf7v"
    iw = "https://rscripts.net/@Ouroboros"
else
    iw = "https://discord.gg/ehKVq7pf7v"
    iz = "https://rscripts.net/@Ouroboros"
end
local jh = ReplicatedStorage:WaitForChild("Events")
PurchasePower = jh:WaitForChild("PurchasePower")
PurchaseSpeed = jh:WaitForChild("PurchaseSpeed")
BuyTool = jh:WaitForChild("BuyTool")
EquipTool = jh:WaitForChild("EquipTool")
RequestSlotUpgrade = jh:WaitForChild("RequestSlotUpgrade")
RequestFloorPurchase = jh:WaitForChild("RequestFloorPurchase")
RequestRebirth = jh:WaitForChild("RequestRebirth")
local RarityConfigurations = require(ReplicatedStorage.Modules.RarityConfigurations)
local jm = require(ReplicatedStorage.Modules.MutationConfigurations)
local jn = require(ReplicatedStorage.Modules.ToolsConfiguration)
local jo = require(ReplicatedStorage.Modules.FloorConfigurations)
if ((Toggles or not iz) and (iw or not Toggles) or (Toggles or not i_ or not i_ and iw) or (not Toggles and not jm and (not iw or iw) or (jm or not jm) and (not jm and not i_))) and ((Toggles and i_ or (i_ or not iz)) and (iw and not jm or (iw or Toggles)) and ((not i_ and i_ or not i_ and not jm) and (iw and not Toggles and (iw or not Toggles)))) or not (((Toggles or not iz) and (iw or not Toggles) or (Toggles or not i_ or not i_ and iw) or (not Toggles and not jm and (not iw or iw) or (jm or not jm) and (not jm and not i_))) and ((Toggles and i_ or (i_ or not iz)) and (iw and not jm or (iw or Toggles)) and ((not i_ and i_ or not i_ and not jm) and (iw and not Toggles and (iw or not Toggles))))) then
    ji_1 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
else
    iT = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
end
ip = loadstring(game:HttpGet(ji_1 .. "Library.lua"))()
local jq_2 = loadstring(game:HttpGet(ji_1 .. "addons/ThemeManager.lua"))()
local jp = loadstring(game:HttpGet(ji_1 .. "addons/SaveManager.lua"))()
Toggles = ip.Toggles
Options = ip.Options
if (jq_2 or jq_2 or (not jm or jq_2) or Options and jm and (not jt and jq_2)) and (not Options and not jt and (not jq_2 and Options) or jt and Options and (jt or not jq_2)) and ((Options and jq_2 or jm and not jt or not jq_2 and not jt and (jm and Options)) and ((jq_2 or jt) and (Options and jt) or (not Options or jm or (Options or jm)))) and not ((jq_2 or jq_2 or (not jm or jq_2) or Options and jm and (not jt and jq_2)) and (not Options and not jt and (not jq_2 and Options) or jt and Options and (jt or not jq_2)) and ((Options and jq_2 or jm and not jt or not jq_2 and not jt and (jm and Options)) and ((jq_2 or jt) and (Options and jt) or (not Options or jm or (Options or jm))))) then
    js = {
        "Godly",
        "Mythical",
        "Uncommon",
        "Rare",
        "OG",
        "Secret",
        "Celestial",
        "Exclusive",
        "Epic",
        "Ancient",
        "Limited",
        "Legendary",
        "Common"
    }
    iT = {}
    jk = {}
else
    jk = {
        "Common",
        "Uncommon",
        "Rare",
        "Epic",
        "Legendary",
        "Mythical",
        "Secret",
        "Godly",
        "OG",
        "Celestial",
        "Ancient",
        "Limited",
        "Exclusive"
    }
    js = {}
    iT = {}
end
local ju = {}
for i, v in ipairs(jk) do
    if RarityConfigurations[v] then
        table.insert(js, v)
        iT[v] = i
        ju[v] = true
    end
end
for k in pairs(RarityConfigurations) do
    if not ju[k] then
        table.insert(js, k)
        iT[k] = #js
    end
end
jf = {}
for k in pairs(jm) do
    table.insert(jf, k)
end
jh = nil
local jg = 3
local AccountGroup
repeat
    local ji_2 = {
        "anetobeuluf",
        "wsnz",
        "sknkjogdurv",
        "xjp",
        "cnqss",
        "ficmz",
        "ugd",
        "vrjzccoq",
        "cgsjqurhrji",
        "rfpehij",
        "ofnkclvtjl",
        "muyqpf"
    }
    local pa = jg
    local jj_1 = ji_2[pa % 12 + 1]
    if jj_1:len() <= jj_1:gsub("(.)", "%1%1", pa % 3 % 2 + 1):len() then
        table.sort(jf)
        jh = {}
    else
        table.sort(jh)
        jf = {}
    end
    jg = (jg + 3) % 4
until (jg * 3 + 2) % 4 == 0
local Bases = Workspace:WaitForChild("Bases")
for i, child in ipairs(Bases:GetChildren()) do
    local jg_2 = child:IsA("Model") and child.Name:match("^Base%d+$")
    if jg_2 then
        table.insert(jh, child.Name)
    end
end
local jg_3 = 6
repeat
    local pe = bit32.rrotate(bit32.bxor(bit32.lrotate(jg_3, 23), string.byte(tostring(jg_3))), 12)
    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(pe, 3541993379), 1836820765), (bit32.bxor(bit32.band(pe, 752973916), 2092322750))), 1836820765), 2092322750) ~= pe then
        table.sort(jh, fn327)
    else
        table.sort(jh, fn327)
    end
    jg_3 = (jg_3 + 3) % 8
until (jg_3 * 3 + 5) % 8 == 0
iK = {}
for k, v in pairs(jn) do
    local insert = table.insert
    local ji_3 = tonumber(v.Cost) or 0
    local jj_2 = tonumber(v.DamageMultiplier) or 1
    jk = tonumber(v.FunnelOrder) or math.huge
    insert(iK, { name = k, cost = ji_3, damage = jj_2, order = jk })
end
ih = nil
local jl_1 = 2
repeat
    local jg_5 = {
        "pzjnqmwcrfb",
        "ouyljsitqc",
        "mxjyu",
        "qedd",
        "snovlyybnagr",
        "okjyb",
        "xsrhoesvr",
        "oibugaqa",
        "covumqywlyqj"
    }
    if jg_5[(jl_1 * 3 + 102) % 9 + 1] < jg_5[(jl_1 * 3 + 102) % 9 + 1] then
        table.sort(ih, fn651)
        iK = {}
    else
        table.sort(iK, fn651)
        ih = {}
    end
    jl_1 = (jl_1 + 0) % 8
until (jl_1 * 3 + 4) % 8 == 2
for k, v in pairs(jo.Floors) do
    local insert = table.insert
    local ji_4 = tonumber(v.Price) or 0
    local Previous = v.Previous
    jk = tonumber(k:match("%d+")) or 0
    insert(ih, { name = k, price = ji_4, previous = Previous, num = jk })
end
iV, iO, il, iG, io, jd, iZ, id, iH, ij, iC, ir, i7, iI, ig, iN, iA, it, jc, iY, iq, i0, iP, i4, ix, i2, iU, je, iR, iQ, iD, iJ, iv, iF, is, iy, iE, ja = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if (((iq or not iq) and 47) or ((iq or false) and false) and ((not iq or iq) and (iq or not iq) and 47)) and not (((iq or not iq) and 47) or ((iq or false) and false) and ((not iq or iq) and (iq or not iq) and 47)) then
    table.sort(jd, fn118)
    iG = { 1, 5, 10 }
    io = { 10, 1, 5 }
    ih = fn607
    iV = fn54
    iO = fn427
else
    table.sort(ih, fn118)
    iV = { 10, 5, 1 }
    iO = { 10, 5, 1 }
    iG = fn607
    io = fn54
    jd = fn427
end
iZ = fn276
ju = "#7fd47f"
jo = "#6ec1ff"
il = "#e8a34d"
jn = "#8b93a3"
id = fn239
iH = fn257
ij = fn357
iC = fn476
ir = fn6
i7 = fn622
iI = fn84
ig = fn343
iN = fn335
iA = fn368
it = fn711
jc = fn157
iY = fn267
iq = fn2
i0 = fn256
iP = function(bG)
    local le
    local ld
    ld = nil
    le = nil
    le = i7()
    if not (le and bG) then
        return false
    end
    ld = nil
    if typeof(bG) == "Vector3" then
        ld = bG
    elseif typeof(bG) == "CFrame" then
        ld = bG.Position
    elseif bG:IsA("Attachment") then
        ld = bG.WorldPosition
    elseif bG:IsA("BasePart") then
        ld = bG.Position
    elseif bG:IsA("Model") then
        ld = bG:GetPivot().Position
    else
        local Parent = bG.Parent
        local lg = Parent and Parent:IsA("BasePart")
        if lg then
            ld = Parent.Position
        else
            local lg_1 = Parent and Parent:IsA("Model")
            if lg_1 then
                ld = Parent:GetPivot().Position
            end
        end
    end
    if not ld then
        return false
    end
    pcall(function()
        le.AssemblyLinearVelocity = Vector3.zero
        le.AssemblyAngularVelocity = Vector3.zero
        le.CFrame = CFrame.new(ld + Vector3.new(0, 3, 0))
    end)
    return true
end
i4 = fn625
ix = fn522
i2 = function(b2)
    local lA_1, lA_2
    if not b2 then
        return false
    end
    local ly = tonumber(b2.HoldDuration) or 0
    local ly_3, ly_4
    local lz = ly
    if lz < 0.05 then
        lz = 0.05
    end
    if fireproximityprompt then
        local ly_1 = pcall(fireproximityprompt, b2, lz)
        if ly_1 then
            return true
        end
        local ly_2 = pcall(fireproximityprompt, b2)
        if ly_2 then
            return true
        elseif getconnections then
            ly_3, lA_1 = pcall(getconnections, b2.Triggered)
            local lB_1 = ly_3 and type(lA_1) == "table"
            if lB_1 then
                for i, v in ipairs(lA_1) do
                    local lI = v
                    pcall(function()
                        if lI.Fire then
                            lI:Fire(iL)
                        elseif type(lI.Function) == "function" then
                            lI.Function(iL)
                        end
                    end)
                end
                return true
            end
            pcall(function()
                b2:InputHoldBegin()
            end)
            task.wait(lz)
            pcall(function()
                b2:InputHoldEnd()
            end)
            return true
        else
            pcall(function()
                b2:InputHoldBegin()
            end)
            task.wait(lz)
            pcall(function()
                b2:InputHoldEnd()
            end)
            return true
        end
    elseif getconnections then
        ly_4, lA_2 = pcall(getconnections, b2.Triggered)
        local lB_2 = ly_4 and type(lA_2) == "table"
        if lB_2 then
            for i, v in ipairs(lA_2) do
                local lI = v
                pcall(function()
                    if lI.Fire then
                        lI:Fire(iL)
                    elseif type(lI.Function) == "function" then
                        lI.Function(iL)
                    end
                end)
            end
            return true
        end
        pcall(function()
            b2:InputHoldBegin()
        end)
        task.wait(lz)
        pcall(function()
            b2:InputHoldEnd()
        end)
        return true
    else
        pcall(function()
            b2:InputHoldBegin()
        end)
        task.wait(lz)
        pcall(function()
            b2:InputHoldEnd()
        end)
        return true
    end
end
iU = fn206
je = fn217
iR = fn496
iQ = fn77
iD = fn661
if (iY or iY) and (iC or it) or (iC and iC or not iC and it) or not ((iY or iY) and (iC or it) or (iC and iC or not iC and it)) then
    iJ = fn595
    iv = fn702
    iF = fn557
    is = fn264
    iy = fn566
else
    iy = fn595
    iJ = fn702
    iv = fn557
    iF = fn264
    is = fn566
end
iE = fn649
ja = fn457
local Window = ip:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = iz, Copyable = true }, "|", jr_1 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local jv = {
    Info = Window:AddTab("Info", "info"),
    Collect = Window:AddTab("Collect", "hand-grab"),
    Auto = Window:AddTab("Auto", "bot"),
    Settings = Window:AddTab("Settings", "settings")
}
jm = fn570
for k, v in jv do
    jm(v)
end
i3, AccountGroup, jk, Label, ik, jj_4 = nil, nil, nil, nil, nil, nil
local ji_5 = 10
repeat
    local jl_3 = (ji_5 * 2 + 1) % 3 + 1
    if jl_3 <= 2 then
        if jl_3 <= 1 then
            local jl_4 = (vector.create((ji_5 * 3 + 2) % 11 + 1, (ji_5 * 5 + 8) % 13 + 1, (ji_5 * 2 + 13) % 17 + 1))
            jm = (vector.create((ji_5 * 5 + 6) % 11 + 1, (ji_5 * 11 + 3) % 13 + 1, (ji_5 * 6 + 3) % 17 + 1))
            jw = (vector.create((ji_5 * 2 + 6) % 5 + 1, (ji_5 * 1 + 4) % 7 + 1, (ji_5 * 3 + 3) % 9 + 1))
            if math.abs((vector.angle(jl_4, jm, jw))) - math.abs((vector.angle(jm, jl_4, jw))) == 2 then
                jk = "Unknown"
                pcall(fn178)
                ju = (nil):AddLeftGroupbox("Account", "circle-user")
                ju:AddLabel(AccountGroup("User", i3.Name, iZ), true)
                ju:AddLabel(AccountGroup("Status", "Keyless", iZ), true)
                ju:AddLabel(AccountGroup("Executor", "Unknown", iZ), true)
                iL = (nil):AddLeftGroupbox("Game Info", "gamepad-2")
                iL:AddLabel(Label(jo .. " [" .. tostring(game.PlaceId) .. "]", jr_1), true)
                iL:AddLabel(AccountGroup("Place ID", tostring(game.PlaceId), jr_1), true)
                jv = iL:AddLabel(AccountGroup("Session time", "0s", jd), true)
            else
                i3 = "Unknown"
                pcall(fn178)
                AccountGroup = jv.Info:AddLeftGroupbox("Account", "circle-user")
                AccountGroup:AddLabel(iZ("User", iL.Name, ju), true)
                AccountGroup:AddLabel(iZ("Status", "Keyless", ju), true)
                AccountGroup:AddLabel(iZ("Executor", i3, ju), true)
                jk = jv.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                jk:AddLabel(jd(jr_1 .. " [" .. tostring(game.PlaceId) .. "]", jo), true)
                jk:AddLabel(iZ("Place ID", tostring(game.PlaceId), jo), true)
                Label = jk:AddLabel(iZ("Session time", "0s", il), true)
            end
            ji_5 = (ji_5 + 14) % 24
        else
            local jl_5 = {
                "wesygsuw",
                "euqlzj",
                "detgnpc",
                "inzqxau",
                "uzgmqrre",
                "crchqvn",
                "osnapkqs",
                "jrul",
                "byriwknza",
                "aaxegt",
                "vekdd",
                "ocwr",
                "yqbghbeucmi",
                "eomtxwwtl",
                "hzewgguana",
                "emolmtgogdmh"
            }
            if jl_5[(ji_5 * 23 + 32) % 16 + 1] <= jl_5[(ji_5 * 23 + 32) % 16 + 1] then
                ik = tostring(game.JobId)
            else
                i3 = tostring(game.JobId)
            end
            ji_5 = (ji_5 + 14) % 24
        end
    else
        local jl_6 = {
            "mvhgmo",
            "snls",
            "kfflywjlkty",
            "mgyx",
            "yspiptg",
            "ckw",
            "prp",
            "spwndy",
            "swfvwz",
            "immjnde",
            "fjkpaeb",
            "ily"
        }
        local o7 = ji_5
        jm = jl_6[o7 % 12 + 1]
        if jm:len() >= jm:gsub("(.)", "%1%1", o7 % 3 % 2 + 1):len() then
            ik = #jj_4 > 18
        else
            jj_4 = #ik > 18
        end
        ji_5 = (ji_5 + 8) % 24
    end
until (ji_5 * 23 + 5) % 24 == 7
if jj_4 then
    local jg_8 = 5
    repeat
        local ji_6 = (vector.create((jg_8 * 3 + 1) % 11 + 1, (jg_8 * 8 + 7) % 13 + 1, (jg_8 * 1 + 4) % 17 + 1))
        local jl_7 = (vector.create((jg_8 * 2 + 1) % 11 + 1, (jg_8 * 7 + 2) % 13 + 1, (jg_8 * 4 + 7) % 17 + 1))
        local pz = vector.dot(ji_6, jl_7)
        if pz * pz >= vector.dot(ji_6, ji_6) * vector.dot(jl_7, jl_7) + 1 then
            ik = string.sub(jj_4, 1, 18) .. "..."
        else
            jj_4 = string.sub(ik, 1, 18) .. "..."
        end
        jg_8 = (jg_8 + 1) % 8
    until (jg_8 * 5 + 1) % 8 == 7
end
local jg_9 = jj_4 or ik
iW, jb, i5, connection, connection2, iB = nil, nil, nil, nil, nil, nil
jk:AddLabel(iZ("Server", jg_9, jn), true)
jk:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
iW = os.clock()
task.spawn(worker)
local ScriptsGroup = jv.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(jd("Included in this hub", jn), true)
ScriptsGroup:AddLabel(jd(jr_1, jo), true)
local FeaturesGroup = jv.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(jd("Brainrot Collect", jo), true)
FeaturesGroup:AddLabel(jd("Base Return", il), true)
FeaturesGroup:AddLabel(jd("Shop Automation", ju), true)
FeaturesGroup:AddLabel(jd("Base Automation", jn), true)
local SocialsGroup = jv.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = io })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = jv.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = io })
local FaqGroup = jv.Info:AddRightGroupbox("FAQ", "circle-help")
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
local CollectGroup = jv.Collect:AddLeftGroupbox("Collect", "hand-grab")
CollectGroup:AddToggle("AutoCollectBrainrot", { Text = "Auto Collect Brainrot", Default = false })
CollectGroup:AddToggle("AutoBackToBase", { Text = "Auto Go Back to Base", Default = true })
CollectGroup:AddDropdown("CollectAreas", { Text = "Areas", Values = jh, Multi = true, AllowNull = true, Searchable = true, Default = {} })
CollectGroup:AddSlider("ActionDelay", { Text = "Action delay", Default = 0.35, Min = 0.1, Max = 5, Rounding = 2, Suffix = "s" })
CollectGroup:AddButton({ Text = "Return to Base", Func = onReturnToBase })
local FiltersGroup = jv.Collect:AddRightGroupbox("Filters", "filter")
FiltersGroup:AddDropdown("CollectRarities", { Text = "Rarities", Values = js, Multi = true, AllowNull = true, Searchable = true, Default = {} })
FiltersGroup:AddDropdown("CollectMutations", { Text = "Mutations", Values = jf, Multi = true, AllowNull = true, Searchable = true, Default = {} })
local BaseGroup = jv.Auto:AddLeftGroupbox("Base", "house")
BaseGroup:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
BaseGroup:AddToggle("AutoUpgradeBrainrots", { Text = "Auto Upgrade Brainrots", Default = false })
BaseGroup:AddToggle("AutoBuyFloors", { Text = "Auto Buy Floors", Default = false })
jw = jv.Auto:AddRightGroupbox("Shop", "shopping-cart")
jw:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
jw:AddToggle("AutoBuyPower", { Text = "Auto Buy Power Upgrades", Default = false })
jw:AddToggle("AutoBuySpeed", { Text = "Auto Buy Speed Upgrades", Default = false })
jw:AddToggle("AutoBuyTools", { Text = "Auto Buy Tools", Default = false })
jm = jv.Settings:AddLeftGroupbox("Menu", "menu")
jm:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
ip.ToggleKeybind = Options.MenuKeybind
jm:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
jm:AddButton({ Text = "Unload", Func = onUnload })
jq_2:SetLibrary(ip)
jq_2:SetFolder("OuroborosHub")
jq_2:SaveDefault("Monochrome")
jq_2:ApplyToTab(jv.Settings)
jq_2:LoadDefault()
jp:SetLibrary(ip)
jp:IgnoreThemeSettings()
jp:SetIgnoreIndexes({ "MenuKeybind" })
jp:SetFolder("OuroborosHub/break-tape-for-brainrots")
jp:BuildConfigSection(jv.Settings)
jp:LoadAutoloadConfig()
jb = tick()
i5 = tick()
pcall(function()
    for i, v in ipairs(getconnections(iL.Idled)) do
        local oe = v
        pcall(function()
            oe:Disable()
        end)
    end
end)
iB = fn699
connection = jt.InputBegan:Connect(onInputBegan)
connection2 = jt.InputChanged:Connect(onInputChanged)
ip:OnUnload(fn681)
task.spawn(worker2)
task.spawn(function()
    local ox = false
    repeat
        local oq
        if not ip.Unloaded then
            oq = false
            pcall(function()
                oq = ja() == true
            end)
            if oq then
                local ou = tonumber(iH("ActionDelay", 0.35)) or 0.35
                task.wait(ou)
            else
                task.wait(0.2)
            end
        else
            ox = true
        end
    until ox
end)
task.spawn(worker3)
ip:Notify(jr_1 .. " loaded")
