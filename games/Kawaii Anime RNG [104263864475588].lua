local q8_1, GameInfoGroup, q8_9
local lM
local kM
local BuyDice
local Toggles
local FoodCart
local lz
local kz
local lg
local kY
local lF
local lm
local Options
local Merchant2
local kL
local ls
local k9
local ly
local SkillTree2
local Index
local EquipBest
local Wheel2
local kE
local ll
local VirtualUser
local BuyPotion
local lQ
local Wheel
local lx
local kx
local le
local kW
local Rolling
local Library
local Rebirth
local lJ
local kJ
local lq
local k7
local lP
local lw
local Eggs
local ld
local Merchant
local lC
local kC
local OfflineEarnings
local k0
local lp
local k6
local RebirthHandler
local kO
local lv
local kv
local kU
local lB
local kB
local li
local k_
local FoodCart2
local kH
local connection
local k5
local lN
local kN
local lu
local lb
local kT
local lA
local kA
local lh
local kZ
local LocalPlayer
local kG
local SkillTree
local connection2
local function fn37()
    kY(lA, "Copied Discord invite to clipboard")
end
local function fn97()
    local _NodeData = SkillTree2._NodeData
    if type(_NodeData) ~= "table" then
        return {}
    end
    local oE = {}
    for k, v in pairs(_NodeData) do
        if lx(k, v) then
            local oD_1 = SkillTree2.Prices and SkillTree2.Prices[k]
            local oF = oD_1
            if oD_1 then
                oD_1 = oF[1]
            end
            local oG = oF
            local oH = oD_1
            if oG then
                oG = tonumber(oF[2])
            end
            local oD_2 = oG or 0
            local insert = table.insert
            local oI_1 = oH == nil or oH == "N/A" or oD_2 <= 0 or k == lh or k == ld
            insert(oE, { id = k, currency = oH, cost = oD_2, free = oI_1 })
        end
    end
    table.sort(oE, function(dy, dz)
        if dy.free ~= dz.free then
            return dy.free
        elseif dy.cost == dz.cost then
            return dy.id < dz.id
        else
            return dy.cost < dz.cost
        end
    end)
    return oE
end
local function worker12()
    while not Library.Unloaded do
        if lq("AutoEquipBest") then
            pcall(lN)
        end
        task.wait(k5("EquipBestDelay", 3))
    end
end
local function worker6()
    while not Library.Unloaded do
        if lq("AutoRebirth") then
            pcall(kU)
        end
        task.wait(k5("RebirthDelay", 2))
    end
end
local function fn111(a2)
    local m9 = kT(a2)
    if not m9 then
        return false
    end
    local Character = LocalPlayer.Character
    local nb = Character and Character:FindFirstChild("HumanoidRootPart")
    if not nb then
        return false
    end
    if (nb.Position - m9).Magnitude > 12 then
        lm(m9)
        task.wait(0.35)
    end
    return true
end
local function fn112()
    if not lJ("Shop") then
        return
    end
    BuyDice:FireServer("RequestShop")
    task.wait(0.25)
    BuyDice:FireServer("BuyBestAvailable")
end
local function onUnload()
    Library:Unload()
end
local function fn136()
    local n0 = LocalPlayer:GetAttribute("OfflineEarningsVisible") == true
    local n7 = if n0 then 1 else 0
    local n5 = 3954 * n7 + 1326 * (1 - n7)
    local n6 = 512 * n7 + 3315 * (1 - n7)
    if not ((n5 * 3693 + n6 * 3776 + n5 * n6) % 16777213 == 1782669) then
        n0 = LocalPlayer:GetAttribute("OfflineEarningsPending") == true
    end
    if n0 then
        pcall(function()
            OfflineEarnings:FireServer("Claim")
        end)
    end
    local n0_1 = k9()
    if not n0_1 then
        return
    end
    local Character = LocalPlayer.Character
    local n2 = Character and Character:FindFirstChild("HumanoidRootPart")
    if not n2 then
        return
    end
    for i, descendant in n0_1:GetDescendants() do
        local n0_2 = descendant.Name == "Collector" and descendant:IsA("BasePart") and descendant.CanTouch
        if n0_2 then
            local n0_3 = descendant:FindFirstChild("FrameTag") and descendant.FrameTag:FindFirstChild("Frame") and descendant.FrameTag.Frame:FindFirstChild("Amount")
            local n2_1 = n0_3
            if n0_3 then
                local n3 = tonumber(n2_1:GetAttribute("money")) or 0
                n0_3 = n3
            end
            if (n0_3 or 0) > 0 then
                if firetouchinterest then
                    pcall(firetouchinterest, descendant, n2, 0)
                    pcall(firetouchinterest, descendant, n2, 1)
                else
                    n2.CFrame = descendant.CFrame + Vector3.new(0, 3, 0)
                end
                task.wait(0.05)
            end
        end
    end
end
local function worker13()
    while not Library.Unloaded do
        if lq("AutoEquipSort") then
            pcall(ll)
        end
        task.wait(k5("EquipSortDelay", 3))
    end
end
local function worker9()
    while not Library.Unloaded do
        if lq("AutoBuyMerchant") then
            pcall(kx)
        end
        if lq("AutoBuyFoodCart") then
            pcall(lu)
        end
        task.wait(k5("MerchantDelay", 10))
    end
end
local function worker4()
    while not Library.Unloaded do
        if lq("AutoCollectMoney") then
            pcall(kM)
        end
        task.wait(k5("CollectDelay", 0.75))
    end
