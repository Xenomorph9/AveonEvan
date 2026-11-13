local kf
local jX
local CurrentCamera
local Options
local j2
local kL
local kr
local j8
local jQ
local LocalPlayer
local ke
local jW
local kE
local kk
local j1
local kK
local Library
local j7
local connection
local kx
local kd
local jV
local VirtualUser
local kj
local j0
local kJ
local kp
local j6
local jO
local kw
local kc
local jU
local kC
local ki
local Remotes
local kI
local SaveManager
local j5
local jN
local kv
local kb
local jT
local HttpService
local kh
local UserInputService
local j4
local jM
local kt
local ka
local jS
local kA
local Toggles
local jY
local connection2
local km
local j3
local jL
local ks
local j9
local jR
local kz
local function fn14()
    local oi = jQ()
    if not oi then
        return
    end
    local oi_1 = (LocalPlayer:GetAttribute("CashToCollect"))
    local oo = if oi_1 then 1 else 0
    local om = 3406 * oo + 3648 * (1 - oo)
    local on = 641 * oo + 3249 * (1 - oo)
    if not ((om * 1158 + on * 1200 + om * on) % 16777213 == 6896594) then
        oi_1 = 0
    end
    if oi_1 >= Options.CollectThreshold.Value then
        j5()
    end
end
local function fn23(cb, cc)
    return string.format('<font color="%s">%s</font>', cc, cb)
end
local function fn33()
    local nt_1
    local ns_1
    if identifyexecutor then
        nt_1, ns_1 = identifyexecutor()
        local nu = nt_1 ~= ""
        local nv = type(nt_1) == "string" and nu
        if nv then
            local nu_1 = type(ns_1) == "string" and ns_1 ~= "" and nt_1 .. " " .. ns_1
            kv = nu_1 or nt_1
        end
    end
end
local function fn50()
    local np = kx()
    local nq = np and np:FindFirstChild("HumanoidRootPart")
    return nq
end
local function onCopyVenmoLink()
    jT(j1, "Copied Venmo link")
end
local function fn66()
    return j2.Bases:FindFirstChild(LocalPlayer:GetAttribute("AssignedBase"))
end
local function fn83(ce, cf, cg)
    return string.format("<b>%s</b> %s %s", ce, jU("-", "#5a6070"), jU(cf, cg))
end
local function fn113()
    local nm = kx()
    local nn = nm and nm:FindFirstChildOfClass("Humanoid")
    return nn
end
local function fn137()
    local ph = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local pi = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if pi then
                local pi_1 = kJ(k, v)
                if pi_1 then
                    ph[#ph + 1] = pi_1
                end
            end
        end
    end
    table.sort(ph, function(gg, gh)
        if gg.type ~= gh.type then
            return gg.type < gh.type
        end
        return gg.idx < gh.idx
    end)
    return { objects = ph }
end
local function onInputChanged(fC)
    local UserInputType = fC.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        kk = tick()
    end
end
local function onRenderStepped(eT)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local oB_1 = kr()
        if oB_1 then
            oB_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local oB_3 = kh()
        local oC = kr()
        if oB_3 and oC then
            oC.PlatformStand = true
            local oC_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                oC_1 = oC_1 + CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                oC_1 = oC_1 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                oC_1 = oC_1 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                oC_1 = oC_1 + CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                oC_1 = oC_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                oC_1 = oC_1 - Vector3.new(0, 1, 0)
            end
            oB_3.Velocity = Vector3.zero
            if oC_1.Magnitude > 0 then
                oB_3.CFrame = oB_3.CFrame + oC_1.Unit * Options.FlySpeed.Value * eT
            end
        end
    end
end
local function onCopyEthereumAddress()
    jT(kj, "Copied Ethereum address")
end
local function onCopySolanaAddress()
    jT(ka, "Copied Solana address")
end
local function fn228(ag)
    local l5 = kK()
    if not l5 or not ag then
        return false
    end
    l5.CFrame = ag.CFrame * CFrame.new(0, 3, -3)
    task.wait(0.35)
    return true
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local op_1 = kx()
        if op_1 then
            for i, descendant in ipairs(op_1:GetDescendants()) do
                local op_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if op_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn292()
    if not Toggles.WalkSpeedEnabled.Value then
        local oH = kr()
        if oH then
            oH.WalkSpeed = 16
        end
    end
end
local function fn330(V)
    return (V:gsub("^RollingSword_", ""):gsub("^Sword$", ""))
end
local function fn332()
    local n6 = kt()
    local n6_5
    if not n6 then
        return
    end
    local n7 = n6:GetAttribute("SwordName") or n6.Name
    local n7_3
    local n7_1 = jV[n7]
    if (n7_1 and n7_1.Machine or "Grindstone") ~= "Grindstone" then
        return
    end
    local n6_4 = jQ()
    if not n6_4 then
        return
    end
    n6_5, n7_3 = kI(j0.Grindstone)
    if not n6_5 then
        return
    end
    kL(n7_3.Parent)
    task.wait(0.15)
    kC(n7_3)
end
local function fn353()
    local oc = kt()
    local oc_5
    if not oc then
        return
    end
    local od = (oc:GetAttribute("SwordName"))
    local od_3
    local oh = if od then 1 else 0
    local of = 3786 * oh + 2524 * (1 - oh)
    local og = 1437 * oh + 1303 * (1 - oh)
    if not ((of * 2113 + og * 2103 + of * og) % 16777213 == 16462311) then
        od = oc.Name
    end
    local od_1 = jV[od]
    if (od_1 and od_1.Machine or "Grindstone") ~= "Enchantment" then
        return
    end
    local oc_4 = jQ()
    if not oc_4 then
        return
    end
    oc_5, od_3 = kI(j0.Enchantment)
    if not oc_5 then
        return
    end
    kL(od_3.Parent)
    task.wait(0.15)
    kC(od_3)
end
local function fn369()
    local nR = jQ()
    if not nR then
        return
    end
    local nW = if kt() then 1 else 0
    if nW == 1 then
        return
    end
    local nS = ki(nR)
    if nS then
        kf = false
        local nR_1 = j7(nS.Name)
        local nS_1 = jX[nR_1]
        if nS_1 and Options.BuyRarities.Value[nS_1] then
            return
        end
    elseif kf then
        local nZ = if os.clock() - kb > 6 then 1 else 0
        local nX = 3973 * nZ + 125 * (1 - nZ)
        local nY = 404 * nZ + 3583 * (1 - nZ)
        if not ((nX * 3801 + nY * 213 + nX * nY) % 16777213 == 15304) then
            return
        end
        kf = false
    end
    kw()
    kf = true
    kb = os.clock()
end
local function onUnload()
    Library:Unload()
end
local function onCopyUSDTAddress()
    jT(kd, "Copied USDT address")
end
local function fn400(bN, bO)
    if setclipboard then
        setclipboard(bN)
    elseif toclipboard then
        toclipboard(bN)
    end
    Library:Notify(bO)
end
local function onCollectIncomeNow()
    j5()
end
local function fn412(bU)
    local DiscordGroup = bU:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = jL })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = jL })
