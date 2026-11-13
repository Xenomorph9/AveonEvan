local gY
local gF
local g0
local gm
local g3
local UpgradesConfig
local g6
local gI
local ProgressionConfig
local LocalPlayer
local Toggles
local Upgrade_Buy
local onDescendantAdded
local gU
local gB
local gX
local gE
local g_
local gH
local g2
local gK
local go
local g5
local gN
local gr
local gQ
local Label
local gT
local connection
local gA
local Progression_Rebirth
local gD
local gG
local Lighting
local gn
local gJ
local gq
local gM
local DestructionConfig
local gt
local gP
local gw
local VirtualUser
local gz
local Destruction_Punch
local function fn24(bw)
    table.clear(g6)
    table.clear(g3)
    for i, child in bw:GetChildren() do
        gB(child)
    end
    gY = 0
end
local function autoRebirthLoop()
    while true do
        task.wait(2)
        if gF.Unloaded then
            break
        end
        if Toggles.AutoRebirth.Value then
            local Data = gM.Data
            if not ProgressionConfig.IsMaxRebirths(Data.Rebirths) then
                local j8 = ProgressionConfig.GetRebirthLevelRequired(Data.Rebirths)
                local j9 = ProgressionConfig.GetLevelInfo(Data.Bananas, ProgressionConfig.GetMaxLevel(Data.Rebirths))
                if j9 >= j8 then
                    Progression_Rebirth:FireServer()
                end
            end
        end
    end
end
local function fn43(bf)
    local il = bf ~= nil and bf:IsA("BasePart") and bf.CanQuery
    return il
end
local function autoPunchAuraLoop()
    while true do
        local jA = math.max(DestructionConfig.PunchCooldown, gr.PunchAuraDelay.Value)
        local wait = task.wait
        local jA_1 = Toggles.AutoPunchAura.Value and jA or 0.25
        wait(jA_1)
        if gF.Unloaded then
            break
        end
        if Toggles.AutoPunchAura.Value then
            local Character = LocalPlayer.Character
            local jB_1 = Character and Character:FindFirstChild("HumanoidRootPart")
            local jC_1 = Character
            if jC_1 then
                jC_1 = Character:FindFirstChildOfClass("Humanoid")
            end
            local jA_3 = jB_1
            local jB_2 = jC_1
            if jA_3 then
                jA_3 = jB_2
            end
            if jA_3 then
                jA_3 = jB_2.Health > 0
            end
            if jA_3 then
                jA_3 = ProgressionConfig.IsInMap(jB_1)
            end
            if jA_3 then
                Destruction_Punch:FireServer(DestructionConfig.PunchType.Ground, jB_1.Position)
            end
        end
    end
end
local function onRscripts()
    if setclipboard then
        setclipboard(gE)
    elseif toclipboard then
        toclipboard(gE)
    end
    gF:Notify("Copied Rscripts profile to clipboard")
end
local function fn121()
    if setclipboard then
        setclipboard(gH)
    elseif toclipboard then
        toclipboard(gH)
    end
    gF:Notify("Copied Discord invite to clipboard")
end
local function fn130(bM)
    local iJ = #g6
    while iJ > 0 do
        gY = gY % #g6 + 1
        local iK = g6[gY]
        local iL = iK and iK:IsDescendantOf(bM) and gK(iK)
        if iL then
            return iK
        end
        g0(iK)
        iJ -= 1
    end
    return nil
end
local function fn139(bo)
    local iq = g3[bo]
    if not iq then
        return
    end
    local ir = #g6
    local is = g6[ir]
    g6[iq] = is
    g6[ir] = nil
    g3[bo] = nil
    if is and is ~= bo then
        g3[is] = iq
    end
    if gY > #g6 then
        gY = 0
    end
end
local function fn141()
    local hT_1
    local hS_1
    if identifyexecutor then
        hT_1, hS_1 = identifyexecutor()
        local hU = hT_1 ~= ""
        local hV = type(hT_1) == "string" and hU
        if hV then
            local hU_1 = type(hS_1) == "string" and hS_1 ~= "" and hT_1 .. " " .. hS_1
            gU = hU_1 or hT_1
        end
    end
end
local function fn148(J, K, L)
    return string.format("<b>%s</b> %s %s", J, gJ("-", "#5a6070"), gJ(K, L))
end
local function fn159(bE)
    if gT then
        gT:Disconnect()
        gT = nil
    end
    if gQ then
        gQ:Disconnect()
        gQ = nil
    end
    gn = bE
    gw(bE)
    gT = bE.ChildAdded:Connect(gB)
    gQ = bE.ChildRemoved:Connect(g0)
end
local function antiAfkLoop()
    while true do
        task.wait(2)
        if gF.Unloaded then
            break
        end
        if Toggles.AntiAfk.Value then
            local jt = tick() - gm
            local ju = tick() - g5
            if jt >= 300 and ju >= 60 then
                pcall(gI)
            else
                if jt < 300 and ju >= 300 then
                    pcall(gI)
                end
            end
        end
    end
end
local function onUnload()
    gF:Unload()
end
local function fn215()
    gt:Disconnect()
    connection:Disconnect()
    print("+1 Banana Monkey Destruction unloaded")
end
local function fn221(G, H)
    return string.format('<font color="%s">%s</font>', H, G)
end
local function onInputBegan()
    gm = tick()
