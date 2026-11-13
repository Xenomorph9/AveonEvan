local l2
local k2
local Toggles
local lH
local lN
local l8
local lQ
local lu
local lb
local le
local lW
local lh
local lZ
local kZ
local SPECIAL_PRICES
local l1
local k1
local lk
local PackData
local k4
local lq
local Library
local lJ
local SellConfig
local lt
local LocalPlayer
local lz
local lV
local Options
local kY
local lF
local l0
local lm
local lj
local lI
local k3
local l6
local l3
local k6
local lO
local k9
local lc
local lU
local lf
local lX
local kX
local lE
local l_
local k_
local Workspace
local function fn6()
    lz(k3, "Copied Discord invite to clipboard")
end
local function fn50(fJ)
    if fJ == "buy" then
        if not Toggles.AutoBuyPacks.Value then
            return nil
        end
        local qx_1 = k_()
        if qx_1 == "prompt" then
            return 0.7
        end
        return nil
    elseif fJ == "place" then
        local qx_2 = Toggles.AutoPlacePacks.Value and LocalPlayer:GetAttribute("HoldingPack") and lH()
        if qx_2 then
            local qx_3 = k2()
            if qx_3 then
                k4(qx_3.CFrame)
            end
            return 0.55
        end
        return nil
    elseif fJ == "open" then
        local qx_4 = Toggles.AutoOpenPacks.Value and lJ()
        if qx_4 then
            return 0.8
        end
        return nil
    elseif fJ == "collect" then
        local qx_5 = Toggles.AutoCollectMoney.Value and lf()
        if qx_5 then
            return 0.7
        end
        return nil
    elseif fJ == "dropLetters" then
        local qx_6 = Toggles.AutoDropOff.Value and lI("Letters")
        if qx_6 then
            return 1
        end
        return nil
    elseif fJ == "dropSymbols" then
        local qx_7 = Toggles.AutoDropOff.Value and lI("Symbols")
        if qx_7 then
            return 1
        end
        return nil
    elseif fJ == "dropWords" then
        local qx_8 = Toggles.AutoDropOff.Value and lI("Words")
        if qx_8 then
            return 1
        end
        return nil
    else
        return nil
    end
end
local function fn120(as)
    local DiscordGroup = as:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = lc })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = lc })
end
local function fn148(dV)
    local WordBoard = dV:FindFirstChild("WordBoard")
    local pP = WordBoard and WordBoard:FindFirstChild("Pad")
    return pP
end
local function fn151(bs)
    local nE = k2()
    local nF = nE and bs and bs:IsA("BasePart")
    if not nF then
        return false
    end
    nE.CFrame = bs.CFrame * CFrame.new(0, 3, 0)
    nE.AssemblyLinearVelocity = Vector3.zero
    l1.stayPart = bs
    l1.stayCFrame = nil
    if firetouchinterest then
        pcall(firetouchinterest, nE, bs, 0)
        pcall(firetouchinterest, bs, nE, 0)
        kZ.held = true
        kZ.part = bs
    end
    return true
end
local function fn154(a9)
    local nw = SellConfig.SYMBOL_KEYS[a9]
    if nw then
        local nx = tonumber(LocalPlayer:GetAttribute("Symbol_" .. nw)) or 0
        return nx
    end
    local nw_1 = tonumber(LocalPlayer:GetAttribute("Letter_" .. a9)) or 0
    return nw_1
end
local function fn179()
    local qE
    local qC = #le
    local qI = 1
    while true do
        if qI <= qC then
            local qD = l1.index % qC + 1
            l1.index = qD
            lm()
            qE = l6(le[qD].id)
            if qE then
                break
            end
            qI += 1
            continue
        end
        lm()
        return
    end
    k9(qE)
    return
end
local function fn221()
    local og = lF("PackList")
    for k, v in lb do
        if og[v] then
            local oh = kX[v]
            local oi = oh and lE(oh)
            if oi then
                local oi_1 = lZ(oh)
                if oi_1 then
                    lN(oi_1)
                    return "prompt"
                end
            end
        end
    end
    return nil
end
local function fn233(d_)
    local pR = lF("DropOffList")
    if not pR[d_] then
        return false
    end
    local pR_1 = k6()
    local pS = lQ[d_]
    local pT = pR_1 and pS and pS(pR_1)
    if not pT then
        return false
    end
    return l_(pT)
end
local function fn303(bG)
    if not (bG and fireproximityprompt) then
        return false
    end
    local nT_1 = k2()
    local Parent = bG.Parent
    local nV
    if Parent then
        if Parent:IsA("BasePart") then
            nV = Parent.Position
        else
            nV = Parent:GetPivot().Position
        end
    end
    if nT_1 and nV then
        local nU_2 = CFrame.new(nV + Vector3.new(0, 3, 0))
        nT_1.CFrame = nU_2
        nT_1.AssemblyLinearVelocity = Vector3.zero
        k4(nU_2)
    end
    return pcall(fireproximityprompt, bG)
end
local function fn322(fG)
    l1.busyUntil = os.clock() + fG
end
local function fn358()
    local attr = LocalPlayer:GetAttribute("AssignedBase")
    local Bases = Workspace:FindFirstChild("Bases")
    local nb = attr and Bases and Bases:FindFirstChild(attr)
    return nb
