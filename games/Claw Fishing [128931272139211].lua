local Options
local RarityInfo
local i4
local iq
local Label3
local Label5
local LocalPlayer
local ja
local Toggles
local iS
local PlayerData
local Aquariums
local iV
local iz
local ie
local iY
local MutationInfo
local i0
local FishState
local iI
local i3
local ip
local iL
local i6
local i9
local Library
local jc
local EquipBest
local Label2
local ic
local VirtualUser
local ItemInfo
local ih
local Cashout
local iE
local ik
local Label
local i2
local i5
local iK
local connection
local FishInfo
local h5
local iu
local jb
local ix
local Label4
local je
local iQ
local iW
local ib
local iD
local iZ
local iG
local i1
local function fn17(ag)
    local j3 = Toggles[ag]
    return j3 ~= nil and j3.Value == true
end
local function fn20(aw)
    for k, v in pairs(aw) do
        if v then
            return true
        end
    end
    return false
end
local function fn27()
    local kX_1
    local kW_1
    local kS = iW("FishRarities")
    local kT = not iL("CatchAnyFish") and iz(kS)
    local kT_1 = iL("MutatedOnly")
    local kV = os.clock()
    kX_1, kW_1 = nil, nil
    for k, v in pairs(FishState.activeFish) do
        local kZ = je[k] ~= nil and je[k] > kV
        if not kZ then
            local kY_1 = FishInfo.IdToName[v.speciesId]
            local k_ = kY_1 and FishInfo.Fish[kY_1]
            local k0 = v.mutations or {}
            if not k_ then
                kZ = true
            else
                if kT_1 and not k0.mutation then
                    kZ = true
                else
                    if kT and not kS[RarityInfo.rarityNames[k_.tier]] then
                        kZ = true
                    end
                end
            end
        end
        if not kZ then
            local kY_3 = i3(v)
            if not kW_1 or kY_3 > kW_1 then
                kW_1 = kY_3
                kX_1 = k
            end
        end
    end
    return kX_1
end
local function fn36()
    local kk = h5()
    return kk and kk.Values and kk.Values.Money or 0
end
local function fn56()
    iu:Disconnect()
    connection:Disconnect()
    print("Claw Fishing unloaded")
end
local function worker()
    while not Library.Unloaded do
        task.wait(2)
        if iL("AntiAfk") then
            local mE = tick() - ih
            local mF = tick() - ic
            if mE >= 300 and mF >= 60 then
                pcall(iQ)
            else
                if mE < 300 and mF >= 300 then
                    pcall(iQ)
                end
            end
        end
    end
end
local function fn65(a9)
    local kD = a9.arrivalTime - a9.departTime
    if kD <= 0 then
        return a9.destination
    end
    local kE = math.clamp((workspace:GetServerTimeNow() - a9.departTime) / kD, 0, 1)
    return a9.origin:Lerp(a9.destination, kE)
end
local function onInputBegan()
    ih = tick()
end
local function fn202(bd)
    local kK = bd.stats and bd.stats.income or 0
    local kL = bd.mutations or {}
    local kK_2 = 1
    if kL.mutation and MutationInfo.List[kL.mutation] then
        kK_2 = MutationInfo.List[kL.mutation].Price
    end
    return kK * kK_2 * (kL.size or 1)
end
local function fn233()
    Library.ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
local function fn245(c1, c2, c3, c4)
    local l1 = iZ(c3)
    local l2 = i6()
    for k, v in c1 do
        local l3 = c2[v].Price or 0
        local l3_1 = not l1[v]
        if l3_1 ~= false then
            l3_1 = l3 > 0
        end
        if l3_1 then
            l3_1 = l2 - l3 >= c4
        end
        if l3_1 then
            return v
        end
    end
    return nil
end
local function fn258(N, O)
    if setclipboard then
        setclipboard(N)
    elseif toclipboard then
        toclipboard(N)
    end
    Library:Notify(O)
end
local function fn259(dm)
    local DiscordGroup = dm:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = i0 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = i0 })
