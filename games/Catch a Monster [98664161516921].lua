local gY
local g0
local hm
local hp
local hs
local g6
local g9
local Recover
local gR
local connection
local hf
local gX
local hi
local g_
local VirtualUser
local ho
local g2
local hr
local gQ
local hb
local gT
local gW
local g4
local RunService
local g7
local ht
local Options
local hd
local gS
local gV
local hg
local UserInputService
local function fn12(aN)
    return g2 == nil or g2[aN.TmplId] == true
end
local function fn45()
    for i, v in ipairs(gR) do
        pcall(v)
    end
end
local function fn133()
    if gT.AutoClaimAchieve.Value then
        pcall(gW)
    end
end
local function onInputBegan()
    hg = tick()
end
local function fn149()
    local jN = gT.AutoHeal.Value and Recover and hm()
    if jN then
        local jN_1 = hr()
        if jN_1 then
            local CFrame = jN_1.CFrame
            jN_1.CFrame = Recover.CFrame + Vector3.new(0, 4, 0)
            local jN_2 = 0
            while true do
                local jP_1 = hm() and jN_2 < 6 and gT.AutoHeal.Value and not g0.Unloaded
                if jP_1 then
                    task.wait(0.3)
                    jN_2 = jN_2 + 0.3
                    continue
                end
                break
            end
            local jP_2 = hr()
            if jP_2 then
                jP_2.CFrame = CFrame
            end
        end
    end
end
local function fn153()
    if not gT.AutoFarm.Value then
        task.wait(0.25)
        return
    end
    task.wait(Options.FarmDelay.Value)
    local iS = ho(Options.FarmRange.Value)
    if #iS == 0 then
        return
    end
    if Options.FarmMode.Value == "All In Range" then
        for k, v in iS do
            gY(v.info.MonsterId)
        end
    else
        local iT = iS[1]
        for k, v in iS do
            if v.dist < iT.dist then
                iT = v
            end
        end
        if gT.FarmTeleport.Value then
            local iS_1 = hr()
            if iS_1 and iT.info.CurrentCFrame then
                iS_1.CFrame = CFrame.new(iT.info.CurrentCFrame.Position + Vector3.new(0, Options.FarmHover.Value, 0))
            end
        end
        gY(iT.info.MonsterId)
    end
end
local function onRefreshPetList()
    Options.FeedTarget:SetValues(g_())
end
local function fn193()
    if connection then
        connection:Disconnect()
        connection = nil
    end
    local kC = g9()
    if kC then
        kC.PlatformStand = false
    end
end
local function onStepped()
    if gT.NoClip.Value then
        local kt = gS()
        if kt then
            for i, descendant in ipairs(kt:GetDescendants()) do
                local kt_1 = descendant:IsA("BasePart") and descendant.CanCollide
                if kt_1 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function onUnload()
    g0:Unload()
end
local function fn280()
    return ht.ClientPlayerManager.GetGamePlayer()
end
local function fn283()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    hb = tick()
end
local function fn287()
    setclipboard(g4)
    g0:Notify("Copied Discord invite to clipboard")
end
local function fn349()
    local ie = gS()
    local ig = ie and ie:FindFirstChild("HumanoidRootPart")
    return ig
end
local function fn376()
    Recover = workspace.Area.Root.ServerZone:FindFirstChild("Recover")
end
local function fn402()
    gQ()
    local kO = hr()
    local kP = g9()
    if not kO or not kP then
        return
    end
    kP.PlatformStand = true
    connection = RunService.RenderStepped:Connect(function()
        if not gT.Fly.Value then
            return
        end
        local kE = hr()
        local kF = g9()
        if not kE or not kF or not workspace.CurrentCamera then
            return
        end
        kF.PlatformStand = true
        local Value = Options.FlySpeed.Value
        local kH_2 = Vector3.zero
        if kF.MoveDirection.Magnitude > 0 then
            kH_2 = kF.MoveDirection
        end
        local kF_1 = 0
        if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
            kF_1 = 1
        else
            local kN = if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then 1 else 0
            if kN == 1 then
                kF_1 = -1
            end
        end
        kE.AssemblyLinearVelocity = kH_2 * Value + Vector3.new(0, kF_1 * Value, 0)
    end)
end
local function fn444()
    return hd.Character
end
local function fn465()
    if gT.AntiAfk.Value then
        local lv = tick() - hg
        local lw = tick() - hb
        if lv >= 300 and lw >= 60 then
            pcall(gX)
        else
            if lv < 300 and lw >= 300 then
                pcall(gX)
            end
        end
    end
