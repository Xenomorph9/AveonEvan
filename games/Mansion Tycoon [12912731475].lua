local iu
local jb
local iT
local iA
local Label
local iZ
local iG
local im
local connection
local iM
local it
local ja
local VirtualUser
local iz
local Generation
local iY
local TycoonService
local connection3
local iL
local is
local i9
local iR
local CurrentCamera
local id
local iX
local iE
local OuroborosMansionTycoon
local i2
local iK
local connection4
local i8
local iQ
local ix
local ic
local UserInputService
local connection2
local ij
local i1
local iJ
local iq
local i7
local iP
local iw
local Options
local iV
local iC
local Toggles
local i0
local LocalPlayer
local ip
local i6
local iO
local iv
local ia
local PlayerDataController
local iB
local ih
local i_
local iH
local SaveManager
local ReplicatedStorage
local HttpService
local function onUnload()
    iw:Unload()
end
local function fn114(Z, aa, ab)
    return string.format("<b>%s</b> %s %s", Z, iM("-", "#5a6070"), iM(aa, ab))
end
local function worker()
    local j8_1
    while true do
        task.wait(1)
        if iw.Unloaded then
            break
        end
        local j7 = math.floor(os.clock() - iH)
        if j7 < 60 then
            j8_1 = j7 .. "s"
        elseif j7 < 3600 then
            j8_1 = string.format("%dm %ds", j7 // 60, j7 % 60)
        else
            j8_1 = string.format("%dh %dm", j7 // 3600, j7 % 3600 // 60)
        end
        Label:SetText(ix("Session time", j8_1, iX))
    end
end
local function fn135()
    if Toggles.AutoCollect.Value then
        iK()
    end
end
local function fn140()
    local jZ_1
    local jY_1
    if identifyexecutor then
        jZ_1, jY_1 = identifyexecutor()
        local j_ = jZ_1 ~= ""
        local j0 = type(jZ_1) == "string" and j_
        if j0 then
            local j__1 = type(jY_1) == "string" and jY_1 ~= "" and jZ_1 .. " " .. jY_1
            iR = j__1 or jZ_1
        end
    end
end
local function fn151()
    PlayerDataController = require(ReplicatedStorage.ClientModules.Controllers.PlayerDataController)
end
local function onCopyJoinScript_JobID()
    local j5 = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, jb)
    if setclipboard then
        setclipboard(j5)
    elseif toclipboard then
        toclipboard(j5)
    end
    iw:Notify("Copied join script to clipboard")
end
local function fn185(bJ)
    local Buttons = bJ:FindFirstChild("Buttons")
    if not Buttons then
        return {}
    end
    local kI = {}
    for i, child in Buttons:GetChildren() do
        local attr = child:GetAttribute("Price")
        local kJ = type(attr) == "number" and child:GetAttribute("Purchasable") ~= false
        if kJ then
            local Touch = child:FindFirstChild("Touch")
            local kK = Touch and Touch:IsA("BasePart") and Touch.CanTouch
            if kK then
                table.insert(kI, { Name = child.Name, Price = attr, Touch = Touch })
            end
        end
    end
    table.sort(kI, function(bS, bT)
        return bS.Price > bT.Price
    end)
    return kI
end
local function fn210()
    local nq = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local nr = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if nr then
                local nr_1 = is(k, v)
                if nr_1 then
                    nq[#nq + 1] = nr_1
                end
            end
        end
    end
    table.sort(nq, function(fk, fl)
        if fk.type ~= fl.type then
            return fk.type < fl.type
        end
        return fk.idx < fl.idx
    end)
    return { objects = nq }
end
local function fn224()
    local ly = iJ()
    if not ly then
        return false
    end
    local lz = {}
    for k, v in Options.MansionTargets:GetActiveValues() do
        lz[v] = true
    end
    local lA = iT()
    local lB = 1 + Options.MansionBuffer.Value / 100
    for i, v in ipairs(ic) do
        local lC = not ly[v.name]
        if lC ~= false then
            lC = ly[v.prev]
        end
        if lC then
            lC = lz[v.display]
        end
        if lC then
            if i0(v.prev) >= 0.999 then
                if lA >= v.cost * lB then
                    TycoonService.PurchaseTycoon:FireServer(v.name)
                    task.wait(1)
                    return true
                end
            end
        end
    end
    return false
end
local function fn247()
    pcall(function()
        iw:Unload()
    end)
end
local function onCopyEthereumAddress()
    i8(it, "Copied Ethereum address")
end
local function fn270()
    local Character = LocalPlayer.Character
    local mb = Character and Character:FindFirstChild("HumanoidRootPart")
    return mb
end
local function fn279()
    return OuroborosMansionTycoon.Generation == Generation
end
local function onCopyUSDTAddress()
    i8(im, "Copied USDT address")
end
local function fn292()
    return Options.MansionInterval.Value
end
local function fn294(e_, e0)
    local nd_1 = (e_ == "Toggle" and Toggles or Options)[e0]
    local nc_2 = type(nd_1) == "table" and nd_1.Type == e_
    return nc_2 and nd_1 or nil
end
local function fn328()
    local Character = LocalPlayer.Character
    local l8 = Character and Character:FindFirstChildOfClass("Humanoid")
    return l8
end
local function fn332()
    if not Toggles.Fly.Value then
        local mI = ip()
        if mI then
            mI.PlatformStand = false
        end
    end
end
local function fn342()
    return Options.BuyInterval.Value
end
local function fn354()
    local kW_1
    local kV_1
    if not PlayerDataController then
        return nil
    end
    kV_1, kW_1 = pcall(function()
        return PlayerDataController:GetIndex({ "OwnedTycoons" })
    end)
    local kX = kV_1 and type(kW_1) == "table"
    if kX then
        local kV_2 = {}
        for k, v in kW_1 do
            kV_2[v] = true
        end
        return kV_2
    end
    return nil
end
local function fn363()
    local lQ = iJ()
    if not lQ then
        return false
    elseif tick() - i1 < i9 then
        return false
    else
        local lR
        for i, v in ipairs(ic) do
            if lQ[v.name] then
                lR = v
            end
        end
        if not lR then
            return false
        end
        local lQ_1 = iZ()
        if lR.name == lQ_1 then
            return false
        end
        TycoonService.SwitchMansion:FireServer(lR.name)
        i1 = tick()
        return true
    end
end
local function antiAfkLoop()
    while not iw.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local m5 = tick() - iG
            local m6 = tick() - iC
            if m5 >= 300 and m6 >= 60 then
                pcall(id)
            else
                if m5 < 300 and m6 >= 300 then
                    pcall(id)
                end
            end
        end
    end
end
local function onRenderStepped(dZ)
    if iw.Unloaded or not Toggles or not Options then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local mB_3 = ip()
        if mB_3 then
            mB_3.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local mB_5 = i2()
        local mC_1 = ip()
        if mB_5 and mC_1 then
            mC_1.PlatformStand = true
            local mC_2 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                mC_2 = mC_2 + CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                mC_2 = mC_2 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                mC_2 = mC_2 - CurrentCamera.CFrame.RightVector
            end
            local mH = if UserInputService:IsKeyDown(Enum.KeyCode.D) then 1 else 0
            if mH == 1 then
                mC_2 = mC_2 + CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                mC_2 = mC_2 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                mC_2 = mC_2 - Vector3.new(0, 1, 0)
            end
            mB_5.Velocity = Vector3.zero
            if mC_2.Magnitude > 0 then
                mB_5.CFrame = mB_5.CFrame + mC_2.Unit * Options.FlySpeed.Value * dZ
            end
        end
    end
end
local function fn415()
    return Options.CollectInterval.Value
end
local function fn416()
    local kf_1, kf_5
    local ke_1, leaderstats, ke_5
    if PlayerDataController then
        ke_1, kf_1 = pcall(function()
            return PlayerDataController:GetIndex({ "Money" })
        end)
        local kg = ke_1 and type(kf_1) == "number" and kf_1 >= 0
        if kg then
            return kf_1
        end
        local leaderstats2 = LocalPlayer:FindFirstChild("leaderstats")
        if leaderstats then
            local kf_2 = leaderstats2:FindFirstChild("Money") or leaderstats2:FindFirstChild("Cash")
            if ke_5 then
                local kf_3 = tonumber(kf_2.Value)
                if kf_5 then
                    return kf_3
                end
                return 0
            end
            return 0
        end
        return 0
    end
    leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    if leaderstats then
        local kf_4 = leaderstats:FindFirstChild("Money") or leaderstats:FindFirstChild("Cash")
        ke_5 = kf_4
        if ke_5 then
            kf_5 = tonumber(ke_5.Value)
            if kf_5 then
                return kf_5
            end
            return 0
        end
        return 0
    end
    return 0
end
local function fn420()
    if Toggles.AutoSwitch.Value then
        iv()
    end
end
local function fn424()
    if Toggles.AutoMansion.Value then
        iL()
    end
end
local function fn464()
    return Options.SwitchInterval.Value
end
local function fn473()
    iP(Toggles.AntiGameplayPause.Value)
end
local function fn475()
    local k6_1
    local k5_1
    local k4
    if PlayerDataController then
        k5_1, k6_1 = pcall(function()
            return PlayerDataController:GetIndex({ "CurrentTycoonTypeByPlot" })
        end)
        local k7 = k5_1 and type(k6_1) == "table"
        if k7 then
            k4 = k6_1.Plot1
        end
    end
    if not k4 then
        local k5_2 = iq()
        if k5_2 then
            k4 = k5_2.Name
        end
    end
    return k4
end
local function fn493(Q)
    local DiscordGroup = Q:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = iO })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = iO })