end
local function onPlaceHeldSwordNow()
    ks()
end
local function fn496()
    connection:Disconnect()
    connection2:Disconnect()
    jM(false)
    print("Unloaded!")
end
local function fn509(f3, f4)
    local Type = f4.Type
    if Type == "Toggle" then
        return { idx = f3, type = "Toggle", value = f4.Value == true }
    elseif Type == "Slider" then
        return { idx = f3, type = "Slider", value = tostring(f4.Value) }
    elseif Type == "Dropdown" then
        return { idx = f3, type = "Dropdown", multi = f4.Multi == true, value = f4.Value }
    elseif Type == "Input" then
        local pe = f4.Value or ""
        return { idx = f3, type = "Input", text = tostring(pe) }
    elseif Type == "ColorPicker" then
        return { idx = f3, type = "ColorPicker", value = f4.Value:ToHex(), transparency = f4.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = f3,
            type = "KeyPicker",
            mode = f4.Mode,
            key = f4.Value,
            modifiers = f4.Modifiers,
            toggled = f4.Toggled
        }
    else
        return nil
    end
end
local function fn517()
    local mZ = jQ()
    if not mZ or not mZ.Collect then
        return
    end
    local m__1 = mZ.Collect.Holder or mZ.Collect:FindFirstChildOfClass("MeshPart") or mZ.Collect
    kL(m__1)
    task.wait(1)
end
local function onImportConfigFromClipboardTex()
    local pL_1
    local pJ = Options.SaveManager_ImportSource.Value or ""
    local pJ_1
    local pK = tostring(pJ):match("^%s*(.-)%s*$")
    if pK == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    pJ_1, pL_1 = pcall(HttpService.JSONDecode, HttpService, pK)
    local pK_1 = not pJ_1 or type(pL_1) ~= "table" or type(pL_1.objects) ~= "table"
    if pK_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local pJ_2 = 0
    for i, v in ipairs(pL_1.objects) do
        if jW(v) then
            pJ_2 += 1
        end
    end
    if pJ_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local pL_2 = pJ_2 == 1 and ""
    local pP = if pL_2 then 1 else 0
    local pN = 122 * pP + 668 * (1 - pP)
    local pO = 727 * pP + 4083 * (1 - pP)
    if not ((pN * 3024 + pO * 2127 + pN * pO) % 16777213 == 2003951) then
        pL_2 = "s"
    end
    Library:Notify(("Imported %d setting%s"):format(pJ_2, pL_2), 6)
end
local function onCopyBitcoinAddress()
    jT(km, "Copied Bitcoin address")