end
local function fn387()
    local pz = tonumber(LocalPlayer:GetAttribute("IncomeAccrued")) or 0
    if pz < 1 then
        return false
    end
    local pz_1 = k6()
    local pA_1 = pz_1 and pz_1:FindFirstChild("CollectPad")
    local pz_2 = pA_1
    if pA_1 then
        pA_1 = pz_2:FindFirstChild("CollectPad")
    end
    local pz_3 = pA_1
    if pz_3 then
        l_(pz_3)
        return true
    end
    return false
end
local function fn395()
    local nN = k2()
    if l1.stayPart and l1.stayPart.Parent then
        l_(l1.stayPart)
    else
        if nN and l1.stayCFrame then
            nN.CFrame = l1.stayCFrame
            nN.AssemblyLinearVelocity = Vector3.zero
        end
    end
end
local function fn436()
    local nz = k2()
    local part = kZ.part
    if kZ.held and firetouchinterest and nz and part then
        pcall(firetouchinterest, nz, part, 1)
        pcall(firetouchinterest, part, nz, 1)
    end
    kZ.held = false
    kZ.part = nil
end
local function fn467(cJ, cK)
    for k, v in cK do
        local oM = cJ - v
        if oM.X * oM.X + oM.Z * oM.Z < 36 then
            return false
        end
    end
    return true
end
local function fn474(aU)
    local nj = Options[aU]
    local nk = nj and nj.Value
    local nj_1 = {}
    if type(nk) ~= "table" then
        return nj_1
    end
    for k, v in nk do
        if v then
            nj_1[k] = true
        end
    end
    return nj_1
end
local function fn507()
    local Money = LocalPlayer:FindFirstChild("Money")
    local m1 = Money and tonumber(Money.Value)
    return m1 or 0
