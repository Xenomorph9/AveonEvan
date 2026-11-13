local je
local Library
local jA
local jh
local StartWave
local ActiveNPCs
local j1
local RequestRebirth
local LocalPlayer
local ja
local ClaimWaveResult
local Workspace
local jY
local jj
local j0
local jm
local Toggles
local jL
local jp
local js
local jO
local jR
local jv
local BlockInventoryConfig
local SkipIntermission
local jf
local ji
local Options
local j_
local jo
local ju
local jQ
local function fn8()
    if jY() then
        return
    end
    local m4 = jh()
    if m4 == "Idle" then
        pcall(function()
            StartWave:InvokeServer()
        end)
    elseif m4 == "Preparing" then
        pcall(function()
            SkipIntermission:InvokeServer()
        end)
    end
end
local function fn38()
    local mV = jh()
    if mV ~= "Active" and mV ~= "Spawning" then
        return
    end
    local mV_1 = tonumber(LocalPlayer:GetAttribute("WaveNumber")) or 0
    if mV_1 < (Options.EndWaveAt and Options.EndWaveAt.Value or 1) then
        return
    end
    local Character = LocalPlayer.Character
    local mW_2 = Character and Character:FindFirstChildOfClass("Humanoid")
    local mV_5 = mW_2
    if mW_2 then
        mW_2 = mV_5.Health > 0
    end
    if mW_2 then
        mV_5.Health = 0
    end
end
local function fn47()
    pcall(function()
        RequestRebirth:InvokeServer()
    end)
end
local function autoShootLoop()
    while not Library.Unloaded do
        if Toggles.AutoShoot and Toggles.AutoShoot.Value then
            pcall(jO)
            task.wait(0.05)
        else
            task.wait(0.2)
        end
    end
end
local function fn120()
    local lI_1
    local Character = LocalPlayer.Character
    local lG = Character and Character:FindFirstChild("HumanoidRootPart")
    if not lG then
        return nil
    end
    local lH = Options.SilentAimRange and Options.SilentAimRange.Value or 200
    local lH_1
    lI_1, lH_1 = nil, lH
    for i, child in ActiveNPCs:GetChildren() do
        if child:GetAttribute("IsDead") ~= true then
            local Humanoid = child:FindFirstChildOfClass("Humanoid")
            local lJ = child:FindFirstChild("GunHitbox") or child:FindFirstChild("HumanoidRootPart")
            if Humanoid and lJ and Humanoid.Health > 0 then
                local Magnitude = (lJ.Position - lG.Position).Magnitude
                if Magnitude < lH_1 then
                    lI_1 = lJ
                    lH_1 = Magnitude
                end
            end
        end
    end
    return lI_1
end
local function fn126()
    local l__1
    local lZ_1
    local Character = LocalPlayer.Character
    local lX = Character and Character:FindFirstChild("HumanoidRootPart")
    if not lX then
        return nil
    end
    local lY = Options.SilentAimRange and Options.SilentAimRange.Value or 200
    local lY_1
    l__1, lZ_1, lY_1 = nil, nil, lY
    for i, child in ActiveNPCs:GetChildren() do
        if child:GetAttribute("IsDead") ~= true then
            local Humanoid = child:FindFirstChildOfClass("Humanoid")
            local l0 = child:FindFirstChild("GunHitbox") or child:FindFirstChild("HumanoidRootPart")
            local l1 = Humanoid
            if l1 then
                l1 = l0
            end
            if l1 then
                l1 = Humanoid.Health > 0
            end
            if l1 then
                local Magnitude = (l0.Position - lX.Position).Magnitude
                if Magnitude < lY_1 then
                    l__1 = Humanoid
                    lZ_1 = l0
                    lY_1 = Magnitude
                end
            end
        end
    end
    return l__1, lZ_1
end
local function fn153(bP)
    local lo = BlockInventoryConfig.Items[bP]
    if type(lo) ~= "table" then
        return nil
    end
    local lp = tonumber(lo.Price)
    if not lp or lp < 0 then
        return nil
    end
    local lt = if not BlockInventoryConfig.IsPurchasable(bP) then 1 else 0
    if lt == 1 then
        return nil
    end
    return lp
end
local function fn191(Q, R)
    return string.format('<font color="%s">%s</font>', R, Q)
end
local function fn259(cK, ...)
    if Toggles.SilentAim and Toggles.SilentAim.Value then
        local md_1 = j0()
        local CurrentCamera = Workspace.CurrentCamera
        if md_1 and CurrentCamera then
            local CFrame2 = CurrentCamera.CFrame
            local mg = CFrame.lookAt(CFrame2.Position, md_1.Position)
            CurrentCamera.CFrame = mg
            local md_2 = table.pack(j1(cK, mg))
            CurrentCamera.CFrame = CFrame2
            return table.unpack(md_2, 1, md_2.n)
        end
        return j1(cK, ...)
    end
    return j1(cK, ...)
end
local function fn278(T, U, V)
    return string.format("<b>%s</b> %s %s", T, j_("-", "#5a6070"), j_(U, V))
