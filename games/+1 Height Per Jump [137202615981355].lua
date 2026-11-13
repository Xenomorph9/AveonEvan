local kC
local kF
local lm
local k0
local Options
local lp
local kI
local k6
local ls
local kL
local k9
local lv
local kO
local Toggles
local kR
local connection2
local kU
local lf
local kX
local TrampolineConfig
local VirtualUser
local k2
local BigNumberUtil
local kK
local k5
local kN
local lu
local LocalPlayer
local lx
local kQ
local kT
local le
local Workspace
local kW
local Label
local connection3
local kZ
local kG
local ln
local k1
local kJ
local Library
local k4
local kM
local k7
local lt
local kP
local la
local lw
local kS
local ld
local connection
local kz
local lg
local kY
local lj
local function onInputBegan()
    kS = tick()
end
local function fn26(cp)
    if not cp then
        return nil
    elseif cp.PrimaryPart then
        return cp.PrimaryPart
    else
        local ny = cp:FindFirstChild("Bounce", true) or cp:FindFirstChild("Pad", true) or cp:FindFirstChild("Trampoline", true)
        local nz = ny
        if ny then
            ny = nz:IsA("BasePart")
        end
        if ny then
            return nz
        end
        return cp:FindFirstChildWhichIsA("BasePart", true)
    end
end
local function fn46(bG)
    local mT = typeof(bG) == "table" and type(bG.await) == "function"
    if mT then
        return bG:await()
    end
    return true, bG
end
local function fn61()
    local mh_1
    local mg_1
    if identifyexecutor then
        mh_1, mg_1 = identifyexecutor()
        local mi = mh_1 ~= ""
        local mj = type(mh_1) == "string" and mi
        if mj then
            local mi_1 = type(mg_1) == "string" and mg_1 ~= "" and mh_1 .. " " .. mg_1
            le = mi_1 or mh_1
        end
    end
end
local function fn67(ea)
    return LocalPlayer:GetAttribute("BaseHeightAddValueWorld1UnlockedLevel" .. tostring(ea)) == true
end
local function onRscripts()
    if setclipboard then
        setclipboard(kR)
    elseif toclipboard then
        toclipboard(kR)
    end
    Library:Notify("Copied Rscripts profile to clipboard")
end
local function fn92()
    local pG_1
    local pH_1
    pG_1, pH_1 = k6(kG:GetNormalEggs())
    local pI = not pG_1
    local pO = if pI then 1 else 0
    local pM = 2688 * pO + 1022 * (1 - pO)
    local pN = 3384 * pO + 2533 * (1 - pO)
    if not ((pM * 4087 + pN * 1073 + pM * pN) % 16777213 == 6935867) then
        pI = type(pH_1) ~= "table"
    end
    if pI then
        return nil
    end
    if type(pH_1.Eggs) == "table" then
        pH_1 = pH_1.Eggs
    end
    local pG_2 = kM()
    local Price = nil
    local pJ
    for k, v in pairs(pH_1) do
        local pH_2 = type(v) == "table" and type(v.Price) == "table"
        if pH_2 then
            local pH_3 = v.ScenePath or ""
            local pK = tostring(pH_3)
            local pH_4 = tonumber(string.match(pK, "World_(%d+)"))
            local pK_1 = pH_4 and pH_4 <= pG_2 and lj(v.Price)
            if pK_1 then
                local pH_5 = not Price or BigNumberUtil.Compare(v.Price.Digit, v.Price.Amount, Price.Digit, Price.Amount) > 0
                if pH_5 then
                    Price = v.Price
                    pJ = k
                end
            end
        end
    end
    return pJ
end
local function removeGameplayPausedLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.RemoveGameplayPaused.Value then
            lv(true)
        end
        if Toggles.AntiAfk.Value then
            local mP = tick() - kS
            local mQ = tick() - kN
            if mP >= 300 and mQ >= 60 then
                pcall(ls)
            else
                if mP < 300 and mQ >= 300 then
                    pcall(ls)
                end
            end
        end
    end
end
local function autoHatchEggsLoop()
    while not Library.Unloaded do
        task.wait(0.35)
        if Toggles.AutoHatchEggs.Value then
            pcall(lu)
        end
    end
end
local function fn203()
    local p0_1
    local p__1
    local pZ = la()
    if not pZ then
        return false
    end
    p__1, p0_1 = k6(kG:HatchNormalEgg(pZ, "Single"))
    local pZ_1 = p__1 and type(p0_1) == "table" and p0_1.Success == true
    return pZ_1
end
local function fn217(b2)
    if b2 == nil then
        return false
    end
    local nd = lw()
    local ne = BigNumberUtil.ToStruct(b2)
    return BigNumberUtil.CanAfford(nd, ne) == true
end
local function fn248()
    return LocalPlayer.Character