end
local function fn211(bk)
    local nk = li(bk)
    if not nk then
        return false
    end
    local Character = LocalPlayer.Character
    local nm = Character and Character:FindFirstChild("HumanoidRootPart")
    if not nm then
        return false
    end
    if (nm.Position - nk.Position).Magnitude > 10 then
        lm(nk.Position)
        task.wait(0.35)
    end
    return true
end
local function fn246(ar, as)
    local mF = Options[ar]
    local mG = mF and tonumber(mF.Value)
    return mG or as
end
local function fn294(bb)
    local ng = lz[bb]
    if not ng then
        return nil
    end
    local nh = Eggs.InteractionByIndex and Eggs.InteractionByIndex[ng]
    if type(nh) ~= "table" then
        return nil
    end
    local Proximity = nh.Proximity
    local ni = typeof(Proximity) == "Instance" and Proximity:IsA("BasePart")
    if ni then
        return Proximity, nh
    end
    return nil, nh
end
local function onCopyJoinScript_JobID()
    local f4 = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, kW)
    kY(f4, "Copied join script to clipboard")
end
local function worker3()
    while not Library.Unloaded do
        if lq("AutoRoll") then
            pcall(kz, true)
        end
        task.wait(1)
    end
end
local function fn325()
    local result2 = Wheel:InvokeServer("GetState")
    if type(result2) ~= "table" then
        return
    end
    local pD = tonumber(result2.NextFreeAt) or 0
    local pE = tonumber(result2.ServerTime) or 0
    if pD - pE > 0 then
        return
    end
    if not lg() then
        return
    end
    Wheel:InvokeServer("ClaimFree")
    task.wait(0.35)
    local result = Wheel:InvokeServer("Spin")
    local pD_1 = type(result) == "table" and result.Success
    if pD_1 then
        task.wait(0.35)
        Wheel:InvokeServer("FinishSpin")
    end
end
local function fn328(T, U)
    if setclipboard then
        setclipboard(T)
    elseif toclipboard then
        toclipboard(T)
    end
    Library:Notify(U)
end
local function onInputBegan()
    kv = tick()
end
local function fn359(cT, cU)
    local og = os.clock()
    local oi = og + (cU or 1.5)
    while true do
        if not (os.clock() < oi) then
            return kZ(cT)
        end
        if kZ(cT) then
            break
        end
        task.wait(0.05)
    end
    return true
end
local function worker2()
    while not Library.Unloaded do
        task.wait(2)
        if lq("AntiAfk") then
            local qN = tick() - kv
            local qO = tick() - lQ
            if qN >= 300 and qO >= 60 then
                pcall(lB)
            else
                if qN < 300 and qO >= 300 then
                    pcall(lB)
                end
            end
        end
    end
end
local function onRemoveHatchAnimation(gs)
    kC(gs)
end
local function worker11()
    while not Library.Unloaded do
        if lq("AutoClaimIndex") then
            pcall(lw)
        end
        task.wait(k5("IndexDelay", 5))
    end
end
local function fn394()
    FoodCart:FireServer("Request")
    task.wait(0.3)
    for k in FoodCart2.Catalog do
        local pp = tonumber(FoodCart2.Stock[k]) or 0
        if pp > 0 then
            FoodCart:FireServer("BuyAll", k)
            task.wait(0.1)
        end
    end
end
local function fn398()
    if not lJ("PotionShop") then
        return
    end
    BuyPotion:FireServer("RequestShop")
    task.wait(0.25)
    BuyPotion:FireServer("BuyBestAvailable")
end
local function onInputChanged(gJ)
    local UserInputType = gJ.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        kv = tick()
    end
end
local function fn449()
    local pL_1
    local pK_1
    local pJ = Eggs.MaxOpenAmount
    if type(Eggs.GetMaxOpenAmount) == "function" then
        pK_1, pL_1 = pcall(function()
            return Eggs:GetMaxOpenAmount()
        end)
        local pM_1 = pK_1 and type(pL_1) == "number"
        if pM_1 then
            pJ = pL_1
        end
    end
    local max = math.max
    local floor = math.floor
    local pM_2 = tonumber(pJ) or 1
    return max(1, floor(pM_2))
end
local function fn452()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    lQ = tick()
end
local function fn458()
    local qr_1
    local qq_1
    if identifyexecutor then
        qr_1, qq_1 = identifyexecutor()
        local qs = qr_1 ~= ""
        local qt = type(qr_1) == "string" and qs
        if qt then
            local qs_1 = type(qq_1) == "string" and qq_1 ~= "" and qr_1 .. " " .. qq_1
            ls = qs_1 or qr_1
        end
    end
end
local function fn463()
    EquipBest:FireServer()
end
local function worker8()
    while not Library.Unloaded do
        if lq("AutoHatchEggs") then
            pcall(lp)
            local qZ = lM - os.clock()
            if qZ > 0 then
                task.wait(qZ)
            else
                task.wait(0.05)
            end
        else
            task.wait(0.25)
        end
    end
end
local function fn489(dB)
    if kZ(dB) then
        return true
    end
    SkillTree:FireServer("Purchase", dB)
    if kO(dB, 1.5) then
        return true
    end
    k6[dB] = true
    return false
end
local function fn492()
    local nB_1
    local nA_1
    if Rolling.Hiding then
        return
    end
    local nz = true
    if type(Rolling.CanAutoHideDice) == "function" then
        nA_1, nB_1 = pcall(function()
            return Rolling:CanAutoHideDice()
        end)
        nz = nA_1 and nB_1 == true
    end
    if not nz then
        return
    end
    if type(Rolling.HideCall) == "function" then
        pcall(function()
            Rolling:HideCall()
        end)
    elseif type(Rolling.HideButton) == "function" then
        pcall(function()
            Rolling:HideButton()
        end)
    end
