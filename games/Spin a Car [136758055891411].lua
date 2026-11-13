local c3
local PlotUtil
local UpgradeTreeData
local cO
local _remotes
local AutoBuyToggle
local c1
local AutoRebirthToggle
local AutoEquipCarToggle
local cX
local UserId
local c_
local UpgradeTreeUtil
local Modifiers
local cS
local LocalPlayer
local cV
local PlayerState
local AutoEquipModifierToggle
local AutoRollToggle
local RebirthUtil
local function fn1()
    return AutoEquipCarToggle.Value
end
local function fn13()
    local dZ = RebirthUtil.GetPlayerRebirthLevel(LocalPlayer)
    local d_ = RebirthUtil.GetPlayerThunder(LocalPlayer)
    local d3 = if RebirthUtil.CanRebirth(dZ, d_) then 1 else 0
    if d3 == 1 then
        cX("Rebirth", "Rebirth")
    end
end
local function fn21(u, ...)
    _remotes[u].RemoteEvent:FireServer(...)
end
local function fn44()
    if getgenv then
        getgenv().SpinACarUnload = nil
    end
    print("[Spin a Car] Unloaded")
end
local function fn132()
    return AutoEquipModifierToggle.Value
end
local function fn172()
    return AutoRebirthToggle.Value
end
local function rollDelayLoop()
    while task.wait() do
        if c_.Unloaded then
            break
        end
        if AutoRollToggle.Value then
            pcall(cO)
            local eD_1 = c_.Options and c_.Options.RollDelay and c_.Options.RollDelay.Value or 0.5
            task.wait(eD_1)
        else
            task.wait(0.25)
        end
    end
end
local function fn180()
    cX("Inventory", "EquipBest")
end
local function fn194(I)
    local dL = UpgradeTreeUtil.GetNodeCategory(I)
    if not cV[dL] then
        cV[dL] = UpgradeTreeUtil.BuildTree(dL)
    end
    return cV[dL]
end
local function onUnload()
    c_:Unload()
end
local function fn271()
    local d8 = c3(PlayerState.Plots)
    if not d8 then
        return
    end
    local d9 = PlotUtil.GetPlotByIndex(d8.PlotIndex)
    if not d9 then
        return
    end
    local d8_1 = PlotUtil.GetModifierSlots(d9)
    if #d8_1 == 0 then
        return
    end
    local d9_1 = {}
    local ea = c3(PlayerState.Modifiers) or d9_1
    local eb = ea.Placements or {}
    local ea_2 = {}
    local eb_1 = c1:get({ "Modifiers" }) or ea_2
    local ea_3 = {}
    local ec = {}
    for k, v in pairs(eb_1) do
        local eb_2 = type(v) == "number" and v > 0
        if eb_2 then
            ea_3[k] = v
            table.insert(ec, k)
        end
    end
    if #ec == 0 then
        return
    end
    table.sort(ec, function(aw, ax)
        return (Modifiers.Cache[aw] and Modifiers.Cache[aw].Weight or 0) > (Modifiers.Cache[ax] and Modifiers.Cache[ax].Weight or 0)
    end)
    local eb_3 = #d8_1
    local et = 1
    while et <= eb_3 do
        local eu = et
        local d8_2 = eb[eu] or eb[tostring(eu)]
        if not d8_2 then
            for i, v in ipairs(ec) do
                if (ea_3[v] or 0) > 0 then
                    cX("Modifiers", "PlaceModifier", eu, v)
                    ea_3[v] = ea_3[v] - 1
                    break
                end
            end
        end
        et += 1
    end
end
local function fn348(y)
    local dI = y()
    if type(dI) ~= "table" then
        return nil
    end
    local dJ = dI[UserId] or dI[tostring(UserId)]
    return dJ
end
local function fn387()
    return AutoBuyToggle.Value