end
local function fn466(cH)
    local j3 = gV
    local j4 = {}
    if j3 then
        j3 = gV.Tmpls
    end
    if j3 then
        for k in pairs(gV.Tmpls) do
            local j3_1 = cH.pet:GetExpItemCount(k)
            if j3_1 and j3_1 > 0 then
                j4[#j4 + 1] = { TmplId = k, Count = j3_1 }
            end
        end
    end
    return j4
end
local function fn525()
    if gT.WalkSpeedEnabled.Value then
        local kj = g9()
        if kj then
            kj.WalkSpeed = Options.WalkSpeed.Value
        end
    end
end
local function onJumpRequest()
    if gT.InfJump.Value then
        local ko = g9()
        if ko then
            ko:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function onInputChanged(ew)
    local UserInputType = ew.UserInputType
    local lq = UserInputType == Enum.UserInputType.MouseMovement
    local lu = if lq then 1 else 0
    local ls = 1952 * lu + 2975 * (1 - lu)
    local lt = 1206 * lu + 2528 * (1 - lu)
    if not ((ls * 2418 + lt * 1053 + ls * lt) % 16777213 == 8343966) then
        lq = UserInputType == Enum.UserInputType.Gamepad1
    end
    if lq then
        hg = tick()
    end
end
local function fn568()
    if gT.AutoEquipBest.Value then
        pcall(function()
            local jC = hf.CheckCanEquipBest == nil or hf.CheckCanEquipBest(hp())
            if jC then
                hf.ClientEquipBest()
            end
        end)
    end
end
local function fn571()
    local iu = false
    local iv = {}
    for k, v in pairs(Options.FarmEnemies.Value) do
        if v then
            iu = true
            local iw_1 = hs[k]
            if iw_1 then
                for k in pairs(iw_1) do
                    iv[k] = true
                end
            end
        end
    end
    g2 = iu and iv or nil
end
local function fn599()
    local iq_1
    local ip_1
    if identifyexecutor then
        iq_1, ip_1 = identifyexecutor()
        local ir = iq_1 ~= ""
        local is = type(iq_1) == "string" and ir
        if is then
            local ir_1 = type(ip_1) == "string" and ip_1 ~= "" and iq_1 .. " " .. ip_1
            g7 = ir_1 or iq_1
        end
    end
end
local function fn608(A)
    gR[#gR + 1] = A
end
local function fn617()
    if gT.Fly.Value then
        hi()
    else
        gQ()
    end
end
local function fn676()
    local il = gS()
    local im = il and il:FindFirstChildOfClass("Humanoid")
    return im
end
local function fn682()
    if not gT.MonsterESP.Value then
        g6()
    end
end
Recover = nil
Options = nil
gQ = nil
gR = nil
gS = nil
gT = nil
connection = nil
gV = nil
gW = nil
gX = nil
gY = nil
g_ = nil
g0 = nil
g2 = nil
g4 = nil
g6 = nil
g7 = nil
g9 = nil
hb = nil
hd = nil
hf = nil
hg = nil
hi = nil
UserInputService = nil
VirtualUser = nil
hm = nil
ho = nil
hp = nil
RunService = nil
hr = nil
hs = nil
ht = nil
local gM, gN, gZ, g1, g3, g5, g8, ha, hc, he, hh, hk, MonsterSystem, hu
local hy_1
local hv_1
local hG_1
local hF_1
local hE_1
local hD_1
local hC_1
local CfgMonster
local hz_1
local hA_1
RunService, VirtualUser, UserInputService, hd = nil, nil, nil, nil
local Players = game:GetService("Players")
RunService = game:GetService("RunService")
VirtualUser = game:GetService("VirtualUser")
UserInputService = game:GetService("UserInputService")
hd = Players.LocalPlayer
while not hd do
    task.wait()
    hd = Players.LocalPlayer
end
hA_1, g4, hv_1, g0, hG_1, hF_1, gT, Options, ht, MonsterSystem, hk, hf, ha, g5, g3, CfgMonster, gZ, hC_1, gV, gR, hy_1, gN, hE_1, hD_1, hp, hh, gS, hr, g9, hz_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local hx = 32
repeat
    local hw_1 = (hx * 1 + 0) % 13 + 1
    if hw_1 <= 7 then
        if hw_1 <= 4 then
            if hw_1 <= 2 then
                if hw_1 <= 1 then
                    local hH_1 = { "oxahwjnpb", "cavtqicni", "pjoqwfzu", "lhbkjt", "amjw", "pornem", "tljjk", "mjgo", "mati" }
                    local mf = hx
                    local hI_1 = hH_1[mf % 9 + 1]
                    if hI_1:len() <= hI_1:reverse():rep(mf % 3 + 2):len() then
                        MonsterSystem = ht.MonsterSystem
                        hk = ht.MgrMonsterClient
                        hf = ht.PetSystem
                        ha = ht.AchieveSystem
                        g5 = ht.AchieveUtil
                    else
                        hf = MonsterSystem.MonsterSystem
                        g5 = MonsterSystem.MgrMonsterClient
                        ha = MonsterSystem.PetSystem
                        ht = MonsterSystem.AchieveSystem
                        hk = MonsterSystem.AchieveUtil
                    end
                    hx = (hx + 40) % 104
                else
                    local hH_2 = (vector.create((hx * 7 + 7) % 11 + 1, (hx * 4 + 7) % 13 + 1, (hx * 8 + 13) % 17 + 1))
                    local hI_2 = (vector.create((hx * 7 + 4) % 11 + 1, (hx * 10 + 3) % 13 + 1, (hx * 11 + 2) % 17 + 1))
                    local hJ_1 = (vector.create((hx * 1 + 5) % 5 + 1, (hx * 5 + 1) % 7 + 1, (hx * 3 + 7) % 9 + 1))
                    if math.abs((vector.angle(hH_2, hI_2, hJ_1))) - math.abs((vector.angle(hI_2, hH_2, hJ_1))) == 3 then
                        ht = CfgMonster.AreaSystem
                        gV = CfgMonster.CfgMonster
                        g3 = CfgMonster.CfgAchieve
                        gZ = CfgMonster.CfgAreaRegion
                        hC_1 = CfgMonster.CfgPetExpItem
                    else
                        g3 = ht.AreaSystem
                        CfgMonster = ht.CfgMonster
                        gZ = ht.CfgAchieve
                        hC_1 = ht.CfgAreaRegion
                        gV = ht.CfgPetExpItem
                    end
                    hx = (hx + 1) % 104
                end
            elseif hw_1 <= 3 then
                local mx = bit32.rrotate(bit32.bxor(bit32.lrotate(hx, 28), string.byte(tostring(g0))), 11)
                if bit32.bxor(bit32.lrotate(bit32.bxor(mx, 191366692), 14), 25756378) ~= bit32.lrotate(mx, 14) then
                    hp = {}
                    hE_1 = fn608
                    gR = function(D)
                        gN(function()
                            D:Disconnect()
                        end)
                        return D
                    end
                    gN = function(H, I)
                        task.spawn(function()
                            while not g0.Unloaded do
                                task.wait(H)
                                I()
                            end
                        end)
                    end
                    hD_1 = fn280
                else
                    gR = {}
                    gN = fn608
                    hE_1 = function(D)
                        gN(function()
                            D:Disconnect()
                        end)
                        return D
                    end
                    hD_1 = function(H, I)
                        task.spawn(function()
                            while not g0.Unloaded do
                                task.wait(H)
                                I()
                            end
                        end)
                    end
                    hp = fn280
                end
                hx = (hx + 40) % 104
            else
                local hH_3 = { "hqnt", "cqzfxzpt", "aijp", "dzlritshlrc", "ttkvio", "dkmbhync", "hauelgzi", "wpsobe" }
                local l3 = hx
                local hI_3 = hH_3[l3 % 8 + 1]
                if hI_3:len() <= hI_3:reverse():rep(l3 % 3 + 2):len() then
                    hh = function(Q)
                        local h9_2
                        local h8_3
                        h8_3, h9_2 = pcall(function()
                            return ht.Localizer.Translate(Q)
                        end)
                        local ia = h8_3 and type(h9_2) == "string"
                        if ia and h9_2 ~= "" then
                            return h9_2
                        end
                        return tostring(Q)
                    end
                    gS = fn444
                    hr = fn349
                    g9 = fn676
                else
                    gS = function(Q)
                        local h9_1
                        local h8_1
                        h8_1, h9_1 = pcall(function()
                            return ht.Localizer.Translate(Q)
                        end)
                        local ia = h8_1 and type(h9_1) == "string"
                        if ia and h9_1 ~= "" then
                            return h9_1
                        end
                        return tostring(Q)
                    end
                    g9 = fn444
                    hh = fn349
                    hr = fn676
                end
                hx = (hx + 53) % 104
            end
        elseif hw_1 <= 6 then
            if hw_1 <= 5 then
                local hH_4 = (vector.create((hx * 7 + 2) % 11 + 1, (hx * 8 + 9) % 13 + 1, (hx * 7 + 7) % 17 + 1))
                local hI_4 = (vector.create((hx * 3 + 6) % 11 + 1, (hx * 11 + 6) % 13 + 1, (hx * 15 + 9) % 17 + 1))
                local mm = vector.cross(hH_4, hI_4)
                local mn = vector.dot(hH_4, hI_4)
                if vector.dot(mm, mm) + mn * mn == vector.dot(hH_4, hH_4) * vector.dot(hI_4, hI_4) then
                    hz_1 = fn287
                    hy_1 = g0:CreateWindow({
                        Title = "Ouroboros Hub",
                        Footer = g4 .. " | " .. hA_1,
                        Icon = 18657887261,
                        NotifySide = "Right",
                        ShowCustomCursor = false
                    })
                else
                    g0 = fn287
                    g4 = hA_1:CreateWindow({
                        ShowCustomCursor = false,
                        NotifySide = "Right",
                        Icon = 18657887261,
                        Title = "Ouroboros Hub",
                        Footer = hy_1 .. " | " .. hz_1
                    })
                end
                hx = (hx + 1) % 104
            else
                hx = (hx + 27) % 104
            end
        else
            local hH_5 = (vector.create((hx * 6 + 7) % 11 + 1, (hx * 3 + 2) % 13 + 1, (hx * 2 + 13) % 17 + 1))
            local hI_5 = (vector.create((hx * 4 + 1) % 11 + 1, (hx * 7 + 10) % 13 + 1, (hx * 10 + 17) % 17 + 1))
            local hJ_2 = (vector.create((hx * 3 + 6) % 5 + 1, (hx * 1 + 3) % 7 + 1, (hx * 5 + 5) % 9 + 1))
            if math.abs((vector.angle(hH_5, hI_5, hJ_2))) - math.abs((vector.angle(hI_5, hH_5, hJ_2))) == 5 then
                ht = "Catch a Monster"
            else
                hA_1 = "Catch a Monster"
            end
            hx = (hx + 66) % 104
        end
    elseif hw_1 <= 10 then
        if hw_1 <= 9 then
            if hw_1 <= 8 then
                if (hx * 3 + 7) * 5 % 4 == ((hx * 3 + 7) * 5 + 0) % 4 then
                    g4 = "https://discord.gg/ehKVq7pf7v"
                else
                    g0 = "https://discord.gg/ehKVq7pf7v"
                end
                hx = (hx + 53) % 104
            else
                if (hx * 2 + 4) * 16 % 3 == ((hx * 2 + 4) * 16 + 1) % 3 then
                    g0 = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
                else
                    hv_1 = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
                end
                hx = (hx + 1) % 104
            end
        else
            local hH_6 = {
                "nofmugp",
                "zxppzo",
                "yiknm",
                "jjeynqojwxno",
                "xkvcq",
                "xhqemfieqlcs",
                "ngbvxbwcoyb",
                "bizsmbou",
                "ftjisbteodkn",
                "lsfeqigoge",
                "ryrmnom"
            }
            if hH_6[(hx * 35 + 17) % 11 + 1] <= hH_6[(hx * 35 + 17) % 11 + 1] then
                g0 = loadstring(game:HttpGet(hv_1 .. "Library.lua"))()
            else
                hv_1 = loadstring(game:HttpGet(g0 .. "Library.lua"))()
            end
            hx = (hx + 14) % 104
        end
    elseif hw_1 <= 12 then
        if hw_1 <= 11 then
            if (hx * 2 + 4) * 13 % 3 == ((hx * 2 + 4) * 13 + 1) % 3 then
                hv_1 = loadstring(game:HttpGet(hF_1 .. "addons/ThemeManager.lua"))()
                hG_1 = loadstring(game:HttpGet(hF_1 .. "addons/SaveManager.lua"))()
            else
                hG_1 = loadstring(game:HttpGet(hv_1 .. "addons/ThemeManager.lua"))()
                hF_1 = loadstring(game:HttpGet(hv_1 .. "addons/SaveManager.lua"))()
            end
            hx = (hx + 53) % 104
        else
            if (hx * 2 + 8) * 4 % 3 == ((hx * 2 + 8) * 4 + 7) % 3 then
                g0 = Options.Toggles
                gT = Options.Options
            else
                gT = g0.Toggles
                Options = g0.Options
            end
            hx = (hx + 79) % 104
        end
    else
        local hw_2 = (vector.create((hx * 4 + 1) % 11 + 1, (hx * 2 + 6) % 13 + 1, (hx * 10 + 12) % 17 + 1))
        local mj = vector.floor(hw_2) + vector.ceil(hw_2 * -1)
        if vector.dot(mj, mj) == 4 then
            gN = getrenv()._G.PathTool
        else
            ht = getrenv()._G.PathTool
        end
        hx = (hx + 14) % 104
    end
until (hx * 61 + 84) % 104 == 86
if g0.ScreenGui then
    local hv_2 = 1
    repeat
        local hw_3 = {
            "lagswqmzqpb",
            "bvjpnkjdf",
            "mwqqvvo",
            "krkhljthsbz",
            "ocojt",
            "mtdtjvufa",
            "pvqz",
            "llnfixpydh",
            "yetifzczrv",
            "ecgkugrth"
        }
        local mu = hv_2
        local hx_1 = hw_3[mu % 10 + 1]
        if hx_1:len() <= hx_1:gsub("(.)", "%1%1", mu % 3 % 2 + 1):len() then
            g0.ScreenGui.Parent = hd:WaitForChild("PlayerGui")
        else
            hd.ScreenGui.Parent = g0:WaitForChild("PlayerGui")
        end
        hv_2 = (hv_2 + 6) % 8
    until (hv_2 * 5 + 0) % 8 == 3
end
local hx_2 = nil
local hw_4 = 3
repeat
    if (((hx_2 or hx_2) and (not hx_2 or hw_4) or (hx_2 or hw_4) and (hx_2 or hx_2)) and ((not hx_2 or not hw_4 or not hw_4 and not hw_4) and (not hw_4 and hw_4 or (hw_4 or not hw_4))) or (hw_4 and not hx_2 or hw_4 and not hx_2) and ((not hw_4 or not hw_4) and (not hw_4 and hx_2)) and ((not hx_2 and not hw_4 or (not hw_4 or not hw_4)) and ((hw_4 or hx_2) and (hw_4 and not hx_2)))) and not (((hx_2 or hx_2) and (not hx_2 or hw_4) or (hx_2 or hw_4) and (hx_2 or hx_2)) and ((not hx_2 or not hw_4 or not hw_4 and not hw_4) and (not hw_4 and hw_4 or (hw_4 or not hw_4))) or (hw_4 and not hx_2 or hw_4 and not hx_2) and ((not hw_4 or not hw_4) and (not hw_4 and hx_2)) and ((not hx_2 and not hw_4 or (not hw_4 or not hw_4)) and ((hw_4 or hx_2) and (hw_4 and not hx_2)))) then
        hy_1 = {
            Info = hx_2:AddTab("Info", "info"),
            Main = hx_2:AddTab("Main", "swords"),
            Settings = hx_2:AddTab("Settings", "settings"),
            Player = hx_2:AddTab("Player", "user"),
            Pets = hx_2:AddTab("Pets", "paw-print"),
            Teleport = hx_2:AddTab("Teleport", "map-pin")
        }
    else
        hx_2 = {
            Info = hy_1:AddTab("Info", "info"),
            Main = hy_1:AddTab("Main", "swords"),
            Pets = hy_1:AddTab("Pets", "paw-print"),
            Player = hy_1:AddTab("Player", "user"),
            Teleport = hy_1:AddTab("Teleport", "map-pin"),
            Settings = hy_1:AddTab("Settings", "settings")
        }
    end
    hw_4 = (hw_4 + 0) % 8
until (hw_4 * 5 + 5) % 8 == 4
for k, v in hx_2 do
    local DiscordGroup = v:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = hz_1 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = hz_1 })