end
local function fn287()
    local Character = LocalPlayer.Character
    if not Character then
        return nil
    end
    local PlayerVals = LocalPlayer:FindFirstChild("PlayerVals")
    local mk = PlayerVals and PlayerVals:FindFirstChild("EquippedGun")
    local mj_1 = mk
    if mk then
        mk = tostring(mj_1.Value)
    end
    local mj_2 = mk
    if mj_2 and mj_2 ~= "" then
        local mk_2 = Character:FindFirstChild(mj_2)
        local ml_1 = mk_2 and mk_2:IsA("Tool")
        if ml_1 then
            return mk_2
        end
        local Backpack = LocalPlayer:FindFirstChild("Backpack")
        local ml_2 = Backpack and Backpack:FindFirstChild(mj_2)
        local mk_4 = ml_2 and ml_2:IsA("Tool")
        if mk_4 then
            ml_2.Parent = Character
            return ml_2
        end
        for i, child in Character:GetChildren() do
            local mi_1 = child:IsA("Tool") and child.Name ~= "PlaceTool" and child.Name ~= "RemoveTool"
            if mi_1 then
                return child
            end
        end
        return nil
    end
    for i, child in Character:GetChildren() do
        local mi_2 = child:IsA("Tool") and child.Name ~= "PlaceTool" and child.Name ~= "RemoveTool"
        if mi_2 then
            return child
        end
    end
    return nil
end
local function fn301(bG)
    local lb = Options[bG]
    local lc = lb and lb.Value
    local lb_1 = {}
    if type(lc) ~= "table" then
        return lb_1
    end
    for k, v in lc do
        if v then
            lb_1[k] = true
        end
    end
    return lb_1
end
local function fn302()
    jp(false)
    if ju then
        ju:Disconnect()
    end
    if jm then
        jm:Disconnect()
    end
    local o4 = jv()
    if o4 then
        o4.PlatformStand = false
        o4.WalkSpeed = 16
    end
end
local function fn328(ae)
    local DiscordGroup = ae:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = jj })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = jj })
end
local function fn337()
    local attr = LocalPlayer:GetAttribute("WaveState")
    local k6 = type(attr) == "string" and attr
    return k6 or "Idle"
end
local function fn412()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local k0 = leaderstats and leaderstats:FindFirstChild("Cash")
    local k__1 = k0
    if k0 then
        k0 = tonumber(k__1.Value)
    end
    return k0 or 0
end
local function fn564()
    local mU = if not jY() then 1 else 0
    if mU == 1 then
        local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
        local mQ = PlayerGui and PlayerGui:FindFirstChild("WaveResult")
        local mP_1 = mQ
        if mQ then
            mQ = mP_1:FindFirstChild("Frame")
        end
        local mP_2 = mQ
        if mQ then
            mQ = mP_2:FindFirstChild("WaveResult")
        end
        local mP_3 = mQ
        if mQ then
            mQ = mP_3.Visible
        end
        if not mQ then
            return
        end
    end
    pcall(function()
        ClaimWaveResult:InvokeServer("cashclaim")
    end)
end
local function fn577()
    jA(ji, "Copied Discord invite to clipboard")
end
local function autoEndWaveLoop()
    while not Library.Unloaded do
        if Toggles.AutoEndWave and Toggles.AutoEndWave.Value then
            pcall(jL)
        end
        if Toggles.AutoClaim and Toggles.AutoClaim.Value then
            pcall(jQ)
        end
        if Toggles.AutoStartWave and Toggles.AutoStartWave.Value then
            pcall(jR)
        end
        if Toggles.AutoRebirth and Toggles.AutoRebirth.Value then
            pcall(je)
        end
        if Toggles.AutoBuyBlocks and Toggles.AutoBuyBlocks.Value then
            pcall(jo, jf, "BlockList")
        end
        if Toggles.AutoBuyTrap and Toggles.AutoBuyTrap.Value then
            pcall(jo, ja, "TrapList")
        end
        if Toggles.AutoBuyGuns and Toggles.AutoBuyGuns.Value then
            pcall(js)
        end
        task.wait(0.35)
    end
end
local function fn760(J, K)
    if setclipboard then
        setclipboard(J)
    elseif toclipboard then
        toclipboard(J)
    end
    Library:Notify(K)
end
local function fn769()
    local PlayerVals = LocalPlayer:FindFirstChild("PlayerVals")
    local k9 = PlayerVals and PlayerVals:FindFirstChild("WaveResultReady")
    local k8_1 = k9
    if k9 then
        k9 = k8_1.Value == true
    end
    return k9