end
local function fn532()
    local oU, oV, oW, oX, oY, oZ, o_, o4, o5, o6, o9, pa, pe, pf
    local o0 = 21
    while true do
        local o0_1 = 12504 - o0
        do
            if o0_1 < 12486 then
                if o0_1 < 12475 then
                    if o0_1 < 12471 then
                        if o0_1 < 12467 then
                            if o0_1 < 12466 then
                                if o0_1 < 6581 then
                                    break
                                elseif o0_1 < 12463 then
                                    break
                                elseif o0_1 < 12464 then
                                    if o0_1 == 12463 then
                                        o5 = 2329 * o6 + 1354 * (1 - o6)
                                        o0 = 17
                                    else
                                        o0 = 12502
                                        continue
                                    end
                                elseif o0_1 < 12465 then
                                    if o0_1 == 12464 then
                                        oV = oU:GetPivot()
                                        oW = l3()
                                        oX = RaycastParams.new()
                                        oX.FilterType = Enum.RaycastFilterType.Exclude
                                        oY = { LocalPlayer.Character }
                                        oZ = Workspace:FindFirstChild("ConveyorPacks")
                                        o6 = if oZ then 1 else 0
                                        o4 = 482 * o6 + 1659 * (1 - o6)
                                        o0 = 41
                                    else
                                        o0 = 1646
                                        continue
                                    end
                                elseif o0_1 == 12465 then
                                    oU = -24
                                    pe = oU
                                    o0 = 30
                                else
                                    o0 = 12466
                                    continue
                                end
                            elseif o0_1 == 12466 then
                                oU = o_
                                o0 = if oU then 26 else 14
                            else
                                o0 = 12477
                                continue
                            end
                        elseif o0_1 < 12470 then
                            if o0_1 < 12468 then
                                if o0_1 == 12467 then
                                    o0 = if o9 <= 24 then 33 else 25
                                else
                                    o0 = 6700
                                    continue
                                end
                            elseif o0_1 < 12469 then
                                oZ = Workspace:FindFirstChild("PlacedPacks")
                                o0 = if oZ then 15 else 16
                            else
                                o0 = if oU then 34 else 9
                            end
                        else
                            oU = oZ.Normal.Y > 0.7
                            o0 = 9
                        end
                    elseif o0_1 < 12474 then
                        if o0_1 < 12473 then
                            if o0_1 < 12472 then
                                pa = o9
                                o0 = 39
                            else
                                o0 = if oU then 11 else 6
                            end
                        else
                            local oU_1 = oV * Vector3.new(pa, 20, pf)
                            oZ = Workspace:Raycast(oU_1, Vector3.new(0, -40, 0), oX)
                            oU = oZ
                            o0 = if oU then 19 else 35
                        end
                    else
                        o0 = if pe <= 24 then 3 else 22
                    end
                elseif o0_1 < 12479 then
                    if o0_1 < 12477 then
                        if o0_1 < 12476 then
                            oU = oZ.Position.Y < 4
                            o0 = 32
                        else
                            oU = oY
                            o_ = true
                            o0 = if oU then 7 else 10
                        end
                    elseif o0_1 < 12478 then
                        if o0_1 == 12477 then
                            o0 = 0
                        else
                            o0 = 6581
                            continue
                        end
                    else
                        oU = lh(oZ.Position, oW)
                        o0 = 14
                    end
                elseif o0_1 < 12485 then
                    if o0_1 < 12482 then
                        if o0_1 < 12480 then
                            if o0_1 == 12479 then
                                return nil
                            end
                            o0 = 12474
                            continue
                        elseif o0_1 < 12481 then
                            return nil
                        elseif o0_1 == 12481 then
                            o0 = if not oW then 24 else 40
                        else
                            o0 = 12468
                            continue
                        end
                    elseif o0_1 < 12483 then
                        o0 = 1
                    elseif o0_1 < 12484 then
                        if o0_1 == 12483 then
                            oU = k6()
                            oV = k2()
                            oW = oU
                            local o3 = if oW then 1 else 0
                            local o1 = 427 * o3 + 878 * (1 - o3)
                            local o2 = 2305 * o3 + 3158 * (1 - o3)
                            o0 = if (o1 * 179 + o2 * 98 + o1 * o2) % 16777213 == 1286558 then 5 else 23
                        else
                            o0 = 12498
                            continue
                        end
                    else
                        return oZ.Position
                    end
                elseif o0_1 == 12485 then
                    oU = oZ.Instance.Anchored
                    o0 = 35
                else
                    o0 = 12476
                    continue
                end
            elseif o0_1 < 12497 then
                if o0_1 < 12494 then
                    if o0_1 < 12491 then
                        if o0_1 < 12489 then
                            if o0_1 < 12487 then
                                if o0_1 == 12486 then
                                    o0 = if o_ then 28 else 0
                                else
                                    o0 = 12496
                                    continue
                                end
                            elseif o0_1 < 12488 then
                                if o0_1 == 12487 then
                                    o0 = if (o4 * 379 + o5 * 3032 + o4 * o5) % 16777213 == 8366784 then 13 else 36
                                else
                                    o0 = 4309
                                    continue
                                end
                            elseif o0_1 == 12488 then
                                oX.FilterDescendantsInstances = oY
                                oY = oU:FindFirstChild("Conveyer")
                                oU = -24
                                o9 = oU
                                o0 = 37
                            else
                                o0 = 12491
                                continue
                            end
                        elseif o0_1 < 12490 then
                            oY[#oY + 1] = oZ
                            o0 = 16
                        elseif o0_1 == 12490 then
                            o0 = if oU then 20 else 27
                        else
                            o0 = 1646
                            continue
                        end
                    elseif o0_1 < 12492 then
                        if o0_1 == 12491 then
                            oY[#oY + 1] = oZ
                            o0 = 36
                        else
                            o0 = 5183
                            continue
                        end
                    elseif o0_1 < 12493 then
                        break
                    else
                        oU = oV:PointToObjectSpace(oZ.Position)
                        o_ = math.abs(oU.X) <= 34
                        o0 = if o_ then 8 else 18
                    end
                elseif o0_1 < 12496 then
                    if o0_1 < 12495 then
                        o0 = if oU then 2 else 38
                    else
                        o0 = if oU then 29 else 32
                    end
                elseif o0_1 == 12496 then
                    o_ = math.abs(oU.Z) <= 52
                    o0 = 18
                else
                    o0 = 12474
                    continue
                end
            elseif o0_1 < 12502 then
                if o0_1 < 12499 then
                    if o0_1 < 12498 then
                        oU = oY:IsA("BasePart")
                        o0 = 10
                    elseif o0_1 == 12498 then
                        o0 = 4
                    else
                        o0 = 10577
                        continue
                    end
                elseif o0_1 < 12501 then
                    if o0_1 < 12500 then
                        if o0_1 == 12499 then
                            oW = oV
                            o0 = 23
                        else
                            o0 = 12502
                            continue
                        end
                    elseif o0_1 == 12500 then
                        pe += 8
                        o0 = 30
                    else
                        o0 = 12473
                        continue
                    end
                elseif o0_1 == 12501 then
                    pf = pe
                    o0 = 31
                else
                    o0 = 12467
                    continue
                end
            elseif o0_1 < 12504 then
                if o0_1 < 12503 then
                    oU = oZ.Position - oY.Position
                    o_ = oU.X * oU.X + oU.Z * oU.Z > 64
                    o0 = 38
                else
                    o9 += 8
                    o0 = 37
                end
            elseif o0_1 == 12504 then
                o0 = 6
            else
                o0 = 12467
                continue
            end
        end
    end
end
local function fn549(bU)
    local n__1
    local nZ_1
    n__1, nZ_1 = k1(bU)
    if type(n__1) ~= "number" then
        return false
    elseif nZ_1 == "Diamonds" then
        local nZ_2 = lu() - n__1
        local n1_1 = Options.KeepDiamonds and Options.KeepDiamonds.Value
        local n5 = if n1_1 then 1 else 0
        local n3 = 4069 * n5 + 2424 * (1 - n5)
        local n4 = 376 * n5 + 1824 * (1 - n5)
        if not ((n3 * 3383 + n4 * 161 + n3 * n4) % 16777213 == 15355907) then
            n1_1 = 0
        end
        return nZ_2 >= n1_1
    else
        local nZ_3 = lO() - n__1
        return nZ_3 >= (Options.KeepMoney and Options.KeepMoney.Value or 0)
    end
end
local function fn580(bP)
    local nX = SPECIAL_PRICES[bP]
    if nX then
        return nX, "Diamonds"
    end
    return PackData.PRICES[bP], "Money"
end
local function fn586(dS)
    local SymbolDropOff = dS:FindFirstChild("SymbolDropOff")
    local pM = SymbolDropOff and SymbolDropOff:FindFirstChild("DropOff")
    return pM
end
local function fn600()
    local Character = LocalPlayer.Character
    local mQ = Character and Character:FindFirstChildOfClass("Humanoid")
    return mQ
end
local function fn610(ah, ai, aj)
    return string.format("<b>%s</b> %s %s", ah, kY("-", "#5a6070"), kY(ai, aj))
end
local function fn655(X, Y)
    if setclipboard then
        setclipboard(X)
    elseif toclipboard then
        toclipboard(X)
    end
    Library:Notify(Y)
end
local function fn665(bp)
    l1.stayPart = nil
    l1.stayCFrame = bp
end
local function fn668()
    lW()
    l1.stayPart = nil
    l1.stayCFrame = nil
end
local function fn669(b3)
    local ConveyorPacks = Workspace:FindFirstChild("ConveyorPacks")
    local attr = LocalPlayer:GetAttribute("AssignedBase")
    if not (ConveyorPacks and attr) then
        return nil
    end
    for i, child in ConveyorPacks:GetChildren() do
        local n6_1 = child.Name == b3 and child:GetAttribute("BaseName") == attr
        if n6_1 then
            local BuyPrompt = child:FindFirstChild("BuyPrompt", true)
            local n8_1 = BuyPrompt and BuyPrompt:IsA("ProximityPrompt") and BuyPrompt.Enabled
            if n8_1 then
                return BuyPrompt
            end
        end
    end
    return nil
end
local function fn671()
    local Diamonds = LocalPlayer:FindFirstChild("Diamonds")
    local m4 = Diamonds and tonumber(Diamonds.Value)
    return m4 or 0
end
local function autoSellLoop()
    while not Library.Unloaded do
        if os.clock() < l1.busyUntil then
            lk()
        else
            pcall(lt)
        end
        if Toggles.AutoSell.Value then
            pcall(lj)
        end
        if Toggles.AutoBuyUpgrades.Value then
            pcall(lU)
        end
        if Toggles.AutoBuyShop.Value then
            pcall(l8)
        end
        task.wait(0.15)
    end
end
local function fn703(dP)
    local DropOff = dP:FindFirstChild("DropOff")
    local pG = DropOff and DropOff:FindFirstChild("DropOff")
    return pG
end
local function fn734(ae, af)
    return string.format('<font color="%s">%s</font>', af, ae)
end
local function fn795()
    lm()
    lX(false)
    if l2 then
        l2:Disconnect()
    end
    if lV then
        lV:Disconnect()
    end
    local sr = lq()
    if sr then
        sr.PlatformStand = false
        sr.WalkSpeed = 16
    end
end
local function fn802(a2, a3)
    local nt = l0[a3]
    local nu = nt ~= nil and lF(a2)[nt] == true
    return nu
end
local function fn814()
    local oC = {}
    local UserId = LocalPlayer.UserId
    local PlacedPacks = Workspace:FindFirstChild("PlacedPacks")
    if not PlacedPacks then
        return oC
    end
    for i, child in PlacedPacks:GetChildren() do
        if child:GetAttribute("OwnerUserId") == UserId then
            oC[#oC + 1] = child:GetPivot().Position
        end
    end
    return oC
end
local function fn862()
    local Character = LocalPlayer.Character
    local mW = Character and Character:FindFirstChild("HumanoidRootPart")
    return mW
end
kX = nil
kY = nil
kZ = nil
k_ = nil
k1 = nil
k2 = nil
k3 = nil
k4 = nil
k6 = nil
k9 = nil
lb = nil
lc = nil
LocalPlayer = nil
le = nil
lf = nil
lh = nil
lj = nil
lk = nil
Workspace = nil
lm = nil
lq = nil
lt = nil
lu = nil
lz = nil
Options = nil
lE = nil
lF = nil
SPECIAL_PRICES = nil
lH = nil
lI = nil
lJ = nil
local k0, k5, k7, k8, la, lg, SellLetters, ln, BuySpecialPack, lp, CoreGui, ls, BuyUpgrade, GuiService, lx, ClaimLetter, HttpService, PlacePack, VirtualUser
Toggles = nil
lN = nil
lO = nil
SellConfig = nil
lQ = nil
lU = nil
lV = nil
lW = nil
lX = nil
lZ = nil
l_ = nil
l0 = nil
l1 = nil
l2 = nil
l3 = nil
PackData = nil
l6 = nil
Library = nil
l8 = nil
local UserInputService, lM, SaveManager, lS, RunService, UpgradeData, l5, l9
local mc_1
RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, LocalPlayer, k8, k3, k0, PackData, UpgradeData, SellConfig, mc_1, PlacePack, ClaimLetter, BuyUpgrade, BuySpecialPack, SellLetters, lb, k7, kX, l0 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
if (ReplicatedStorage and not mc_1 or mc_1 and not Workspace) and (VirtualUser or not PackData or (VirtualUser or not PackData)) and not ((ReplicatedStorage and not mc_1 or mc_1 and not Workspace) and (VirtualUser or not PackData or (VirtualUser or not PackData))) then
    k3 = "Collect The Alphabet"
    k8 = "https://discord.gg/ehKVq7pf7v"
else
    k8 = "Collect The Alphabet"
    k3 = "https://discord.gg/ehKVq7pf7v"
end
k0 = "https://rscripts.net/@Ouroboros"
PackData = require(ReplicatedStorage:WaitForChild("PackData"))
UpgradeData = require(ReplicatedStorage:WaitForChild("UpgradeData"))
SellConfig = require(ReplicatedStorage:WaitForChild("SellConfig"))
local PackRemotes = ReplicatedStorage:WaitForChild("PackRemotes")
PlacePack = PackRemotes:WaitForChild("PlacePack")
ClaimLetter = PackRemotes:WaitForChild("ClaimLetter")
BuyUpgrade = ReplicatedStorage:WaitForChild("UpgradeRemotes"):WaitForChild("BuyUpgrade")
BuySpecialPack = ReplicatedStorage:WaitForChild("SpecialShopRemotes"):WaitForChild("BuySpecialPack")
SellLetters = ReplicatedStorage:WaitForChild("SellRemotes"):WaitForChild("SellLetters")
lb = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic" }
k7 = { "Common Special", "Rare Special", "Legendary Special" }
local me = {
    "Common",
    "Uncommon",
    "Rare",
    "Epic",
    "Legendary",
    "Mythic",
    "Common Special",
    "Rare Special",
    "Legendary Special"
}
kX = {
    Common = "CommonPack",
    Uncommon = "UncommonPack",
    Rare = "RarePack",
    Epic = "EpicPack",
    Legendary = "LegendaryPack",
    Mythic = "MythicPack",
    ["Common Special"] = "CommonSpecialPack",
    ["Rare Special"] = "RareSpecialPack",
    ["Legendary Special"] = "LegendarySpecialPack"
}
l0 = {}
for k, v in kX do
    l0[v] = k
end
SPECIAL_PRICES, lx, ls = nil, nil, nil
SPECIAL_PRICES = PackData.SPECIAL_PRICES
local mb = { "Letters", "Symbols", "Words" }
lx = { "Rarity", "Time", "Money" }
ls = {}
local mB = 65
while mB <= 90 do
    local mC = mB
    ls[#ls + 1] = string.char(mC)
    mB += 1
end
local mc_3 = nil
local ma_1 = 3
repeat
    local tI = bit32.rrotate(bit32.bxor(bit32.lrotate(ma_1, 7), string.byte(tostring(mc_3))), 20)
    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(tI, 2435531357), 2921752244), (bit32.bxor(bit32.band(tI, 1859435938), 22580148))), 2921752244), 22580148) == tI then
        mc_3 = { "+", "-", "%", "!", "?", "$", "&", "#", "@" }
    else
        mc_3 = { "$", "-", "&", "!", "#", "?", "+", "@", "%" }
    end
    ma_1 = (ma_1 + 2) % 4
