local iU
local iX
local iE
local i_
local ih
local iH
local i2
local ik
local iK
local i5
local connection
local iN
local io
local iu
local ix
local iT
local iW
local iD
local Toggles
local ig
local ij
local Label
local i1
local im
local Options
local Upgrade_Carry_Limit
local iM
local i7
local iq
local it
local autoOGLuckyBlocksLoop
local Buy_Speed_Upgrade
local iz
local iV
local iY
local Rebirth
local Collect_Earnings
local Purchase_Floor
local il
local i3
local iL
local i6
local Upgrade_Slime
local iO
local iv
ig = nil
ih = nil
ij = nil
ik = nil
il = nil
im = nil
io = nil
iq = nil
connection = nil
Upgrade_Slime = nil
it = nil
iu = nil
iv = nil
ix = nil
iz = nil
Rebirth = nil
iD = nil
iE = nil
Collect_Earnings = nil
Label = nil
iH = nil
Upgrade_Carry_Limit = nil
iK = nil
iL = nil
iM = nil
iN = nil
iO = nil
autoOGLuckyBlocksLoop = nil
Buy_Speed_Upgrade = nil
iT = nil
iU = nil
iV = nil
iW = nil
iX = nil
iY = nil
Toggles = nil
i_ = nil
Purchase_Floor = nil
i1 = nil
i2 = nil
i3 = nil
local ii, Open_Lucky_Block, iw, iy, Place_Slime, iB, iI, iQ, iR
Options = nil
i5 = nil
i6 = nil
i7 = nil
local jf_1
local je_1
local ThemeManager
local jc_1, jc_2
local jb_1
local Players, i8_5
local ja_1, ja_3, ja_4
local jm = if not game:IsLoaded() then 1 else 0
if jm == 1 then
    game.Loaded:Wait()
end
Players, jb_1, iV, ja_1 = nil, nil, nil, nil
if (not jb_1 or ja_1) and (jb_1 or jb_1) and (not Players and iV or (not jb_1 or false)) or (iV or not iV) and (ja_1 and jb_1) and (not jb_1 and ja_1 and false) or (jb_1 and iV and (Players or ja_1) or Players and (Players or 2)) and ((Players or false) and (iV or Players) or not ja_1 and ja_1 and (ja_1 and 2)) or not ((not jb_1 or ja_1) and (jb_1 or jb_1) and (not Players and iV or (not jb_1 or false)) or (iV or not iV) and (ja_1 and jb_1) and (not jb_1 and ja_1 and false) or (jb_1 and iV and (Players or ja_1) or Players and (Players or 2)) and ((Players or false) and (iV or Players) or not ja_1 and ja_1 and (ja_1 and 2))) then
    Players = game:GetService("Players")
else
    iV = game:GetService("Players")
end
local ReplicatedStorage = game:GetService("ReplicatedStorage")
iV = Players.LocalPlayer
local ja_2 = getgenv and getgenv()
iv = ja_2 or _G
if type(iv.OuroborosHubUnload) == "function" then
    pcall(iv.OuroborosHubUnload)
end
i2, jf_1, ThemeManager, je_1, ja_3, jc_1 = nil, nil, nil, nil, nil, nil
local i8_3 = "https://raw.githubusercontent.com/losthubv1/ffedfdfdf/main/"
i2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/losthubv1/ffedfdfdf/main/Library.lua"))()
if (jc_1 and false or jc_1 and jc_1 or (jc_1 and not jc_1 or (not jc_1 or jc_1)) or ((not jc_1 or not jc_1) and (not jc_1) or (jc_1 or jc_1 or (jc_1 or not jc_1)))) and ((jc_1 or false) and (not jc_1) or jc_1 and not jc_1 and 41 or ((jc_1 and not jc_1) or (not jc_1 or not jc_1 and jc_1))) and not ((jc_1 and false or jc_1 and jc_1 or (jc_1 and not jc_1 or (not jc_1 or jc_1)) or ((not jc_1 or not jc_1) and (not jc_1) or (jc_1 or jc_1 or (jc_1 or not jc_1)))) and ((jc_1 or false) and (not jc_1) or jc_1 and not jc_1 and 41 or ((jc_1 and not jc_1) or (not jc_1 or not jc_1 and jc_1)))) then
    i2 = jf_1:CreateLoading({ WindowHeight = 270, Title = "OuroborosHub", WindowWidth = 470, TotalSteps = 4 })
else
    jf_1 = i2:CreateLoading({ Title = "OuroborosHub", TotalSteps = 4, WindowWidth = 470, WindowHeight = 270 })