end
local function worker2()
    local mJ_1
    while not Library.Unloaded do
        task.wait(1)
        local mI = math.floor(os.clock() - ja)
        if mI < 60 then
            mJ_1 = mI .. "s"
        elseif mI < 3600 then
            mJ_1 = string.format("%dm %ds", mI // 60, mI % 60)
        else
            mJ_1 = string.format("%dh %dm", mI // 3600, mI % 3600 // 60)
        end
        Label:SetText(ix("Session time", mJ_1, iY))
        Label3:SetText(ix("Money", string.format("%d", math.floor(i6())), jc))
        Label2:SetText(ix("Caught", tostring(i9), jc))
        iq:SetText(ix("Last catch", i1, iY))
        ik:SetText(ix("Status", iV, iS))
        local mI_1 = h5()
        local mI_2 = mI_1 and mI_1.Aquarium and mI_1.Aquarium.Upgrade or 0
        Label4:SetText(ix("Aquarium level", tostring(mI_2), i5))
        local mI_3 = iG()
        local mJ_4 = mI_3 and string.format("%d", mI_3)
        local mI_4 = mJ_4 or "maxed"
        Label5:SetText(ix("Next upgrade", mI_4, iY))
    end
end
local function fn297()
    return PlayerData.Data
end
local function worker4()
    while not Library.Unloaded do
        if iL("AutoBestFish") then
            pcall(function()
                EquipBest:FireServer()
            end)
        end
        task.wait(ip("BestFishDelay", 3))
    end
end
local function fn334(cW)
    local lV = h5()
    local lW = lV and lV.Boat
    if not lW then
        return {}
    elseif cW == "Claw" then
        return lW.OwnedClaws or {}
    elseif cW == "Crane" then
        return lW.OwnedCranes or {}
    else
        local lW_3 = {}
        local lX_3 = lW.OwnedHulls
        local l0 = if lX_3 then 1 else 0
        local lZ = 1118 * l0 + 983 * (1 - l0)
        local l_ = 3685 * l0 + 3641 * (1 - l0)
        if not ((lZ * 30 + l_ * 1632 + lZ * l_) % 16777213 == 10167290) then
            lX_3 = lW_3
        end
        return lX_3
    end
end
local function fn348(al, am)
    local j6 = Options[al]
    local j7 = j6 and tonumber(j6.Value)
    return j7 or am
end
local function onCopyJoinScript_JobID()
    local dE = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, iD)
    ie(dE, "Copied join script to clipboard")
end
local function fn398(de, df)
    local mc = iZ(df)
    for k, v in de do
        if mc[v] then
            return v
        end
    end
    return nil
end
local function fn400(X, Y, Z)
    return string.format("<b>%s</b> %s %s", X, iK("-", "#5a6070"), iK(Y, Z))
end
local function onUnload()
    Library:Unload()
end
local function fn417(U, V)
    return string.format('<font color="%s">%s</font>', V, U)
end
local function fn420()
    local lS = h5()
    local lT = lS and lS.Aquarium and lS.Aquarium.Upgrade
    local lS_1 = lT
    if lT then
        lT = ItemInfo.Aquariums[tostring(lS_1)]
    end
    local lS_2 = lT
    if lT then
        lT = lS_2.Cost
    end
    return lT or nil
end
local function fn423()
    local lJ = iE()
    local lK = lJ and lJ:FindFirstChild("AquariumUpgradeSign")
    if not lK then
        return nil
    end
    for i, descendant in lK:GetDescendants() do
        if descendant:IsA("ProximityPrompt") then
            return descendant
        end
    end
    return nil
end
local function fn472()
    ie(jb, "Copied Discord invite to clipboard")
end
local function fn478()
    local kt = iI()
    local kv = kt and kt:FindFirstChild("Claw")
    local kt_1 = kv
    if kv then
        kv = kt_1:FindFirstChild("Base")
    end
    return kv
end
local function worker3()
    while not Library.Unloaded do
        if iL("AutoClawFish") then
            pcall(i4)
            task.wait(ip("FishDelay", 0))
        else
            task.wait(0.5)
        end
    end
end
local function fn514()
    local SessionData = PlayerData.SessionData
    local kr = SessionData and SessionData.Boat
    local kq_1 = kr
    if kr then
        kr = kq_1.Parent
    end
    if kr then
        return kq_1
    end
    return nil
end
local function worker5()
    while not Library.Unloaded do
        if iL("AutoCollectMoney") then
            pcall(function()
                Cashout:FireServer()
            end)
        end
        task.wait(ip("CollectDelay", 3))
    end
end
local function fn543()
    local ml_1
    local mk_1
    if identifyexecutor then
        ml_1, mk_1 = identifyexecutor()
        local mm = ml_1 ~= ""
        local mn = type(ml_1) == "string" and mm
        if mn then
            local mm_1 = type(mk_1) == "string" and mk_1 ~= "" and ml_1 .. " " .. mk_1
            ib = mm_1 or ml_1
        end
    end
end
local function onRscripts()
    ie(i2, "Copied Rscripts profile to clipboard")
end
local function onInputChanged(ee)
    local UserInputType = ee.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        ih = tick()
    end
end
local function fn608()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    ic = tick()
end
local function fn611(ar)
    local j9 = Options[ar]
    return j9 and j9.Value or {}
end
local function fn616()
    for i, child in Aquariums:GetChildren() do
        if child:GetAttribute("OwnerUserId") == LocalPlayer.UserId then
            return child
        end
    end
    return nil
end
h5 = nil
Aquariums = nil
ib = nil
ic = nil
ie = nil
ih = nil
FishState = nil
ik = nil
Options = nil
ip = nil
iq = nil
Toggles = nil
iu = nil
PlayerData = nil
ix = nil
Label2 = nil
iz = nil
ItemInfo = nil
iD = nil
iE = nil
MutationInfo = nil
iG = nil
Label = nil
iI = nil
RarityInfo = nil
iK = nil
iL = nil
Label5 = nil
FishInfo = nil
LocalPlayer = nil
iQ = nil
Library = nil
iS = nil
Label4 = nil
EquipBest = nil
local h4, Buy, h7, h8, h9, ig, ij, Giveup, io, ConfirmCatch, is, iv, CatchFish, iC, iO
iV = nil
iW = nil
VirtualUser = nil
iY = nil
iZ = nil
Cashout = nil
i0 = nil
i1 = nil
i2 = nil
i3 = nil
i4 = nil
i5 = nil
i6 = nil
Label3 = nil
connection = nil
i9 = nil
ja = nil
jb = nil
jc = nil
je = nil
local Equip, jw, FaqGroup, AutoBuyClawGroup, AutoUpgradeAquariumGroup
local jq_1
local jm_1
local jj_1, GameInfoGroup
local Events
VirtualUser, LocalPlayer = nil, nil
local Players = game:GetService("Players")
local jh = game:GetService("ReplicatedStorage")
local jh_2
local UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
LocalPlayer = Players.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return LocalPlayer:WaitForChild("PlayerGui")
    end
end
Events, jj_1, CatchFish, ConfirmCatch, Giveup, Buy, Equip, jm_1, Cashout, EquipBest, FishInfo, RarityInfo, MutationInfo, ItemInfo, PlayerData, FishState, Aquariums, jb, i2, Library, jq_1, Toggles, Options, jc, i5, iY, iS, ie, i0, iK, ix, iL, ip, iW, iz, h5, i6, iI, h9 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if not jj_1 and not jj_1 and (not jj_1 or ix) and (jm_1 or jm_1 or jq_1 and not jq_1) and (jm_1 or jj_1 or jj_1 and jj_1 or (not jm_1 and jm_1 or (not jq_1 or not ix))) and not (not jj_1 and not jj_1 and (not jj_1 or ix) and (jm_1 or jm_1 or jq_1 and not jq_1) and (jm_1 or jj_1 or jj_1 and jj_1 or (not jm_1 and jm_1 or (not jq_1 or not ix)))) then
    jh = Events:WaitForChild("Events")
else
    Events = jh:WaitForChild("Events")
end
local Modules = jh:WaitForChild("Modules")
CatchFish = Events:WaitForChild("CatchFish")
ConfirmCatch = Events:WaitForChild("ConfirmCatch")
Giveup = Events:WaitForChild("Giveup")
local NPC = Events:WaitForChild("NPC")
Buy = NPC:WaitForChild("Buy")
Equip = NPC:WaitForChild("Equip")
local Aquarium = Events:WaitForChild("Aquarium")
Cashout = Aquarium:WaitForChild("Cashout")
EquipBest = Aquarium:WaitForChild("EquipBest")
FishInfo = require(Modules:WaitForChild("FishInfo"))
RarityInfo = require(Modules:WaitForChild("RarityInfo"))
MutationInfo = require(Modules:WaitForChild("MutationInfo"))
ItemInfo = require(Modules:WaitForChild("ItemInfo"))
PlayerData = require(LocalPlayer:WaitForChild("PlayerData"))
local ClientScript = LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("ClientScript")
local AccountGroup
FishState = require(ClientScript:WaitForChild("Modules"):WaitForChild("FishState"))
Aquariums = workspace:WaitForChild("NoTouchy"):WaitForChild("Aquariums")
local jo = "Claw Fishing"
jb = "https://discord.gg/ehKVq7pf7v"
i2 = "https://rscripts.net/@Ouroboros"
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
pcall(fn233)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
ie = fn258
i0 = fn472
iK = fn417
ix = fn400
jc = "#7fd47f"
i5 = "#6ec1ff"
iY = "#e8a34d"
iS = "#8b93a3"
iL = fn17
ip = fn348
iW = fn611
iz = fn20
h5 = fn297
i6 = fn36
iI = fn514
h9 = fn478
local jr = {}
local js = {}
for k, v in pairs(FishInfo.Fish) do
    local jf_2 = RarityInfo.rarityNames[v.tier]
    if jf_2 and not js[jf_2] then
        js[jf_2] = true
        table.insert(jr, jf_2)
    end
end
table.sort(jr)
local jf_3 = {}
for k in pairs(MutationInfo.List) do
    table.insert(jf_3, k)
end
io, ig, h7, je, i9, i1, iV, ij, i3, iO, iC, i4, iE, h8, iG, iZ, iv, is = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
table.sort(jf_3)
local function jj_3(a_)
    local kx = {}
    for k in pairs(a_) do
        table.insert(kx, k)
    end
    table.sort(kx, function(a2, a3)
        return a_[a2].Price > a_[a3].Price
    end)
    return kx
end
local jn = jj_3(ItemInfo.Claws)
local jm_3 = jj_3(ItemInfo.Boats)
local jl = jj_3(ItemInfo.Cranes)
ij = fn65
i3 = fn202
io = 1.35
ig = 0.3
h7 = 0
je = {}
i9 = 0
i1 = "none"
iV = "idle"
iO = fn27
iC = function(bP)
    local lf_1
    local le_1
    local ld_1
    local lb = ip("MaxFightTime", 30)
    local lc = os.clock()
    while os.clock() - lc < lb do
        ld_1, le_1, lf_1 = pcall(function()
            return ConfirmCatch:InvokeServer(bP)
        end)
        if ld_1 and le_1 then
            i9 += 1
            local ld_2 = typeof(lf_1) == "table" and lf_1.species
            if ld_2 then
                i1 = lf_1.species
            end
            iV = "caught"
            return true
        end
        if Library.Unloaded then
            return false
        end
        task.wait(ig)
    end
    pcall(function()
        Giveup:FireServer()
    end)
    je[bP] = os.clock() + 120
    iV = "fight timed out"
    return false
end
i4 = function()
    local li
    local ll_4
    local lj = h9()
    local lj_1
    if not lj then
        local lk_1 = iI() and "no claw on boat"
        iV = lk_1 or "no boat found"
        return
    end
    if next(FishState.activeFish) == nil then
        iV = "no fish data"
        return
    end
    li = iO()
    if not li then
        iV = "no fish matches filter"
        return
    end
    if not FishState.activeFish[li] then
        return
    end
    local AlignPosition = lj:FindFirstChildOfClass("AlignPosition")
    local ll_2 = AlignPosition and AlignPosition.Enabled
    if AlignPosition then
        AlignPosition.Enabled = false
    end
    local ll_3 = math.max(ip("ApproachTime", 0.4), io - (os.clock() - h7))
    local ln = os.clock()
    local ln_1
    while os.clock() - ln < ll_3 do
        local lo = FishState.activeFish[li]
        if not lo then
            break
        end
        lj.CFrame = CFrame.new(ij(lo))
        lj.AssemblyLinearVelocity = Vector3.zero
        task.wait()
    end
    ll_4, ln_1, lj_1 = pcall(function()
        return CatchFish:InvokeServer(li)
    end)
    h7 = os.clock()
    if not ll_4 then
        iV = "catch error: " .. tostring(ln_1)
    elseif ln_1 then
        iV = "hooked " .. tostring(lj_1)
    else
        iV = "rejected: " .. tostring(lj_1)
    end
    if AlignPosition then
        AlignPosition.Enabled = ll_2
    end
    je[li] = os.clock() + 10
    local lj_2 = os.clock()
    for k, v in pairs(je) do
        if v <= lj_2 then
            je[k] = nil
        end
    end
    if ll_4 and ln_1 then
        iC(li)
    end
end
iE = fn616
h8 = fn423
iG = fn420
iZ = fn334
iv = fn245
is = fn398
local Window = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = "https://discord.gg/ehKVq7pf7v | Claw Fishing",
    Icon = 18657887261,
    NotifySide = "Right",
    ShowCustomCursor = false
})
local js_1 = {
    Info = Window:AddTab("Info", "info"),
    Fishing = Window:AddTab("Fishing", "anchor"),
    Aquarium = Window:AddTab("Aquarium", "fish"),
    Shop = Window:AddTab("Shop", "shopping-bag"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in js_1 do
    fn259(v)
end
ib, AccountGroup, GameInfoGroup, Label, iD, jh_2 = nil, nil, nil, nil, nil, nil
local jf_4 = 6
repeat
    local jk_3 = (jf_4 * 1 + 0) % 3 + 1
    if jk_3 <= 2 then
        if jk_3 <= 1 then
            local jk_4 = {
                "usifcxrfef",
                "vnsvqa",
                "vhiruxnbtw",
                "nlzljgbylnk",
                "tacppcl",
                "ifwdgqaf",
                "cen",
                "dwlyryeoazx",
                "ddkoq",
                "qrpk",
                "bpkxcnapdg"
            }
            local nK = jf_4
            local jt_1 = jk_4[nK % 11 + 1]
            if jt_1:len() >= jt_1:reverse():rep(nK % 3 + 2):len() then
                jc = "Unknown"
                pcall(fn543)
                iK = GameInfoGroup.Info:AddLeftGroupbox("Account", "circle-user")
                iK:AddLabel(ib("User", js_1.Name, AccountGroup), true)
                iK:AddLabel(ib("Status", "Keyless", AccountGroup), true)
                iK:AddLabel(ib("Executor", jc, AccountGroup), true)
                ix = GameInfoGroup.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                ix:AddLabel(iY(LocalPlayer .. " [" .. tostring(game.PlaceId) .. "]", Label), true)
                ix:AddLabel(ib("Place ID", tostring(game.PlaceId), Label), true)
                jo = ix:AddLabel(ib("Session time", "0s", i5), true)
            else
                ib = "Unknown"
                pcall(fn543)
                AccountGroup = js_1.Info:AddLeftGroupbox("Account", "circle-user")
                AccountGroup:AddLabel(ix("User", LocalPlayer.Name, jc), true)
                AccountGroup:AddLabel(ix("Status", "Keyless", jc), true)
                AccountGroup:AddLabel(ix("Executor", ib, jc), true)
                GameInfoGroup = js_1.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                GameInfoGroup:AddLabel(iK(jo .. " [" .. tostring(game.PlaceId) .. "]", i5), true)
                GameInfoGroup:AddLabel(ix("Place ID", tostring(game.PlaceId), i5), true)
                Label = GameInfoGroup:AddLabel(ix("Session time", "0s", iY), true)
            end
            jf_4 = (jf_4 + 4) % 12
        else
            local jk_5 = (vector.create((jf_4 * 5 + 2) % 11 + 1, (jf_4 * 6 + 8) % 13 + 1, (jf_4 * 4 + 8) % 17 + 1))
            local jt_2 = (vector.create((jf_4 * 3 + 4) % 11 + 1, (jf_4 * 6 + 5) % 13 + 1, (jf_4 * 5 + 4) % 17 + 1))
            local ju_1 = (vector.create((jf_4 * 2 + 3) % 11 + 1, (jf_4 * 11 + 8) % 13 + 1, (jf_4 * 14 + 17) % 17 + 1))
            local jv_1 = (vector.create((jf_4 * 3 + 6) % 11 + 1, (jf_4 * 9 + 2) % 13 + 1, (jf_4 * 9 + 5) % 17 + 1))
            if vector.dot(vector.cross(jk_5, jt_2), (vector.cross(ju_1, jv_1))) == vector.dot(jk_5, ju_1) * vector.dot(jt_2, jv_1) - vector.dot(jk_5, jv_1) * vector.dot(jt_2, ju_1) then
                iD = tostring(game.JobId)
            else
                ib = tostring(game.JobId)
            end
            jf_4 = (jf_4 + 1) % 12
        end
    else
        local jk_6 = {
            "lqjs",
            "lqctg",
            "cmmrzavgcu",
            "adq",
            "ujjnqna",
            "mtgig",
            "pqdnnyqjajg",
            "rcvwweu",
            "aqnq",
            "faxtczxn"
        }
        if jk_6[(jf_4 * 38 + 37) % 10 + 1] <= jk_6[(jf_4 * 38 + 37) % 10 + 1] then
            jh_2 = #iD > 18
        else
            iD = #jh_2 > 18
        end
        jf_4 = (jf_4 + 4) % 12
    end
until (jf_4 * 7 + 5) % 12 == 2
if jh_2 then
    local jf_5 = 3
    repeat
        if (jf_5 * 2 + 4) * 16 % 3 == ((jf_5 * 2 + 4) * 16 + 5) % 3 then
            iD = string.sub(jh_2, 1, 18) .. "..."
        else
            jh_2 = string.sub(iD, 1, 18) .. "..."
        end
        jf_5 = (jf_5 + 0) % 4
    until (jf_5 * 3 + 2) % 4 == 3
end
local jf_6 = jh_2 or iD
FaqGroup, Label2, iq, ik, Label3, AutoUpgradeAquariumGroup, Label4, Label5, AutoBuyClawGroup, ih, ic, iu, connection, ja, h4, iQ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
GameInfoGroup:AddLabel(ix("Server", jf_6, iS), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
local OuroborosHubGroup = js_1.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = i0 })
local ScriptsGroup = js_1.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(iK("Included in this hub", iS), true)
ScriptsGroup:AddLabel(iK(jo, i5), true)
local FeaturesGroup = js_1.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(iK("Auto Claw Fishing", i5), true)
FeaturesGroup:AddLabel(iK("Aquarium Automation", jc), true)
FeaturesGroup:AddLabel(iK("Auto Buy Gear", iY), true)
FeaturesGroup:AddLabel(iK("Misc Utilities", iS), true)
local SocialsGroup = js_1.Info:AddRightGroupbox("Socials", "link")
if ((AutoBuyClawGroup or AutoUpgradeAquariumGroup) and (iu and iQ) and (not AutoBuyClawGroup and not iQ and (AutoUpgradeAquariumGroup or not AutoUpgradeAquariumGroup)) or (not AutoBuyClawGroup and iQ and (not iu or AutoBuyClawGroup) or (not AutoUpgradeAquariumGroup or not AutoBuyClawGroup) and (iQ and iu))) and (not AutoUpgradeAquariumGroup and not AutoUpgradeAquariumGroup and (not iu and not iu) and (iu and not AutoBuyClawGroup or (iu or not AutoUpgradeAquariumGroup)) or (not AutoBuyClawGroup or iQ or iu and AutoUpgradeAquariumGroup or (not AutoUpgradeAquariumGroup and iu or not AutoBuyClawGroup and not AutoBuyClawGroup))) or not (((AutoBuyClawGroup or AutoUpgradeAquariumGroup) and (iu and iQ) and (not AutoBuyClawGroup and not iQ and (AutoUpgradeAquariumGroup or not AutoUpgradeAquariumGroup)) or (not AutoBuyClawGroup and iQ and (not iu or AutoBuyClawGroup) or (not AutoUpgradeAquariumGroup or not AutoBuyClawGroup) and (iQ and iu))) and (not AutoUpgradeAquariumGroup and not AutoUpgradeAquariumGroup and (not iu and not iu) and (iu and not AutoBuyClawGroup or (iu or not AutoUpgradeAquariumGroup)) or (not AutoBuyClawGroup or iQ or iu and AutoUpgradeAquariumGroup or (not AutoUpgradeAquariumGroup and iu or not AutoBuyClawGroup and not AutoBuyClawGroup)))) then
    SocialsGroup:AddButton({ Text = "Discord", Func = i0 })
    SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
    FaqGroup = js_1.Info:AddRightGroupbox("FAQ", "circle-help")
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
    jw = js_1.Fishing:AddLeftGroupbox("Auto Claw Fish", "anchor")
    jw:AddToggle("AutoClawFish", { Text = "Auto Claw Fish", Default = false })
    jw:AddSlider("ApproachTime", { Text = "Approach Time", Default = 0.4, Min = 0.2, Max = 3, Rounding = 1 })
    jw:AddSlider("MaxFightTime", { Text = "Max Fight Time", Default = 30, Min = 5, Max = 180, Rounding = 0 })
    jw:AddSlider("FishDelay", { Text = "Extra Loop Delay", Default = 0, Min = 0, Max = 15, Rounding = 1 })
    Label2 = jw:AddLabel(ix("Caught", "0", jc), true)
    iq = jw:AddLabel(ix("Last catch", "none", iY), true)
    ik = jw:AddLabel(ix("Status", "idle", iS), true)
else
    ix:AddButton({ Text = "Discord", Func = js_1 })
    ix:AddButton({ Text = "Rscripts", Func = onRscripts })
    jw = FaqGroup.Info:AddRightGroupbox("FAQ", "circle-help")
    jw:AddLabel("Where do I get a good config?", true)
    jw:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
    jw:AddLabel("How do I import / export configs?", true)
    jw:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
    jw:AddLabel("How do I report bugs?", true)
    jw:AddLabel("Join the Discord and post it in the bugs channel.", true)
    jw:AddLabel("How do I make suggestions?", true)
    jw:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
    jw:AddLabel("How do I get help or updates?", true)
    jw:AddLabel("Join the Discord, updates and support are posted there first.", true)
    ik = FaqGroup.Fishing:AddLeftGroupbox("Auto Claw Fish", "anchor")
    ik:AddToggle("AutoClawFish", { Text = "Auto Claw Fish", Default = false })
    ik:AddSlider("ApproachTime", { Max = 3, Min = 0.2, Text = "Approach Time", Rounding = 1, Default = 0.4 })
    ik:AddSlider("MaxFightTime", { Default = 30, Min = 5, Rounding = 0, Text = "Max Fight Time", Max = 180 })
    ik:AddSlider("FishDelay", { Min = 0, Text = "Extra Loop Delay", Rounding = 1, Default = 0, Max = 15 })
    iq = ik:AddLabel(jc("Caught", "0", iS), true)
    i0 = ik:AddLabel(jc("Last catch", "none", SocialsGroup), true)
    iY = ik:AddLabel(jc("Status", "idle", Label2), true)
end
local FishFilterGroup = js_1.Fishing:AddRightGroupbox("Fish Filter", "filter")
FishFilterGroup:AddToggle("CatchAnyFish", { Text = "Catch Any Fish", Default = true })
FishFilterGroup:AddDropdown("FishRarities", { Text = "Rarities", Values = jr, Default = {}, Multi = true })
FishFilterGroup:AddToggle("MutatedOnly", { Text = "Only Mutated Fish", Default = false })
local AutoBestFishGroup = js_1.Aquarium:AddLeftGroupbox("Auto Best Fish", "fish")
AutoBestFishGroup:AddToggle("AutoBestFish", { Text = "Auto Best Fish On Aquarium", Default = false })
AutoBestFishGroup:AddSlider("BestFishDelay", { Text = "Loop Delay", Default = 3, Min = 1, Max = 60, Rounding = 1 })
local AutoCollectMoneyGroup = js_1.Aquarium:AddLeftGroupbox("Auto Collect Money", "coins")
AutoCollectMoneyGroup:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
AutoCollectMoneyGroup:AddSlider("CollectDelay", { Text = "Loop Delay", Default = 3, Min = 0.5, Max = 60, Rounding = 1 })
Label3 = AutoCollectMoneyGroup:AddLabel(ix("Money", "0", jc), true)
AutoUpgradeAquariumGroup = js_1.Aquarium:AddRightGroupbox("Auto Upgrade Aquarium", "arrow-up-circle")
AutoUpgradeAquariumGroup:AddToggle("AutoUpgradeAquarium", { Text = "Auto Upgrade Aquarium", Default = false })
AutoUpgradeAquariumGroup:AddInput("UpgradeReserve", { Text = "Keep Money Reserve", Default = "0", Numeric = true, Finished = true })
AutoUpgradeAquariumGroup:AddSlider("UpgradeDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 120, Rounding = 1 })
Label4 = AutoUpgradeAquariumGroup:AddLabel(ix("Aquarium level", "0", i5), true)
Label5 = AutoUpgradeAquariumGroup:AddLabel(ix("Next upgrade", "maxed", iY), true)
AutoBuyClawGroup = js_1.Shop:AddLeftGroupbox("Auto Buy Claw", "grab")
AutoBuyClawGroup:AddToggle("AutoBuyClaw", { Text = "Auto Buy Best Affordable Claw", Default = false })
AutoBuyClawGroup:AddInput("ClawReserve", { Text = "Keep Money Reserve", Default = "0", Numeric = true, Finished = true })
local AutoBuyBoatGroup = js_1.Shop:AddLeftGroupbox("Auto Buy Boat", "sailboat")
AutoBuyBoatGroup:AddToggle("AutoBuyBoat", { Text = "Auto Buy Best Affordable Boat", Default = false })
AutoBuyBoatGroup:AddInput("BoatReserve", { Text = "Keep Money Reserve", Default = "0", Numeric = true, Finished = true })
local AutoBuyCraneGroup = js_1.Shop:AddRightGroupbox("Auto Buy Crane", "construction")
AutoBuyCraneGroup:AddToggle("AutoBuyCrane", { Text = "Auto Buy Best Affordable Crane", Default = false })
AutoBuyCraneGroup:AddInput("CraneReserve", { Text = "Keep Money Reserve", Default = "0", Numeric = true, Finished = true })
local ShopSettingsGroup = js_1.Shop:AddRightGroupbox("Shop Settings", "settings-2")
ShopSettingsGroup:AddToggle("AutoEquipBestGear", { Text = "Auto Equip Best Owned", Default = true })
ShopSettingsGroup:AddSlider("ShopDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 120, Rounding = 1 })
local MenuGroup = js_1.Settings:AddLeftGroupbox("Menu", "wrench")
if ((iQ and FishFilterGroup or (Label3 or not FishFilterGroup)) and (h4 and not Label3) or (Label4 or false or 77) and false) and (not Label4 and not Label4 and (h4 and 77) and ((not Label3 or h4) and (not Label3 and not Label3)) or (iQ and 77 or not Label4 and not h4 or not FishFilterGroup and FishFilterGroup and (not FishFilterGroup or not h4))) and not (((iQ and FishFilterGroup or (Label3 or not FishFilterGroup)) and (h4 and not Label3) or (Label4 or false or 77) and false) and (not Label4 and not Label4 and (h4 and 77) and ((not Label3 or h4) and (not Label3 and not Label3)) or (iQ and 77 or not Label4 and not h4 or not FishFilterGroup and FishFilterGroup and (not FishFilterGroup or not h4)))) then
    connection:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { NoUI = true, Text = "Menu keybind", Default = "RightShift" })
    iQ = tick()
    ih = tick()
    pcall(function()
        for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
            local my = v
            pcall(function()
                my:Disable()
            end)
        end
    end)
    iu = fn608
    ic = MenuGroup.InputBegan:Connect(onInputBegan)
    MenuGroup.InputChanged:Connect(onInputChanged)
else
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    ih = tick()
    ic = tick()
    pcall(function()
        for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
            local my = v
            pcall(function()
                my:Disable()
            end)
        end
    end)
    iQ = fn608
    iu = UserInputService.InputBegan:Connect(onInputBegan)
    connection = UserInputService.InputChanged:Connect(onInputChanged)
end
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
Library.ToggleKeybind = Options.MenuKeybind
Library:OnUnload(fn56)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Mint")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/ClawFishing")
SaveManager:BuildConfigSection(js_1.Settings)
ThemeManager:ApplyToTab(js_1.Settings)
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
task.spawn(worker)
ja = os.clock()
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(function()
    local mV = false
    repeat
        if not Library.Unloaded then
            if iL("AutoUpgradeAquarium") then
                local mP = h5()
                local mQ = mP and mP.Aquarium
                local mR = mP
                if mR then
                    mR = mP.Timers
                end
                local mP_1 = mR
                local mO = h8()
                if mO and mQ then
                    if mQ.UpgradeReady then
                        pcall(function()
                            fireproximityprompt(mO)
                        end)
                    else
                        local mQ_2 = mP_1
                        if mQ_2 then
                            mQ_2 = (mP_1.AquariumUpgrade or 0) > 0
                        end
                        if not mQ_2 then
                            local mP_2 = iG()
                            local mQ_3 = ip("UpgradeReserve", 0)
                            local mR_2 = mP_2 and i6() - mP_2 >= mQ_3
                            if mR_2 then
                                pcall(function()
                                    fireproximityprompt(mO)
                                end)
                            end
                        end
                    end
                end
            end
            task.wait(ip("UpgradeDelay", 5))
        else
            mV = true
        end
    until mV
end)
h4 = {
    {
        toggle = "AutoBuyClaw",
        reserve = "ClawReserve",
        kind = "Claw",
        names = jn,
        list = ItemInfo.Claws
    },
    {
        toggle = "AutoBuyBoat",
        reserve = "BoatReserve",
        kind = "Boat",
        names = jm_3,
        list = ItemInfo.Boats
    },
    {
        toggle = "AutoBuyCrane",
        reserve = "CraneReserve",
        kind = "Crane",
        names = jl,
        list = ItemInfo.Cranes
    }
}
task.spawn(function()
    while not Library.Unloaded do
        for k, v in h4 do
            local m7 = v
            if iL(m7.toggle) then
                local mW = iv(m7.names, m7.list, m7.kind, ip(m7.reserve, 0))
                if mW then
                    pcall(function()
                        Buy:FireServer(m7.kind, mW)
                    end)
                    task.wait(1)
                elseif iL("AutoEquipBestGear") then
                    local mX = is(m7.names, m7.kind)
                    local mY = h5()
                    local mZ
                    if mY and mY.Boat then
                        local m0 = m7.kind == "Claw" and mY.Boat.Claw
                        if not m0 then
                            m0 = m7.kind == "Crane" and mY.Boat.Crane
                        end
                        if not m0 then
                            m0 = mY.Boat.Hull
                        end
                        mZ = m0
                    end
                    if mX and mX ~= mZ then
                        pcall(function()
                            Equip:FireServer(m7.kind, mX)
                        end)
                        task.wait(0.5)
                    end
                end
            end
        end
        task.wait(ip("ShopDelay", 5))
    end
end)
Library:Notify("Claw Fishing loaded")