end
local function fn520(aM)
    local Character = LocalPlayer.Character
    local mY = Character and Character:FindFirstChild("HumanoidRootPart")
    local mX_1 = mY
    if mY then
        mY = typeof(aM) == "Vector3"
    end
    if not mY then
        return false
    end
    mX_1.CFrame = CFrame.new(aM + Vector3.new(0, 4, 0))
    return true
end
local function fn546()
    pcall(function()
        Index:FireServer("ClaimAll")
    end)
end
local function fn547()
    local o8 = kH("SelectedDice", "Bronze")
    if not lJ("Shop") then
        return
    end
    BuyDice:FireServer("RequestShop")
    task.wait(0.25)
    BuyDice:FireServer("BuyAll", o8)
end
local function fn555(aT)
    local m_ = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("MapShop")
    local m0 = m_
    if m_ then
        m_ = m0:FindFirstChild(aT)
    end
    local m0_1 = m_
    if not m0_1 then
        return nil
    end
    local m__1 = m0_1:FindFirstChildWhichIsA("ProximityPrompt", true)
    if not m__1 then
        return nil
    end
    local Parent = m__1.Parent
    local m__2 = Parent and Parent:IsA("BasePart")
    if m__2 then
        return Parent.Position
    end
    local m__3 = m0_1:FindFirstChildWhichIsA("Model", true)
    if m__3 then
        return m__3:GetPivot().Position
    end
    return nil
end
local function fn573(aa, ab)
    return string.format('<font color="%s">%s</font>', ab, aa)
end
local function fn603()
    pcall(function()
        RebirthHandler:RequestAvailability()
    end)
    task.wait(0.35)
    pcall(function()
        RebirthHandler:UpdateRebirthButton()
    end)
    if RebirthHandler.IsMax then
        return
    end
    local qn = RebirthHandler.Alert and RebirthHandler.Alert.Visible
    local qo = qn or lF()
    if qo then
        Rebirth:FireServer()
    end
end
local function onAutoRoll(gm)
    kz(gm)
end
local function fn642()
    local pb = lC("MerchantCategories")
    Merchant:FireServer("Request")
    task.wait(0.3)
    if not Merchant2.IsActive then
        return
    end
    for k, v in Merchant2.Catalog do
        local pc = Merchant2.Stock[k]
        local pd = pb[k] and type(v) == "table" and type(pc) == "table"
        if pd then
            for k2 in v do
                local pd_1 = tonumber(pc[k2]) or 0
                if pd_1 > 0 then
                    Merchant:FireServer("BuyAll", k, k2)
                    task.wait(0.1)
                end
            end
        end
    end
end
local function worker()
    local qz_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local qy = math.floor(os.clock() - kB)
        if qy < 60 then
            qz_1 = qy .. "s"
        elseif qy < 3600 then
            qz_1 = string.format("%dm %ds", qy // 60, qy % 60)
        else
            qz_1 = string.format("%dh %dm", qy // 3600, qy % 3600 // 60)
        end
        k_:SetText(lP("Session time", qz_1, lv))
    end
end
local function fn698()
    pcall(function()
        SkillTree:FireServer("RequestSync")
    end)
    task.wait(0.3)
    local oS = 0
    local oZ = 1
    while oZ <= 60 do
        local oT = kE()
        if #oT == 0 then
            break
        end
        local oU = false
        for i, v in ipairs(oT) do
            local oT_1 = SkillTree2._NodeData and SkillTree2._NodeData[v.id]
            local oV = oT_1
            if oT_1 then
                oT_1 = lx(v.id, oV)
            end
            if oT_1 then
                if k7(v.id) then
                    oS = oS + 1
                    oU = true
                end
                if oS >= 60 then
                    break
                end
            end
        end
        if not oU or oS >= 60 then
            break
        end
        task.wait(0.1)
        oZ += 1
    end
end
local function fn706(aG)
    local mN = Options[aG]
    local mO = mN and mN.Value
    local mO_1 = type(mO) == "table" and mO
    local mN_2 = {}
    local mP = mO_1
    local mW = if mP then 1 else 0
    local mU = 399 * mW + 2571 * (1 - mW)
    local mV = 4076 * mW + 232 * (1 - mW)
    if not ((mU * 3573 + mV * 3191 + mU * mV) % 16777213 == 16058467) then
        mP = mN_2
    end
    return mP
end
local function fn707(fO)
    local DiscordGroup = fO:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = kN })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = kN })
end
local function fn712()
    local WheelAnchor = Wheel2.WheelAnchor
    local pw = typeof(WheelAnchor) == "Instance" and WheelAnchor:IsA("BasePart")
    if not pw then
        return true
    end
    local Character = LocalPlayer.Character
    local px = Character and Character:FindFirstChild("HumanoidRootPart")
    if not px then
        return false
    end
    if (px.Position - WheelAnchor.Position).Magnitude > 15 then
        lm(WheelAnchor.Position)
        task.wait(0.35)
    end
    return true
end
local function worker5()
    while not Library.Unloaded do
        if lq("AutoBuyUpgrades") then
            pcall(kJ)
        end
        task.wait(k5("UpgradeDelay", 1))
    end
end
local function fn775()
    local om_1
    local ol_1
    ol_1, om_1 = pcall(function()
        return LocalPlayer:IsInGroupAsync(lb)
    end)
    return ol_1 and om_1 == true
end
local function fn802(cP)
    return SkillTree2.Owned and SkillTree2.Owned[cP] == true
end
local function fn831(am)
    local mC = Toggles[am]
    return mC ~= nil and mC.Value == true
end
local function fn851()
    local nP = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("Plots")
    if not nP then
        return nil
    end
    for i, child in nP:GetChildren() do
        if child:GetAttribute("owner") == LocalPlayer.UserId then
            return child
        end
    end
    return nil