until (ma_1 * 3 + 2) % 4 == 1
for k, v in mc_3 do
    ls[#ls + 1] = v
end
Library, SaveManager, Toggles, Options, ln, lg, la, k5, l9, lz, lc, kY, lM = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
lz = fn655
lc = fn6
kY = fn734
lM = fn610
ln = "#7fd47f"
lg = "#6ec1ff"
la = "#e8a34d"
k5 = "#8b93a3"
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = k3, Copyable = true }, "|", k8 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
l9 = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gamepad-2"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in l9 do
    fn120(v)
end
kZ, l1, lQ, le, lX, l2, lV, lq, k2, lO, lu, k6, lF, l5, lp, lW, lm, k4, l_, lk, lN, k1, lE, lZ, k_, l8, l3, lh, lS, lH, lJ, lf, lI, lU, lj, k9, l6, lt = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
lq = fn600
k2 = fn862
lO = fn507
lu = fn671
k6 = fn358
lF = fn474
l5 = fn802
lp = fn154
kZ = { part = nil, held = false }
l1 = { index = 0, busyUntil = 0, stayPart = nil, stayCFrame = nil }
lW = fn436
lm = fn668
k4 = fn665
l_ = fn151
lk = fn395
lN = fn303
k1 = fn580
lE = fn549
lZ = fn669
k_ = fn221
l8 = function()
    local ot = lF("ShopList")
    for k, v in k7 do
        if ot[v] then
            local oq = kX[v]
            local ou = oq and lE(oq)
            if ou then
                pcall(function()
                    BuySpecialPack:FireServer(oq)
                end)
                return true
            end
        end
    end
    return false