end
local function fn499()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    iC = tick()
end
local function fn504()
    local lo = iq()
    if not lo then
        return false
    end
    local lp = iE(lo)
    if #lp == 0 then
        return false
    end
    local lo_1 = 1 + Options.BuyBuffer.Value / 100
    local lq = false
    for i, v in ipairs(lp) do
        local lp_1 = not ja() or iw.Unloaded
        if lp_1 then
            break
        elseif iT() >= v.Price * lo_1 then
            ij(v.Touch)
            task.wait(0.55)
            lq = true
        end
    end
    return lq
end
local function fn533()
    if not Toggles.WalkSpeedEnabled.Value then
        local mK = ip()
        if mK then
            mK.WalkSpeed = 16
        end
    end
end
local function onCopyLitecoinAddress()
    i8(iB, "Copied Litecoin address")
end
local function onCopyPayPalLink()
    i8(ia, "Copied PayPal link")
end
local function fn567(cc)
    local Character = LocalPlayer.Character
    if not Character then
        return false
    end
    local Humanoid = Character:FindFirstChild("Humanoid")
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    if not Humanoid or not HumanoidRootPart then
        return false
    end
    Humanoid.PlatformStand = true
    HumanoidRootPart.AssemblyLinearVelocity = Vector3.zero
    Character:PivotTo(cc.CFrame * CFrame.new(0, iY, 0))
    task.wait(0.25)
    HumanoidRootPart.AssemblyLinearVelocity = Vector3.zero
    Humanoid.PlatformStand = false
    return true
