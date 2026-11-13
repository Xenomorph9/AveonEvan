local Workspace
local dO
local dR
local connection
local PetServiceClient
local dU
local dM
local dX
local d7
local dP
local d_
local Toggles
local d2
local dV
local dK
local d5
local Options
local dY
local dQ
local d0
local Library
local dT
local dL
local connection2
local dW
local function autoUpgradesLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AutoUpgrades.Value then
            local gh = Options.UpgradeMode.Value == "Max" and "buy_boost_upgrade_max" or "buy_boost_upgrade"
            for k in pairs(Options.UpgradeList.Value) do
                local gh_1 = dR[k]
                if gh_1 then
                    pcall(dK.send, gh, gh_1)
                end
            end
        end
    end
end
local function fn110(L)
    local Backpack = dM:FindFirstChildOfClass("Backpack")
    local e5 = Backpack and Backpack:FindFirstChild(L)
    if e5 then
        return true
    end
    local Character = dM.Character
    local e5_1 = Character ~= nil and Character:FindFirstChild(L) ~= nil
    return e5_1
end
local function fn119(S)
    local fa = d_()
    if not fa then
        return nil
    end
    local fb = fa:FindFirstChild(S)
    if not fb then
        return nil
    end
    return fb:FindFirstChild("Pad", true)
end
local function fn135(m)
    local eN = {}
    if m then
        for i, child in m:GetChildren() do
            table.insert(eN, child.Name)
        end
    end
    table.sort(eN)
    return eN
end
local function autoCollectEventLoop()
    while not Library.Unloaded do
        task.wait(0.3)
        if Toggles.AutoCollectEvent.Value then
            local ActiveEventSpawns = Workspace:FindFirstChild("ActiveEventSpawns")
            if ActiveEventSpawns then
                for i, child in ActiveEventSpawns:GetChildren() do
                    local fZ_1 = child:IsA("Model") and not dO[child]
                    if fZ_1 then
                        dO[child] = true
                        pcall(dK.send, "event_pickup_claim", child)
                    end
                end
            end
        end
    end
end
local function fn143(av, aw)
    local fE = av and next(av) ~= nil
    local fF = aw
    if fF then
        fF = next(aw) ~= nil
    end
    local fE_1 = fF
    for i, descendant in Workspace:GetDescendants() do
        local fF_1 = descendant.Name == "BuyWinnerPrompt" and descendant:IsA("ProximityPrompt")
        if fF_1 then
            local fF_2 = true
            if fE then
                local fH_1 = d2(descendant, "AppliedRarity")
                fF_2 = fH_1 ~= nil and av[fH_1] == true
            end
            if fF_2 and fE_1 then
                local fH_3 = d2(descendant, "AppliedMutation") or "Normal"
                fF_2 = aw[fH_3] == true
            end
            if fF_2 then
                pcall(fireproximityprompt, descendant)
            end
        end
    end
end
local function fn146(aT)
    aT:AddLeftGroupbox("Discord", nil, nil, nil, true):AddButton({
        Text = "Join Discord For Dupe",
        Func = function()
            setclipboard(dU)
            Library:Notify("Copied Discord invite to clipboard")
        end
    })
end
local function onInputBegan()
    dV = tick()
end
local function autoRollCratesLoop()
    while not Library.Unloaded do
        local gy_1 = Options.CrateRollDelay and Options.CrateRollDelay.Value or 3
        if Toggles.AutoRollCrates.Value then
            d7("CrateModel")
            if Toggles.CrateClaimWinners.Value then
                dY(Options.CrateRarityFilter.Value, nil)
            end
        end
        task.wait(math.max(1, gy_1))
    end
end
local function fn174()
    local Character = dM.Character
    if Character then
        return Character:FindFirstChild("HumanoidRootPart")
    end
    return nil
end
local function fn192()
    local Character = dM.Character
    if Character then
        return Character:FindFirstChildOfClass("Humanoid")
    end
    return nil
end
local function fn209()
    connection:Disconnect()
    connection2:Disconnect()
end
local function fn236()
    if not workspace.CurrentCamera then
        return
    end
    dX:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    dX:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    dQ = tick()