end
if (i2 or je_1 or not ja_3 and 10) and ((ja_3 or i8_3) and (false or jc_1)) or not ((i2 or je_1 or not ja_3 and 10) and ((ja_3 or i8_3) and (false or jc_1))) then
    jf_1:SetMessage("Starting OuroborosHub")
    jf_1:SetDescription("Loading interface addons...")
    jf_1:SetCurrentStep(1)
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/losthubv1/ffedfdfdf/main/addons/ThemeManager.lua"))()
else
    ThemeManager:SetMessage("Starting OuroborosHub")
    ThemeManager:SetDescription("Loading interface addons...")
    ThemeManager:SetCurrentStep(1)
    i8_3 = loadstring(game:HttpGet(jf_1 .. "addons/ThemeManager.lua"))()
end
if (i8_3 and not jf_1 and (not jf_1 or jf_1) and (not ThemeManager or not i8_3 or ja_3 and ThemeManager) or (not ThemeManager and i8_3 or (i8_3 or not jf_1)) and (not ja_3 or not ja_3 or (not jf_1 or not jf_1)) or ((i8_3 or jf_1) and (ThemeManager or ThemeManager) or (i8_3 or not i8_3 or (ja_3 or not ja_3))) and (not jf_1 or i8_3 or i8_3 and not i8_3 or not ThemeManager and not jf_1 and (i8_3 and ThemeManager))) and not (i8_3 and not jf_1 and (not jf_1 or jf_1) and (not ThemeManager or not i8_3 or ja_3 and ThemeManager) or (not ThemeManager and i8_3 or (i8_3 or not jf_1)) and (not ja_3 or not ja_3 or (not jf_1 or not jf_1)) or ((i8_3 or jf_1) and (ThemeManager or ThemeManager) or (i8_3 or not i8_3 or (ja_3 or not ja_3))) and (not jf_1 or i8_3 or i8_3 and not i8_3 or not ThemeManager and not jf_1 and (i8_3 and ThemeManager))) then
    loadstring(game:HttpGet(je_1 .. "addons/SaveManager.lua"))()
else
    je_1 = loadstring(game:HttpGet(i8_3 .. "addons/SaveManager.lua"))()
end
jf_1:SetDescription("Finding the game's replicated objects...")
jf_1:SetCurrentStep(2)
ThemeManager:SetLibrary(i2)
ja_4, jc_2 = ThemeManager:SetStartupTheme("Default")
if not ja_4 then
    warn("[OuroborosHub] Default theme failed to load:", jc_2)
end
Options = i2.Options
Toggles = i2.Toggles
local Remotes = ReplicatedStorage:WaitForChild("SharedModules"):WaitForChild("Network"):WaitForChild("Remotes")
Collect_Earnings = Remotes:WaitForChild("Collect Earnings")
Place_Slime = Remotes:WaitForChild("Place Slime")
Open_Lucky_Block = Remotes:WaitForChild("Open Lucky Block")
local Send_Notification = Remotes:WaitForChild("Send Notification")
Purchase_Floor = Remotes:WaitForChild("Purchase Floor")
Buy_Speed_Upgrade = Remotes:WaitForChild("Buy Speed Upgrade")
Upgrade_Carry_Limit = Remotes:WaitForChild("Upgrade Carry Limit")
Rebirth = Remotes:WaitForChild("Rebirth")
Upgrade_Slime = Remotes:WaitForChild("Upgrade Slime")
ij = function(C)
    local jp_1
    if type(C) == "number" then
        return C
    end
    local jn = C or ""
    local jn_1
    local jo = tostring(jn):gsub(",", ""):gsub("%$", ""):gsub("%s+", "")
    jn_1, jp_1 = jo:match("([%d%.]+)([%a]*)")
    local jo_1 = tonumber(jn_1)
    if not jo_1 then
        return nil
    end
    local jn_2 = {
        K = 1000,
        M = 1000000,
        B = 1000000000,
        T = 1000000000000,
        QA = 1000000000000000,
        QI = 1e+18,
        SX = 1e+21,
        SP = 1e+24
    }
    local jr = jp_1 or ""
    local jp_2 = jn_2[string.upper(jr)]
    local jv = if jp_2 then 1 else 0
    local jt = 3499 * jv + 2224 * (1 - jv)
    local ju = 1516 * jv + 2024 * (1 - jv)
    if not ((jt * 3147 + ju * 3082 + jt * ju) % 16777213 == 4210936) then
        jp_2 = 1
    end
    return jo_1 * jp_2
end
i3 = function()
    local leaderstats = iV:FindFirstChild("leaderstats")
    local jx = leaderstats and leaderstats:FindFirstChild("Cash")
    local jw_1 = jx
    if jx then
        jx = ij(jw_1.Value)
    end
    return jx or 0