end
local function fn272()
    local ToStruct = BigNumberUtil.ToStruct
    local m7 = (LocalPlayer:GetAttribute("WinsDigit"))
    local nc = if m7 then 1 else 0
    local na = 604 * nc + 3789 * (1 - nc)
    local nb = 2368 * nc + 2416 * (1 - nc)
    if not ((na * 519 + nb * 3706 + na * nb) % 16777213 == 10519556) then
        m7 = 0
    end
    local m8 = LocalPlayer:GetAttribute("WinsAmount") or 0
    return ToStruct({ Digit = m7, Amount = m8 })
end
local function fn275()
    local pV_1 = lp[Options.HatchEgg and Options.HatchEgg.Value]
    if pV_1 == "BestAffordable" or pV_1 == nil then
        return kC()
    end
    return pV_1
end
local function autoRebirthLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AutoRebirth.Value then
            pcall(function()
                local qR_1
                local qQ_1
                qQ_1, qR_1 = k6(lf:GetSnapshot())
                local qS = qQ_1 and type(qR_1) == "table" and qR_1.CanRebirth == true
                if qS then
                    k6(lf:TryRebirth())
                end
            end)
        end
    end
end
local function onUnload()
    Library:Unload()
end
local function fn403()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    kN = tick()
end
local function fn409()
    local nW = k1()
    local nX = lt(nW)
    if not nX then
        return false
    end
    return k5(nX.CFrame + Vector3.new(0, 4, 0))
end
local function fn411()
    local oU = tonumber(LocalPlayer:GetAttribute("BaseHeightAddValueWorld1EquippedLevel")) or 1
    return math.max(1, math.floor(oU))
end
local function fn440()
    local m0 = kP()
    local m1 = m0 and m0:FindFirstChildWhichIsA("Humanoid")
    return m1
end
local function fn453(ef, eg)
    local oW = kM()
    local oX = k9(oW)
    if #oX == 0 then
        oX = k9(1)
    end
    if ef then
        for k, v in oX do
            if not kz(v.level) then
                k7(v.part)
                task.wait(0.08)
            end
        end
    end
    if eg then
        local part = nil
        local oY = 0
        for k, v in oX do
            local oX_1 = kz(v.level) and v.level >= oY
            if oX_1 then
                oY = v.level
                part = v.part
            end
        end
        local oX_2 = part and oY ~= ln()
        if oX_2 then
            k7(part)
        end
    end