end
local function fn583()
    local ma = jQ()
    if not ma or not ma.Lever then
        return
    end
    local RollPrompt = ma.Lever:FindFirstChild("RollPrompt", true)
    if not RollPrompt then
        return
    end
    kL(RollPrompt.Parent)
    task.wait(0.15)
    kC(RollPrompt)
end
local function onRscripts()
    if setclipboard then
        setclipboard(j6)
    elseif toclipboard then
        toclipboard(j6)
    end
    Library:Notify("Copied Rscripts profile to clipboard")
end
local function fn589(T)
    return T.SwordRollRuntime:FindFirstChildOfClass("Tool")
end
local function fn593()
    local lL = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    return lL
end
local function fn596()
    local MoneyValue = LocalPlayer:FindFirstChild("MoneyValue")
    return MoneyValue and MoneyValue.Value or 0
end
local function fn597()
    if not Toggles.Fly.Value then
        local oF = kr()
        if oF then
            oF.PlatformStand = false
        end
    end
end
local function fn611(aH)
    for k, v in aH do
        local PlacePrompt = v.Placement:FindFirstChild("PlacePrompt")
        local my = PlacePrompt and PlacePrompt.ActionText:lower() == "place"
        if my then
            return v, PlacePrompt
        end
    end
    return nil, nil
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local o2 = tick() - kk
            local o3 = tick() - ke
            if o2 >= 300 and o3 >= 60 then
                pcall(jY)
            else
                if o2 < 300 and o3 >= 300 then
                    pcall(jY)
                end
            end
        end
    end
end
local function fn641()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    ke = tick()
end
local function fn669()
    local md = jQ()
    if not md then
        return
    end
    local me = ki(md)
    if not me then
        return
    end
    local md_1 = nil
    for i, descendant in me:GetDescendants() do
        local mf = descendant:IsA("ProximityPrompt") and descendant.ActionText:lower():find("buy")
        if mf then
            md_1 = descendant
            break
        end
    end
    if not md_1 then
        for i, descendant in me:GetDescendants() do
            if descendant:IsA("ProximityPrompt") then
                md_1 = descendant
                break
            end
        end
    end
    if not md_1 then
        return
    end
    kL(md_1.Parent)
    task.wait(0.15)
    kC(md_1)
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            jM(true)
        end
    end
end
local function fn688()
    jM(Toggles.AntiGameplayPause.Value)
