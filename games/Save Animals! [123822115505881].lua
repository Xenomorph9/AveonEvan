local i7
local iP
local iw
local jd
local iV
local VirtualUser
local Entities
local iI
local jp
local i6
local Bases2
local jv
local iv
local jc
local iU
local connection
local DataService
local iH
local i5
local iN
local ju
local iu
local CollectionService
local Rarities
local iA
local jh
local iZ
local iG
local RemoteBank
local LocalPlayer
local iM
local jt
local it
local ja
local iS
local iz
local jg
local iY
local iF
local connection2
local i3
local iL
local js
local is
local SharedFunctions
local iR
local iy
local jf
local Bases
local iE
local jl
local jr
local ir
local i8
local iQ
local Label
local je
local iW
local Library
local jk
local i1
local iJ
local Toggles
local function fn2(aH, aI)
    return string.format('<font color="%s">%s</font>', aI, aH)
end
local function onSellInterval(e3)
    iZ = e3
end
local function fn17()
    iQ = false
end
local function fn18(bA)
    local lj = Bases2:FindFirstChild(tostring(bA))
    local lk = lj and lj:FindFirstChild("Zone")
    return lk
end
local function onAutoRebirth(fh)
    iM = fh
end
local function fn31()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    ju = tick()
end
local function fn36()
    local ms = {}
    local Backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
    local Character = LocalPlayer.Character
    for i, v in ipairs({ Backpack, Character }) do
        if v then
            for i, child in ipairs(v:GetChildren()) do
                if child:IsA("Tool") then
                    ms[child] = true
                end
            end
        end
    end
    return ms
end
local function onRscripts()
    if setclipboard then
        setclipboard(iU)
    elseif toclipboard then
        toclipboard(iU)
    end
    Library:Notify("Copied Rscripts profile to clipboard")
end
local function fn66()
    setclipboard(iY)
    Library:Notify("Copied Discord invite to clipboard")
end
local function onCopyJoinScript_JobID()
    local kW = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, ir)
    if setclipboard then
        setclipboard(kW)
    elseif toclipboard then
        toclipboard(kW)
    end
    Library:Notify("Copied join script to clipboard")
end
local function onCollectInterval(eb)
    je = eb
end
local function worker5()
    while not Library.Unloaded do
        local nH = iM and iG()
        if nH then
            pcall(function()
                RemoteBank.Rebirth:InvokeServer()
            end)
            task.wait(1)
        end
        task.wait(2)
    end