end
local function worker()
    local mo_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local mn = math.floor(os.clock() - k2)
        if mn < 60 then
            mo_1 = mn .. "s"
        elseif mn < 3600 then
            mo_1 = string.format("%dm %ds", mn // 60, mn % 60)
        else
            mo_1 = string.format("%dh %dm", mn // 3600, mn % 3600 // 60)
        end
        Label:SetText(kJ("Session time", mo_1, lg))
    end
end
local function fn480()
    local nE = kM()
    local max = math.max
    local floor = math.floor
    local nH = tonumber(LocalPlayer:GetAttribute("RebirthLevel")) or 0
    local nI = max(0, floor(nH))
    local nF_1 = kF(nE)
    local nG_1 = nF_1 and nF_1:FindFirstChild("Trampoline")
    if not nG_1 then
        return nil
    end
    local nG_2 = TrampolineConfig.Worlds[nE] and TrampolineConfig.Worlds[nE].ModelLevels
    if type(nG_2) ~= "table" then
        return nil
    end
    local nG_3 = -1
    local nJ
    for k, v in pairs(nG_2) do
        local nH_2 = TrampolineConfig.GetLevelConfig(nE, v)
        local nK = nH_2
        if nK then
            nK = nI >= (nH_2.RequiredRebirthLevel or 0)
        end
        if nK then
            local nK_1 = TrampolineConfig.IsVipModel(k)
            local nL_2 = not nK_1
            if nK_1 then
                local nK_2 = TrampolineConfig.GetVipGamePassName(k)
                nL_2 = lm(nK_2)
            end
            if nL_2 then
                local nK_3 = tonumber(nH_2.HeightGainMultiplier) or 0
                local nK_4 = nG_1:FindFirstChild(k)
                if nK_4 and nK_3 > nG_3 then
                    nG_3 = nK_3
                    nJ = nK_4
                end
            end
        end
    end
    return nJ, nG_3
end
local function fn489(cX, cY)
    local nZ = cX + Vector3.new(0, 8, 0)
    local n_ = RaycastParams.new()
    n_.FilterType = Enum.RaycastFilterType.Exclude
    n_.FilterDescendantsInstances = { cY }
    n_.IgnoreWater = true
    local n0 = Workspace:Raycast(nZ, Vector3.new(0, -800, 0), n_)
    if n0 then
        return n0.Position.Y
    end
    return cX.Y
end
local function fn491()
    if setclipboard then
        setclipboard(kX)
    elseif toclipboard then
        toclipboard(kX)
    end
    Library:Notify("Copied Discord invite to clipboard")
end
local function autoBuyWorldsLoop()
    while not Library.Unloaded do
        task.wait(2.5)
        if Toggles.AutoBuyWorlds.Value then
            pcall(kK)
        end
    end
end
local function fn516(dS)
    local oC = {}
    local oD = kF(dS)
    local oE = oD and oD:FindFirstChild("BaseHeightLevelUp")
    if not oE then
        return oC
    end
    for i, child in oE:GetChildren() do
        if child:IsA("BasePart") then
            local oD_2 = tonumber(string.match(child.Name, "^BaseHeightValuePart_?(%d+)$"))
            if oD_2 then
                table.insert(oC, { part = child, level = oD_2 })
            end
        end
    end
    table.sort(oC, function(d0, d1)
        return d0.level < d1.level
    end)
    return oC
end
local function fn569(M, N, O)
    return string.format("<b>%s</b> %s %s", M, kY("-", "#5a6070"), kY(N, O))
end
local function fn600()
    local ni = tonumber(LocalPlayer:GetAttribute("CurrentWorldId")) or 1
    return math.max(1, math.floor(ni))
end
local function autoStudFarmLoop()
    while not Library.Unloaded do
        if Toggles.AutoStudFarm.Value then
            pcall(kT)
            if Toggles.GoBestTrampoline.Value then
                pcall(k4)
            end
            task.wait(0.35)
        else
            task.wait(0.35)
        end
    end
end
local function fn613(aa)
    local DiscordGroup = aa:AddLeftGroupbox("Discord", nil, true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = k0 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = k0 })
end
local function autoEquipBestPetLoop()
    while not Library.Unloaded do
        task.wait(1.25)
        if Toggles.AutoEquipBestPet.Value then
            pcall(function()
                k6(kL:EquipBest())
            end)
        end
        if Toggles.AutoEquipBestTrail.Value then
            pcall(function()
                local qX_1
                local qW_1
                qW_1, qX_1 = k6(kZ:GetSnapshot())
                local qY = qW_1 and type(qX_1) == "table"
                if qY then
                    kI(qX_1.Trails, "TrailId", "HeightBuff", "Equipped", function(g5)
                        return kZ:EquipTrail(g5)
                    end)
                end
            end)
        end
        if Toggles.AutoEquipBestAura.Value then
            pcall(function()
                local q0_1
                local q__1
                q__1, q0_1 = k6(kU:GetSnapshot())
                local q1 = q__1 and type(q0_1) == "table"
                if q1 then
                    kI(q0_1.Auras, "AuraId", "HeightBuff", "Equipped", function(he)
                        return kU:EquipAura(he)
                    end)
                end
            end)
        end
        if Toggles.AutoEquipBestPal.Value then
            pcall(function()
                local q4_1
                local q3_1
                q3_1, q4_1 = k6(kQ:GetSnapshot())
                local q5 = q3_1 and type(q4_1) == "table"
                if q5 then
                    kI(q4_1.Pals, "PalId", "HeightBonus", "Equipped", function(hn)
                        return kQ:EquipPal(hn)
                    end)
                end
            end)
        end
        if Toggles.AutoBuyWings.Value or Toggles.AutoEquipBestWings.Value then
            pcall(function()
                ld(Toggles.AutoBuyWings.Value, Toggles.AutoEquipBestWings.Value)
            end)
        end
        if Toggles.AutoEquipBestWing.Value then
            pcall(kO)
        end
    end
end
local function fn662()
    local mY = kP()
    local mZ = mY and mY:FindFirstChild("HumanoidRootPart")
    return mZ
end
local function fn665(J, K)
    return string.format('<font color="%s">%s</font>', K, J)
end
local function fn668()
    connection:Disconnect()
    connection2:Disconnect()
    connection3:Disconnect()
    lv(false)
    print("+1 Height Per Jump unloaded")
end
local function autoStudFarmLoop2()
    while not Library.Unloaded do
        task.wait(0.4)
        if Toggles.GoBestTrampoline.Value and not Toggles.AutoStudFarm.Value then
            pcall(k4)
        end
    end
end
local function onInputChanged(a6)
    local UserInputType = a6.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        kS = tick()
    end
end
local function fn714(c3, c4)
    local n2 = os.clock()
    local n3 = c4
    local n8 = if n3 then 1 else 0
    local n6 = 1848 * n8 + 3980 * (1 - n8)
    local n7 = 158 * n8 + 1575 * (1 - n8)
    if not ((n6 * 297 + n7 * 2449 + n6 * n7) % 16777213 == 1227782) then
        n3 = 1.25
    end
    local n4 = n2 + n3
    while true do
        if not (os.clock() < n4) then
            return false
        end
        local n2_1 = c3:GetState()
        local n3_1 = n2_1 == Enum.HumanoidStateType.Landed
        local n8_1 = if n3_1 then 1 else 0
        local n6_1 = 2999 * n8_1 + 2852 * (1 - n8_1)
        local n7_1 = 3774 * n8_1 + 3009 * (1 - n8_1)
        if not ((n6_1 * 3196 + n7_1 * 3157 + n6_1 * n7_1) % 16777213 == 16040335) then
            n3_1 = n2_1 == Enum.HumanoidStateType.Running
        end
        if not n3_1 then
            n3_1 = n2_1 == Enum.HumanoidStateType.RunningNoPhysics
        end
        if not n3_1 then
            n3_1 = n2_1 == Enum.HumanoidStateType.Climbing
        end
        if not n3_1 then
            n3_1 = n2_1 == Enum.HumanoidStateType.Seated
        end
        if n3_1 then
            break
        end
        task.wait(0.05)
    end
    return true
end
local function onRemoveGameplayPaused(bi)
    lv(bi)
end
local function onCopyJoinScript_JobID()
    local ml = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, lx)
    if setclipboard then
        setclipboard(ml)
    elseif toclipboard then
        toclipboard(ml)
    end
    Library:Notify("Copied join script to clipboard")