end
local function onRscripts()
    kY(ly, "Copied Rscripts profile to clipboard")
end
local function fn917()
    connection:Disconnect()
    connection2:Disconnect()
    kz(false)
    kC(false)
end
local function worker7()
    while not Library.Unloaded do
        if lq("AutoBuyDice") then
            pcall(le)
        end
        if lq("AutoBuySelectedDice") then
            pcall(k0)
        end
        if lq("AutoBuyPotions") then
            pcall(kL)
        end
        task.wait(k5("ShopDelay", 1))
    end
end
local function worker10()
    while not Library.Unloaded do
        if lq("AutoSpinWheel") then
            pcall(kG)
        end
        task.wait(30)
    end
end
local function fn938(ad, ae, af)
    return string.format("<b>%s</b> %s %s", ad, kA("-", "#5a6070"), kA(ae, af))
end
local function fn950(ax, ay)
    local mI = Options[ax]
    local mJ = mI and mI.Value
    local mJ_1 = mJ ~= ""
    local mL = type(mJ) == "string" and mJ_1
    if mL then
        return mJ
    elseif type(mJ) == "number" then
        local Values = mI.Values
        local mI_1 = type(Values) == "table" and type(Values[mJ]) == "string"
        if mI_1 then
            return Values[mJ]
        end
        return ay
    else
        return ay
    end
end
kv = nil
Eggs = nil
kx = nil
SkillTree2 = nil
kz = nil
kA = nil
kB = nil
kC = nil
Rolling = nil
kE = nil
kG = nil
kH = nil
kJ = nil
kL = nil
kM = nil
kN = nil
kO = nil
Wheel = nil
FoodCart = nil
kT = nil
kU = nil
Merchant = nil
kW = nil
EquipBest = nil
kY = nil
kZ = nil
k_ = nil
k0 = nil
Rebirth = nil
Options = nil
connection2 = nil
k5 = nil
k6 = nil
k7 = nil
k9 = nil
Toggles = nil
lb = nil
ld = nil
le = nil
Index = nil
lg = nil
lh = nil
local kF, kI, IsHugePetCutsceneSkipped, ShowPetRevealResultsWithHugeCutscene, ShowPetRevealResults, k2, Settings, EggInfo
li = nil
OfflineEarnings = nil
Library = nil
ll = nil
lm = nil
SkillTree = nil
connection = nil
lp = nil
lq = nil
BuyPotion = nil
ls = nil
BuyDice = nil
lu = nil
lv = nil
lw = nil
lx = nil
ly = nil
lz = nil
lA = nil
lB = nil
lC = nil
Wheel2 = nil
lF = nil
LocalPlayer = nil
FoodCart2 = nil
lJ = nil
VirtualUser = nil
Merchant2 = nil
lM = nil
lN = nil
RebirthHandler = nil
lP = nil
lQ = nil
local lI, Pets, lS
lI = nil
Pets = nil
lS = nil
local FaqGroup
VirtualUser, LocalPlayer, lA, ly, BuyDice, BuyPotion, SkillTree, OfflineEarnings, Index, EggInfo, Settings, Rebirth, EquipBest, Merchant, FoodCart, Wheel, Rolling, SkillTree2, Eggs, Pets, RebirthHandler, Merchant2, FoodCart2, Wheel2, lz, Library, Toggles, Options, lv, ShowPetRevealResults, ShowPetRevealResultsWithHugeCutscene, IsHugePetCutsceneSkipped, kF, lh, ld, lb, k6, lM, kY, kN, kA, lP, lq, k5, kH, lC, lm, kT, lJ, li, kI, kC, k2, kz, k9, kM, kZ, kO, lS, lx, kE, k7, kJ, le, k0, kL, kx, lu, lg, kG, lI, lp, lw, ll, lN, lF, kU = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local q8_2 = game:GetService("Players")
local q8_3 = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
LocalPlayer = q8_2.LocalPlayer
local mb = "Kawaii Anime RNG"
lA = "https://discord.gg/ehKVq7pf7v"
ly = "https://rscripts.net/@Ouroboros"
local q8_6 = q8_3:WaitForChild("Remotes")
BuyDice = q8_6:WaitForChild("BuyDice")
BuyPotion = q8_6:WaitForChild("BuyPotion")
SkillTree = q8_6:WaitForChild("SkillTree")
OfflineEarnings = q8_6:WaitForChild("OfflineEarnings")
Index = q8_6:WaitForChild("Index")
EggInfo = q8_6:WaitForChild("EggInfo")
Settings = q8_6:WaitForChild("Settings")
Rebirth = q8_6:WaitForChild("Rebirth")
EquipBest = q8_6:WaitForChild("EquipBest")
Merchant = q8_6:WaitForChild("Merchant")
FoodCart = q8_6:WaitForChild("FoodCart")
Wheel = q8_6:WaitForChild("Wheel")
local q8_8 = q8_3:WaitForChild("Modules"):WaitForChild("Services")
local q8_10 = q8_8:WaitForChild("UserInterface")
Rolling = require(q8_10:WaitForChild("Rolling"))
SkillTree2 = require(q8_10:WaitForChild("SkillTree"))
Eggs = require(q8_10:WaitForChild("Eggs"))
Pets = require(q8_10:WaitForChild("Pets"))
RebirthHandler = require(q8_10:WaitForChild("RebirthHandler"))
Merchant2 = require(q8_10:WaitForChild("Merchant"))
FoodCart2 = require(q8_10:WaitForChild("FoodCart"))
Wheel2 = require(q8_10:WaitForChild("Wheel"))
local ma = { "Basic", "Forest", "Jungle", "Beach", "Monster", "Desert", "Galaxy", "Candy", "Lava", "Frozen" }
lz = {
    Basic = 1,
    Forest = 2,
    Jungle = 3,
    Beach = 4,
    Monster = 5,
    Desert = 6,
    Galaxy = 7,
    Candy = 8,
    Lava = 9,
    Frozen = 10
}
local l7 = {
    "Bronze",
    "Iron",
    "Silver",
    "Gold",
    "Sapphire",
    "Emerald",
    "Ruby",
    "Obsidian",
    "Crystal",
    "Nebula",
    "Void",
    "Celestial",
    "Abyssal",
    "Infernal",
    "Ethereal",
    "Quantum",
    "Eldritch",
    "Galactic",
    "Sovereign",
    "Arcane",
    "Paradox",
    "Oblivion",
    "Singularity",
    "Omnipotent",
    "Transcendent",
    "Seraphic",
    "Valentine"
}
local l6 = { "Dices", "Potions", "Foods", "Exclusives" }
local l4 = { "Luck", "Cash", "Rarity", "Size", "Mutations", "Favorites" }
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
kY = fn328
kN = fn37
kA = fn573
lP = fn938
local l9 = "#7fd47f"
local l8 = "#6ec1ff"
lv = "#e8a34d"
local l5 = "#8b93a3"
lq = fn831
k5 = fn246
kH = fn950
lC = fn706
if (BuyDice and not q8_6 or Merchant2 and not q8_6) and (Merchant2 and Merchant2 or not BuyDice and not BuyDice) and not ((BuyDice and not q8_6 or Merchant2 and not q8_6) and (Merchant2 and Merchant2 or not BuyDice and not BuyDice)) then
    k0 = fn520