end
ja = nil
je = nil
jf = nil
jh = nil
ji = nil
jj = nil
ActiveNPCs = nil
jm = nil
jo = nil
jp = nil
js = nil
LocalPlayer = nil
ju = nil
jv = nil
Workspace = nil
BlockInventoryConfig = nil
jA = nil
Options = nil
Toggles = nil
RequestRebirth = nil
jL = nil
jO = nil
jQ = nil
jR = nil
ClaimWaveResult = nil
SkipIntermission = nil
Library = nil
local jb, jc, jd, jg, jl, jn, Shoot, jr, jx, CoreGui, PurchaseGunCrates, jC, GuiService, BuyBlockInventory, jG, HttpService, jK, VirtualUser, jN, SaveManager, UserInputService, RunService, jX
jY = nil
StartWave = nil
j_ = nil
j0 = nil
j1 = nil
RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, LocalPlayer, jn, ji, jc, StartWave, SkipIntermission, ClaimWaveResult, RequestRebirth, BuyBlockInventory, PurchaseGunCrates, BlockInventoryConfig, Shoot, ActiveNPCs, jf, ja, Library, SaveManager, Toggles, Options, jr, jl, jg, jb, jX, jA, jj, j_, jK = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
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
jn = "Build Base to Survive VERITY"
ji = "https://discord.gg/ehKVq7pf7v"
jc = "https://rscripts.net/@Ouroboros"
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
StartWave = Remotes:WaitForChild("StartWave")
SkipIntermission = Remotes:WaitForChild("SkipIntermission")
ClaimWaveResult = Remotes:WaitForChild("ClaimWaveResult")
RequestRebirth = Remotes:WaitForChild("RequestRebirth")
BuyBlockInventory = Remotes:WaitForChild("BuyBlockInventory")
PurchaseGunCrates = Remotes:WaitForChild("PurchaseGunCrates")
BlockInventoryConfig = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("BlockInventoryConfig"))
local j9 = require(ReplicatedStorage:WaitForChild("Blaster"):WaitForChild("Scripts"):WaitForChild("BlasterController"))
Shoot = ReplicatedStorage:WaitForChild("Blaster"):WaitForChild("Remotes"):WaitForChild("Shoot")
ActiveNPCs = Workspace:WaitForChild("ActiveNPCs")
jf = {
    "Plastic",
    "Dirt Block",
    "Sand",
    "Hay",
    "Grass Dirt",
    "Glass",
    "Pink Wool",
    "Tree Leaves",
    "Spruce Leaves",
    "Blossom Leaves",
    "Palm Leaves",
    "Wood",
    "Wood Plank",
    "Jungle Plank",
    "Spruce Plank",
    "Barrel",
    "Brick",
    "Cobblestone",
    "Sand Stone",
    "Stone Brick",
    "Glow Stone",
    "Quartz",
    "Magma",
    "Iron Block",
    "Gold Block",
    "Ruby",
    "Emerald Block",
    "Diamond Block",
    "Obsidian",
    "Crying Obsidian",
    "Ancient Debris",
    "Netherite Block"
}
ja = {
    "Bear Trap",
    "Spike Trap",
    "Landmine",
    "Subspace Tripmine",
    "Turret",
    "Minigun Turret",
    "Cannon",
    "Sniper Turret"
}
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
jA = fn760
jj = fn577
j_ = fn191
jK = fn278
jr = "#7fd47f"
jl = "#6ec1ff"
jg = "#e8a34d"
jb = "#8b93a3"
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = ji, Copyable = true }, "|", jn },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
jX = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "swords"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in jX do
    fn328(v)