end
local function fn160()
    local k4 = {}
    local la = 1
    while la <= 11 do
        local lc = la
        local k5 = Bases[lc]
        local k6 = k5 and k5.BaseName and Bases2:FindFirstChild(tostring(lc))
        if k6 then
            k4[#k4 + 1] = lc .. " - " .. k5.BaseName
        end
        la += 1
    end
    return k4
end
local function fn173()
    iF = false
    autoReturnEnabled = false
    jl = false
    iM = false
    iE = false
    if connection then
        connection:Disconnect()
    end
    if connection2 then
        connection2:Disconnect()
    end
end
local function fn202(cb)
    local lU = os.clock()
    local lW = lU + (cb or 5)
    while true do
        local lU_1 = ja() and os.clock() < lW and not Library.Unloaded
        if lU_1 then
            task.wait(0.1)
            continue
        end
        break
    end
end
local function worker2()
    while not Library.Unloaded do
        if iF then
            if ja() then
                iL()
                pcall(iu)
                iz(5)
                jv()
            else
                local l5 = iN()
                local l6 = l5[1]
                if l6 then
                    iL()
                    jg(l6)
                    jv()
                else
                    task.wait(1)
                end
            end
        else
            task.wait(0.5)
        end
    end
end
local function onCollectPriority(d9)
    jh = d9
end
local function onSellFromRanch(eZ)
    iV = eZ
end
local function onAutoCollectCash(d7)
    jl = d7
end
local function fn226()
    local kK = jf()
    local kL = kK and kK:FindFirstChild("TeleportPart")
    local kL_1 = iH()
    if kL and kL_1 then
        kL_1.CFrame = kL.CFrame + Vector3.new(0, 3, 0)
    end
end
local function worker3()
    while not Library.Unloaded do
        if jl then
            pcall(iI)
        end
        task.wait(je)
    end
end
local function onSaveBaseSelect(cF)
    iv = iW(cF)
end
local function fn266()
    for i, v in ipairs(i8()) do
        if not jl or Library.Unloaded then
            break
        end
        iL()
        i6(v.standId)
        jv()
        task.wait(0.05)
    end
end
local function fn273(cQ)
    local l8 = iA(cQ)
    local l9 = l8 and Rarities[l8]
    local l8_1 = l9
    if l9 then
        l9 = l8_1.Weight
    end
    return l9 or 0
end
local function fn275(bx)
    local lg = tonumber(string.match(tostring(bx), "^(%d+)"))
    return lg or 1
end
local function onInputBegan()
    it = tick()
end
local function onMaxUpgradeLevel(fH)
    iw = fH
end
local function fn330(cY)
    local mb = cY:GetAttribute("RanchCashBase") or 0
    local mb_1 = cY:GetAttribute("RanchEarningsPerSecond") or 0
    local mb_2 = cY:GetAttribute("RanchCashStartedAt") or workspace:GetServerTimeNow()
    local mb_3 = cY:GetAttribute("RanchOfflineEarnings") or 0
    return mb + mb_3 + mb_1 * math.floor(math.max(workspace:GetServerTimeNow() - mb_2, 0))
end
local function fn339(ab)
    local kA = Entities[ab]
    return kA and kA.Rarity
end
local function fn344(bF, bG)
    local lm = bF.CFrame:PointToObjectSpace(bG)
    local ln = bF.Size / 2
    local lo = math.abs(lm.X) <= ln.X and math.abs(lm.Y) <= ln.Y and math.abs(lm.Z) <= ln.Z
    return lo
end
local function onSellRarityFilter(e0)
    i5 = js(e0)
end
local function fn375()
    local kE_1
    local kD = jk and jk.Parent
    local kD_1
    if kD then
        return jk
    end
    kD_1, kE_1 = pcall(function()
        return RemoteBank.GetPlot:InvokeServer()
    end)
    local kF = kD_1 and typeof(kE_1) == "Instance"
    if kF then
        jk = kE_1
    end
    return jk
end
local function fn419()
    local mh = {}
    for i, v in ipairs(CollectionService:GetTagged("RanchEntity")) do
        if v:GetAttribute("RanchOwnerUserId") == LocalPlayer.UserId then
            local attr2 = v:GetAttribute("RanchSlotNumber")
            local attr = v:GetAttribute("EntityName")
            if attr2 and attr then
                mh[#mh + 1] = { standId = attr2, cash = iJ(v), rarity = jr(attr) }
            end
        end
    end
    if jh == "Lowest Money" then
        table.sort(mh, function(df, dg)
            return df.cash < dg.cash
        end)
    elseif jh == "Best Rarity Pet" then
        table.sort(mh, function(dd, de)
            return dd.rarity > de.rarity
        end)
    else
        table.sort(mh, function(da, db)
            return da.cash > db.cash
        end)
    end
    return mh
end
local function fn425(aB)
    local DiscordGroup = aB:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = iP })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = iP })
end
local function onAutoUpgradePets(fF)
    iE = fF
end
local function onInputChanged(fW)
    local UserInputType = fW.UserInputType
    local n4 = UserInputType == Enum.UserInputType.MouseMovement
    local n8 = if n4 then 1 else 0
    local n6 = 2966 * n8 + 2089 * (1 - n8)
    local n7 = 3496 * n8 + 3416 * (1 - n8)
    if not ((n6 * 958 + n7 * 2651 + n6 * n7) % 16777213 == 5701247) then
        n4 = UserInputType == Enum.UserInputType.Gamepad1
    end
    if n4 then
        it = tick()
    end
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local n9 = tick() - it
            local oa = tick() - ju
            if n9 >= 300 and oa >= 60 then
                pcall(i3)
            else
                if n9 < 300 and oa >= 300 then
                    pcall(i3)
                end
            end
        end
    end
end
local function onSaveRarityFilter(cI)
    iy = js(cI)
end
local function fn479()
    local nA = (DataService.client:get("rebirth"))
    local nG = if nA then 1 else 0
    local nE = 472 * nG + 446 * (1 - nG)
    local nF = 2896 * nG + 3395 * (1 - nG)
    if not ((nE * 2767 + nF * 3656 + nE * nF) % 16777213 == 13260712) then
        nA = 0
    end
    local nB = nA
    local nA_1 = DataService.client:get("cash") or 0
    return nA_1 >= SharedFunctions.GetRebirthGoalFromCount(nB)