end
local function autoBuyTrailsLoop()
    while not Library.Unloaded do
        task.wait(1.5)
        if Toggles.AutoBuyTrails.Value then
            pcall(function()
                local ra_1
                local q9_1
                q9_1, ra_1 = k6(kZ:GetSnapshot())
                local rb = q9_1 and type(ra_1) == "table"
                if rb then
                    kW(ra_1.Trails, "TrailId", function(hF)
                        return kZ:UnlockWithWins(hF)
                    end)
                end
            end)
        end
        if Toggles.AutoBuyAuras.Value then
            pcall(function()
                local rh_1
                local rg_1
                rg_1, rh_1 = k6(kU:GetSnapshot())
                local ri = rg_1 and type(rh_1) == "table"
                if ri then
                    kW(rh_1.Auras, "AuraId", function(hO)
                        return kU:UnlockWithWins(hO)
                    end)
                end
            end)
        end
    end
end
local function fn805(ca)
    local Scene = Workspace:FindFirstChild("Scene")
    if not Scene then
        return nil
    end
    return Scene:FindFirstChild("World_" .. tostring(ca))
end
connection2 = nil
kz = nil
kC = nil
Label = nil
kF = nil
kG = nil
kI = nil
kJ = nil
kK = nil
kL = nil
kM = nil
kN = nil
kO = nil
kP = nil
kQ = nil
kR = nil
kS = nil
kT = nil
kU = nil
connection = nil
kW = nil
kX = nil
kY = nil
kZ = nil
k0 = nil
k1 = nil
k2 = nil
Options = nil
k4 = nil
k5 = nil
k6 = nil
k7 = nil
k9 = nil
la = nil
LocalPlayer = nil
Toggles = nil
ld = nil
le = nil
lf = nil
lg = nil
Workspace = nil
TrampolineConfig = nil
lj = nil
local kx, kA, kB, kE, kH, k_, k8
connection3 = nil
VirtualUser = nil
lm = nil
ln = nil
BigNumberUtil = nil
lp = nil
Library = nil
ls = nil
lt = nil
lu = nil
lv = nil
lw = nil
lx = nil
local lr
local lT_1
VirtualUser, Workspace, LocalPlayer, kX, kR, BigNumberUtil, TrampolineConfig, lf, k8, kZ, kU, kQ, kL, kG, kE, kx, Library, Toggles, Options, lg, kY, kJ, k0 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SocialsGroup
local UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local lK = "+1 Height Per Jump"
kX = "https://discord.gg/ehKVq7pf7v"
kR = "https://rscripts.net/@Ouroboros"
local Packages = ReplicatedStorage:WaitForChild("Packages")
local Knit = require(Packages:WaitForChild("Knit"))
local lC_1
local Game = ReplicatedStorage:WaitForChild("Game")
local Shared = Game:WaitForChild("Shared")
local lz_1
local Config = Shared:WaitForChild("Config")
local Util = Shared:WaitForChild("Util")
BigNumberUtil = require(Util:WaitForChild("BigNumberUtil"))
TrampolineConfig = require(Config:WaitForChild("TrampolineConfig"))
lf = Knit.GetService("RebirthService")
k8 = Knit.GetService("WorldService")
kZ = Knit.GetService("TrailService")
kU = Knit.GetService("AuraService")
kQ = Knit.GetService("PalService")
kL = Knit.GetService("PetService")
kG = Knit.GetService("EggHatchService")
kE = Knit.GetService("BaseHeightWingService")
kx = Knit.GetService("GamePassService")
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
kY = fn665
kJ = fn569
local lN = "#7fd47f"
local lM = "#6ec1ff"
lg = "#e8a34d"
local lL = "#8b93a3"
k0 = fn491
local Window = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = kX, Copyable = true }, "|", lK },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local lO = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gamepad-2"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in lO do
    fn613(v)