end
local function fn581()
    iP(false)
end
local function fn597(e7, e8)
    local Type = e8.Type
    if Type == "Toggle" then
        return { idx = e7, type = "Toggle", value = e8.Value == true }
    elseif Type == "Slider" then
        return { idx = e7, type = "Slider", value = tostring(e8.Value) }
    elseif Type == "Dropdown" then
        return { idx = e7, type = "Dropdown", multi = e8.Multi == true, value = e8.Value }
    elseif Type == "Input" then
        local nh = e8.Value or ""
        return { idx = e7, type = "Input", text = tostring(nh) }
    elseif Type == "ColorPicker" then
        return { idx = e7, type = "ColorPicker", value = e8.Value:ToHex(), transparency = e8.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = e7,
            type = "KeyPicker",
            mode = e8.Mode,
            key = e8.Value,
            modifiers = e8.Modifiers,
            toggled = e8.Toggled
        }
    else
        return nil
    end
end
local function fn609(W, X)
    return string.format('<font color="%s">%s</font>', X, W)
end
local function onJumpRequest()
    if iw.Unloaded or not Toggles then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local mv_2 = ip()
        if mv_2 then
            mv_2:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function onRscripts()
    if setclipboard then
        setclipboard(iu)
    elseif toclipboard then
        toclipboard(iu)
    end
    iw:Notify("Copied Rscripts profile to clipboard")
end
local function antiGameplayPauseLoop()
    while not iw.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            iP(true)
        end
    end
end
local function fn639()
    if Toggles.AutoBuy.Value then
        iV()
    end
end
local function onCopySolanaAddress()
    i8(ih, "Copied Solana address")
end
local function fn672(F, G)
    if setclipboard then
        setclipboard(F)
    elseif toclipboard then
        toclipboard(F)
    end
    iw:Notify(G)