end
local function worker6()
    while not Library.Unloaded do
        if iE then
            pcall(is)
        end
        task.wait(2)
    end
end
local function fn498()
    local Character = LocalPlayer.Character
    local ka = Character and Character:FindFirstChild("HumanoidRootPart")
    return ka
end
local function onUnload()
    Library:Unload()
end
local function fn539()
    local EntitiesFolder = workspace:FindFirstChild("EntitiesFolder")
    if not EntitiesFolder then
        return nil
    end
    for i, child in ipairs(EntitiesFolder:GetChildren()) do
        local lM_1 = child:IsA("Model") and child:GetAttribute("CarriedByUserId") == LocalPlayer.UserId
        if lM_1 then
            return child
        end
    end
    return nil
end
local function onAutoSellAnimals(eX)
    jd = eX
end
local function fn561()
    local kP_1
    local kO_1
    if identifyexecutor then
        kP_1, kO_1 = identifyexecutor()
        local kQ = kP_1 ~= ""
        local kR = type(kP_1) == "string" and kQ
        if kR then
            local kQ_1 = type(kO_1) == "string" and kO_1 ~= "" and kP_1 .. " " .. kO_1
            local kO_2 = kQ_1
            local kV = if kO_2 then 1 else 0
            local kT = 1796 * kV + 2472 * (1 - kV)
            local kU = 1203 * kV + 2411 * (1 - kV)
            if not ((kT * 3505 + kU * 2620 + kT * kU) % 16777213 == 11607428) then
                kO_2 = kP_1
            end
            jc = kO_2
        end
    end
end
local function fn580(K)
    return next(K) == nil