end
le, Label, lx = nil, nil, nil
le = "Unknown"
pcall(fn61)
local AccountGroup = lO.Info:AddLeftGroupbox("Account", "circle-user")
AccountGroup:AddLabel(kJ("User", LocalPlayer.Name, lN), true)
AccountGroup:AddLabel(kJ("Status", "Keyless", lN), true)
AccountGroup:AddLabel(kJ("Executor", le, lN), true)
local GameInfoGroup = lO.Info:AddLeftGroupbox("Game Info", "gamepad-2")
GameInfoGroup:AddLabel(kY(lK .. " [" .. tostring(game.PlaceId) .. "]", lM), true)
GameInfoGroup:AddLabel(kJ("Place ID", tostring(game.PlaceId), lM), true)
Label = GameInfoGroup:AddLabel(kJ("Session time", "0s", lg), true)
lx = tostring(game.JobId)
local lA = #lx > 18
if lA then
    local ly_2 = 0
    repeat
        local su = bit32.rrotate(bit32.bxor(bit32.lrotate(ly_2, 5), string.byte(tostring(ly_2))), 19)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(su, 2726659031), 1229343550), (bit32.bxor(bit32.band(su, 1568308264), 3375605939))), 1229343550), 3375605939) == su then
            lA = string.sub(lx, 1, 18) .. "..."
        else
            lx = string.sub(lA, 1, 18) .. "..."
        end
        ly_2 = (ly_2 + 7) % 8
    until (ly_2 * 3 + 4) % 8 == 1
end
local ly_3 = lA or lx
k2, SocialsGroup, lC_1, lz_1, lT_1, lp = nil, nil, nil, nil, nil, nil
GameInfoGroup:AddLabel(kJ("Server", ly_3, lL), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
k2 = os.clock()
task.spawn(worker)
local ScriptsGroup = lO.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(kY("Included in this hub", lL), true)
ScriptsGroup:AddLabel(kY(lK, lM), true)
local FeaturesGroup = lO.Info:AddRightGroupbox("Features", "list")
if (not lC_1 or k2 or not k2 and not lT_1) and (ScriptsGroup and lT_1 or (lz_1 or not k2)) and not ((not lC_1 or k2 or not k2 and not lT_1) and (ScriptsGroup and lT_1 or (lz_1 or not k2))) then
    lg:AddLabel(lN("Auto Farm", SocialsGroup), true)
    lg:AddLabel(lN("Auto Buy", lM), true)
    lg:AddLabel(lN("Auto Equip", FeaturesGroup), true)
    lg:AddLabel(lN("Progression", kY), true)
    lO = (nil):AddRightGroupbox("Socials", "link")
else
    FeaturesGroup:AddLabel(kY("Auto Farm", lM), true)
    FeaturesGroup:AddLabel(kY("Auto Buy", lg), true)
    FeaturesGroup:AddLabel(kY("Auto Equip", lN), true)
    FeaturesGroup:AddLabel(kY("Progression", lL), true)
    SocialsGroup = lO.Info:AddRightGroupbox("Socials", "link")
end
SocialsGroup:AddButton({ Text = "Discord", Func = k0 })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = lO.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = k0 })
local FaqGroup = lO.Info:AddRightGroupbox("FAQ", "circle-help")
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
local AutoFarmGroup = lO.Main:AddLeftGroupbox("Auto Farm", "zap")
AutoFarmGroup:AddToggle("AutoStudFarm", { Text = "Auto Stud Farm", Default = false })
AutoFarmGroup:AddSlider("StudHeight", { Text = "Stud Height", Default = 9000, Min = 500, Max = 9000, Rounding = 0 })
AutoFarmGroup:AddToggle("GoBestTrampoline", { Text = "Go Best Trampoline", Default = false })
local ProgressionGroup = lO.Main:AddLeftGroupbox("Progression", "rotate-ccw")
ProgressionGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
ProgressionGroup:AddToggle("AutoBuyWorlds", { Text = "Auto Buy Next Worlds", Default = false })
local AutoEquipGroup = lO.Main:AddRightGroupbox("Auto Equip", "sparkles")
AutoEquipGroup:AddToggle("AutoEquipBestPet", { Text = "Auto Equip Best Pet", Default = false })
AutoEquipGroup:AddToggle("AutoEquipBestTrail", { Text = "Auto Equip Best Trail", Default = false })
AutoEquipGroup:AddToggle("AutoEquipBestAura", { Text = "Auto Equip Best Aura", Default = false })
AutoEquipGroup:AddToggle("AutoEquipBestPal", { Text = "Auto Equip Best Pal", Default = false })
AutoEquipGroup:AddToggle("AutoEquipBestWings", { Text = "Auto Equip Best Wings", Default = false })
AutoEquipGroup:AddToggle("AutoEquipBestWing", { Text = "Auto Equip Best Wing", Default = false })
local AutoBuyGroup = lO.Main:AddRightGroupbox("Auto Buy", "shopping-cart")
AutoBuyGroup:AddToggle("AutoBuyWings", { Text = "Auto Buy Wings", Default = false })
AutoBuyGroup:AddToggle("AutoBuyTrails", { Text = "Auto Buy Trails", Default = false })
AutoBuyGroup:AddToggle("AutoBuyAuras", { Text = "Auto Buy Auras", Default = false })
AutoBuyGroup:AddToggle("AutoHatchEggs", { Text = "Auto Hatch Eggs", Default = false })
local lS = {
    "Egg_W1_1",
    "Egg_W1_2",
    "Egg_W1_3",
    "Egg_W2_1",
    "Egg_W2_2",
    "Egg_W3_1",
    "Egg_W3_2",
    "Egg_W4_1",
    "Egg_W4_2",
    "Egg_W5_1",
    "Egg_W5_2"
}
local lT_2 = {
    Egg_W1_1 = "FeatherEgg",
    Egg_W1_2 = "OceanEgg",
    Egg_W1_3 = "BugEgg",
    Egg_W2_1 = "AnimalEgg",
    Egg_W2_2 = "WingEgg",
    Egg_W3_1 = "CocoonEgg",
    Egg_W3_2 = "FlutterEgg",
    Egg_W4_1 = "FarmEgg",
    Egg_W4_2 = "SafariEgg",
    Egg_W5_1 = "RanchEgg",
    Egg_W5_2 = "ForestEgg"
}
lp = { ["Best Affordable"] = "BestAffordable" }
local lV = { "Best Affordable" }
for i, v in ipairs(lS) do
    local ly_4 = lT_2[v]
    table.insert(lV, ly_4)
    lp[ly_4] = v