end
local function autoLockBaseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AutoLockBase.Value then
            local f6 = d_()
            local f7 = d0()
            if f6 and f7 then
                local Lock = f6:FindFirstChild("Lock")
                local f6_1 = Lock and Lock:FindFirstChild("Pad")
                if Lock and f6_1 then
                    local attr = Lock:GetAttribute("LockState")
                    local ga = Lock:GetAttribute("LockStealBlocked") == true
                    local f8_2 = attr == "Idle"
                    local gb = attr == nil
                    local gf = if gb then 1 else 0
                    local gd = 890 * gf + 2637 * (1 - gf)
                    local ge = 2664 * gf + 2002 * (1 - gf)
                    if not ((gd * 2885 + ge * 1230 + gd * ge) % 16777213 == 8215330) then
                        gb = f8_2
                    end
                    if gb and not ga then
                        pcall(firetouchinterest, f6_1, f7, 0)
                        task.wait(0.1)
                        pcall(firetouchinterest, f6_1, f7, 1)
                    end
                end
            end
        end
    end
end
local function fn274(ag)
    local fr = dL(ag)
    local fs = not fr or not d5(fr)
    if fs then
        return
    end
    local ProximityPrompt = fr:FindFirstChildWhichIsA("ProximityPrompt")
    if ProximityPrompt then
        pcall(fireproximityprompt, ProximityPrompt)
    end
end
local function autoClaimPetsLoop()
    while not Library.Unloaded do
        task.wait(0.5)
        if Toggles.AutoClaimPets.Value then
            local ownedRenders = PetServiceClient.ownedRenders
            if type(ownedRenders) == "table" then
                for k, v in ownedRenders do
                    local fQ_1 = type(v) == "table" and (v.Money or 0) > 0
                    if fQ_1 then
                        pcall(dK.send, "claim_pet_money", k)
                    end
                end
            end
        end
    end
end
local function fn306(an, ao)
    local fu = an.Parent
    while true do
        local fv_1 = fu and not fu:IsA("Model")
        if fv_1 then
            fu = fu.Parent
            continue
        end
        break
    end
    if not fu then
        return nil
    end
    for i, descendant in fu:GetDescendants() do
        local attr = descendant:GetAttribute(ao)
        local fv_2 = attr ~= ""
        local fw = type(attr) == "string" and fv_2
        if fw then
            return attr
        end
    end
    return nil
end
local function onInputChanged(ca)
    local UserInputType = ca.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        dV = tick()
    end
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local gN = tick() - dV
            local gO = tick() - dQ
            if gN >= 300 and gO >= 60 then
                pcall(dW)
            else
                if gN < 300 and gO >= 300 then
                    pcall(dW)
                end
            end
        end
    end
end
local function onUnload()
    Library:Unload()
end
local function fn350()
    local Plots = Workspace:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    for i, child in Plots:GetChildren() do
        if child:GetAttribute("OwnerUserId") == dM.UserId then
            return child
        end
    end
    return nil
end
local function autoRollPetsLoop()
    while not Library.Unloaded do
        local gv_1 = Options.PetRollDelay and Options.PetRollDelay.Value or 3
        if Toggles.AutoRollPets.Value then
            d7("EggModel")
            if Toggles.PetClaimWinners.Value then
                dY(Options.PetRarityFilter.Value, Options.PetMutationFilter.Value)
            end
        end
        task.wait(math.max(1, gv_1))
    end
end
local function autoBuyGearLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AutoBuyGear.Value then
            for k in pairs(Options.GearList.Value) do
                if not dP(k) then
                    pcall(dK.send, "buy_gear", k)
                end
            end
        end
    end
end
local function fn400(aa)
    local fi = d0()
    local fj = dT()
    local fl = not fi or not fj
    local fk_1 = not aa
    local fm = fl
    local fq = if fm then 1 else 0
    local fo = 3126 * fq + 817 * (1 - fq)
    local fp = 176 * fq + 1740 * (1 - fq)
    if not ((fo * 2710 + fp * 1192 + fo * fp) % 16777213 == 9231428) then
        fm = fk_1
    end
    if fm then
        return false
    elseif (fi.Position - aa.Position).Magnitude <= 10 then
        return true
    else
        fj:MoveTo(aa.Position)
        return false
    end