end
local function worker()
    local h2_1
    while true do
        task.wait(1)
        if gF.Unloaded then
            break
        end
        local h1 = math.floor(os.clock() - gP)
        if h1 < 60 then
            h2_1 = h1 .. "s"
        elseif h1 < 3600 then
            h2_1 = string.format("%dm %ds", h1 // 60, h1 % 60)
        else
            h2_1 = string.format("%dh %dm", h1 // 3600, h1 % 3600 // 60)
        end
        Label:SetText(gA("Session time", h2_1, gX))
    end
end
local function fn345()
    local Character = LocalPlayer.Character
    local ij = Character and Character:FindFirstChild("HumanoidRootPart")
    return ij
end
local function autoBuyUpgradesLoop()
    while true do
        task.wait(1)
        if gF.Unloaded then
            break
        end
        if Toggles.AutoBuyUpgrades.Value then
            local Data = gM.Data
            local jU = g2[gr.UpgradePriority.Value]
            local jV = false
            if jU then
                local jW = Data.Upgrades[jU]
                local jX = Data.Rebirths >= UpgradesConfig[jU].RebirthsRequired and jW < UpgradesConfig.GetLevelCap(jU)
                if jX then
                    local jX_1 = UpgradesConfig.GetCost(jU, jW)
                    jV = jX_1 ~= math.huge
                    if jV and Data.Cash >= jX_1 then
                        Upgrade_Buy:FireServer(jU)
                    end
                end
            end
            if not jV then
                for k, v in UpgradesConfig.Order do
                    local jU_1 = Data.Upgrades[v]
                    local jV_1 = Data.Rebirths >= UpgradesConfig[v].RebirthsRequired and jU_1 < UpgradesConfig.GetLevelCap(v)
                    if jV_1 then
                        local jV_2 = UpgradesConfig.GetCost(v, jU_1)
                        if jV_2 ~= math.huge and Data.Cash >= jV_2 then
                            Upgrade_Buy:FireServer(v)
                        end
                    end
                end
            end
        end
    end
end
local function fn500()
    g_()
    if gT then
        gT:Disconnect()
    end
    if gQ then
        gQ:Disconnect()
    end
end
local function fn542(X)
    local DiscordGroup = X:AddLeftGroupbox("Discord", nil, true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = gN })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = gN })
end
local function onInputChanged(aW)
    local UserInputType = aW.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        gm = tick()
    end
end
local function fn565()
    go(Toggles.FpsBoost.Value)
end
local function fn566(cy)
    g_()
    if not cy then
        return
    end
    local Rendering = settings().Rendering
    gz(Rendering, "QualityLevel", Enum.QualityLevel.Level01)
    gz(Lighting, "GlobalShadows", false)
    gz(Lighting, "EnvironmentDiffuseScale", 0)
    gz(Lighting, "EnvironmentSpecularScale", 0)
    local Terrain = workspace.Terrain
    gz(Terrain, "Decoration", false)
    gz(Terrain, "WaterWaveSize", 0)
    gz(Terrain, "WaterWaveSpeed", 0)
    gz(Terrain, "WaterReflectance", 0)
    for i, descendant in workspace:GetDescendants() do
        onDescendantAdded(descendant)
    end
    for i, descendant in Lighting:GetDescendants() do
        onDescendantAdded(descendant)
    end
    gG = game.DescendantAdded:Connect(onDescendantAdded)
end
local function fn569(bi)
    local io = g3[bi] or not gK(bi)
    if io then
        return
    end
    table.insert(g6, bi)
    g3[bi] = #g6
end
local function fn572(bV, bW, bX)
    local iN = bX.Size * 0.5
    local CFrame2 = bX.CFrame
    local iP = math.abs(CFrame2.RightVector.Y) * iN.X + math.abs(CFrame2.UpVector.Y) * iN.Y + math.abs(CFrame2.LookVector.Y) * iN.Z
    local iN_1 = bW.HipHeight + bV.Size.Y * 0.5 + 0.5
    local iO_1 = Vector3.new(bX.Position.X, bX.Position.Y + iP + iN_1, bX.Position.Z)
    local iN_2 = Vector3.new(bV.CFrame.LookVector.X, 0, bV.CFrame.LookVector.Z)
    if iN_2.Magnitude < 0.001 then
        return CFrame.new(iO_1)
    end
    return CFrame.lookAt(iO_1, iO_1 + iN_2.Unit)
end
local function fn575()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    g5 = tick()
end
local function fn595(cj)
    if cj:IsA("BasePart") then
        gz(cj, "CastShadow", false)
        gz(cj, "Reflectance", 0)
    else
        local iY = (cj:IsA("Decal"))
        local i1 = if iY then 1 else 0
        local i_ = 1009 * i1 + 2167 * (1 - i1)
        local i0 = 2339 * i1 + 2111 * (1 - i1)
        if not ((i_ * 1270 + i0 * 1513 + i_ * i0) % 16777213 == 7180388) then
            iY = cj:IsA("Texture")
        end
        if iY then
            gz(cj, "Transparency", 1)
        else
            local iY_1 = (cj:IsA("ParticleEmitter"))
            local i1_1 = if iY_1 then 1 else 0
            local i__1 = 386 * i1_1 + 1338 * (1 - i1_1)
            local i0_1 = 423 * i1_1 + 606 * (1 - i1_1)
            if not ((i__1 * 3436 + i0_1 * 2900 + i__1 * i0_1) % 16777213 == 2716274) then
                iY_1 = cj:IsA("Trail")
            end
            if not iY_1 then
                iY_1 = cj:IsA("Beam")
            end
            if not iY_1 then
                iY_1 = cj:IsA("Smoke")
            end
            if not iY_1 then
                iY_1 = cj:IsA("Fire")
            end
            if not iY_1 then
                iY_1 = cj:IsA("Sparkles")
            end
            if not iY_1 then
                iY_1 = cj:IsA("PostEffect")
            end
            if iY_1 then
                gz(cj, "Enabled", false)
            elseif cj:IsA("Atmosphere") then
                gz(cj, "Density", 0)
            end
        end
    end
end
local function autoGoMapLoop()
    while true do
        task.wait(1)
        if gF.Unloaded then
            break
        end
        if Toggles.AutoGoMap.Value then
            local jx = gD()
            local jy = jx and not ProgressionConfig.IsInMap(jx)
            if jy then
                jx.CFrame = CFrame.new(0, 10, 0)
            end
        end
    end
end
local function onCopyJoinScript_JobID()
    local h_ = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, gq)
    if setclipboard then
        setclipboard(h_)
    elseif toclipboard then
        toclipboard(h_)
    end
    gF:Notify("Copied join script to clipboard")