end
kS, kN, connection, connection2, connection3, ls, lv, k6, kP, kH, lr, k5, lw, lj, kM, kF, lm, lt, k1, k4, kB, k_, kA, kT, k9, k7, kz, ln, ld, kI, kW, kC, la, lu, kO, kK = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
AutoBuyGroup:AddDropdown("HatchEgg", { Values = lV, Default = "Best Affordable", Text = "Egg", Searchable = true })
local MenuGroup = lO.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
kS = tick()
kN = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local mx = v
        pcall(function()
            mx:Disable()
        end)
    end
end)
ls = fn403
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
lv = function(bc)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not bc)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not bc
        end
    end)
    if not bc then
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
MenuGroup:AddToggle("RemoveGameplayPaused", { Text = "Remove Gameplay Paused", Default = true, Callback = onRemoveGameplayPaused })
MenuGroup:AddButton("Unload", onUnload)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/HeightPerJump")
SaveManager:BuildConfigSection(lO.Settings)
ThemeManager:ApplyToTab(lO.Settings)
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
connection3 = game:GetService("CoreGui").ChildAdded:Connect(function(bl)
    local mK = Library.Unloaded
    local mO = if mK then 1 else 0
    local mM = 2186 * mO + 2014 * (1 - mO)
    local mN = 850 * mO + 2279 * (1 - mO)
    if not ((mM * 779 + mN * 195 + mM * mN) % 16777213 == 3726744) then
        mK = not Toggles.RemoveGameplayPaused.Value
    end
    if mK then
        return
    end
    if bl.Name == "RobloxNetworkPauseNotification" then
        pcall(function()
            bl.Enabled = false
        end)
    end
end)
Library:OnUnload(fn668)
lv(Toggles.RemoveGameplayPaused.Value)
task.spawn(removeGameplayPausedLoop)
k6 = fn46
kP = fn248
kH = fn662
if (not ld and not kH and (kH and k4) or (kH or ld) and (not lt or lt)) and (not kH or not ld or (k4 or ld) or not k4 and not kH and (lt and not ld)) or not ((not ld and not kH and (kH and k4) or (kH or ld) and (not lt or lt)) and (not kH or not ld or (k4 or ld) or not k4 and not kH and (lt and not ld))) then
    lr = fn440
else
    lt = fn440
end
k5 = function(bT)
    local m3
    m3 = nil
    m3 = kP()
    if not m3 then
        return false
    end
    local m4 = pcall(function()
        m3:PivotTo(bT)
    end)
    return m4
end
lw = fn272
lj = fn217
kM = fn600
kF = fn805
lm = function(ce)
    local nr
    local ns = ce == ""
    local nt = type(ce) ~= "string"
    local nx = if nt then 1 else 0
    local nv = 2978 * nx + 3156 * (1 - nx)
    local nw = 595 * nx + 1862 * (1 - nx)
    if not ((nv * 2752 + nw * 1166 + nv * nw) % 16777213 == 10661136) then
        nt = ns
    end
    if nt then
        return false
    end
    nr = false
    pcall(function()
        local nn_1
        local nm_1
        nm_1, nn_1 = k6(kx:PlayerOwnsGamePass(ce))
        nr = nm_1 and nn_1 == true
    end)
    return nr