end
dK = nil
dL = nil
dM = nil
Options = nil
dO = nil
dP = nil
dQ = nil
dR = nil
Toggles = nil
dT = nil
dU = nil
dV = nil
dW = nil
dX = nil
dY = nil
Workspace = nil
d_ = nil
d0 = nil
connection = nil
d2 = nil
Library = nil
PetServiceClient = nil
d5 = nil
connection2 = nil
d7 = nil
local el_1
local eh_1
local eg_1
local ef_1
local ee_1
local ed_1
local BoostsConfig
local d8_1
local ei_3
local eb_1
d8_1, eb_1, Workspace, dX, eg_1, dM, dK, PetServiceClient, BoostsConfig, ed_1, dU, eh_1, ef_1, ee_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local ea = 1
repeat
    local ei_1 = (ea * 6 + 0) % 7 + 1
    if ei_1 <= 4 then
        if ei_1 <= 2 then
            if ei_1 <= 1 then
                local ej_1 = (vector.create((ea * 6 + 1) % 11 + 1, (ea * 3 + 6) % 13 + 1, (ea * 13 + 7) % 17 + 1))
                local ho = vector.floor(ej_1) + vector.ceil(ej_1 * -1)
                if vector.dot(ho, ho) == 0 then
                    eb_1 = game:GetService("ReplicatedStorage")
                else
                    dM = game:GetService("ReplicatedStorage")
                end
                ea = (ea + 27) % 28
            else
                if ea * 107617133 + 1 + 2 <= ea * 107617133 + 1 + 2 + 1 then
                    Workspace = game:GetService("Workspace")
                    dX = game:GetService("VirtualUser")
                    eg_1 = game:GetService("UserInputService")
                    dM = d8_1.LocalPlayer
                else
                    dX = game:GetService("Workspace")
                    dM = game:GetService("VirtualUser")
                    d8_1 = game:GetService("UserInputService")
                    eg_1 = Workspace.LocalPlayer
                end
                ea = (ea + 20) % 28
            end
        elseif ei_1 <= 3 then
            local ej_2 = { "adhhbxzwjk", "puoucchayy", "zzfvgkb", "vslmk", "yotyyvdr", "kenl", "oek", "hkzrkiz", "zoe" }
            local hk = ea
            local ek_1 = ej_2[hk % 9 + 1]
            if ek_1:len() <= ek_1:gsub("(.)", "%1%1", hk % 3 % 2 + 1):len() then
                dK = require(eb_1:WaitForChild("Modules"):WaitForChild("Network"))
                PetServiceClient = require(eb_1.Shared.Services.PetService.PetServiceClient)
            else
                eb_1 = require(PetServiceClient:WaitForChild("Modules"):WaitForChild("Network"))
                dK = require(PetServiceClient.Shared.Services.PetService.PetServiceClient)
            end
            ea = (ea + 20) % 28
        else
            local hi = bit32.rrotate(bit32.bxor(bit32.lrotate(ea, 12), string.byte(tostring(dU))), 20)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(hi, 4172513699), 502053421), (bit32.bxor(bit32.band(hi, 122453596), 2303842207))), 502053421), 2303842207) == hi then
                BoostsConfig = require(eb_1.Shared.Services.BoostsService.BoostsConfig)
            else
                eb_1 = require(BoostsConfig.Shared.Services.BoostsService.BoostsConfig)
            end
            ea = (ea + 13) % 28
        end
    elseif ei_1 <= 6 then
        if ei_1 <= 5 then
            local ei_2 = {
                "jxfunejyf",
                "bxrg",
                "kmeihxdjiwtv",
                "lxlispgtya",
                "vuexogodiu",
                "xhzwfervw",
                "ocycq",
                "qaedsa",
                "fki",
                "qxvrtiqwab",
                "bciarepbysgs",
                "xkh",
                "wqquakavq",
                "whvubegc",
                "wdvhdcvla"
            }
            if ei_2[(ea * 3 + 106) % 15 + 1] <= ei_2[(ea * 3 + 106) % 15 + 1] then
                ed_1 = "Build a Base and Steal"
                dU = "https://discord.gg/ehKVq7pf7v"
                eh_1 = fn135(eb_1:FindFirstChild("Rarities"))
                ef_1 = fn135(eb_1:FindFirstChild("Mutations"))
            else
                eb_1 = "https://discord.gg/ehKVq7pf7v"
                ed_1 = fn135
                dU = ed_1(ef_1:FindFirstChild("Rarities"))
                eh_1 = ed_1(ef_1:FindFirstChild("Mutations"))
            end
            ea = (ea + 6) % 28
        else
            local hg = bit32.rrotate(bit32.bxor(bit32.lrotate(ea, 20), string.byte(tostring(dM))), 27)
            if bit32.bxor(bit32.lrotate(bit32.bxor(hg, 1298982126), 22), 999512889) == bit32.lrotate(hg, 22) then
                ee_1 = {}
            else
                dU = {}
            end
            ea = (ea + 6) % 28
        end
    else
        if ea * 67741783 + 9 + 3 >= ea * 67741783 + 9 + 3 + 2 then
            ef_1 = game:GetService("Players")
        else
            d8_1 = game:GetService("Players")
        end
        ea = (ea + 20) % 28
    end