end
local function worker()
    local nD_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local nC = math.floor(os.clock() - jS)
        if nC < 60 then
            nD_1 = nC .. "s"
        elseif nC < 3600 then
            nD_1 = string.format("%dm %ds", nC // 60, nC % 60)
        else
            nD_1 = string.format("%dh %dm", nC // 3600, nC % 3600 // 60)
        end
        j8:SetText(jO("Session time", nD_1, kz))
    end
end
local function fn696()
    local mK = jQ()
    if not mK then
        return
    end
    for k, v in pairs(j0) do
        for k, v in v do
            local PlacePrompt = v.Placement:FindFirstChild("PlacePrompt")
            local mL = PlacePrompt and PlacePrompt.ActionText:lower() == "release"
            if mL then
                kL(PlacePrompt.Parent)
                task.wait(0.15)
                kC(PlacePrompt)
                task.wait(0.8)
            end
        end
    end
end
local function onInputBegan()
    kk = tick()
end
local function fn706(fW, fX)
    local o7_1 = (fW == "Toggle" and Toggles or Options)[fX]
    local o6_2 = type(o7_1) == "table" and o7_1.Type == fW
    return o6_2 and o7_1 or nil
end
local function fn734()
    jT(kc, "Copied Discord invite to clipboard")
end
local function fn737()
    return LocalPlayer.Character
end
local function onCopyLitecoinAddress()
    jT(kp, "Copied Litecoin address")
end
local function onCopyPayPalLink()
    jT(j4, "Copied PayPal link")
end
local function fn799()
    if not LocalPlayer.Character then
        return nil
    end
    for i, child in LocalPlayer.Character:GetChildren() do
        local lQ = child:IsA("Tool") and child:GetAttribute("IsPurchasedSword")
        if lQ then
            return child
        end
    end
    return nil
end
local function fn801()
    local m2_1
    local m1_1
    m1_1, m2_1 = pcall(function()
        return Remotes.GetUpgrades:InvokeServer()
    end)
    if not m1_1 or not m2_1 then
        return
    end
    local m1_2 = m2_1.Upgrades or m2_1
    for i, v in ipairs(jR) do
        local m1_3 = m1_2[v]
        if m1_3 then
            local m3_1 = m1_3.Level or 0
            local m4_1 = m1_3.MaxLevel or 0
            local m5 = m1_3.Cost or 0
            local m6 = m1_3.IsMaxed or false
            jN[v] = { Level = m3_1, MaxLevel = m4_1, Cost = m5, IsMaxed = m6 }
        end
    end
end
local function fn813()
    local mI_1
    local mG = kt()
    local mG_5
    if not mG then
        return
    end
    local mH = mG:GetAttribute("SwordName") or mG.Name
    local mH_1 = jV[mH]
    local mH_2 = mH_1 and mH_1.Machine or "Grindstone"
    local mH_3 = jQ()
    if not mH_3 then
        return
    end
    local mG_4 = mH_2 == "Enchantment" and j0.Enchantment or j0.Grindstone
    mG_5, mI_1 = kI(mG_4)
    if not mG_5 then
        return
    end
    kL(mI_1.Parent)
    task.wait(0.15)
    kC(mI_1)
end
local function onCopyJoinScript_JobID()
    local nA = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, j3)
    if setclipboard then
        setclipboard(nA)
    elseif toclipboard then
        toclipboard(nA)
    end
    Library:Notify("Copied join script to clipboard")
end
local function fn830()
    local n_ = jQ()
    if not n_ then
        return
    end
    if kt() then
        return
    end
    local n0 = ki(n_)
    if not n0 then
        return
    end
    local n__1 = j7(n0.Name)
    local n0_1 = jX[n__1]
    if n0_1 and not Options.BuyRarities.Value[n0_1] then
        return
    end
    local n0_2 = jV[n__1]
    local n0_3 = n0_2 and n0_2.Cost or 0
    if kE() >= n0_3 then
        j9()
    end
end
local function fn855()
    local lY = jQ()
    if not lY then
        return
    end
    j0.Grindstone = {}
    j0.Enchantment = {}
    for i, child in lY:GetChildren() do
        local lY_1 = child:IsA("Model") and child:FindFirstChild("Placement")
        if lY_1 then
            local PlacePrompt = child.Placement:FindFirstChild("PlacePrompt")
            if PlacePrompt then
                if child.Name:lower():find("grind") then
                    table.insert(j0.Grindstone, child)
                elseif child.Name:lower():find("enchant") then
                    table.insert(j0.Enchantment, child)
                end
            end
        end
    end
end
local function onExportConfigToClipboard()
    local pG_1
    local pF_1
    pF_1, pG_1 = pcall(HttpService.JSONEncode, HttpService, kA())
    if not pF_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local pF_2 = setclipboard or toclipboard
    local pF_3 = type(pF_2) ~= "function" or not pcall(pF_2, pG_1)
    if pF_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local oz_1 = kr()
        if oz_1 then
            oz_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
jL = nil
jM = nil
jN = nil
jO = nil
connection = nil
jQ = nil
jR = nil
jS = nil
jT = nil
jU = nil
jV = nil
jW = nil
jX = nil
jY = nil
Remotes = nil
j0 = nil
j1 = nil
j2 = nil
j3 = nil
j4 = nil
j5 = nil
j6 = nil
j7 = nil
j8 = nil
j9 = nil
ka = nil
kb = nil
kc = nil
kd = nil
ke = nil
kf = nil
Toggles = nil
kh = nil
ki = nil
kj = nil
kk = nil
Options = nil
km = nil
SaveManager = nil
kp = nil
Library = nil
kr = nil
ks = nil
kt = nil
kv = nil
kw = nil
kx = nil
LocalPlayer = nil
local jZ, kn
kz = nil
kA = nil
HttpService = nil
kC = nil
VirtualUser = nil
kE = nil
CurrentCamera = nil
connection2 = nil
UserInputService = nil
kI = nil
kJ = nil
kK = nil
kL = nil
local kM, kX, kY, kZ, k_, k0, k2, k3, k4, FaqGroup, Auto_UpgradeGroup
local k1_7
UserInputService, VirtualUser, HttpService, LocalPlayer, Library, SaveManager, Options, Toggles, kc, j6, j2, Remotes, jX = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local kN = game:GetService("Players")
local kQ = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
LocalPlayer = kN.LocalPlayer
local kS = "My Sword Empire"
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Options = Library.Options
Toggles = Library.Toggles
kc = "https://discord.gg/ehKVq7pf7v"
j6 = "https://rscripts.net/@Ouroboros"
j2 = workspace
Remotes = kQ:WaitForChild("Remotes")
local kR = require(kQ.Configs.SwordRollConfig)
jX = {}
kN = {}
local kO = kR.SwordStats or kN
jV = kO
kN = {}
kO = kR.Swords or kN
for k, v in kO do
    jX[v.Name] = v.Rarity
end
j0, jR, jN, jQ, kK, kE, kt, ki, j7, kL, kC, kw, j9, kI, ks, j5, kM, kn, jT, jL, kx, kr, kh = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
jQ = fn66
if (false and j9 and (not kE and not kE) or (kE and not j9 or (not j9 or false)) or (false or kC or kE and kE) and ((false or kC) and (false or j9))) and ((not j9 or kC or (not kE or j9) or (not kE or not j9) and (kE or false)) and (kC or kE or j9 and false or (j9 or kC or not j9 and kC))) and not ((false and j9 and (not kE and not kE) or (kE and not j9 or (not j9 or false)) or (false or kC or kE and kE) and ((false or kC) and (false or j9))) and ((not j9 or kC or (not kE or j9) or (not kE or not j9) and (kE or false)) and (kC or kE or j9 and false or (j9 or kC or not j9 and kC)))) then
    kE = fn593
    kK = fn596
else
    kK = fn593
    kE = fn596
end
kt = fn799
ki = fn589
j7 = fn330
j0 = { Grindstone = {}, Enchantment = {} }
kR = fn855
kL = fn228
kC = function(ak)
    if not ak then
        return false
    end
    pcall(function()
        fireproximityprompt(ak)
    end)
    return true
end
kw = fn583
j9 = fn669
kI = fn611
ks = fn813
j5 = fn517
jR = { "RollSpeed", "Luck", "IncomeMultiplier" }
kQ = { RollSpeed = "Roll Speed", Luck = "Luck", IncomeMultiplier = "Sword Value" }
jN = {}
kM = fn801
kn = function(bD)
    local ne = jN[bD]
    local nf = not ne
    local nk = if nf then 1 else 0
    local ni = 3230 * nk + 280 * (1 - nk)
    local nj = 3863 * nk + 2220 * (1 - nk)
    if not ((ni * 2166 + nj * 576 + ni * nj) % 16777213 == 4921545) then
        nf = ne.IsMaxed
    end
    if nf then
        return
    end
    local nf_1 = kE()
    if nf_1 >= (ne.Cost or 0) then
        pcall(function()
            Remotes.PurchaseUpgrade:InvokeServer(bD)
        end)
        task.wait(0.5)
        kM()
    end
end
jT = fn400
jL = fn734
kx = fn737
kr = fn113
kh = fn50
kO = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = kc, Copyable = true }, "|", kS },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
local kW = {
    Info = kO:AddTab("Info", "info"),
    Auto = kO:AddTab("Auto", "refresh-cw"),
    Upgrades = kO:AddTab("Upgrades", "trending-up"),
    Inventory = kO:AddTab("Inventory", "package"),
    Player = kO:AddTab("Player", "person-standing"),
    Settings = kO:AddTab("Settings", "settings")
}
kW.Roll = kW.Auto:AddSubTab("Roll", "dices")
kW.Process = kW.Auto:AddSubTab("Process", "hammer")
kW.Income = kW.Auto:AddSubTab("Income", "banknote")
for i, v in ipairs({ kW.Roll, kW.Process, kW.Income, kW.Upgrades, kW.Inventory, kW.Player, kW.Settings }) do
    fn412(v)