else
    lm = fn520
end
kT = fn555
lJ = fn111
li = fn294
kI = fn211
ShowPetRevealResults = Eggs.ShowPetRevealResults
ShowPetRevealResultsWithHugeCutscene = Eggs.ShowPetRevealResultsWithHugeCutscene
IsHugePetCutsceneSkipped = Eggs.IsHugePetCutsceneSkipped
kF = false
kC = function(bL)
    if bL then
        if kF then
            return
        end
        kF = true
        Eggs.ShowPetRevealResults = function(bP, bQ)
            local nu = typeof(bQ) ~= "table" or #bQ == 0
            if nu then
                return 0.05
            end
            pcall(function()
                bP:ClearPetRevealResults()
            end)
            pcall(function()
                bP:SetOpeningUiSelected(false)
            end)
            return 0.05
        end
        Eggs.ShowPetRevealResultsWithHugeCutscene = function(bU, bV, bW)
            local nw = bU:ShowPetRevealResults(bV)
            if type(bW) == "function" then
                task.defer(bW)
            end
            return nw
        end
        Eggs.IsHugePetCutsceneSkipped = function()
            return true
        end
        pcall(function()
            Settings:FireServer("Skip-Cutscene", "HolyRollAnimation", true)
        end)
    else
        if not kF then
            return
        end
        kF = false
        Eggs.ShowPetRevealResults = ShowPetRevealResults
        Eggs.ShowPetRevealResultsWithHugeCutscene = ShowPetRevealResultsWithHugeCutscene
        Eggs.IsHugePetCutsceneSkipped = IsHugePetCutsceneSkipped
    end
end
k2 = fn492
kz = function(b8)
    if b8 then
        if not Rolling.AutoRolling then
            local nJ_1 = Rolling.AutoRoll
            if not nJ_1 then
                local nK_1 = Rolling.MainFrame and Rolling.MainFrame:FindFirstChild("AutoRoll")
                nJ_1 = nK_1
            end
            local nI = nJ_1
            if nI then
                pcall(function()
                    Rolling:AutoRollCall(nI)
                end)
            end
        end
        if Rolling.AutoRolling and not Rolling.Playing then
            pcall(function()
                Rolling:Start()
            end)
        end
        if Rolling.AutoRolling then
            k2()
        end
    else
        local nJ_3 = Rolling.AutoRolling
        if not nJ_3 then
            local nK_2 = Rolling.IsAutoUseDiceRunning and Rolling:IsAutoUseDiceRunning()
            nJ_3 = nK_2
        end
        if nJ_3 then
            if Rolling.StopAutoRoll then
                pcall(function()
                    Rolling:StopAutoRoll()
                end)
            else
                Rolling.AutoRolling = false
            end
        end
    end
end
k9 = fn851
kM = fn136
lh = "Mutations/Player/Group"
ld = "Mutations/Player/Like"
lb = 326703534
k6 = {}
kZ = fn802
kO = fn359
lS = fn775
lx = function(c4, c5)
    local ot_1
    if k6[c4] then
        return false
    end
    local oq = type(c4) ~= "string" or c4 == "__Back__" or type(c5) ~= "table"
    local oq_1
    if oq then
        return false
    elseif c5.Info ~= "Unlock" then
        return false
    elseif kZ(c4) then
        return false
    elseif type(SkillTree2._IsPurchasableNode) ~= "function" then
        return false
    else
        oq_1, ot_1 = pcall(function()
            return SkillTree2:_IsPurchasableNode(c4, c5)
        end)
        if not (oq_1 and ot_1) then
            return false
        end
        local oq_2 = c4 == lh and not lS()
        if oq_2 then
            k6[c4] = true
            return false
        end
        return true
    end