end
local function worker()
    local k1_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local k0 = math.floor(os.clock() - i1)
        if k0 < 60 then
            k1_1 = k0 .. "s"
        elseif k0 < 3600 then
            k1_1 = string.format("%dm %ds", k0 // 60, k0 % 60)
        else
            k1_1 = string.format("%dh %dm", k0 // 3600, k0 % 3600 // 60)
        end
        Label:SetText(iS("Session time", k1_1, jp))
    end
end
local function onAutoSaveAnimals(cD)
    iF = cD
end
local function fn597()
    local km = {}
    for k, v in pairs(Entities) do
        local kn_1 = type(v) == "table" and v.Rarity
        if kn_1 then
            km[v.Rarity] = true
        end
    end
    local kn_2 = {}
    for k in pairs(km) do
        kn_2[#kn_2 + 1] = k
    end
    table.sort(kn_2)
    return kn_2
end
local function fn635(ds)
    local Backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
    local Character = LocalPlayer.Character
    for i, v in ipairs({ Backpack, Character }) do
        if v then
            for i, child in ipairs(v:GetChildren()) do
                local mI_1 = child:IsA("Tool") and not ds[child]
                if mI_1 then
                    return child
                end
            end
        end
    end
    return nil
end
local function fn639()
    while iQ and not Library.Unloaded do
        task.wait()
    end
    iQ = true
end
local function worker4()
    while not Library.Unloaded do
        if jd then
            pcall(iR)
            if iV then
                pcall(jt)
            end
        end
        task.wait(1)
    end
end
local function fn657(aK, aL, aM)
    return string.format("<b>%s</b> %s %s", aK, i7("-", "#5a6070"), i7(aL, aM))
end
local function fn663(F)
    local kc = {}
    if type(F) == "table" then
        for k, v in pairs(F) do
            if v == true then
                kc[k] = true
            elseif type(v) == "string" then
                kc[v] = true
            end
        end
    end
    return kc
end
ir = nil
is = nil
it = nil
iu = nil
iv = nil
iw = nil
Label = nil
iy = nil
iz = nil
iA = nil
connection = nil
Library = nil
iE = nil
iF = nil
iG = nil
iH = nil
iI = nil
iJ = nil
iL = nil
iM = nil
iN = nil
Bases2 = nil
iP = nil
iQ = nil
iR = nil
iS = nil
Rarities = nil
iU = nil
iV = nil
iW = nil
Bases = nil
iY = nil
iZ = nil
Entities = nil
i1 = nil
i3 = nil
LocalPlayer = nil
i5 = nil
i6 = nil
i7 = nil
i8 = nil
SharedFunctions = nil
ja = nil
CollectionService = nil
jc = nil
jd = nil
local iC, iK, i_, i2
je = nil
jf = nil
jg = nil
jh = nil
DataService = nil
VirtualUser = nil
jk = nil
jl = nil
connection2 = nil
RemoteBank = nil
jp = nil
Toggles = nil
jr = nil
js = nil
jt = nil
ju = nil
jv = nil
local jo
local jK_1
local jF_1
local jA_1
local jC_1
local jy_1
VirtualUser, CollectionService, LocalPlayer, iY, iU, jA_1, Library = nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local jz_1
local UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
CollectionService = game:GetService("CollectionService")
LocalPlayer = Players.LocalPlayer
iY = "https://discord.gg/ehKVq7pf7v"
iU = "https://rscripts.net/@Ouroboros"
if ("Save Animals!" and (false or Library) or (not Library or false) and (UserInputService or 15)) and (UserInputService and not UserInputService or (UserInputService or jA_1) or ("Save Animals!" or jA_1 and UserInputService)) or not (("Save Animals!" and (false or Library) or (not Library or false) and (UserInputService or 15)) and (UserInputService and not UserInputService or (UserInputService or jA_1) or ("Save Animals!" or jA_1 and UserInputService))) then
    jA_1 = "Save Animals!"
end
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
if not Library then
    return
end
Toggles, RemoteBank, DataService, SharedFunctions, Entities, Bases, Rarities, Bases2, iQ, jk, jF_1, iH, js, i_, iL, jv, iA, jf, iu, iP = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
local Options = Library.Options
Toggles = Library.Toggles
RemoteBank = require(ReplicatedStorage.RemoteBank)
DataService = require(ReplicatedStorage.Utilities.DataService)
SharedFunctions = require(ReplicatedStorage.DataModules.SharedFunctions)
Entities = require(ReplicatedStorage.DataModules.Entities)
Bases = require(ReplicatedStorage.DataModules.Bases)
Rarities = require(ReplicatedStorage.DataModules.Rarities)
Bases2 = workspace:WaitForChild("Map"):WaitForChild("Bases")
iH = fn498
js = fn663
i_ = fn580
iQ = false
iL = fn639
jv = fn17
iA = fn339
jf = fn375
iu = fn226
local Window = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = iY, Copyable = true }, "|", jA_1 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
if ((SharedFunctions or SharedFunctions) and (jk or jk) or (SharedFunctions and not jk or not iH and not SharedFunctions) or (not SharedFunctions or not jk) and (jk and SharedFunctions) and ((not jk or SharedFunctions) and (SharedFunctions or SharedFunctions))) and not ((SharedFunctions or SharedFunctions) and (jk or jk) or (SharedFunctions and not jk or not iH and not SharedFunctions) or (not SharedFunctions or not jk) and (jk and SharedFunctions) and ((not jk or SharedFunctions) and (SharedFunctions or SharedFunctions))) then
    local jx_1 = {
        Info = jF_1:AddTab("Info", "info"),
        Settings = jF_1:AddTab("Settings", "settings"),
        Main = jF_1:AddTab("Main", "paw-print")
    }
else
    jF_1 = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "paw-print"),
        Settings = Window:AddTab("Settings", "settings")
    }
end
if ((iH and false) or iP and Bases and (iH and not iH)) and not ((iH and false) or iP and Bases and (iH and not iH)) then
    iP.Saving = iP.Main:AddSubTab("Saving", "heart-handshake")
    iP.Ranch = iP.Main:AddSubTab("Ranch", "coins")
    jC_1 = fn66
    jF_1 = fn425
else
    jF_1.Saving = jF_1.Main:AddSubTab("Saving", "heart-handshake")
    jF_1.Ranch = jF_1.Main:AddSubTab("Ranch", "coins")
    iP = fn66
    jC_1 = fn425
end
for k, v in { jF_1.Saving, jF_1.Ranch, jF_1.Settings } do
    jC_1(v)
end
jK_1, jp, jc, jy_1, Label, ir, jz_1, i7, iS = nil, nil, nil, nil, nil, nil, nil, nil, nil
i7 = fn2
if false and not jy_1 or (jy_1 or false) or (jp or jy_1) and (not jy_1 and jy_1) or not (false and not jy_1 or (jy_1 or false) or (jp or jy_1) and (not jy_1 and jy_1)) then
    iS = fn657