end
local function fn411()
    local dP_1
    local dN = {}
    local dO = c1:get({ "Upgrades" }) or dN
    local dO_1
    for k in pairs(UpgradeTreeData.Nodes) do
        dO_1, dP_1 = pcall(UpgradeTreeUtil.CanPurchase, dO, k, cS(k))
        if dO_1 and dP_1 then
            local dO_2 = UpgradeTreeUtil.GetCurrency(k)
            local dP_2 = UpgradeTreeUtil.GetCost(k)
            local dQ_1 = c1:get({ dO_2 })
            local dO_3 = type(dQ_1) == "number" and dQ_1 >= dP_2
            if dO_3 then
                cX("UpgradeTree", "PurchaseUpgrade", k)
            end
        end
    end
end
local function fn432()
    cX("Roll", "Roll")
end
cO = nil
UpgradeTreeUtil = nil
AutoRollToggle = nil
AutoBuyToggle = nil
cS = nil
RebirthUtil = nil
AutoRebirthToggle = nil
cV = nil
PlotUtil = nil
cX = nil
PlayerState = nil
_remotes = nil
c_ = nil
AutoEquipModifierToggle = nil
c1 = nil
Modifiers = nil
c3 = nil
AutoEquipCarToggle = nil
LocalPlayer = nil
UpgradeTreeData = nil
UserId = nil
local Window
local dp_1
local dd_1
local c8 = getgenv and getgenv().SpinACarUnload
if c8 then
    local c9 = 0
    repeat
        if c9 * 116896349 + 9 + 3 <= c9 * 116896349 + 9 + 3 + 6 then
            pcall(getgenv().SpinACarUnload)
        else
            pcall(getgenv().SpinACarUnload)
        end
        c9 = (c9 + 6) % 8
    until (c9 * 3 + 0) % 8 == 2
end
c_, LocalPlayer, c1, PlayerState, PlotUtil, RebirthUtil, UpgradeTreeUtil, UpgradeTreeData, Modifiers, _remotes, UserId, cV, Window, dp_1, AutoRollToggle, AutoEquipCarToggle, AutoEquipModifierToggle, AutoRebirthToggle, AutoBuyToggle, dd_1, cX, c3, cO, cS = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
c_ = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
local Players = game:GetService("Players")
local da = game:GetService("ReplicatedStorage")
LocalPlayer = Players.LocalPlayer
if (da or dd_1 or (dd_1 or da)) and (c3 and not c3 or (dd_1 or not dd_1)) or (not c3 and c3 or c3 and not dd_1) and (c3 and dd_1 and (dd_1 or not da)) or not ((da or dd_1 or (dd_1 or da)) and (c3 and not c3 or (dd_1 or not dd_1)) or (not c3 and c3 or c3 and not dd_1) and (c3 and dd_1 and (dd_1 or not da))) then
    c1 = require(da.Packages.DataService).client
    PlayerState = require(da.Shared.Modules.Atoms.PlayerState)
else
    da = require(PlayerState.Packages.DataService).client
    c1 = require(PlayerState.Shared.Modules.Atoms.PlayerState)
end
PlotUtil = require(da.Shared.Modules.Core.Plot.Util.PlotUtil)
RebirthUtil = require(da.Shared.Modules.Core.Rebirth.Util.RebirthUtil)
UpgradeTreeUtil = require(da.Shared.Modules.Core.UpgradeTree.Util.UpgradeTreeUtil)
UpgradeTreeData = require(da.Shared.Modules.Core.UpgradeTree.Values.UpgradeTreeData)
Modifiers = require(da.Shared.Modules.Core.Modifiers.Values.Modifiers)
_remotes = da.Packages._Index["leifstout_networker@0.3.1"].networker._remotes
cX = fn21
UserId = LocalPlayer.UserId
c3 = fn348
cO = fn432
cV = {}
cS = fn194
if ((c_ or not c_) and (c_ and not dp_1) or not dp_1 and not dp_1 and (not dp_1 and not dp_1)) and ((not c_ and da or (not dp_1 or not c_)) and (not dp_1 and not da and (not dp_1 and not da))) or not (((c_ or not c_) and (c_ and not dp_1) or not dp_1 and not dp_1 and (not dp_1 and not dp_1)) and ((not c_ and da or (not dp_1 or not c_)) and (not dp_1 and not da and (not dp_1 and not da)))) then
    Window = c_:CreateWindow({ Title = "Ouroboros Hub", Footer = "Spin a Car", Icon = 18657887261, NotifySide = "Right" })