end
kE = fn97
k7 = fn489
kJ = fn698
le = fn112
k0 = fn547
kL = fn398
kx = fn642
lu = fn394
lg = fn712
kG = fn325
lM = 0
lI = fn449
lp = function()
    local pO, pP, result
    local pR = os.clock()
    if pR < lM then
        return
    end
    if Eggs.EggBuyInFlight then
        return
    end
    pO = kH("HatchEgg", "Basic")
    pP = math.max(1, math.floor(k5("HatchAmount", 1)))
    pP = math.min(pP, lI())
    if not kI(pO) then
        lM = os.clock() + 0.35
        return
    end
    result = nil
    local pR_1 = pcall(function()
        result = EggInfo:InvokeServer("Buy", pO, pP)
    end)
    local pS = not pR_1 or type(result) ~= "table"
    if pS then
        lM = os.clock() + 0.75
        return
    end
    if type(result.MaxOpenAmount) == "number" then
        Eggs.MaxOpenAmount = result.MaxOpenAmount
    end
    if result.Success == true then
        lM = os.clock() + math.max(k5("HatchDelay", 1.25), 0.75)
        if kF then
            pcall(function()
                Eggs:SetOpeningUiSelected(false)
            end)
            pcall(function()
                Eggs:ClearOpeningPreview(true)
            end)
        end
        return
    end
    local Reason = result.Reason
    if Reason == "Cooldown" then
        local pS_1 = tonumber(result.RetryAfter) or 1.25
        lM = os.clock() + math.max(pS_1, 0.75)
    elseif Reason == "OutOfRange" then
        lM = os.clock() + 0.35
    else
        lM = os.clock() + math.max(k5("HatchDelay", 1.25), 0.75)
    end
end
lw = fn546
ll = function()
    local result, p3
    p3 = kH("EquipSortMode", "Luck")
    if Pets then
        Pets.SortMode = p3
        Pets.Requesting = false
    end
    result = nil
    local p4 = pcall(function()
        result = EggInfo:InvokeServer("EquipSort", p3)
    end)
    local p5 = p4 and type(result) == "table" and result.Success and Pets and type(Pets.ApplyStateUpdate) == "function"
    if p5 then
        pcall(function()
            local p0 = result.State or result
            Pets:ApplyStateUpdate(p0)
        end)
    else
        local p5_1 = p4 and type(result) == "table" and result.Success and Pets and type(Pets.SetState) == "function"
        if p5_1 then
            pcall(function()
                Pets:SetState(result.State)
            end)
        end
    end
end
lN = fn463
lF = function()
    local qa, Items, qc
    if RebirthHandler.IsMax then
        return false
    end
    local Cash = RebirthHandler.Cash
    if type(Cash) ~= "number" then
        return false
    end
    local CashFrame = RebirthHandler.CashFrame
    local qf = CashFrame and CashFrame:GetAttribute("Cash")
    if (qf or 0) < Cash then
        return false
    end
    Items = RebirthHandler.Items
    local qd_1 = type(Items) ~= "table" or type(Items.One) ~= "table" or type(Items.Two) ~= "table"
    if qd_1 then
        return false
    end
    qc = false
    qa = false
    pcall(function()
        qa = RebirthHandler:IsNameInInventory(Items.One[1], 1)
        qc = RebirthHandler:IsNameInInventory(Items.Two[1], 2)
    end)
    return qa and qc
end
kU = fn603
local q8_4 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = lA, Copyable = true }, "|", mb },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local mc = {
    Info = q8_4:AddTab("Info", "info"),
    Main = q8_4:AddTab("Main", "gamepad-2"),
    Settings = q8_4:AddTab("Settings", "settings")
}
mc.Farm = mc.Main:AddSubTab("Farm", "sprout")
mc.Shop = mc.Main:AddSubTab("Shop", "shopping-cart")
mc.Pets = mc.Main:AddSubTab("Pets", "paw-print")
local l1 = fn707
for k, v in mc do
    if v ~= mc.Main then
        l1(v)
    end