end
g7 = nil
local BasicInfoGroup = hx_2.Info:AddLeftGroupbox("Basic Info", "circle-user")
g7 = "Unknown"
pcall(fn599)
BasicInfoGroup:AddLabel("Executor: " .. g7, true)
BasicInfoGroup:AddLabel("Game: " .. hA_1, true)
BasicInfoGroup:AddLabel("Player: " .. hd.Name, true)
BasicInfoGroup:AddLabel("Status: Keyless", true)
local OuroborosHubGroup = hx_2.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = hz_1 })
local FaqGroup = hx_2.Info:AddRightGroupbox("FAQ", "circle-help")
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
hs = nil
local hK = {}
hs = {}
if CfgMonster and CfgMonster.Tmpls then
    for k, v in pairs(CfgMonster.Tmpls) do
        local hv_5 = hh(v.Name)
        if not hs[hv_5] then
            hs[hv_5] = {}
            hK[#hK + 1] = hv_5
        end
        hs[hv_5][k] = true
    end
end
g2, g8, gY, ho = nil, nil, nil, nil
table.sort(hK)
local AutoFarmGroup = hx_2.Main:AddLeftGroupbox("Auto Farm", "swords")
AutoFarmGroup:AddToggle("AutoFarm", { Text = "Auto Farm", Default = false })
AutoFarmGroup:AddDropdown("FarmEnemies", {
    Values = hK,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true,
    Text = "Selected Enemies"
})
AutoFarmGroup:AddDropdown("FarmMode", {
    Values = { "Nearest", "All In Range" },
    Default = "Nearest",
    Multi = false,
    Searchable = true,
    AllowNull = true,
    Text = "Target Mode"
})
AutoFarmGroup:AddSlider("FarmRange", { Text = "Max Distance", Default = 150, Min = 20, Max = 1000, Rounding = 0, Suffix = " studs" })
AutoFarmGroup:AddSlider("FarmDelay", { Text = "Attack Delay", Default = 0.3, Min = 0.1, Max = 2, Rounding = 2, Suffix = "s" })
AutoFarmGroup:AddToggle("FarmTeleport", { Text = "Teleport To Target", Default = false })
AutoFarmGroup:AddSlider("FarmHover", { Text = "Teleport Hover Height", Default = 12, Min = 0, Max = 40, Rounding = 0, Suffix = " studs" })
g2 = nil
Options.FarmEnemies:OnChanged(fn571)
fn571()
g8 = fn12
gY = function(aQ)
    pcall(function()
        MonsterSystem.ClientAttackMonster(aQ)
    end)
end
ho = function(aV)
    local iP, iQ
    iP = hr()
    if not iP then
        return {}
    end
    iQ = {}
    hk.IterMonster(function(a_)
        local iK = a_.IsAlive and a_:IsAlive() and a_.CurrentCFrame and g8(a_)
        if iK then
            local Magnitude = (a_.CurrentCFrame.Position - iP.Position).Magnitude
            if Magnitude <= aV then
                iQ[#iQ + 1] = { info = a_, dist = Magnitude }
            end
        end
    end)
    return iQ
end
hD_1(0.05, fn153)
hc = nil
local AutoCatchGroup = hx_2.Main:AddRightGroupbox("Auto Catch", "hand")
AutoCatchGroup:AddToggle("AutoCatch", { Text = "Auto Catch", Default = false })
AutoCatchGroup:AddSlider("CatchDelay", { Text = "Catch Delay", Default = 0.4, Min = 0.1, Max = 2, Rounding = 2, Suffix = "s" })
AutoCatchGroup:AddToggle("CatchTeleport", { Text = "Teleport To Catchable", Default = false })
hc = function(bm)
    pcall(function()
        MonsterSystem.ClientCatchMonsterStart(bm)
    end)
end
hD_1(0.05, function()
    local i7
    i7 = nil
    if not gT.AutoCatch.Value then
        task.wait(0.25)
        return
    end
    task.wait(Options.CatchDelay.Value)
    i7 = {}
    hk.IterSelfCanCatchBattleMonster(function(bu)
        i7[#i7 + 1] = bu
    end)
    for k, v in i7 do
        if gT.CatchTeleport.Value then
            local i8 = hr()
            if i8 and v.CurrentCFrame then
                i8.CFrame = CFrame.new(v.CurrentCFrame.Position + Vector3.new(0, 6, 0))
            end
        end
        hc(v.MonsterId)
    end
end)
gW = nil
local AutoClaimGroup = hx_2.Main:AddRightGroupbox("Auto Claim", "trophy")
AutoClaimGroup:AddToggle("AutoClaimAchieve", { Text = "Auto Claim Achievements", Default = false })
gW = function()
    local jh = hp()
    if not jh then
        return
    end
    for k, v in pairs(gZ.Tmpls) do
        local jq = v
        local ji_1 = not jh.achieve:IsRewardTaken(jq.TmplId) and g5.GetDataCount(jh, jq.DataId) >= jq.Count
        if ji_1 then
            pcall(function()
                ha.ClientTakeAchieveReward(jq.GroupId, jq.TmplId)
            end)
        end
    end
    for k in pairs(gZ.Groups) do
        local ju = k
        if not jh.achieve:IsGroupRewardTaken(ju) then
            local ji_2 = true
            for k, v in pairs(gZ.Tmpls) do
                local jj = v.GroupId == ju and not jh.achieve:IsRewardTaken(v.TmplId) and g5.GetDataCount(jh, v.DataId) < v.Count
                if jj then
                    ji_2 = false
                    break
                end
            end
            if ji_2 then
                pcall(function()
                    ha.ClientTakeAchieveReward(ju, 0)
                end)
            end
        end
    end
end
hD_1(3, fn133)
Recover, g1, hm, g_, hu = nil, nil, nil, nil, nil
local AutomationGroup = hx_2.Pets:AddLeftGroupbox("Automation", "sparkles")
local FeedingGroup = hx_2.Pets:AddRightGroupbox("Feeding", "bone")
AutomationGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
AutomationGroup:AddToggle("AutoHeal", { Text = "Auto Heal Pets", Default = false })
hD_1(2, fn568)
Recover = nil
pcall(fn376)
hm = function()
    local jK
    jK = nil
    local jL = hp()
    if not jL then
        return false
    end
    jK = false
    jL.pet:IterEquipedItem(function(ca)
        local jI = ca.IsDead and ca:IsDead()
        if jI then
            jK = true
            return false
        end
    end)
    return jK
end
hD_1(1, fn149)
g1 = {}
g_ = function()
    g1 = {}
    local j0 = {}
    local j1 = hp()
    if j1 then
        j1.pet:IterEquipedItem(function(cu)
            local jV_1
            local jU_1
            jU_1, jV_1 = pcall(function()
                return hh(cu:GetTmpl().Name)
            end)
            local jU_2 = jU_1 and jV_1 or "Pet"
            local jV_2 = jU_2 .. " #" .. tostring(cu:GetId())
            g1[jV_2] = cu:GetId()
            j0[#j0 + 1] = jV_2
        end)
    end
    return j0
end
FeedingGroup:AddDropdown("FeedTarget", {
    Values = g_(),
    Default = nil,
    Multi = false,
    Searchable = true,
    AllowNull = true,
    Text = "Feed Target Pet"
})
FeedingGroup:AddButton({ Text = "Refresh Pet List", Func = onRefreshPetList })
FeedingGroup:AddToggle("AutoFeed", { Text = "Auto Feed (Exp Items)", Default = false })
hu = fn466
hD_1(3, function()
    if not gT.AutoFeed.Value then
        return
    end
    local Value = Options.FeedTarget.Value
    local kb = Value and g1[Value]
    if not kb then
        return
    end
    local kd_1 = hp()
    if not kd_1 then
        return
    end
    local kc = hu(kd_1)
    if #kc > 0 then
        pcall(function()
            hf.ClientFeed(kb, {}, kc)
        end)
    end
end)
connection, gQ, hi = nil, nil, nil
local MovementGroup = hx_2.Player:AddLeftGroupbox("Movement", "move")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "Walk Speed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "Walk Speed Amount", Default = 16, Min = 16, Max = 300, Rounding = 0 })
hD_1(0.2, fn525)
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
hE_1(UserInputService.JumpRequest:Connect(onJumpRequest))
MovementGroup:AddToggle("NoClip", { Text = "No Clip", Default = false })
hE_1(RunService.Stepped:Connect(onStepped))
MovementGroup:AddToggle("Fly", { Text = "Fly", Default = false })
MovementGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 300, Rounding = 0 })
gQ = fn193
hi = fn402
gT.Fly:OnChanged(fn617)
gN(gQ)
he, g6 = nil, nil
local VisualsGroup = hx_2.Player:AddRightGroupbox("Visuals", "eye")
VisualsGroup:AddToggle("MonsterESP", { Text = "Monster ESP", Default = false })
he = {}
g6 = function()
    for k, v in pairs(he) do
        local k_ = v
        pcall(function()
            k_:Destroy()
        end)
        he[k] = nil
    end
end
gT.MonsterESP:OnChanged(fn682)
gN(g6)
hD_1(0.5, function()
    local k4
    if not gT.MonsterESP.Value then
        return
    end
    k4 = {}
    hk.IterMonster(function(dW)
        local k1 = dW.Model and dW:IsAlive()
        if k1 then
            k4[dW.MonsterId] = true
            local k1_1 = he[dW.MonsterId]
            if not k1_1 or k1_1.Parent == nil then
                local highlight = Instance.new("Highlight")
                highlight.FillColor = Color3.fromRGB(255, 80, 80)
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                highlight.FillTransparency = 0.5
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.Adornee = dW.Model
                highlight.Parent = dW.Model
                he[dW.MonsterId] = highlight
            end
        end
    end)
    for k, v in pairs(he) do
        local lb = v
        if not k4[k] then
            pcall(function()
                lb:Destroy()
            end)
            he[k] = nil
        end
    end
end)
gM = nil
gM = {}
local hA_4 = {}
if hC_1 and hC_1.Tmpls then
    for k, v in pairs(hC_1.Tmpls) do
        local hv_7 = hh(v.Name)
        if gM[hv_7] then
            hv_7 = hv_7 .. " (" .. tostring(k) .. ")"
        end
        gM[hv_7] = k
        hA_4[#hA_4 + 1] = hv_7
    end
end
table.sort(hA_4)
local TeleportGroup = hx_2.Teleport:AddLeftGroupbox("Teleport", "map-pin")
TeleportGroup:AddDropdown("TeleportRegion", {
    Values = hA_4,
    Default = hA_4[1],
    Multi = false,
    Searchable = true,
    AllowNull = true,
    Text = "Destination"
})
TeleportGroup:AddButton({
    Text = "Teleport",
    Func = function()
        local Value = Options.TeleportRegion.Value
        local lc = Value and gM[Value]
        if lc then
            pcall(function()
                g3.ClientTeleportToAreaRegion(lc)
            end)
        end
    end
})
local MenuGroup = nil
local hv_8 = 0
repeat
    local hw_9 = { "bka", "ekuqk", "ixq", "smoksmg", "ryfpyhxkcx", "hhskdffo", "jchq", "ufogzdz", "ztn" }
    if hw_9[(hv_8 * 92 + 42) % 9 + 1] < hw_9[(hv_8 * 92 + 42) % 9 + 1] then
        hx_2 = MenuGroup.Settings:AddLeftGroupbox("Menu", "settings")
    else
        MenuGroup = hx_2.Settings:AddLeftGroupbox("Menu", "settings")
    end
    hv_8 = (hv_8 + 3) % 4
until (hv_8 * 3 + 2) % 4 == 3
hg, hb, gX = nil, nil, nil
local hw_10 = 0
repeat
    if (hw_10 * 1 + 0) % 2 + 1 <= 1 then
        if (hw_10 * 3 + 8) * 5 % 4 == ((hw_10 * 3 + 8) * 5 + 14) % 4 then
            gX = tick()
            hg = tick()
            pcall(function()
                for i, v in ipairs(getconnections(hd.Idled)) do
                    local lm = v
                    pcall(function()
                        lm:Disable()
                    end)
                end
            end)
            hb = fn283
        else
            hg = tick()
            hb = tick()
            pcall(function()
                for i, v in ipairs(getconnections(hd.Idled)) do
                    local lm = v
                    pcall(function()
                        lm:Disable()
                    end)
                end
            end)
            gX = fn283
        end
        hw_10 = (hw_10 + 1) % 8
    else
        if hw_10 * 122176651 + 10 + 7 <= hw_10 * 122176651 + 10 + 7 + 1 then
            hE_1(UserInputService.InputBegan:Connect(onInputBegan))
            hE_1(UserInputService.InputChanged:Connect(onInputChanged))
            MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
            hD_1(2, fn465)
        else
            MenuGroup(hE_1.InputBegan:Connect(onInputBegan))
            MenuGroup(hE_1.InputChanged:Connect(onInputChanged))
            hD_1:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
            UserInputService(2, fn465)
        end
        hw_10 = (hw_10 + 7) % 8
    end
until (hw_10 * 7 + 3) % 8 == 3
local hv_10 = 3
repeat
    local hw_11 = {
        "nfzqpxhmhx",
        "menfscyjvu",
        "sbtavn",
        "hiz",
        "rlusivjuo",
        "jsruwgtnxkz",
        "qwttt",
        "qdvuo",
        "kdluxgsoyqy",
        "jvul",
        "uzkktrxyimi",
        "qzwmtez",
        "oazowkssgqei"
    }
    if hw_11[(hv_10 * 80 + 31) % 13 + 1] <= hw_11[(hv_10 * 80 + 31) % 13 + 1] then
        g0.ToggleKeybind = Options.MenuKeybind
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        MenuGroup:AddButton("Unload", onUnload)
        g0:OnUnload(fn45)
        hG_1:SetLibrary(g0)
        hG_1:SetFolder("OuroborosHub")
        hG_1:SaveDefault("Mint")
        hG_1:ApplyToTab(hx_2.Settings)
        hG_1:LoadDefault()
        hF_1:SetLibrary(g0)
        hF_1:IgnoreThemeSettings()
        hF_1:SetIgnoreIndexes({ "MenuKeybind" })
        hF_1:SetFolder("OuroborosHub/catch-a-monster")
        hF_1:BuildConfigSection(hx_2.Settings)
        hF_1:LoadAutoloadConfig()
    else
        hF_1.ToggleKeybind = MenuGroup.MenuKeybind
        Options:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Options:AddButton("Unload", onUnload)
        hF_1:OnUnload(fn45)
        g0:SetLibrary(hF_1)
        g0:SetFolder("OuroborosHub")
        g0:SaveDefault("Mint")
        g0:ApplyToTab(hG_1.Settings)
        g0:LoadDefault()
        hx_2:SetLibrary(hF_1)
        hx_2:IgnoreThemeSettings()
        hx_2:SetIgnoreIndexes({ "MenuKeybind" })
        hx_2:SetFolder("OuroborosHub/catch-a-monster")
        hx_2:BuildConfigSection(hG_1.Settings)
        hx_2:LoadAutoloadConfig()
    end
    hv_10 = (hv_10 + 2) % 4
until (hv_10 * 3 + 0) % 4 == 3
