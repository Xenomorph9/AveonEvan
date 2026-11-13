local ip
local iL
local is
local iO
local iv
local iR
local Label
local iU
local Library
local ih
local onClickNow
local i_
local ik
local iH
local i2
local io
local onBuyBoostsNow
local Options
local iN
local iu
local h5
local ix
local iA
local connection
local RequestPets
local ig
local iZ
local iD
local ij
local onBuyUpgradesNow
local iJ
local connection2
local im
local iq
local onGoToBestTable
local EquipBestTitle
local onHatchNow
local ja
local h7
local Toggles
local onEquipBestNow
local ia
local iV
local iz
local ie
local VirtualUser
local onBuyBestFoodNow
local iF
local i0
local il
local iI
local function worker8()
    while not Library.Unloaded do
        if iF("AutoUpgrades") then
            onBuyUpgradesNow()
        end
        task.wait(is("UpgradeDelay", 2))
    end
end
local function worker13()
    while not Library.Unloaded do
        if iF("AutoEquipTitle") then
            iL()
        end
        task.wait(is("TitleDelay", 5))
    end
end
local function worker12()
    while not Library.Unloaded do
        if iF("AutoRollTitles") then
            i_()
        end
        task.wait(is("RollDelay", 1))
    end
end
local function fn51()
    ip(iR, "Copied Discord invite to clipboard")
end
local function worker11()
    while not Library.Unloaded do
        if iF("AutoEquipPets") then
            pcall(function()
                RequestPets:FireServer()
            end)
            onEquipBestNow()
        end
        task.wait(is("PetDelay", 3))
    end
end
local function fn79()
    pcall(function()
        ig:FireServer(true)
    end)
end
local function fn135(Z)
    local leaderstats = iU:FindFirstChild("leaderstats")
    local kc = leaderstats and leaderstats:FindFirstChild(Z)
    local kb_1 = kc
    if kc then
        kc = kb_1.Value
    end
    return kc or 0
end
local function fn150()
    local mw_1
    local mv_1
    if identifyexecutor then
        mw_1, mv_1 = identifyexecutor()
        local mx = mw_1 ~= ""
        local my = type(mw_1) == "string" and mx
        if my then
            local mx_1 = type(mv_1) == "string" and mv_1 ~= "" and mw_1 .. " " .. mv_1
            ix = mx_1 or mw_1
        end
    end
end
local function fn172(d_)
    local DiscordGroup = d_:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = ie })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = ie })
end
local function fn194()
    h7(Toggles.RemoveHatchAnim.Value)
end
local function onCopyJoinScript_JobID()
    local eg = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, h5)
    ip(eg, "Copied join script to clipboard")
end
local function worker5()
    while not Library.Unloaded do
        if iF("AutoRebirth") then
            iI()
        end
        task.wait(is("RebirthDelay", 3))
    end
end
local function worker9()
    while not Library.Unloaded do
        if iF("AutoBoosts") then
            onBuyBoostsNow()
        end
        task.wait(is("BoostDelay", 2))
    end
end
local function worker2()
    while not Library.Unloaded do
        task.wait(2)
        if iF("AntiAfk") then
            local mW = tick() - iH
            local mX = tick() - iD
            if mW >= 300 and mX >= 60 then
                pcall(iq)
            else
                if mW < 300 and mX >= 300 then
                    pcall(iq)
                end
            end
        end
    end
end
local function fn230()
    i2 = {}
    if not im or not im.Tables then
        return
    end
    for i, descendant in ipairs(workspace:GetDescendants()) do
        local k2_1 = descendant:IsA("TextLabel") and descendant.Name == "Name" and im.Tables[descendant.Text]
        if k2_1 then
            local Model = descendant:FindFirstAncestorWhichIsA("Model")
            if Model then
                i2[descendant.Text] = Model
            end
        end
    end
end
local function fn263()
    local lW = iu and iu.RollCost and ih("Wins") < iu.RollCost
    if lW then
        return
    end
    pcall(function()
        iO:FireServer()
    end)
end
local function worker7()
    while not Library.Unloaded do
        if iF("AutoFood") then
            onBuyBestFoodNow()
        end
        task.wait(is("FoodDelay", 5))
    end
end
local function fn313()
    local FatValue = iU:FindFirstChild("FatValue")
    return FatValue and FatValue.Value or 0
end
local function fn326()
    pcall(function()
        ig:FireServer(false)
    end)