end
lt = fn26
if (not connection2 and connection2 or false) and (not lt or not connection2 or k5 and lw) or (ls or lt or not lt and not connection2) and (kH and connection2 and (connection2 and not kH)) or not ((not connection2 and connection2 or false) and (not lt or not connection2 or k5 and lw) or (ls or lt or not lt and not connection2) and (kH and connection2 and (connection2 and not kH))) then
    k1 = fn480
    k4 = fn409
    kB = fn489
    k_ = fn714
else
    k4 = fn480
    k1 = fn409
    k_ = fn489
    kB = fn714
end
kA = function(c9)
    local n9
    n9 = nil
    local oa = kH()
    n9 = lr()
    if not (oa and n9) then
        return false
    end
    oa.AssemblyLinearVelocity = Vector3.zero
    oa.AssemblyAngularVelocity = Vector3.zero
    oa.CFrame = CFrame.new(c9)
    oa.Anchored = true
    task.wait(0.22)
    oa.Anchored = false
    pcall(function()
        n9:ChangeState(Enum.HumanoidStateType.Landed)
    end)
    k_(n9, 1.1)
    oa.AssemblyLinearVelocity = Vector3.zero
    return true
end
kT = function()
    local od
    od = nil
    local oe = kP()
    local of = kH()
    od = lr()
    if not (oe and of and od) or od.Health <= 0 then
        return false
    end
    local og_2 = math.clamp(Options.StudHeight.Value, 500, 9000)
    local oh_1 = select(1, k1())
    local oi = lt(oh_1)
    local oh_3 = oi and oi.Position or of.Position
    local oi_2 = kB(oh_3, oe)
    local oe_1 = Vector3.new(oh_3.X, oi_2 + 3.25, oh_3.Z)
    local oj = Vector3.new(oh_3.X, oi_2 + og_2, oh_3.Z)
    local ol = math.min(og_2 - 25, 8975)
    of.Anchored = false
    of.AssemblyLinearVelocity = Vector3.zero
    of.AssemblyAngularVelocity = Vector3.zero
    of.CFrame = CFrame.new(oe_1)
    task.wait(0.12)
    pcall(function()
        od:ChangeState(Enum.HumanoidStateType.Jumping)
    end)
    task.wait(0.12)
    pcall(function()
        od:ChangeState(Enum.HumanoidStateType.Freefall)
    end)
    of.AssemblyLinearVelocity = Vector3.zero
    of.CFrame = CFrame.new(oj)
    local om = 0
    local on = os.clock() + 1.35
    while os.clock() < on do
        if Library.Unloaded or not Toggles.AutoStudFarm.Value then
            break
        end
        local max = math.max
        local op = tonumber(LocalPlayer:GetAttribute("HeightProgressStuds")) or 0
        om = max(om, op)
        if om >= ol then
            break
        end
        of.CFrame = CFrame.new(oj)
        of.AssemblyLinearVelocity = Vector3.zero
        task.wait(0.05)
    end
    local oj_1 = { math.max(og_2 * 0.35, 1200), math.max(og_2 * 0.12, 450), 140, 55 }
    for i, v in ipairs(oj_1) do
        if Library.Unloaded or not Toggles.AutoStudFarm.Value then
            break
        end
        local og_4 = oi_2 + v
        of.CFrame = CFrame.new(oh_3.X, og_4, oh_3.Z)
        of.AssemblyLinearVelocity = Vector3.new(0, -math.clamp(v * 0.45, 80, 280), 0)
        task.wait(0.16)
    end
    kA(oe_1)
    task.wait(0.65)
    return true
end
k9 = fn516
k7 = function(d3)
    local oP = kH()
    if not (oP and d3) then
        return false
    elseif firetouchinterest then
        pcall(function()
            firetouchinterest(oP, d3, 0)
            task.wait(0.12)
            firetouchinterest(oP, d3, 1)
        end)
        return true
    else
        return k5(d3.CFrame + Vector3.new(0, 3, 0))
    end
end
kz = fn67
ln = fn411
ld = fn453
kI = function(ex, ey, ez, eA, eB)
    if type(ex) ~= "table" then
        return false
    end
    local pb
    local pc = -math.huge
    local pd = false
    for k, v in ex do
        local pe_1 = type(v) == "table" and v.Owned == true
        if pe_1 then
            local pe_2 = tonumber(v[ez]) or tonumber(v.HeightBuff) or tonumber(v.HeightBonus) or tonumber(v.HeightMultiplier) or v.Level
            local pf = pe_2 or 0
            local pf_1 = v[ey]
            if pf_1 and pf >= pc then
                pc = pf
                pb = pf_1
                pd = v.Equipped == true or v[eA] == true
            end
        end
    end
    if pb and not pd then
        local pc_2 = pcall(function()
            k6(eB(pb))
        end)
        return pc_2
    end
    return false