end
l3 = fn814
lh = fn467
lS = fn532
lH = function()
    local ph
    local attr = LocalPlayer:GetAttribute("HoldingPack")
    local pj = not attr or not l5("PlaceList", attr)
    if pj then
        return false
    end
    ph = lS()
    if not ph then
        return false
    end
    local pi_1 = k2()
    if pi_1 then
        pi_1.CFrame = CFrame.new(ph + Vector3.new(0, 4, 0))
        pi_1.AssemblyLinearVelocity = Vector3.zero
    end
    pcall(function()
        PlacePack:FireServer(ph)
    end)
    return true
end
lJ = function()
    local PlacedPacks = Workspace:FindFirstChild("PlacedPacks")
    if not PlacedPacks then
        return false
    end
    local pp = Workspace:GetServerTimeNow()
    local UserId = LocalPlayer.UserId
    for i, child in PlacedPacks:GetChildren() do
        local py = child
        if py:GetAttribute("OwnerUserId") == UserId then
            local po_1 = string.match(py.Name, "^Placed_(.+)$") or py.Name
            if not not l5("OpenList", po_1) then
                local po_2 = tonumber(py:GetAttribute("ReadyAtClock")) or 0
                if pp >= po_2 then
                    local OpenPrompt = py:FindFirstChild("OpenPrompt", true)
                    local pr_2 = OpenPrompt and OpenPrompt:IsA("ProximityPrompt")
                    if pr_2 then
                        lN(OpenPrompt)
                        pcall(function()
                            ClaimLetter:FireServer(py)
                        end)
                        return true
                    end
                end
            end
        end
    end
    return false