end
j1, jG, jh, jY, jx, jN, jo, j0, jC = nil, nil, nil, nil, nil, nil, nil, nil, nil
local j3 = 13
repeat
    local j4_1 = (j3 * 3 + 0) % 4 + 1
    if j4_1 <= 2 then
        if j4_1 <= 1 then
            local pz = bit32.rrotate(bit32.bxor(bit32.lrotate(j3, 3), string.byte(tostring(jG))), 28)
            if bit32.bxor(bit32.lrotate(bit32.bxor(pz, 1976699710), 2), 3611831545) ~= bit32.lrotate(pz, 2) then
                jh = fn153
            else
                jN = fn153
            end
            j3 = (j3 + 19) % 32
        else
            local pD = bit32.rrotate(bit32.bxor(bit32.lrotate(j3, 5), string.byte(tostring(jG))), 4)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(pD, 2218704327), 4129170994), (bit32.bxor(bit32.band(pD, 2076262968), 1601279136))), 4129170994), 1601279136) == pD then
                jo = function(bV, bW)
                    local lu = jx(bW)
                    local lv = jG()
                    for k, v in bV do
                        local lE = v
                        if lu[lE] then
                            local lw = jN(lE)
                            if lw and lv >= lw then
                                local lw_2 = pcall(function()
                                    BuyBlockInventory:InvokeServer(lE)
                                end)
                                if lw_2 then
                                    return
                                end
                            end
                        end
                    end
                end
                j0 = fn120
            else
                j0 = function(bV, bW)
                    local lu = jx(bW)
                    local lv = jG()
                    for k, v in bV do
                        local lE = v
                        if lu[lE] then
                            local lw = jN(lE)
                            if lw and lv >= lw then
                                local lw_1 = pcall(function()
                                    BuyBlockInventory:InvokeServer(lE)
                                end)
                                if lw_1 then
                                    return
                                end
                            end
                        end
                    end
                end
                jo = fn120
            end
            j3 = (j3 + 19) % 32
        end
    elseif j4_1 <= 3 then
        local qb = bit32.rrotate(bit32.bxor(bit32.lrotate(j3, 31), string.byte(tostring(jx))), 28)
        if bit32.bxor(bit32.lrotate(bit32.bxor(qb, 30734430), 0), 30734430) ~= bit32.lrotate(qb, 0) then
            j1 = fn126
            j9 = jC.shoot
        else
            jC = fn126
            j1 = j9.shoot
        end
        j3 = (j3 + 3) % 32
    else
        local j4_2 = { "yvsoatkehx", "sesekz", "xqdfliheb", "niff", "zblsri", "eru", "sfcj", "abuixvoxbi", "domay" }
        local pi = j3
        local j5_1 = j4_2[pi % 9 + 1]
        if j5_1:len() <= j5_1:reverse():rep(pi % 3 + 2):len() then
            local function j2_1()
                local kP
                kP = nil
                local Label, kH, kI, kJ, kK, kL, kM, kN, kO, kQ
                local kX_2
                local kW_2
                local kV_2
                local kU_2
                kP = "Unknown"
                pcall(function()
                    local ks_2
                    local kr_3
                    if identifyexecutor then
                        ks_2, kr_3 = identifyexecutor()
                        local kt = ks_2 ~= ""
                        local kv = type(ks_2) == "string" and kt
                        if kv then
                            local kt_2 = type(kr_3) == "string" and kr_3 ~= "" and ks_2 .. " " .. kr_3
                            kP = kt_2 or ks_2
                        end
                    end
                end)
                local AccountGroup = jX.Info:AddLeftGroupbox("Account", "circle-user")
                local kR_13
                AccountGroup:AddLabel(jK("User", LocalPlayer.Name, jr), true)
                AccountGroup:AddLabel(jK("Status", "Keyless", jr), true)
                AccountGroup:AddLabel(jK("Executor", kP, jr), true)
                local GameInfoGroup = jX.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                GameInfoGroup:AddLabel(j_(jn .. " [" .. tostring(game.PlaceId) .. "]", jl), true)
                GameInfoGroup:AddLabel(jK("Place ID", tostring(game.PlaceId), jl), true)
                Label = GameInfoGroup:AddLabel(jK("Session time", "0s", jg), true)
                kN = tostring(game.JobId)
                local kS = #kN > 18 and string.sub(kN, 1, 18) .. "..."
                local kS_4
                local kT = kS or kN
                local kT_2
                GameInfoGroup:AddLabel(jK("Server", kT, jb), true)
                GameInfoGroup:AddButton({
                    Text = "Copy join script (Job ID)",
                    Func = function()
                        local kA = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, kN)
                        if setclipboard then
                            setclipboard(kA)
                        elseif toclipboard then
                            toclipboard(kA)
                        end
                        Library:Notify("Copied join script to clipboard")
                    end
                })
                kJ = os.clock()
                task.spawn(function()
                    local kD_2
                    while true do
                        task.wait(1)
                        if Library.Unloaded then
                            break
                        end
                        local kC = math.floor(os.clock() - kJ)
                        if kC < 60 then
                            kD_2 = kC .. "s"
                        elseif kC < 3600 then
                            kD_2 = string.format("%dm %ds", kC // 60, kC % 60)
                        else
                            kD_2 = string.format("%dh %dm", kC // 3600, kC % 3600 // 60)
                        end
                        Label:SetText(jK("Session time", kD_2, jg))
                    end
                end)
                local ScriptsGroup = jX.Info:AddRightGroupbox("Scripts", "package")
                ScriptsGroup:AddLabel(j_("Included in this hub", jb), true)
                ScriptsGroup:AddLabel(j_(jn, jl), true)
                local FeaturesGroup = jX.Info:AddRightGroupbox("Features", "list")
                FeaturesGroup:AddLabel(j_("Wave Automation", jl), true)
                FeaturesGroup:AddLabel(j_("Shop Automation", jg), true)
                FeaturesGroup:AddLabel(j_("Combat Utilities", jb), true)
                local SocialsGroup = jX.Info:AddRightGroupbox("Socials", "link")
                SocialsGroup:AddButton({ Text = "Discord", Func = jj })
                SocialsGroup:AddButton({
                    Text = "Rscripts",
                    Func = function()
                        if setclipboard then
                            setclipboard(jc)
                        elseif toclipboard then
                            toclipboard(jc)
                        end
                        Library:Notify("Copied Rscripts profile to clipboard")
                    end
                })
                local OuroborosHubGroup = jX.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
                OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
                OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
                OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
                OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = jj })
                kK = "https://venmo.com/u/miserablemusic"
                kH = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
                kM = "https://paypal.me/TheTruckerGOD"
                kO = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
                kL = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                kQ = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
                kI = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                kR_13, kS_4, kT_2, kU_2, kV_2, kW_2, kX_2 = "#345d9d", "#f7931a", "#627eea", "#26a17b", "#14f195", "#0070ba", "#008cff"
                local DonationsGroup = jX.Info:AddRightGroupbox("Donations", "heart")
                DonationsGroup:AddLabel(j_("All donations are optional but appreciated.", jg), true)
                DonationsGroup:AddLabel(j_("If you donate you get a special role, just PING after you donate.", jr), true)
                DonationsGroup:AddDivider()
                DonationsGroup:AddLabel(j_("LTC / Litecoin", kR_13), true)
                DonationsGroup:AddButton({
                    Text = "Copy Litecoin Address",
                    Func = function()
                        jA(kH, "Copied Litecoin address")
                    end
                })
                DonationsGroup:AddLabel(j_("BTC / Bitcoin", kS_4), true)
                DonationsGroup:AddButton({
                    Text = "Copy Bitcoin Address",
                    Func = function()
                        jA(kO, "Copied Bitcoin address")
                    end
                })
                DonationsGroup:AddLabel(j_("ETH / Ethereum", kT_2), true)
                DonationsGroup:AddButton({
                    Text = "Copy Ethereum Address",
                    Func = function()
                        jA(kL, "Copied Ethereum address")
                    end
                })
                DonationsGroup:AddLabel(j_("USDT", kU_2), true)
                DonationsGroup:AddButton({
                    Text = "Copy USDT Address",
                    Func = function()
                        jA(kI, "Copied USDT address")
                    end
                })
                DonationsGroup:AddLabel(j_("Solana", kV_2), true)
                DonationsGroup:AddButton({
                    Text = "Copy Solana Address",
                    Func = function()
                        jA(kQ, "Copied Solana address")
                    end
                })
                DonationsGroup:AddLabel(j_("PayPal", kW_2), true)
                DonationsGroup:AddButton({
                    Text = "Copy PayPal Link",
                    Func = function()
                        jA(kM, "Copied PayPal link")
                    end
                })
                DonationsGroup:AddLabel(j_("Venmo", kX_2), true)
                DonationsGroup:AddButton({
                    Text = "Copy Venmo Link",
                    Func = function()
                        jA(kK, "Copied Venmo link")
                    end
                })
                DonationsGroup:AddDivider()
                DonationsGroup:AddLabel(j_("Don't have any of the listed currencies but still wanna donate?", jb), true)
                DonationsGroup:AddLabel(j_("DM me and we'll work something out.", jl), true)
                local FaqGroup = jX.Info:AddRightGroupbox("FAQ", "circle-help")
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
            j2_1()
            jG = fn412
            jh = fn337
            jY = fn769
            jx = fn301
        else
            jG = function()
                local kP
                kP = nil
                local Label, kH, kI, kJ, kK, kL, kM, kN, kO, kQ
                local kX_1
                local kW_1
                local kV_1
                local kU_1
                kP = "Unknown"
                pcall(function()
                    local ks_1
                    local kr_1
                    if identifyexecutor then
                        ks_1, kr_1 = identifyexecutor()
                        local kt = ks_1 ~= ""
                        local kv = type(ks_1) == "string" and kt
                        if kv then
                            local kt_1 = type(kr_1) == "string" and kr_1 ~= "" and ks_1 .. " " .. kr_1
                            kP = kt_1 or ks_1
                        end
                    end
                end)
                local AccountGroup = jX.Info:AddLeftGroupbox("Account", "circle-user")
                local kR_6
                AccountGroup:AddLabel(jK("User", LocalPlayer.Name, jr), true)
                AccountGroup:AddLabel(jK("Status", "Keyless", jr), true)
                AccountGroup:AddLabel(jK("Executor", kP, jr), true)
                local GameInfoGroup = jX.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                GameInfoGroup:AddLabel(j_(jn .. " [" .. tostring(game.PlaceId) .. "]", jl), true)
                GameInfoGroup:AddLabel(jK("Place ID", tostring(game.PlaceId), jl), true)
                Label = GameInfoGroup:AddLabel(jK("Session time", "0s", jg), true)
                kN = tostring(game.JobId)
                local kS = #kN > 18 and string.sub(kN, 1, 18) .. "..."
                local kS_2
                local kT = kS or kN
                local kT_1
                GameInfoGroup:AddLabel(jK("Server", kT, jb), true)
                GameInfoGroup:AddButton({
                    Text = "Copy join script (Job ID)",
                    Func = function()
                        local kA = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, kN)
                        if setclipboard then
                            setclipboard(kA)
                        elseif toclipboard then
                            toclipboard(kA)
                        end
                        Library:Notify("Copied join script to clipboard")
                    end
                })
                kJ = os.clock()
                task.spawn(function()
                    local kD_1
                    while true do
                        task.wait(1)
                        if Library.Unloaded then
                            break
                        end
                        local kC = math.floor(os.clock() - kJ)
                        if kC < 60 then
                            kD_1 = kC .. "s"
                        elseif kC < 3600 then
                            kD_1 = string.format("%dm %ds", kC // 60, kC % 60)
                        else
                            kD_1 = string.format("%dh %dm", kC // 3600, kC % 3600 // 60)
                        end
                        Label:SetText(jK("Session time", kD_1, jg))
                    end
                end)
                local ScriptsGroup = jX.Info:AddRightGroupbox("Scripts", "package")
                ScriptsGroup:AddLabel(j_("Included in this hub", jb), true)
                ScriptsGroup:AddLabel(j_(jn, jl), true)
                local FeaturesGroup = jX.Info:AddRightGroupbox("Features", "list")
                FeaturesGroup:AddLabel(j_("Wave Automation", jl), true)
                FeaturesGroup:AddLabel(j_("Shop Automation", jg), true)
                FeaturesGroup:AddLabel(j_("Combat Utilities", jb), true)
                local SocialsGroup = jX.Info:AddRightGroupbox("Socials", "link")
                SocialsGroup:AddButton({ Text = "Discord", Func = jj })
                SocialsGroup:AddButton({
                    Text = "Rscripts",
                    Func = function()
                        if setclipboard then
                            setclipboard(jc)
                        elseif toclipboard then
                            toclipboard(jc)
                        end
                        Library:Notify("Copied Rscripts profile to clipboard")
                    end
                })
                local OuroborosHubGroup = jX.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
                OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
                OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
                OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
                OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = jj })
                kK = "https://venmo.com/u/miserablemusic"
                kH = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
                kM = "https://paypal.me/TheTruckerGOD"
                kO = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
                kL = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                kQ = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
                kI = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                kR_6, kS_2, kT_1, kU_1, kV_1, kW_1, kX_1 = "#345d9d", "#f7931a", "#627eea", "#26a17b", "#14f195", "#0070ba", "#008cff"
                local DonationsGroup = jX.Info:AddRightGroupbox("Donations", "heart")
                DonationsGroup:AddLabel(j_("All donations are optional but appreciated.", jg), true)
                DonationsGroup:AddLabel(j_("If you donate you get a special role, just PING after you donate.", jr), true)
                DonationsGroup:AddDivider()
                DonationsGroup:AddLabel(j_("LTC / Litecoin", kR_6), true)
                DonationsGroup:AddButton({
                    Text = "Copy Litecoin Address",
                    Func = function()
                        jA(kH, "Copied Litecoin address")
                    end
                })
                DonationsGroup:AddLabel(j_("BTC / Bitcoin", kS_2), true)
                DonationsGroup:AddButton({
                    Text = "Copy Bitcoin Address",
                    Func = function()
                        jA(kO, "Copied Bitcoin address")
                    end
                })
                DonationsGroup:AddLabel(j_("ETH / Ethereum", kT_1), true)
                DonationsGroup:AddButton({
                    Text = "Copy Ethereum Address",
                    Func = function()
                        jA(kL, "Copied Ethereum address")
                    end
                })
                DonationsGroup:AddLabel(j_("USDT", kU_1), true)
                DonationsGroup:AddButton({
                    Text = "Copy USDT Address",
                    Func = function()
                        jA(kI, "Copied USDT address")
                    end
                })
                DonationsGroup:AddLabel(j_("Solana", kV_1), true)
                DonationsGroup:AddButton({
                    Text = "Copy Solana Address",
                    Func = function()
                        jA(kQ, "Copied Solana address")
                    end
                })
                DonationsGroup:AddLabel(j_("PayPal", kW_1), true)
                DonationsGroup:AddButton({
                    Text = "Copy PayPal Link",
                    Func = function()
                        jA(kM, "Copied PayPal link")
                    end
                })
                DonationsGroup:AddLabel(j_("Venmo", kX_1), true)
                DonationsGroup:AddButton({
                    Text = "Copy Venmo Link",
                    Func = function()
                        jA(kK, "Copied Venmo link")
                    end
                })
                DonationsGroup:AddDivider()
                DonationsGroup:AddLabel(j_("Don't have any of the listed currencies but still wanna donate?", jb), true)
                DonationsGroup:AddLabel(j_("DM me and we'll work something out.", jl), true)
                local FaqGroup = jX.Info:AddRightGroupbox("FAQ", "circle-help")
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
            jG()
            jx = fn337
            jh = fn769
            jY = fn301
        end
        j3 = (j3 + 27) % 32
    end