end
i_ = function()
    local Character = iV.Character
    local jD = Character and Character:FindFirstChild("HumanoidRootPart")
    return jD
end
iu = function()
    local Plots = workspace:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    for i, child in ipairs(Plots:GetChildren()) do
        local owner = child:FindFirstChild("owner")
        local jG = owner and tostring(owner.Value) == iV.Name
        if jG then
            return child
        end
    end
    return nil
end
ik = function()
    local Live = workspace:FindFirstChild("Live")
    local jS = Live and Live:FindFirstChild("PlayerSlimes")
    local jR_1 = jS
    if jS then
        jS = jR_1:FindFirstChild(iV.Name)
    end
    return jS
end
io = function(ae)
    local SlimeBillboard = ae:FindFirstChild("SlimeBillboard")
    local jV = SlimeBillboard and SlimeBillboard:FindFirstChild("Frame")
    local jU_1 = jV
    if jV then
        jV = jU_1:FindFirstChild("DisplayName")
    end
    local jU_2 = jV
    if jV then
        jV = jU_2.Text
    end
    return jV or ae.Name
end
iT = function()
    local j_ = iu()
    local j0 = j_ and j_:FindFirstChild("Base")
    local j1 = j0
    if j0 then
        j0 = j1:FindFirstChild("Teleport", true)
    end
    local j2 = j0
    if j0 then
        j0 = j2:IsA("Attachment")
    end
    if j0 then
        return j2.WorldCFrame
    end
    local j0_1 = j2 and j2:IsA("BasePart")
    if j0_1 then
        return j2.CFrame
    end
    local j0_2 = j1 and j1:IsA("Model")
    if j0_2 then
        return j1:GetPivot()
    end
    local j0_3 = j_ and j_:GetPivot()
    return j0_3 or nil
end
i5 = function(ay)
    local j7 = i_()
    if j7 and ay then
        j7.CFrame = ay + Vector3.new(0, 3, 0)
        j7.AssemblyLinearVelocity = Vector3.zero
        j7.AssemblyAngularVelocity = Vector3.zero
        return true
    end
    return false
end
iz = function(aC)
    if aC:IsA("Model") then
        return aC:GetPivot().Position
    elseif aC:IsA("BasePart") then
        return aC.Position
    else
        local kf = if aC:IsA("Attachment") then 1 else 0
        if kf == 1 then
            return aC.WorldPosition
        end
        local BasePart = aC:FindFirstChildWhichIsA("BasePart", true)
        return BasePart and BasePart.Position or nil
    end
end
iR = function(aG)
    local Live = workspace:FindFirstChild("Live")
    local kh = Live and Live:FindFirstChild("Guardians")
    if not kh then
        return math.huge
    end
    local kh_1 = math.huge
    for i, child in ipairs(kh:GetChildren()) do
        local kg_2 = iz(child)
        if kg_2 then
            kh_1 = math.min(kh_1, (aG - kg_2).Magnitude)
        end
    end
    return kh_1