end
local function fn680()
    iQ:Disconnect()
    connection4:Disconnect()
    connection:Disconnect()
    connection2:Disconnect()
    connection3:Disconnect()
end
local function onCopyVenmoLink()
    i8(i7, "Copied Venmo link")
end
local function onInputChanged(eE)
    local UserInputType = eE.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        iG = tick()
    end
end
local function onExportConfigToClipboard()
    local nU_1
    local nT_1
    nT_1, nU_1 = pcall(HttpService.JSONEncode, HttpService, i6())
    if not nT_1 then
        iw:Notify("Failed to encode the config")
        return
    end
    local nT_2 = setclipboard or toclipboard
    local nT_3 = type(nT_2) ~= "function" or not pcall(nT_2, nU_1)
    if nT_3 then
        iw:Notify("Your executor does not support copying to the clipboard")
        return
    end
    iw:Notify("Config copied to clipboard", 6)
end
local function onImportConfigFromClipboardTex()
    local nZ_1
    local nX = Options.SaveManager_ImportSource.Value or ""
    local nX_1
    local nY = tostring(nX):match("^%s*(.-)%s*$")
    if nY == "" then
        iw:Notify("Paste an exported config into the box first")
        return
    end
    nX_1, nZ_1 = pcall(HttpService.JSONDecode, HttpService, nY)
    local nY_1 = not nX_1
    local n2 = if nY_1 then 1 else 0
    local n0 = 3051 * n2 + 256 * (1 - n2)
    local n1 = 1277 * n2 + 219 * (1 - n2)
    if not ((n0 * 4084 + n1 * 4060 + n0 * n1) % 16777213 == 4763818) then
        nY_1 = type(nZ_1) ~= "table"
    end
    if not nY_1 then
        nY_1 = type(nZ_1.objects) ~= "table"
    end
    if nY_1 then
        iw:Notify("That is not a valid exported config")
        return
    end
    local nX_2 = 0
    for i, v in ipairs(nZ_1.objects) do
        if i_(v) then
            nX_2 += 1
        end
    end
    if nX_2 == 0 then
        iw:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local nZ_2 = nX_2 == 1 and "" or "s"
    iw:Notify(("Imported %d setting%s"):format(nX_2, nZ_2), 6)
end
local function fn748()
    local lf = iq()
    if not lf then
        return false
    end
    local Collectors = lf:FindFirstChild("Collectors")
    if not Collectors then
        return false
    end
    for i, child in Collectors:GetChildren() do
        local lf_1 = child.PrimaryPart or child:FindFirstChild("Touch")
        local lg_1 = lf_1
        if lf_1 then
            lf_1 = lg_1:IsA("BasePart")
        end
        if lf_1 then
            lf_1 = lg_1.CanTouch
        end
        if lf_1 then
            ij(lg_1)
            task.wait(0.55)
            return true
        end
    end
    return false
end
local function fn752()
    for i, child in workspace.Tycoons:GetChildren() do
        for i, child in child:GetChildren() do
            for i, child in child:GetChildren() do
                local km = child:IsA("Model") and child:GetAttribute("OwnerId") == LocalPlayer.UserId
                if km then
                    return child
                end
            end
        end
    end
    return nil
end
local function onInputBegan()
    iG = tick()
end
local function onStepped()
    if iw.Unloaded or not Toggles then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local mg_3 = descendant:IsA("BasePart") and descendant.CanCollide
                if mg_3 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function onCopyBitcoinAddress()
    i8(iA, "Copied Bitcoin address")
end
local function fn800()
    i8(iz, "Copied Discord invite to clipboard")