end
gm = nil
gn = nil
go = nil
UpgradesConfig = nil
gq = nil
gr = nil
ProgressionConfig = nil
gt = nil
Label = nil
Toggles = nil
gw = nil
onDescendantAdded = nil
gz = nil
gA = nil
gB = nil
gD = nil
gE = nil
gF = nil
gG = nil
gH = nil
gI = nil
gJ = nil
gK = nil
gM = nil
gN = nil
LocalPlayer = nil
gP = nil
gQ = nil
Upgrade_Buy = nil
VirtualUser = nil
gT = nil
gU = nil
Destruction_Punch = nil
connection = nil
gX = nil
gY = nil
Progression_Rebirth = nil
g_ = nil
g0 = nil
Lighting = nil
g2 = nil
g3 = nil
g5 = nil
g6 = nil
DestructionConfig = nil
local gx, gC, gL, g4
local ScriptsGroup
local FeaturesGroup
local SocialsGroup
local OuroborosHubGroup
local FaqGroup
local AutoGoMapGroup
local AutoPunchAuraGroup
local hm_1
local hb_1, hb_6
local Modules, MenuGroup
Lighting, VirtualUser, LocalPlayer, gH, gE, Modules, ProgressionConfig, UpgradesConfig, DestructionConfig, Progression_Rebirth, Destruction_Punch, Upgrade_Buy, gM, hb_1, gF, Toggles, gr, g2 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local he = game:GetService("ReplicatedStorage")
Lighting = game:GetService("Lighting")
local hj = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
LocalPlayer = Players.LocalPlayer
local hi = "+1 Banana Monkey Destruction"
gH = "https://discord.gg/ehKVq7pf7v"
gE = "https://rscripts.net/@Ouroboros"
local Events = he:WaitForChild("Shared"):WaitForChild("Events")
local ha_1
if (gr or hb_1 or hb_1 and gr) and (not UpgradesConfig or not UpgradesConfig or not hb_1 and gr) and (UpgradesConfig and hb_1 and (hb_1 or UpgradesConfig) or (Toggles or not gr or (not hb_1 or not gr))) or not ((gr or hb_1 or hb_1 and gr) and (not UpgradesConfig or not UpgradesConfig or not hb_1 and gr) and (UpgradesConfig and hb_1 and (hb_1 or UpgradesConfig) or (Toggles or not gr or (not hb_1 or not gr)))) then
    Modules = he.Shared.Modules
else
    he = Modules.Shared.Modules
end
ProgressionConfig = require(Modules.Config.ProgressionConfig)
UpgradesConfig = require(Modules.Config.UpgradesConfig)
DestructionConfig = require(Modules.Config.DestructionConfig)
local DataController = require(he.Client.Modules.Main.DataController)
Progression_Rebirth = Events:WaitForChild("Progression_Rebirth")
Destruction_Punch = Events:WaitForChild("Destruction_Punch")
Upgrade_Buy = Events:WaitForChild("Upgrade_Buy")
gM = DataController.GetReplica()
gF = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local hh = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = gF.Toggles
gr = gF.Options
local hf = "Game Order"
local hk = { "Game Order" }
g2 = {}
for k, v in UpgradesConfig.Order do
    local g8_1 = v:gsub("(%l)(%u)", "%1 %2")
    table.insert(hk, g8_1)
    g2[g8_1] = v
end
gX, gJ, gA, gN = nil, nil, nil, nil
gJ = fn221
gA = fn148
local hc = "#7fd47f"
local AutoBuyUpgradesGroup
local hl = "#6ec1ff"
gX = "#e8a34d"
local he_1 = "#8b93a3"
gN = fn121
local Window = gF:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = gH, Copyable = true }, "|", hi },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local hd_1 = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "target"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in hd_1 do
    fn542(v)
end
gU, hm_1, Label, gq, ha_1 = nil, nil, nil, nil, nil
local g8_2 = 11
repeat
    local hb_3 = (g8_2 * 2 + 0) % 3 + 1
    if hb_3 <= 2 then
        if hb_3 <= 1 then
            if g8_2 * 75296743 + 8 + 2 >= g8_2 * 75296743 + 8 + 2 + 6 then
                gq = #ha_1 > 18
            else
                ha_1 = #gq > 18
            end
            g8_2 = (g8_2 + 11) % 24
        else
            if (g8_2 * 3 + 3) * 17 % 4 == ((g8_2 * 3 + 3) * 17 + 4) % 4 then
                gU = "Unknown"
                pcall(fn141)
                local AccountGroup = hd_1.Info:AddLeftGroupbox("Account", "circle-user")
                AccountGroup:AddLabel(gA("User", LocalPlayer.Name, hc), true)
                AccountGroup:AddLabel(gA("Status", "Keyless", hc), true)
                AccountGroup:AddLabel(gA("Executor", gU, hc), true)
                hm_1 = hd_1.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                hm_1:AddLabel(gJ(hi .. " [" .. tostring(game.PlaceId) .. "]", hl), true)
                hm_1:AddLabel(gA("Place ID", tostring(game.PlaceId), hl), true)
                Label = hm_1:AddLabel(gA("Session time", "0s", gX), true)
            else
                pcall(fn141)
                hd_1 = (nil):AddLeftGroupbox("Account", "circle-user")
                hd_1:AddLabel(LocalPlayer("User", gA.Name, gJ), true)
                hd_1:AddLabel(LocalPlayer("Status", "Keyless", gJ), true)
                hd_1:AddLabel(LocalPlayer("Executor", "Unknown", gJ), true)
                gX = (nil):AddLeftGroupbox("Game Info", "gamepad-2")
                gX:AddLabel(hl(gU .. " [" .. tostring(game.PlaceId) .. "]", Label), true)
                gX:AddLabel(LocalPlayer("Place ID", tostring(game.PlaceId), Label), true)
                hm_1 = gX:AddLabel(LocalPlayer("Session time", "0s", hc), true)
            end
            g8_2 = (g8_2 + 8) % 24
        end
    else
        local hb_4 = { "zxkbjyv", "huprtztyfvz", "qdfpgnqwbal", "inijzfofb", "tdt", "seajx", "mumhx" }
        local kB = g8_2
        local hn_1 = hb_4[kB % 7 + 1]
        if hn_1:len() <= hn_1:gsub("(.)", "%1%1", kB % 3 % 2 + 1):len() then
            gq = tostring(game.JobId)
        else
            hm_1 = tostring(game.JobId)
        end
        g8_2 = (g8_2 + 23) % 24
    end