else
    c_ = Window:CreateWindow({ Title = "Ouroboros Hub", NotifySide = "Right", Icon = 18657887261, Footer = "Spin a Car" })
end
local dp_2 = {
    Main = Window:AddTab("Main", "gamepad-2"),
    ["UI Settings"] = Window:AddTab("UI Settings", "settings")
}
local dh = dp_2.Main:AddLeftGroupbox("Rolling", "dices")
if false and UserId or not AutoEquipCarToggle and not UserId or false and (Players or AutoEquipCarToggle) or not (false and UserId or not AutoEquipCarToggle and not UserId or false and (Players or AutoEquipCarToggle)) then
    AutoRollToggle = dh:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
else
    dh = AutoRollToggle:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
end
AutoRollToggle:AddKeyPicker("AutoRollKey", { Default = "F", Text = "Auto Roll", Mode = "Toggle" })
dh:AddSlider("RollDelay", { Text = "Roll Delay", Default = 0.5, Min = 0.1, Max = 5, Rounding = 1, Suffix = "s" })
local CarsGroup = dp_2.Main:AddLeftGroupbox("Cars", "car")
AutoEquipCarToggle = CarsGroup:AddToggle("AutoEquipCar", { Text = "Auto Equip Best Car", Default = false })
AutoEquipCarToggle:AddKeyPicker("AutoEquipCarKey", { Default = "G", Text = "Auto Equip Best Car", Mode = "Toggle" })
AutoEquipModifierToggle = CarsGroup:AddToggle("AutoEquipModifier", { Text = "Auto Equip Modifier", Default = false })
AutoEquipModifierToggle:AddKeyPicker("AutoEquipModifierKey", { Default = "H", Text = "Auto Equip Modifier", Mode = "Toggle" })
local ProgressionGroup = dp_2.Main:AddRightGroupbox("Progression", "trending-up")
AutoRebirthToggle = ProgressionGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
AutoRebirthToggle:AddKeyPicker("AutoRebirthKey", { Default = "J", Text = "Auto Rebirth", Mode = "Toggle" })
AutoBuyToggle = ProgressionGroup:AddToggle("AutoBuy", { Text = "Auto Buy Upgrades", Default = false })
AutoBuyToggle:AddKeyPicker("AutoBuyKey", { Default = "K", Text = "Auto Buy Upgrades", Mode = "Toggle" })
local function db(aT, aU, aV)
    task.spawn(function()
        while task.wait(aT) do
            if c_.Unloaded then
                break
            end
            if aU() then
                pcall(aV)
            end
        end
    end)
end
task.spawn(rollDelayLoop)
db(1, fn1, fn180)
db(1, fn132, fn271)
db(2, fn172, fn13)
db(2, fn387, fn411)
local MenuGroup = dp_2["UI Settings"]:AddLeftGroupbox("Menu", "menu")
MenuGroup:AddButton("Unload", onUnload)
MenuGroup:AddLabel("Menu Bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", Text = "Menu Keybind", NoUI = true })
c_.ToggleKeybind = c_.Options.MenuKeybind
if getgenv then
    getgenv().SpinACarUnload = function()
        c_:Unload()
    end
end
c_:OnUnload(fn44)
ThemeManager:SetLibrary(c_)
SaveManager:SetLibrary(c_)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
ThemeManager:SetFolder("OuroborosHub")
SaveManager:SetFolder("OuroborosHub/SpinACar")
ThemeManager:SaveDefault("Mint")
SaveManager:BuildConfigSection(dp_2["UI Settings"])
ThemeManager:ApplyToTab(dp_2["UI Settings"])
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