end
local jw_1 = "#7fd47f"
if ((jy_1 or not Label) and (jy_1 and jy_1) or (jy_1 or Label) and (jy_1 or Label)) and (not Label and not jy_1 or Label and not Label or (not Label and jy_1 or jy_1 and not jy_1)) or ((not Label and Label or not jy_1 and jy_1) and (not jy_1 or not Label or (not jy_1 or not jy_1)) or (jy_1 or Label) and (not Label or not jy_1) and (jy_1 or not jy_1 or (not jy_1 or jy_1))) or not (((jy_1 or not Label) and (jy_1 and jy_1) or (jy_1 or Label) and (jy_1 or Label)) and (not Label and not jy_1 or Label and not Label or (not Label and jy_1 or jy_1 and not jy_1)) or ((not Label and Label or not jy_1 and jy_1) and (not jy_1 or not Label or (not jy_1 or not jy_1)) or (jy_1 or Label) and (not Label or not jy_1) and (jy_1 or not jy_1 or (not jy_1 or jy_1)))) then
    jK_1 = "#6ec1ff"
else
    i7 = "#6ec1ff"
end
jp = "#e8a34d"
local jJ = "#8b93a3"
jc = "Unknown"
pcall(fn561)
local AccountGroup = jF_1.Info:AddLeftGroupbox("Account", "circle-user")
AccountGroup:AddLabel(iS("User", LocalPlayer.Name, jw_1), true)
AccountGroup:AddLabel(iS("Status", "Keyless", jw_1), true)
AccountGroup:AddLabel(iS("Executor", jc, jw_1), true)
local GameInfoGroup = jF_1.Info:AddLeftGroupbox("Game Info", "gamepad-2")
GameInfoGroup:AddLabel(i7(jA_1 .. " [" .. tostring(game.PlaceId) .. "]", jK_1), true)
GameInfoGroup:AddLabel(iS("Place ID", tostring(game.PlaceId), jK_1), true)
Label = GameInfoGroup:AddLabel(iS("Session time", "0s", jp), true)
ir = tostring(game.JobId)
if (not i7 or i7 or not GameInfoGroup and not ir) and (GameInfoGroup or ir or GameInfoGroup and not GameInfoGroup) and ((not ir and not GameInfoGroup or i7 and ir) and (i7 and not ir or (GameInfoGroup or GameInfoGroup))) or ((not ir or ir) and (not i7 and i7) and (GameInfoGroup and i7 or (GameInfoGroup or GameInfoGroup)) or ((not i7 or ir) and (GameInfoGroup and not ir) or (ir or i7 or not GameInfoGroup and i7))) or not ((not i7 or i7 or not GameInfoGroup and not ir) and (GameInfoGroup or ir or GameInfoGroup and not GameInfoGroup) and ((not ir and not GameInfoGroup or i7 and ir) and (i7 and not ir or (GameInfoGroup or GameInfoGroup))) or ((not ir or ir) and (not i7 and i7) and (GameInfoGroup and i7 or (GameInfoGroup or GameInfoGroup)) or ((not i7 or ir) and (GameInfoGroup and not ir) or (ir or i7 or not GameInfoGroup and i7)))) then
    jz_1 = #ir > 18
else
    ir = #jz_1 > 18
end
if jz_1 then
    local jw_2 = 2
    repeat
        if (jw_2 * 2 + 9) * 4 % 3 == ((jw_2 * 2 + 9) * 4 + 4) % 3 then
            ir = string.sub(jz_1, 1, 18) .. "..."
        else
            jz_1 = string.sub(ir, 1, 18) .. "..."
        end
        jw_2 = (jw_2 + 7) % 8
    until (jw_2 * 5 + 0) % 8 == 5
end
local jw_3 = jz_1
local j2 = if jw_3 then 1 else 0
local j0 = 1297 * j2 + 2315 * (1 - j2)
local j1 = 2792 * j2 + 521 * (1 - j2)
if not ((j0 * 3268 + j1 * 1364 + j0 * j1) % 16777213 == 11668108) then
    jw_3 = ir