until (g8_2 * 7 + 19) % 24 == 6
if ha_1 then
    local g8_3 = 2
    repeat
        local g9_4 = (vector.create((g8_3 * 1 + 3) % 11 + 1, (g8_3 * 2 + 13) % 13 + 1, (g8_3 * 10 + 12) % 17 + 1))
        local hb_5 = (vector.create((g8_3 * 3 + 3) % 11 + 1, (g8_3 * 1 + 13) % 13 + 1, (g8_3 * 6 + 1) % 17 + 1))
        local hc_1 = (vector.create((g8_3 * 2 + 3) % 11 + 1, (g8_3 * 3 + 7) % 13 + 1, (g8_3 * 2 + 12) % 17 + 1))
        local hn_2 = (vector.create((g8_3 * 3 + 2) % 5 + 1, (g8_3 * 4 + 3) % 7 + 1, (g8_3 * 4 + 3) % 9 + 1))
        if vector.dot(vector.cross(g9_4, (vector.cross(hb_5, hc_1))), hn_2) == vector.dot(hb_5 * vector.dot(g9_4, hc_1) - hc_1 * vector.dot(g9_4, hb_5), hn_2) then
            ha_1 = string.sub(gq, 1, 18) .. "..."
        else
            gq = string.sub(ha_1, 1, 18) .. "..."
        end
        g8_3 = (g8_3 + 5) % 8
    until (g8_3 * 7 + 3) % 8 == 4