end
ia = nil
Options = nil
ic = nil
id = nil
Generation = nil
Label = nil
ih = nil
Toggles = nil
ij = nil
OuroborosMansionTycoon = nil
connection3 = nil
im = nil
SaveManager = nil
ip = nil
iq = nil
connection4 = nil
is = nil
it = nil
iu = nil
iv = nil
iw = nil
ix = nil
CurrentCamera = nil
iz = nil
iA = nil
iB = nil
iC = nil
connection2 = nil
iE = nil
TycoonService = nil
iG = nil
iH = nil
LocalPlayer = nil
iJ = nil
iK = nil
iL = nil
iM = nil
HttpService = nil
iO = nil
iP = nil
iQ = nil
iR = nil
VirtualUser = nil
iT = nil
PlayerDataController = nil
iV = nil
UserInputService = nil
iX = nil
iY = nil
iZ = nil
i_ = nil
i0 = nil
i1 = nil
i2 = nil
connection = nil
ReplicatedStorage = nil
i6 = nil
i7 = nil
i8 = nil
i9 = nil
ja = nil
jb = nil
local i3, jk
local jm_1
local ji_1
ReplicatedStorage, UserInputService, VirtualUser, HttpService, LocalPlayer, iz, iu = nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local jc_4
ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
LocalPlayer = Players.LocalPlayer
local jf = "Mansion Tycoon"
iz = "https://discord.gg/ehKVq7pf7v"
iu = "https://rscripts.net/@Ouroboros"
local je = getgenv()
local jc_1 = {}
local jd = je.OuroborosMansionTycoon
local jQ = if jd then 1 else 0
local jO = 2838 * jQ + 1745 * (1 - jQ)
local jP = 1814 * jQ + 2175 * (1 - jQ)
if not ((jO * 681 + jP * 3299 + jO * jP) % 16777213 == 13065196) then
    jd = jc_1
end
OuroborosMansionTycoon = nil
local jh = 6
repeat
    local jc_2 = {
        "psczdjmoej",
        "rqb",
        "xlgh",
        "itpi",
        "cflf",
        "rxda",
        "uminr",
        "zeuv",
        "jilwsvjl",
        "rfcmfmyxbrf",
        "xuccriadp"
    }
    if jc_2[(jh * 47 + 49) % 11 + 1] < jc_2[(jh * 47 + 49) % 11 + 1] then
        je.OuroborosMansionTycoon = OuroborosMansionTycoon
        je = jd.OuroborosMansionTycoon
    else
        je.OuroborosMansionTycoon = jd
        OuroborosMansionTycoon = je.OuroborosMansionTycoon
    end
    jh = (jh + 0) % 8
until (jh * 3 + 2) % 8 == 4
if type(OuroborosMansionTycoon.Unload) == "function" then
    pcall(OuroborosMansionTycoon.Unload)
end
local jc_3 = OuroborosMansionTycoon.Generation
jQ = if jc_3 then 1 else 0
jO = 1127 * jQ + 3327 * (1 - jQ)
jP = 1197 * jQ + 1045 * (1 - jQ)
if not ((jO * 2279 + jP * 651 + jO * jP) % 16777213 == 4696699) then
    jc_3 = 0
end
Generation, PlayerDataController, TycoonService, iw, SaveManager, Toggles, Options, ja, i8, iO, ji_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
OuroborosMansionTycoon.Generation = jc_3 + 1
Generation = OuroborosMansionTycoon.Generation
ja = fn279
pcall(fn151)
setthreadidentity(8)
TycoonService = ReplicatedStorage.__remotes.TycoonService
local je_1 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
iw = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
if (iw and (PlayerDataController and PlayerDataController) or false) and ((PlayerDataController or false) and (not PlayerDataController and not iw) or (ji_1 or false or (not iw or not iw))) and ((PlayerDataController and iw or (PlayerDataController or je_1) or (not ji_1 or not PlayerDataController) and (false and not iw)) and (not ji_1 and ji_1 and (not iw and iw) or 54)) and not ((iw and (PlayerDataController and PlayerDataController) or false) and ((PlayerDataController or false) and (not PlayerDataController and not iw) or (ji_1 or false or (not iw or not iw))) and ((PlayerDataController and iw or (PlayerDataController or je_1) or (not ji_1 or not PlayerDataController) and (false and not iw)) and (not ji_1 and ji_1 and (not iw and iw) or 54))) then
    iw = loadstring(game:HttpGet(Toggles .. "addons/ThemeManager.lua"))()
    jk = loadstring(game:HttpGet(Toggles .. "addons/SaveManager.lua"))()
    SaveManager = nil
else
    jk = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = iw.Toggles
end
Options = iw.Options
i8 = fn672
iO = fn800
local Window = iw:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = iz, Copyable = true }, "|", jf },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
OuroborosMansionTycoon.Unload = fn247
local jj = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gavel"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
jj.Collect = jj.Main:AddSubTab("Collect", "coins")
jj.Buy = jj.Main:AddSubTab("Buy Buttons", "shopping-cart")
jj.Progression = jj.Main:AddSubTab("Progression", "crown")
for k, v in jj do
    if v ~= jj.Main then
        fn493(v)
    end