end
local function worker()
    local mE_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local mD = math.floor(os.clock() - iV)
        if mD < 60 then
            mE_1 = mD .. "s"
        elseif mD < 3600 then
            mE_1 = string.format("%dm %ds", mD // 60, mD % 60)
        else
            mE_1 = string.format("%dh %dm", mD // 3600, mD % 3600 // 60)
        end
        Label:SetText(i0("Session time", mE_1, iJ))
    end
end
local function fn346()
    connection:Disconnect()
    connection2:Disconnect()
    h7(false)
end
local function fn347()
    pcall(function()
        EquipBestTitle:FireServer()
    end)
end
local function fn352(cd)
    local lA_1
    local lz = ij and ij.getTraitMultiplier
    local lz_1
    if lz then
        lz_1, lA_1 = pcall(ij.getTraitMultiplier, cd)
        local lB = lz_1 and tonumber(lA_1)
        if lB then
            return lA_1
        end
        return 1
    end
    return 1
end
local function fn354(dd)
    local lZ = Toggles[dd]
    return lZ ~= nil and lZ.Value == true
end
local function worker10()
    while not Library.Unloaded do
        if iF("AutoHatch") then
            onHatchNow()
        end
        task.wait(is("HatchDelay", 1))
    end
end
local function onInputChanged(e_)
    local UserInputType = e_.UserInputType
    local mR = UserInputType == Enum.UserInputType.MouseMovement
    local mV = if mR then 1 else 0
    local mT = 2268 * mV + 3030 * (1 - mV)
    local mU = 3694 * mV + 1348 * (1 - mV)
    if not ((mT * 128 + mU * 2796 + mT * mU) % 16777213 == 2219507) then
        mR = UserInputType == Enum.UserInputType.Gamepad1
    end
    if mR then
        iH = tick()
    end
end
local function fn391(n)
    local j9_1
    local j8_1
    if not n then
        return nil
    end
    j8_1, j9_1 = pcall(require, n)
    if j8_1 then
        return j9_1
    end
    return nil
end
local function fn406(c4, c5, c6)
    return string.format("<b>%s</b> %s %s", c4, ja("-", "#5a6070"), ja(c5, c6))
end
local function worker4()
    while not Library.Unloaded do
        local m0 = iF("AutoWin") and not iU:GetAttribute("AutoWins")
        if m0 then
            iv()
        end
        task.wait(is("WinDelay", 1))
    end
end
local function onOnClientEvent(b7, b8, b9)
    if type(b7) == "table" then
        io = b7
    end
    if tonumber(b9) then
        ik = tonumber(b9)
    end
end
local function fn478(di, dj)
    local l1 = Options[di]
    local l2 = l1 and tonumber(l1.Value)
    return l2 or dj
end
local function onRscripts()
    ip(iN, "Copied Rscripts profile to clipboard")
end
local function fn508()
    if not Toggles.AutoWin.Value then
        il()
    end
end
local function fn529()
    local Character = iU.Character
    if not Character then
        return nil
    end
    local Tool = Character:FindFirstChildOfClass("Tool")
    local kh_1 = Tool and Tool:GetAttribute("FatPerClick")
    if kh_1 then
        return Tool
    end
    return nil
end
local function fn532(dp)
    local l4 = Options[dp]
    return l4 and l4.Value or {}
end
local function onUnload()
    Library:Unload()
end
local function fn571(U, V)
    return U.amount < V.amount
end
local function fn580(cV, cW)
    if setclipboard then
        setclipboard(cV)
    elseif toclipboard then
        toclipboard(cV)
    end
    Library:Notify(cW)
end
local function fn583()
    local kF_1
    local kE_1
    if not iA then
        return
    end
    local kD = iU:GetAttribute("Level")
    if not kD then
        kE_1, kF_1 = pcall(iA.GetLevelInfo, iZ())
        kD = kE_1 and kF_1 or 0
    end
    local kE_3 = iA.RebirthLevelReq(ih("Rebirths"))
    if kE_3 <= (kD or 0) then
        pcall(function()
            ia:FireServer()
        end)
    end
end
local function onInputBegan()
    iH = tick()
end
local function fn650()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    iD = tick()
end
local function fn652(c1, c2)
    return string.format('<font color="%s">%s</font>', c2, c1)
end
local function fn655()
    local lf_1
    local le_1
    if not im or not im.Tables then
        return nil
    end
    local ld_1 = ih("Rebirths")
    lf_1, le_1 = nil, nil
    for k, v in pairs(im.Tables) do
        if not v.admin then
            local lg = false
            if v.gate == "open" then
                lg = true
            elseif v.gate == "rebirth" then
                lg = (v.rebirths or 0) <= ld_1
            elseif v.gate == "gamepass" then
                lg = iz(v.passId)
            end
            local lh_2 = lg
            if lh_2 then
                lh_2 = not le_1 or (v.mult or 0) > le_1
            end
            if lh_2 then
                lf_1 = k
                le_1 = v.mult or 0
            end
        end
    end
    return lf_1
end
local function worker6()
    while not Library.Unloaded do
        if iF("AutoTables") then
            onGoToBestTable()
        end
        task.wait(is("TableDelay", 2))
    end
end
local function worker3()
    while not Library.Unloaded do
        if iF("AutoClick") then
            onClickNow()
        end
        task.wait(is("ClickDelay", 0.1))
    end
end
h5 = nil
h7 = nil
Label = nil
ia = nil
connection = nil
ie = nil
ig = nil
ih = nil
onBuyBestFoodNow = nil
ij = nil
ik = nil
il = nil
im = nil
io = nil
ip = nil
iq = nil
Options = nil
is = nil
onHatchNow = nil
iu = nil
iv = nil
Toggles = nil
ix = nil
iz = nil
iA = nil
Library = nil
iD = nil
onClickNow = nil
iF = nil
iH = nil
iI = nil
iJ = nil
onBuyBoostsNow = nil
iL = nil
EquipBestTitle = nil
iN = nil
iO = nil
onEquipBestNow = nil
iR = nil
iU = nil
local h4, h6, h8, ic, iy, iC, iG, iQ, iS, iT
iV = nil
RequestPets = nil
VirtualUser = nil
iZ = nil
i_ = nil
i0 = nil
onBuyUpgradesNow = nil
i2 = nil
connection2 = nil
onGoToBestTable = nil
ja = nil
local iX, i3, MarketplaceService, i6, i8, i9, jj, jk, jl, jm, jo, jp
local jd_1, jd_4
MarketplaceService, VirtualUser, iU, iR, iN, iA, iy, iu = nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local AccountGroup
local jg = game:GetService("ReplicatedStorage")
MarketplaceService = game:GetService("MarketplaceService")
local UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
iU = Players.LocalPlayer
local jh = "+1 Fat Per Click"
iR = "https://discord.gg/ehKVq7pf7v"
iN = "https://rscripts.net/@Ouroboros"
local Shared = jg:FindFirstChild("Shared")
local je_5
iA = fn391(jg:FindFirstChild("FoodConfig"))
iy = fn391(jg:FindFirstChild("PetConfig"))
fn391(jg:FindFirstChild("UpgradeConfig"))
iu = fn391(jg:FindFirstChild("TitleConfig"))
local jb_1 = Shared and Shared:FindFirstChild("TableConfig")
im = fn391(jb_1)
local jb_2 = Shared and Shared:FindFirstChild("TraitConfig")
ij, ig, ia, h6, h4, i8, i6, i3, jj, RequestPets, iT, iS, iO, EquipBestTitle, jm, jl, jk, jd_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local jc = 2
repeat
    local je_1 = (jc * 1 + 2) % 5 + 1
    if je_1 <= 3 then
        if je_1 <= 2 then
            if je_1 <= 1 then
                if jc * 131107847 + 3 + 7 <= jc * 131107847 + 3 + 7 + 2 then
                    i8 = jg:WaitForChild("HatchResult")
                    i6 = jg:WaitForChild("EquipPet")
                    i3 = jg:WaitForChild("UnequipPet")
                    jj = jg:WaitForChild("PetsUpdated")
                    RequestPets = jg:WaitForChild("RequestPets")
                else
                    jj = RequestPets:WaitForChild("HatchResult")
                    jg = RequestPets:WaitForChild("EquipPet")
                    i6 = RequestPets:WaitForChild("UnequipPet")
                    i8 = RequestPets:WaitForChild("PetsUpdated")
                    i3 = RequestPets:WaitForChild("RequestPets")
                end
                jc = (jc + 16) % 20
            else
                if jc * 126325665 + 13 + 2 >= jc * 126325665 + 13 + 2 + 1 then
                    iS = EquipBestTitle:WaitForChild("BuyUpgrade")
                    iO = EquipBestTitle:WaitForChild("BuyBoost")
                    jg = EquipBestTitle:WaitForChild("RollTitle")
                    iT = EquipBestTitle:WaitForChild("EquipBestTitle")
                else
                    iT = jg:WaitForChild("BuyUpgrade")
                    iS = jg:WaitForChild("BuyBoost")
                    iO = jg:WaitForChild("RollTitle")
                    EquipBestTitle = jg:WaitForChild("EquipBestTitle")
                end
                jc = (jc + 16) % 20
            end
        else
            if jc * 20554445 + 6 + 1 <= jc * 20554445 + 6 + 1 + 5 then
                jm = { "Walkspeed", "TrainingRate", "ClickRate" }
                jl = { "Damage", "Wins", "Luck" }
                jk = {}
            else
                jk = { "ClickRate", "Walkspeed", "TrainingRate" }
                jm = { "Luck", "Wins", "Damage" }
                jl = {}
            end
            jc = (jc + 16) % 20
        end
    elseif je_1 <= 4 then
        if (jk or not i8 or (not EquipBestTitle or jd_1)) and (not ia and not ia or (EquipBestTitle or not EquipBestTitle)) and not ((jk or not i8 or (not EquipBestTitle or jd_1)) and (not ia and not ia or (EquipBestTitle or not EquipBestTitle))) then
            iy = jd_1
        else
            jd_1 = iy
        end
        jc = (jc + 1) % 20
    else
        local je_2 = (vector.create((jc * 6 + 9) % 11 + 1, (jc * 3 + 11) % 13 + 1, (jc * 14 + 8) % 17 + 1))
        local jn_1 = (vector.create((jc * 4 + 3) % 11 + 1, (jc * 7 + 6) % 13 + 1, (jc * 10 + 1) % 17 + 1))
        jo = (vector.create((jc * 4 + 4) % 11 + 1, (jc * 10 + 6) % 13 + 1, (jc * 11 + 10) % 17 + 1))
        jp = (vector.create((jc * 1 + 6) % 11 + 1, (jc * 2 + 3) % 13 + 1, (jc * 9 + 1) % 17 + 1))
        if vector.dot(vector.cross(je_2, jn_1), (vector.cross(jo, jp))) == vector.dot(je_2, jo) * vector.dot(jn_1, jp) - vector.dot(je_2, jp) * vector.dot(jn_1, jo) + 5 then
            ig = fn391(jg)
            h4 = ij:WaitForChild("AutoWinsToggle")
            h6 = ij:WaitForChild("DoRebirth")
            jb_2 = ij:WaitForChild("EquipFood")
            ia = ij:WaitForChild("HatchEgg")
        else
            ij = fn391(jb_2)
            ig = jg:WaitForChild("AutoWinsToggle")
            ia = jg:WaitForChild("DoRebirth")
            h6 = jg:WaitForChild("EquipFood")
            h4 = jg:WaitForChild("HatchEgg")
        end
        jc = (jc + 16) % 20
    end
until (jc * 11 + 5) % 20 == 2
if jd_1 then
    jd_1 = iy.EGGS
end
if jd_1 then
    local jb_3 = {}
    for k, v in pairs(iy.EGGS) do
        local jc_1 = type(v) == "table" and v.cost and v.cost.kind == "wins"
        if jc_1 then
            local insert = table.insert
            local jd_2 = tonumber(v.cost.amount) or 0
            insert(jb_3, { key = k, amount = jd_2 })
        end
    end
    local je_3 = 7
    repeat
        if je_3 * 90568779 + 11 + 5 <= je_3 * 90568779 + 11 + 5 + 2 then
            table.sort(jb_3, fn571)
        else
            table.sort(jb_3, fn571)
        end
        je_3 = (je_3 + 4) % 8
    until (je_3 * 1 + 3) % 8 == 6
    for i, v in ipairs(jb_3) do
        table.insert(jk, v.key)
    end
end
ic, iC, i2, io, ik, Library, Toggles, Options, iJ, ih, iZ, iQ, onClickNow, iv, il, h7, iI, onBuyBestFoodNow, iz, iX, iG, onGoToBestTable, i9, onEquipBestNow, i_, iL, ip, ie, ja, i0, iF, is, h8, onBuyUpgradesNow, onBuyBoostsNow, onHatchNow = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
ih = fn135
iZ = fn313
iQ = fn529
onClickNow = function()
    local kn = iQ()
    if kn then
        pcall(function()
            kn:Activate()
        end)
    end
end
iv = fn79
il = fn326
ic = nil
h7 = function(aA)
    if aA then
        if ic then
            return
        end
        ic = {}
        if typeof(getconnections) == "function" then
            for i, v in ipairs(getconnections(i8.OnClientEvent)) do
                local kw = v
                pcall(function()
                    kw:Disable()
                end)
                table.insert(ic, kw)
            end
        end
        pcall(function()
            iU:SetAttribute("EggHatching", false)
        end)
    elseif ic then
        for i, v in ipairs(ic) do
            local kC = v
            pcall(function()
                kC:Enable()
            end)
        end
        ic = nil
    end
end
iI = fn583
onBuyBestFoodNow = function()
    local kL
    if not iA or not iA.Foods then
        return
    end
    local kM_1 = ih("Wins")
    local kN = ih("Rebirths")
    kL = nil
    for i, v in ipairs(iA.Foods) do
        local kO = not v.gamepass
        if kO ~= false then
            kO = not v.dailyReward
        end
        if kO then
            kO = (v.requiredWins or 0) <= kM_1
        end
        if kO then
            kO = (v.requiredRebirths or 0) <= kN
        end
        if kO then
            local kO_1 = not kL
            if not kO_1 then
                kO_1 = (v.fatPerClick or 0) > (kL.fatPerClick or 0)
            end
            if kO_1 then
                kL = v
            end
        end
    end
    if not kL then
        return
    end
    local kM_2 = iQ()
    if kM_2 and kM_2.Name == kL.name then
        return
    end
    pcall(function()
        h6:FireServer(kL.name)
    end)
end
iC = {}
iz = function(be)
    if be == nil then
        return false
    end
    if iC[be] == nil then
        iC[be] = false
        task.spawn(function()
            local kZ_1
            local kY_1
            kY_1, kZ_1 = pcall(function()
                return MarketplaceService:UserOwnsGamePassAsync(iU.UserId, be)
            end)
            local kY_2 = kY_1 and kZ_1 or false
            iC[be] = kY_2
        end)
    end
    return iC[be]
end
i2 = {}
iX = fn230
iG = fn655
onGoToBestTable = function()
    local ls
    local lq
    local lt
    local lr
    lq = nil
    lr = nil
    ls = nil
    lt = nil
    local lu = iG()
    local lu_2
    if not lu then
        return
    end
    if iU:GetAttribute("Training") == lu then
        return
    end
    ls = i2[lu]
    if not ls or not ls.Parent then
        iX()
        ls = i2[lu]
    end
    if not ls then
        return
    end
    local Character = iU.Character
    local lv_1 = Character and Character:FindFirstChild("HumanoidRootPart")
    lq = lv_1
    if not lq then
        return
    end
    lu_2, lr, lt = pcall(function()
        return ls:GetBoundingBox()
    end)
    if not lu_2 or not lr then
        return
    end
    pcall(function()
        lq.CFrame = CFrame.new(lr.X, lr.Y + lt.Y / 2 + 3, lr.Z)
    end)
end
io = {}
ik = 0
jj.OnClientEvent:Connect(onOnClientEvent)
i9 = fn352
onEquipBestNow = function()
    if #io == 0 or ik <= 0 then
        return
    end
    local lH_1 = table.clone(io)
    table.sort(lH_1, function(cp, cq)
        local lD = cp.mult or 0
        local lE = lD * i9(cp.traits)
        local lF = cq.mult or 0
        return lE > lF * i9(cq.traits)
    end)
    local lI = {}
    local lJ = math.min(ik, #lH_1)
    local lN = 1
    while lN <= lJ do
        local lO = lN
        lI[lH_1[lO].id] = true
        lN += 1
    end
    for i, v in ipairs(lH_1) do
        local lV = v
        if lI[lV.id] and not lV.equipped then
            pcall(function()
                i6:FireServer(lV.id)
            end)
        else
            if not lI[lV.id] and lV.equipped then
                pcall(function()
                    i3:FireServer(lV.id)
                end)
            end
        end
    end
end
i_ = fn263
iL = fn347
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
jg = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
ip = fn580
ie = fn51
ja = fn652
i0 = fn406
local jq = "#7fd47f"
jp = "#6ec1ff"
iJ = "#e8a34d"
jo = "#8b93a3"
iF = fn354
is = fn478
h8 = fn532
onBuyUpgradesNow = function()
    for k, v in pairs(h8("Upgrades")) do
        local mc = k
        if v then
            pcall(function()
                iT:FireServer(mc)
            end)
        end
    end
end
onBuyBoostsNow = function()
    for k, v in pairs(h8("Boosts")) do
        local mj = k
        if v then
            pcall(function()
                iS:FireServer(mj)
            end)
        end
    end
end
onHatchNow = function()
    local mm, mn
    mm = Options.Egg and Options.Egg.Value
    if not mm or mm == "" or not iy or not iy.EGGS then
        return
    end
    local mo_2 = iy.EGGS[mm]
    if not mo_2 or not mo_2.cost or mo_2.cost.kind ~= "wins" then
        return
    end
    mn = is("HatchCount", 1)
    local mp_1 = ih("Wins")
    if mp_1 < (mo_2.cost.amount or 0) * mn then
        return
    end
    pcall(function()
        h4:FireServer(mm, mn)
    end)
end
local Window = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = iR, Copyable = true }, "|", jh },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local jr = {}
jr.Info = Window:AddTab("Info", "info")
local MainTab = Window:AddTab("Main", "gamepad-2")
jr.Settings = Window:AddTab("Settings", "settings")
MainTab:SetSubTabAlignment("Center")
jr.Clicker = MainTab:AddSubTab("Clicker", "mouse-pointer-click")
jr.Economy = MainTab:AddSubTab("Economy", "coins")
jr.Pets = MainTab:AddSubTab("Pets", "paw-print")
jr.Titles = MainTab:AddSubTab("Titles", "crown")
for k, v in jr do
    fn172(v)
end
ix, AccountGroup, je_5, Label, h5, jd_4 = nil, nil, nil, nil, nil, nil
local jc_3 = 22
repeat
    local jf_2 = (jc_3 * 1 + 0) % 3 + 1
    if jf_2 <= 2 then
        if jf_2 <= 1 then
            local jf_3 = {
                "iyndlj",
                "cwnfaw",
                "ihqlyuxqbcx",
                "rjglilwg",
                "hxdxym",
                "uehx",
                "yscf",
                "ekwytvhen",
                "fbwcuvltobd"
            }
            local nx = jc_3
            jj = jf_3[nx % 9 + 1]
            if jj:len() <= jj:reverse():rep(nx % 3 + 2):len() then
                jd_4 = #h5 > 18
            else
                h5 = #jd_4 > 18
            end
            jc_3 = (jc_3 + 10) % 24
        else
            if (jc_3 * 2 + 7) * 4 % 3 == ((jc_3 * 2 + 7) * 4 + 0) % 3 then
                ix = "Unknown"
                pcall(fn150)
                AccountGroup = jr.Info:AddLeftGroupbox("Account", "circle-user")
                AccountGroup:AddLabel(i0("User", iU.Name, jq), true)
                AccountGroup:AddLabel(i0("Status", "Keyless", jq), true)
                AccountGroup:AddLabel(i0("Executor", ix, jq), true)
                je_5 = jr.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                je_5:AddLabel(ja(jh .. " [" .. tostring(game.PlaceId) .. "]", jp), true)
                je_5:AddLabel(i0("Place ID", tostring(game.PlaceId), jp), true)
                Label = je_5:AddLabel(i0("Session time", "0s", iJ), true)
            else
                iJ = "Unknown"
                pcall(fn150)
                jh = (nil):AddLeftGroupbox("Account", "circle-user")
                jh:AddLabel(jq("User", ja.Name, AccountGroup), true)
                jh:AddLabel(jq("Status", "Keyless", AccountGroup), true)
                jh:AddLabel(jq("Executor", iJ, AccountGroup), true)
                iU = (nil):AddLeftGroupbox("Game Info", "gamepad-2")
                iU:AddLabel(Label(ix .. " [" .. tostring(game.PlaceId) .. "]", jr), true)
                iU:AddLabel(jq("Place ID", tostring(game.PlaceId), jr), true)
                je_5 = iU:AddLabel(jq("Session time", "0s", i0), true)
            end
            jc_3 = (jc_3 + 4) % 24
        end
    else
        local n_ = bit32.rrotate(bit32.bxor(bit32.lrotate(jc_3, 17), string.byte(tostring(Label))), 10)
        if bit32.bxor(bit32.lrotate(bit32.bxor(n_, 921630676), 2), 3686522704) ~= bit32.lrotate(n_, 2) then
            jd_4 = tostring(game.JobId)
        else
            h5 = tostring(game.JobId)
        end
        jc_3 = (jc_3 + 4) % 24
    end
until (jc_3 * 19 + 8) % 24 == 0
if jd_4 then
    local jb_5 = 2
    repeat
        local jc_4 = {
            "xvbdhio",
            "dfbwkl",
            "qqucjw",
            "hwmhwwldexs",
            "ohiqqlh",
            "rmigc",
            "mhpgrddau",
            "rci",
            "ksduo",
            "xtnndkfnapcm",
            "cncildrwi",
            "kltzb",
            "uuunrxayxls"
        }
        if jc_4[(jb_5 * 90 + 20) % 13 + 1] <= jc_4[(jb_5 * 90 + 20) % 13 + 1] then
            jd_4 = string.sub(h5, 1, 18) .. "..."
        else
            h5 = string.sub(jd_4, 1, 18) .. "..."
        end
        jb_5 = (jb_5 + 0) % 4
    until (jb_5 * 3 + 2) % 4 == 0
end
local jb_6 = jd_4 or h5
iV, iH, iD, connection, connection2, iq = nil, nil, nil, nil, nil, nil
je_5:AddLabel(i0("Server", jb_6, jo), true)
je_5:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
iV = os.clock()
task.spawn(worker)
local ScriptsGroup = jr.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(ja("Included in this hub", jo), true)
ScriptsGroup:AddLabel(ja(jh, jp), true)
local FeaturesGroup = jr.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(ja("Auto Click", jp), true)
FeaturesGroup:AddLabel(ja("Auto Win", jq), true)
FeaturesGroup:AddLabel(ja("Auto Rebirth", iJ), true)
FeaturesGroup:AddLabel(ja("Auto Tables", jp), true)
FeaturesGroup:AddLabel(ja("Auto Buy Food", jq), true)
FeaturesGroup:AddLabel(ja("Auto Buy Upgrades", iJ), true)
FeaturesGroup:AddLabel(ja("Auto Buy Boosts", jq), true)
FeaturesGroup:AddLabel(ja("Auto Hatch Eggs", jp), true)
FeaturesGroup:AddLabel(ja("Auto Equip Best Pet", jq), true)
FeaturesGroup:AddLabel(ja("Auto Roll & Equip Titles", iJ), true)
local SocialsGroup = jr.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = ie })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = jr.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = ie })
local FaqGroup = jr.Info:AddRightGroupbox("FAQ", "circle-help")
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
local AutoClickGroup = jr.Clicker:AddLeftGroupbox("Auto Click", "mouse-pointer-click")
AutoClickGroup:AddToggle("AutoClick", { Text = "Auto Click (+1 Fat)", Default = false })
AutoClickGroup:AddSlider("ClickDelay", { Text = "Click delay", Default = 0.1, Min = 0.05, Max = 5, Rounding = 2, Suffix = "s" })
AutoClickGroup:AddButton({ Text = "Click Now", Func = onClickNow })
local AutoWinGroup = jr.Clicker:AddLeftGroupbox("Auto Win", "trophy")
AutoWinGroup:AddToggle("AutoWin", { Text = "Auto Win", Default = false })
AutoWinGroup:AddSlider("WinDelay", { Text = "Refresh delay", Default = 1, Min = 0.2, Max = 30, Rounding = 1, Suffix = "s" })
jj = jr.Clicker:AddRightGroupbox("Auto Rebirth", "rotate-ccw")
jj:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
jj:AddSlider("RebirthDelay", { Text = "Rebirth delay", Default = 3, Min = 1, Max = 120, Rounding = 1, Suffix = "s" })
jj:AddButton({ Text = "Rebirth Now", Func = iI })
local AutoTablesGroup = jr.Clicker:AddRightGroupbox("Auto Tables", "table")
AutoTablesGroup:AddToggle("AutoTables", { Text = "Auto Best Table (by Rebirths)", Default = false })
AutoTablesGroup:AddSlider("TableDelay", { Text = "Table delay", Default = 2, Min = 0.5, Max = 30, Rounding = 1, Suffix = "s" })
AutoTablesGroup:AddButton({ Text = "Go To Best Table", Func = onGoToBestTable })
local AutoBuyFoodGroup = jr.Economy:AddLeftGroupbox("Auto Buy Food", "beef")
AutoBuyFoodGroup:AddToggle("AutoFood", { Text = "Auto Buy Best Food", Default = false })
AutoBuyFoodGroup:AddSlider("FoodDelay", { Text = "Food delay", Default = 5, Min = 1, Max = 120, Rounding = 0, Suffix = "s" })
AutoBuyFoodGroup:AddButton({ Text = "Buy Best Food Now", Func = onBuyBestFoodNow })
local AutoBuyUpgradesGroup = jr.Economy:AddLeftGroupbox("Auto Buy Upgrades", "arrow-up-circle")
AutoBuyUpgradesGroup:AddToggle("AutoUpgrades", { Text = "Auto Buy Upgrades", Default = false })
AutoBuyUpgradesGroup:AddDropdown("Upgrades", { Text = "Upgrades to buy", Values = jm, Multi = true, AllowNull = true, Default = {} })
AutoBuyUpgradesGroup:AddSlider("UpgradeDelay", { Text = "Upgrade delay", Default = 2, Min = 0.5, Max = 60, Rounding = 1, Suffix = "s" })
AutoBuyUpgradesGroup:AddButton({ Text = "Buy Upgrades Now", Func = onBuyUpgradesNow })
local AutoBuyBoostsGroup = jr.Economy:AddRightGroupbox("Auto Buy Boosts", "zap")
AutoBuyBoostsGroup:AddToggle("AutoBoosts", { Text = "Auto Buy Boosts", Default = false })
AutoBuyBoostsGroup:AddDropdown("Boosts", { Text = "Boosts to buy", Values = jl, Multi = true, AllowNull = true, Default = {} })
AutoBuyBoostsGroup:AddSlider("BoostDelay", { Text = "Boost delay", Default = 2, Min = 0.5, Max = 60, Rounding = 1, Suffix = "s" })
AutoBuyBoostsGroup:AddButton({ Text = "Buy Boosts Now", Func = onBuyBoostsNow })
local AutoHatchEggsGroup = jr.Pets:AddLeftGroupbox("Auto Hatch Eggs", "egg")
AutoHatchEggsGroup:AddToggle("AutoHatch", { Text = "Auto Hatch Eggs", Default = false })
AutoHatchEggsGroup:AddToggle("RemoveHatchAnim", { Text = "Remove Hatch Animation", Default = false })
AutoHatchEggsGroup:AddDropdown("Egg", { Text = "Egg", Values = jk, Multi = false, AllowNull = true, Default = jk[1] })
AutoHatchEggsGroup:AddSlider("HatchCount", { Text = "Eggs per hatch", Default = 1, Min = 1, Max = 3, Rounding = 0 })
AutoHatchEggsGroup:AddSlider("HatchDelay", { Text = "Hatch delay", Default = 1, Min = 0.2, Max = 30, Rounding = 1, Suffix = "s" })
AutoHatchEggsGroup:AddButton({ Text = "Hatch Now", Func = onHatchNow })
local AutoEquipPetsGroup = jr.Pets:AddRightGroupbox("Auto Equip Pets", "paw-print")
AutoEquipPetsGroup:AddToggle("AutoEquipPets", { Text = "Auto Equip Best Pets", Default = false })
AutoEquipPetsGroup:AddSlider("PetDelay", { Text = "Equip delay", Default = 3, Min = 0.5, Max = 60, Rounding = 1, Suffix = "s" })
AutoEquipPetsGroup:AddButton({ Text = "Equip Best Now", Func = onEquipBestNow })
local AutoRollTitlesGroup = jr.Titles:AddLeftGroupbox("Auto Roll Titles", "dices")
AutoRollTitlesGroup:AddToggle("AutoRollTitles", { Text = "Auto Roll Titles", Default = false })
AutoRollTitlesGroup:AddSlider("RollDelay", { Text = "Roll delay", Default = 1, Min = 0.3, Max = 30, Rounding = 1, Suffix = "s" })
AutoRollTitlesGroup:AddButton({ Text = "Roll Now", Func = i_ })
local AutoEquipTitlesGroup = jr.Titles:AddRightGroupbox("Auto Equip Titles", "crown")
AutoEquipTitlesGroup:AddToggle("AutoEquipTitle", { Text = "Auto Equip Best Title", Default = false })
AutoEquipTitlesGroup:AddSlider("TitleDelay", { Text = "Equip delay", Default = 5, Min = 1, Max = 120, Rounding = 0, Suffix = "s" })
AutoEquipTitlesGroup:AddButton({ Text = "Equip Best Title Now", Func = iL })
local MenuGroup = jr.Settings:AddLeftGroupbox("Menu", "menu")
Library.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton({ Text = "Unload", Func = onUnload })
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
ThemeManager:ApplyToTab(jr.Settings)
ThemeManager:LoadDefault()
jg:SetLibrary(Library)
jg:IgnoreThemeSettings()
jg:SetIgnoreIndexes({ "MenuKeybind" })
jg:SetFolder("OuroborosHub/plus-one-fat-per-click")
jg:BuildConfigSection(jr.Settings)
jg:LoadAutoloadConfig()
Toggles.AutoWin:OnChanged(fn508)
Toggles.RemoveHatchAnim:OnChanged(fn194)
h7(Toggles.RemoveHatchAnim.Value)
iH = tick()
iD = tick()
pcall(function()
    for i, v in ipairs(getconnections(iU.Idled)) do
        local mN = v
        pcall(function()
            mN:Disable()
        end)
    end
end)
iq = fn650
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
Library:OnUnload(fn346)
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
iX()
Library:Notify("+1 Fat Per Click loaded")