end
ls, q8_2, GameInfoGroup, k_, kW, q8_8 = nil, nil, nil, nil, nil, nil
q8_10 = 7
repeat
    q8_1 = (q8_10 * 1 + 0) % 3 + 1
    if q8_1 <= 2 then
        if q8_1 <= 1 then
            q8_1 = {
                "fbxubqan",
                "cfnwvva",
                "ptdnlpnd",
                "glzttwrmen",
                "ujy",
                "kbqcrufvu",
                "vkbmjvoq",
                "giwd",
                "cmsgtseba",
                "ptp",
                "aaka"
            }
            local su = q8_10
            q8_9 = q8_1[su % 11 + 1]
            if q8_9:len() <= q8_9:reverse():rep(su % 3 + 2):len() then
                q8_8 = #kW > 18
            else
                kW = #q8_8 > 18
            end
            q8_10 = (q8_10 + 1) % 24
        else
            if (not q8_8 or not q8_8 or (q8_8 or q8_8) or (not q8_8 or q8_2) and (q8_8 and q8_2)) and ((not q8_2 or not q8_8) and (not q8_2 or q8_2) and (q8_2 and not q8_8 and (not q8_8 or q8_8))) and not ((not q8_8 or not q8_8 or (q8_8 or q8_8) or (not q8_8 or q8_2) and (q8_8 and q8_2)) and ((not q8_2 or not q8_8) and (not q8_2 or q8_2) and (q8_2 and not q8_8 and (not q8_8 or q8_8)))) then
                k_ = "Unknown"
                pcall(fn458)
                kA = (nil):AddLeftGroupbox("Account", "circle-user")
                kA:AddLabel(GameInfoGroup("User", mc.Name, q8_2), true)
                kA:AddLabel(GameInfoGroup("Status", "Keyless", q8_2), true)
                kA:AddLabel(GameInfoGroup("Executor", k_, q8_2), true)
                l8 = (nil):AddLeftGroupbox("Game Info", "gamepad-2")
                l8:AddLabel(ls(l9 .. " [" .. tostring(game.PlaceId) .. "]", LocalPlayer), true)
                l8:AddLabel(GameInfoGroup("Place ID", tostring(game.PlaceId), LocalPlayer), true)
                mb = l8:AddLabel(GameInfoGroup("Session time", "0s", lP), true)
            else
                ls = "Unknown"
                pcall(fn458)
                q8_2 = mc.Info:AddLeftGroupbox("Account", "circle-user")
                q8_2:AddLabel(lP("User", LocalPlayer.Name, l9), true)
                q8_2:AddLabel(lP("Status", "Keyless", l9), true)
                q8_2:AddLabel(lP("Executor", ls, l9), true)
                GameInfoGroup = mc.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                GameInfoGroup:AddLabel(kA(mb .. " [" .. tostring(game.PlaceId) .. "]", l8), true)
                GameInfoGroup:AddLabel(lP("Place ID", tostring(game.PlaceId), l8), true)
                k_ = GameInfoGroup:AddLabel(lP("Session time", "0s", lv), true)
            end
            q8_10 = (q8_10 + 16) % 24
        end
    else
        q8_1 = (vector.create((q8_10 * 5 + 8) % 11 + 1, (q8_10 * 8 + 10) % 13 + 1, (q8_10 * 4 + 16) % 17 + 1))
        q8_9 = (vector.create((q8_10 * 7 + 2) % 11 + 1, (q8_10 * 4 + 3) % 13 + 1, (q8_10 * 2 + 6) % 17 + 1))
        q8_6 = (vector.create((q8_10 * 5 + 9) % 11 + 1, (q8_10 * 2 + 13) % 13 + 1, (q8_10 * 12 + 5) % 17 + 1))
        q8_4 = (vector.create((q8_10 * 2 + 5) % 5 + 1, (q8_10 * 4 + 6) % 7 + 1, (q8_10 * 4 + 4) % 9 + 1))
        if vector.dot(vector.cross(q8_1, (vector.cross(q8_9, q8_6))), q8_4) == vector.dot(q8_9 * vector.dot(q8_1, q8_6) - q8_6 * vector.dot(q8_1, q8_9), q8_4) then
            kW = tostring(game.JobId)
        else
            k_ = tostring(game.JobId)
        end
        q8_10 = (q8_10 + 7) % 24
    end
until (q8_10 * 17 + 13) % 24 == 12
if q8_8 then
    q8_2 = 4
    repeat
        q8_10 = {
            "pher",
            "mwm",
            "pelypv",
            "emzyiivceolg",
            "uttpc",
            "ztciilyqbfb",
            "zjoqyacu",
            "ynawd",
            "tpd",
            "fsgsahyoeit",
            "bqmd",
            "jdsouwykaukm"
        }
        if q8_10[(q8_2 * 34 + 36) % 12 + 1] < q8_10[(q8_2 * 34 + 36) % 12 + 1] then
            kW = string.sub(q8_8, 1, 18) .. "..."
        else
            q8_8 = string.sub(kW, 1, 18) .. "..."
        end
        q8_2 = (q8_2 + 1) % 8
    until (q8_2 * 7 + 7) % 8 == 2
end
q8_2 = q8_8 or kW
kB, FaqGroup, q8_6, kv, lQ, connection, connection2, lB = nil, nil, nil, nil, nil, nil, nil, nil
q8_1 = q8_2
GameInfoGroup:AddLabel(lP("Server", q8_1, l5), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
kB = os.clock()
task.spawn(worker)
local ScriptsGroup = mc.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(kA("Included in this hub", l5), true)
ScriptsGroup:AddLabel(kA(mb, l8), true)
local FeaturesGroup = mc.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(kA("Auto Farm", l8), true)
FeaturesGroup:AddLabel(kA("Auto Shop", l9), true)
FeaturesGroup:AddLabel(kA("Pet Utilities", lv), true)
FeaturesGroup:AddLabel(kA("Misc Utilities", l5), true)
local SocialsGroup = mc.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = kN })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = mc.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
if (not ScriptsGroup and q8_1 and (not q8_6 or not q8_6) or (q8_1 and connection or (q8_1 or q8_1))) and ((not connection or not q8_1 or (not connection or ScriptsGroup)) and (not q8_1 or ScriptsGroup or (connection or not q8_6))) or ((not q8_6 or q8_6) and (q8_1 and not q8_6) or (q8_6 and not q8_6 or (q8_1 or not q8_6))) and ((q8_1 or not connection) and (not connection and q8_6) or (not ScriptsGroup or ScriptsGroup) and (connection or q8_6)) or not ((not ScriptsGroup and q8_1 and (not q8_6 or not q8_6) or (q8_1 and connection or (q8_1 or q8_1))) and ((not connection or not q8_1 or (not connection or ScriptsGroup)) and (not q8_1 or ScriptsGroup or (connection or not q8_6))) or ((not q8_6 or q8_6) and (q8_1 and not q8_6) or (q8_6 and not q8_6 or (q8_1 or not q8_6))) and ((q8_1 or not connection) and (not connection and q8_6) or (not ScriptsGroup or ScriptsGroup) and (connection or q8_6))) then
    OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = kN })
    FaqGroup = mc.Info:AddRightGroupbox("FAQ", "circle-help")
else
    mc:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    mc:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    mc:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    mc:AddButton({ Text = "Copy Discord Invite", Func = OuroborosHubGroup })
    kN = FaqGroup.Info:AddRightGroupbox("FAQ", "circle-help")