end
jm_1, iX, iR, jc_4, Label, jb, iM, ix = nil, nil, nil, nil, nil, nil, nil, nil
iM = fn609
if ((not Label or 9 or false) and (false and Label or (not Label or 9)) and 9 or ("#6ec1ff" and (Label and jm_1 and false) or jm_1 and not Label and (not jc_4 and false) and (Label or jm_1))) and not ((not Label or 9 or false) and (false and Label or (not Label or 9)) and 9 or ("#6ec1ff" and (Label and jm_1 and false) or jm_1 and not Label and (not jc_4 and false) and (Label or jm_1))) then
    iR = fn114
else
    ix = fn114
end
local jn = "#7fd47f"
local jm_2 = "#6ec1ff"
iX = "#e8a34d"
local jl = "#8b93a3"
iR = "Unknown"
pcall(fn140)
local AccountGroup = jj.Info:AddLeftGroupbox("Account", "circle-user")
AccountGroup:AddLabel(ix("User", LocalPlayer.Name, jn), true)
AccountGroup:AddLabel(ix("Status", "Keyless", jn), true)
AccountGroup:AddLabel(ix("Executor", iR, jn), true)
jh = jj.Info:AddLeftGroupbox("Game Info", "gamepad-2")
jh:AddLabel(iM(jf .. " [" .. tostring(game.PlaceId) .. "]", jm_2), true)
jh:AddLabel(ix("Place ID", tostring(game.PlaceId), jm_2), true)
Label = jh:AddLabel(ix("Session time", "0s", iX), true)
jb = tostring(game.JobId)
local je_2 = #jb > 18
if je_2 then
    local jc_6 = 2
    repeat
        local o0 = bit32.rrotate(bit32.bxor(bit32.lrotate(jc_6, 7), string.byte(tostring(jc_6))), 5)
        if bit32.bxor(bit32.lrotate(bit32.bxor(o0, 281176382), 4), 203854817) ~= bit32.lrotate(o0, 4) then
            jb = string.sub(je_2, 1, 18) .. "..."
        else
            je_2 = string.sub(jb, 1, 18) .. "..."
        end
        jc_6 = (jc_6 + 3) % 4
    until (jc_6 * 1 + 0) % 4 == 1