until (ea * 11 + 23) % 28 == 6
local Gear = eb_1:FindFirstChild("Gear")
if Gear then
    for i, child in Gear:GetChildren() do
        table.insert(ee_1, child.Name)
    end
end
table.sort(ee_1)
dR = {}
local d8_3 = {}
for k, v in pairs(BoostsConfig) do
    local d9_2 = v.displayName or k
    table.insert(d8_3, d9_2)
    dR[d9_2] = k
end
Library, Toggles, Options, el_1, d_, d0, dP, dL, dT, d5, d7, d2, dY, ei_3 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
table.sort(d8_3)
d_ = fn350
d0 = fn174
dP = fn110
dL = fn119
dT = fn192
d5 = fn400
d7 = fn274
d2 = fn306
dY = fn143
local d9_3 = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
if (d_ or not d_ or (not ei_3 or d_) or not ei_3 and ei_3 and (d_ and not Options)) and (not d_ or d_ or (Toggles or ei_3) or (not Toggles and not d_ or not Options and not ei_3)) and (d_ and not ei_3 or (not Toggles or not Toggles) or (Toggles or Toggles) and (not Options or d_) or Toggles and not ei_3 and (not d_ or Toggles) and (not Toggles or ei_3 or (not Options or not Toggles))) or not ((d_ or not d_ or (not ei_3 or d_) or not ei_3 and ei_3 and (d_ and not Options)) and (not d_ or d_ or (Toggles or ei_3) or (not Toggles and not d_ or not Options and not ei_3)) and (d_ and not ei_3 or (not Toggles or not Toggles) or (Toggles or Toggles) and (not Options or d_) or Toggles and not ei_3 and (not d_ or Toggles) and (not Toggles or ei_3 or (not Options or not Toggles)))) then
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
else
    d9_3 = loadstring(game:HttpGet(Library .. "Library.lua"))()
end
local ek_2 = loadstring(game:HttpGet(d9_3 .. "addons/ThemeManager.lua"))()
local ej_3 = loadstring(game:HttpGet(d9_3 .. "addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
local Window = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = dU .. " | " .. ed_1,
    Icon = 18657887261,
    NotifySide = "Right",
    ShowCustomCursor = false
})
if ((d7 or d7) and (dT or not Options) or d7 and (not Toggles and dT)) and not ((d7 or d7) and (dT or not Options) or d7 and (not Toggles and dT)) then
    local eb_3 = { Main = el_1:AddTab("Main", "gamepad-2"), Settings = el_1:AddTab("Settings", "settings") }
else
    el_1 = { Main = Window:AddTab("Main", "gamepad-2"), Settings = Window:AddTab("Settings", "settings") }
end
for k, v in el_1 do
    fn146(v)