end
k0, k_, kz, kZ, kv, kY, j8, j3, kX, jU, jO = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
kO = 43
repeat
    local kP_1 = (kO * 7 + 3) % 9 + 1
    if kP_1 <= 5 then
        if kP_1 <= 3 then
            if kP_1 <= 2 then
                if kP_1 <= 1 then
                    if (kO * 2 + 3) * 4 % 3 == ((kO * 2 + 3) * 4 + 3) % 3 then
                        k0 = "#7fd47f"
                    else
                        kY = "#7fd47f"
                    end
                    kO = (kO + 13) % 72
                else
                    local k1_1 = (vector.create((kO * 5 + 3) % 11 + 1, (kO * 5 + 1) % 13 + 1, (kO * 10 + 6) % 17 + 1))
                    k2 = (vector.create((kO * 1 + 9) % 11 + 1, (kO * 7 + 5) % 13 + 1, (kO * 10 + 7) % 17 + 1))
                    k3 = (vector.create((kO * 6 + 3) % 11 + 1, (kO * 9 + 2) % 13 + 1, (kO * 2 + 13) % 17 + 1))
                    k4 = (vector.create((kO * 1 + 5) % 5 + 1, (kO * 4 + 6) % 7 + 1, (kO * 2 + 4) % 9 + 1))
                    if vector.dot(vector.cross(k1_1, (vector.cross(k2, k3))), k4) == vector.dot(k2 * vector.dot(k1_1, k3) - k3 * vector.dot(k1_1, k2), k4) + 2 then
                        k0 = "#6ec1ff"
                    else
                        k_ = "#6ec1ff"
                    end
                    kO = (kO + 49) % 72
                end
            else
                if kO * 99539717 + 5 + 6 >= kO * 99539717 + 5 + 6 + 1 then
                    jU = "#e8a34d"
                else
                    kz = "#e8a34d"
                end
                kO = (kO + 4) % 72
            end
        elseif kP_1 <= 4 then
            local k1_2 = {
                "avdahpuzvuvn",
                "rnukznpyvfvd",
                "ufsswyq",
                "ljuk",
                "xkgqisr",
                "qjiawmuigqa",
                "wcufwafwlsc",
                "bgg",
                "kvspdc",
                "npbzzpm"
            }
            if k1_2[(kO * 5 + 80) % 10 + 1] <= k1_2[(kO * 5 + 80) % 10 + 1] then
                kZ = "#8b93a3"
            else
                jU = "#8b93a3"
            end
            kO = (kO + 67) % 72
        else
            local k1_3 = (vector.create((kO * 6 + 8) % 11 + 1, (kO * 8 + 9) % 13 + 1, (kO * 14 + 6) % 17 + 1))
            k2 = (vector.create((kO * 1 + 1) % 11 + 1, (kO * 9 + 8) % 13 + 1, (kO * 14 + 17) % 17 + 1))
            k3 = (vector.create((kO * 2 + 1) % 5 + 1, (kO * 3 + 5) % 7 + 1, (kO * 2 + 1) % 9 + 1))
            if math.abs((vector.angle(k1_3, k2, k3))) - math.abs((vector.angle(k2, k1_3, k3))) == 0 then
                kv = "Unknown"
                pcall(fn33)
                kN = kW.Info:AddLeftGroupbox("Account", "circle-user")
                kN:AddLabel(jO("User", LocalPlayer.Name, k0), true)
                kN:AddLabel(jO("Status", "Keyless", k0), true)
                kN:AddLabel(jO("Executor", kv, k0), true)
                kY = kW.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                kY:AddLabel(jU(kS .. " [" .. tostring(game.PlaceId) .. "]", k_), true)
                kY:AddLabel(jO("Place ID", tostring(game.PlaceId), k_), true)
                j8 = kY:AddLabel(jO("Session time", "0s", kz), true)
            else
                pcall(fn33)
                kW = kv.Info:AddLeftGroupbox("Account", "circle-user")
                kW:AddLabel(j8("User", jU.Name, kz), true)
                kW:AddLabel(j8("Status", "Keyless", kz), true)
                kW:AddLabel(j8("Executor", "Unknown", kz), true)
                k0 = kv.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                k0:AddLabel(kY(jO .. " [" .. tostring(game.PlaceId) .. "]", kS), true)
                k0:AddLabel(j8("Place ID", tostring(game.PlaceId), kS), true)
                k_ = k0:AddLabel(j8("Session time", "0s", LocalPlayer), true)
            end
            kO = (kO + 22) % 72
        end
    elseif kP_1 <= 7 then
        if kP_1 <= 6 then
            local k1_4 = {
                "svwxtdndvyi",
                "ish",
                "upeoufeqlks",
                "oau",
                "kvwolsjneir",
                "xbbphrmkg",
                "hzpdjvgubv",
                "dvy",
                "avwltflxsno",
                "nil",
                "yrmjpvvajyh",
                "mbwpm"
            }
            local qJ = kO
            k2 = k1_4[qJ % 12 + 1]
            if k2:len() >= k2:gsub("(.)", "%1%1", qJ % 3 % 2 + 1):len() then
                kz = tostring(game.JobId)
            else
                j3 = tostring(game.JobId)
            end
            kO = (kO + 49) % 72
        else
            local k1_5 = { "qmwjd", "dndxv", "uyxlqfkdwp", "slrgkgfskor", "jlcd", "lxjaazpnve", "nbpvsvmng", "atlmbwxtfq" }
            local qZ = kO
            k2 = k1_5[qZ % 8 + 1]
            if k2:len() <= k2:reverse():rep(qZ % 3 + 2):len() then
                kX = #j3 > 18
            else
                j3 = #kX > 18
            end
            kO = (kO + 22) % 72
        end
    elseif kP_1 <= 8 then
        if kO * 24113103 + 5 + 7 >= kO * 24113103 + 5 + 7 + 1 then
            j8 = fn23
        else
            jU = fn23
        end
        kO = (kO + 22) % 72
    else
        if kO * 65404407 + 4 + 7 >= kO * 65404407 + 4 + 7 + 6 then
            kY = fn83
        else
            jO = fn83
        end
        kO = (kO + 31) % 72
    end