end
local g8_4 = ha_1 or gq
gP, ScriptsGroup, FeaturesGroup, SocialsGroup, OuroborosHubGroup, FaqGroup, AutoGoMapGroup, AutoPunchAuraGroup, AutoBuyUpgradesGroup, hb_6, MenuGroup, gm, g5, gt, connection, gn, g6, g3, gY, gT, gQ, gG, gC, gI, gD, gK, gB, g0, gw, gL, g4, gx, gz, onDescendantAdded, g_, go = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local ha_2 = 134
repeat
    local hw = (ha_2 * 3 + 11) % 20 + 1
    if hw <= 10 then
        if hw <= 5 then
            if hw <= 3 then
                if hw <= 2 then
                    if hw <= 1 then
                        local hx_1 = (vector.create((ha_2 * 5 + 4) % 11 + 1, (ha_2 * 6 + 13) % 13 + 1, (ha_2 * 4 + 13) % 17 + 1))
                        local hy_1 = (vector.create((ha_2 * 1 + 4) % 11 + 1, (ha_2 * 8 + 7) % 13 + 1, (ha_2 * 14 + 1) % 17 + 1))
                        local hz_1 = (vector.create((ha_2 * 4 + 4) % 11 + 1, (ha_2 * 9 + 3) % 13 + 1, (ha_2 * 2 + 1) % 17 + 1))
                        if vector.dot(vector.cross(hx_1, hy_1), hz_1) == vector.dot(vector.cross(hy_1, hz_1), hx_1) + 4 then
                            AutoPunchAuraGroup:AddToggle("AutoGoMap", { Text = "Auto Go Map", Default = false })
                            hd_1 = AutoGoMapGroup.Main:AddLeftGroupbox("Auto Punch Aura", "hand")
                        else
                            AutoGoMapGroup:AddToggle("AutoGoMap", { Text = "Auto Go Map", Default = false })
                            AutoPunchAuraGroup = hd_1.Main:AddLeftGroupbox("Auto Punch Aura", "hand")
                        end
                        ha_2 = (ha_2 + 47) % 160
                    else
                        local hx_2 = (vector.create((ha_2 * 6 + 6) % 11 + 1, (ha_2 * 8 + 4) % 13 + 1, (ha_2 * 13 + 10) % 17 + 1))
                        local hy_2 = (vector.create((ha_2 * 6 + 8) % 11 + 1, (ha_2 * 7 + 13) % 13 + 1, (ha_2 * 6 + 15) % 17 + 1))
                        local ky = vector.cross(hx_2, hy_2)
                        local kz = vector.dot(hx_2, hy_2)
                        if vector.dot(ky, ky) + kz * kz == vector.dot(hx_2, hx_2) * vector.dot(hy_2, hy_2) then
                            AutoPunchAuraGroup:AddToggle("AutoPunchAura", { Text = "Auto Punch Aura", Default = false })
                            AutoPunchAuraGroup:AddSlider("PunchAuraDelay", { Text = "Punch Delay", Default = 0.01, Min = 0.01, Max = 1, Rounding = 2 })
                            AutoPunchAuraGroup:AddToggle("AutoGoPunchable", { Text = "Auto Go to Punchable Areas", Default = false })
                            AutoPunchAuraGroup:AddSlider("PunchableTeleportDelay", { Text = "Teleport Delay", Default = 0.06, Min = 0.03, Max = 0.5, Rounding = 2 })
                            AutoBuyUpgradesGroup = hd_1.Main:AddRightGroupbox("Auto Buy Upgrades", "arrow-up-circle")
                        else
                            AutoBuyUpgradesGroup:AddToggle("AutoPunchAura", { Text = "Auto Punch Aura", Default = false })
                            AutoBuyUpgradesGroup:AddSlider("PunchAuraDelay", { Text = "Punch Delay", Min = 0.01, Max = 1, Rounding = 2, Default = 0.01 })
                            AutoBuyUpgradesGroup:AddToggle("AutoGoPunchable", { Text = "Auto Go to Punchable Areas", Default = false })
                            AutoBuyUpgradesGroup:AddSlider("PunchableTeleportDelay", { Max = 0.5, Rounding = 2, Min = 0.03, Default = 0.06, Text = "Teleport Delay" })
                            hd_1 = AutoPunchAuraGroup.Main:AddRightGroupbox("Auto Buy Upgrades", "arrow-up-circle")
                        end
                        ha_2 = (ha_2 + 127) % 160
                    end
                else
                    local hx_3 = {
                        "ghsyggj",
                        "jijfyzerp",
                        "kyjrm",
                        "addpnynhwnf",
                        "xybqx",
                        "zrsga",
                        "qwt",
                        "pdmnjg",
                        "ncbfdbagijj",
                        "tlxgjyeuv",
                        "emsdiqrz",
                        "hvvfgl"
                    }
                    local kI = ha_2
                    local hy_3 = hx_3[kI % 12 + 1]
                    if hy_3:len() >= hy_3:gsub("(.)", "%1%1", kI % 3 % 2 + 1):len() then
                        hb_6:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
                        hb_6:AddDropdown("UpgradePriority", { Default = hk, Text = "Upgrade Priority", Values = AutoBuyUpgradesGroup })
                        hd_1 = (nil):AddRightGroupbox("Auto Rebirth", "rotate-ccw")
                    else
                        AutoBuyUpgradesGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
                        AutoBuyUpgradesGroup:AddDropdown("UpgradePriority", { Text = "Upgrade Priority", Values = hk, Default = hf })
                        hb_6 = hd_1.Main:AddRightGroupbox("Auto Rebirth", "rotate-ccw")
                    end
                    ha_2 = (ha_2 + 107) % 160
                end
            elseif hw <= 4 then
                local hx_4 = (vector.create((ha_2 * 3 + 2) % 11 + 1, (ha_2 * 2 + 7) % 13 + 1, (ha_2 * 4 + 10) % 17 + 1))
                local hy_4 = (vector.create((ha_2 * 6 + 6) % 11 + 1, (ha_2 * 2 + 13) % 13 + 1, (ha_2 * 8 + 15) % 17 + 1))
                local hz_2 = (vector.create((ha_2 * 7 + 2) % 11 + 1, (ha_2 * 2 + 11) % 13 + 1, (ha_2 * 13 + 2) % 17 + 1))
                local hA_1 = (vector.create((ha_2 * 2 + 8) % 11 + 1, (ha_2 * 7 + 4) % 13 + 1, (ha_2 * 13 + 2) % 17 + 1))
                if vector.dot(vector.cross(hx_4, hy_4), (vector.cross(hz_2, hA_1))) == vector.dot(hx_4, hz_2) * vector.dot(hy_4, hA_1) - vector.dot(hx_4, hA_1) * vector.dot(hy_4, hz_2) + 1 then
                    hd_1:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
                    hb_6 = MenuGroup.Settings:AddLeftGroupbox("Menu")
                else
                    hb_6:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
                    MenuGroup = hd_1.Settings:AddLeftGroupbox("Menu")
                end
                ha_2 = (ha_2 + 87) % 160
            else
                local kx = bit32.rrotate(bit32.bxor(bit32.lrotate(ha_2, 27), string.byte(tostring(gT))), 16)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(kx, 1273591959), 1306036670), (bit32.bxor(bit32.band(kx, 3021375336), 4288302498))), 1306036670), 4288302498) == kx then
                    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
                    gF.ToggleKeybind = gr.MenuKeybind
                    gm = tick()
                    g5 = tick()
                    pcall(function()
                        for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
                            local ib = v
                            pcall(function()
                                ib:Disable()
                            end)
                        end
                    end)
                    gI = fn575
                    gt = hj.InputBegan:Connect(onInputBegan)
                    connection = hj.InputChanged:Connect(onInputChanged)
                else
                    gm:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { NoUI = true, Default = "RightShift", Text = "Menu keybind" })
                    connection.ToggleKeybind = g5.MenuKeybind
                    hj = tick()
                    gt = tick()
                    pcall(function()
                        for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
                            local ib = v
                            pcall(function()
                                ib:Disable()
                            end)
                        end
                    end)
                    gr = fn575
                    gI = MenuGroup.InputBegan:Connect(onInputBegan)
                    gF = MenuGroup.InputChanged:Connect(onInputChanged)
                end
                ha_2 = (ha_2 + 27) % 160
            end
        elseif hw <= 8 then
            if hw <= 7 then
                if hw <= 6 then
                    local hx_5 = { "qzwr", "ftpxnn", "wawbzrcfzg", "hxj", "kygpluphhjx", "ibwx", "kxdbvaf" }
                    local kF = ha_2
                    local hy_5 = hx_5[kF % 7 + 1]
                    if hy_5:len() >= hy_5:gsub("(.)", "%1%1", kF % 3 % 2 + 1):len() then
                        SaveManager:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
                        hh = gF.Settings:AddRightGroupbox("Performance", "gauge")
                        hh:AddToggle("FpsBoost", { Text = "FPS Boost", Default = false })
                        SaveManager:AddButton("Unload", onUnload)
                        MenuGroup:SetLibrary(gD)
                        MenuGroup:SetFolder("OuroborosHub")
                        MenuGroup:SaveDefault("Monochrome")
                        hd_1:SetLibrary(gD)
                        hd_1:IgnoreThemeSettings()
                        hd_1:SetIgnoreIndexes({ "MenuKeybind" })
                        hd_1:SetFolder("OuroborosHub/BananaMonkeyDestruction")
                        hd_1:BuildConfigSection(gF.Settings)
                        MenuGroup:ApplyToTab(gF.Settings)
                        MenuGroup:LoadDefault()
                        hd_1:LoadAutoloadConfig()
                        gD:OnUnload(fn215)
                    else
                        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
                        local PerformanceGroup = hd_1.Settings:AddRightGroupbox("Performance", "gauge")
                        PerformanceGroup:AddToggle("FpsBoost", { Text = "FPS Boost", Default = false })
                        MenuGroup:AddButton("Unload", onUnload)
                        hh:SetLibrary(gF)
                        hh:SetFolder("OuroborosHub")
                        hh:SaveDefault("Monochrome")
                        SaveManager:SetLibrary(gF)
                        SaveManager:IgnoreThemeSettings()
                        SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
                        SaveManager:SetFolder("OuroborosHub/BananaMonkeyDestruction")
                        SaveManager:BuildConfigSection(hd_1.Settings)
                        hh:ApplyToTab(hd_1.Settings)
                        hh:LoadDefault()
                        SaveManager:LoadAutoloadConfig()
                        gF:OnUnload(fn215)
                        gD = fn345
                    end
                    ha_2 = (ha_2 + 7) % 160
                else
                    local hx_6 = {
                        "bzg",
                        "agwyyl",
                        "bflugehhdv",
                        "sglmijbo",
                        "wqrwsnoop",
                        "uea",
                        "fhgubwrr",
                        "tdhtlxoijm",
                        "way",
                        "ptimrjg",
                        "xhihohif",
                        "ynfptvx",
                        "ruzgkrdblbtu",
                        "zcikuhy",
                        "uihwi"
                    }
                    if hx_6[(ha_2 * 1 + 44) % 15 + 1] <= hx_6[(ha_2 * 1 + 44) % 15 + 1] then
                        gn = nil
                        g6 = {}
                        g3 = {}
                        gY = 0
                        gT = nil
                    else
                        gY = nil
                        gn = {}
                        gT = {}
                        g3 = 0
                        g6 = nil
                    end
                    ha_2 = (ha_2 + 7) % 160
                end
            else
                if ha_2 * 105568791 + 4 + 2 <= ha_2 * 105568791 + 4 + 2 + 1 then
                    gQ = nil
                    gK = fn43
                    gB = fn569
                    g0 = fn139
                    gw = fn24
                else
                    g0 = nil
                    gw = fn43
                    gK = fn569
                    gQ = fn139
                    gB = fn24
                end
                ha_2 = (ha_2 + 67) % 160
            end
        elseif hw <= 9 then
            local hx_7 = {
                "rxszspz",
                "jcxtvwomtx",
                "ivcvzqevjn",
                "xynbazvr",
                "etocuib",
                "uukcaomfw",
                "mnrjus",
                "argf",
                "bzpda",
                "dxghrhyc",
                "mruexmja"
            }
            local kP = ha_2
            local hy_6 = hx_7[kP % 11 + 1]
            if hy_6:len() <= hy_6:gsub("(.)", "%1%1", kP % 3 % 2 + 1):len() then
                gL = fn159
                g4 = fn130
                gx = fn572
            else
                gx = fn159
                gL = fn130
                g4 = fn572
            end
            ha_2 = (ha_2 + 27) % 160
        else
            local hx_8 = (vector.create((ha_2 * 1 + 4) % 11 + 1, (ha_2 * 5 + 3) % 13 + 1, (ha_2 * 13 + 2) % 17 + 1))
            local hy_7 = (vector.create((ha_2 * 4 + 2) % 11 + 1, (ha_2 * 7 + 13) % 13 + 1, (ha_2 * 10 + 4) % 17 + 1))
            local hz_3 = (vector.create((ha_2 * 2 + 3) % 11 + 1, (ha_2 * 1 + 10) % 13 + 1, (ha_2 * 3 + 11) % 17 + 1))
            local hA_2 = (vector.create((ha_2 * 1 + 2) % 11 + 1, (ha_2 * 6 + 8) % 13 + 1, (ha_2 * 11 + 4) % 17 + 1))
            if vector.dot(vector.cross(hx_8, hy_7), (vector.cross(hz_3, hA_2))) == vector.dot(hx_8, hz_3) * vector.dot(hy_7, hA_2) - vector.dot(hx_8, hA_2) * vector.dot(hy_7, hz_3) then
                gG = nil
                gC = setmetatable({}, { __mode = "k" })
                gz = function(b6, b7, b8)
                    local iT_2
                    local iS_2
                    local iR = gC[b6]
                    if not iR then
                        iR = {}
                        gC[b6] = iR
                    end
                    if iR[b7] == nil then
                        iS_2, iT_2 = pcall(function()
                            return b6[b7]
                        end)
                        if not iS_2 then
                            return
                        end
                        iR[b7] = iT_2
                    end
                    pcall(function()
                        b6[b7] = b8
                    end)
                end
                onDescendantAdded = fn595
            else
                gz = nil
                gG = setmetatable({}, { __mode = "k" })
                onDescendantAdded = function(b6, b7, b8)
                    local iT_1
                    local iS_1
                    local iR = gC[b6]
                    if not iR then
                        iR = {}
                        gC[b6] = iR
                    end
                    if iR[b7] == nil then
                        iS_1, iT_1 = pcall(function()
                            return b6[b7]
                        end)
                        if not iS_1 then
                            return
                        end
                        iR[b7] = iT_1
                    end
                    pcall(function()
                        b6[b7] = b8
                    end)
                end
                gC = fn595
            end
            ha_2 = (ha_2 + 7) % 160
        end
    elseif hw <= 15 then
        if hw <= 13 then
            if hw <= 12 then
                if hw <= 11 then
                    if (ha_2 * 3 + 3) * 5 % 4 == ((ha_2 * 3 + 3) * 5 + 11) % 4 then
                        gw = function()
                            if gG then
                                gG:Disconnect()
                                gG = nil
                            end
                            for k, v in gC do
                                local i6 = k
                                for k, v in v do
                                    local jc = k
                                    local je = v
                                    pcall(function()
                                        i6[jc] = je
                                    end)
                                end
                            end
                            table.clear(gC)
                        end
                    else
                        g_ = function()
                            if gG then
                                gG:Disconnect()
                                gG = nil
                            end
                            for k, v in gC do
                                local i6 = k
                                for k, v in v do
                                    local jc = k
                                    local je = v
                                    pcall(function()
                                        i6[jc] = je
                                    end)
                                end
                            end
                            table.clear(gC)
                        end
                    end
                    ha_2 = (ha_2 + 47) % 160
                else
                    local kR = bit32.rrotate(bit32.bxor(bit32.lrotate(ha_2, 3), string.byte(tostring(gC))), 17)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(kR, 405072783), 113481678), (bit32.bxor(bit32.band(kR, 3889894512), 1598101293))), 113481678), 1598101293) ~= kR then
                        gw = fn566
                    else
                        go = fn566
                    end
                    ha_2 = (ha_2 + 7) % 160
                end
            else
                local hx_9 = {
                    "mptazcrtdrg",
                    "vkscbi",
                    "ipugiitqpvsk",
                    "sipkijfqeoks",
                    "wqwnoyy",
                    "nqnzaap",
                    "rxvupzm",
                    "myjeun",
                    "nsc",
                    "ncdppa",
                    "trbfivfq",
                    "ysmgqvrhlzur",
                    "vwavwy",
                    "szeuzungy"
                }
                if hx_9[(ha_2 * 58 + 11) % 14 + 1] <= hx_9[(ha_2 * 58 + 11) % 14 + 1] then
                    Toggles.FpsBoost:OnChanged(fn565)
                else
                    Toggles.FpsBoost:OnChanged(fn565)
                end
                ha_2 = (ha_2 + 7) % 160
            end
        elseif hw <= 14 then
            if (ha_2 * 2 + 7) * 10 % 3 == ((ha_2 * 2 + 7) * 10 + 5) % 3 then
                gP = hm_1
                he_1:AddLabel(g8_4("Server", gP, gA), true)
                he_1:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
                os.clock()
            else
                hm_1:AddLabel(gA("Server", g8_4, he_1), true)
                hm_1:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
                gP = os.clock()
            end
            ha_2 = (ha_2 + 47) % 160
        else
            if ha_2 * 23261707 + 2 + 7 <= ha_2 * 23261707 + 2 + 7 + 1 then
                task.spawn(worker)
                ScriptsGroup = hd_1.Info:AddRightGroupbox("Scripts", "package")
            else
                task.spawn(worker)
                hd_1 = ScriptsGroup.Info:AddRightGroupbox("Scripts", "package")
            end
            ha_2 = (ha_2 + 87) % 160
        end
    elseif hw <= 18 then
        if hw <= 17 then
            if hw <= 16 then
                local hx_10 = { "evycqqksxq", "ffrlubddmjc", "aaihio", "zlbe", "voifl", "jxvjv", "lsbunkkw", "uyqp" }
                local kK = ha_2
                local hy_8 = hx_10[kK % 8 + 1]
                if hy_8:len() <= hy_8:reverse():rep(kK % 3 + 2):len() then
                    ScriptsGroup:AddLabel(gJ("Included in this hub", he_1), true)
                    ScriptsGroup:AddLabel(gJ(hi, hl), true)
                    FeaturesGroup = hd_1.Info:AddRightGroupbox("Features", "list")
                else
                    he_1:AddLabel(FeaturesGroup("Included in this hub", ScriptsGroup), true)
                    he_1:AddLabel(FeaturesGroup(hl, hi), true)
                    hd_1 = gJ.Info:AddRightGroupbox("Features", "list")
                end
                ha_2 = (ha_2 + 27) % 160
            else
                local hx_11 = (vector.create((ha_2 * 1 + 7) % 11 + 1, (ha_2 * 3 + 7) % 13 + 1, (ha_2 * 5 + 2) % 17 + 1))
                local hy_9 = (vector.create((ha_2 * 3 + 1) % 11 + 1, (ha_2 * 4 + 8) % 13 + 1, (ha_2 * 15 + 5) % 17 + 1))
                local hz_4 = (vector.create((ha_2 * 1 + 8) % 11 + 1, (ha_2 * 2 + 10) % 13 + 1, (ha_2 * 15 + 12) % 17 + 1))
                if vector.dot(vector.cross(hx_11, hy_9), hz_4) == vector.dot(vector.cross(hy_9, hz_4), hx_11) then
                    FeaturesGroup:AddLabel(gJ("Auto Go Map", hl), true)
                    FeaturesGroup:AddLabel(gJ("Auto Go to Punchable Areas", hl), true)
                    FeaturesGroup:AddLabel(gJ("Auto Punch Aura", gX), true)
                    FeaturesGroup:AddLabel(gJ("Auto Buy Upgrades", hl), true)
                    FeaturesGroup:AddLabel(gJ("Auto Rebirth", gX), true)
                    SocialsGroup = hd_1.Info:AddRightGroupbox("Socials", "link")
                else
                    gX:AddLabel(FeaturesGroup("Auto Go Map", SocialsGroup), true)
                    gX:AddLabel(FeaturesGroup("Auto Go to Punchable Areas", SocialsGroup), true)
                    gX:AddLabel(FeaturesGroup("Auto Punch Aura", hl), true)
                    gX:AddLabel(FeaturesGroup("Auto Buy Upgrades", SocialsGroup), true)
                    gX:AddLabel(FeaturesGroup("Auto Rebirth", hl), true)
                    hd_1 = gJ.Info:AddRightGroupbox("Socials", "link")
                end
                ha_2 = (ha_2 + 67) % 160
            end
        else
            if ha_2 * 76137029 + 6 + 2 <= ha_2 * 76137029 + 6 + 2 + 5 then
                SocialsGroup:AddButton({ Text = "Discord", Func = gN })
                SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
                OuroborosHubGroup = hd_1.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
            else
                OuroborosHubGroup:AddButton({ Text = "Discord", Func = SocialsGroup })
                OuroborosHubGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
                hd_1 = gN.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
            end
            ha_2 = (ha_2 + 7) % 160
        end
    elseif hw <= 19 then
        local hw_1 = {
            "mfojamdzm",
            "rhrenr",
            "lvm",
            "nzopzhxqj",
            "wbdeibawq",
            "fdad",
            "fqcbrmjqi",
            "bzcy",
            "fqjsrl",
            "puakkddcic",
            "snvimsylnwr",
            "hgecdhnztj"
        }
        local kL = ha_2
        local hx_12 = hw_1[kL % 12 + 1]
        if hx_12:len() <= hx_12:reverse():rep(kL % 3 + 2):len() then
            OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
            OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
            OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
            OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = gN })
            FaqGroup = hd_1.Info:AddRightGroupbox("FAQ", "circle-help")
        else
            gN:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
            gN:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
            gN:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
            gN:AddButton({ Text = "Copy Discord Invite", Func = OuroborosHubGroup })
            hd_1 = FaqGroup.Info:AddRightGroupbox("FAQ", "circle-help")
        end
        ha_2 = (ha_2 + 27) % 160
    else
        local hw_2 = (vector.create((ha_2 * 6 + 2) % 11 + 1, (ha_2 * 11 + 9) % 13 + 1, (ha_2 * 9 + 4) % 17 + 1))
        local hx_13 = (vector.create((ha_2 * 4 + 7) % 11 + 1, (ha_2 * 9 + 7) % 13 + 1, (ha_2 * 6 + 17) % 17 + 1))
        local hy_10 = (vector.create((ha_2 * 6 + 4) % 11 + 1, (ha_2 * 3 + 1) % 13 + 1, (ha_2 * 3 + 9) % 17 + 1))
        if vector.dot(vector.cross(hw_2, hx_13), hy_10) == vector.dot(vector.cross(hx_13, hy_10), hw_2) + 1 then
            AutoGoMapGroup:AddLabel("Where do I get a good config?", true)
            AutoGoMapGroup:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
            AutoGoMapGroup:AddLabel("How do I import / export configs?", true)
            AutoGoMapGroup:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
            AutoGoMapGroup:AddLabel("How do I report bugs?", true)
            AutoGoMapGroup:AddLabel("Join the Discord and post it in the bugs channel.", true)
            AutoGoMapGroup:AddLabel("How do I make suggestions?", true)
            AutoGoMapGroup:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
            AutoGoMapGroup:AddLabel("How do I get help or updates?", true)
            AutoGoMapGroup:AddLabel("Join the Discord, updates and support are posted there first.", true)
            hd_1 = FaqGroup.Main:AddLeftGroupbox("Auto Go Map", "map")
        else
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
            AutoGoMapGroup = hd_1.Main:AddLeftGroupbox("Auto Go Map", "map")
        end
        ha_2 = (ha_2 + 147) % 160
    end