end
il = function()
    local Character = iV.Character
    local Backpack = iV:FindFirstChildOfClass("Backpack")
    local kr = {}
    local ks = {}
    for i, v in ipairs({ Character, Backpack }) do
        if v then
            for i, child in ipairs(v:GetChildren()) do
                if child:IsA("Tool") then
                    local attr = child:GetAttribute("slimeUID")
                    if attr and not kr[attr] then
                        kr[attr] = true
                        ks[#ks + 1] = { Tool = child, Uid = attr }
                    end
                end
            end
        end
    end
    return ks
end
iq = function(a0)
    local kH = tonumber(a0)
    if not kH then
        return false
    elseif kH <= 10 then
        return true
    else
        local kH_1 = iu()
        local kI = kH_1 and kH_1:FindFirstChild("CollectPads")
        local kH_2 = kI
        if kI then
            kI = kH_2:FindFirstChild(tostring(a0))
        end
        local kH_3 = kI
        if kI then
            kI = kH_3:FindFirstChild("Top")
        end
        local kJ = kI
        if kI then
            kI = kJ:FindFirstChild("PurchaseInfo")
        end
        local kK = kI
        if not kH_3 or not kJ then
            return false
        end
        local kH_4 = kK
        if kH_4 then
            local kI_2 = kK:IsA("BillboardGui") or kK:IsA("SurfaceGui")
            kH_4 = kI_2
        end
        if kH_4 then
            return not kK.Enabled
        end
        return kK == nil
    end
end
iQ = function()
    local kQ = iu()
    local kR = kQ and kQ:FindFirstChild("Stands")
    local kR_1 = ik()
    if not kR then
        return nil
    end
    local kS = {}
    for i, child in ipairs(kR:GetChildren()) do
        local kQ_2 = tonumber(child.Name)
        if kQ_2 then
            kS[#kS + 1] = child
        end
    end
    table.sort(kS, function(bq, br)
        return tonumber(bq.Name) < tonumber(br.Name)
    end)
    for i, v in ipairs(kS) do
        local kQ_3 = kR_1 and kR_1:FindFirstChild(v.Name)
        local kQ_4 = not kQ_3
        if kQ_4 ~= false then
            kQ_4 = iq(v.Name)
        end
        if kQ_4 then
            return v.Name
        end
    end
    return nil
end
iO = {}
iE = function()
    local k5 = {}
    local k6 = {}
    local k7 = ik()
    if k7 then
        for i, child in ipairs(k7:GetChildren()) do
            if child:IsA("Model") then
                local k7_1 = tostring(child.Name)
                local k8 = iu()
                local k9 = k8 and k8:FindFirstChild("Stands")
                local k8_1 = k9
                if k9 then
                    k9 = k8_1:FindFirstChild(k7_1)
                end
                local k8_2 = k9
                if k9 then
                    k9 = k8_2:FindFirstChild("Upgrade")
                end
                if k9 then
                    local k8_4 = string.format("%s | Cell %s", io(child), k7_1)
                    k6[#k6 + 1] = k8_4
                    k5[k8_4] = k7_1
                end
            end
        end
    end
    table.sort(k6)
    if #k6 == 0 then
        k6[1] = "No footballers found"
    end
    return k6, k5
end
i8_5, iO = iE()
jf_1:SetDescription("Building tabs and automation controls...")
jf_1:SetCurrentStep(3)
local Window = i2:CreateWindow({
    Title = "OuroborosHub",
    Footer = "Jump To Steal Soccer Players",
    Size = UDim2.fromOffset(860, 540),
    Center = true,
    AutoShow = true,
    Resizable = true,
    NotifySide = "Right",
    ShowCustomCursor = true
})
local MainTab = Window:AddTab("Main", "house", "Farm and upgrade automation")
local SettingsTab = Window:AddTab("Settings", "settings", "Interface, themes, and configs")
local FarmGroup = MainTab:AddLeftGroupbox("Farm", "sprout")
local PurchasesGroup = MainTab:AddLeftGroupbox("Purchases", "shopping-cart")
local UpgradesGroup = MainTab:AddRightGroupbox("Upgrades", "trending-up")
FarmGroup:AddToggle("AutoOGLuckyBlocks", {
    Text = "Auto Farm OG Lucky Blocks",
    Default = false,
    Tooltip = "Teleports to an OG Lucky Block, collects it, and returns to your base."
})
FarmGroup:AddToggle("AutoCollect", {
    Text = "Auto Collect Earnings",
    Default = false,
    Tooltip = "Collects earnings from every occupied footballer cell."
})
Label = FarmGroup:AddLabel("FarmStatus", { Text = "Status: Idle", DoesWrap = true })
PurchasesGroup:AddToggle("AutoUpgradeBase", { Text = "Auto Purchase Floor", Default = false })
PurchasesGroup:AddToggle("AutoBuyPads", { Text = "Auto Buy Pads", Default = false })
PurchasesGroup:AddToggle("AutoBuyCarry", { Text = "Auto Buy Extra Carry", Default = false })
UpgradesGroup:AddToggle("AutoUpgradeJump", { Text = "Auto Upgrade Jump", Default = false })
UpgradesGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
UpgradesGroup:AddToggle("AutoUpgradeFootballer", { Text = "Auto Upgrade Footballers", Default = false })
UpgradesGroup:AddDropdown("FootballerTarget", {
    Text = "Footballers",
    Values = i8_5,
    Default = {},
    Multi = true,
    AllowNull = true,
    Searchable = true,
    Tooltip = "Select one or more of your live footballer models."
})
local i8_6 = SettingsTab:AddPage("Interface", "Window and menu controls")
local ja_7 = SettingsTab:AddPage("Themes", "Theme manager")
local jb_4 = SettingsTab:AddPage("Configs", "Saved configurations")
local MenuGroup = i8_6:AddLeftGroupbox("Menu", "wrench")
MenuGroup:AddLabel("Menu key"):AddKeyPicker("MenuKeybind", { Default = "RightShift", Mode = "Toggle", NoUI = true, Text = "Menu keybind" })
i2.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddButton({
    Text = "Unload",
    DoubleClick = true,
    Func = function()
        i2:Unload()
    end
})
ThemeManager:SetFolder("OuroborosHub")
je_1:SetLibrary(i2)
je_1:IgnoreThemeSettings()
je_1:SetIgnoreIndexes({ "MenuKeybind" })
je_1:SetFolder("OuroborosHub")
je_1:SetSubFolder("soccergame")
ThemeManager:AddThemeOptions(ja_7)
je_1:BuildConfigSection(jb_4)
je_1:LoadAutoloadConfig()
jf_1:SetMessage("OuroborosHub is ready")
jf_1:SetDescription("Loaded without waiting for private game data.")
jf_1:SetCurrentStep(4)
jf_1:Continue()
i2:Toggle(true)
iB = false
iK = true
it = {}
ih = {}
i1 = nil
iW = 0
iM = function(ca)
    if Toggles.AutoOGLuckyBlocks and not Toggles.AutoOGLuckyBlocks.Value and ca ~= "Idle" then
        return
    end
    if i1 == ca then
        return
    end
    i1 = ca
    Label:SetText("Status: " .. ca)
end
Toggles.AutoOGLuckyBlocks:OnChanged(function(cf)
    local lv = cf and "Starting" or "Idle"
    iM(lv)
end)
local ja_8 = Toggles.AutoOGLuckyBlocks.Value and "Starting" or "Idle"
iM(ja_8)
connection = Send_Notification.OnClientEvent:Connect(function(ch)
    local lA = ch or ""
    local lB = tostring(lA)
    if not string.find(lB, "Captured OG Lucky Block! Return to base.", 1, true) then
        return
    end
    iW = iW + 1
    if Toggles.AutoOGLuckyBlocks.Value then
        iM("Captured; returning to base")
        i5(iT())
    end
end)
ii = function(cq, cr)
    if it[cq] then
        return
    end
    it[cq] = true
    i2:Notify({ Title = "OuroborosHub", Description = cr, Time = 5 })
end
iw = function()
    for i, v in ipairs(il()) do
        local lE = string.find(string.lower(v.Tool.Name), "og lucky block", 1, true) ~= nil
        if ih[v.Uid] or lE then
            ih[v.Uid] = true
            return v.Uid
        end
    end
    return nil
end
iy = function(cB)
    for i, v in ipairs(il()) do
        if v.Uid == cB then
            return true
        end
    end
    return false
end
iI = function(cG, cH)
    if not cG or not cH then
        return false
    end
    iM("Returning to base")
    i5(iT())
    task.wait(0.08)
    local lZ_1 = nil
    local l5 = 1
    while l5 <= 4 do
        iM("Placing OG block in cell " .. tostring(cG))
        Place_Slime:FireServer(cG, cH)
        local l__1 = os.clock() + 0.12
        while true do
            local l0 = iK and not lZ_1 and os.clock() < l__1
            if l0 then
                local l0_1 = ik()
                local l1 = l0_1 and l0_1:FindFirstChild(tostring(cG))
                lZ_1 = l1
                if not lZ_1 then
                    task.wait()
                end
                continue
            end
            break
        end
        if lZ_1 then
            break
        end
        l5 += 1
    end
    if not lZ_1 then
        iM("Placement failed; retrying")
        return false
    end
    iM("Opening OG block in cell " .. tostring(cG))
    Open_Lucky_Block:FireServer(cG)
    task.delay(0.2, function()
        local lU = ik()
        local lV = lU and lU:FindFirstChild(tostring(cG))
        local lV_1 = iu()
        local lW = lV_1 and lV_1:FindFirstChild("Stands")
        local lV_2 = lW
        if lW then
            lW = lV_2:FindFirstChild(tostring(cG))
        end
        local lV_3 = lV
        local lU_2 = lW
        if lV_3 then
            lV_3 = lU_2
        end
        if lV_3 then
            lV_3 = not lU_2:FindFirstChild("Upgrade")
        end
        if lV_3 then
            iM("Retrying open in cell " .. tostring(cG))
            Open_Lucky_Block:FireServer(cG)
        end
    end)
    task.delay(0.2, function()
        if not iy(cH) then
            ih[cH] = nil
            iM("Ready for next OG block")
        end
    end)
    return true
end
autoOGLuckyBlocksLoop = function()
    local mF_1
    local mE_1
    if iB then
        return
    end
    iB = true
    mE_1, mF_1 = pcall(function()
        local mh
        local mi = iQ()
        local mj = mi and iw()
        local mk = mj or nil
        if mi and mk then
            iI(mi, mk)
            return
        end
        local mi_1 = mi and "Searching for an OG block" or "Base full; collecting to carry"
        iM(mi_1)
        local Live = workspace:FindFirstChild("Live")
        local mj_3 = Live and Live:FindFirstChild("Slimes")
        if not mj_3 then
            iM("Waiting for Workspace.Live.Slimes")
            return
        end
        local mj_4 = nil
        local mk_2 = -1
        for i, child in ipairs(mj_3:GetChildren()) do
            local mi_4 = child:FindFirstChild("RootPart") or child.PrimaryPart
            local ml_1 = mi_4
            if mi_4 then
                mi_4 = ml_1:FindFirstChild("StealPrompt")
            end
            local ml_2 = mi_4
            local mi_5 = child.Name == "OG Lucky Block" and child:GetAttribute("heldBy") == nil and ml_2 and ml_2:IsA("ProximityPrompt") and ml_2.Enabled
            if mi_5 then
                local mi_6 = iR(child:GetPivot().Position)
                if mi_6 > mk_2 then
                    mj_4 = child
                    mk_2 = mi_6
                end
            end
        end
        if not mj_4 then
            iM("Waiting for an OG Lucky Block")
            return
        end
        local mi_7 = iv.fireproximityprompt or fireproximityprompt
        if type(mi_7) ~= "function" then
            ii("missing_prompt", "Your executor does not provide fireproximityprompt.")
            iM("fireproximityprompt is unavailable")
            return
        end
        local mi_8 = mj_4:FindFirstChild("RootPart") or mj_4.PrimaryPart
        local mm = mi_8
        if mi_8 then
            mi_8 = mm:FindFirstChild("StealPrompt")
        end
        local mm_1 = mi_8
        if mk_2 < math.huge then
            iM(string.format("Target %.0f studs from nearest guardian", mk_2))
        else
            iM("Targeting OG Lucky Block")
        end
        if not i5(mj_4:GetPivot()) then
            iM("Character root is unavailable")
            return
        end
        mh = {}
        for i, v in ipairs(il()) do
            mh[v.Uid] = true
        end
        local mi_9 = iW
        task.wait(0.08)
        iM("Collecting OG Lucky Block")
        pcall(mi_7, mm_1, 0)
        local function mj_5()
            local l8
            for i, v in ipairs(il()) do
                if not mh[v.Uid] then
                    ih[v.Uid] = true
                    l8 = l8 or v.Uid
                end
            end
            return l8
        end
        iM("Waiting for capture notification")
        local mk_3 = nil
        local ml_4 = iW > mi_9
        local mm_2 = os.clock() + 0.8
        while true do
            local mn = iK and Toggles.AutoOGLuckyBlocks.Value and not ml_4 and not mk_3 and os.clock() < mm_2
            if mn then
                mk_3 = mj_5()
                ml_4 = iW > mi_9
                if not mk_3 then
                    task.wait()
                end
                continue
            end
            break
        end
        local mi_10 = not mk_3
        local mm_3 = not ml_4
        if mm_3 ~= false then
            mm_3 = mi_10
        end
        if mm_3 then
            iM("Pickup not confirmed; retrying")
            return
        end
        if not i5(iT()) then
            iM("Base teleport unavailable")
            return
        end
        local mi_11 = iQ()
        if not mi_11 then
            iM("Base full; captured block kept in carry")
            task.wait(0.05)
            return
        end
        if not mk_3 then
            iM("At base; syncing captured block")
            local ml_5 = os.clock() + 0.65
            while true do
                local mm_4 = iK and Toggles.AutoOGLuckyBlocks.Value and not mk_3 and os.clock() < ml_5
                if mm_4 then
                    mk_3 = mj_5()
                    if not mk_3 then
                        task.wait()
                    end
                    continue
                end
                break
            end
        end
        if not mk_3 then
            iM("Captured at base; waiting for inventory")
            return
        end
        ih[mk_3] = true
        task.wait(0.05)
        iI(mi_11, mk_3)
    end)
    if not mE_1 then
        warn("[OuroborosHub] OG Lucky Block farm failed:", mF_1)
        iM("Error: " .. tostring(mF_1))
    end
    iB = false
end
i7 = function()
    local mK = ik()
    local mL = iu()
    local mM = mL and mL:FindFirstChild("Stands")
    if not mK or not mM then
        return
    end
    for i, child in ipairs(mK:GetChildren()) do
        if child:IsA("Model") then
            local mK_1 = tostring(child.Name)
            local mM_2 = mM:FindFirstChild(mK_1)
            local mN_1 = mM_2 and mM_2:FindFirstChild("Upgrade")
            if mN_1 then
                Collect_Earnings:FireServer(mK_1)
            end
        end
    end
end
i6 = function(en)
    local m0 = iu()
    local m1 = m0 and m0:FindFirstChild("Stands")
    local m0_1 = m1
    if m1 then
        m1 = m0_1:FindFirstChild(tostring(en))
    end
    local m0_2 = m1
    if m1 then
        m1 = m0_2:FindFirstChild("Upgrade")
    end
    local m0_3 = m1
    if m1 then
        m1 = m0_3:FindFirstChild("SurfaceGui")
    end
    local m0_4 = m1
    if m1 then
        m1 = m0_4:FindFirstChild("Frame")
    end
    local m0_5 = m1
    if m1 then
        m1 = m0_5:FindFirstChild("Button")
    end
    local m0_6 = m1
    if m1 then
        m1 = m0_6:FindFirstChild("Price")
    end
    local m0_7 = m1
    if m1 then
        m1 = ij(m0_7.Text)
    end
    return m1 or nil
end
iY = function()
    local Value = Options.FootballerTarget.Value
    if type(Value) ~= "table" then
        return
    end
    local m4 = i3()
    for k, v in pairs(Value) do
        local m5 = v and iO[k] or nil
        local m3_2 = m5
        if m5 then
            m5 = i6(m3_2)
        end
        local m6 = m5 or nil
        if m3_2 and m6 and m4 >= m6 then
            Upgrade_Slime:FireServer(m3_2)
            return
        end
    end
end
iD = function(eQ)
    local PlayerGui = iV:FindFirstChild("PlayerGui")
    local ng = PlayerGui and PlayerGui:FindFirstChild("JumpUpgrade")
    local nf_1 = ng
    if ng then
        ng = nf_1:FindFirstChild("Main")
    end
    local nf_2 = ng
    if ng then
        ng = nf_2:FindFirstChild("Container")
    end
    local nf_3 = ng
    if ng then
        ng = nf_3:FindFirstChild(tostring(eQ))
    end
    local nf_4 = ng
    if ng then
        ng = nf_4:FindFirstChild("Cash")
    end
    local nf_5 = ng
    if ng then
        ng = nf_5:FindFirstChild("TextLabel")
    end
    local nf_6 = ng
    if ng then
        ng = ij(nf_6.Text)
    end
    return ng or nil
end
iL = function()
    local ns
    local nl = i3()
    local nr = 3
    local nq = -1
    while true do
        if false and nr <= 1 or true and nr >= 1 then
            ns = nr
            local nm = iD(ns)
            if nm and nl >= nm then
                break
            end
            nr += nq
            continue
        end
        return
    end
    Buy_Speed_Upgrade:FireServer(ns)
    return
end
ix = function()
    local nu = iu()
    local nv = nu and nu:FindFirstChild("MainBase")
    if not nv then
        return
    end
    local nv_1 = {}
    for i, descendant in ipairs(nv:GetDescendants()) do
        local nu_2 = tonumber(descendant.Name:match("^PurchaseFloor(%d+)$"))
        if nu_2 then
            local Pad = descendant:FindFirstChild("Pad")
            local nx = Pad and Pad:FindFirstChild("Top")
            local nw_1 = nx
            if nx then
                nx = nw_1:FindFirstChild("TouchInterest")
            end
            local ny = nw_1
            local nz = nx
            if ny then
                ny = nw_1:FindFirstChild("BillboardGui")
            end
            local nw_2 = ny
            local nx_1 = nw_2 and nw_2:FindFirstChild("Frame")
            local nw_3 = nx_1
            if nx_1 then
                nx_1 = nw_3:FindFirstChild("Price")
            end
            local nw_4 = nx_1
            if nx_1 then
                nx_1 = ij(nw_4.Text)
            end
            local nw_5 = nx_1
            if nz and nw_5 then
                nv_1[#nv_1 + 1] = { Floor = nu_2, Price = nw_5 }
            end
        end
    end
    table.sort(nv_1, function(fx, fy)
        return fx.Floor < fy.Floor
    end)
    local nu_3 = nv_1[1]
    local nv_2 = nu_3 and i3() >= nu_3.Price
    if nv_2 then
        local nv_3 = 1 + (nu_3.Floor - 2) * 10
        Purchase_Floor:InvokeServer(nv_3)
    end
end
iH = function()
    local nK = iu()
    local nL = nK and nK:FindFirstChild("CollectPads")
    if not nL then
        return
    end
    local nL_1 = {}
    for i, child in ipairs(nL:GetChildren()) do
        local nK_2 = tonumber(child.Name)
        local Top = child:FindFirstChild("Top")
        local nN = Top and Top:FindFirstChild("TouchInterest")
        local nO = Top
        if nO then
            nO = Top:FindFirstChild("PurchaseInfo")
        end
        local nM_1 = nO
        local nN_1 = nM_1 and nM_1:FindFirstChild("Frame")
        local nO_1 = nN_1
        if nN_1 then
            nN_1 = nO_1:FindFirstChild("New")
        end
        local nQ = nO_1
        local nR = nN_1
        if nQ then
            nQ = nO_1:FindFirstChild("Price")
        end
        local nN_2 = nQ
        local nO_2 = nN_2 and ij(nN_2.Text)
        local nO_3 = nM_1 ~= nil
        local nQ_1 = nM_1
        if nQ_1 then
            local nS = nM_1:IsA("BillboardGui") or nM_1:IsA("SurfaceGui")
            nQ_1 = nS
        end
        if nQ_1 then
            nO_3 = nM_1.Enabled
        end
        if nK_2 and nK_2 > 10 and nN and nO_3 and nR and nO_2 then
            nL_1[#nL_1 + 1] = { Cell = nK_2, Price = nO_2 }
        end
    end
    table.sort(nL_1, function(f4, f5)
        return f4.Cell < f5.Cell
    end)
    local nK_3 = nL_1[1]
    local nL_2 = nK_3 and i3() >= nK_3.Price
    if nL_2 then
        Purchase_Floor:InvokeServer(nK_3.Cell - 10)
    end
end
im = function()
    local PlayerGui = iV:FindFirstChild("PlayerGui")
    local n3 = PlayerGui and PlayerGui:FindFirstChild("CarryUpgrades")
    local n2_1 = n3
    if n3 then
        n3 = n2_1:FindFirstChild("Main")
    end
    local n2_2 = n3
    if n3 then
        n3 = n2_2:FindFirstChild("Content")
    end
    local n2_3 = n3
    if n3 then
        n3 = n2_3:FindFirstChild("Cash")
    end
    local n2_4 = n3
    if n3 then
        n3 = n2_4:FindFirstChild("TextLabel")
    end
    local n4 = n2_4
    local n5 = n3
    if n4 then
        n4 = n2_4.Visible
    end
    if n4 and n5 then
        return ij(n5.Text)
    end
    return nil
end
iU = function()
    local od = im()
    local oe = od and i3() >= od
    if oe then
        Upgrade_Carry_Limit:FireServer()
    end
end
iX = {
    Lucky = 0,
    Collect = 0,
    Footballer = 0,
    Jump = 0,
    Floor = 0,
    Pad = 0,
    Carry = 0,
    Rebirth = 0,
    Dropdown = 0
}
iN = function(gx, gy, gz, gA)
    local og = os.clock()
    local og_1
    local oh = gz and og - iX[gx] >= gy
    local oh_1
    if oh then
        iX[gx] = og
        og_1, oh_1 = pcall(gA)
        if not og_1 then
            warn(string.format("[OuroborosHub] %s failed: %s", gx, tostring(oh_1)))
        end
    end
end
task.spawn(function()
    while iK and not i2.Unloaded do
        iN("Lucky", 0.15, Toggles.AutoOGLuckyBlocks.Value, function()
            task.spawn(autoOGLuckyBlocksLoop)
        end)
        iN("Collect", 0.75, Toggles.AutoCollect.Value, i7)
        iN("Footballer", 0.3, Toggles.AutoUpgradeFootballer.Value, iY)
        iN("Jump", 0.4, Toggles.AutoUpgradeJump.Value, iL)
        iN("Floor", 0.8, Toggles.AutoUpgradeBase.Value, ix)
        iN("Pad", 0.65, Toggles.AutoBuyPads.Value, iH)
        iN("Carry", 0.65, Toggles.AutoBuyCarry.Value, iU)
        iN("Rebirth", 1, Toggles.AutoRebirth.Value, function()
            Rebirth:FireServer()
        end)
        iN("Dropdown", 1.5, true, function()
            local ok_1
            local oj_1
            ok_1, oj_1 = iE()
            local ol = table.concat(ok_1, "\x00")
            local om = table.concat(Options.FootballerTarget.Values, "\x00")
            iO = oj_1
            if ol ~= om then
                Options.FootballerTarget:SetValues(ok_1)
            end
        end)
        task.wait(0.1)
    end
end)
ig = nil
ig = function()
    if not i2.Unloaded then
        i2:Unload()
    end
end
iv.OuroborosHubUnload = ig
i2:OnUnload(function()
    iK = false
    if connection.Connected then
        connection:Disconnect()
    end
    if iv.OuroborosHubUnload == ig then
        iv.OuroborosHubUnload = nil
    end
    print("[OuroborosHub] Unloaded")
end)