end
i1, iF, iy, iv, jh, jl, je, jd, i5, iZ, iV, iM, iE, iw, it, ju, connection, connection2, iW, iC, jo, iN, ja, iz, jg, jr, iJ, i8, iK, i2, i6, iI, iR, jt, iG, is, i3 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local jS = jw_3
GameInfoGroup:AddLabel(iS("Server", jS, jJ), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
i1 = os.clock()
task.spawn(worker)
local ScriptsGroup = jF_1.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(i7("Included in this hub", jJ), true)
ScriptsGroup:AddLabel(i7(jA_1, jK_1), true)
local FeaturesGroup = jF_1.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(i7("Auto Save Animals", jK_1), true)
FeaturesGroup:AddLabel(i7("Auto Collect Money from Pets", jp), true)
FeaturesGroup:AddLabel(i7("Auto Sell Animals", jp), true)
FeaturesGroup:AddLabel(i7("Auto Rebirth", jp), true)
FeaturesGroup:AddLabel(i7("Auto Upgrade Pets", jp), true)
FeaturesGroup:AddLabel(i7("Misc Utilities", jJ), true)
local SocialsGroup = jF_1.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = iP })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = jF_1.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = iP })
local FaqGroup = jF_1.Info:AddRightGroupbox("FAQ", "circle-help")
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
local AutoSaveAnimalsGroup = jF_1.Saving:AddLeftGroupbox("Auto Save Animals")
local FiltersGroup = jF_1.Saving:AddRightGroupbox("Filters")
iF = false
iy = {}
iv = 1
iW = fn275
iC = fn18
jo = fn344
iN = function()
    local lu_1
    local lq = {}
    local lr = iC(iv)
    if not lr then
        return lq
    end
    local EntitiesFolder = workspace:FindFirstChild("EntitiesFolder")
    if not EntitiesFolder then
        return lq
    end
    for i, child in ipairs(EntitiesFolder:GetChildren()) do
        local ls_1 = i_(iy) or iy[iA(child.Name)]
        if ls_1 then
            for i, child in ipairs(child:GetChildren()) do
                local lI = child
                local ProximityPrompt = lI:FindFirstChild("ProximityPrompt")
                local lt = ProximityPrompt and ProximityPrompt.Enabled and string.find(ProximityPrompt.ActionText, "Steal", 1, true)
                local lt_1
                if lt then
                    lt_1, lu_1 = pcall(function()
                        return lI:GetPivot()
                    end)
                    local lv = lt_1 and jo(lr, lu_1.Position)
                    if lv then
                        lq[#lq + 1] = { model = lI, prompt = ProximityPrompt }
                    end
                end
            end
        end
    end
    return lq
end
if (not OuroborosHubGroup and fn160 and (not OuroborosHubGroup and not OuroborosHubGroup) or (fn160 or iR) and (not OuroborosHubGroup and not iR)) and (not OuroborosHubGroup or iR or (false or not OuroborosHubGroup) or (OuroborosHubGroup or not iR or (iR or fn160))) or not ((not OuroborosHubGroup and fn160 and (not OuroborosHubGroup and not OuroborosHubGroup) or (fn160 or iR) and (not OuroborosHubGroup and not iR)) and (not OuroborosHubGroup or iR or (false or not OuroborosHubGroup) or (OuroborosHubGroup or not iR or (iR or fn160)))) then
    ja = fn539
    iz = fn202
    jg = function(ch)
        local lZ_2
        local lY = ch.model.Parent and ch.prompt.Parent and ch.prompt.Enabled
        local lY_3
        if not lY then
            return
        end
        lY_3, lZ_2 = pcall(function()
            return ch.model:GetPivot()
        end)
        local l_ = iH()
        if not (lY_3 and l_) then
            return
        end
        l_.CFrame = lZ_2 + Vector3.new(0, 3, 0)
        task.wait(0.1)
        if ch.prompt.Parent and ch.prompt.Enabled then
            pcall(function()
                fireproximityprompt(ch.prompt)
            end)
            task.wait(math.max(ch.prompt.HoldDuration + 0.05, 0.1))
            pcall(iu)
            iz(5)
        end
    end
else
    jg = fn539
    ja = fn202
    iz = function(ch)
        local lZ_1
        local lY = ch.model.Parent and ch.prompt.Parent and ch.prompt.Enabled
        local lY_1
        if not lY then
            return
        end
        lY_1, lZ_1 = pcall(function()
            return ch.model:GetPivot()
        end)
        local l_ = iH()
        if not (lY_1 and l_) then
            return
        end
        l_.CFrame = lZ_1 + Vector3.new(0, 3, 0)
        task.wait(0.1)
        if ch.prompt.Parent and ch.prompt.Enabled then
            pcall(function()
                fireproximityprompt(ch.prompt)
            end)
            task.wait(math.max(ch.prompt.HoldDuration + 0.05, 0.1))
            pcall(iu)
            iz(5)
        end
    end
end
task.spawn(worker2)
AutoSaveAnimalsGroup:AddToggle("AutoSaveAnimals", { Text = "Auto Save Animals", Default = false, Callback = onAutoSaveAnimals })
AutoSaveAnimalsGroup:AddDropdown("SaveBaseSelect", {
    Text = "Base to Steal From",
    Values = fn160(),
    Multi = false,
    Default = 1,
    Searchable = true,
    Callback = onSaveBaseSelect
})
FiltersGroup:AddDropdown("SaveRarityFilter", {
    Text = "Rarity Filter",
    Values = fn597(),
    Multi = true,
    Default = {},
    Searchable = true,
    Callback = onSaveRarityFilter
})
local AutoCollectMoneyFromPetsGroup = jF_1.Ranch:AddLeftGroupbox("Auto Collect Money from Pets")
local AutoSellAnimalsGroup = jF_1.Ranch:AddLeftGroupbox("Auto Sell Animals")
local AutoRebirthGroup = jF_1.Ranch:AddRightGroupbox("Auto Rebirth")
local AutoUpgradePetsGroup = jF_1.Ranch:AddRightGroupbox("Auto Upgrade Pets")
jr = fn273
iJ = fn330
jh = "Most Money"
i8 = fn419
iK = fn36
i2 = fn635
jl = false
je = 5
i6 = function(dE)
    local mZ = iK()
    pcall(function()
        RemoteBank.PickupStand:InvokeServer(dE)
    end)
    local mX
    local m2 = 1
    while m2 <= 20 do
        task.wait(0.05)
        mX = i2(mZ)
        if mX then
            break
        end
        m2 += 1
    end
    if not mX then
        return
    end
    local mZ_1 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    local mY = mZ_1
    if mY then
        pcall(function()
            mY:EquipTool(mX)
        end)
        task.wait(0.1)
    end
    pcall(function()
        RemoteBank.PlaceStand:InvokeServer(dE)
    end)
end
iI = fn266
task.spawn(worker3)
AutoCollectMoneyFromPetsGroup:AddToggle("AutoCollectCash", { Text = "Auto Collect Money from Pets", Default = false, Callback = onAutoCollectCash })
AutoCollectMoneyFromPetsGroup:AddDropdown("CollectPriority", {
    Text = "Collect Priority",
    Values = { "Most Money", "Lowest Money", "Best Rarity Pet" },
    Multi = false,
    Default = "Most Money",
    Callback = onCollectPriority
})
AutoCollectMoneyFromPetsGroup:AddSlider("CollectInterval", {
    Text = "Collect Interval (s)",
    Default = 5,
    Min = 1,
    Max = 30,
    Rounding = 0,
    Callback = onCollectInterval
})
jd = false
i5 = {}
if ((not jt or connection) and (not jt or not connection) and ((jt or not connection) and (connection and jt)) or (not connection or connection or jt and connection) and (not jt and connection or (connection or not jt)) or (not connection and not jt and (jt or not jt) or (jt or not jt) and (jt and connection)) and (not connection or jt or (connection or connection) or (not connection or connection or not connection and not connection))) and not ((not jt or connection) and (not jt or not connection) and ((jt or not connection) and (connection and jt)) or (not connection or connection or jt and connection) and (not jt and connection or (connection or not jt)) or (not connection and not jt and (jt or not jt) or (jt or not jt) and (jt and connection)) and (not connection or jt or (connection or connection) or (not connection or connection or not connection and not connection))) then
    jt = 0.5
    iZ = false
    iV = function()
        local nh = DataService.client:get("inventory")
        if type(nh) ~= "table" then
            return
        end
        for k, v in pairs(nh) do
            local nn = k
            if not jd or Library.Unloaded then
                break
            end
            local nh_5 = type(v) == "table" and v.tag == "Entity" and type(v.informations) == "table"
            if nh_5 then
                local name = v.informations.name
                local ni = i_(i5) or i5[iA(name)]
                if ni then
                    pcall(function()
                        RemoteBank.SellRemote:InvokeServer("Sell", nn)
                    end)
                    task.wait(iZ)
                end
            end
        end
    end
    iR = function()
        local nq = DataService.client:get("stands")
        if type(nq) ~= "table" then
            return
        end
        for k, v in pairs(nq) do
            local nw = k
            if not jd or Library.Unloaded then
                break
            else
                local nq_5 = v and v.entity
                local nr = nq_5
                if nq_5 then
                    nq_5 = nr.name
                end
                if nq_5 then
                    local nq_6 = i_(i5) or i5[iA(nr.name)]
                    if nq_6 then
                        pcall(function()
                            RemoteBank.SellRemote:InvokeServer("Sell", "Ranch:" .. tostring(nw))
                        end)
                        task.wait(iZ)
                    end
                end
            end
        end
    end
else
    iZ = 0.5
    iV = false
    iR = function()
        local nh = DataService.client:get("inventory")
        if type(nh) ~= "table" then
            return
        end
        for k, v in pairs(nh) do
            local nn = k
            if not jd or Library.Unloaded then
                break
            end
            local nh_2 = type(v) == "table" and v.tag == "Entity" and type(v.informations) == "table"
            if nh_2 then
                local name = v.informations.name
                local ni = i_(i5) or i5[iA(name)]
                if ni then
                    pcall(function()
                        RemoteBank.SellRemote:InvokeServer("Sell", nn)
                    end)
                    task.wait(iZ)
                end
            end
        end
    end
    jt = function()
        local nq = DataService.client:get("stands")
        if type(nq) ~= "table" then
            return
        end
        for k, v in pairs(nq) do
            local nw = k
            if not jd or Library.Unloaded then
                break
            else
                local nq_2 = v and v.entity
                local nr = nq_2
                if nq_2 then
                    nq_2 = nr.name
                end
                if nq_2 then
                    local nq_3 = i_(i5) or i5[iA(nr.name)]
                    if nq_3 then
                        pcall(function()
                            RemoteBank.SellRemote:InvokeServer("Sell", "Ranch:" .. tostring(nw))
                        end)
                        task.wait(iZ)
                    end
                end
            end
        end
    end
end
task.spawn(worker4)
AutoSellAnimalsGroup:AddToggle("AutoSellAnimals", { Text = "Auto Sell Animals", Default = false, Callback = onAutoSellAnimals })
AutoSellAnimalsGroup:AddToggle("SellFromRanch", { Text = "Also Sell Ranch-Placed Animals", Default = false, Callback = onSellFromRanch })
AutoSellAnimalsGroup:AddDropdown("SellRarityFilter", {
    Text = "Rarity Filter (empty = all)",
    Values = fn597(),
    Multi = true,
    Default = {},
    Searchable = true,
    Callback = onSellRarityFilter
})
AutoSellAnimalsGroup:AddSlider("SellInterval", {
    Text = "Sell Interval (s)",
    Default = 0.5,
    Min = 0.1,
    Max = 3,
    Rounding = 1,
    Callback = onSellInterval
})
iM = false
iG = fn479
task.spawn(worker5)
AutoRebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false, Callback = onAutoRebirth })
iE = false
iw = 50
is = function()
    local nJ = DataService.client:get("stands")
    if type(nJ) ~= "table" then
        return
    end
    local nK = DataService.client:get("cash") or 0
    local nL = nK
    for k, v in pairs(nJ) do
        local nR = k
        local nJ_1 = v and v.entity
        local nK_1 = nJ_1
        if nJ_1 then
            nJ_1 = nK_1.name
        end
        if nJ_1 then
            local nJ_2 = nK_1.upgradeLevel or 0
            if nJ_2 < iw then
                local nJ_3 = SharedFunctions.GetUpgradeCost(nK_1.name, nJ_2 + 1)
                if nJ_3 and nL >= nJ_3 then
                    pcall(function()
                        RemoteBank.UpgradeStand:FireServer(nR)
                    end)
                    nL = nL - nJ_3
                    task.wait(0.15)
                end
            end
        end
    end
end
task.spawn(worker6)
AutoUpgradePetsGroup:AddToggle("AutoUpgradePets", { Text = "Auto Upgrade Pets", Default = false, Callback = onAutoUpgradePets })
AutoUpgradePetsGroup:AddSlider("MaxUpgradeLevel", {
    Text = "Max Upgrade Level",
    Default = 50,
    Min = 1,
    Max = 100,
    Rounding = 0,
    Callback = onMaxUpgradeLevel
})
local MenuGroup = jF_1.Settings:AddLeftGroupbox("Menu", "settings-2")
it = tick()
ju = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local n0 = v
        pcall(function()
            n0:Disable()
        end)
    end
end)
i3 = fn31
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
task.spawn(antiAfkLoop)
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddButton("Unload", onUnload)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
ThemeManager:ApplyToTab(jF_1.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/SaveAnimals")
SaveManager:BuildConfigSection(jF_1.Settings)
SaveManager:LoadAutoloadConfig()
Library:OnUnload(fn173)