until (j3 * 9 + 24) % 32 == 17
if type(hookfunction) == "function" then
    local j2_2 = 4
    repeat
        local j3_1 = (vector.create((j2_2 * 5 + 5) % 11 + 1, (j2_2 * 10 + 8) % 13 + 1, (j2_2 * 9 + 7) % 17 + 1))
        local j4_3 = (vector.create((j2_2 * 5 + 4) % 11 + 1, (j2_2 * 8 + 2) % 13 + 1, (j2_2 * 8 + 15) % 17 + 1))
        local j5_2 = (vector.create((j2_2 * 5 + 7) % 11 + 1, (j2_2 * 3 + 2) % 13 + 1, (j2_2 * 10 + 11) % 17 + 1))
        if vector.dot(vector.cross(j3_1, j4_3), j5_2) == vector.dot(vector.cross(j4_3, j5_2), j3_1) + 5 then
            j9 = hookfunction(j1.shoot, newcclosure(fn259))
        else
            j1 = hookfunction(j9.shoot, newcclosure(fn259))
        end
        j2_2 = (j2_2 + 2) % 8
    until (j2_2 * 1 + 3) % 8 == 1
end
jv, jp, ju, jm, jd, jO, js, jQ, jL, jR, je = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
jd = fn287
jO = function()
    local mz, mA, mB
    local Character = LocalPlayer.Character
    local mD = Character and Character:FindFirstChild("HumanoidRootPart")
    local mD_1
    mA = jd()
    mB, mD_1 = jC()
    if not mD or not mA or not mB or not mD_1 then
        return
    end
    mz = CFrame.lookAt(mD.Position + Vector3.new(0, 1.5, 0), mD_1.Position)
    pcall(function()
        Shoot:FireServer(Workspace:GetServerTimeNow(), mA, mz, { ["1"] = mB })
    end)