end
dO, dV, dQ, connection, connection2, dW = nil, nil, nil, nil, nil, nil
local MoneyGroup = el_1.Main:AddLeftGroupbox("Money", "banknote")
MoneyGroup:AddToggle("AutoClaimPets", { Text = "Auto Claim Money From Pets", Default = false })
MoneyGroup:AddToggle("AutoCollectEvent", { Text = "Auto Collect Event Money", Default = false })
local BaseGroup = el_1.Main:AddLeftGroupbox("Base", "lock")
BaseGroup:AddToggle("AutoLockBase", { Text = "Auto Lock Base", Default = false })
local UpgradesGroup = el_1.Main:AddLeftGroupbox("Upgrades", "trending-up")
UpgradesGroup:AddToggle("AutoUpgrades", { Text = "Auto Buy Upgrades", Default = false })
UpgradesGroup:AddDropdown("UpgradeList", { Values = d8_3, Default = {}, Multi = true, Text = "Upgrades" })
UpgradesGroup:AddDropdown("UpgradeMode", { Values = { "Single", "Max" }, Default = "Max", Multi = false, Text = "Buy Mode" })
local GearShopGroup = el_1.Main:AddRightGroupbox("Gear Shop", "sword")
GearShopGroup:AddToggle("AutoBuyGear", { Text = "Auto Buy Gear", Default = false })
GearShopGroup:AddDropdown("GearList", { Values = ee_1, Default = {}, Multi = true, Text = "Gear" })
local RollPetsGroup = el_1.Main:AddRightGroupbox("Roll Pets", "egg")
RollPetsGroup:AddToggle("AutoRollPets", { Text = "Auto Roll Pets", Default = false })
RollPetsGroup:AddSlider("PetRollDelay", { Text = "Roll Delay", Default = 3, Min = 1, Max = 30, Rounding = 1, Suffix = "s" })
RollPetsGroup:AddToggle("PetClaimWinners", { Text = "Auto Claim Winners", Default = true })
RollPetsGroup:AddDropdown("PetRarityFilter", { Values = eh_1, Default = {}, Multi = true, Text = "Claim Only Rarities" })
RollPetsGroup:AddDropdown("PetMutationFilter", { Values = ef_1, Default = {}, Multi = true, Text = "Claim Only Mutations" })
local RollCratesGroup = el_1.Main:AddRightGroupbox("Roll Crates", "package")
RollCratesGroup:AddToggle("AutoRollCrates", { Text = "Auto Roll Crates", Default = false })
RollCratesGroup:AddSlider("CrateRollDelay", { Text = "Roll Delay", Default = 3, Min = 1, Max = 30, Rounding = 1, Suffix = "s" })
RollCratesGroup:AddToggle("CrateClaimWinners", { Text = "Auto Claim Winners", Default = true })
RollCratesGroup:AddDropdown("CrateRarityFilter", { Values = eh_1, Default = {}, Multi = true, Text = "Claim Only Rarities" })
task.spawn(autoClaimPetsLoop)
dO = setmetatable({}, { __mode = "k" })
task.spawn(autoCollectEventLoop)
task.spawn(autoLockBaseLoop)
task.spawn(autoUpgradesLoop)
task.spawn(autoBuyGearLoop)
task.spawn(autoRollPetsLoop)
task.spawn(autoRollCratesLoop)
dV = tick()
dQ = tick()
pcall(function()
    for i, v in ipairs(getconnections(dM.Idled)) do
        local gH = v
        pcall(function()
            gH:Disable()
        end)
    end
end)
dW = fn236
connection = eg_1.InputBegan:Connect(onInputBegan)
connection2 = eg_1.InputChanged:Connect(onInputChanged)
local MenuGroup = el_1.Settings:AddLeftGroupbox("Menu", "menu")
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
task.spawn(antiAfkLoop)
Library:OnUnload(fn209)
ek_2:SetLibrary(Library)
ej_3:SetLibrary(Library)
ek_2:SetFolder("OuroborosHub")
ej_3:SetFolder("OuroborosHub/build-a-base-and-steal")
ej_3:IgnoreThemeSettings()
ej_3:SetIgnoreIndexes({ "MenuKeybind" })
ek_2:SaveDefault("Mint")
ek_2:ApplyToTab(el_1.Settings)
ek_2:LoadDefault()
ej_3:BuildConfigSection(el_1.Settings)
ej_3:LoadAutoloadConfig()