end
lf = fn387
lQ = { Letters = fn703, Symbols = fn586, Words = fn148 }
lI = fn233
lU = function()
    local pY_1
    local pV = lF("UpgradeList")
    for k, v in lx do
        local p5 = v
        if pV[p5] then
            local pW = tonumber(LocalPlayer:GetAttribute("Upg" .. p5)) or 0
            if pW < UpgradeData.maxLevel(p5) then
                local pW_1 = UpgradeData.costFor(p5, pW)
                local pX_1 = UpgradeData.currencyOf(p5)
                if pX_1 == "Diamonds" then
                    local pX_2 = lu()
                    local pZ_1 = tonumber(pW_1) or math.huge
                    pY_1 = pX_2 >= pZ_1
                else
                    local pX_3 = lO()
                    local pZ_2 = tonumber(pW_1) or math.huge
                    pY_1 = pX_3 >= pZ_2
                end
                if pY_1 then
                    pcall(function()
                        BuyUpgrade:FireServer(p5)
                    end)
                    return
                end
            end
        end
    end
end
lj = function()
    local p6 = lF("SellList")
    local p8 = Options.SellKeepAmount and Options.SellKeepAmount.Value or 0
    for k, v in ls do
        local qf = v
        local p8_1 = p6[qf] and lp(qf) > p8
        if p8_1 then
            pcall(function()
                SellLetters:FireServer(qf, 1)
            end)
            return
        end
    end