end
js = function()
    local mI
    mI = Options.GunCrate and Options.GunCrate.Value or "Normal"
    local mJ_1 = mI == ""
    local mK_1 = type(mI) ~= "string" or mJ_1
    if mK_1 then
        mI = "Normal"
    end
    pcall(function()
        PurchaseGunCrates:InvokeServer(mI, 1)
    end)
end
jQ = fn564
jL = fn38
jR = fn8
je = fn47
local WaveGroup = jX.Main:AddLeftGroupbox("Wave", "swords")
WaveGroup:AddToggle("AutoStartWave", { Text = "Auto Start Wave", Default = false })
WaveGroup:AddToggle("AutoEndWave", { Text = "Auto End Wave", Default = false })
WaveGroup:AddSlider("EndWaveAt", { Text = "End At Wave", Default = 1, Min = 1, Max = 100, Rounding = 0 })
WaveGroup:AddToggle("AutoClaim", { Text = "Auto Claim", Default = false })
WaveGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local ShopGroup = jX.Main:AddRightGroupbox("Shop", "shopping-cart")
ShopGroup:AddToggle("AutoBuyBlocks", { Text = "Auto Buy Blocks", Default = false })
ShopGroup:AddDropdown("BlockList", { Text = "Blocks", Values = jf, Multi = true, Default = {} })
ShopGroup:AddToggle("AutoBuyTrap", { Text = "Auto Buy Trap", Default = false })
ShopGroup:AddDropdown("TrapList", { Text = "Traps", Values = ja, Multi = true, Default = {} })
ShopGroup:AddToggle("AutoBuyGuns", { Text = "Auto Buy Guns", Default = false })
ShopGroup:AddDropdown("GunCrate", { Text = "Gun Crate", Values = { "Normal", "Diamond" }, Default = "Normal" })
local CombatGroup = jX.Main:AddLeftGroupbox("Combat", "crosshair")
CombatGroup:AddToggle("SilentAim", { Text = "Silent Aim", Default = false })
CombatGroup:AddToggle("AutoShoot", { Text = "Auto Shoot", Default = false })
CombatGroup:AddSlider("SilentAimRange", { Text = "Silent Aim Range", Default = 200, Min = 50, Max = 500, Rounding = 0 })
task.spawn(autoEndWaveLoop)
task.spawn(autoShootLoop)
local function kd()
    local MovementGroup = jX.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    local FlyGroup = jX.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local function ev()
        local Character = LocalPlayer.Character
        local nb = Character and Character:FindFirstChildOfClass("Humanoid")
        return nb
    end
    local function eA()
        local Character = LocalPlayer.Character
        local ne = Character and Character:FindFirstChild("HumanoidRootPart")
        return ne
    end
    local function eE(eF)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not eF)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not eF
            end
        end)
        if not eF then
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
                    local nn_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if nn_2 then
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
            local nv_1 = ev()
            if nv_1 then
                nv_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    local CurrentCamera = Workspace.CurrentCamera
    RunService.RenderStepped:Connect(function(e9)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local nA_1 = ev()
            if nA_1 then
                nA_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local nA_3 = eA()
            local nB = ev()
            if nA_3 and nB then
                nB.PlatformStand = true
                local nB_1 = Vector3.zero
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    nB_1 += CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    nB_1 -= CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                    nB_1 -= CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    nB_1 += CurrentCamera.CFrame.RightVector
                end
                local nG = if UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
                if nG == 1 then
                    nB_1 += Vector3.new(0, 1, 0)
                end
                local nJ = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
                if nJ == 1 then
                    nB_1 -= Vector3.new(0, 1, 0)
                end
                nA_3.AssemblyLinearVelocity = Vector3.zero
                if nB_1.Magnitude > 0 then
                    nA_3.CFrame = nA_3.CFrame + nB_1.Unit * Options.FlySpeed.Value * e9
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local nK = ev()
            if nK then
                nK.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local nM = ev()
            if nM then
                nM.WalkSpeed = 16
            end
        end
    end)
    Toggles.AntiGameplayPause:OnChanged(function()
        eE(Toggles.AntiGameplayPause.Value)
    end)
    eE(true)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                eE(true)
            end
        end
    end)
    return ev, eE