until (ha_2 * 121 + 123) % 160 == 37
if Toggles.FpsBoost.Value then
    go(true)
end
local g8_5 = 3
repeat
    local g9_6 = { "ctxlbxxhp", "ozoixugdpjv", "medqanm", "esmhb", "ajega", "zkwfzpbpv", "zvvqaun", "gwri" }
    local kY = g8_5
    local ha_3 = g9_6[kY % 8 + 1]
    if ha_3:len() <= ha_3:reverse():rep(kY % 3 + 2):len() then
        task.spawn(antiAfkLoop)
        task.spawn(autoGoMapLoop)
        task.spawn(autoPunchAuraLoop)
        task.spawn(function()
            local jO = false
            repeat
                local jI = math.clamp(gr.PunchableTeleportDelay.Value, 0.03, 0.5)
                local wait = task.wait
                local jJ_6
                local jK = Toggles.AutoGoPunchable.Value and jI
                local jK_6
                local jL = jK or 0.25
                local jL_6
                wait(jL)
                if gF.Unloaded then
                    jO = true
                elseif Toggles.AutoGoPunchable.Value then
                    local Character = LocalPlayer.Character
                    local jK_4 = Character and Character:FindFirstChild("HumanoidRootPart")
                    local jL_4 = Character
                    local jH = jK_4
                    if jL_4 then
                        jL_4 = Character:FindFirstChildOfClass("Humanoid")
                    end
                    local jF = jL_4
                    local Map = workspace:FindFirstChild("Map")
                    if jH and jF and jF.Health > 0 and Map then
                        if Map ~= gn then
                            gL(Map)
                        end
                        if not ProgressionConfig.IsInMap(jH) then
                            jH.AssemblyLinearVelocity = Vector3.zero
                            jH.AssemblyAngularVelocity = Vector3.zero
                            jH.CFrame = CFrame.new(0, 10, 0)
                        else
                            local jG = g4(Map)
                            if jG then
                                jJ_6, jL_6, jK_6 = pcall(function()
                                    return jG.Position, gx(jH, jF, jG)
                                end)
                                if jJ_6 then
                                    jH.AssemblyLinearVelocity = Vector3.zero
                                    jH.AssemblyAngularVelocity = Vector3.zero
                                    jH.CFrame = jK_6
                                    Destruction_Punch:FireServer(DestructionConfig.PunchType.Ground, jL_6)
                                    if Toggles.AutoPunchAura.Value then
                                        task.wait(math.min(0.03, jI * 0.5))
                                        local jI_2 = jH.Parent and ProgressionConfig.IsInMap(jH)
                                        if jI_2 then
                                            Destruction_Punch:FireServer(DestructionConfig.PunchType.Ground, jH.Position)
                                        end
                                    end
                                else
                                    g0(jG)
                                end
                            end
                        end
                    end
                end
            until jO
        end)
        gF:OnUnload(fn500)
        task.spawn(autoBuyUpgradesLoop)
        task.spawn(autoRebirthLoop)
    else
        task.spawn(antiAfkLoop)
        task.spawn(autoGoMapLoop)
        task.spawn(autoPunchAuraLoop)
        task.spawn(function()
            local jO = false
            repeat
                local jI = math.clamp(gr.PunchableTeleportDelay.Value, 0.03, 0.5)
                local wait = task.wait
                local jJ_3
                local jK = Toggles.AutoGoPunchable.Value and jI
                local jK_3
                local jL = jK or 0.25
                local jL_3
                wait(jL)
                if gF.Unloaded then
                    jO = true
                elseif Toggles.AutoGoPunchable.Value then
                    local Character = LocalPlayer.Character
                    local jK_1 = Character and Character:FindFirstChild("HumanoidRootPart")
                    local jL_1 = Character
                    local jH = jK_1
                    if jL_1 then
                        jL_1 = Character:FindFirstChildOfClass("Humanoid")
                    end
                    local jF = jL_1
                    local Map = workspace:FindFirstChild("Map")
                    if jH and jF and jF.Health > 0 and Map then
                        if Map ~= gn then
                            gL(Map)
                        end
                        if not ProgressionConfig.IsInMap(jH) then
                            jH.AssemblyLinearVelocity = Vector3.zero
                            jH.AssemblyAngularVelocity = Vector3.zero
                            jH.CFrame = CFrame.new(0, 10, 0)
                        else
                            local jG = g4(Map)
                            if jG then
                                jJ_3, jL_3, jK_3 = pcall(function()
                                    return jG.Position, gx(jH, jF, jG)
                                end)
                                if jJ_3 then
                                    jH.AssemblyLinearVelocity = Vector3.zero
                                    jH.AssemblyAngularVelocity = Vector3.zero
                                    jH.CFrame = jK_3
                                    Destruction_Punch:FireServer(DestructionConfig.PunchType.Ground, jL_3)
                                    if Toggles.AutoPunchAura.Value then
                                        task.wait(math.min(0.03, jI * 0.5))
                                        local jI_1 = jH.Parent and ProgressionConfig.IsInMap(jH)
                                        if jI_1 then
                                            Destruction_Punch:FireServer(DestructionConfig.PunchType.Ground, jH.Position)
                                        end
                                    end
                                else
                                    g0(jG)
                                end
                            end
                        end
                    end
                end
            until jO
        end)
        gF:OnUnload(fn500)
        task.spawn(autoBuyUpgradesLoop)
        task.spawn(autoRebirthLoop)
    end
    g8_5 = (g8_5 + 3) % 4
until (g8_5 * 1 + 1) % 4 == 3