end
local jc_7 = je_2 or jb
iH, iB, iA, it, im, ih, ia, i7, ic, i9, i1, iY, connection, connection2, CurrentCamera, connection3, iG, iC, iQ, connection4, iT, i0, iq, iE, iJ, iZ, ij, iK, iV, iL, iv, ip, i2, iP, id, i3, is, i6, i_ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
jh:AddLabel(ix("Server", jc_7, jl), true)
jh:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
iH = os.clock()
task.spawn(worker)
local ScriptsGroup = jj.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(iM("Included in this hub", jl), true)
ScriptsGroup:AddLabel(iM(jf, jm_2), true)
local FeaturesGroup = jj.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(iM("Auto Collect Income", jm_2), true)
FeaturesGroup:AddLabel(iM("Auto Buy Buttons", iX), true)
FeaturesGroup:AddLabel(iM("Mansion Progression", jn), true)
local SocialsGroup = jj.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = iO })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = jj.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = iO })
iB = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
iA = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
it = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
im = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
ih = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
ia = "https://paypal.me/TheTruckerGOD"
i7 = "https://venmo.com/u/miserablemusic"
local jE = "#345d9d"
local jB = "#f7931a"
local jz = "#627eea"
local jy = "#26a17b"
local jv = "#14f195"
local DonationsGroup = jj.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(iM("All donations are optional but appreciated.", iX), true)
DonationsGroup:AddLabel(iM("If you donate you get a special role, just PING after you donate.", jn), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(iM("LTC / Litecoin", jE), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(iM("BTC / Bitcoin", jB), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
DonationsGroup:AddLabel(iM("ETH / Ethereum", jz), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(iM("USDT", jy), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
DonationsGroup:AddLabel(iM("Solana", jv), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
DonationsGroup:AddLabel(iM("PayPal", "#0070ba"), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(iM("Venmo", "#008cff"), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(iM("Don't have any of the listed currencies but still wanna donate?", jl), true)
DonationsGroup:AddLabel(iM("DM me and we'll work something out.", jm_2), true)
local FaqGroup = jj.Info:AddRightGroupbox("FAQ", "circle-help")
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
ic = {
    { name = "Mansion2", display = "Mansion 2", cost = 1000000, prev = "Mansion" },
    { name = "BeachMansion", display = "Beach Mansion", cost = 2500000, prev = "Mansion2" },
    { name = "Mansion3", display = "Mansion 3", cost = 5000000, prev = "Mansion2" },
    { name = "YachtMansion", display = "Yacht Mansion", cost = 8000000, prev = "Mansion3" },
    { name = "Mansion4", display = "Mansion 4", cost = 10000000, prev = "Mansion3" },
    { name = "Penthouse", display = "Penthouse", cost = 20000000, prev = "Mansion4" }
}
i9 = 35
i1 = 0
iY = 1.4
iT = fn416
i0 = function(bs)
    local kj_1
    local ki_1
    ki_1, kj_1 = pcall(function()
        return TycoonService.GetTycoonProgress:InvokeServer(bs)
    end)
    local kk = ki_1 and type(kj_1) == "number"
    if kk then
        return kj_1
    end
    return 0
end
iq = fn752
iE = fn185
iJ = fn354
iZ = fn475
ij = fn567
iK = fn748
iV = fn504
iL = fn224
iv = fn363
local function jq(c9, da)
    task.spawn(function()
        while true do
            local lZ = ja() and not iw.Unloaded
            if lZ then
                pcall(c9)
                task.wait(da())
                continue
            end
            break
        end
    end)
end
local IncomeGroup = jj.Collect:AddRightGroupbox("Income", "banknote")
IncomeGroup:AddToggle("AutoCollect", { Text = "Auto Collect Income", Default = false })
IncomeGroup:AddSlider("CollectInterval", { Text = "Collect Interval", Default = 2, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
jq(fn135, fn415)
local PurchasesGroup = jj.Buy:AddRightGroupbox("Purchases", "shopping-cart")
PurchasesGroup:AddToggle("AutoBuy", { Text = "Auto Buy All Buttons", Default = false })
PurchasesGroup:AddSlider("BuyInterval", { Text = "Buy Interval", Default = 1.5, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
PurchasesGroup:AddSlider("BuyBuffer", { Text = "Price Buffer", Default = 10, Min = 5, Max = 15, Rounding = 0, Suffix = "%" })
jq(fn639, fn342)
local MansionProgressionGroup = jj.Progression:AddRightGroupbox("Mansion Progression", "crown")
MansionProgressionGroup:AddToggle("AutoMansion", { Text = "Auto Buy Next Mansion", Default = false })
MansionProgressionGroup:AddSlider("MansionInterval", { Text = "Buy Check Interval", Default = 3, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
MansionProgressionGroup:AddSlider("MansionBuffer", { Text = "Purchase Buffer", Default = 10, Min = 5, Max = 15, Rounding = 0, Suffix = "%" })
MansionProgressionGroup:AddToggle("AutoSwitch", { Text = "Auto Switch Mansion", Default = false })
MansionProgressionGroup:AddSlider("SwitchInterval", { Text = "Switch Check Interval", Default = 5, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
MansionProgressionGroup:AddDropdown("MansionTargets", {
    Values = { "Mansion 2", "Beach Mansion", "Mansion 3", "Yacht Mansion", "Mansion 4", "Penthouse" },
    Multi = true,
    Default = {
        ["Mansion 2"] = true,
        ["Beach Mansion"] = true,
        ["Mansion 3"] = true,
        ["Yacht Mansion"] = true,
        ["Mansion 4"] = true,
        Penthouse = true
    },
    SelectAllButtons = true,
    Searchable = true,
    Expandable = true,
    ExpandColumns = 3,
    Text = "Mansions to Buy"
})
jq(fn424, fn292)
jq(fn420, fn464)
local MovementGroup = jj.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = jj.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
ip = fn328
i2 = fn270
connection = RunService.Stepped:Connect(onStepped)
connection2 = UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera = workspace.CurrentCamera
connection3 = RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fn332)
Toggles.WalkSpeedEnabled:OnChanged(fn533)
iP = function(ef)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not ef)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not ef
        end
    end)
    if not ef then
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
Toggles.AntiGameplayPause:OnChanged(fn473)
task.spawn(antiGameplayPauseLoop)
iw:OnUnload(fn581)
local MenuGroup = jj.Settings:AddLeftGroupbox("Menu")
if (not ScriptsGroup or FlyGroup or jc_7 and jc_7 or ScriptsGroup and FlyGroup and (not iH or iH)) and ((FlyGroup or not jc_7 or not iH and not ic) and (not FlyGroup and not iH or not ic and not ScriptsGroup)) and ((FlyGroup and not FlyGroup and (false and ic) or (jc_7 and ScriptsGroup or (FlyGroup or false))) and (not ic or FlyGroup or jc_7 and not FlyGroup or (not ScriptsGroup or not ScriptsGroup or (ScriptsGroup or false)))) or not ((not ScriptsGroup or FlyGroup or jc_7 and jc_7 or ScriptsGroup and FlyGroup and (not iH or iH)) and ((FlyGroup or not jc_7 or not iH and not ic) and (not FlyGroup and not iH or not ic and not ScriptsGroup)) and ((FlyGroup and not FlyGroup and (false and ic) or (jc_7 and ScriptsGroup or (FlyGroup or false))) and (not ic or FlyGroup or jc_7 and not FlyGroup or (not ScriptsGroup or not ScriptsGroup or (ScriptsGroup or false))))) then
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    iw.ToggleKeybind = Options.MenuKeybind
    iG = tick()
    iC = tick()
    pcall(function()
        for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
            local mX = v
            pcall(function()
                mX:Disable()
            end)
        end
    end)
    id = fn499
    iQ = UserInputService.InputBegan:Connect(onInputBegan)
    connection4 = UserInputService.InputChanged:Connect(onInputChanged)
else
    connection4:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { NoUI = true, Text = "Menu keybind", Default = "RightShift" })
    Options.ToggleKeybind = UserInputService.MenuKeybind
    iQ = tick()
    iw = tick()
    pcall(function()
        for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
            local mX = v
            pcall(function()
                mX:Disable()
            end)
        end
    end)
    iC = fn499
    iG = MenuGroup.InputBegan:Connect(onInputBegan)
    id = MenuGroup.InputChanged:Connect(onInputChanged)
end
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
task.spawn(antiAfkLoop)
MenuGroup:AddButton("Unload", onUnload)
iw:OnUnload(fn680)
jk:SetLibrary(iw)
jk:SetFolder("OuroborosHub")
jk:SaveDefault("Monochrome")
jk:ApplyToTab(jj.Settings)
jk:LoadDefault()
SaveManager:SetLibrary(iw)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/MansionTycoon")
local jH = SaveManager:BuildConfigSection(jj.Settings)
SaveManager:LoadAutoloadConfig()
i3 = fn294
is = fn597
i6 = fn210
i_ = function(fn)
    local nK
    nK = nil
    local nL = type(fn) ~= "table"
    local nP = if nL then 1 else 0
    local nN = 1961 * nP + 343 * (1 - nP)
    local nO = 217 * nP + 1715 * (1 - nP)
    if not ((nN * 417 + nO * 3620 + nN * nO) % 16777213 == 2028814) then
        nL = type(fn.idx) ~= "string"
    end
    if not nL then
        nL = type(fn.type) ~= "string"
    end
    if not nL then
        nL = SaveManager.Ignore[fn.idx]
    end
    if nL then
        return false
    end
    nK = i3(fn.type, fn.idx)
    if not nK then
        return false
    end
    local nL_1 = pcall(function()
        if fn.type == "Input" then
            if type(fn.text) ~= "string" then
                return
            end
            nK:SetValue(fn.text)
        elseif fn.type == "ColorPicker" then
            nK:SetValueRGB(Color3.fromHex(fn.value), fn.transparency)
        elseif fn.type == "KeyPicker" then
            nK:SetValue({ fn.key, fn.mode, fn.modifiers })
            if fn.mode == "Toggle" and fn.toggled ~= nil then
                nK.Toggled = fn.toggled
                nK:Update()
            end
        else
            nK:SetValue(fn.value)
        end
    end)
    return nL_1
end
if (iT and false and (false or iT) or false or (false or not is and i0) and ((is or jq) and 35)) and not (iT and false and (false or iT) or false or (false or not is and i0) and ((is or jq) and 35)) then
    jH:AddDivider()
    jH:AddInput("SaveManager_ImportSource", { AllowEmpty = true, Finished = true, Text = "Paste exported config here" })
    jH:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
    jH:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
else
    jH:AddDivider()
    jH:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    jH:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
    jH:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
end