until (kO * 7 + 31) % 72 == 53
if kX then
    kN = 6
    repeat
        kO = (vector.create((kN * 3 + 6) % 11 + 1, (kN * 2 + 2) % 13 + 1, (kN * 14 + 4) % 17 + 1))
        local kP_2 = (vector.create((kN * 7 + 8) % 11 + 1, (kN * 4 + 7) % 13 + 1, (kN * 3 + 9) % 17 + 1))
        local k1_6 = (vector.create((kN * 1 + 4) % 11 + 1, (kN * 3 + 10) % 13 + 1, (kN * 8 + 2) % 17 + 1))
        if vector.dot(vector.cross(kO, kP_2), k1_6) == vector.dot(vector.cross(kP_2, k1_6), kO) + 5 then
            j3 = string.sub(kX, 1, 18) .. "..."
        else
            kX = string.sub(j3, 1, 18) .. "..."
        end
        kN = (kN + 2) % 8
    until (kN * 3 + 2) % 8 == 2
end
kN = kX or j3
jS, kp, km, kj, kd, ka, j4, j1, k4, k1_7, kX, kO, FaqGroup, Auto_UpgradeGroup = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local k7 = kN
kY:AddLabel(jO("Server", k7, kZ), true)
kY:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
jS = os.clock()
task.spawn(worker)
local ScriptsGroup = kW.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(jU("Included in this hub", kZ), true)
ScriptsGroup:AddLabel(jU(kS, k_), true)
local FeaturesGroup = kW.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(jU("Auto Roll & Buy", k_), true)
FeaturesGroup:AddLabel(jU("Auto Grind & Enchant", k0), true)
FeaturesGroup:AddLabel(jU("Auto Collect Income", kz), true)
FeaturesGroup:AddLabel(jU("Auto Upgrades", kZ), true)
local SocialsGroup = kW.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = jL })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = kW.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = jL })
kp = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
km = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
kj = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
kd = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
ka = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
j4 = "https://paypal.me/TheTruckerGOD"
j1 = "https://venmo.com/u/miserablemusic"
local k8 = "#345d9d"
local k5 = "#f7931a"
if (FaqGroup and false or (FaqGroup or not FaqGroup)) and ("0xaE95A405D007a6F858E5d35714111B075fEFb40a" and (not FaqGroup or not FaqGroup)) or not ((FaqGroup and false or (FaqGroup or not FaqGroup)) and ("0xaE95A405D007a6F858E5d35714111B075fEFb40a" and (not FaqGroup or not FaqGroup))) then
    k4 = "#627eea"