end
local function md_1()
    local qp
    qp = nil
    local qo, Label, qr, qs
    qp = "Unknown"
    pcall(function()
        local qh_1
        local qg_1
        if identifyexecutor then
            qh_1, qg_1 = identifyexecutor()
            local qi = qh_1 ~= ""
            local qj = type(qh_1) == "string" and qi
            if qj then
                local qi_1 = type(qg_1) == "string" and qg_1 ~= "" and qh_1 .. " " .. qg_1
                qp = qi_1 or qh_1
            end
        end
    end)
    local AccountGroup = l9.Info:AddLeftGroupbox("Account", "circle-user")
    AccountGroup:AddLabel(lM("User", LocalPlayer.Name, ln), true)
    AccountGroup:AddLabel(lM("Status", "Keyless", ln), true)
    AccountGroup:AddLabel(lM("Executor", qp, ln), true)
    local GameInfoGroup = l9.Info:AddLeftGroupbox("Game Info", "gamepad-2")
    GameInfoGroup:AddLabel(kY(k8 .. " [" .. tostring(game.PlaceId) .. "]", lg), true)
    GameInfoGroup:AddLabel(lM("Place ID", tostring(game.PlaceId), lg), true)
    Label = GameInfoGroup:AddLabel(lM("Session time", "0s", la), true)
    qs = tostring(game.JobId)
    local qu = #qs > 18 and string.sub(qs, 1, 18) .. "..."
    local qu_1 = qu or qs
    GameInfoGroup:AddLabel(lM("Server", qu_1, k5), true)
    GameInfoGroup:AddButton({
        Text = "Copy join script (Job ID)",
        Func = function()
            local e0 = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, qs)
            lz(e0, "Copied join script to clipboard")
        end
    })
    qr = os.clock()
    task.spawn(function()
        local qm_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            local ql = math.floor(os.clock() - qr)
            if ql < 60 then
                qm_1 = ql .. "s"
            elseif ql < 3600 then
                qm_1 = string.format("%dm %ds", ql // 60, ql % 60)
            else
                qm_1 = string.format("%dh %dm", ql // 3600, ql % 3600 // 60)
            end
            Label:SetText(lM("Session time", qm_1, la))
        end
    end)
    local ScriptsGroup = l9.Info:AddRightGroupbox("Scripts", "package")
    ScriptsGroup:AddLabel(kY("Included in this hub", k5), true)
    ScriptsGroup:AddLabel(kY(k8, lg), true)
    local FeaturesGroup = l9.Info:AddRightGroupbox("Features", "list")
    FeaturesGroup:AddLabel(kY("Automation", lg), true)
    FeaturesGroup:AddLabel(kY("Misc Utilities", k5), true)
    local SocialsGroup = l9.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = lc })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            lz(k0, "Copied Rscripts profile to clipboard")
        end
    })
    local OuroborosHubGroup = l9.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
    OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = lc })
    qo = {
        [1] = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w",
        [2] = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99",
        [3] = "0xaE95A405D007a6F858E5d35714111B075fEFb40a",
        [4] = "0xaE95A405D007a6F858E5d35714111B075fEFb40a",
        [5] = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp",
        [6] = "https://paypal.me/TheTruckerGOD",
        [7] = "https://venmo.com/u/miserablemusic"
    }
    local DonationsGroup = l9.Info:AddRightGroupbox("Donations", "heart")
    DonationsGroup:AddLabel(kY("All donations are optional but appreciated.", la), true)
    DonationsGroup:AddLabel(kY("If you donate you get a special role, just PING after you donate.", ln), true)
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(kY("LTC / Litecoin", "#345d9d"), true)
    DonationsGroup:AddButton({
        Text = "Copy Litecoin Address",
        Func = function()
            lz(qo[1], "Copied Litecoin address")
        end
    })
    DonationsGroup:AddLabel(kY("BTC / Bitcoin", "#f7931a"), true)
    DonationsGroup:AddButton({
        Text = "Copy Bitcoin Address",
        Func = function()
            lz(qo[2], "Copied Bitcoin address")
        end
    })
    DonationsGroup:AddLabel(kY("ETH / Ethereum", "#627eea"), true)
    DonationsGroup:AddButton({
        Text = "Copy Ethereum Address",
        Func = function()
            lz(qo[3], "Copied Ethereum address")
        end
    })
    DonationsGroup:AddLabel(kY("USDT", "#26a17b"), true)
    DonationsGroup:AddButton({
        Text = "Copy USDT Address",
        Func = function()
            lz(qo[4], "Copied USDT address")
        end
    })
    DonationsGroup:AddLabel(kY("Solana", "#14f195"), true)
    DonationsGroup:AddButton({
        Text = "Copy Solana Address",
        Func = function()
            lz(qo[5], "Copied Solana address")
        end
    })
    DonationsGroup:AddLabel(kY("PayPal", "#0070ba"), true)
    DonationsGroup:AddButton({
        Text = "Copy PayPal Link",
        Func = function()
            lz(qo[6], "Copied PayPal link")
        end
    })
    DonationsGroup:AddLabel(kY("Venmo", "#008cff"), true)
    DonationsGroup:AddButton({
        Text = "Copy Venmo Link",
        Func = function()
            lz(qo[7], "Copied Venmo link")
        end
    })
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(kY("Don't have any of the listed currencies but still wanna donate?", k5), true)
    DonationsGroup:AddLabel(kY("DM me and we'll work something out.", lg), true)
    local FaqGroup = l9.Info:AddRightGroupbox("FAQ", "circle-help")
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
end
md_1()
local PacksGroup = l9.Main:AddLeftGroupbox("Packs", "package")
PacksGroup:AddToggle("AutoBuyPacks", { Text = "Auto Buy Packs", Default = false })
PacksGroup:AddDropdown("PackList", { Text = "Packs", Values = lb, Default = lb, Multi = true, SelectAllButtons = true })
PacksGroup:AddSlider("KeepMoney", { Text = "Keep Money", Default = 0, Min = 0, Max = 10000000, Rounding = 0 })
PacksGroup:AddToggle("AutoBuyShop", { Text = "Auto Buy Shop", Default = false })
PacksGroup:AddDropdown("ShopList", { Text = "Shop", Values = k7, Default = k7, Multi = true, SelectAllButtons = true })
PacksGroup:AddSlider("KeepDiamonds", { Text = "Keep Diamonds", Default = 0, Min = 0, Max = 1000000, Rounding = 0 })
PacksGroup:AddToggle("AutoPlacePacks", { Text = "Auto Place Packs", Default = false })
PacksGroup:AddDropdown("PlaceList", { Text = "Place", Values = me, Default = me, Multi = true, SelectAllButtons = true })
PacksGroup:AddToggle("AutoOpenPacks", { Text = "Auto Open Packs", Default = false })
PacksGroup:AddDropdown("OpenList", { Text = "Open", Values = me, Default = me, Multi = true, SelectAllButtons = true })
local EconomyGroup = l9.Main:AddRightGroupbox("Economy", "coins")
EconomyGroup:AddToggle("AutoDropOff", { Text = "Auto Drop Off", Default = false })
EconomyGroup:AddDropdown("DropOffList", { Text = "Drop Off", Values = mb, Default = mb, Multi = true, SelectAllButtons = true })
EconomyGroup:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
EconomyGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
EconomyGroup:AddDropdown("UpgradeList", { Text = "Upgrades", Values = lx, Default = lx, Multi = true, SelectAllButtons = true })
EconomyGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
EconomyGroup:AddDropdown("SellList", {
    Text = "Sell",
    Values = ls,
    Default = {},
    Multi = true,
    SelectAllButtons = true,
    Expandable = true
})
EconomyGroup:AddSlider("SellKeepAmount", { Text = "Keep Amount", Default = 0, Min = 0, Max = 50, Rounding = 0 })
le = {
    { id = "buy", dwell = 0.7 },
    { id = "place", dwell = 0.55 },
    { id = "open", dwell = 0.8 },
    { id = "collect", dwell = 0.7 },
    { id = "dropLetters", dwell = 1 },
    { id = "dropSymbols", dwell = 1 },
    { id = "dropWords", dwell = 1 }
}
k9 = fn322
l6 = fn50
lt = fn179
task.spawn(autoSellLoop)
local function mc_5()
    local MovementGroup = l9.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    local FlyGroup = l9.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local function gm(gn)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not gn)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not gn
            end
        end)
        if not gn then
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
    RunService.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = LocalPlayer.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local qT_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if qT_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    UserInputService.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local q0_1 = lq()
            if q0_1 then
                q0_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    local CurrentCamera = Workspace.CurrentCamera
    RunService.RenderStepped:Connect(function(gU)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local q5_1 = lq()
            if q5_1 then
                q5_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local q5_3 = k2()
            local q6 = lq()
            if q5_3 and q6 then
                q6.PlatformStand = true
                local q6_1 = Vector3.zero
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    q6_1 += CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    q6_1 -= CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                    q6_1 -= CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    q6_1 += CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    q6_1 += Vector3.new(0, 1, 0)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                    q6_1 -= Vector3.new(0, 1, 0)
                end
                q5_3.AssemblyLinearVelocity = Vector3.zero
                if q6_1.Magnitude > 0 then
                    q5_3.CFrame = q5_3.CFrame + q6_1.Unit * Options.FlySpeed.Value * gU
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local rc = lq()
            if rc then
                rc.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local rh = lq()
            if rh then
                rh.WalkSpeed = 16
            end
        end
    end)
    Toggles.AntiGameplayPause:OnChanged(function()
        gm(Toggles.AntiGameplayPause.Value)
    end)
    gm(true)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                gm(true)
            end
        end
    end)
    return gm