end
kW = function(eT, eU, eV)
    if type(eT) ~= "table" then
        return
    end
    local pr = {}
    for k, v in eT do
        local ps = type(v) == "table" and v.Owned ~= true and v.CanPurchase ~= false
        if ps then
            table.insert(pr, v)
        end
    end
    table.sort(pr, function(e_, e0)
        local po = tonumber(e_.Level) or 0
        local pp = tonumber(e0.Level) or 0
        return po < pp
    end)
    for k, v in pr do
        local pF = v
        if lj(pF.Price) then
            pcall(function()
                k6(eV(pF[eU]))
            end)
            task.wait(0.15)
        end
    end
end
kC = fn92
la = fn275
lu = fn203
kO = function()
    local p6_1, p6_3
    local p5_1, p5_5
    local p2
    local p3 = -math.huge
    local p4
    p5_1, p6_1 = k6(kE:GetPaidWingSnapshot())
    local p7 = p5_1 and type(p6_1) == "table" and type(p6_1.Wings) == "table"
    if p7 then
        for k, v in p6_1.Wings do
            local p5_2 = type(v) == "table" and v.Owned == true
            if p5_2 then
                local p5_3 = tonumber(v.HeightMultiplier) or 0
                if p5_3 >= p3 then
                    p3 = p5_3
                    p2 = v.PaidWingId or k
                    p4 = "Paid"
                end
            end
        end
    end
    p5_5, p6_3 = k6(kE:GetSeasonWingSnapshot())
    local p7_1 = p5_5 and type(p6_3) == "table" and type(p6_3.Wings) == "table"
    if p7_1 then
        for k, v in p6_3.Wings do
            local p5_6 = type(v) == "table" and v.Owned == true
            if p5_6 then
                local p5_7 = tonumber(v.HeightMultiplier) or 0
                if p5_7 >= p3 then
                    p3 = p5_7
                    p2 = v.SeasonWingId or k
                    p4 = "Season"
                end
            end
        end
    end
    if not p2 then
        return false
    end
    if p4 == "Paid" then
        pcall(function()
            k6(kE:EquipPaidWing(p2))
        end)
    else
        pcall(function()
            k6(kE:EquipSeasonWing(p2))
        end)
    end
    return true
end
kK = function()
    local qs_1, qs_2
    local qr_1, qr_5
    qr_1, qs_1 = k6(k8:GetSnapshot())
    local qt = not qr_1
    local qx = if qt then 1 else 0
    local qv = 289 * qx + 1144 * (1 - qx)
    local qw = 1387 * qx + 2820 * (1 - qx)
    if not ((qv * 3108 + qw * 2535 + qv * qw) % 16777213 == 4815100) then
        qt = type(qs_1) ~= "table"
    end
    if not qt then
        qt = type(qs_1.Worlds) ~= "table"
    end
    if qt then
        return
    end
    for i, v in ipairs(qs_1.Worlds) do
        if type(v) == "table" then
            local qq = tonumber(v.WorldId)
            if qq then
                if v.Unlocked ~= true then
                    local qp = tonumber(v.RequiredMasterTalkWorldId)
                    if qp and v.MasterTalkRequirementMet ~= true then
                        pcall(function()
                            k6(k8:RecordMasterTalk(qp))
                        end)
                        task.wait(0.2)
                    end
                    if v.CanUnlock == true or v.MasterTalkRequirementMet == true then
                        pcall(function()
                            k6(k8:UnlockWorld(qq))
                        end)
                        task.wait(0.25)
                    end
                else
                    local qr_4 = v.Current ~= true
                    if qr_4 then
                        local qt_1 = tonumber(qs_1.NextUnlockWorldId) or qq
                        qr_4 = qq == qt_1
                    end
                    if qr_4 then
                        pcall(function()
                            k6(k8:TeleportToWorld(qq))
                        end)
                    end
                end
            end
        end
    end
    qr_5, qs_2 = k6(k8:GetSnapshot())
    local qt_2 = qr_5 and type(qs_2) == "table" and type(qs_2.Worlds) == "table"
    if qt_2 then
        local qo = 1
        for i, v in ipairs(qs_2.Worlds) do
            local qr_6 = type(v) == "table" and v.Unlocked == true
            if qr_6 then
                local qr_7 = tonumber(v.WorldId) or 1
                if qr_7 > qo then
                    qo = qr_7
                end
            end
        end
        if qo ~= kM() then
            pcall(function()
                k6(k8:TeleportToWorld(qo))
            end)
        end
    end
end
task.spawn(autoStudFarmLoop)
task.spawn(autoStudFarmLoop2)
task.spawn(autoRebirthLoop)
task.spawn(autoBuyWorldsLoop)
task.spawn(autoEquipBestPetLoop)
task.spawn(autoBuyTrailsLoop)
task.spawn(autoHatchEggsLoop)