end
k2 = "#26a17b"
if kX or false or FaqGroup and kX or kX and FaqGroup and (not kX and kp) or not (kX or false or FaqGroup and kX or kX and FaqGroup and (not kX and kp)) then
    k1_7 = "#14f195"
end
kX = "#0070ba"
local kP_3 = "#008cff"
if ((k7 or not jS) and (not k1_7 and false) and (not Auto_UpgradeGroup and not k7 or (jS or not Auto_UpgradeGroup)) or (jS or jS or (not k7 or k1_7)) and (false and not ScriptsGroup and (jS and ScriptsGroup))) and not ((k7 or not jS) and (not k1_7 and false) and (not Auto_UpgradeGroup and not k7 or (jS or not Auto_UpgradeGroup)) or (jS or jS or (not k7 or k1_7)) and (false and not ScriptsGroup and (jS and ScriptsGroup))) then
    kW = kO.Info:AddRightGroupbox("Donations", "heart")
else
    kO = kW.Info:AddRightGroupbox("Donations", "heart")
end
kO:AddLabel(jU("All donations are optional but appreciated.", kz), true)
kO:AddLabel(jU("If you donate you get a special role, just PING after you donate.", k0), true)
kO:AddDivider()
kO:AddLabel(jU("LTC / Litecoin", k8), true)
kO:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
kO:AddLabel(jU("BTC / Bitcoin", k5), true)
kO:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
kO:AddLabel(jU("ETH / Ethereum", k4), true)
kO:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
kO:AddLabel(jU("USDT", k2), true)
kO:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
kO:AddLabel(jU("Solana", k1_7), true)
kO:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
kO:AddLabel(jU("PayPal", kX), true)
kO:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
kO:AddLabel(jU("Venmo", kP_3), true)
kO:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
kO:AddDivider()
kO:AddLabel(jU("Don't have any of the listed currencies but still wanna donate?", kZ), true)
kO:AddLabel(jU("DM me and we'll work something out.", k_), true)
FaqGroup = kW.Info:AddRightGroupbox("FAQ", "circle-help")
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
local RollingGroup = kW.Roll:AddLeftGroupbox("Rolling", "dices")
RollingGroup:AddToggle("AutoRoll", { Text = "Auto-Roll Sword", Default = false })
RollingGroup:AddSlider("RollInterval", { Text = "Roll Interval", Default = 1.5, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
local ProcessingGroup = kW.Process:AddLeftGroupbox("Processing", "hammer")
ProcessingGroup:AddToggle("AutoGrind", { Text = "Auto-Grind", Default = false })
ProcessingGroup:AddSlider("GrindInterval", { Text = "Grind Interval", Default = 1, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
ProcessingGroup:AddToggle("AutoEnchant", { Text = "Auto-Enchant", Default = false })
ProcessingGroup:AddSlider("EnchantInterval", { Text = "Enchant Interval", Default = 1, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
ProcessingGroup:AddDivider()
ProcessingGroup:AddToggle("AutoRelease", { Text = "Auto-Release", Default = false })
ProcessingGroup:AddSlider("ReleaseInterval", { Text = "Release Interval", Default = 0.8, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
ProcessingGroup:AddButton({ Text = "Place Held Sword Now", Func = onPlaceHeldSwordNow })
local IncomeGroup = kW.Income:AddLeftGroupbox("Income", "banknote")
IncomeGroup:AddToggle("AutoCollect", { Text = "Auto-Collect Income", Default = false })
IncomeGroup:AddSlider("CollectInterval", { Text = "Collect Interval", Default = 1, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
IncomeGroup:AddSlider("CollectThreshold", { Text = "Collect Threshold", Default = 250, Min = 0, Max = 100000, Rounding = 0, Suffix = "$" })
IncomeGroup:AddButton({ Text = "Collect Income Now", Func = onCollectIncomeNow })
k3 = kW.Inventory:AddLeftGroupbox("Buy Shop", "shopping-cart")
k3:AddToggle("AutoBuy", { Text = "Auto-Buy Sword", Default = false })
k3:AddSlider("BuyInterval", { Text = "Buy Interval", Default = 1, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
k3:AddDropdown("BuyRarities", {
    Values = { "Common", "Rare", "Epic", "Legendary", "Mythic", "Secret" },
    Default = { Common = true, Rare = true, Epic = true, Legendary = true, Mythic = true, Secret = true },
    Multi = true,
    Text = "Rarities to Keep & Buy"
})
Auto_UpgradeGroup = kW.Upgrades:AddLeftGroupbox("Auto-Upgrade", "trending-up")
for i, v in ipairs(jR) do
    Auto_UpgradeGroup:AddToggle("AutoUp_" .. v, { Text = "Auto-Upgrade " .. kQ[v], Default = false })
    Auto_UpgradeGroup:AddSlider("UpInterval_" .. v, { Text = kQ[v] .. " Interval", Default = 2, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
end
kf, kb = nil, nil
kR()
kO = function(ds, du, dv)
    task.spawn(function()
        while not Library.Unloaded do
            if Toggles[ds].Value then
                pcall(dv)
            end
            local nP = Options[du] and Options[du].Value or 1
            task.wait(math.max(nP, 0.1))
        end
    end)
end
kf = false
kb = 0
kO("AutoRoll", "RollInterval", fn369)
kO("AutoBuy", "BuyInterval", fn830)
kO("AutoGrind", "GrindInterval", fn332)
kO("AutoEnchant", "EnchantInterval", fn353)
kO("AutoRelease", "ReleaseInterval", fn696)
kO("AutoCollect", "CollectInterval", fn14)
for i, v in ipairs(jR) do
    local lK = v
    kO("AutoUp_" .. lK, "UpInterval_" .. lK, function()
        kM()
        kn(lK)
    end)
end
CurrentCamera, kk, ke, connection, connection2, jM, jY, jZ, kJ, kA, jW = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
kQ = kW.Player:AddLeftGroupbox("Movement", "footprints")
kQ:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
kQ:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
kQ:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
kQ:AddToggle("NoClip", { Text = "NoClip", Default = false })
kQ:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = kW.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera = workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fn597)
Toggles.WalkSpeedEnabled:OnChanged(fn292)
jM = function(fd)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not fd)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not fd
        end
    end)
    if not fd then
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
Toggles.AntiGameplayPause:OnChanged(fn688)
task.spawn(antiGameplayPauseLoop)
kR = kW.Settings:AddLeftGroupbox("Menu", "menu")
Library.ToggleKeybind = Options.MenuKeybind
kR:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
kk = tick()
ke = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local oX = v
        pcall(function()
            oX:Disable()
        end)
    end
end)
jY = fn641
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
kR:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
kR:AddButton("Unload", onUnload)
task.spawn(antiAfkLoop)
Library:OnUnload(fn496)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Linoria")
ThemeManager:ApplyToTab(kW.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/MySwordEmpire")
kN = SaveManager:BuildConfigSection(kW.Settings)
jZ = fn706
kJ = fn509
kA = fn137
jW = function(gj)
    local pz
    pz = nil
    local pA = type(gj) ~= "table"
    local pE = if pA then 1 else 0
    local pC = 2430 * pE + 3344 * (1 - pE)
    local pD = 1705 * pE + 2466 * (1 - pE)
    if not ((pC * 1020 + pD * 2249 + pC * pD) % 16777213 == 10456295) then
        pA = type(gj.idx) ~= "string"
    end
    if not pA then
        pA = type(gj.type) ~= "string"
    end
    if not pA then
        pA = SaveManager.Ignore[gj.idx]
    end
    if pA then
        return false
    end
    pz = jZ(gj.type, gj.idx)
    if not pz then
        return false
    end
    local pA_1 = pcall(function()
        if gj.type == "Input" then
            if type(gj.text) ~= "string" then
                return
            end
            pz:SetValue(gj.text)
        elseif gj.type == "ColorPicker" then
            pz:SetValueRGB(Color3.fromHex(gj.value), gj.transparency)
        elseif gj.type == "KeyPicker" then
            pz:SetValue({ gj.key, gj.mode, gj.modifiers })
            if gj.mode == "Toggle" and gj.toggled ~= nil then
                pz.Toggled = gj.toggled
                pz:Update()
            end
        else
            pz:SetValue(gj.value)
        end
    end)
    return pA_1
end
kN:AddDivider()
kN:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
kN:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
kN:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