end
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
l1 = mc.Farm:AddLeftGroupbox("Farm", "dices")
l1:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false, Callback = onAutoRoll })
l1:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
l1:AddSlider("CollectDelay", { Text = "Collect delay", Default = 0.75, Min = 0.2, Max = 10, Rounding = 2, Suffix = "s" })
l1:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Affordable Upgrades", Default = false })
l1:AddSlider("UpgradeDelay", { Text = "Upgrade delay", Default = 1, Min = 0.3, Max = 15, Rounding = 1, Suffix = "s" })
l1:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
l1:AddSlider("RebirthDelay", { Text = "Rebirth delay", Default = 2, Min = 0.5, Max = 30, Rounding = 1, Suffix = "s" })
q8_3 = mc.Farm:AddRightGroupbox("Wheel", "disc-3")
q8_3:AddToggle("AutoSpinWheel", { Text = "Auto Spin Free Wheel", Default = false })
q8_4 = mc.Shop:AddLeftGroupbox("Shop", "store")
q8_4:AddToggle("AutoBuyDice", { Text = "Auto Buy Dice", Default = false })
q8_4:AddToggle("AutoBuySelectedDice", { Text = "Auto Buy Selected Dice", Default = false })
q8_4:AddDropdown("SelectedDice", { Text = "Dice", Values = l7, Default = "Bronze" })
q8_4:AddToggle("AutoBuyPotions", { Text = "Auto Buy Potions", Default = false })
q8_4:AddSlider("ShopDelay", { Text = "Shop delay", Default = 1, Min = 0.3, Max = 15, Rounding = 1, Suffix = "s" })
q8_6 = mc.Shop:AddRightGroupbox("Merchant", "user-round")
q8_6:AddToggle("AutoBuyMerchant", { Text = "Auto Buy Merchant", Default = false })
q8_6:AddDropdown("MerchantCategories", { Text = "Merchant categories", Values = l6, Default = { "Potions", "Foods" }, Multi = true })
q8_6:AddToggle("AutoBuyFoodCart", { Text = "Auto Buy Food Cart", Default = false })
q8_6:AddSlider("MerchantDelay", { Text = "Merchant delay", Default = 10, Min = 2, Max = 60, Rounding = 0, Suffix = "s" })
q8_9 = mc.Pets:AddLeftGroupbox("Eggs", "egg")
q8_9:AddToggle("AutoHatchEggs", { Text = "Auto Hatch Eggs", Default = false })
q8_9:AddDropdown("HatchEgg", { Text = "Egg", Values = ma, Default = "Basic" })
q8_9:AddSlider("HatchAmount", { Text = "Hatch amount", Default = 1, Min = 1, Max = 3, Rounding = 0 })
q8_9:AddSlider("HatchDelay", { Text = "Hatch delay", Default = 1.25, Min = 0.75, Max = 10, Rounding = 2, Suffix = "s" })
q8_9:AddToggle("RemoveHatchAnimation", { Text = "Remove Hatch Animation", Default = false, Callback = onRemoveHatchAnimation })
q8_8 = mc.Pets:AddRightGroupbox("Pets", "paw-print")
q8_8:AddToggle("AutoClaimIndex", { Text = "Auto Claim Index", Default = false })
q8_8:AddSlider("IndexDelay", { Text = "Index delay", Default = 5, Min = 1, Max = 60, Rounding = 0, Suffix = "s" })
q8_8:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
q8_8:AddSlider("EquipBestDelay", { Text = "Equip best delay", Default = 3, Min = 1, Max = 60, Rounding = 0, Suffix = "s" })
q8_8:AddToggle("AutoEquipSort", { Text = "Auto Equip Sort Pets", Default = false })
q8_8:AddDropdown("EquipSortMode", { Text = "Sort mode", Values = l4, Default = "Luck" })
q8_8:AddSlider("EquipSortDelay", { Text = "Equip sort delay", Default = 3, Min = 1, Max = 60, Rounding = 0, Suffix = "s" })
q8_10 = mc.Settings:AddLeftGroupbox("Menu", "menu")
Library.ToggleKeybind = Options.MenuKeybind
q8_10:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
q8_10:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
q8_10:AddButton({ Text = "Unload", Func = onUnload })
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
ThemeManager:ApplyToTab(mc.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/kawaii-anime-rng")
SaveManager:BuildConfigSection(mc.Settings)
SaveManager:LoadAutoloadConfig()
kv = tick()
lQ = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local qH = v
        pcall(function()
            qH:Disable()
        end)
    end
end)
lB = fn452
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
if ((q8_6 or not connection2) and (connection2 or not q8_6) and (lB or false or connection2 and not connection2) or (lB and not lB or not q8_8 and 28 or (not lB and lB or q8_6 and 28)) or ((q8_6 or q8_6) and (q8_6 or false) or (q8_6 and q8_6 or not connection2 and not connection2) or not connection2 and not connection2 and connection2 and (connection2 and not connection2 and (q8_8 and connection2)))) and not ((q8_6 or not connection2) and (connection2 or not q8_6) and (lB or false or connection2 and not connection2) or (lB and not lB or not q8_8 and 28 or (not lB and lB or q8_6 and 28)) or ((q8_6 or q8_6) and (q8_6 or false) or (q8_6 and q8_6 or not connection2 and not connection2) or not connection2 and not connection2 and connection2 and (connection2 and not connection2 and (q8_8 and connection2)))) then
    Library:OnUnload(fn917)
else
    Library:OnUnload(fn917)
end
if lq("RemoveHatchAnimation") then
    kC(true)
end
if lq("AutoRoll") then
    kz(true)
end
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
task.spawn(worker12)
task.spawn(worker13)
Library:Notify("Kawaii Anime RNG loaded")