end
lX = mc_5()
local function mm(hm)
    local hn
    hn = tick()
    local ho = tick()
    pcall(function()
        for k, v in getconnections(LocalPlayer.Idled) do
            local rq = v
            pcall(function()
                rq:Disable()
            end)
        end
    end)
    local function hu()
        local CurrentCamera = Workspace.CurrentCamera
        if not CurrentCamera then
            return
        end
        VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
        task.wait(0.1)
        VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
        ho = tick()
    end
    local connection2 = UserInputService.InputBegan:Connect(function()
        hn = tick()
    end)
    local connection = UserInputService.InputChanged:Connect(function(hE)
        local UserInputType = hE.UserInputType
        if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
            hn = tick()
        end
    end)
    hm:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            if Toggles.AntiAfk.Value then
                local rw = tick() - hn
                local rx = tick() - ho
                if rw >= 300 and rx >= 60 then
                    pcall(hu)
                else
                    if rw < 300 and rx >= 300 then
                        pcall(hu)
                    end
                end
            end
        end
    end)
    return connection2, connection
end
local MenuGroup = l9.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
l2, lV = mm(MenuGroup)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(l9.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/CollectTheAlphabet")
local ml = SaveManager:BuildConfigSection(l9.Settings)
SaveManager:LoadAutoloadConfig()
local function mk(hZ)
    local function h_(h0, h1)
        local rB_1 = (h0 == "Toggle" and Toggles or Options)[h1]
        local rA_2 = type(rB_1) == "table" and rB_1.Type == h0
        return rA_2 and rB_1 or nil
    end
    local function h9(ia, ib)
        local Type = ib.Type
        if Type == "Toggle" then
            return { idx = ia, type = "Toggle", value = ib.Value == true }
        elseif Type == "Slider" then
            return { idx = ia, type = "Slider", value = tostring(ib.Value) }
        elseif Type == "Dropdown" then
            return { idx = ia, type = "Dropdown", multi = ib.Multi == true, value = ib.Value }
        elseif Type == "Input" then
            local rF = ib.Value or ""
            return { idx = ia, type = "Input", text = tostring(rF) }
        elseif Type == "ColorPicker" then
            return { idx = ia, type = "ColorPicker", value = ib.Value:ToHex(), transparency = ib.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = ia,
                type = "KeyPicker",
                mode = ib.Mode,
                key = ib.Value,
                modifiers = ib.Modifiers,
                toggled = ib.Toggled
            }
        else
            return nil
        end
    end
    local function ie()
        local rL = {}
        for k, v in { Toggles, Options } do
            for k, v in v do
                local rM = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if rM then
                    local rM_1 = h9(k, v)
                    if rM_1 then
                        rL[#rL + 1] = rM_1
                    end
                end
            end
        end
        table.sort(rL, function(iq, ir)
            if iq.type ~= ir.type then
                return iq.type < ir.type
            end
            return iq.idx < ir.idx
        end)
        return { objects = rL }
    end
    local function is(it)
        local r1
        r1 = nil
        local r2 = type(it) ~= "table" or type(it.idx) ~= "string" or type(it.type) ~= "string" or SaveManager.Ignore[it.idx]
        if r2 then
            return false
        end
        r1 = h_(it.type, it.idx)
        if not r1 then
            return false
        end
        local r2_1 = pcall(function()
            if it.type == "Input" then
                if type(it.text) ~= "string" then
                    return
                end
                r1:SetValue(it.text)
            elseif it.type == "ColorPicker" then
                r1:SetValueRGB(Color3.fromHex(it.value), it.transparency)
            elseif it.type == "KeyPicker" then
                r1:SetValue({ it.key, it.mode, it.modifiers })
                if it.mode == "Toggle" and it.toggled ~= nil then
                    r1.Toggled = it.toggled
                    r1:Update()
                end
            else
                r1:SetValue(it.value)
            end
        end)
        return r2_1
    end
    hZ:AddDivider()
    hZ:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    hZ:AddButton("Export Config to Clipboard", function()
        local r8_1
        local r7_1
        r7_1, r8_1 = pcall(HttpService.JSONEncode, HttpService, ie())
        if not r7_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local r7_2 = setclipboard or toclipboard
        local r7_3 = type(r7_2) ~= "function" or not pcall(r7_2, r8_1)
        if r7_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    hZ:AddButton("Import Config from Clipboard Text", function()
        local sg_1
        local se = Options.SaveManager_ImportSource.Value
        local se_1
        local sk = if se then 1 else 0
        local si = 2075 * sk + 507 * (1 - sk)
        local sj = 4086 * sk + 3933 * (1 - sk)
        if not ((si * 2750 + sj * 3683 + si * sj) % 16777213 == 12456225) then
            se = ""
        end
        local sf = tostring(se):match("^%s*(.-)%s*$")
        if sf == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        se_1, sg_1 = pcall(HttpService.JSONDecode, HttpService, sf)
        local sf_1 = not se_1 or type(sg_1) ~= "table" or type(sg_1.objects) ~= "table"
        if sf_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local se_2 = 0
        for k, v in sg_1.objects do
            if is(v) then
                se_2 += 1
            end
        end
        if se_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local sg_2 = se_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(se_2, sg_2), 6)
    end)
end
mk(ml)
Library:OnUnload(fn795)