end
jv, jp = kd()
local function j5_3(fC)
    local fD
    fD = tick()
    local fE = tick()
    pcall(function()
        for k, v in getconnections(LocalPlayer.Idled) do
            local nV = v
            pcall(function()
                nV:Disable()
            end)
        end
    end)
    local function fK()
        local CurrentCamera = Workspace.CurrentCamera
        if not CurrentCamera then
            return
        end
        VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
        task.wait(0.1)
        VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
        fE = tick()
    end
    local connection2 = UserInputService.InputBegan:Connect(function()
        fD = tick()
    end)
    local connection = UserInputService.InputChanged:Connect(function(fU)
        local UserInputType = fU.UserInputType
        if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
            fD = tick()
        end
    end)
    fC:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            if Toggles.AntiAfk.Value then
                local n3 = tick() - fD
                local n4 = tick() - fE
                if n3 >= 300 and n4 >= 60 then
                    pcall(fK)
                else
                    if n3 < 300 and n4 >= 300 then
                        pcall(fK)
                    end
                end
            end
        end
    end)
    return connection2, connection
end
local MenuGroup = jX.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
ju, jm = j5_3(MenuGroup)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(jX.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/BuildBaseToSurviveVERITY")
local j4_4 = SaveManager:BuildConfigSection(jX.Settings)
SaveManager:LoadAutoloadConfig()
local function j3_2(ge)
    local function gf(gg, gh)
        local n8_1 = (gg == "Toggle" and Toggles or Options)[gh]
        local n7_2 = type(n8_1) == "table" and n8_1.Type == gg
        return n7_2 and n8_1 or nil
    end
    local function gp(gq, gr)
        local Type = gr.Type
        if Type == "Toggle" then
            return { idx = gq, type = "Toggle", value = gr.Value == true }
        elseif Type == "Slider" then
            return { idx = gq, type = "Slider", value = tostring(gr.Value) }
        elseif Type == "Dropdown" then
            return { idx = gq, type = "Dropdown", multi = gr.Multi == true, value = gr.Value }
        elseif Type == "Input" then
            local oc = gr.Value or ""
            return { idx = gq, type = "Input", text = tostring(oc) }
        elseif Type == "ColorPicker" then
            return { idx = gq, type = "ColorPicker", value = gr.Value:ToHex(), transparency = gr.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = gq,
                type = "KeyPicker",
                mode = gr.Mode,
                key = gr.Value,
                modifiers = gr.Modifiers,
                toggled = gr.Toggled
            }
        else
            return nil
        end
    end
    local function gt()
        local om = {}
        for k, v in { Toggles, Options } do
            for k, v in v do
                local on = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if on then
                    local on_1 = gp(k, v)
                    if on_1 then
                        om[#om + 1] = on_1
                    end
                end
            end
        end
        table.sort(om, function(gD, gE)
            if gD.type ~= gE.type then
                return gD.type < gE.type
            end
            return gD.idx < gE.idx
        end)
        return { objects = om }
    end
    local function gF(gG)
        local oI
        oI = nil
        local oJ = type(gG) ~= "table" or type(gG.idx) ~= "string" or type(gG.type) ~= "string" or SaveManager.Ignore[gG.idx]
        if oJ then
            return false
        end
        oI = gf(gG.type, gG.idx)
        if not oI then
            return false
        end
        local oJ_1 = pcall(function()
            if gG.type == "Input" then
                if type(gG.text) ~= "string" then
                    return
                end
                oI:SetValue(gG.text)
            elseif gG.type == "ColorPicker" then
                oI:SetValueRGB(Color3.fromHex(gG.value), gG.transparency)
            elseif gG.type == "KeyPicker" then
                oI:SetValue({ gG.key, gG.mode, gG.modifiers })
                if gG.mode == "Toggle" and gG.toggled ~= nil then
                    oI.Toggled = gG.toggled
                    oI:Update()
                end
            else
                oI:SetValue(gG.value)
            end
        end)
        return oJ_1
    end
    ge:AddDivider()
    ge:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    ge:AddButton("Export Config to Clipboard", function()
        local oP_1
        local oO_1
        oO_1, oP_1 = pcall(HttpService.JSONEncode, HttpService, gt())
        if not oO_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local oO_2 = setclipboard or toclipboard
        local oO_3 = type(oO_2) ~= "function" or not pcall(oO_2, oP_1)
        if oO_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    ge:AddButton("Import Config from Clipboard Text", function()
        local oU_1
        local oS = Options.SaveManager_ImportSource.Value or ""
        local oS_1
        local oT = tostring(oS):match("^%s*(.-)%s*$")
        if oT == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        oS_1, oU_1 = pcall(HttpService.JSONDecode, HttpService, oT)
        local oT_1 = not oS_1 or type(oU_1) ~= "table"
        local oY = if oT_1 then 1 else 0
        local oW = 214 * oY + 2282 * (1 - oY)
        local oX = 4024 * oY + 4037 * (1 - oY)
        if not ((oW * 2583 + oX * 1741 + oW * oX) % 16777213 == 8419682) then
            oT_1 = type(oU_1.objects) ~= "table"
        end
        if oT_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local oS_2 = 0
        for k, v in oU_1.objects do
            if gF(v) then
                oS_2 += 1
            end
        end
        if oS_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local oU_2 = oS_2 == 1 and ""
        local oY_1 = if oU_2 then 1 else 0
        local oW_1 = 2057 * oY_1 + 2303 * (1 - oY_1)
        local oX_1 = 2450 * oY_1 + 974 * (1 - oY_1)
        if not ((oW_1 * 3803 + oX_1 * 2874 + oW_1 * oX_1) % 16777213 == 3126508) then
            oU_2 = "s"
        end
        Library:Notify(("Imported %d setting%s"):format(oS_2, oU_2), 6)
    end)
end
j3_2(j4_4)
Library:OnUnload(fn302)
